; ModuleID = 'test.ll'
source_filename = "fft.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"


; Function Attrs: noinline nounwind uwtable
define i32 @fft(float* %data, i32 %N, i32 %logn, i32 %sign)  {
entry:
  %data.addr = alloca float*, align 8
  %N.addr = alloca i32, align 4
  %logn.addr = alloca i32, align 4
  %sign.addr = alloca i32, align 4
  %transform_length = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %bit = alloca i32, align 4
  %theta = alloca float, align 4
  %t_real = alloca float, align 4
  %t_imag = alloca float, align 4
  %w_real = alloca float, align 4
  %w_imag = alloca float, align 4
  %s = alloca float, align 4
  %t = alloca float, align 4
  %s2 = alloca float, align 4
  %z_real = alloca float, align 4
  %z_imag = alloca float, align 4
  store float* %data, float** %data.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %logn, i32* %logn.addr, align 4
  store i32 %sign, i32* %sign.addr, align 4
  store i32 1, i32* %transform_length, align 4
  %0 = load float*, float** %data.addr, align 8
  %1 = load i32, i32* %N.addr, align 4
  %2 = load i32, i32* %logn.addr, align 4
  %call = call float* @bit_reverse(float* %0, i32 %1, i32 %2)
  store i32 0, i32* %bit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc75, %entry
  %3 = load i32, i32* %bit, align 4
  %4 = load i32, i32* %logn.addr, align 4
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end77

for.body:                                         ; preds = %for.cond
  store float 1.000000e+00, float* %w_real, align 4
  store float 0.000000e+00, float* %w_imag, align 4
  %5 = load i32, i32* %sign.addr, align 4
  %conv = sitofp i32 %5 to double
  %mul = fmul double 1.000000e+00, %conv
  %mul1 = fmul double %mul, 0x400921FB54442D18
  %6 = load i32, i32* %transform_length, align 4
  %conv2 = uitofp i32 %6 to float
  %conv3 = fpext float %conv2 to double
  %div = fdiv double %mul1, %conv3
  %conv4 = fptrunc double %div to float
  store float %conv4, float* %theta, align 4
  %7 = load float, float* %theta, align 4
  %conv5 = fpext float %7 to double
  %call6 = call double @sin(double %conv5)
  %conv7 = fptrunc double %call6 to float
  store float %conv7, float* %s, align 4
  %8 = load float, float* %theta, align 4
  %conv8 = fpext float %8 to double
  %mul9 = fmul double 5.000000e-01, %conv8
  %call10 = call double @sin(double %mul9)
  %conv11 = fptrunc double %call10 to float
  store float %conv11, float* %t, align 4
  %9 = load float, float* %t, align 4
  %conv12 = fpext float %9 to double
  %mul13 = fmul double 2.000000e+00, %conv12
  %10 = load float, float* %t, align 4
  %conv14 = fpext float %10 to double
  %mul15 = fmul double %mul13, %conv14
  %conv16 = fptrunc double %mul15 to float
  store float %conv16, float* %s2, align 4
  store i32 0, i32* %a, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc72, %for.body
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %transform_length, align 4
  %cmp18 = icmp ult i32 %11, %12
  br i1 %cmp18, label %for.body20, label %for.end73

for.body20:                                       ; preds = %for.cond17
  store i32 0, i32* %b, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body20
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %N.addr, align 4
  %cmp22 = icmp ult i32 %13, %14
  br i1 %cmp22, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond21
  %15 = load i32, i32* %b, align 4
  %16 = load i32, i32* %a, align 4
  %add = add i32 %15, %16
  store i32 %add, i32* %i, align 4
  %17 = load i32, i32* %b, align 4
  %18 = load i32, i32* %a, align 4
  %add25 = add i32 %17, %18
  %19 = load i32, i32* %transform_length, align 4
  %add26 = add i32 %add25, %19
  store i32 %add26, i32* %j, align 4
  %20 = load float*, float** %data.addr, align 8
  %21 = load i32, i32* %j, align 4
  %mul27 = mul i32 2, %21
  %idxprom = zext i32 %mul27 to i64
  %arrayidx = getelementptr inbounds float, float* %20, i64 %idxprom
  %22 = load float, float* %arrayidx, align 4
  store float %22, float* %z_real, align 4
  %23 = load float*, float** %data.addr, align 8
  %24 = load i32, i32* %j, align 4
  %mul28 = mul i32 2, %24
  %add29 = add i32 %mul28, 1
  %idxprom30 = zext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds float, float* %23, i64 %idxprom30
  %25 = load float, float* %arrayidx31, align 4
  store float %25, float* %z_imag, align 4
  %26 = load float, float* %w_real, align 4
  %27 = load float, float* %z_real, align 4
  %mul32 = fmul float %26, %27
  %28 = load float, float* %w_imag, align 4
  %29 = load float, float* %z_imag, align 4
  %mul33 = fmul float %28, %29
  %sub = fsub float %mul32, %mul33
  store float %sub, float* %t_real, align 4
  %30 = load float, float* %w_real, align 4
  %31 = load float, float* %z_imag, align 4
  %mul34 = fmul float %30, %31
  %32 = load float, float* %w_imag, align 4
  %33 = load float, float* %z_real, align 4
  %mul35 = fmul float %32, %33
  %add36 = fadd float %mul34, %mul35
  store float %add36, float* %t_imag, align 4
  %34 = load float*, float** %data.addr, align 8
  %35 = load i32, i32* %i, align 4
  %mul37 = mul i32 2, %35
  %idxprom38 = zext i32 %mul37 to i64
  %arrayidx39 = getelementptr inbounds float, float* %34, i64 %idxprom38
  %36 = load float, float* %arrayidx39, align 4
  %37 = load float, float* %t_real, align 4
  %sub40 = fsub float %36, %37
  %38 = load float*, float** %data.addr, align 8
  %39 = load i32, i32* %j, align 4
  %mul41 = mul i32 2, %39
  %idxprom42 = zext i32 %mul41 to i64
  %arrayidx43 = getelementptr inbounds float, float* %38, i64 %idxprom42
  store float %sub40, float* %arrayidx43, align 4
  %40 = load float*, float** %data.addr, align 8
  %41 = load i32, i32* %i, align 4
  %mul44 = mul i32 2, %41
  %add45 = add i32 %mul44, 1
  %idxprom46 = zext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds float, float* %40, i64 %idxprom46
  %42 = load float, float* %arrayidx47, align 4
  %43 = load float, float* %t_imag, align 4
  %sub48 = fsub float %42, %43
  %44 = load float*, float** %data.addr, align 8
  %45 = load i32, i32* %j, align 4
  %mul49 = mul i32 2, %45
  %add50 = add i32 %mul49, 1
  %idxprom51 = zext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds float, float* %44, i64 %idxprom51
  store float %sub48, float* %arrayidx52, align 4
  %46 = load float, float* %t_real, align 4
  %47 = load float*, float** %data.addr, align 8
  %48 = load i32, i32* %i, align 4
  %mul53 = mul i32 2, %48
  %idxprom54 = zext i32 %mul53 to i64
  %arrayidx55 = getelementptr inbounds float, float* %47, i64 %idxprom54
  %49 = load float, float* %arrayidx55, align 4
  %add56 = fadd float %49, %46
  store float %add56, float* %arrayidx55, align 4
  %50 = load float, float* %t_imag, align 4
  %51 = load float*, float** %data.addr, align 8
  %52 = load i32, i32* %i, align 4
  %mul57 = mul i32 2, %52
  %add58 = add i32 %mul57, 1
  %idxprom59 = zext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds float, float* %51, i64 %idxprom59
  %53 = load float, float* %arrayidx60, align 4
  %add61 = fadd float %53, %50
  store float %add61, float* %arrayidx60, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %54 = load i32, i32* %transform_length, align 4
  %mul62 = mul i32 2, %54
  %55 = load i32, i32* %b, align 4
  %add63 = add i32 %55, %mul62
  store i32 %add63, i32* %b, align 4
  br label %for.cond21

for.end:                                          ; preds = %for.cond21
  %56 = load float, float* %w_real, align 4
  %57 = load float, float* %s, align 4
  %58 = load float, float* %w_imag, align 4
  %mul64 = fmul float %57, %58
  %59 = load float, float* %s2, align 4
  %60 = load float, float* %w_real, align 4
  %mul65 = fmul float %59, %60
  %add66 = fadd float %mul64, %mul65
  %sub67 = fsub float %56, %add66
  store float %sub67, float* %t_real, align 4
  %61 = load float, float* %w_imag, align 4
  %62 = load float, float* %s, align 4
  %63 = load float, float* %w_real, align 4
  %mul68 = fmul float %62, %63
  %64 = load float, float* %s2, align 4
  %65 = load float, float* %w_imag, align 4
  %mul69 = fmul float %64, %65
  %sub70 = fsub float %mul68, %mul69
  %add71 = fadd float %61, %sub70
  store float %add71, float* %t_imag, align 4
  %66 = load float, float* %t_real, align 4
  store float %66, float* %w_real, align 4
  %67 = load float, float* %t_imag, align 4
  store float %67, float* %w_imag, align 4
  br label %for.inc72

for.inc72:                                        ; preds = %for.end
  %68 = load i32, i32* %a, align 4
  %inc = add i32 %68, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond17

for.end73:                                        ; preds = %for.cond17
  %69 = load i32, i32* %transform_length, align 4
  %mul74 = mul i32 %69, 2
  store i32 %mul74, i32* %transform_length, align 4
  br label %for.inc75

for.inc75:                                        ; preds = %for.end73
  %70 = load i32, i32* %bit, align 4
  %inc76 = add i32 %70, 1
  store i32 %inc76, i32* %bit, align 4
  br label %for.cond

for.end77:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs:  nounwind uwtable
define  float* @bit_reverse(float* %w, i32 %N, i32 %bits) #0 {
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

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs:  nounwind uwtable
define  i32 @_rev(i32 %v) #0 {
entry:
  %v.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %v, i32* %v.addr, align 4
  %0 = load i32, i32* %v.addr, align 4
  store i32 %0, i32* %r, align 4
  store i32 31, i32* %s, align 4
  %1 = load i32, i32* %v.addr, align 4
  %shr = lshr i32 %1, 1
  store i32 %shr, i32* %v.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %v.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %r, align 4
  %shl = shl i32 %3, 1
  store i32 %shl, i32* %r, align 4
  %4 = load i32, i32* %v.addr, align 4
  %and = and i32 %4, 1
  %5 = load i32, i32* %r, align 4
  %or = or i32 %5, %and
  store i32 %or, i32* %r, align 4
  %6 = load i32, i32* %s, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %v.addr, align 4
  %shr1 = lshr i32 %7, 1
  store i32 %shr1, i32* %v.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %s, align 4
  %9 = load i32, i32* %r, align 4
  %shl2 = shl i32 %9, %8
  store i32 %shl2, i32* %r, align 4
  %10 = load i32, i32* %r, align 4
  ret i32 %10
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
