#!/usr/bin/env python3

import argparse
import os
import csv

def main():
    parser = argparse.ArgumentParser(
        description="""Extracts files from a binary file."""
    )
    parser.add_argument(
        "-i",
        "--input",
        help="""Input list"""
    )
    parser.add_argument(
        "-ib",
        "--input_binary",
        help="""Input binary file"""
    )
    parser.add_argument(
        "-o",
        "--output",
        help="""Output directory"""
    )
    parser.add_argument(
        "-oc",
        "--objcopy",
        help="""OBJCOPY path"""
    )
    args = parser.parse_args()
    
    # entry[0]=filename
    # entry[1]=offset
    # entry[2]=size
    
    if not os.path.exists(args.output):
        os.makedirs(args.output)
    
    if not os.path.exists(args.output + "/build"):
        os.makedirs(args.output + "/build")
    
    flist = open(args.input, 'r')
    bfile = open(args.input_binary, 'rb')
    rfile = open(args.output + "/mainrules.mak", 'w')
    
    rfile.write("EXTDATA_LIST = ")

    readList = list(csv.reader(flist))
    for i in range(len(readList)):
        entry = readList[i]
        with open(args.output + "/" + entry[0], "wb") as outFile:
            bfile.seek(int(entry[1], 0))
            
            outFile.write(bfile.read(int(entry[2], 0)))
            outFile.close()

            rfile.write(entry[0])
            
            if i < len(readList) - 1:
                rfile.write(" \\\n")
    
    rfile.write("\n\n")
    rfile.write("EXTDATA_TARGETS = $(foreach ENTRY,$(EXTDATA_NAME)," + args.output + "/$(ENTRY))\n")
    rfile.write("EXTDATA_OUTS = $(foreach ENTRY,$(EXTDATA_NAME)," + args.output + "/build/$(ENTRY).o)\n")
    rfile.write("\n")
    rfile.write(args.output + "/build/%.o: " + args.output + "/%\n")
    rfile.write("\t@echo Convert $<...\n")
    rfile.write("\t@$(eval REPLACE = $(subst /,_,$(subst .,_,$<)))\n")
    rfile.write("\t@mkdir -p $(dir $@)\n")
    rfile.write("\t@" + args.objcopy + " -I binary -O elf32-powerpc --redefine-sym _binary_$(REPLACE)_start=$(subst .,_,$(notdir $<)) --strip-symbol _binary_$(REPLACE)_end --redefine-sym _binary_$(REPLACE)_size=$(subst .,_,$(notdir $<))_size $< $@\n\n")
    rfile.write("clean_data:\n")
    rfile.write("\t@rm -rf " + args.output + "/build\n\n\n")

    rfile.close()
    bfile.close()
    flist.close()

if __name__ == "__main__":
    main()


