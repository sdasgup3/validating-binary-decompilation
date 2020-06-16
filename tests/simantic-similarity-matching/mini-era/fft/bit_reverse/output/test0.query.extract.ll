; ModuleID = './output//test0.query.opt.ll'
source_filename = "fft.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nounwind uwtable
define i32 @_rev(i32 %v) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %v.addr.0.sink = phi i32 [ %shr1, %for.body ], [ %v, %entry ]
  %s.0 = phi i32 [ %dec, %for.body ], [ 31, %entry ]
  %r.0 = phi i32 [ %or, %for.body ], [ %v, %entry ]
  %shr1 = lshr i32 %v.addr.0.sink, 1
  %tobool = icmp eq i32 %shr1, 0
  br i1 %tobool, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %shl = shl i32 %r.0, 1
  %and = and i32 %shr1, 1
  %or = or i32 %shl, %and
  %dec = add nsw i32 %s.0, -1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %shl2 = shl i32 %r.0, %s.0
  ret i32 %shl2
}

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
