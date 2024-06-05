![Decomp logo](./misc/logo.png)
# Wii Menu Decompilation
This is a Work In Progress decompilation of the Wii Menu.

Supported versions (currently):
- 4.3 (USA)

## Dependencies
**TODO: Building from Mac OS.**

The following dependencies are required to build the decompilation:   

- Git (optional)
- Python 3
- GCC
- Wine (Not for Windows users)   

Below is how to install the dependencies that is depending on your OS  

### Windows

If you have MSYS2 then you will need to type in in the terminal:

```
pacman -S git make mingw-w64-x86_64-gcc mingw-w64-x86_64-python mingw-w64-i686-gcc mingw-w64-i686-python
```

For people using WSL should follow the [Linux](#linux) section.

If you do not have either MSYS2 or WSL then make sure that GCC and Make are in PATH environment variable.   
You will also need to install Python 3 yourself [here](https://www.python.org/downloads/) (make sure that python.exe is in your PATH variable).

### Linux   

For linux users, you will need to type this in:
```
sudo apt install build-essential git python3
```

If you have not got Wine installed, You will need to follow [this guide](https://wiki.winehq.org/Wine_Installation_and_Configuration).

## Building the Decompilation
**This will not compile a working Wii Menu yet!**
- If you have git, clone the decompilation repository by inputting this to your terminal:
  ```
  git clone https://github.com/koopthekoopa/wii-ipl.git
  ```
  - Otherwise download the repository by clicking on **Code** then **Download ZIP** then extract the .zip contents
- You will need to prepare for compiling. To do that you need to type in
  ```
  python3 prepare.py
  ```
- **(OPTIONAL for now)** You will need to extract contents from your Wii Menu WAD.
    - For Windows users I recommend [WadMii from Wii.cs Tools](https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/showmiiwads/Wii.cs%20Tools%200.3.rar) or [ShowMiiWads](https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/showmiiwads/ShowMiiWads%201.4.rar) ([x64 version](https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/showmiiwads/ShowMiiWads%201.4%20x64.rar))
- **(OPTIONAL for now)** Find the extracted contents of you WAD file and find `00000008.app`
- **(OPTIONAL for now)** Copy that said file to the decompilation directory and rename it to:
  - `base.43U.app` (For Wii Menu 4.3U)
  - Check to make sure the file matches with the [SHA-1 Sums](#sums)!
- You are now ready to go! To build you need to type in `make VERSION=<wii menu version>` (for example: `make VERSION=43U` for 4.3U)
  - Version 4.3U is the default version.

## Sums
|File|SHA-1|
|-------------------------------|-----------------------------|
|`ipl.43J.app` (Version 4.3J)|`c94c8e671854d56fa2abd4c4c886e6c62a2c7f0e`|
|`ipl.43U.app` (Version 4.3U)|`26116613f624061ba99c8d1a299aaa6efa85670d`|
|`ipl.43E.app` (Version 4.3E)|`2ebea6ed22473857ed64b12daa71ae2d1ed61708`|

# Credits
[decomp-toolkit](https://www.github.com/encounter/decomp-toolkit) - A tool that can do a lot and will make decompiling GameCube/Wii games easier and better. Seriously thanks to the people who worked on this.   
[objdiff](https://www.github.com/encounter/objdiff) - Used to check whenever if the compiled object is matching or not.   
[Ghidra](https://www.github.com/NationalSecurityAgency/ghidra) - Used to load executables and output a rough decompilaton of a function.   
[WiiBrew](https://www.wiibrew.org) - A website that contains dozens of documentation about the Wii.   
[Gamecube/Wii Decompilation Discord](https://discord.gg/hKx3FJJgrV) - Contains helpful resources for decompiling.   


