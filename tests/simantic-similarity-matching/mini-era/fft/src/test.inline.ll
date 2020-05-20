; ModuleID = 'test.ll'
source_filename = "fft.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nounwind uwtable
define i32 @fft(float* %data, i32 %N, i32 %logn, i32 %sign) #0 {
entry:
  %v.addr.i.i = alloca i32, align 4
  %r.i.i = alloca i32, align 4
  %s.i.i = alloca i32, align 4
  %w.addr.i = alloca float*, align 8
  %N.addr.i = alloca i32, align 4
  %bits.addr.i = alloca i32, align 4
  %i.i = alloca i32, align 4
  %s.i = alloca i32, align 4
  %shift.i = alloca i32, align 4
  %r.i = alloca i32, align 4
  %t_real.i = alloca float, align 4
  %t_imag.i = alloca float, align 4
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
  %3 = bitcast float** %w.addr.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3)
  %4 = bitcast i32* %N.addr.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4)
  %5 = bitcast i32* %bits.addr.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5)
  %6 = bitcast i32* %i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6)
  %7 = bitcast i32* %s.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7)
  %8 = bitcast i32* %shift.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8)
  %9 = bitcast i32* %r.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9)
  %10 = bitcast float* %t_real.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10)
  %11 = bitcast float* %t_imag.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11)
  store float* %0, float** %w.addr.i, align 8
  store i32 %1, i32* %N.addr.i, align 4
  store i32 %2, i32* %bits.addr.i, align 4
  store i32 31, i32* %s.i, align 4
  %12 = load i32, i32* %s.i, align 4
  %13 = load i32, i32* %bits.addr.i, align 4
  %sub.i = sub i32 %12, %13
  %add.i = add i32 %sub.i, 1
  store i32 %add.i, i32* %shift.i, align 4
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %entry
  %14 = load i32, i32* %i.i, align 4
  %15 = load i32, i32* %N.addr.i, align 4
  %cmp.i = icmp ult i32 %14, %15
  br i1 %cmp.i, label %for.body.i, label %bit_reverse.exit

for.body.i:                                       ; preds = %for.cond.i
  %16 = load i32, i32* %i.i, align 4
  %17 = bitcast i32* %v.addr.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #3
  %18 = bitcast i32* %r.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = bitcast i32* %s.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #3
  store i32 %16, i32* %v.addr.i.i, align 4
  %20 = load i32, i32* %v.addr.i.i, align 4
  store i32 %20, i32* %r.i.i, align 4
  store i32 31, i32* %s.i.i, align 4
  %21 = load i32, i32* %v.addr.i.i, align 4
  %shr.i.i = lshr i32 %21, 1
  store i32 %shr.i.i, i32* %v.addr.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i, %for.body.i
  %22 = load i32, i32* %v.addr.i.i, align 4
  %tobool.i.i = icmp ne i32 %22, 0
  br i1 %tobool.i.i, label %for.body.i.i, label %_rev.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %23 = load i32, i32* %r.i.i, align 4
  %shl.i.i = shl i32 %23, 1
  store i32 %shl.i.i, i32* %r.i.i, align 4
  %24 = load i32, i32* %v.addr.i.i, align 4
  %and.i.i = and i32 %24, 1
  %25 = load i32, i32* %r.i.i, align 4
  %or.i.i = or i32 %25, %and.i.i
  store i32 %or.i.i, i32* %r.i.i, align 4
  %26 = load i32, i32* %s.i.i, align 4
  %dec.i.i = add nsw i32 %26, -1
  store i32 %dec.i.i, i32* %s.i.i, align 4
  %27 = load i32, i32* %v.addr.i.i, align 4
  %shr1.i.i = lshr i32 %27, 1
  store i32 %shr1.i.i, i32* %v.addr.i.i, align 4
  br label %for.cond.i.i

