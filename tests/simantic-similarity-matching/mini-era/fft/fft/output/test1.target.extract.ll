; ModuleID = './output//test0.target.ll'
source_filename = "fft.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @fft(float* %data, i32 %N, i32 %logn, i32 %sign) local_unnamed_addr {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.end73, %entry
  %bit.0 = phi i32 [ 0, %entry ], [ %inc76, %for.end73 ]
  br i1 undef, label %for.body, label %for.end77

for.body:                                         ; preds = %for.cond
  br label %for.cond17

for.cond17:                                       ; preds = %for.end, %for.body
  %a.0 = phi i32 [ 0, %for.body ], [ %inc, %for.end ]
  br i1 undef, label %for.cond21, label %for.end73

for.cond21:                                       ; preds = %for.body24, %for.cond17
  br i1 undef, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond21
  br label %for.cond21

for.end:                                          ; preds = %for.cond21
  %inc = add i32 %a.0, 1
  br label %for.cond17

for.end73:                                        ; preds = %for.cond17
  %inc76 = add i32 %bit.0, 1
  br label %for.cond

for.end77:                                        ; preds = %for.cond
  ret i32 0
}

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
