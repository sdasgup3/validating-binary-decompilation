; ModuleID = 'output/test0.query.opt.ll'
source_filename = "fft.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nounwind uwtable
define float* @bit_reverse(float* %w, i32 %N, i32 %bits) local_unnamed_addr #0 {
entry:
  %sub = sub i32 31, %bits
  %add = add i32 %sub, 1
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %cmp = icmp ult i32 %i.0, %N
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = tail call i32 @_rev(i32 %i.0)
  %shr = lshr i32 %call, %add
  %cmp1 = icmp ult i32 %i.0, %shr
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %mul = shl i32 %i.0, 1
  %idxprom = zext i32 %mul to i64
  %arrayidx = getelementptr inbounds float, float* %w, i64 %idxprom
  %0 = bitcast float* %arrayidx to i32*
  %1 = load i32, i32* %0, align 4
  %add3 = or i32 %mul, 1
  %idxprom4 = zext i32 %add3 to i64
  %arrayidx5 = getelementptr inbounds float, float* %w, i64 %idxprom4
  %2 = bitcast float* %arrayidx5 to i32*
  %3 = load i32, i32* %2, align 4
  %mul6 = shl i32 %shr, 1
  %idxprom7 = zext i32 %mul6 to i64
  %arrayidx8 = getelementptr inbounds float, float* %w, i64 %idxprom7
  %4 = bitcast float* %arrayidx8 to i32*
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %0, align 4
  %add13 = or i32 %mul6, 1
  %idxprom14 = zext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds float, float* %w, i64 %idxprom14
  %6 = bitcast float* %arrayidx15 to i32*
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %2, align 4
  store i32 %1, i32* %4, align 4
  store i32 %3, i32* %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %inc = add i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret float* %w
}

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