_rev.exit.i:                                      ; preds = %for.cond.i.i
  %28 = load i32, i32* %s.i.i, align 4
  %29 = load i32, i32* %r.i.i, align 4
  %shl2.i.i = shl i32 %29, %28
  store i32 %shl2.i.i, i32* %r.i.i, align 4
  %30 = load i32, i32* %r.i.i, align 4
  %31 = bitcast i32* %v.addr.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #3
  %32 = bitcast i32* %r.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #3
  %33 = bitcast i32* %s.i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #3
  store i32 %30, i32* %r.i, align 4
  %34 = load i32, i32* %shift.i, align 4
  %35 = load i32, i32* %r.i, align 4
  %shr.i = lshr i32 %35, %34
  store i32 %shr.i, i32* %r.i, align 4
  %36 = load i32, i32* %i.i, align 4
  %37 = load i32, i32* %r.i, align 4
  %cmp1.i = icmp ult i32 %36, %37
  br i1 %cmp1.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %_rev.exit.i
  %38 = load float*, float** %w.addr.i, align 8
  %39 = load i32, i32* %i.i, align 4
  %mul.i = mul i32 2, %39
  %idxprom.i = zext i32 %mul.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %38, i64 %idxprom.i
  %40 = load float, float* %arrayidx.i, align 4
  store float %40, float* %t_real.i, align 4
  %41 = load float*, float** %w.addr.i, align 8
  %42 = load i32, i32* %i.i, align 4
  %mul2.i = mul i32 2, %42
  %add3.i = add i32 %mul2.i, 1
  %idxprom4.i = zext i32 %add3.i to i64
  %arrayidx5.i = getelementptr inbounds float, float* %41, i64 %idxprom4.i
  %43 = load float, float* %arrayidx5.i, align 4
  store float %43, float* %t_imag.i, align 4
  %44 = load float*, float** %w.addr.i, align 8
  %45 = load i32, i32* %r.i, align 4
  %mul6.i = mul i32 2, %45
  %idxprom7.i = zext i32 %mul6.i to i64
  %arrayidx8.i = getelementptr inbounds float, float* %44, i64 %idxprom7.i
  %46 = load float, float* %arrayidx8.i, align 4
  %47 = load float*, float** %w.addr.i, align 8
  %48 = load i32, i32* %i.i, align 4
  %mul9.i = mul i32 2, %48
  %idxprom10.i = zext i32 %mul9.i to i64
  %arrayidx11.i = getelementptr inbounds float, float* %47, i64 %idxprom10.i
  store float %46, float* %arrayidx11.i, align 4
  %49 = load float*, float** %w.addr.i, align 8
  %50 = load i32, i32* %r.i, align 4
  %mul12.i = mul i32 2, %50
  %add13.i = add i32 %mul12.i, 1
  %idxprom14.i = zext i32 %add13.i to i64
  %arrayidx15.i = getelementptr inbounds float, float* %49, i64 %idxprom14.i
  %51 = load float, float* %arrayidx15.i, align 4
  %52 = load float*, float** %w.addr.i, align 8
  %53 = load i32, i32* %i.i, align 4
  %mul16.i = mul i32 2, %53
  %add17.i = add i32 %mul16.i, 1
  %idxprom18.i = zext i32 %add17.i to i64
  %arrayidx19.i = getelementptr inbounds float, float* %52, i64 %idxprom18.i
  store float %51, float* %arrayidx19.i, align 4
  %54 = load float, float* %t_real.i, align 4
  %55 = load float*, float** %w.addr.i, align 8
  %56 = load i32, i32* %r.i, align 4
  %mul20.i = mul i32 2, %56
  %idxprom21.i = zext i32 %mul20.i to i64
  %arrayidx22.i = getelementptr inbounds float, float* %55, i64 %idxprom21.i
  store float %54, float* %arrayidx22.i, align 4
  %57 = load float, float* %t_imag.i, align 4
  %58 = load float*, float** %w.addr.i, align 8
  %59 = load i32, i32* %r.i, align 4
  %mul23.i = mul i32 2, %59
  %add24.i = add i32 %mul23.i, 1
  %idxprom25.i = zext i32 %add24.i to i64
  %arrayidx26.i = getelementptr inbounds float, float* %58, i64 %idxprom25.i
  store float %57, float* %arrayidx26.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %_rev.exit.i
  %60 = load i32, i32* %i.i, align 4
  %inc.i = add i32 %60, 1
  store i32 %inc.i, i32* %i.i, align 4
  br label %for.cond.i

bit_reverse.exit:                                 ; preds = %for.cond.i
  %61 = load float*, float** %w.addr.i, align 8
  %62 = bitcast float** %w.addr.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62)
  %63 = bitcast i32* %N.addr.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63)
  %64 = bitcast i32* %bits.addr.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64)
  %65 = bitcast i32* %i.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65)
  %66 = bitcast i32* %s.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66)
  %67 = bitcast i32* %shift.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67)
  %68 = bitcast i32* %r.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68)
  %69 = bitcast float* %t_real.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69)
  %70 = bitcast float* %t_imag.i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70)
  store i32 0, i32* %bit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc75, %bit_reverse.exit
  %71 = load i32, i32* %bit, align 4
  %72 = load i32, i32* %logn.addr, align 4
  %cmp = icmp ult i32 %71, %72
  br i1 %cmp, label %for.body, label %for.end77

