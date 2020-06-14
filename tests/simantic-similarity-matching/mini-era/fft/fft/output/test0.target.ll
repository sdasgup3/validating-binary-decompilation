; ModuleID = 'output/test0.target.extract.ll'
source_filename = "fft.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nounwind uwtable
define i32 @fft(float* %data, i32 %N, i32 %logn, i32 %sign) local_unnamed_addr #0 {
entry:
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %entry
  %i.i.0 = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i ]
  br i1 undef, label %for.cond.i.i, label %bit_reverse.exit

for.cond.i.i:                                     ; preds = %for.body.i.i, %for.cond.i
  br i1 undef, label %_rev.exit.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  br label %for.cond.i.i

_rev.exit.i:                                      ; preds = %for.cond.i.i
  br i1 undef, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %_rev.exit.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %_rev.exit.i
  %inc.i = add i32 %i.i.0, 1
  br label %for.cond.i

bit_reverse.exit:                                 ; preds = %for.cond.i
  br label %for.cond

for.cond:                                         ; preds = %for.end73, %bit_reverse.exit
  %bit.0 = phi i32 [ 0, %bit_reverse.exit ], [ %inc76, %for.end73 ]
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

; Function Attrs: nounwind
declare double @sin(double) local_unnamed_addr #1

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
