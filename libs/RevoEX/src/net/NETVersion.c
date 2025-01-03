#pragma force_active on /* actually this TU never gets used so the linker strips it... Do it by force. */

const char* NETRexPPCVersionPrintableString = "<< REX-PPC 2.0.4.0 (RevoEX-2.0PR4) REL 081212021713 >>";

const char* NETGetRexPPCVersionPrintable() {
    return NETRexPPCVersionPrintableString;
}


