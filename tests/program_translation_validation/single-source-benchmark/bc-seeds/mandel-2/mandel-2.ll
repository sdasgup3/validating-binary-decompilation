; ModuleID = 'mandel-2/mandel-2.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_i = global i32 65536, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define double @sqr(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load double, double* %x.addr, align 8
  %mul = fmul double %0, %1
  ret double %mul
}

; Function Attrs: noinline nounwind uwtable
define double @cnorm2(double %z.coerce0, double %z.coerce1) #0 {
entry:
  %z = alloca { double, double }, align 8
  %0 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  store double %z.coerce0, double* %0, align 8
  %1 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  store double %z.coerce1, double* %1, align 8
  %z.realp = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %z.real = load double, double* %z.realp, align 8
  %z.imagp = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  %z.imag = load double, double* %z.imagp, align 8
  %call = call double @sqr(double %z.real)
  %z.realp1 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %z.real2 = load double, double* %z.realp1, align 8
  %z.imagp3 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  %z.imag4 = load double, double* %z.imagp3, align 8
  %call5 = call double @sqr(double %z.imag4)
  %add = fadd double %call, %call5
  ret double %add
}

; Function Attrs: noinline nounwind uwtable
define i32 @loop(double %c.coerce0, double %c.coerce1) #0 {
entry:
  %c = alloca { double, double }, align 8
  %z = alloca { double, double }, align 8
  %i = alloca i32, align 4
  %coerce = alloca { double, double }, align 8
  %0 = getelementptr inbounds { double, double }, { double, double }* %c, i32 0, i32 0
  store double %c.coerce0, double* %0, align 8
  %1 = getelementptr inbounds { double, double }, { double, double }* %c, i32 0, i32 1
  store double %c.coerce1, double* %1, align 8
  %c.realp = getelementptr inbounds { double, double }, { double, double }* %c, i32 0, i32 0
  %c.real = load double, double* %c.realp, align 8
  %c.imagp = getelementptr inbounds { double, double }, { double, double }* %c, i32 0, i32 1
  %c.imag = load double, double* %c.imagp, align 8
  %z.realp = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %z.imagp = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  store double %c.real, double* %z.realp, align 8
  store double %c.imag, double* %z.imagp, align 8
  store i32 1, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %complex_mul_cont, %entry
  %z.realp1 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %z.real = load double, double* %z.realp1, align 8
  %z.imagp2 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  %z.imag = load double, double* %z.imagp2, align 8
  %coerce.realp = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 1
  store double %z.real, double* %coerce.realp, align 8
  store double %z.imag, double* %coerce.imagp, align 8
  %2 = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 0
  %3 = load double, double* %2, align 8
  %4 = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 1
  %5 = load double, double* %4, align 8
  %call = call double @cnorm2(double %3, double %5)
  %cmp = fcmp ole double %call, 4.000000e+00
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  %7 = load i32, i32* @max_i, align 4
  %cmp3 = icmp slt i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %z.realp4 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %z.real5 = load double, double* %z.realp4, align 8
  %z.imagp6 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  %z.imag7 = load double, double* %z.imagp6, align 8
  %z.realp8 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %z.real9 = load double, double* %z.realp8, align 8
  %z.imagp10 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  %z.imag11 = load double, double* %z.imagp10, align 8
  %mul_ac = fmul double %z.real5, %z.real9
  %mul_bd = fmul double %z.imag7, %z.imag11
  %mul_ad = fmul double %z.real5, %z.imag11
  %mul_bc = fmul double %z.imag7, %z.real9
  %mul_r = fsub double %mul_ac, %mul_bd
  %mul_i = fadd double %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno double %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %while.body
  %isnan_cmp12 = fcmp uno double %mul_i, %mul_i
  br i1 %isnan_cmp12, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call13 = call { double, double } @__muldc3(double %z.real5, double %z.imag7, double %z.real9, double %z.imag11) #2
  %9 = extractvalue { double, double } %call13, 0
  %10 = extractvalue { double, double } %call13, 1
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %while.body
  %real_mul_phi = phi double [ %mul_r, %while.body ], [ %mul_r, %complex_mul_imag_nan ], [ %9, %complex_mul_libcall ]
  %imag_mul_phi = phi double [ %mul_i, %while.body ], [ %mul_i, %complex_mul_imag_nan ], [ %10, %complex_mul_libcall ]
  %c.realp14 = getelementptr inbounds { double, double }, { double, double }* %c, i32 0, i32 0
  %c.real15 = load double, double* %c.realp14, align 8
  %c.imagp16 = getelementptr inbounds { double, double }, { double, double }* %c, i32 0, i32 1
  %c.imag17 = load double, double* %c.imagp16, align 8
  %add.r = fadd double %real_mul_phi, %c.real15
  %add.i = fadd double %imag_mul_phi, %c.imag17
  %z.realp18 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 0
  %z.imagp19 = getelementptr inbounds { double, double }, { double, double }* %z, i32 0, i32 1
  store double %add.r, double* %z.realp18, align 8
  store double %add.i, double* %z.imagp19, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %i, align 4
  ret i32 %11
}

declare { double, double } @__muldc3(double, double, double, double)

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %coerce = alloca { double, double }, align 8
  store i32 0, i32* %retval, align 4
  store i32 -39, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 39
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 -39, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 39
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %j, align 4
  %conv = sitofp i32 %2 to double
  %div = fdiv double %conv, 4.000000e+01
  %sub = fsub double %div, 5.000000e-01
  %3 = load i32, i32* %i, align 4
  %conv4 = sitofp i32 %3 to double
  %div5 = fdiv double %conv4, 4.000000e+01
  %mul.rl = fmul double %div5, 0.000000e+00
  %mul.ir = fmul double %div5, 1.000000e+00
  %add.r = fadd double %sub, %mul.rl
  %coerce.realp = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 1
  store double %add.r, double* %coerce.realp, align 8
  store double %mul.ir, double* %coerce.imagp, align 8
  %4 = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 0
  %5 = load double, double* %4, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 1
  %7 = load double, double* %6, align 8
  %call = call i32 @loop(double %5, double %7)
  %8 = load i32, i32* @max_i, align 4
  %cmp6 = icmp sgt i32 %call, %8
  %cond = select i1 %cmp6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)
  %call8 = call i32 (i8*, ...) @printf(i8* %cond)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %10 = load i32, i32* %j, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, i32* %j, align 4
  br label %for.cond

for.end12:                                        ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!1 = !{!"branch_weights", i32 1, i32 1048575}
