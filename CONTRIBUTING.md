### **Thank you for your interest on helping out!**

# Resources

- An [introduction to decompilation](https://decomp.wiki/en/resources/decomp-intro), if this is your first time learning.
- A tool for decompiling. This include, but not limited to:
  - [Ghidra](https://github.com/NationalSecurityAgency/ghidra/releases/latest)
    - Requires [Cuyler36's GameCube Loader](github.com/Cuyler36/Ghidra-GameCube-Loader/releases/latest)
    - for Ghidra users, you can [access the shared repository](#ghidra).
  - Hex Rays (in [IDA Pro](https://hex-rays.com/ida-pro))
  - [M2C](https://simonsoftware.se/other/m2c.html)
  - [decomp.me](https://decomp.me/)
- Code IDE (recommended: Visual Studio Code)
- A diffing tool. (such as [objdiff](https://github.com/encounter/objdiff/releases/latest))

# Ghidra

### Accessing the repository

>  [!NOTE]
> At least version 12.0 is required!

 - Head to [ghidra.decomp.dev](https://ghidra.decomp.dev/) then create an account and/or login from there.
 - On the "Repository Access" window, select:
   - Repository: `Wii_IPL_Ghidra`
   - Role: If you would like to make changes, select `Write`. Otherwise select `Read`.
- Click Request then wait for your request to be accepted.

### Opening the repository

 - Goto File > New Project
 - Select "Shared Project"
 - You would need to input the following:
   - Server Name: `ghidra.decomp.dev`
   - Port Number: `13100`
 - The list of existing servers should show `Wii_IPL_Ghidra`. Select that one.
 - Input where you want the shared project to be saved.
 - You are now ready to open a program! (for now, its just `ipl_v4_3_usa.dol`)
   - If you have write access and want to make changes to the program, right click on the program that you want to open, and click "Check out".
     - Do not check the "Request exclusive checkout" option!
     - Changes will be made to the repository, so make sure that you are checking out to the latest version!
   - If you would want to upload of your changes, right click on the program that is currently opened, and click "Check In".


# Code Guidelines

### General

- Style formatting is all done by `clang-format`.
  - It should automatically apply when using Visual Studio Code on saving a source file.
- For checking on pointers, please use the `NULL` macro, unless if it affects code matching.
```cpp
// Do this!
if (myPointer == NULL) {
    // ...
}

// Don't do this!
if (myPointer == 0) {
    // ...
}
```

- Look out for errors in the code, and try to add comments on them using the Doxygen command `@bug`.
```cpp
// @bug Should use the full path
nand::wrapper::Delete("cdb.vff");
```

### File types

 - For **C** code, use the `.c` extension.
 - For **C++** code, use the `.cpp` extension.
 - For **C and C++** headers, use the `.h` extension.

### Header guards

Despite the compiler that this project uses (CodeWarrior) has support for `#pragma once`, please use the standard way for header guards.

```cpp
#ifndef {LIBRARY}_{NAME}_H
#ifndef {LIBRARY}_{NAME}_H

// ...

#endif // {LIBRARY}_{NAME}_H
```

- Guard names for libraries:
  - System Menu - `IPL`
  - RVL_SDK and RevoEX - im "revolution" directory, `REVOLUTION`. And in "private" directory, `PRIVATE`
  - NW4R - `NW4R`
  - RVLMiddleware/eZiText - in "zi8clib" directory, `ZI8_CLIB`. Otherwise, `EZI_TEXT`
  - RVLMiddleware/ATOKDict - `ATOK`
  - OperaWWW - `REVOLUTION_WWW`
  - EGG - `EGG`

- Examples:
  - `src/system/iplChannelManager.cpp` -> `IPL_SYSTEM_CHANNEL_MANAGER_H`
  - `src/scene/iplHealth.cpp` -> `IPL_SCENE_HEALTH_H`
  - `libs/RVL_SDK/src/os/OSAlarm.c` -> `REVOLUTION_OS_ALARM_H`

Make sure the guard names are uppercase SNAKE_CASE.

### Header includes

- Try and not include any unnecesary includes.
- For headers in the `libs` directory, please use `<>`
- For headers in the `include` directory, please use `""`
  - An exception is the directory `include/decomp`, where you have to use `<>`
```cpp
// Do this!
#include <revolution/os/OSAlarm.h> // Header in the libs directory
#include "system/iplSystem.h" // Header in the include directory
#include <decomp.h> // Header in the include/decomp directory

// Don't do this!
#include "revolution/os/OSAlarm.h" // Header in the libs directory
#include <system/iplSystem.h> // Header in the include directory
#include "decomp.h" // Header in the include/decomp directory
```

### Naming

- Names with known symbols should **exactly** match,
  - Even if the symbol has typos or does not follow the guidelines!
- Function names with no known symbols should be written in camelCase.
  - This mostly applies to static local and inline functions.
- Class members must start with the `m` prefix and should be in PascalCase.
  - If the member is a pointer, then the starting prefix must be `mp`.
```cpp
    int mMyValue1;
    int* mpMyValue2;
```

### Classes and structures

- Offsets for fields and virtual functions must be commented.
- For unknown structure/class fields, they must be referred to by their offset (in hex), prefixed by `unk_`.
```cpp
    int mKnownValue;  // 0x00
    int unk_0x04;
    int mKnownValue1; // 0x08

    virtual ~VirtualDtor();      // 0x08
    virtual void VirtualFunc0(); // 0x0C
    virtual void VirtualFunc1(); // 0x10
```

### Literals

- For floating-point values, please be explicit with them. (it can change code and data matching)
```cpp
// Do this!
float value0 = 1.0f;
float value1 = 2f;
float value2 = 3.f;

// Don't do this! (they are implicitly double values!!)
float value0 = 1.0;
float value1 = 2;
float value2 = 3.;
```

# Conclusion

If you have any questions or are interested in contributing to this project, you can join the [Discord Server](https://discord.gg/hKx3FJJgrV) and ask in the `#wii-menu` channel.
