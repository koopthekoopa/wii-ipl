#!/usr/bin/env python3

import urllib.request

def extractURL(url, file):
    response = urllib.request.urlopen(url).read()
    file = open(file, "wb")
    file.write(response)
    file.close()

def main():
    extractURL("https://github.com/decompals/wibo/releases/latest/download/wibo", "tools/wibo")
        
if __name__ == "__main__":
    main()


