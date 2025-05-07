NintendoWare for Revolution
===========================
A decompilation of NintendoWare for Revolution (NW4R) from the Wii Menu.  

This library since System Menu 4.0 included asserts, but they were all replaced with the `Error#004` screen.  
This NW4R build would later be used for `NW4HBM` (a variant of NW4R for the HOME Menu in other applications)

List of libraries that are linked (in alphabetical order):

|   Name   |                    Description                     |      Matched       |
|----------|----------------------------------------------------|--------------------|
| **DB**   | Debug library; in this case, for the crash handler | :x: |
| **MATH** | Math utilities library                             | :heavy_check_mark: |
| **UT**   | Utilities library                                  | :x: |
| **SND**  | Sound Library; for ".brsar" files                  | :x: |
| **LYT**  | Layout Library; for ".brlyt" files                 | :warning: |

Thanks to
---------
[kiwi515/ogws](https://github.com/kiwi515/ogws)  
[muff1n1634/hbm_2009-12-10](https://github.com/muff1n1634/hbm_2009-12-10)  
