![Decompilation Logo Here](./misc/logo.png)
# Wii Menu Decompilation [![Discord Server][discord-server-badge]][discord-server-link]
[discord-server-link]: https://discord.gg/hKx3FJJgrV
[discord-server-badge]: https://img.shields.io/discord/727908905392275526?color=%237289DA&logo=discord&logoColor=%23FFFFFF
This work in progress repository aims to a full 1:1 decompilation of version 4.3 of the Wii Menu.   
Currenty working supported versions:
- 4.3U (USA)   
- 4.3E (Europe)   

This repository requires a WAD of the Wii Menu.

## Dependencies
**TODO: Build for Mac OS**   
The following dependencies are required to build the decompilation:   

- Git (optional)
- Python 3
- GCC

Below is how to install the dependencies that is depending on your Operating System.   

### Windows

**If you are using WSL, you should follow the [Linux](#linux) section instead.**

With MSYS2, this is how you install the dependencies

```
pacman -S git make mingw-w64-x86_64-gcc mingw-w64-x86_64-python mingw-w64-i686-gcc mingw-w64-i686-python
```

If you wish to not use either MSYS2 nor WSL then make sure that GCC and Make are in PATH environment variable.   
You will also need to install Python 3 yourself [here](https://www.python.org/downloads/) (make sure that `python.exe` is in your `PATH` variable).

### Linux

For Ubuntu/Debian:   
```
sudo apt install build-essential git python3
```

For Arch Linux:   
```
sudo pacman -S base-devel python git
```

### Automatically downloaded tools
Here are a list of tools that get downloaded when you run `make prepare`:
- [wibo](https://github.com/decompals/wibo) (when using linux)
- [gc-wii-binutils](https://github.com/encounter/gc-wii-binutils)
- [decomp-toolkit](https://www.github.com/encounter/decomp-toolkit)

## Building the Decompilation
**NOTE: This will not compile a working Wii Menu yet!**
- If you have git, clone the decompilation repository by inputting this to your terminal:
  ```
  git clone https://github.com/koopthekoopa/wii-ipl.git
  ```
  - Otherwise download the repository by clicking on **Code** then **Download ZIP** then extract the .zip contents   

- As stated above, you will need a WAD of the Wii Menu to grab its executable.
  - Use your preferred WAD Extractor (I recommend ShowMiiWADs as it also works fine on Linux, if you have Wine) and use it to extract the Wii Menu WAD file.
  - Then copy the executable file `00000008.app` to the decompilation directory and rename it to `base.<version>.app`
    - Make sure the version on the filename does not include the decimal at the middle (for example `4.3U` should be `43U`)
    - Check to make sure the file matches with the [SHA-1 Sums](#sums)!   

- You are now ready to build! To build you need to type in:
  ```
  make VERSION=<version>
  ```
  - Where `<version>` is the chosen version to compile. (If you do not define `VERSION`, it will compile 4.3U by default)
  - The output should be `ipl.<version>.app` in the build folder.

## Sums
|File|SHA-1|
|-------------------------------|-----------------------------|
|`ipl.43U.app` (Wii Menu 4.3U)|`26116613f624061ba99c8d1a299aaa6efa85670d`|
|`ipl.43E.app` (Wii Menu 4.3E)|`2ebea6ed22473857ed64b12daa71ae2d1ed61708`|
|`ipl.43J.app` (Wii Menu 4.3J)|`c94c8e671854d56fa2abd4c4c886e6c62a2c7f0e`|
|`ipl.43K.app` (Wii Menu 4.3K)|`98496cc8467f0749d7605fc175b1911827aa1fd0`|

# Tools used
[decomp-toolkit](https://www.github.com/encounter/decomp-toolkit) - A tool that can do a lot and will make decompiling GameCube/Wii games easier and better.   
[objdiff](https://www.github.com/encounter/objdiff) - Used to check whenever if the compiled object is matching or not.   
[Ghidra](https://www.github.com/NationalSecurityAgency/ghidra) - Used to load executables and output a rough decompilaton of a function.   