for.body:                                         ; preds = %for.cond
  store float 1.000000e+00, float* %w_real, align 4
  store float 0.000000e+00, float* %w_imag, align 4
  %73 = load i32, i32* %sign.addr, align 4
  %conv = sitofp i32 %73 to double
  %mul = fmul double 1.000000e+00, %conv
  %mul1 = fmul double %mul, 0x400921FB54442D18
  %74 = load i32, i32* %transform_length, align 4
  %conv2 = uitofp i32 %74 to float
  %conv3 = fpext float %conv2 to double
  %div = fdiv double %mul1, %conv3
  %conv4 = fptrunc double %div to float
  store float %conv4, float* %theta, align 4
  %75 = load float, float* %theta, align 4
  %conv5 = fpext float %75 to double
  %call6 = call double @sin(double %conv5) #3
  %conv7 = fptrunc double %call6 to float
  store float %conv7, float* %s, align 4
  %76 = load float, float* %theta, align 4
  %conv8 = fpext float %76 to double
  %mul9 = fmul double 5.000000e-01, %conv8
  %call10 = call double @sin(double %mul9) #3
  %conv11 = fptrunc double %call10 to float
  store float %conv11, float* %t, align 4
  %77 = load float, float* %t, align 4
  %conv12 = fpext float %77 to double
  %mul13 = fmul double 2.000000e+00, %conv12
  %78 = load float, float* %t, align 4
  %conv14 = fpext float %78 to double
  %mul15 = fmul double %mul13, %conv14
  %conv16 = fptrunc double %mul15 to float
  store float %conv16, float* %s2, align 4
  store i32 0, i32* %a, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc72, %for.body
  %79 = load i32, i32* %a, align 4
  %80 = load i32, i32* %transform_length, align 4
  %cmp18 = icmp ult i32 %79, %80
  br i1 %cmp18, label %for.body20, label %for.end73

