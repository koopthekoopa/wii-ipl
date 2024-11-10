#!/usr/bin/env python3

import os
import urllib.request
import zipfile
import platform
import stat

def extractURL(url, fileName):
    response = urllib.request.urlopen(url).read()
    file = open(fileName, "wb")
    file.write(response)
    file.close()

def main():
    sys = platform.system().lower()
    arch = platform.machine().lower()
    if sys.__contains__("msys"):
        sys = "windows"
    if arch == "amd64":
        arch = "x86_64"
    if arch == "x86_32":
        arch = "i686"
    ext = ""
    if sys == "windows":
        ext = ".exe"

    extractURL("https://github.com/encounter/decomp-toolkit/releases/download/v1.3.0/dtk-" + sys + "-" + arch + ext, "tools/dtk" + ext)
        
if __name__ == "__main__":
    main()


