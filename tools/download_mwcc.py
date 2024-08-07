#!/usr/bin/env python3

import os
import urllib.request
import zipfile

def extractZIPURL(URL):
    if os.path.exists("temp.zip"):
        os.remove("temp.zip")
    
    request = urllib.request.Request(url=URL, headers={"User-Agent": "Mozilla/5.0"})
    response = urllib.request.urlopen(request).read()
    file = open("temp.zip", "wb")
    file.write(response)
    file.close()
    
    with zipfile.ZipFile("temp.zip", 'r') as zip:
        zip.extractall("tools/") 
    
    os.remove("temp.zip")

def main():
    extractZIPURL("https://files.decomp.dev/compilers_latest.zip")
        
if __name__ == "__main__":
    main()


