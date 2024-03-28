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
cd /opt
sudo git clone https://github.com/J-Rios/elfcheck
sudo chmod +x /opt/elfcheck/src/elfcheck
sudo ln -s /opt/elfcheck/src/elfcheck /usr/local/bin/elfcheck
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
