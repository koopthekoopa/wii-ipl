extern int NCDiGetWirelessMacAddress(void* data);

/**
 * @note Address: 0x81495844 (4.3U)
 * @note Size: 0x4
 */
int NETGetWirelessMacAddress(void* data) {
    return NCDiGetWirelessMacAddress(data);
}


