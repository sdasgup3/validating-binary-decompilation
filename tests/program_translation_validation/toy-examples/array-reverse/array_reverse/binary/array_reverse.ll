; ModuleID = 'array_reverse.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define void @array_reverse(i32* %arr, i32 %len) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %start, align 4
  %0 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %end, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %start, align 4
  %2 = load i32, i32* %end, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32*, i32** %arr.addr, align 8
  %4 = load i32, i32* %start, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %tmp, align 4
  %6 = load i32*, i32** %arr.addr, align 8
  %7 = load i32, i32* %end, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %8 = load i32, i32* %arrayidx2, align 4
  %9 = load i32*, i32** %arr.addr, align 8
  %10 = load i32, i32* %start, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 %idxprom3
  store i32 %8, i32* %arrayidx4, align 4
  %11 = load i32, i32* %tmp, align 4
  %12 = load i32*, i32** %arr.addr, align 8
  %13 = load i32, i32* %end, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  store i32 %11, i32* %arrayidx6, align 4
  %14 = load i32, i32* %start, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %start, align 4
  %15 = load i32, i32* %end, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %end, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
