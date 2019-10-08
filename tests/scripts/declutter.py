# declutter.py
# Extracts main function in an LLVM IR file translated from Mcsema,
# Removes the return address section of the function,
# Comments out and replaces LLVM built-in functions with ADD to keep numbering consistent,
# and changes struct.State definitions on the top of the file.

# Output file: {input file name}_mod.ll

import os, sys, re

class Declutter:
    def __init__(self, file_name):
        self.file_name = file_name
        try:
            self.file_read = open(file_name, 'r')
        except IOError:
            print(f"Cannot read file: {file_name}")
            exit(-1)
        try:
            self.file_write = open(file_name[0:-3] + "_mod.ll", 'w')
        except IOError:
            print(f"Cannot write file: {file_name[0:-3] + '_mod.ll'}")
            exit(-1)
        self.action()
    
    def __del__(self):
        self.file_read.close()
        self.file_write.close()

    # function to do all file actions
    def action(self):
        main = []
        intrinsics = []
        self.begin_state()
        self.struct_info()

        self.find_intrinsics(intrinsics)
        self.file_write.writelines(intrinsics)
        self.file_write.write('\n')

        main_name = self.find_main(main)
        new_main = self.fix_main(main)
        self.file_write.writelines(new_main)
        self.file_write.write('\n')

        self.append_end_main(main_name)

    # writes initial information about the file (from the original .ll file)
    def begin_state(self):
        for i in range(0,4):
            self.file_write.write(self.file_read.readline())
        self.file_write.write('\n')

    # writes initial structure information
    # TODO: Modify for AVX/SSSE Registers
    def struct_info(self):
        self.file_write.write("%union.anon = type { i64 }\n")

        #TODO: Change indicies of getelementptr instructions instead of adding i32 here to get indicies to match
        self.file_write.write("%struct.State = type {i32, i32, %struct.ArithFlags, i32, i32, i32, %struct.GPR}\n")
        self.file_write.write("%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }\n")
        self.file_write.write("%struct.Reg = type { %union.anon }\n")
        self.file_write.write("%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }\n\n")

    # finds declares for LLVM intrinsic functions
    def find_intrinsics(self, intrinsics):
        self.file_read.seek(0)
        for line in self.file_read:
            m = re.search("^declare{1}.*@llvm{1}", line)
            if m:
                intrinsics.append(line)
        return intrinsics
        
    # finds name and function body of main
    def find_main(self, main):
        stack = []
        main_name = ''
        pos = 0
        self.file_read.seek(0)
        line = self.file_read.readline()
        while line:
            m = re.search("sub_{1}.*_main{1}", line)
            if m:
                main_name = m.group()
                break
            pos = self.file_read.tell()
            line = self.file_read.readline()
        self.file_read.seek(pos)
        while line:
            line = self.file_read.readline()
            m = re.search("\{$", line)
            if m:
                stack.append('{')
            m = re.search("\}$", line)
            if m and stack:
                stack.pop()
            if not stack:
                break
            main.append(line)
        return main_name

    # runs some changes on the main function as decribed below
    def fix_main(self, main):
        # fix function declaration
        new_main = []
        m = re.search("sub_{1}.*_main{1}", main[0])
        main[0] = "define i32 @" + m.group() + "(%struct.State*, i64, i64) {\n"

        # Temporarily comment out the llvm intrinsic operations
        for i in range(0, len(main)):
            m = re.search("@llvm{1}", main[i])
            if m:
                main[i] = '  ;' + (main[i])[2:]
                var = re.findall("%[0-9]+", main[i])
                main.insert(i+1, f"  {var[0]} = add i32 {var[1]}, 1\n") 

        # remove tbaa on store instructions
        for i in range(0, len(main)):
            m = re.search(", !tbaa{1}.*$", main[i])
            if m:
                main[i] = main[i].replace(m.group(), '')

        # remove return address calculation and replace return instruction
        for i in range(0, len(main)):
            m = re.search("%0, i64 0, i32 6, i32 13, i32 0, i32 0", main[i])
            if m:
                new_main = main[0:i]
                break
        new_main.append("  ret i32 0\n")
        new_main.append("}\n")
        return new_main

    # adds in another main that calls the Mcsema-translated main function
    def append_end_main(self, name):
        self.file_write.write("define i32 @main() {\n")
        self.file_write.write("entry:\n")
        self.file_write.write("  %state = alloca %struct.State\n")

        # To modify later to track each variable in krun output
        # (get address and store value into each register value)

        self.file_write.write("  %addr1 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 1, i32 0, i32 0\n")
        self.file_write.write("  %addr2 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 3, i32 0, i32 0\n")
        self.file_write.write("  store i64 100, i64* %addr1, align 8\n")
        self.file_write.write("  store i64 200, i64* %addr2, align 8\n")
        self.file_write.write("  %call = call i32 @" + name + "(%struct.State* %state, i64 0, i64 0)\n")
        self.file_write.write("  ret i32 0\n")
        self.file_write.write("}\n")

if __name__ == '__main__':
    if (len(sys.argv) != 2):
        print("Usage: python3 ./declutter.py {LLVM IR File}\n")
        print("File should be an LLVM IR File translated from Mcsema\n")
        exit(-1)
    file_name = sys.argv[1]
    Declutter(file_name)
