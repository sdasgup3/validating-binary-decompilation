; ModuleID = './output//test0.target.opt.ll'
source_filename = "fft.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nounwind uwtable
define float* @bit_reverse(float* %w, i32 %N, i32 %bits) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  br i1 undef, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br i1 undef, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret float* %w
}

; Function Attrs: alwaysinline nounwind uwtable
declare i32 @_rev(i32) local_unnamed_addr #0

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
