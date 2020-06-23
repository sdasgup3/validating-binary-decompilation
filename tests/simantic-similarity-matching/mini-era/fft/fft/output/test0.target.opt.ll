; ModuleID = './output//test0.target.extract.ll'
source_filename = "fft.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @fft(float* %data, i32 %N, i32 %logn, i32 %sign) local_unnamed_addr {
entry:
  %call = tail call float* @bit_reverse(float* %data, i32 %N, i32 %logn)
  %conv = sitofp i32 %sign to double
  %mul1 = fmul double %conv, 0x400921FB54442D18
  br label %for.cond

for.cond:                                         ; preds = %for.end73, %entry
  %bit.0 = phi i32 [ 0, %entry ], [ %inc76, %for.end73 ]
  %transform_length.0 = phi i32 [ 1, %entry ], [ %mul62, %for.end73 ]
  %cmp = icmp ult i32 %bit.0, %logn
  br i1 %cmp, label %for.body, label %for.end77

for.body:                                         ; preds = %for.cond
  %conv2 = uitofp i32 %transform_length.0 to float
  %conv3 = fpext float %conv2 to double
  %div = fdiv double %mul1, %conv3
  %conv4 = fptrunc double %div to float
  %conv5 = fpext float %conv4 to double
  %call6 = tail call double @sin(double %conv5)
  %conv7 = fptrunc double %call6 to float
  %mul9 = fmul double %conv5, 5.000000e-01
  %call10 = tail call double @sin(double %mul9)
  %conv11 = fptrunc double %call10 to float
  %conv12 = fpext float %conv11 to double
  %mul13 = fmul double %conv12, 2.000000e+00
  %mul15 = fmul double %mul13, %conv12
  %conv16 = fptrunc double %mul15 to float
  %mul62 = shl i32 %transform_length.0, 1
  br label %for.cond17

for.cond17:                                       ; preds = %for.end, %for.body
  %a.0 = phi i32 [ 0, %for.body ], [ %inc, %for.end ]
  %w_real.0 = phi float [ 1.000000e+00, %for.body ], [ %sub67, %for.end ]
  %w_imag.0 = phi float [ 0.000000e+00, %for.body ], [ %add71, %for.end ]
  %cmp18 = icmp ult i32 %a.0, %transform_length.0
  br i1 %cmp18, label %for.cond21, label %for.end73

for.cond21:                                       ; preds = %for.cond17, %for.body24
  %b.0 = phi i32 [ %add63, %for.body24 ], [ 0, %for.cond17 ]
  %cmp22 = icmp ult i32 %b.0, %N
  br i1 %cmp22, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond21
  %add = add i32 %b.0, %a.0
  %add26 = add i32 %add, %transform_length.0
  %mul27 = shl i32 %add26, 1
  %idxprom = zext i32 %mul27 to i64
  %arrayidx = getelementptr inbounds float, float* %data, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %add29 = or i32 %mul27, 1
  %idxprom30 = zext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds float, float* %data, i64 %idxprom30
  %1 = load float, float* %arrayidx31, align 4
  %mul32 = fmul float %w_real.0, %0
  %mul33 = fmul float %w_imag.0, %1
  %sub = fsub float %mul32, %mul33
  %mul34 = fmul float %w_real.0, %1
  %mul35 = fmul float %w_imag.0, %0
  %add36 = fadd float %mul34, %mul35
  %mul37 = shl i32 %add, 1
  %idxprom38 = zext i32 %mul37 to i64
  %arrayidx39 = getelementptr inbounds float, float* %data, i64 %idxprom38
  %2 = load float, float* %arrayidx39, align 4
  %sub40 = fsub float %2, %sub
  store float %sub40, float* %arrayidx, align 4
  %add45 = or i32 %mul37, 1
  %idxprom46 = zext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds float, float* %data, i64 %idxprom46
  %3 = load float, float* %arrayidx47, align 4
  %sub48 = fsub float %3, %add36
  store float %sub48, float* %arrayidx31, align 4
  %4 = load float, float* %arrayidx39, align 4
  %add56 = fadd float %4, %sub
  store float %add56, float* %arrayidx39, align 4
  %5 = load float, float* %arrayidx47, align 4
  %add61 = fadd float %5, %add36
  store float %add61, float* %arrayidx47, align 4
  %add63 = add i32 %b.0, %mul62
  br label %for.cond21

for.end:                                          ; preds = %for.cond21
  %mul64 = fmul float %conv7, %w_imag.0
  %mul65 = fmul float %conv16, %w_real.0
  %add66 = fadd float %mul64, %mul65
  %sub67 = fsub float %w_real.0, %add66
  %mul68 = fmul float %conv7, %w_real.0
  %mul69 = fmul float %conv16, %w_imag.0
  %sub70 = fsub float %mul68, %mul69
  %add71 = fadd float %w_imag.0, %sub70
  %inc = add i32 %a.0, 1
  br label %for.cond17

for.end73:                                        ; preds = %for.cond17
  %inc76 = add i32 %bit.0, 1
  br label %for.cond

for.end77:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: alwaysinline nounwind uwtable
declare float* @bit_reverse(float*, i32, i32) local_unnamed_addr #0

; Function Attrs: nounwind
declare double @sin(double) local_unnamed_addr #1

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
