# instr.py: Reads a text file with newline-separated instructions,
# makes a new directory with a c-file and Makefile for each instruction,
# and translates the instruction to LLVM with mcsema

import os, sys

workingdir = os.path.join(os.getcwd(), "tests")
#insert your dissassembler install location here
disassembler_install = "/home/deepan/ida-6.95/idal64"

def read_instructions(file_name):
        with open(os.path.abspath(file_name), "r") as f:
                instructions = f.readlines()
        return list(map(str.strip, instructions))

def make_dirs(instr):
        if not os.path.exists(os.path.join(workingdir, instr.replace(" ", "_"))):
                os.mkdir(os.path.join(workingdir, instr.replace(" ", "_")))
        
def make_c_file(instr):
        instr_name = instr.replace(' ', '_')
        abspath = os.path.join(workingdir, instr_name)
        #if not os.path.exists(abspath) or os.path.exists(os.path.join(abspath, f"{instr.replace(' ', '_')}.c")):
        if not os.path.exists(abspath):
                return
        os.chdir(abspath)
        with open(f"{instr_name}.c", "w") as f:
                f.write("void leaf() {\n\t")
                f.write(f'__asm__("{instr}");\n')
                f.write("}\n")
                f.write("void main() {\n\t")
                f.write("leaf();\n")
                f.write("}\n")

# Note: if using a different architecture, change the --arch option in the Makefile skeleton below
def make_makefile(instr):
        instr_name = instr.replace(' ', '_')
        abspath = os.path.join(workingdir, instr_name)
        if not os.path.exists(abspath):
                return
        os.chdir(abspath)
        with open("Makefile", "w") as f:
                f.write(".PHONY: clean\n")
                f.write("all: binary mcsema\n\n")
                f.write(f"objdump: {instr_name}\n\t")
                f.write(f"objdump -d {instr_name} > objdump\n\n")
                f.write(f"mcsema: {instr_name}\n\t")
                f.write(f"mcsema-disass --disassembler {disassembler_install} --os linux --arch amd64_avx --output {instr_name}.cfg --binary {instr_name} --entrypoint main\n\t")
                f.write(f"mcsema-lift-4.0 --os linux --arch amd64_avx --cfg {instr_name}.cfg --output {instr_name}.bc\n\t")
                f.write(f"llvm-dis {instr_name}.bc -o {instr_name}.ll\n\n")
                f.write(f"assemble: {instr_name}.c\n\t")
                f.write(f"gcc -Os {instr_name}.c -S -o {instr_name}.S\n\n")
                f.write(f"binary: {instr_name}.c\n\t")
                f.write(f"gcc -Os {instr_name}.c -o {instr_name}\n")
                f.write("clean:\n\t")
                f.write(f"rm *.bc *.ll {instr_name} *.cfg *.S objdump\n")

def run_make(instr):
        instr_name = instr.replace(' ', '_')
        abspath = os.path.join(workingdir, instr_name)
        if not os.path.exists(abspath):
                return
        os.chdir(abspath)
        os.system("make")
         

if __name__ == '__main__':
    if len(sys.argv) != 2:
            print("Usage: python3 ./instr.py {file with instructions}\n")
            print("File should contain assembly instructions in GAS syntax separated by newlines\n")
            exit(-1)
    instructions = read_instructions(sys.argv[1])
    for instr in instructions:
        if instr == '':
                continue
        make_dirs(instr)
        make_c_file(instr)
        make_makefile(instr)
        run_make(instr)
