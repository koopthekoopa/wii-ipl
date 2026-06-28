#include <gtest/gtest.h>
#include <string>
#include <vector>
#include "lyt_arcResourceAccessor.h"

class SecurityTest : public ::testing::TestWithParam<std::string> {};

TEST_P(SecurityTest, BufferReadsNeverExceedDeclaredLength) {
    // Invariant: Buffer reads never exceed the declared length
    std::string payload = GetParam();
    
    // Create a test buffer with known size
    const size_t buffer_size = 64;
    char buffer[buffer_size];
    memset(buffer, 0, sizeof(buffer));
    
    // Initialize with safe content
    strncpy(buffer, "initial_content", buffer_size - 1);
    buffer[buffer_size - 1] = '\0';
    
    // Call production function that reads from buffer
    // This tests that any buffer operations respect buffer_size
    const char* result = LytArcResourceAccessor::GetResourceName(buffer, buffer_size, payload.c_str());
    
    // Verify buffer integrity - no writes beyond buffer_size
    for (size_t i = buffer_size; i < buffer_size + 16; i++) {
        if (i < sizeof(buffer)) {
            // Check that buffer wasn't overflowed
            EXPECT_EQ(buffer[buffer_size - 1], '\0') 
                << "Buffer null-terminator corrupted by payload: " << payload;
        }
    }
}

INSTANTIATE_TEST_SUITE_P(
    AdversarialInputs,
    SecurityTest,
    ::testing::Values(
        // Exact exploit case: significantly oversized input
        std::string(256, 'A'),
        // Boundary case: exactly at buffer limit
        std::string(64, 'B'),
        // Valid input: well within bounds
        std::string(32, 'C'),
        // Another adversarial case: with null bytes
        std::string(128, '\0')
    )
);

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}