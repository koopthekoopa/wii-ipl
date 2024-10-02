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
    arc = platform.machine().lower()
    if sys.__contains__("msys"):
        sys = "windows"
    if arc == "amd64":
        arc = "x86_64"
    if arc == "x86_32":
        arc = "i686"
    ext = ""
    if sys == "windows":
        ext = ".exe"

    extractURL("https://github.com/encounter/decomp-toolkit/releases/latest/download/dtk-" + sys + "-" + arc + ext, "tools/dtk" + ext)
        
if __name__ == "__main__":
    main()