for.body20:                                       ; preds = %for.cond17
  store i32 0, i32* %b, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body20
  %81 = load i32, i32* %b, align 4
  %82 = load i32, i32* %N.addr, align 4
  %cmp22 = icmp ult i32 %81, %82
  br i1 %cmp22, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond21
  %83 = load i32, i32* %b, align 4
  %84 = load i32, i32* %a, align 4
  %add = add i32 %83, %84
  store i32 %add, i32* %i, align 4
  %85 = load i32, i32* %b, align 4
  %86 = load i32, i32* %a, align 4
  %add25 = add i32 %85, %86
  %87 = load i32, i32* %transform_length, align 4
  %add26 = add i32 %add25, %87
  store i32 %add26, i32* %j, align 4
  %88 = load float*, float** %data.addr, align 8
  %89 = load i32, i32* %j, align 4
  %mul27 = mul i32 2, %89
  %idxprom = zext i32 %mul27 to i64
  %arrayidx = getelementptr inbounds float, float* %88, i64 %idxprom
  %90 = load float, float* %arrayidx, align 4
  store float %90, float* %z_real, align 4
  %91 = load float*, float** %data.addr, align 8
  %92 = load i32, i32* %j, align 4
  %mul28 = mul i32 2, %92
  %add29 = add i32 %mul28, 1
  %idxprom30 = zext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds float, float* %91, i64 %idxprom30
  %93 = load float, float* %arrayidx31, align 4
  store float %93, float* %z_imag, align 4
  %94 = load float, float* %w_real, align 4
  %95 = load float, float* %z_real, align 4
  %mul32 = fmul float %94, %95
  %96 = load float, float* %w_imag, align 4
  %97 = load float, float* %z_imag, align 4
  %mul33 = fmul float %96, %97
  %sub = fsub float %mul32, %mul33
  store float %sub, float* %t_real, align 4
  %98 = load float, float* %w_real, align 4
  %99 = load float, float* %z_imag, align 4
  %mul34 = fmul float %98, %99
  %100 = load float, float* %w_imag, align 4
  %101 = load float, float* %z_real, align 4
  %mul35 = fmul float %100, %101
  %add36 = fadd float %mul34, %mul35
  store float %add36, float* %t_imag, align 4
  %102 = load float*, float** %data.addr, align 8
  %103 = load i32, i32* %i, align 4
  %mul37 = mul i32 2, %103
  %idxprom38 = zext i32 %mul37 to i64
  %arrayidx39 = getelementptr inbounds float, float* %102, i64 %idxprom38
  %104 = load float, float* %arrayidx39, align 4
  %105 = load float, float* %t_real, align 4
  %sub40 = fsub float %104, %105
  %106 = load float*, float** %data.addr, align 8
  %107 = load i32, i32* %j, align 4
  %mul41 = mul i32 2, %107
  %idxprom42 = zext i32 %mul41 to i64
  %arrayidx43 = getelementptr inbounds float, float* %106, i64 %idxprom42
  store float %sub40, float* %arrayidx43, align 4
  %108 = load float*, float** %data.addr, align 8
  %109 = load i32, i32* %i, align 4
  %mul44 = mul i32 2, %109
  %add45 = add i32 %mul44, 1
  %idxprom46 = zext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds float, float* %108, i64 %idxprom46
  %110 = load float, float* %arrayidx47, align 4
  %111 = load float, float* %t_imag, align 4
  %sub48 = fsub float %110, %111
  %112 = load float*, float** %data.addr, align 8
  %113 = load i32, i32* %j, align 4
  %mul49 = mul i32 2, %113
  %add50 = add i32 %mul49, 1
  %idxprom51 = zext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds float, float* %112, i64 %idxprom51
  store float %sub48, float* %arrayidx52, align 4
  %114 = load float, float* %t_real, align 4
  %115 = load float*, float** %data.addr, align 8
  %116 = load i32, i32* %i, align 4
  %mul53 = mul i32 2, %116
  %idxprom54 = zext i32 %mul53 to i64
  %arrayidx55 = getelementptr inbounds float, float* %115, i64 %idxprom54
  %117 = load float, float* %arrayidx55, align 4
  %add56 = fadd float %117, %114
  store float %add56, float* %arrayidx55, align 4
  %118 = load float, float* %t_imag, align 4
  %119 = load float*, float** %data.addr, align 8
  %120 = load i32, i32* %i, align 4
  %mul57 = mul i32 2, %120
  %add58 = add i32 %mul57, 1
  %idxprom59 = zext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds float, float* %119, i64 %idxprom59
  %121 = load float, float* %arrayidx60, align 4
  %add61 = fadd float %121, %118
  store float %add61, float* %arrayidx60, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %122 = load i32, i32* %transform_length, align 4
  %mul62 = mul i32 2, %122
  %123 = load i32, i32* %b, align 4
  %add63 = add i32 %123, %mul62
  store i32 %add63, i32* %b, align 4
  br label %for.cond21

for.end:                                          ; preds = %for.cond21
  %124 = load float, float* %w_real, align 4
  %125 = load float, float* %s, align 4
  %126 = load float, float* %w_imag, align 4
  %mul64 = fmul float %125, %126
  %127 = load float, float* %s2, align 4
  %128 = load float, float* %w_real, align 4
  %mul65 = fmul float %127, %128
  %add66 = fadd float %mul64, %mul65
  %sub67 = fsub float %124, %add66
  store float %sub67, float* %t_real, align 4
  %129 = load float, float* %w_imag, align 4
  %130 = load float, float* %s, align 4
  %131 = load float, float* %w_real, align 4
  %mul68 = fmul float %130, %131
  %132 = load float, float* %s2, align 4
  %133 = load float, float* %w_imag, align 4
  %mul69 = fmul float %132, %133
  %sub70 = fsub float %mul68, %mul69
  %add71 = fadd float %129, %sub70
  store float %add71, float* %t_imag, align 4
  %134 = load float, float* %t_real, align 4
  store float %134, float* %w_real, align 4
  %135 = load float, float* %t_imag, align 4
  store float %135, float* %w_imag, align 4
  br label %for.inc72

for.inc72:                                        ; preds = %for.end
  %136 = load i32, i32* %a, align 4
  %inc = add i32 %136, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond17

for.end73:                                        ; preds = %for.cond17
  %137 = load i32, i32* %transform_length, align 4
  %mul74 = mul i32 %137, 2
  store i32 %mul74, i32* %transform_length, align 4
  br label %for.inc75

for.inc75:                                        ; preds = %for.end73
  %138 = load i32, i32* %bit, align 4
  %inc76 = add i32 %138, 1
  store i32 %inc76, i32* %bit, align 4
  br label %for.cond

for.end77:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs:  nounwind uwtable
define internal float* @bit_reverse(float* %w, i32 %N, i32 %bits) #0 {
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
define internal i32 @_rev(i32 %v) #0 {
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
