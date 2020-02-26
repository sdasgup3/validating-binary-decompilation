; ModuleID = 'test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"
define i32 @main() {
entry:
  ; %state = alloca %struct.State
  %memaddr = alloca i64
  %addr8 = alloca i64
  %addr9 = alloca i64
  store i64 800, i64* %memaddr
  %memaddr2int = ptrtoint i64* %memaddr to i64  
  %memaddr2intoff = add i64 4, %memaddr2int

  store i64 %memaddr2intoff, i64* %addr8, align 8

  %a = load i64, i64* %addr8
  %z = sub i64 %a, 4
  %b = inttoptr i64 %z to i64*
  %c = load i64, i64* %b

  store i64 %c, i64* %addr9, align 8


  
  ;%call = call %struct.Memory* @routine_addq_r64_m64(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
}
