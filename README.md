# ELFCheck

Easily analyze and check information from binary files (ELF).

## Features

This script provides the next features:

- Analyze an ELF binary file to check it internal information (memory
  usage and sections, strings used, symbols sort by size, etc.) and
  export all of this information into friendly readable plain text
  files.

- Disassemble and show ASM code of a specific function.

- Check size of source code components (i.e. mycomponent.cpp).

- Check and show if ELF binary uses any common C/C++ dynamic memory related function (malloc, free, new, delete, etc).

## Installation

Follow the next installation instructions:

```bash
git clone https://github.com/J-Rios/elfcheck
cd elfcheck
make install
```

The Tool will be installed in /usr/local/bin directory, so you can remove current directory:

```bash
cd ..
rm -rf elfcheck/
```

## Usage

Here you can find some usage examples:

```bash
# Analyze ELF file
elfcheck mybinary.elf -a

# Disassemble main function
elfcheck mybinary.elf -d main

# Check size of main.cpp component
elfcheck mybinary.elf -s main.cpp

# Check if ELF file use any common C/C++ dynamic memory function
elfcheck mybinary.elf -x
```

## Notes

- You can update the tool to get the latest version as follow:

```bash
make update
```

- You can completely uninstall the tool as follow:

```bash
make uninstall
```
