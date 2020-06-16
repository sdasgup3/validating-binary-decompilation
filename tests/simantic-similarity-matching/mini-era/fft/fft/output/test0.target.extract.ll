; ModuleID = './output//test0.target.opt.ll'
source_filename = "fft.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nounwind uwtable
define i32 @fft(float* %data, i32 %N, i32 %logn, i32 %sign) local_unnamed_addr #0 {
entry:
  %sub.i = sub i32 31, %logn
  %add.i = add i32 %sub.i, 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %entry
  %i.i.0 = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i ]
  %cmp.i = icmp ult i32 %i.i.0, %N
  br i1 %cmp.i, label %for.cond.i.i, label %bit_reverse.exit

for.cond.i.i:                                     ; preds = %for.body.i.i, %for.cond.i
  %v.addr.i.i.0.sink = phi i32 [ %shr1.i.i, %for.body.i.i ], [ %i.i.0, %for.cond.i ]
  %s.i.i.0 = phi i32 [ %dec.i.i, %for.body.i.i ], [ 31, %for.cond.i ]
  %r.i.i.0 = phi i32 [ %or.i.i, %for.body.i.i ], [ %i.i.0, %for.cond.i ]
  %shr1.i.i = lshr i32 %v.addr.i.i.0.sink, 1
  %tobool.i.i = icmp eq i32 %shr1.i.i, 0
  br i1 %tobool.i.i, label %_rev.exit.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %shl.i.i = shl i32 %r.i.i.0, 1
  %and.i.i = and i32 %shr1.i.i, 1
  %or.i.i = or i32 %shl.i.i, %and.i.i
  %dec.i.i = add nsw i32 %s.i.i.0, -1
  br label %for.cond.i.i

_rev.exit.i:                                      ; preds = %for.cond.i.i
  %shl2.i.i = shl i32 %r.i.i.0, %s.i.i.0
  %shr.i = lshr i32 %shl2.i.i, %add.i
  %cmp1.i = icmp ult i32 %i.i.0, %shr.i
  br i1 %cmp1.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %_rev.exit.i
  %mul.i = shl i32 %i.i.0, 1
  %idxprom.i = zext i32 %mul.i to i64
  %arrayidx.i = getelementptr inbounds float, float* %data, i64 %idxprom.i
  %0 = bitcast float* %arrayidx.i to i32*
  %1 = load i32, i32* %0, align 4
  %add3.i = or i32 %mul.i, 1
  %idxprom4.i = zext i32 %add3.i to i64
  %arrayidx5.i = getelementptr inbounds float, float* %data, i64 %idxprom4.i
  %2 = bitcast float* %arrayidx5.i to i32*
  %3 = load i32, i32* %2, align 4
  %mul6.i = shl i32 %shr.i, 1
  %idxprom7.i = zext i32 %mul6.i to i64
  %arrayidx8.i = getelementptr inbounds float, float* %data, i64 %idxprom7.i
  %4 = bitcast float* %arrayidx8.i to i32*
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %0, align 4
  %add13.i = or i32 %mul6.i, 1
  %idxprom14.i = zext i32 %add13.i to i64
  %arrayidx15.i = getelementptr inbounds float, float* %data, i64 %idxprom14.i
  %6 = bitcast float* %arrayidx15.i to i32*
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %2, align 4
  store i32 %1, i32* %4, align 4
  store i32 %3, i32* %6, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %_rev.exit.i
  %inc.i = add i32 %i.i.0, 1
  br label %for.cond.i

bit_reverse.exit:                                 ; preds = %for.cond.i
  %conv = sitofp i32 %sign to double
  %mul1 = fmul double %conv, 0x400921FB54442D18
  br label %for.cond

for.cond:                                         ; preds = %for.end73, %bit_reverse.exit
  %transform_length.0 = phi i32 [ 1, %bit_reverse.exit ], [ %mul62, %for.end73 ]
  %bit.0 = phi i32 [ 0, %bit_reverse.exit ], [ %inc76, %for.end73 ]
  %cmp = icmp ult i32 %bit.0, %logn
  br i1 %cmp, label %for.body, label %for.end77

for.body:                                         ; preds = %for.cond
  %conv2 = uitofp i32 %transform_length.0 to float
  %conv3 = fpext float %conv2 to double
  %div = fdiv double %mul1, %conv3
  %conv4 = fptrunc double %div to float
  %conv5 = fpext float %conv4 to double
  %call6 = tail call double @sin(double %conv5) #2
  %conv7 = fptrunc double %call6 to float
  %mul9 = fmul double %conv5, 5.000000e-01
  %call10 = tail call double @sin(double %mul9) #2
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

for.cond21:                                       ; preds = %for.body24, %for.cond17
  %b.0 = phi i32 [ %add63, %for.body24 ], [ 0, %for.cond17 ]
  %cmp22 = icmp ult i32 %b.0, %N
  br i1 %cmp22, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond21
  %add = add i32 %b.0, %a.0
  %add26 = add i32 %add, %transform_length.0
  %mul27 = shl i32 %add26, 1
  %idxprom = zext i32 %mul27 to i64
  %arrayidx = getelementptr inbounds float, float* %data, i64 %idxprom
  %8 = load float, float* %arrayidx, align 4
  %add29 = or i32 %mul27, 1
  %idxprom30 = zext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds float, float* %data, i64 %idxprom30
  %9 = load float, float* %arrayidx31, align 4
  %mul32 = fmul float %w_real.0, %8
  %mul33 = fmul float %w_imag.0, %9
  %sub = fsub float %mul32, %mul33
  %mul34 = fmul float %w_real.0, %9
  %mul35 = fmul float %w_imag.0, %8
  %add36 = fadd float %mul34, %mul35
  %mul37 = shl i32 %add, 1
  %idxprom38 = zext i32 %mul37 to i64
  %arrayidx39 = getelementptr inbounds float, float* %data, i64 %idxprom38
  %10 = load float, float* %arrayidx39, align 4
  %sub40 = fsub float %10, %sub
  store float %sub40, float* %arrayidx, align 4
  %add45 = or i32 %mul37, 1
  %idxprom46 = zext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds float, float* %data, i64 %idxprom46
  %11 = load float, float* %arrayidx47, align 4
  %sub48 = fsub float %11, %add36
  store float %sub48, float* %arrayidx31, align 4
  %12 = load float, float* %arrayidx39, align 4
  %add56 = fadd float %12, %sub
  store float %add56, float* %arrayidx39, align 4
  %13 = load float, float* %arrayidx47, align 4
  %add61 = fadd float %13, %add36
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

; Function Attrs: nounwind
declare double @sin(double) local_unnamed_addr #1

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
