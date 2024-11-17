extern int NCDiGetWirelessMacAddress(void* data);

int NETGetWirelessMacAddress(void* data) {
    return NCDiGetWirelessMacAddress(data);
}


