import os
import subprocess
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
    print("Downloading MWCC...")
    extractZIPURL("https://files.decomp.dev/compilers_latest.zip")
    
    print("Downloading PowerPC BinUtils...")

    sys = platform.system().lower()
    arc = platform.machine().lower()
    if sys.__contains__("msys"):
        sys = "windows"
    if arc == "amd64":
        arc = "x86_64"
    if arc == "x86_32":
        arc = "i686"

    extractZIPURL("https://github.com/encounter/gc-wii-binutils/releases/latest/download/" + sys + "-" + arc + ".zip")
    
    for filename in os.listdir(f"{os.path.dirname(__file__)}/tools"):
        f = os.path.join(f"{os.path.dirname(__file__)}/tools", filename)
        os.chmod(f, os.stat(f).st_mode | stat.S_IEXEC)
        
if __name__ == "__main__":
    main()


