; ModuleID = './output//test1.target.extract.ll'
source_filename = "fft.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @fft(float* %data, i32 %N, i32 %logn, i32 %sign) local_unnamed_addr {
entry:
  ret i32 0
}

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
