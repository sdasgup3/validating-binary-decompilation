; ModuleID = 'mandel/mandel.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@accum = common global { double, double } zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @emit(double %X.coerce0, double %X.coerce1) #0 {
entry:
  %X = alloca { double, double }, align 8
  %0 = getelementptr inbounds { double, double }, { double, double }* %X, i32 0, i32 0
  store double %X.coerce0, double* %0, align 8
  %1 = getelementptr inbounds { double, double }, { double, double }* %X, i32 0, i32 1
  store double %X.coerce1, double* %1, align 8
  %X.realp = getelementptr inbounds { double, double }, { double, double }* %X, i32 0, i32 0
  %X.real = load double, double* %X.realp, align 8
  %X.imagp = getelementptr inbounds { double, double }, { double, double }* %X, i32 0, i32 1
  %X.imag = load double, double* %X.imagp, align 8
  %accum.real = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 0), align 8
  %accum.imag = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 1), align 8
  %add.r = fadd double %accum.real, %X.real
  %add.i = fadd double %accum.imag, %X.imag
  store volatile double %add.r, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 0), align 8
  store volatile double %add.i, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 1), align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @mandel() #0 {
entry:
  %__x.addr.i = alloca double, align 8
  %__y.addr.i = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca { double, double }, align 8
  %z = alloca { double, double }, align 8
  %coerce = alloca { double, double }, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc35, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %0, 5000
  br i1 %cmp, label %for.body, label %for.end37

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc32, %for.body
  %1 = load i32, i32* %y, align 4
  %cmp2 = icmp slt i32 %1, 5000
  br i1 %cmp2, label %for.body3, label %for.end34

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %x, align 4
  %conv = sitofp i32 %2 to double
  %mul = fmul double %conv, 4.000000e+00
  %div = fdiv double %mul, 5.000000e+03
  %add = fadd double -2.000000e+00, %div
  %3 = load i32, i32* %y, align 4
  %conv4 = sitofp i32 %3 to double
  %mul5 = fmul double %conv4, 4.000000e+00
  %div6 = fdiv double %mul5, 5.000000e+03
  %sub = fsub double -2.000000e+00, %div6
  %mul.rl = fmul double %sub, 0.000000e+00
  %mul.ir = fmul double %sub, 1.000000e+00
  %add.r = fadd double %add, %mul.rl
  %c.realp = getelementptr inbounds { double, double }, { double, double }* %c, i32 0, i32 0
  %c.imagp = getelementptr inbounds { double, double }, { double, double }* %c, i32 0, i32 1
  store double %add.r, double* %c.realp, align 8
  store double %mul.ir, double* %c.imagp, align 8
  %z.realp = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %z.imagp = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  store double 0.000000e+00, double* %z.realp, align 8
  store double 0.000000e+00, double* %z.imagp, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %n, align 4
  %cmp8 = icmp slt i32 %4, 10
  br i1 %cmp8, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond7
  %z.realp11 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %z.real = load double, double* %z.realp11, align 8
  %z.imagp12 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  %z.imag = load double, double* %z.imagp12, align 8
  %z.realp13 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %z.real14 = load double, double* %z.realp13, align 8
  %z.imagp15 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  %z.imag16 = load double, double* %z.imagp15, align 8
  %mul_ac = fmul double %z.real, %z.real14
  %mul_bd = fmul double %z.imag, %z.imag16
  %mul_ad = fmul double %z.real, %z.imag16
  %mul_bc = fmul double %z.imag, %z.real14
  %mul_r = fsub double %mul_ac, %mul_bd
  %mul_i = fadd double %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno double %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %for.body10
  %isnan_cmp17 = fcmp uno double %mul_i, %mul_i
  br i1 %isnan_cmp17, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call = call { double, double } @__muldc3(double %z.real, double %z.imag, double %z.real14, double %z.imag16) #3
  %5 = extractvalue { double, double } %call, 0
  %6 = extractvalue { double, double } %call, 1
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.body10
  %real_mul_phi = phi double [ %mul_r, %for.body10 ], [ %mul_r, %complex_mul_imag_nan ], [ %5, %complex_mul_libcall ]
  %imag_mul_phi = phi double [ %mul_i, %for.body10 ], [ %mul_i, %complex_mul_imag_nan ], [ %6, %complex_mul_libcall ]
  %c.realp18 = getelementptr inbounds { double, double }, { double, double }* %c, i32 0, i32 0
  %c.real = load double, double* %c.realp18, align 8
  %c.imagp19 = getelementptr inbounds { double, double }, { double, double }* %c, i32 0, i32 1
  %c.imag = load double, double* %c.imagp19, align 8
  %add.r20 = fadd double %real_mul_phi, %c.real
  %add.i = fadd double %imag_mul_phi, %c.imag
  %z.realp21 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %z.imagp22 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  store double %add.r20, double* %z.realp21, align 8
  store double %add.i, double* %z.imagp22, align 8
  %z.realp23 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %7 = load double, double* %z.realp23, align 8
  %z.imagp24 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  %8 = load double, double* %z.imagp24, align 8
  store double %7, double* %__x.addr.i, align 8
  store double %8, double* %__y.addr.i, align 8
  %9 = load double, double* %__x.addr.i, align 8
  %10 = load double, double* %__y.addr.i, align 8
  %call.i = call double @hypot(double %9, double %10) #3
  %cmp26 = fcmp oge double %call.i, 2.000000e+00
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %complex_mul_cont
  br label %for.end

if.end:                                           ; preds = %complex_mul_cont
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %n, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond7

for.end:                                          ; preds = %if.then, %for.cond7
  %z.realp28 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %z.real29 = load double, double* %z.realp28, align 8
  %z.imagp30 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  %z.imag31 = load double, double* %z.imagp30, align 8
  %coerce.realp = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 1
  store double %z.real29, double* %coerce.realp, align 8
  store double %z.imag31, double* %coerce.imagp, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 1
  %15 = load double, double* %14, align 8
  call void @emit(double %13, double %15)
  br label %for.inc32

for.inc32:                                        ; preds = %for.end
  %16 = load i32, i32* %y, align 4
  %inc33 = add nsw i32 %16, 1
  store i32 %inc33, i32* %y, align 4
  br label %for.cond1

for.end34:                                        ; preds = %for.cond1
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %17 = load i32, i32* %x, align 4
  %inc36 = add nsw i32 %17, 1
  store i32 %inc36, i32* %x, align 4
  br label %for.cond

for.end37:                                        ; preds = %for.cond
  ret void
}

declare { double, double } @__muldc3(double, double, double, double)

; Function Attrs: nounwind
declare double @hypot(double, double) #1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @mandel()
  %accum.real = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 0), align 8
  %accum.imag = load volatile double, double* getelementptr inbounds ({ double, double }, { double, double }* @accum, i32 0, i32 1), align 8
  %conv = fptosi double %accum.real to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %conv)
  ret i32 0
}

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!1 = !{!"branch_weights", i32 1, i32 1048575}
