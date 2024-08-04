import os
import urllib.request
import zipfile
import platform
import stat

def extractZIPURL(url):
    if os.path.exists("temp.zip"):
        os.remove("temp.zip")
    
    response = urllib.request.urlopen(url).read()
    file = open("temp.zip", "wb")
    file.write(response)
    file.close()
    
    with zipfile.ZipFile("temp.zip", 'r') as zip:
        zip.extractall("tools/") 
    
    os.remove("temp.zip")

def main():
    sys = platform.system().lower()
    arc = platform.machine().lower()
    if sys.__contains__("msys"):
        sys = "windows"
    if arc == "amd64":
        arc = "x86_64"
    if arc == "x86_32":
        arc = "i686"

    extractZIPURL("https://github.com/encounter/gc-wii-binutils/releases/latest/download/" + sys + "-" + arc + ".zip")
        
if __name__ == "__main__":
    main()


