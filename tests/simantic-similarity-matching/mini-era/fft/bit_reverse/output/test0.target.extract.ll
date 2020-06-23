; ModuleID = './output//test.target.ll'
source_filename = "fft.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nounwind uwtable
define float* @bit_reverse(float* %w, i32 %N, i32 %bits) #0 {
entry:
  %w.addr = alloca float*, align 8
  %N.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  %shift = alloca i32, align 4
  %r = alloca i32, align 4
  %t_real = alloca float, align 4
  %t_imag = alloca float, align 4
  store float* %w, float** %w.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %bits, i32* %bits.addr, align 4
  store i32 31, i32* %s, align 4
  %0 = load i32, i32* %s, align 4
  %1 = load i32, i32* %bits.addr, align 4
  %sub = sub i32 %0, %1
  %add = add i32 %sub, 1
  store i32 %add, i32* %shift, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %N.addr, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %call = call i32 @_rev(i32 %4)
  store i32 %call, i32* %r, align 4
  %5 = load i32, i32* %shift, align 4
  %6 = load i32, i32* %r, align 4
  %shr = lshr i32 %6, %5
  store i32 %shr, i32* %r, align 4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %r, align 4
  %cmp1 = icmp ult i32 %7, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load float*, float** %w.addr, align 8
  %10 = load i32, i32* %i, align 4
  %mul = mul i32 2, %10
  %idxprom = zext i32 %mul to i64
  %arrayidx = getelementptr inbounds float, float* %9, i64 %idxprom
  %11 = load float, float* %arrayidx, align 4
  store float %11, float* %t_real, align 4
  %12 = load float*, float** %w.addr, align 8
  %13 = load i32, i32* %i, align 4
  %mul2 = mul i32 2, %13
  %add3 = add i32 %mul2, 1
  %idxprom4 = zext i32 %add3 to i64
  %arrayidx5 = getelementptr inbounds float, float* %12, i64 %idxprom4
  %14 = load float, float* %arrayidx5, align 4
  store float %14, float* %t_imag, align 4
  %15 = load float*, float** %w.addr, align 8
  %16 = load i32, i32* %r, align 4
  %mul6 = mul i32 2, %16
  %idxprom7 = zext i32 %mul6 to i64
  %arrayidx8 = getelementptr inbounds float, float* %15, i64 %idxprom7
  %17 = load float, float* %arrayidx8, align 4
  %18 = load float*, float** %w.addr, align 8
  %19 = load i32, i32* %i, align 4
  %mul9 = mul i32 2, %19
  %idxprom10 = zext i32 %mul9 to i64
  %arrayidx11 = getelementptr inbounds float, float* %18, i64 %idxprom10
  store float %17, float* %arrayidx11, align 4
  %20 = load float*, float** %w.addr, align 8
  %21 = load i32, i32* %r, align 4
  %mul12 = mul i32 2, %21
  %add13 = add i32 %mul12, 1
  %idxprom14 = zext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds float, float* %20, i64 %idxprom14
  %22 = load float, float* %arrayidx15, align 4
  %23 = load float*, float** %w.addr, align 8
  %24 = load i32, i32* %i, align 4
  %mul16 = mul i32 2, %24
  %add17 = add i32 %mul16, 1
  %idxprom18 = zext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds float, float* %23, i64 %idxprom18
  store float %22, float* %arrayidx19, align 4
  %25 = load float, float* %t_real, align 4
  %26 = load float*, float** %w.addr, align 8
  %27 = load i32, i32* %r, align 4
  %mul20 = mul i32 2, %27
  %idxprom21 = zext i32 %mul20 to i64
  %arrayidx22 = getelementptr inbounds float, float* %26, i64 %idxprom21
  store float %25, float* %arrayidx22, align 4
  %28 = load float, float* %t_imag, align 4
  %29 = load float*, float** %w.addr, align 8
  %30 = load i32, i32* %r, align 4
  %mul23 = mul i32 2, %30
  %add24 = add i32 %mul23, 1
  %idxprom25 = zext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds float, float* %29, i64 %idxprom25
  store float %28, float* %arrayidx26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load i32, i32* %i, align 4
  %inc = add i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load float*, float** %w.addr, align 8
  ret float* %32
}

; Function Attrs: alwaysinline nounwind uwtable
declare i32 @_rev(i32) #0

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
