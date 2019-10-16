; ModuleID = '/home/ubuntu/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/oourafft/oourafft.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"FFT sanity check failed! Difference is: %le\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%e %e\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ip = alloca i32*, align 8
  %ref = alloca double*, align 8
  %cmp = alloca double*, align 8
  %src = alloca double*, align 8
  %w = alloca double*, align 8
  %t_start = alloca double, align 8
  %t_end = alloca double, align 8
  %t_overhead = alloca double, align 8
  %t_total = alloca double, align 8
  %err_val = alloca double, align 8
  %k = alloca i32, align 4
  %re1 = alloca double, align 8
  %re2 = alloca double, align 8
  %im1 = alloca double, align 8
  %im2 = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store double 0.000000e+00, double* %t_total, align 8
  %call = call double @get_time()
  store double %call, double* %t_start, align 8
  %call1 = call double @get_time()
  store double %call1, double* %t_end, align 8
  %0 = load double, double* %t_end, align 8
  %1 = load double, double* %t_start, align 8
  %sub = fsub double %0, %1
  store double %sub, double* %t_overhead, align 8
  %call2 = call double @sqrt(double 1.024000e+03) #6
  %mul = fmul double %call2, 4.000000e+00
  %conv = fptoui double %mul to i64
  %call3 = call noalias i8* @memalign(i64 16, i64 %conv) #6
  %2 = bitcast i8* %call3 to i32*
  store i32* %2, i32** %ip, align 8
  %call4 = call noalias i8* @memalign(i64 16, i64 20480) #6
  %3 = bitcast i8* %call4 to double*
  store double* %3, double** %w, align 8
  %4 = load i32*, i32** %ip, align 8
  %5 = load double*, double** %w, align 8
  call void @makewt(i32 512, i32* %4, double* %5)
  %call5 = call noalias i8* @memalign(i64 16, i64 16384) #6
  %6 = bitcast i8* %call5 to double*
  store double* %6, double** %ref, align 8
  %call6 = call noalias i8* @memalign(i64 16, i64 16384) #6
  %7 = bitcast i8* %call6 to double*
  store double* %7, double** %cmp, align 8
  %call7 = call noalias i8* @memalign(i64 16, i64 16384) #6
  %8 = bitcast i8* %call7 to double*
  store double* %8, double** %src, align 8
  %9 = load double*, double** %ref, align 8
  call void @putdata(i32 0, i32 2047, double* %9)
  %10 = load double*, double** %ref, align 8
  %11 = load i32*, i32** %ip, align 8
  %12 = load double*, double** %w, align 8
  call void @cdft(i32 2048, i32 1, double* %10, i32* %11, double* %12)
  %13 = load double*, double** %ref, align 8
  %14 = load i32*, i32** %ip, align 8
  %15 = load double*, double** %w, align 8
  call void @cdft(i32 2048, i32 -1, double* %13, i32* %14, double* %15)
  %16 = load double*, double** %ref, align 8
  %call8 = call double @errorcheck(i32 0, i32 2047, double 9.765625e-04, double* %16)
  store double %call8, double* %err_val, align 8
  %17 = load double, double* %err_val, align 8
  %call9 = call double @fabs(double %17) #7
  %cmp10 = fcmp ogt double %call9, 1.000000e-10
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load double, double* %err_val, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0), double %18)
  call void @abort() #8
  unreachable

if.end:                                           ; preds = %entry
  %19 = load double*, double** %ref, align 8
  %20 = bitcast double* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 16384, i32 8, i1 false)
  %21 = load double*, double** %ref, align 8
  call void @putdata(i32 0, i32 1023, double* %21)
  %22 = load double*, double** %ref, align 8
  %23 = load i32*, i32** %ip, align 8
  %24 = load double*, double** %w, align 8
  call void @cdft(i32 2048, i32 1, double* %22, i32* %23, double* %24)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %25 = load i32, i32* %j, align 4
  %cmp13 = icmp slt i32 %25, 1024
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load double*, double** %ref, align 8
  %27 = load i32, i32* %j, align 4
  %mul15 = mul nsw i32 2, %27
  %add = add nsw i32 %mul15, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double, double* %26, i64 %idxprom
  %28 = load double, double* %arrayidx, align 8
  %sub16 = fsub double -0.000000e+00, %28
  %29 = load double*, double** %ref, align 8
  %30 = load i32, i32* %j, align 4
  %mul17 = mul nsw i32 2, %30
  %add18 = add nsw i32 %mul17, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds double, double* %29, i64 %idxprom19
  store double %sub16, double* %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load double*, double** %src, align 8
  %33 = bitcast double* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* %33, i8 0, i64 16384, i32 8, i1 false)
  %34 = load double*, double** %src, align 8
  call void @putdata(i32 0, i32 1023, double* %34)
  %call21 = call double @get_time()
  store double %call21, double* %t_start, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc60, %for.end
  %35 = load i32, i32* %i, align 4
  %cmp23 = icmp slt i32 %35, 150000
  br i1 %cmp23, label %for.body25, label %for.end62

for.body25:                                       ; preds = %for.cond22
  %36 = load double*, double** %cmp, align 8
  %37 = bitcast double* %36 to i8*
  %38 = load double*, double** %src, align 8
  %39 = bitcast double* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %39, i64 16384, i32 8, i1 false)
  %40 = load double*, double** %cmp, align 8
  %41 = load i32*, i32** %ip, align 8
  %42 = load double*, double** %w, align 8
  call void @cdft(i32 2048, i32 1, double* %40, i32* %41, double* %42)
  store i32 0, i32* %k, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc57, %for.body25
  %43 = load i32, i32* %k, align 4
  %cmp27 = icmp slt i32 %43, 1024
  br i1 %cmp27, label %for.body29, label %for.end59

for.body29:                                       ; preds = %for.cond26
  %44 = load double*, double** %cmp, align 8
  %45 = load i32, i32* %k, align 4
  %mul30 = mul nsw i32 2, %45
  %idxprom31 = sext i32 %mul30 to i64
  %arrayidx32 = getelementptr inbounds double, double* %44, i64 %idxprom31
  %46 = load double, double* %arrayidx32, align 8
  store double %46, double* %re1, align 8
  %47 = load double*, double** %ref, align 8
  %48 = load i32, i32* %k, align 4
  %mul33 = mul nsw i32 2, %48
  %idxprom34 = sext i32 %mul33 to i64
  %arrayidx35 = getelementptr inbounds double, double* %47, i64 %idxprom34
  %49 = load double, double* %arrayidx35, align 8
  store double %49, double* %re2, align 8
  %50 = load double*, double** %cmp, align 8
  %51 = load i32, i32* %k, align 4
  %mul36 = mul nsw i32 2, %51
  %add37 = add nsw i32 %mul36, 1
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds double, double* %50, i64 %idxprom38
  %52 = load double, double* %arrayidx39, align 8
  store double %52, double* %im1, align 8
  %53 = load double*, double** %ref, align 8
  %54 = load i32, i32* %k, align 4
  %mul40 = mul nsw i32 2, %54
  %add41 = add nsw i32 %mul40, 1
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds double, double* %53, i64 %idxprom42
  %55 = load double, double* %arrayidx43, align 8
  store double %55, double* %im2, align 8
  %56 = load double, double* %re1, align 8
  %57 = load double, double* %re2, align 8
  %mul44 = fmul double %56, %57
  %58 = load double, double* %im1, align 8
  %59 = load double, double* %im2, align 8
  %mul45 = fmul double %58, %59
  %sub46 = fsub double %mul44, %mul45
  %60 = load double*, double** %cmp, align 8
  %61 = load i32, i32* %k, align 4
  %mul47 = mul nsw i32 2, %61
  %idxprom48 = sext i32 %mul47 to i64
  %arrayidx49 = getelementptr inbounds double, double* %60, i64 %idxprom48
  store double %sub46, double* %arrayidx49, align 8
  %62 = load double, double* %re1, align 8
  %63 = load double, double* %im2, align 8
  %mul50 = fmul double %62, %63
  %64 = load double, double* %im1, align 8
  %65 = load double, double* %re2, align 8
  %mul51 = fmul double %64, %65
  %add52 = fadd double %mul50, %mul51
  %66 = load double*, double** %cmp, align 8
  %67 = load i32, i32* %k, align 4
  %mul53 = mul nsw i32 2, %67
  %add54 = add nsw i32 %mul53, 1
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds double, double* %66, i64 %idxprom55
  store double %add52, double* %arrayidx56, align 8
  br label %for.inc57

for.inc57:                                        ; preds = %for.body29
  %68 = load i32, i32* %k, align 4
  %inc58 = add nsw i32 %68, 1
  store i32 %inc58, i32* %k, align 4
  br label %for.cond26

for.end59:                                        ; preds = %for.cond26
  %69 = load double*, double** %cmp, align 8
  %70 = load i32*, i32** %ip, align 8
  %71 = load double*, double** %w, align 8
  call void @cdft(i32 2048, i32 -1, double* %69, i32* %70, double* %71)
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %72 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %72, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond22

for.end62:                                        ; preds = %for.cond22
  %call63 = call double @get_time()
  store double %call63, double* %t_end, align 8
  %73 = load double, double* %t_end, align 8
  %74 = load double, double* %t_start, align 8
  %sub64 = fsub double %73, %74
  %75 = load double, double* %t_overhead, align 8
  %sub65 = fsub double %sub64, %75
  %76 = load double, double* %t_total, align 8
  %add66 = fadd double %76, %sub65
  store double %add66, double* %t_total, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc96, %for.end62
  %77 = load i32, i32* %j, align 4
  %cmp68 = icmp slt i32 %77, 1024
  br i1 %cmp68, label %for.body70, label %for.end98

for.body70:                                       ; preds = %for.cond67
  %78 = load double*, double** %cmp, align 8
  %79 = load i32, i32* %j, align 4
  %mul71 = mul nsw i32 2, %79
  %idxprom72 = sext i32 %mul71 to i64
  %arrayidx73 = getelementptr inbounds double, double* %78, i64 %idxprom72
  %80 = load double, double* %arrayidx73, align 8
  %call74 = call double @fabs(double %80) #7
  %cmp75 = fcmp ogt double %call74, 1.000000e-09
  br i1 %cmp75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body70
  %81 = load double*, double** %cmp, align 8
  %82 = load i32, i32* %j, align 4
  %mul77 = mul nsw i32 2, %82
  %idxprom78 = sext i32 %mul77 to i64
  %arrayidx79 = getelementptr inbounds double, double* %81, i64 %idxprom78
  %83 = load double, double* %arrayidx79, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body70
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %83, %cond.true ], [ 0.000000e+00, %cond.false ]
  %84 = load double*, double** %cmp, align 8
  %85 = load i32, i32* %j, align 4
  %mul80 = mul nsw i32 2, %85
  %add81 = add nsw i32 %mul80, 1
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds double, double* %84, i64 %idxprom82
  %86 = load double, double* %arrayidx83, align 8
  %call84 = call double @fabs(double %86) #7
  %cmp85 = fcmp ogt double %call84, 1.000000e-09
  br i1 %cmp85, label %cond.true87, label %cond.false92

cond.true87:                                      ; preds = %cond.end
  %87 = load double*, double** %cmp, align 8
  %88 = load i32, i32* %j, align 4
  %mul88 = mul nsw i32 2, %88
  %add89 = add nsw i32 %mul88, 1
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds double, double* %87, i64 %idxprom90
  %89 = load double, double* %arrayidx91, align 8
  br label %cond.end93

cond.false92:                                     ; preds = %cond.end
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false92, %cond.true87
  %cond94 = phi double [ %89, %cond.true87 ], [ 0.000000e+00, %cond.false92 ]
  %call95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), double %cond, double %cond94)
  br label %for.inc96

for.inc96:                                        ; preds = %cond.end93
  %90 = load i32, i32* %j, align 4
  %inc97 = add nsw i32 %90, 1
  store i32 %inc97, i32* %j, align 4
  br label %for.cond67

for.end98:                                        ; preds = %for.cond67
  %91 = load double*, double** %ref, align 8
  %92 = bitcast double* %91 to i8*
  call void @free(i8* %92) #6
  %93 = load double*, double** %w, align 8
  %94 = bitcast double* %93 to i8*
  call void @free(i8* %94) #6
  %95 = load i32*, i32** %ip, align 8
  %96 = bitcast i32* %95 to i8*
  call void @free(i8* %96) #6
  %97 = load double*, double** %cmp, align 8
  %98 = bitcast double* %97 to i8*
  call void @free(i8* %98) #6
  %99 = load double*, double** %src, align 8
  %100 = bitcast double* %99 to i8*
  call void @free(i8* %100) #6
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define double @get_time() #0 {
entry:
  %tv = alloca %struct.timeval, align 8
  %call = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #6
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %conv = sitofp i64 %0 to double
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  %1 = load i64, i64* %tv_usec, align 8
  %conv1 = sitofp i64 %1 to double
  %mul = fmul double %conv1, 1.000000e-06
  %add = fadd double %conv, %mul
  ret double %add
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare noalias i8* @memalign(i64, i64) #1

; Function Attrs: noinline nounwind uwtable
define void @makewt(i32 %nw, i32* %ip, double* %w) #0 {
entry:
  %nw.addr = alloca i32, align 4
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %nwh = alloca i32, align 4
  %delta = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store i32 %nw, i32* %nw.addr, align 4
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %nw.addr, align 4
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end32

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %nw.addr, align 4
  %shr = ashr i32 %1, 1
  store i32 %shr, i32* %nwh, align 4
  %call = call double @atan(double 1.000000e+00) #6
  %2 = load i32, i32* %nwh, align 4
  %conv = sitofp i32 %2 to double
  %div = fdiv double %call, %conv
  store double %div, double* %delta, align 8
  %3 = load double*, double** %w.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %3, i64 0
  store double 1.000000e+00, double* %arrayidx, align 8
  %4 = load double*, double** %w.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %4, i64 1
  store double 0.000000e+00, double* %arrayidx1, align 8
  %5 = load double, double* %delta, align 8
  %6 = load i32, i32* %nwh, align 4
  %conv2 = sitofp i32 %6 to double
  %mul = fmul double %5, %conv2
  %call3 = call double @cos(double %mul) #6
  %7 = load double*, double** %w.addr, align 8
  %8 = load i32, i32* %nwh, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds double, double* %7, i64 %idxprom
  store double %call3, double* %arrayidx4, align 8
  %9 = load double*, double** %w.addr, align 8
  %10 = load i32, i32* %nwh, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds double, double* %9, i64 %idxprom5
  %11 = load double, double* %arrayidx6, align 8
  %12 = load double*, double** %w.addr, align 8
  %13 = load i32, i32* %nwh, align 4
  %add = add nsw i32 %13, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds double, double* %12, i64 %idxprom7
  store double %11, double* %arrayidx8, align 8
  %14 = load i32, i32* %nwh, align 4
  %cmp9 = icmp sgt i32 %14, 2
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  store i32 2, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then11
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %nwh, align 4
  %cmp12 = icmp slt i32 %15, %16
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load double, double* %delta, align 8
  %18 = load i32, i32* %j, align 4
  %conv14 = sitofp i32 %18 to double
  %mul15 = fmul double %17, %conv14
  %call16 = call double @cos(double %mul15) #6
  store double %call16, double* %x, align 8
  %19 = load double, double* %delta, align 8
  %20 = load i32, i32* %j, align 4
  %conv17 = sitofp i32 %20 to double
  %mul18 = fmul double %19, %conv17
  %call19 = call double @sin(double %mul18) #6
  store double %call19, double* %y, align 8
  %21 = load double, double* %x, align 8
  %22 = load double*, double** %w.addr, align 8
  %23 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %23 to i64
  %arrayidx21 = getelementptr inbounds double, double* %22, i64 %idxprom20
  store double %21, double* %arrayidx21, align 8
  %24 = load double, double* %y, align 8
  %25 = load double*, double** %w.addr, align 8
  %26 = load i32, i32* %j, align 4
  %add22 = add nsw i32 %26, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds double, double* %25, i64 %idxprom23
  store double %24, double* %arrayidx24, align 8
  %27 = load double, double* %y, align 8
  %28 = load double*, double** %w.addr, align 8
  %29 = load i32, i32* %nw.addr, align 4
  %30 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %29, %30
  %idxprom25 = sext i32 %sub to i64
  %arrayidx26 = getelementptr inbounds double, double* %28, i64 %idxprom25
  store double %27, double* %arrayidx26, align 8
  %31 = load double, double* %x, align 8
  %32 = load double*, double** %w.addr, align 8
  %33 = load i32, i32* %nw.addr, align 4
  %34 = load i32, i32* %j, align 4
  %sub27 = sub nsw i32 %33, %34
  %add28 = add nsw i32 %sub27, 1
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds double, double* %32, i64 %idxprom29
  store double %31, double* %arrayidx30, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %j, align 4
  %add31 = add nsw i32 %35, 2
  store i32 %add31, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* %nw.addr, align 4
  %37 = load i32*, i32** %ip.addr, align 8
  %38 = load double*, double** %w.addr, align 8
  call void @bitrv2(i32 %36, i32* %37, double* %38)
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end32

if.end32:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @putdata(i32 %nini, i32 %nend, double* %a) #0 {
entry:
  %nini.addr = alloca i32, align 4
  %nend.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %seed = alloca i32, align 4
  store i32 %nini, i32* %nini.addr, align 4
  store i32 %nend, i32* %nend.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32 0, i32* %seed, align 4
  %0 = load i32, i32* %nini.addr, align 4
  store i32 %0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %nend.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %seed, align 4
  %mul = mul nsw i32 %3, 7141
  %add = add nsw i32 %mul, 54773
  %rem = srem i32 %add, 259200
  store i32 %rem, i32* %seed, align 4
  %conv = sitofp i32 %rem to double
  %mul1 = fmul double %conv, 0x3ED02E85C0898B71
  %4 = load double*, double** %a.addr, align 8
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  store double %mul1, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @cdft(i32 %n, i32 %isgn, double* %a, i32* %ip, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %isgn.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %ip.addr = alloca i32*, align 8
  %w.addr = alloca double*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %isgn, i32* %isgn.addr, align 4
  store double* %a, double** %a.addr, align 8
  store i32* %ip, i32** %ip.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %isgn.addr, align 4
  %cmp1 = icmp sge i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %2 = load i32, i32* %n.addr, align 4
  %3 = load i32*, i32** %ip.addr, align 8
  %4 = load double*, double** %a.addr, align 8
  call void @bitrv2(i32 %2, i32* %3, double* %4)
  %5 = load i32, i32* %n.addr, align 4
  %6 = load double*, double** %a.addr, align 8
  %7 = load double*, double** %w.addr, align 8
  call void @cftfsub(i32 %5, double* %6, double* %7)
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load i32, i32* %n.addr, align 4
  %9 = load i32*, i32** %ip.addr, align 8
  %10 = load double*, double** %a.addr, align 8
  call void @bitrv2conj(i32 %8, i32* %9, double* %10)
  %11 = load i32, i32* %n.addr, align 4
  %12 = load double*, double** %a.addr, align 8
  %13 = load double*, double** %w.addr, align 8
  call void @cftbsub(i32 %11, double* %12, double* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end7

if.else3:                                         ; preds = %entry
  %14 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp eq i32 %14, 4
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.else3
  %15 = load i32, i32* %n.addr, align 4
  %16 = load double*, double** %a.addr, align 8
  %17 = load double*, double** %w.addr, align 8
  call void @cftfsub(i32 %15, double* %16, double* %17)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.else3
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define double @errorcheck(i32 %nini, i32 %nend, double %scale, double* %a) #0 {
entry:
  %nini.addr = alloca i32, align 4
  %nend.addr = alloca i32, align 4
  %scale.addr = alloca double, align 8
  %a.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %seed = alloca i32, align 4
  %err = alloca double, align 8
  %e = alloca double, align 8
  store i32 %nini, i32* %nini.addr, align 4
  store i32 %nend, i32* %nend.addr, align 4
  store double %scale, double* %scale.addr, align 8
  store double* %a, double** %a.addr, align 8
  store i32 0, i32* %seed, align 4
  store double 0.000000e+00, double* %err, align 8
  %0 = load i32, i32* %nini.addr, align 4
  store i32 %0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %nend.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %seed, align 4
  %mul = mul nsw i32 %3, 7141
  %add = add nsw i32 %mul, 54773
  %rem = srem i32 %add, 259200
  store i32 %rem, i32* %seed, align 4
  %conv = sitofp i32 %rem to double
  %mul1 = fmul double %conv, 0x3ED02E85C0898B71
  %4 = load double*, double** %a.addr, align 8
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load double, double* %scale.addr, align 8
  %mul2 = fmul double %6, %7
  %sub = fsub double %mul1, %mul2
  store double %sub, double* %e, align 8
  %8 = load double, double* %err, align 8
  %9 = load double, double* %e, align 8
  %call = call double @fabs(double %9) #7
  %cmp3 = fcmp ogt double %8, %call
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load double, double* %err, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load double, double* %e, align 8
  %call5 = call double @fabs(double %11) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %10, %cond.true ], [ %call5, %cond.false ]
  store double %cond, double* %err, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load double, double* %err, align 8
  ret double %13
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @bitrv2(i32 %n, i32* %ip, double* %a) #0 {
entry:
  %n.addr = alloca i32, align 4
  %ip.addr = alloca i32*, align 8
  %a.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %j1 = alloca i32, align 4
  %k = alloca i32, align 4
  %k1 = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %m2 = alloca i32, align 4
  %xr = alloca double, align 8
  %xi = alloca double, align 8
  %yr = alloca double, align 8
  %yi = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32* %ip, i32** %ip.addr, align 8
  store double* %a, double** %a.addr, align 8
  %0 = load i32*, i32** %ip.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %1 = load i32, i32* %n.addr, align 4
  store i32 %1, i32* %l, align 4
  store i32 1, i32* %m, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %2 = load i32, i32* %m, align 4
  %shl = shl i32 %2, 3
  %3 = load i32, i32* %l, align 4
  %cmp = icmp slt i32 %shl, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %l, align 4
  %shr = ashr i32 %4, 1
  store i32 %shr, i32* %l, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %m, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32*, i32** %ip.addr, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %9 = load i32, i32* %arrayidx2, align 4
  %10 = load i32, i32* %l, align 4
  %add = add nsw i32 %9, %10
  %11 = load i32*, i32** %ip.addr, align 8
  %12 = load i32, i32* %m, align 4
  %13 = load i32, i32* %j, align 4
  %add3 = add nsw i32 %12, %13
  %idxprom4 = sext i32 %add3 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 %idxprom4
  store i32 %add, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %m, align 4
  %shl6 = shl i32 %15, 1
  store i32 %shl6, i32* %m, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %m, align 4
  %mul = mul nsw i32 2, %16
  store i32 %mul, i32* %m2, align 4
  %17 = load i32, i32* %m, align 4
  %shl7 = shl i32 %17, 3
  %18 = load i32, i32* %l, align 4
  %cmp8 = icmp eq i32 %shl7, %18
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i32 0, i32* %k, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc139, %if.then
  %19 = load i32, i32* %k, align 4
  %20 = load i32, i32* %m, align 4
  %cmp10 = icmp slt i32 %19, %20
  br i1 %cmp10, label %for.body11, label %for.end141

for.body11:                                       ; preds = %for.cond9
  store i32 0, i32* %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc110, %for.body11
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %k, align 4
  %cmp13 = icmp slt i32 %21, %22
  br i1 %cmp13, label %for.body14, label %for.end112

for.body14:                                       ; preds = %for.cond12
  %23 = load i32, i32* %j, align 4
  %mul15 = mul nsw i32 2, %23
  %24 = load i32*, i32** %ip.addr, align 8
  %25 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %24, i64 %idxprom16
  %26 = load i32, i32* %arrayidx17, align 4
  %add18 = add nsw i32 %mul15, %26
  store i32 %add18, i32* %j1, align 4
  %27 = load i32, i32* %k, align 4
  %mul19 = mul nsw i32 2, %27
  %28 = load i32*, i32** %ip.addr, align 8
  %29 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %29 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %28, i64 %idxprom20
  %30 = load i32, i32* %arrayidx21, align 4
  %add22 = add nsw i32 %mul19, %30
  store i32 %add22, i32* %k1, align 4
  %31 = load double*, double** %a.addr, align 8
  %32 = load i32, i32* %j1, align 4
  %idxprom23 = sext i32 %32 to i64
  %arrayidx24 = getelementptr inbounds double, double* %31, i64 %idxprom23
  %33 = load double, double* %arrayidx24, align 8
  store double %33, double* %xr, align 8
  %34 = load double*, double** %a.addr, align 8
  %35 = load i32, i32* %j1, align 4
  %add25 = add nsw i32 %35, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds double, double* %34, i64 %idxprom26
  %36 = load double, double* %arrayidx27, align 8
  store double %36, double* %xi, align 8
  %37 = load double*, double** %a.addr, align 8
  %38 = load i32, i32* %k1, align 4
  %idxprom28 = sext i32 %38 to i64
  %arrayidx29 = getelementptr inbounds double, double* %37, i64 %idxprom28
  %39 = load double, double* %arrayidx29, align 8
  store double %39, double* %yr, align 8
  %40 = load double*, double** %a.addr, align 8
  %41 = load i32, i32* %k1, align 4
  %add30 = add nsw i32 %41, 1
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds double, double* %40, i64 %idxprom31
  %42 = load double, double* %arrayidx32, align 8
  store double %42, double* %yi, align 8
  %43 = load double, double* %yr, align 8
  %44 = load double*, double** %a.addr, align 8
  %45 = load i32, i32* %j1, align 4
  %idxprom33 = sext i32 %45 to i64
  %arrayidx34 = getelementptr inbounds double, double* %44, i64 %idxprom33
  store double %43, double* %arrayidx34, align 8
  %46 = load double, double* %yi, align 8
  %47 = load double*, double** %a.addr, align 8
  %48 = load i32, i32* %j1, align 4
  %add35 = add nsw i32 %48, 1
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds double, double* %47, i64 %idxprom36
  store double %46, double* %arrayidx37, align 8
  %49 = load double, double* %xr, align 8
  %50 = load double*, double** %a.addr, align 8
  %51 = load i32, i32* %k1, align 4
  %idxprom38 = sext i32 %51 to i64
  %arrayidx39 = getelementptr inbounds double, double* %50, i64 %idxprom38
  store double %49, double* %arrayidx39, align 8
  %52 = load double, double* %xi, align 8
  %53 = load double*, double** %a.addr, align 8
  %54 = load i32, i32* %k1, align 4
  %add40 = add nsw i32 %54, 1
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds double, double* %53, i64 %idxprom41
  store double %52, double* %arrayidx42, align 8
  %55 = load i32, i32* %m2, align 4
  %56 = load i32, i32* %j1, align 4
  %add43 = add nsw i32 %56, %55
  store i32 %add43, i32* %j1, align 4
  %57 = load i32, i32* %m2, align 4
  %mul44 = mul nsw i32 2, %57
  %58 = load i32, i32* %k1, align 4
  %add45 = add nsw i32 %58, %mul44
  store i32 %add45, i32* %k1, align 4
  %59 = load double*, double** %a.addr, align 8
  %60 = load i32, i32* %j1, align 4
  %idxprom46 = sext i32 %60 to i64
  %arrayidx47 = getelementptr inbounds double, double* %59, i64 %idxprom46
  %61 = load double, double* %arrayidx47, align 8
  store double %61, double* %xr, align 8
  %62 = load double*, double** %a.addr, align 8
  %63 = load i32, i32* %j1, align 4
  %add48 = add nsw i32 %63, 1
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds double, double* %62, i64 %idxprom49
  %64 = load double, double* %arrayidx50, align 8
  store double %64, double* %xi, align 8
  %65 = load double*, double** %a.addr, align 8
  %66 = load i32, i32* %k1, align 4
  %idxprom51 = sext i32 %66 to i64
  %arrayidx52 = getelementptr inbounds double, double* %65, i64 %idxprom51
  %67 = load double, double* %arrayidx52, align 8
  store double %67, double* %yr, align 8
  %68 = load double*, double** %a.addr, align 8
  %69 = load i32, i32* %k1, align 4
  %add53 = add nsw i32 %69, 1
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds double, double* %68, i64 %idxprom54
  %70 = load double, double* %arrayidx55, align 8
  store double %70, double* %yi, align 8
  %71 = load double, double* %yr, align 8
  %72 = load double*, double** %a.addr, align 8
  %73 = load i32, i32* %j1, align 4
  %idxprom56 = sext i32 %73 to i64
  %arrayidx57 = getelementptr inbounds double, double* %72, i64 %idxprom56
  store double %71, double* %arrayidx57, align 8
  %74 = load double, double* %yi, align 8
  %75 = load double*, double** %a.addr, align 8
  %76 = load i32, i32* %j1, align 4
  %add58 = add nsw i32 %76, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds double, double* %75, i64 %idxprom59
  store double %74, double* %arrayidx60, align 8
  %77 = load double, double* %xr, align 8
  %78 = load double*, double** %a.addr, align 8
  %79 = load i32, i32* %k1, align 4
  %idxprom61 = sext i32 %79 to i64
  %arrayidx62 = getelementptr inbounds double, double* %78, i64 %idxprom61
  store double %77, double* %arrayidx62, align 8
  %80 = load double, double* %xi, align 8
  %81 = load double*, double** %a.addr, align 8
  %82 = load i32, i32* %k1, align 4
  %add63 = add nsw i32 %82, 1
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds double, double* %81, i64 %idxprom64
  store double %80, double* %arrayidx65, align 8
  %83 = load i32, i32* %m2, align 4
  %84 = load i32, i32* %j1, align 4
  %add66 = add nsw i32 %84, %83
  store i32 %add66, i32* %j1, align 4
  %85 = load i32, i32* %m2, align 4
  %86 = load i32, i32* %k1, align 4
  %sub = sub nsw i32 %86, %85
  store i32 %sub, i32* %k1, align 4
  %87 = load double*, double** %a.addr, align 8
  %88 = load i32, i32* %j1, align 4
  %idxprom67 = sext i32 %88 to i64
  %arrayidx68 = getelementptr inbounds double, double* %87, i64 %idxprom67
  %89 = load double, double* %arrayidx68, align 8
  store double %89, double* %xr, align 8
  %90 = load double*, double** %a.addr, align 8
  %91 = load i32, i32* %j1, align 4
  %add69 = add nsw i32 %91, 1
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds double, double* %90, i64 %idxprom70
  %92 = load double, double* %arrayidx71, align 8
  store double %92, double* %xi, align 8
  %93 = load double*, double** %a.addr, align 8
  %94 = load i32, i32* %k1, align 4
  %idxprom72 = sext i32 %94 to i64
  %arrayidx73 = getelementptr inbounds double, double* %93, i64 %idxprom72
  %95 = load double, double* %arrayidx73, align 8
  store double %95, double* %yr, align 8
  %96 = load double*, double** %a.addr, align 8
  %97 = load i32, i32* %k1, align 4
  %add74 = add nsw i32 %97, 1
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds double, double* %96, i64 %idxprom75
  %98 = load double, double* %arrayidx76, align 8
  store double %98, double* %yi, align 8
  %99 = load double, double* %yr, align 8
  %100 = load double*, double** %a.addr, align 8
  %101 = load i32, i32* %j1, align 4
  %idxprom77 = sext i32 %101 to i64
  %arrayidx78 = getelementptr inbounds double, double* %100, i64 %idxprom77
  store double %99, double* %arrayidx78, align 8
  %102 = load double, double* %yi, align 8
  %103 = load double*, double** %a.addr, align 8
  %104 = load i32, i32* %j1, align 4
  %add79 = add nsw i32 %104, 1
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds double, double* %103, i64 %idxprom80
  store double %102, double* %arrayidx81, align 8
  %105 = load double, double* %xr, align 8
  %106 = load double*, double** %a.addr, align 8
  %107 = load i32, i32* %k1, align 4
  %idxprom82 = sext i32 %107 to i64
  %arrayidx83 = getelementptr inbounds double, double* %106, i64 %idxprom82
  store double %105, double* %arrayidx83, align 8
  %108 = load double, double* %xi, align 8
  %109 = load double*, double** %a.addr, align 8
  %110 = load i32, i32* %k1, align 4
  %add84 = add nsw i32 %110, 1
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds double, double* %109, i64 %idxprom85
  store double %108, double* %arrayidx86, align 8
  %111 = load i32, i32* %m2, align 4
  %112 = load i32, i32* %j1, align 4
  %add87 = add nsw i32 %112, %111
  store i32 %add87, i32* %j1, align 4
  %113 = load i32, i32* %m2, align 4
  %mul88 = mul nsw i32 2, %113
  %114 = load i32, i32* %k1, align 4
  %add89 = add nsw i32 %114, %mul88
  store i32 %add89, i32* %k1, align 4
  %115 = load double*, double** %a.addr, align 8
  %116 = load i32, i32* %j1, align 4
  %idxprom90 = sext i32 %116 to i64
  %arrayidx91 = getelementptr inbounds double, double* %115, i64 %idxprom90
  %117 = load double, double* %arrayidx91, align 8
  store double %117, double* %xr, align 8
  %118 = load double*, double** %a.addr, align 8
  %119 = load i32, i32* %j1, align 4
  %add92 = add nsw i32 %119, 1
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds double, double* %118, i64 %idxprom93
  %120 = load double, double* %arrayidx94, align 8
  store double %120, double* %xi, align 8
  %121 = load double*, double** %a.addr, align 8
  %122 = load i32, i32* %k1, align 4
  %idxprom95 = sext i32 %122 to i64
  %arrayidx96 = getelementptr inbounds double, double* %121, i64 %idxprom95
  %123 = load double, double* %arrayidx96, align 8
  store double %123, double* %yr, align 8
  %124 = load double*, double** %a.addr, align 8
  %125 = load i32, i32* %k1, align 4
  %add97 = add nsw i32 %125, 1
  %idxprom98 = sext i32 %add97 to i64
  %arrayidx99 = getelementptr inbounds double, double* %124, i64 %idxprom98
  %126 = load double, double* %arrayidx99, align 8
  store double %126, double* %yi, align 8
  %127 = load double, double* %yr, align 8
  %128 = load double*, double** %a.addr, align 8
  %129 = load i32, i32* %j1, align 4
  %idxprom100 = sext i32 %129 to i64
  %arrayidx101 = getelementptr inbounds double, double* %128, i64 %idxprom100
  store double %127, double* %arrayidx101, align 8
  %130 = load double, double* %yi, align 8
  %131 = load double*, double** %a.addr, align 8
  %132 = load i32, i32* %j1, align 4
  %add102 = add nsw i32 %132, 1
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds double, double* %131, i64 %idxprom103
  store double %130, double* %arrayidx104, align 8
  %133 = load double, double* %xr, align 8
  %134 = load double*, double** %a.addr, align 8
  %135 = load i32, i32* %k1, align 4
  %idxprom105 = sext i32 %135 to i64
  %arrayidx106 = getelementptr inbounds double, double* %134, i64 %idxprom105
  store double %133, double* %arrayidx106, align 8
  %136 = load double, double* %xi, align 8
  %137 = load double*, double** %a.addr, align 8
  %138 = load i32, i32* %k1, align 4
  %add107 = add nsw i32 %138, 1
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds double, double* %137, i64 %idxprom108
  store double %136, double* %arrayidx109, align 8
  br label %for.inc110

for.inc110:                                       ; preds = %for.body14
  %139 = load i32, i32* %j, align 4
  %inc111 = add nsw i32 %139, 1
  store i32 %inc111, i32* %j, align 4
  br label %for.cond12

for.end112:                                       ; preds = %for.cond12
  %140 = load i32, i32* %k, align 4
  %mul113 = mul nsw i32 2, %140
  %141 = load i32, i32* %m2, align 4
  %add114 = add nsw i32 %mul113, %141
  %142 = load i32*, i32** %ip.addr, align 8
  %143 = load i32, i32* %k, align 4
  %idxprom115 = sext i32 %143 to i64
  %arrayidx116 = getelementptr inbounds i32, i32* %142, i64 %idxprom115
  %144 = load i32, i32* %arrayidx116, align 4
  %add117 = add nsw i32 %add114, %144
  store i32 %add117, i32* %j1, align 4
  %145 = load i32, i32* %j1, align 4
  %146 = load i32, i32* %m2, align 4
  %add118 = add nsw i32 %145, %146
  store i32 %add118, i32* %k1, align 4
  %147 = load double*, double** %a.addr, align 8
  %148 = load i32, i32* %j1, align 4
  %idxprom119 = sext i32 %148 to i64
  %arrayidx120 = getelementptr inbounds double, double* %147, i64 %idxprom119
  %149 = load double, double* %arrayidx120, align 8
  store double %149, double* %xr, align 8
  %150 = load double*, double** %a.addr, align 8
  %151 = load i32, i32* %j1, align 4
  %add121 = add nsw i32 %151, 1
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds double, double* %150, i64 %idxprom122
  %152 = load double, double* %arrayidx123, align 8
  store double %152, double* %xi, align 8
  %153 = load double*, double** %a.addr, align 8
  %154 = load i32, i32* %k1, align 4
  %idxprom124 = sext i32 %154 to i64
  %arrayidx125 = getelementptr inbounds double, double* %153, i64 %idxprom124
  %155 = load double, double* %arrayidx125, align 8
  store double %155, double* %yr, align 8
  %156 = load double*, double** %a.addr, align 8
  %157 = load i32, i32* %k1, align 4
  %add126 = add nsw i32 %157, 1
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds double, double* %156, i64 %idxprom127
  %158 = load double, double* %arrayidx128, align 8
  store double %158, double* %yi, align 8
  %159 = load double, double* %yr, align 8
  %160 = load double*, double** %a.addr, align 8
  %161 = load i32, i32* %j1, align 4
  %idxprom129 = sext i32 %161 to i64
  %arrayidx130 = getelementptr inbounds double, double* %160, i64 %idxprom129
  store double %159, double* %arrayidx130, align 8
  %162 = load double, double* %yi, align 8
  %163 = load double*, double** %a.addr, align 8
  %164 = load i32, i32* %j1, align 4
  %add131 = add nsw i32 %164, 1
  %idxprom132 = sext i32 %add131 to i64
  %arrayidx133 = getelementptr inbounds double, double* %163, i64 %idxprom132
  store double %162, double* %arrayidx133, align 8
  %165 = load double, double* %xr, align 8
  %166 = load double*, double** %a.addr, align 8
  %167 = load i32, i32* %k1, align 4
  %idxprom134 = sext i32 %167 to i64
  %arrayidx135 = getelementptr inbounds double, double* %166, i64 %idxprom134
  store double %165, double* %arrayidx135, align 8
  %168 = load double, double* %xi, align 8
  %169 = load double*, double** %a.addr, align 8
  %170 = load i32, i32* %k1, align 4
  %add136 = add nsw i32 %170, 1
  %idxprom137 = sext i32 %add136 to i64
  %arrayidx138 = getelementptr inbounds double, double* %169, i64 %idxprom137
  store double %168, double* %arrayidx138, align 8
  br label %for.inc139

for.inc139:                                       ; preds = %for.end112
  %171 = load i32, i32* %k, align 4
  %inc140 = add nsw i32 %171, 1
  store i32 %inc140, i32* %k, align 4
  br label %for.cond9

for.end141:                                       ; preds = %for.cond9
  br label %if.end

if.else:                                          ; preds = %while.end
  store i32 1, i32* %k, align 4
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc201, %if.else
  %172 = load i32, i32* %k, align 4
  %173 = load i32, i32* %m, align 4
  %cmp143 = icmp slt i32 %172, %173
  br i1 %cmp143, label %for.body144, label %for.end203

for.body144:                                      ; preds = %for.cond142
  store i32 0, i32* %j, align 4
  br label %for.cond145

for.cond145:                                      ; preds = %for.inc198, %for.body144
  %174 = load i32, i32* %j, align 4
  %175 = load i32, i32* %k, align 4
  %cmp146 = icmp slt i32 %174, %175
  br i1 %cmp146, label %for.body147, label %for.end200

for.body147:                                      ; preds = %for.cond145
  %176 = load i32, i32* %j, align 4
  %mul148 = mul nsw i32 2, %176
  %177 = load i32*, i32** %ip.addr, align 8
  %178 = load i32, i32* %k, align 4
  %idxprom149 = sext i32 %178 to i64
  %arrayidx150 = getelementptr inbounds i32, i32* %177, i64 %idxprom149
  %179 = load i32, i32* %arrayidx150, align 4
  %add151 = add nsw i32 %mul148, %179
  store i32 %add151, i32* %j1, align 4
  %180 = load i32, i32* %k, align 4
  %mul152 = mul nsw i32 2, %180
  %181 = load i32*, i32** %ip.addr, align 8
  %182 = load i32, i32* %j, align 4
  %idxprom153 = sext i32 %182 to i64
  %arrayidx154 = getelementptr inbounds i32, i32* %181, i64 %idxprom153
  %183 = load i32, i32* %arrayidx154, align 4
  %add155 = add nsw i32 %mul152, %183
  store i32 %add155, i32* %k1, align 4
  %184 = load double*, double** %a.addr, align 8
  %185 = load i32, i32* %j1, align 4
  %idxprom156 = sext i32 %185 to i64
  %arrayidx157 = getelementptr inbounds double, double* %184, i64 %idxprom156
  %186 = load double, double* %arrayidx157, align 8
  store double %186, double* %xr, align 8
  %187 = load double*, double** %a.addr, align 8
  %188 = load i32, i32* %j1, align 4
  %add158 = add nsw i32 %188, 1
  %idxprom159 = sext i32 %add158 to i64
  %arrayidx160 = getelementptr inbounds double, double* %187, i64 %idxprom159
  %189 = load double, double* %arrayidx160, align 8
  store double %189, double* %xi, align 8
  %190 = load double*, double** %a.addr, align 8
  %191 = load i32, i32* %k1, align 4
  %idxprom161 = sext i32 %191 to i64
  %arrayidx162 = getelementptr inbounds double, double* %190, i64 %idxprom161
  %192 = load double, double* %arrayidx162, align 8
  store double %192, double* %yr, align 8
  %193 = load double*, double** %a.addr, align 8
  %194 = load i32, i32* %k1, align 4
  %add163 = add nsw i32 %194, 1
  %idxprom164 = sext i32 %add163 to i64
  %arrayidx165 = getelementptr inbounds double, double* %193, i64 %idxprom164
  %195 = load double, double* %arrayidx165, align 8
  store double %195, double* %yi, align 8
  %196 = load double, double* %yr, align 8
  %197 = load double*, double** %a.addr, align 8
  %198 = load i32, i32* %j1, align 4
  %idxprom166 = sext i32 %198 to i64
  %arrayidx167 = getelementptr inbounds double, double* %197, i64 %idxprom166
  store double %196, double* %arrayidx167, align 8
  %199 = load double, double* %yi, align 8
  %200 = load double*, double** %a.addr, align 8
  %201 = load i32, i32* %j1, align 4
  %add168 = add nsw i32 %201, 1
  %idxprom169 = sext i32 %add168 to i64
  %arrayidx170 = getelementptr inbounds double, double* %200, i64 %idxprom169
  store double %199, double* %arrayidx170, align 8
  %202 = load double, double* %xr, align 8
  %203 = load double*, double** %a.addr, align 8
  %204 = load i32, i32* %k1, align 4
  %idxprom171 = sext i32 %204 to i64
  %arrayidx172 = getelementptr inbounds double, double* %203, i64 %idxprom171
  store double %202, double* %arrayidx172, align 8
  %205 = load double, double* %xi, align 8
  %206 = load double*, double** %a.addr, align 8
  %207 = load i32, i32* %k1, align 4
  %add173 = add nsw i32 %207, 1
  %idxprom174 = sext i32 %add173 to i64
  %arrayidx175 = getelementptr inbounds double, double* %206, i64 %idxprom174
  store double %205, double* %arrayidx175, align 8
  %208 = load i32, i32* %m2, align 4
  %209 = load i32, i32* %j1, align 4
  %add176 = add nsw i32 %209, %208
  store i32 %add176, i32* %j1, align 4
  %210 = load i32, i32* %m2, align 4
  %211 = load i32, i32* %k1, align 4
  %add177 = add nsw i32 %211, %210
  store i32 %add177, i32* %k1, align 4
  %212 = load double*, double** %a.addr, align 8
  %213 = load i32, i32* %j1, align 4
  %idxprom178 = sext i32 %213 to i64
  %arrayidx179 = getelementptr inbounds double, double* %212, i64 %idxprom178
  %214 = load double, double* %arrayidx179, align 8
  store double %214, double* %xr, align 8
  %215 = load double*, double** %a.addr, align 8
  %216 = load i32, i32* %j1, align 4
  %add180 = add nsw i32 %216, 1
  %idxprom181 = sext i32 %add180 to i64
  %arrayidx182 = getelementptr inbounds double, double* %215, i64 %idxprom181
  %217 = load double, double* %arrayidx182, align 8
  store double %217, double* %xi, align 8
  %218 = load double*, double** %a.addr, align 8
  %219 = load i32, i32* %k1, align 4
  %idxprom183 = sext i32 %219 to i64
  %arrayidx184 = getelementptr inbounds double, double* %218, i64 %idxprom183
  %220 = load double, double* %arrayidx184, align 8
  store double %220, double* %yr, align 8
  %221 = load double*, double** %a.addr, align 8
  %222 = load i32, i32* %k1, align 4
  %add185 = add nsw i32 %222, 1
  %idxprom186 = sext i32 %add185 to i64
  %arrayidx187 = getelementptr inbounds double, double* %221, i64 %idxprom186
  %223 = load double, double* %arrayidx187, align 8
  store double %223, double* %yi, align 8
  %224 = load double, double* %yr, align 8
  %225 = load double*, double** %a.addr, align 8
  %226 = load i32, i32* %j1, align 4
  %idxprom188 = sext i32 %226 to i64
  %arrayidx189 = getelementptr inbounds double, double* %225, i64 %idxprom188
  store double %224, double* %arrayidx189, align 8
  %227 = load double, double* %yi, align 8
  %228 = load double*, double** %a.addr, align 8
  %229 = load i32, i32* %j1, align 4
  %add190 = add nsw i32 %229, 1
  %idxprom191 = sext i32 %add190 to i64
  %arrayidx192 = getelementptr inbounds double, double* %228, i64 %idxprom191
  store double %227, double* %arrayidx192, align 8
  %230 = load double, double* %xr, align 8
  %231 = load double*, double** %a.addr, align 8
  %232 = load i32, i32* %k1, align 4
  %idxprom193 = sext i32 %232 to i64
  %arrayidx194 = getelementptr inbounds double, double* %231, i64 %idxprom193
  store double %230, double* %arrayidx194, align 8
  %233 = load double, double* %xi, align 8
  %234 = load double*, double** %a.addr, align 8
  %235 = load i32, i32* %k1, align 4
  %add195 = add nsw i32 %235, 1
  %idxprom196 = sext i32 %add195 to i64
  %arrayidx197 = getelementptr inbounds double, double* %234, i64 %idxprom196
  store double %233, double* %arrayidx197, align 8
  br label %for.inc198

for.inc198:                                       ; preds = %for.body147
  %236 = load i32, i32* %j, align 4
  %inc199 = add nsw i32 %236, 1
  store i32 %inc199, i32* %j, align 4
  br label %for.cond145

for.end200:                                       ; preds = %for.cond145
  br label %for.inc201

for.inc201:                                       ; preds = %for.end200
  %237 = load i32, i32* %k, align 4
  %inc202 = add nsw i32 %237, 1
  store i32 %inc202, i32* %k, align 4
  br label %for.cond142

for.end203:                                       ; preds = %for.cond142
  br label %if.end

if.end:                                           ; preds = %for.end203, %for.end141
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cftfsub(i32 %n, double* %a, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %l = alloca i32, align 4
  %x0r = alloca double, align 8
  %x0i = alloca double, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %x2r = alloca double, align 8
  %x2i = alloca double, align 8
  %x3r = alloca double, align 8
  %x3i = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store double* %w, double** %w.addr, align 8
  store i32 2, i32* %l, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %0, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %2 = load double*, double** %a.addr, align 8
  %3 = load double*, double** %w.addr, align 8
  call void @cft1st(i32 %1, double* %2, double* %3)
  store i32 8, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load i32, i32* %l, align 4
  %shl = shl i32 %4, 2
  %5 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %shl, %5
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %n.addr, align 4
  %7 = load i32, i32* %l, align 4
  %8 = load double*, double** %a.addr, align 8
  %9 = load double*, double** %w.addr, align 8
  call void @cftmdl(i32 %6, i32 %7, double* %8, double* %9)
  %10 = load i32, i32* %l, align 4
  %shl2 = shl i32 %10, 2
  store i32 %shl2, i32* %l, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %11 = load i32, i32* %l, align 4
  %shl3 = shl i32 %11, 2
  %12 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp eq i32 %shl3, %12
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %l, align 4
  %cmp6 = icmp slt i32 %13, %14
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %l, align 4
  %add = add nsw i32 %15, %16
  store i32 %add, i32* %j1, align 4
  %17 = load i32, i32* %j1, align 4
  %18 = load i32, i32* %l, align 4
  %add7 = add nsw i32 %17, %18
  store i32 %add7, i32* %j2, align 4
  %19 = load i32, i32* %j2, align 4
  %20 = load i32, i32* %l, align 4
  %add8 = add nsw i32 %19, %20
  store i32 %add8, i32* %j3, align 4
  %21 = load double*, double** %a.addr, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds double, double* %21, i64 %idxprom
  %23 = load double, double* %arrayidx, align 8
  %24 = load double*, double** %a.addr, align 8
  %25 = load i32, i32* %j1, align 4
  %idxprom9 = sext i32 %25 to i64
  %arrayidx10 = getelementptr inbounds double, double* %24, i64 %idxprom9
  %26 = load double, double* %arrayidx10, align 8
  %add11 = fadd double %23, %26
  store double %add11, double* %x0r, align 8
  %27 = load double*, double** %a.addr, align 8
  %28 = load i32, i32* %j, align 4
  %add12 = add nsw i32 %28, 1
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds double, double* %27, i64 %idxprom13
  %29 = load double, double* %arrayidx14, align 8
  %30 = load double*, double** %a.addr, align 8
  %31 = load i32, i32* %j1, align 4
  %add15 = add nsw i32 %31, 1
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds double, double* %30, i64 %idxprom16
  %32 = load double, double* %arrayidx17, align 8
  %add18 = fadd double %29, %32
  store double %add18, double* %x0i, align 8
  %33 = load double*, double** %a.addr, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %34 to i64
  %arrayidx20 = getelementptr inbounds double, double* %33, i64 %idxprom19
  %35 = load double, double* %arrayidx20, align 8
  %36 = load double*, double** %a.addr, align 8
  %37 = load i32, i32* %j1, align 4
  %idxprom21 = sext i32 %37 to i64
  %arrayidx22 = getelementptr inbounds double, double* %36, i64 %idxprom21
  %38 = load double, double* %arrayidx22, align 8
  %sub = fsub double %35, %38
  store double %sub, double* %x1r, align 8
  %39 = load double*, double** %a.addr, align 8
  %40 = load i32, i32* %j, align 4
  %add23 = add nsw i32 %40, 1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds double, double* %39, i64 %idxprom24
  %41 = load double, double* %arrayidx25, align 8
  %42 = load double*, double** %a.addr, align 8
  %43 = load i32, i32* %j1, align 4
  %add26 = add nsw i32 %43, 1
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds double, double* %42, i64 %idxprom27
  %44 = load double, double* %arrayidx28, align 8
  %sub29 = fsub double %41, %44
  store double %sub29, double* %x1i, align 8
  %45 = load double*, double** %a.addr, align 8
  %46 = load i32, i32* %j2, align 4
  %idxprom30 = sext i32 %46 to i64
  %arrayidx31 = getelementptr inbounds double, double* %45, i64 %idxprom30
  %47 = load double, double* %arrayidx31, align 8
  %48 = load double*, double** %a.addr, align 8
  %49 = load i32, i32* %j3, align 4
  %idxprom32 = sext i32 %49 to i64
  %arrayidx33 = getelementptr inbounds double, double* %48, i64 %idxprom32
  %50 = load double, double* %arrayidx33, align 8
  %add34 = fadd double %47, %50
  store double %add34, double* %x2r, align 8
  %51 = load double*, double** %a.addr, align 8
  %52 = load i32, i32* %j2, align 4
  %add35 = add nsw i32 %52, 1
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds double, double* %51, i64 %idxprom36
  %53 = load double, double* %arrayidx37, align 8
  %54 = load double*, double** %a.addr, align 8
  %55 = load i32, i32* %j3, align 4
  %add38 = add nsw i32 %55, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds double, double* %54, i64 %idxprom39
  %56 = load double, double* %arrayidx40, align 8
  %add41 = fadd double %53, %56
  store double %add41, double* %x2i, align 8
  %57 = load double*, double** %a.addr, align 8
  %58 = load i32, i32* %j2, align 4
  %idxprom42 = sext i32 %58 to i64
  %arrayidx43 = getelementptr inbounds double, double* %57, i64 %idxprom42
  %59 = load double, double* %arrayidx43, align 8
  %60 = load double*, double** %a.addr, align 8
  %61 = load i32, i32* %j3, align 4
  %idxprom44 = sext i32 %61 to i64
  %arrayidx45 = getelementptr inbounds double, double* %60, i64 %idxprom44
  %62 = load double, double* %arrayidx45, align 8
  %sub46 = fsub double %59, %62
  store double %sub46, double* %x3r, align 8
  %63 = load double*, double** %a.addr, align 8
  %64 = load i32, i32* %j2, align 4
  %add47 = add nsw i32 %64, 1
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds double, double* %63, i64 %idxprom48
  %65 = load double, double* %arrayidx49, align 8
  %66 = load double*, double** %a.addr, align 8
  %67 = load i32, i32* %j3, align 4
  %add50 = add nsw i32 %67, 1
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds double, double* %66, i64 %idxprom51
  %68 = load double, double* %arrayidx52, align 8
  %sub53 = fsub double %65, %68
  store double %sub53, double* %x3i, align 8
  %69 = load double, double* %x0r, align 8
  %70 = load double, double* %x2r, align 8
  %add54 = fadd double %69, %70
  %71 = load double*, double** %a.addr, align 8
  %72 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %72 to i64
  %arrayidx56 = getelementptr inbounds double, double* %71, i64 %idxprom55
  store double %add54, double* %arrayidx56, align 8
  %73 = load double, double* %x0i, align 8
  %74 = load double, double* %x2i, align 8
  %add57 = fadd double %73, %74
  %75 = load double*, double** %a.addr, align 8
  %76 = load i32, i32* %j, align 4
  %add58 = add nsw i32 %76, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds double, double* %75, i64 %idxprom59
  store double %add57, double* %arrayidx60, align 8
  %77 = load double, double* %x0r, align 8
  %78 = load double, double* %x2r, align 8
  %sub61 = fsub double %77, %78
  %79 = load double*, double** %a.addr, align 8
  %80 = load i32, i32* %j2, align 4
  %idxprom62 = sext i32 %80 to i64
  %arrayidx63 = getelementptr inbounds double, double* %79, i64 %idxprom62
  store double %sub61, double* %arrayidx63, align 8
  %81 = load double, double* %x0i, align 8
  %82 = load double, double* %x2i, align 8
  %sub64 = fsub double %81, %82
  %83 = load double*, double** %a.addr, align 8
  %84 = load i32, i32* %j2, align 4
  %add65 = add nsw i32 %84, 1
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds double, double* %83, i64 %idxprom66
  store double %sub64, double* %arrayidx67, align 8
  %85 = load double, double* %x1r, align 8
  %86 = load double, double* %x3i, align 8
  %sub68 = fsub double %85, %86
  %87 = load double*, double** %a.addr, align 8
  %88 = load i32, i32* %j1, align 4
  %idxprom69 = sext i32 %88 to i64
  %arrayidx70 = getelementptr inbounds double, double* %87, i64 %idxprom69
  store double %sub68, double* %arrayidx70, align 8
  %89 = load double, double* %x1i, align 8
  %90 = load double, double* %x3r, align 8
  %add71 = fadd double %89, %90
  %91 = load double*, double** %a.addr, align 8
  %92 = load i32, i32* %j1, align 4
  %add72 = add nsw i32 %92, 1
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds double, double* %91, i64 %idxprom73
  store double %add71, double* %arrayidx74, align 8
  %93 = load double, double* %x1r, align 8
  %94 = load double, double* %x3i, align 8
  %add75 = fadd double %93, %94
  %95 = load double*, double** %a.addr, align 8
  %96 = load i32, i32* %j3, align 4
  %idxprom76 = sext i32 %96 to i64
  %arrayidx77 = getelementptr inbounds double, double* %95, i64 %idxprom76
  store double %add75, double* %arrayidx77, align 8
  %97 = load double, double* %x1i, align 8
  %98 = load double, double* %x3r, align 8
  %sub78 = fsub double %97, %98
  %99 = load double*, double** %a.addr, align 8
  %100 = load i32, i32* %j3, align 4
  %add79 = add nsw i32 %100, 1
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds double, double* %99, i64 %idxprom80
  store double %sub78, double* %arrayidx81, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %101 = load i32, i32* %j, align 4
  %add82 = add nsw i32 %101, 2
  store i32 %add82, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end119

if.else:                                          ; preds = %if.end
  store i32 0, i32* %j, align 4
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc116, %if.else
  %102 = load i32, i32* %j, align 4
  %103 = load i32, i32* %l, align 4
  %cmp84 = icmp slt i32 %102, %103
  br i1 %cmp84, label %for.body85, label %for.end118

for.body85:                                       ; preds = %for.cond83
  %104 = load i32, i32* %j, align 4
  %105 = load i32, i32* %l, align 4
  %add86 = add nsw i32 %104, %105
  store i32 %add86, i32* %j1, align 4
  %106 = load double*, double** %a.addr, align 8
  %107 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %107 to i64
  %arrayidx88 = getelementptr inbounds double, double* %106, i64 %idxprom87
  %108 = load double, double* %arrayidx88, align 8
  %109 = load double*, double** %a.addr, align 8
  %110 = load i32, i32* %j1, align 4
  %idxprom89 = sext i32 %110 to i64
  %arrayidx90 = getelementptr inbounds double, double* %109, i64 %idxprom89
  %111 = load double, double* %arrayidx90, align 8
  %sub91 = fsub double %108, %111
  store double %sub91, double* %x0r, align 8
  %112 = load double*, double** %a.addr, align 8
  %113 = load i32, i32* %j, align 4
  %add92 = add nsw i32 %113, 1
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds double, double* %112, i64 %idxprom93
  %114 = load double, double* %arrayidx94, align 8
  %115 = load double*, double** %a.addr, align 8
  %116 = load i32, i32* %j1, align 4
  %add95 = add nsw i32 %116, 1
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds double, double* %115, i64 %idxprom96
  %117 = load double, double* %arrayidx97, align 8
  %sub98 = fsub double %114, %117
  store double %sub98, double* %x0i, align 8
  %118 = load double*, double** %a.addr, align 8
  %119 = load i32, i32* %j1, align 4
  %idxprom99 = sext i32 %119 to i64
  %arrayidx100 = getelementptr inbounds double, double* %118, i64 %idxprom99
  %120 = load double, double* %arrayidx100, align 8
  %121 = load double*, double** %a.addr, align 8
  %122 = load i32, i32* %j, align 4
  %idxprom101 = sext i32 %122 to i64
  %arrayidx102 = getelementptr inbounds double, double* %121, i64 %idxprom101
  %123 = load double, double* %arrayidx102, align 8
  %add103 = fadd double %123, %120
  store double %add103, double* %arrayidx102, align 8
  %124 = load double*, double** %a.addr, align 8
  %125 = load i32, i32* %j1, align 4
  %add104 = add nsw i32 %125, 1
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds double, double* %124, i64 %idxprom105
  %126 = load double, double* %arrayidx106, align 8
  %127 = load double*, double** %a.addr, align 8
  %128 = load i32, i32* %j, align 4
  %add107 = add nsw i32 %128, 1
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds double, double* %127, i64 %idxprom108
  %129 = load double, double* %arrayidx109, align 8
  %add110 = fadd double %129, %126
  store double %add110, double* %arrayidx109, align 8
  %130 = load double, double* %x0r, align 8
  %131 = load double*, double** %a.addr, align 8
  %132 = load i32, i32* %j1, align 4
  %idxprom111 = sext i32 %132 to i64
  %arrayidx112 = getelementptr inbounds double, double* %131, i64 %idxprom111
  store double %130, double* %arrayidx112, align 8
  %133 = load double, double* %x0i, align 8
  %134 = load double*, double** %a.addr, align 8
  %135 = load i32, i32* %j1, align 4
  %add113 = add nsw i32 %135, 1
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds double, double* %134, i64 %idxprom114
  store double %133, double* %arrayidx115, align 8
  br label %for.inc116

for.inc116:                                       ; preds = %for.body85
  %136 = load i32, i32* %j, align 4
  %add117 = add nsw i32 %136, 2
  store i32 %add117, i32* %j, align 4
  br label %for.cond83

for.end118:                                       ; preds = %for.cond83
  br label %if.end119

if.end119:                                        ; preds = %for.end118, %for.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @bitrv2conj(i32 %n, i32* %ip, double* %a) #0 {
entry:
  %n.addr = alloca i32, align 4
  %ip.addr = alloca i32*, align 8
  %a.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %j1 = alloca i32, align 4
  %k = alloca i32, align 4
  %k1 = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %m2 = alloca i32, align 4
  %xr = alloca double, align 8
  %xi = alloca double, align 8
  %yr = alloca double, align 8
  %yi = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32* %ip, i32** %ip.addr, align 8
  store double* %a, double** %a.addr, align 8
  %0 = load i32*, i32** %ip.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %1 = load i32, i32* %n.addr, align 4
  store i32 %1, i32* %l, align 4
  store i32 1, i32* %m, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %2 = load i32, i32* %m, align 4
  %shl = shl i32 %2, 3
  %3 = load i32, i32* %l, align 4
  %cmp = icmp slt i32 %shl, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %l, align 4
  %shr = ashr i32 %4, 1
  store i32 %shr, i32* %l, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %m, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32*, i32** %ip.addr, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %9 = load i32, i32* %arrayidx2, align 4
  %10 = load i32, i32* %l, align 4
  %add = add nsw i32 %9, %10
  %11 = load i32*, i32** %ip.addr, align 8
  %12 = load i32, i32* %m, align 4
  %13 = load i32, i32* %j, align 4
  %add3 = add nsw i32 %12, %13
  %idxprom4 = sext i32 %add3 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 %idxprom4
  store i32 %add, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %m, align 4
  %shl6 = shl i32 %15, 1
  store i32 %shl6, i32* %m, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %m, align 4
  %mul = mul nsw i32 2, %16
  store i32 %mul, i32* %m2, align 4
  %17 = load i32, i32* %m, align 4
  %shl7 = shl i32 %17, 3
  %18 = load i32, i32* %l, align 4
  %cmp8 = icmp eq i32 %shl7, %18
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i32 0, i32* %k, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc164, %if.then
  %19 = load i32, i32* %k, align 4
  %20 = load i32, i32* %m, align 4
  %cmp10 = icmp slt i32 %19, %20
  br i1 %cmp10, label %for.body11, label %for.end166

for.body11:                                       ; preds = %for.cond9
  store i32 0, i32* %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc118, %for.body11
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %k, align 4
  %cmp13 = icmp slt i32 %21, %22
  br i1 %cmp13, label %for.body14, label %for.end120

for.body14:                                       ; preds = %for.cond12
  %23 = load i32, i32* %j, align 4
  %mul15 = mul nsw i32 2, %23
  %24 = load i32*, i32** %ip.addr, align 8
  %25 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %24, i64 %idxprom16
  %26 = load i32, i32* %arrayidx17, align 4
  %add18 = add nsw i32 %mul15, %26
  store i32 %add18, i32* %j1, align 4
  %27 = load i32, i32* %k, align 4
  %mul19 = mul nsw i32 2, %27
  %28 = load i32*, i32** %ip.addr, align 8
  %29 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %29 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %28, i64 %idxprom20
  %30 = load i32, i32* %arrayidx21, align 4
  %add22 = add nsw i32 %mul19, %30
  store i32 %add22, i32* %k1, align 4
  %31 = load double*, double** %a.addr, align 8
  %32 = load i32, i32* %j1, align 4
  %idxprom23 = sext i32 %32 to i64
  %arrayidx24 = getelementptr inbounds double, double* %31, i64 %idxprom23
  %33 = load double, double* %arrayidx24, align 8
  store double %33, double* %xr, align 8
  %34 = load double*, double** %a.addr, align 8
  %35 = load i32, i32* %j1, align 4
  %add25 = add nsw i32 %35, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds double, double* %34, i64 %idxprom26
  %36 = load double, double* %arrayidx27, align 8
  %sub = fsub double -0.000000e+00, %36
  store double %sub, double* %xi, align 8
  %37 = load double*, double** %a.addr, align 8
  %38 = load i32, i32* %k1, align 4
  %idxprom28 = sext i32 %38 to i64
  %arrayidx29 = getelementptr inbounds double, double* %37, i64 %idxprom28
  %39 = load double, double* %arrayidx29, align 8
  store double %39, double* %yr, align 8
  %40 = load double*, double** %a.addr, align 8
  %41 = load i32, i32* %k1, align 4
  %add30 = add nsw i32 %41, 1
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds double, double* %40, i64 %idxprom31
  %42 = load double, double* %arrayidx32, align 8
  %sub33 = fsub double -0.000000e+00, %42
  store double %sub33, double* %yi, align 8
  %43 = load double, double* %yr, align 8
  %44 = load double*, double** %a.addr, align 8
  %45 = load i32, i32* %j1, align 4
  %idxprom34 = sext i32 %45 to i64
  %arrayidx35 = getelementptr inbounds double, double* %44, i64 %idxprom34
  store double %43, double* %arrayidx35, align 8
  %46 = load double, double* %yi, align 8
  %47 = load double*, double** %a.addr, align 8
  %48 = load i32, i32* %j1, align 4
  %add36 = add nsw i32 %48, 1
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds double, double* %47, i64 %idxprom37
  store double %46, double* %arrayidx38, align 8
  %49 = load double, double* %xr, align 8
  %50 = load double*, double** %a.addr, align 8
  %51 = load i32, i32* %k1, align 4
  %idxprom39 = sext i32 %51 to i64
  %arrayidx40 = getelementptr inbounds double, double* %50, i64 %idxprom39
  store double %49, double* %arrayidx40, align 8
  %52 = load double, double* %xi, align 8
  %53 = load double*, double** %a.addr, align 8
  %54 = load i32, i32* %k1, align 4
  %add41 = add nsw i32 %54, 1
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds double, double* %53, i64 %idxprom42
  store double %52, double* %arrayidx43, align 8
  %55 = load i32, i32* %m2, align 4
  %56 = load i32, i32* %j1, align 4
  %add44 = add nsw i32 %56, %55
  store i32 %add44, i32* %j1, align 4
  %57 = load i32, i32* %m2, align 4
  %mul45 = mul nsw i32 2, %57
  %58 = load i32, i32* %k1, align 4
  %add46 = add nsw i32 %58, %mul45
  store i32 %add46, i32* %k1, align 4
  %59 = load double*, double** %a.addr, align 8
  %60 = load i32, i32* %j1, align 4
  %idxprom47 = sext i32 %60 to i64
  %arrayidx48 = getelementptr inbounds double, double* %59, i64 %idxprom47
  %61 = load double, double* %arrayidx48, align 8
  store double %61, double* %xr, align 8
  %62 = load double*, double** %a.addr, align 8
  %63 = load i32, i32* %j1, align 4
  %add49 = add nsw i32 %63, 1
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds double, double* %62, i64 %idxprom50
  %64 = load double, double* %arrayidx51, align 8
  %sub52 = fsub double -0.000000e+00, %64
  store double %sub52, double* %xi, align 8
  %65 = load double*, double** %a.addr, align 8
  %66 = load i32, i32* %k1, align 4
  %idxprom53 = sext i32 %66 to i64
  %arrayidx54 = getelementptr inbounds double, double* %65, i64 %idxprom53
  %67 = load double, double* %arrayidx54, align 8
  store double %67, double* %yr, align 8
  %68 = load double*, double** %a.addr, align 8
  %69 = load i32, i32* %k1, align 4
  %add55 = add nsw i32 %69, 1
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds double, double* %68, i64 %idxprom56
  %70 = load double, double* %arrayidx57, align 8
  %sub58 = fsub double -0.000000e+00, %70
  store double %sub58, double* %yi, align 8
  %71 = load double, double* %yr, align 8
  %72 = load double*, double** %a.addr, align 8
  %73 = load i32, i32* %j1, align 4
  %idxprom59 = sext i32 %73 to i64
  %arrayidx60 = getelementptr inbounds double, double* %72, i64 %idxprom59
  store double %71, double* %arrayidx60, align 8
  %74 = load double, double* %yi, align 8
  %75 = load double*, double** %a.addr, align 8
  %76 = load i32, i32* %j1, align 4
  %add61 = add nsw i32 %76, 1
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds double, double* %75, i64 %idxprom62
  store double %74, double* %arrayidx63, align 8
  %77 = load double, double* %xr, align 8
  %78 = load double*, double** %a.addr, align 8
  %79 = load i32, i32* %k1, align 4
  %idxprom64 = sext i32 %79 to i64
  %arrayidx65 = getelementptr inbounds double, double* %78, i64 %idxprom64
  store double %77, double* %arrayidx65, align 8
  %80 = load double, double* %xi, align 8
  %81 = load double*, double** %a.addr, align 8
  %82 = load i32, i32* %k1, align 4
  %add66 = add nsw i32 %82, 1
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds double, double* %81, i64 %idxprom67
  store double %80, double* %arrayidx68, align 8
  %83 = load i32, i32* %m2, align 4
  %84 = load i32, i32* %j1, align 4
  %add69 = add nsw i32 %84, %83
  store i32 %add69, i32* %j1, align 4
  %85 = load i32, i32* %m2, align 4
  %86 = load i32, i32* %k1, align 4
  %sub70 = sub nsw i32 %86, %85
  store i32 %sub70, i32* %k1, align 4
  %87 = load double*, double** %a.addr, align 8
  %88 = load i32, i32* %j1, align 4
  %idxprom71 = sext i32 %88 to i64
  %arrayidx72 = getelementptr inbounds double, double* %87, i64 %idxprom71
  %89 = load double, double* %arrayidx72, align 8
  store double %89, double* %xr, align 8
  %90 = load double*, double** %a.addr, align 8
  %91 = load i32, i32* %j1, align 4
  %add73 = add nsw i32 %91, 1
  %idxprom74 = sext i32 %add73 to i64
  %arrayidx75 = getelementptr inbounds double, double* %90, i64 %idxprom74
  %92 = load double, double* %arrayidx75, align 8
  %sub76 = fsub double -0.000000e+00, %92
  store double %sub76, double* %xi, align 8
  %93 = load double*, double** %a.addr, align 8
  %94 = load i32, i32* %k1, align 4
  %idxprom77 = sext i32 %94 to i64
  %arrayidx78 = getelementptr inbounds double, double* %93, i64 %idxprom77
  %95 = load double, double* %arrayidx78, align 8
  store double %95, double* %yr, align 8
  %96 = load double*, double** %a.addr, align 8
  %97 = load i32, i32* %k1, align 4
  %add79 = add nsw i32 %97, 1
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds double, double* %96, i64 %idxprom80
  %98 = load double, double* %arrayidx81, align 8
  %sub82 = fsub double -0.000000e+00, %98
  store double %sub82, double* %yi, align 8
  %99 = load double, double* %yr, align 8
  %100 = load double*, double** %a.addr, align 8
  %101 = load i32, i32* %j1, align 4
  %idxprom83 = sext i32 %101 to i64
  %arrayidx84 = getelementptr inbounds double, double* %100, i64 %idxprom83
  store double %99, double* %arrayidx84, align 8
  %102 = load double, double* %yi, align 8
  %103 = load double*, double** %a.addr, align 8
  %104 = load i32, i32* %j1, align 4
  %add85 = add nsw i32 %104, 1
  %idxprom86 = sext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds double, double* %103, i64 %idxprom86
  store double %102, double* %arrayidx87, align 8
  %105 = load double, double* %xr, align 8
  %106 = load double*, double** %a.addr, align 8
  %107 = load i32, i32* %k1, align 4
  %idxprom88 = sext i32 %107 to i64
  %arrayidx89 = getelementptr inbounds double, double* %106, i64 %idxprom88
  store double %105, double* %arrayidx89, align 8
  %108 = load double, double* %xi, align 8
  %109 = load double*, double** %a.addr, align 8
  %110 = load i32, i32* %k1, align 4
  %add90 = add nsw i32 %110, 1
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds double, double* %109, i64 %idxprom91
  store double %108, double* %arrayidx92, align 8
  %111 = load i32, i32* %m2, align 4
  %112 = load i32, i32* %j1, align 4
  %add93 = add nsw i32 %112, %111
  store i32 %add93, i32* %j1, align 4
  %113 = load i32, i32* %m2, align 4
  %mul94 = mul nsw i32 2, %113
  %114 = load i32, i32* %k1, align 4
  %add95 = add nsw i32 %114, %mul94
  store i32 %add95, i32* %k1, align 4
  %115 = load double*, double** %a.addr, align 8
  %116 = load i32, i32* %j1, align 4
  %idxprom96 = sext i32 %116 to i64
  %arrayidx97 = getelementptr inbounds double, double* %115, i64 %idxprom96
  %117 = load double, double* %arrayidx97, align 8
  store double %117, double* %xr, align 8
  %118 = load double*, double** %a.addr, align 8
  %119 = load i32, i32* %j1, align 4
  %add98 = add nsw i32 %119, 1
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds double, double* %118, i64 %idxprom99
  %120 = load double, double* %arrayidx100, align 8
  %sub101 = fsub double -0.000000e+00, %120
  store double %sub101, double* %xi, align 8
  %121 = load double*, double** %a.addr, align 8
  %122 = load i32, i32* %k1, align 4
  %idxprom102 = sext i32 %122 to i64
  %arrayidx103 = getelementptr inbounds double, double* %121, i64 %idxprom102
  %123 = load double, double* %arrayidx103, align 8
  store double %123, double* %yr, align 8
  %124 = load double*, double** %a.addr, align 8
  %125 = load i32, i32* %k1, align 4
  %add104 = add nsw i32 %125, 1
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds double, double* %124, i64 %idxprom105
  %126 = load double, double* %arrayidx106, align 8
  %sub107 = fsub double -0.000000e+00, %126
  store double %sub107, double* %yi, align 8
  %127 = load double, double* %yr, align 8
  %128 = load double*, double** %a.addr, align 8
  %129 = load i32, i32* %j1, align 4
  %idxprom108 = sext i32 %129 to i64
  %arrayidx109 = getelementptr inbounds double, double* %128, i64 %idxprom108
  store double %127, double* %arrayidx109, align 8
  %130 = load double, double* %yi, align 8
  %131 = load double*, double** %a.addr, align 8
  %132 = load i32, i32* %j1, align 4
  %add110 = add nsw i32 %132, 1
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds double, double* %131, i64 %idxprom111
  store double %130, double* %arrayidx112, align 8
  %133 = load double, double* %xr, align 8
  %134 = load double*, double** %a.addr, align 8
  %135 = load i32, i32* %k1, align 4
  %idxprom113 = sext i32 %135 to i64
  %arrayidx114 = getelementptr inbounds double, double* %134, i64 %idxprom113
  store double %133, double* %arrayidx114, align 8
  %136 = load double, double* %xi, align 8
  %137 = load double*, double** %a.addr, align 8
  %138 = load i32, i32* %k1, align 4
  %add115 = add nsw i32 %138, 1
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds double, double* %137, i64 %idxprom116
  store double %136, double* %arrayidx117, align 8
  br label %for.inc118

for.inc118:                                       ; preds = %for.body14
  %139 = load i32, i32* %j, align 4
  %inc119 = add nsw i32 %139, 1
  store i32 %inc119, i32* %j, align 4
  br label %for.cond12

for.end120:                                       ; preds = %for.cond12
  %140 = load i32, i32* %k, align 4
  %mul121 = mul nsw i32 2, %140
  %141 = load i32*, i32** %ip.addr, align 8
  %142 = load i32, i32* %k, align 4
  %idxprom122 = sext i32 %142 to i64
  %arrayidx123 = getelementptr inbounds i32, i32* %141, i64 %idxprom122
  %143 = load i32, i32* %arrayidx123, align 4
  %add124 = add nsw i32 %mul121, %143
  store i32 %add124, i32* %k1, align 4
  %144 = load double*, double** %a.addr, align 8
  %145 = load i32, i32* %k1, align 4
  %add125 = add nsw i32 %145, 1
  %idxprom126 = sext i32 %add125 to i64
  %arrayidx127 = getelementptr inbounds double, double* %144, i64 %idxprom126
  %146 = load double, double* %arrayidx127, align 8
  %sub128 = fsub double -0.000000e+00, %146
  %147 = load double*, double** %a.addr, align 8
  %148 = load i32, i32* %k1, align 4
  %add129 = add nsw i32 %148, 1
  %idxprom130 = sext i32 %add129 to i64
  %arrayidx131 = getelementptr inbounds double, double* %147, i64 %idxprom130
  store double %sub128, double* %arrayidx131, align 8
  %149 = load i32, i32* %k1, align 4
  %150 = load i32, i32* %m2, align 4
  %add132 = add nsw i32 %149, %150
  store i32 %add132, i32* %j1, align 4
  %151 = load i32, i32* %j1, align 4
  %152 = load i32, i32* %m2, align 4
  %add133 = add nsw i32 %151, %152
  store i32 %add133, i32* %k1, align 4
  %153 = load double*, double** %a.addr, align 8
  %154 = load i32, i32* %j1, align 4
  %idxprom134 = sext i32 %154 to i64
  %arrayidx135 = getelementptr inbounds double, double* %153, i64 %idxprom134
  %155 = load double, double* %arrayidx135, align 8
  store double %155, double* %xr, align 8
  %156 = load double*, double** %a.addr, align 8
  %157 = load i32, i32* %j1, align 4
  %add136 = add nsw i32 %157, 1
  %idxprom137 = sext i32 %add136 to i64
  %arrayidx138 = getelementptr inbounds double, double* %156, i64 %idxprom137
  %158 = load double, double* %arrayidx138, align 8
  %sub139 = fsub double -0.000000e+00, %158
  store double %sub139, double* %xi, align 8
  %159 = load double*, double** %a.addr, align 8
  %160 = load i32, i32* %k1, align 4
  %idxprom140 = sext i32 %160 to i64
  %arrayidx141 = getelementptr inbounds double, double* %159, i64 %idxprom140
  %161 = load double, double* %arrayidx141, align 8
  store double %161, double* %yr, align 8
  %162 = load double*, double** %a.addr, align 8
  %163 = load i32, i32* %k1, align 4
  %add142 = add nsw i32 %163, 1
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds double, double* %162, i64 %idxprom143
  %164 = load double, double* %arrayidx144, align 8
  %sub145 = fsub double -0.000000e+00, %164
  store double %sub145, double* %yi, align 8
  %165 = load double, double* %yr, align 8
  %166 = load double*, double** %a.addr, align 8
  %167 = load i32, i32* %j1, align 4
  %idxprom146 = sext i32 %167 to i64
  %arrayidx147 = getelementptr inbounds double, double* %166, i64 %idxprom146
  store double %165, double* %arrayidx147, align 8
  %168 = load double, double* %yi, align 8
  %169 = load double*, double** %a.addr, align 8
  %170 = load i32, i32* %j1, align 4
  %add148 = add nsw i32 %170, 1
  %idxprom149 = sext i32 %add148 to i64
  %arrayidx150 = getelementptr inbounds double, double* %169, i64 %idxprom149
  store double %168, double* %arrayidx150, align 8
  %171 = load double, double* %xr, align 8
  %172 = load double*, double** %a.addr, align 8
  %173 = load i32, i32* %k1, align 4
  %idxprom151 = sext i32 %173 to i64
  %arrayidx152 = getelementptr inbounds double, double* %172, i64 %idxprom151
  store double %171, double* %arrayidx152, align 8
  %174 = load double, double* %xi, align 8
  %175 = load double*, double** %a.addr, align 8
  %176 = load i32, i32* %k1, align 4
  %add153 = add nsw i32 %176, 1
  %idxprom154 = sext i32 %add153 to i64
  %arrayidx155 = getelementptr inbounds double, double* %175, i64 %idxprom154
  store double %174, double* %arrayidx155, align 8
  %177 = load i32, i32* %m2, align 4
  %178 = load i32, i32* %k1, align 4
  %add156 = add nsw i32 %178, %177
  store i32 %add156, i32* %k1, align 4
  %179 = load double*, double** %a.addr, align 8
  %180 = load i32, i32* %k1, align 4
  %add157 = add nsw i32 %180, 1
  %idxprom158 = sext i32 %add157 to i64
  %arrayidx159 = getelementptr inbounds double, double* %179, i64 %idxprom158
  %181 = load double, double* %arrayidx159, align 8
  %sub160 = fsub double -0.000000e+00, %181
  %182 = load double*, double** %a.addr, align 8
  %183 = load i32, i32* %k1, align 4
  %add161 = add nsw i32 %183, 1
  %idxprom162 = sext i32 %add161 to i64
  %arrayidx163 = getelementptr inbounds double, double* %182, i64 %idxprom162
  store double %sub160, double* %arrayidx163, align 8
  br label %for.inc164

for.inc164:                                       ; preds = %for.end120
  %184 = load i32, i32* %k, align 4
  %inc165 = add nsw i32 %184, 1
  store i32 %inc165, i32* %k, align 4
  br label %for.cond9

for.end166:                                       ; preds = %for.cond9
  br label %if.end

if.else:                                          ; preds = %while.end
  %185 = load double*, double** %a.addr, align 8
  %arrayidx167 = getelementptr inbounds double, double* %185, i64 1
  %186 = load double, double* %arrayidx167, align 8
  %sub168 = fsub double -0.000000e+00, %186
  %187 = load double*, double** %a.addr, align 8
  %arrayidx169 = getelementptr inbounds double, double* %187, i64 1
  store double %sub168, double* %arrayidx169, align 8
  %188 = load double*, double** %a.addr, align 8
  %189 = load i32, i32* %m2, align 4
  %add170 = add nsw i32 %189, 1
  %idxprom171 = sext i32 %add170 to i64
  %arrayidx172 = getelementptr inbounds double, double* %188, i64 %idxprom171
  %190 = load double, double* %arrayidx172, align 8
  %sub173 = fsub double -0.000000e+00, %190
  %191 = load double*, double** %a.addr, align 8
  %192 = load i32, i32* %m2, align 4
  %add174 = add nsw i32 %192, 1
  %idxprom175 = sext i32 %add174 to i64
  %arrayidx176 = getelementptr inbounds double, double* %191, i64 %idxprom175
  store double %sub173, double* %arrayidx176, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond177

for.cond177:                                      ; preds = %for.inc260, %if.else
  %193 = load i32, i32* %k, align 4
  %194 = load i32, i32* %m, align 4
  %cmp178 = icmp slt i32 %193, %194
  br i1 %cmp178, label %for.body179, label %for.end262

for.body179:                                      ; preds = %for.cond177
  store i32 0, i32* %j, align 4
  br label %for.cond180

for.cond180:                                      ; preds = %for.inc237, %for.body179
  %195 = load i32, i32* %j, align 4
  %196 = load i32, i32* %k, align 4
  %cmp181 = icmp slt i32 %195, %196
  br i1 %cmp181, label %for.body182, label %for.end239

for.body182:                                      ; preds = %for.cond180
  %197 = load i32, i32* %j, align 4
  %mul183 = mul nsw i32 2, %197
  %198 = load i32*, i32** %ip.addr, align 8
  %199 = load i32, i32* %k, align 4
  %idxprom184 = sext i32 %199 to i64
  %arrayidx185 = getelementptr inbounds i32, i32* %198, i64 %idxprom184
  %200 = load i32, i32* %arrayidx185, align 4
  %add186 = add nsw i32 %mul183, %200
  store i32 %add186, i32* %j1, align 4
  %201 = load i32, i32* %k, align 4
  %mul187 = mul nsw i32 2, %201
  %202 = load i32*, i32** %ip.addr, align 8
  %203 = load i32, i32* %j, align 4
  %idxprom188 = sext i32 %203 to i64
  %arrayidx189 = getelementptr inbounds i32, i32* %202, i64 %idxprom188
  %204 = load i32, i32* %arrayidx189, align 4
  %add190 = add nsw i32 %mul187, %204
  store i32 %add190, i32* %k1, align 4
  %205 = load double*, double** %a.addr, align 8
  %206 = load i32, i32* %j1, align 4
  %idxprom191 = sext i32 %206 to i64
  %arrayidx192 = getelementptr inbounds double, double* %205, i64 %idxprom191
  %207 = load double, double* %arrayidx192, align 8
  store double %207, double* %xr, align 8
  %208 = load double*, double** %a.addr, align 8
  %209 = load i32, i32* %j1, align 4
  %add193 = add nsw i32 %209, 1
  %idxprom194 = sext i32 %add193 to i64
  %arrayidx195 = getelementptr inbounds double, double* %208, i64 %idxprom194
  %210 = load double, double* %arrayidx195, align 8
  %sub196 = fsub double -0.000000e+00, %210
  store double %sub196, double* %xi, align 8
  %211 = load double*, double** %a.addr, align 8
  %212 = load i32, i32* %k1, align 4
  %idxprom197 = sext i32 %212 to i64
  %arrayidx198 = getelementptr inbounds double, double* %211, i64 %idxprom197
  %213 = load double, double* %arrayidx198, align 8
  store double %213, double* %yr, align 8
  %214 = load double*, double** %a.addr, align 8
  %215 = load i32, i32* %k1, align 4
  %add199 = add nsw i32 %215, 1
  %idxprom200 = sext i32 %add199 to i64
  %arrayidx201 = getelementptr inbounds double, double* %214, i64 %idxprom200
  %216 = load double, double* %arrayidx201, align 8
  %sub202 = fsub double -0.000000e+00, %216
  store double %sub202, double* %yi, align 8
  %217 = load double, double* %yr, align 8
  %218 = load double*, double** %a.addr, align 8
  %219 = load i32, i32* %j1, align 4
  %idxprom203 = sext i32 %219 to i64
  %arrayidx204 = getelementptr inbounds double, double* %218, i64 %idxprom203
  store double %217, double* %arrayidx204, align 8
  %220 = load double, double* %yi, align 8
  %221 = load double*, double** %a.addr, align 8
  %222 = load i32, i32* %j1, align 4
  %add205 = add nsw i32 %222, 1
  %idxprom206 = sext i32 %add205 to i64
  %arrayidx207 = getelementptr inbounds double, double* %221, i64 %idxprom206
  store double %220, double* %arrayidx207, align 8
  %223 = load double, double* %xr, align 8
  %224 = load double*, double** %a.addr, align 8
  %225 = load i32, i32* %k1, align 4
  %idxprom208 = sext i32 %225 to i64
  %arrayidx209 = getelementptr inbounds double, double* %224, i64 %idxprom208
  store double %223, double* %arrayidx209, align 8
  %226 = load double, double* %xi, align 8
  %227 = load double*, double** %a.addr, align 8
  %228 = load i32, i32* %k1, align 4
  %add210 = add nsw i32 %228, 1
  %idxprom211 = sext i32 %add210 to i64
  %arrayidx212 = getelementptr inbounds double, double* %227, i64 %idxprom211
  store double %226, double* %arrayidx212, align 8
  %229 = load i32, i32* %m2, align 4
  %230 = load i32, i32* %j1, align 4
  %add213 = add nsw i32 %230, %229
  store i32 %add213, i32* %j1, align 4
  %231 = load i32, i32* %m2, align 4
  %232 = load i32, i32* %k1, align 4
  %add214 = add nsw i32 %232, %231
  store i32 %add214, i32* %k1, align 4
  %233 = load double*, double** %a.addr, align 8
  %234 = load i32, i32* %j1, align 4
  %idxprom215 = sext i32 %234 to i64
  %arrayidx216 = getelementptr inbounds double, double* %233, i64 %idxprom215
  %235 = load double, double* %arrayidx216, align 8
  store double %235, double* %xr, align 8
  %236 = load double*, double** %a.addr, align 8
  %237 = load i32, i32* %j1, align 4
  %add217 = add nsw i32 %237, 1
  %idxprom218 = sext i32 %add217 to i64
  %arrayidx219 = getelementptr inbounds double, double* %236, i64 %idxprom218
  %238 = load double, double* %arrayidx219, align 8
  %sub220 = fsub double -0.000000e+00, %238
  store double %sub220, double* %xi, align 8
  %239 = load double*, double** %a.addr, align 8
  %240 = load i32, i32* %k1, align 4
  %idxprom221 = sext i32 %240 to i64
  %arrayidx222 = getelementptr inbounds double, double* %239, i64 %idxprom221
  %241 = load double, double* %arrayidx222, align 8
  store double %241, double* %yr, align 8
  %242 = load double*, double** %a.addr, align 8
  %243 = load i32, i32* %k1, align 4
  %add223 = add nsw i32 %243, 1
  %idxprom224 = sext i32 %add223 to i64
  %arrayidx225 = getelementptr inbounds double, double* %242, i64 %idxprom224
  %244 = load double, double* %arrayidx225, align 8
  %sub226 = fsub double -0.000000e+00, %244
  store double %sub226, double* %yi, align 8
  %245 = load double, double* %yr, align 8
  %246 = load double*, double** %a.addr, align 8
  %247 = load i32, i32* %j1, align 4
  %idxprom227 = sext i32 %247 to i64
  %arrayidx228 = getelementptr inbounds double, double* %246, i64 %idxprom227
  store double %245, double* %arrayidx228, align 8
  %248 = load double, double* %yi, align 8
  %249 = load double*, double** %a.addr, align 8
  %250 = load i32, i32* %j1, align 4
  %add229 = add nsw i32 %250, 1
  %idxprom230 = sext i32 %add229 to i64
  %arrayidx231 = getelementptr inbounds double, double* %249, i64 %idxprom230
  store double %248, double* %arrayidx231, align 8
  %251 = load double, double* %xr, align 8
  %252 = load double*, double** %a.addr, align 8
  %253 = load i32, i32* %k1, align 4
  %idxprom232 = sext i32 %253 to i64
  %arrayidx233 = getelementptr inbounds double, double* %252, i64 %idxprom232
  store double %251, double* %arrayidx233, align 8
  %254 = load double, double* %xi, align 8
  %255 = load double*, double** %a.addr, align 8
  %256 = load i32, i32* %k1, align 4
  %add234 = add nsw i32 %256, 1
  %idxprom235 = sext i32 %add234 to i64
  %arrayidx236 = getelementptr inbounds double, double* %255, i64 %idxprom235
  store double %254, double* %arrayidx236, align 8
  br label %for.inc237

for.inc237:                                       ; preds = %for.body182
  %257 = load i32, i32* %j, align 4
  %inc238 = add nsw i32 %257, 1
  store i32 %inc238, i32* %j, align 4
  br label %for.cond180

for.end239:                                       ; preds = %for.cond180
  %258 = load i32, i32* %k, align 4
  %mul240 = mul nsw i32 2, %258
  %259 = load i32*, i32** %ip.addr, align 8
  %260 = load i32, i32* %k, align 4
  %idxprom241 = sext i32 %260 to i64
  %arrayidx242 = getelementptr inbounds i32, i32* %259, i64 %idxprom241
  %261 = load i32, i32* %arrayidx242, align 4
  %add243 = add nsw i32 %mul240, %261
  store i32 %add243, i32* %k1, align 4
  %262 = load double*, double** %a.addr, align 8
  %263 = load i32, i32* %k1, align 4
  %add244 = add nsw i32 %263, 1
  %idxprom245 = sext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds double, double* %262, i64 %idxprom245
  %264 = load double, double* %arrayidx246, align 8
  %sub247 = fsub double -0.000000e+00, %264
  %265 = load double*, double** %a.addr, align 8
  %266 = load i32, i32* %k1, align 4
  %add248 = add nsw i32 %266, 1
  %idxprom249 = sext i32 %add248 to i64
  %arrayidx250 = getelementptr inbounds double, double* %265, i64 %idxprom249
  store double %sub247, double* %arrayidx250, align 8
  %267 = load double*, double** %a.addr, align 8
  %268 = load i32, i32* %k1, align 4
  %269 = load i32, i32* %m2, align 4
  %add251 = add nsw i32 %268, %269
  %add252 = add nsw i32 %add251, 1
  %idxprom253 = sext i32 %add252 to i64
  %arrayidx254 = getelementptr inbounds double, double* %267, i64 %idxprom253
  %270 = load double, double* %arrayidx254, align 8
  %sub255 = fsub double -0.000000e+00, %270
  %271 = load double*, double** %a.addr, align 8
  %272 = load i32, i32* %k1, align 4
  %273 = load i32, i32* %m2, align 4
  %add256 = add nsw i32 %272, %273
  %add257 = add nsw i32 %add256, 1
  %idxprom258 = sext i32 %add257 to i64
  %arrayidx259 = getelementptr inbounds double, double* %271, i64 %idxprom258
  store double %sub255, double* %arrayidx259, align 8
  br label %for.inc260

for.inc260:                                       ; preds = %for.end239
  %274 = load i32, i32* %k, align 4
  %inc261 = add nsw i32 %274, 1
  store i32 %inc261, i32* %k, align 4
  br label %for.cond177

for.end262:                                       ; preds = %for.cond177
  br label %if.end

if.end:                                           ; preds = %for.end262, %for.end166
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cftbsub(i32 %n, double* %a, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %l = alloca i32, align 4
  %x0r = alloca double, align 8
  %x0i = alloca double, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %x2r = alloca double, align 8
  %x2i = alloca double, align 8
  %x3r = alloca double, align 8
  %x3i = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store double* %w, double** %w.addr, align 8
  store i32 2, i32* %l, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %0, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %2 = load double*, double** %a.addr, align 8
  %3 = load double*, double** %w.addr, align 8
  call void @cft1st(i32 %1, double* %2, double* %3)
  store i32 8, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load i32, i32* %l, align 4
  %shl = shl i32 %4, 2
  %5 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %shl, %5
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %n.addr, align 4
  %7 = load i32, i32* %l, align 4
  %8 = load double*, double** %a.addr, align 8
  %9 = load double*, double** %w.addr, align 8
  call void @cftmdl(i32 %6, i32 %7, double* %8, double* %9)
  %10 = load i32, i32* %l, align 4
  %shl2 = shl i32 %10, 2
  store i32 %shl2, i32* %l, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %11 = load i32, i32* %l, align 4
  %shl3 = shl i32 %11, 2
  %12 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp eq i32 %shl3, %12
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %l, align 4
  %cmp6 = icmp slt i32 %13, %14
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %l, align 4
  %add = add nsw i32 %15, %16
  store i32 %add, i32* %j1, align 4
  %17 = load i32, i32* %j1, align 4
  %18 = load i32, i32* %l, align 4
  %add7 = add nsw i32 %17, %18
  store i32 %add7, i32* %j2, align 4
  %19 = load i32, i32* %j2, align 4
  %20 = load i32, i32* %l, align 4
  %add8 = add nsw i32 %19, %20
  store i32 %add8, i32* %j3, align 4
  %21 = load double*, double** %a.addr, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds double, double* %21, i64 %idxprom
  %23 = load double, double* %arrayidx, align 8
  %24 = load double*, double** %a.addr, align 8
  %25 = load i32, i32* %j1, align 4
  %idxprom9 = sext i32 %25 to i64
  %arrayidx10 = getelementptr inbounds double, double* %24, i64 %idxprom9
  %26 = load double, double* %arrayidx10, align 8
  %add11 = fadd double %23, %26
  store double %add11, double* %x0r, align 8
  %27 = load double*, double** %a.addr, align 8
  %28 = load i32, i32* %j, align 4
  %add12 = add nsw i32 %28, 1
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds double, double* %27, i64 %idxprom13
  %29 = load double, double* %arrayidx14, align 8
  %sub = fsub double -0.000000e+00, %29
  %30 = load double*, double** %a.addr, align 8
  %31 = load i32, i32* %j1, align 4
  %add15 = add nsw i32 %31, 1
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds double, double* %30, i64 %idxprom16
  %32 = load double, double* %arrayidx17, align 8
  %sub18 = fsub double %sub, %32
  store double %sub18, double* %x0i, align 8
  %33 = load double*, double** %a.addr, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %34 to i64
  %arrayidx20 = getelementptr inbounds double, double* %33, i64 %idxprom19
  %35 = load double, double* %arrayidx20, align 8
  %36 = load double*, double** %a.addr, align 8
  %37 = load i32, i32* %j1, align 4
  %idxprom21 = sext i32 %37 to i64
  %arrayidx22 = getelementptr inbounds double, double* %36, i64 %idxprom21
  %38 = load double, double* %arrayidx22, align 8
  %sub23 = fsub double %35, %38
  store double %sub23, double* %x1r, align 8
  %39 = load double*, double** %a.addr, align 8
  %40 = load i32, i32* %j, align 4
  %add24 = add nsw i32 %40, 1
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds double, double* %39, i64 %idxprom25
  %41 = load double, double* %arrayidx26, align 8
  %sub27 = fsub double -0.000000e+00, %41
  %42 = load double*, double** %a.addr, align 8
  %43 = load i32, i32* %j1, align 4
  %add28 = add nsw i32 %43, 1
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds double, double* %42, i64 %idxprom29
  %44 = load double, double* %arrayidx30, align 8
  %add31 = fadd double %sub27, %44
  store double %add31, double* %x1i, align 8
  %45 = load double*, double** %a.addr, align 8
  %46 = load i32, i32* %j2, align 4
  %idxprom32 = sext i32 %46 to i64
  %arrayidx33 = getelementptr inbounds double, double* %45, i64 %idxprom32
  %47 = load double, double* %arrayidx33, align 8
  %48 = load double*, double** %a.addr, align 8
  %49 = load i32, i32* %j3, align 4
  %idxprom34 = sext i32 %49 to i64
  %arrayidx35 = getelementptr inbounds double, double* %48, i64 %idxprom34
  %50 = load double, double* %arrayidx35, align 8
  %add36 = fadd double %47, %50
  store double %add36, double* %x2r, align 8
  %51 = load double*, double** %a.addr, align 8
  %52 = load i32, i32* %j2, align 4
  %add37 = add nsw i32 %52, 1
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds double, double* %51, i64 %idxprom38
  %53 = load double, double* %arrayidx39, align 8
  %54 = load double*, double** %a.addr, align 8
  %55 = load i32, i32* %j3, align 4
  %add40 = add nsw i32 %55, 1
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds double, double* %54, i64 %idxprom41
  %56 = load double, double* %arrayidx42, align 8
  %add43 = fadd double %53, %56
  store double %add43, double* %x2i, align 8
  %57 = load double*, double** %a.addr, align 8
  %58 = load i32, i32* %j2, align 4
  %idxprom44 = sext i32 %58 to i64
  %arrayidx45 = getelementptr inbounds double, double* %57, i64 %idxprom44
  %59 = load double, double* %arrayidx45, align 8
  %60 = load double*, double** %a.addr, align 8
  %61 = load i32, i32* %j3, align 4
  %idxprom46 = sext i32 %61 to i64
  %arrayidx47 = getelementptr inbounds double, double* %60, i64 %idxprom46
  %62 = load double, double* %arrayidx47, align 8
  %sub48 = fsub double %59, %62
  store double %sub48, double* %x3r, align 8
  %63 = load double*, double** %a.addr, align 8
  %64 = load i32, i32* %j2, align 4
  %add49 = add nsw i32 %64, 1
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds double, double* %63, i64 %idxprom50
  %65 = load double, double* %arrayidx51, align 8
  %66 = load double*, double** %a.addr, align 8
  %67 = load i32, i32* %j3, align 4
  %add52 = add nsw i32 %67, 1
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds double, double* %66, i64 %idxprom53
  %68 = load double, double* %arrayidx54, align 8
  %sub55 = fsub double %65, %68
  store double %sub55, double* %x3i, align 8
  %69 = load double, double* %x0r, align 8
  %70 = load double, double* %x2r, align 8
  %add56 = fadd double %69, %70
  %71 = load double*, double** %a.addr, align 8
  %72 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %72 to i64
  %arrayidx58 = getelementptr inbounds double, double* %71, i64 %idxprom57
  store double %add56, double* %arrayidx58, align 8
  %73 = load double, double* %x0i, align 8
  %74 = load double, double* %x2i, align 8
  %sub59 = fsub double %73, %74
  %75 = load double*, double** %a.addr, align 8
  %76 = load i32, i32* %j, align 4
  %add60 = add nsw i32 %76, 1
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds double, double* %75, i64 %idxprom61
  store double %sub59, double* %arrayidx62, align 8
  %77 = load double, double* %x0r, align 8
  %78 = load double, double* %x2r, align 8
  %sub63 = fsub double %77, %78
  %79 = load double*, double** %a.addr, align 8
  %80 = load i32, i32* %j2, align 4
  %idxprom64 = sext i32 %80 to i64
  %arrayidx65 = getelementptr inbounds double, double* %79, i64 %idxprom64
  store double %sub63, double* %arrayidx65, align 8
  %81 = load double, double* %x0i, align 8
  %82 = load double, double* %x2i, align 8
  %add66 = fadd double %81, %82
  %83 = load double*, double** %a.addr, align 8
  %84 = load i32, i32* %j2, align 4
  %add67 = add nsw i32 %84, 1
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds double, double* %83, i64 %idxprom68
  store double %add66, double* %arrayidx69, align 8
  %85 = load double, double* %x1r, align 8
  %86 = load double, double* %x3i, align 8
  %sub70 = fsub double %85, %86
  %87 = load double*, double** %a.addr, align 8
  %88 = load i32, i32* %j1, align 4
  %idxprom71 = sext i32 %88 to i64
  %arrayidx72 = getelementptr inbounds double, double* %87, i64 %idxprom71
  store double %sub70, double* %arrayidx72, align 8
  %89 = load double, double* %x1i, align 8
  %90 = load double, double* %x3r, align 8
  %sub73 = fsub double %89, %90
  %91 = load double*, double** %a.addr, align 8
  %92 = load i32, i32* %j1, align 4
  %add74 = add nsw i32 %92, 1
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds double, double* %91, i64 %idxprom75
  store double %sub73, double* %arrayidx76, align 8
  %93 = load double, double* %x1r, align 8
  %94 = load double, double* %x3i, align 8
  %add77 = fadd double %93, %94
  %95 = load double*, double** %a.addr, align 8
  %96 = load i32, i32* %j3, align 4
  %idxprom78 = sext i32 %96 to i64
  %arrayidx79 = getelementptr inbounds double, double* %95, i64 %idxprom78
  store double %add77, double* %arrayidx79, align 8
  %97 = load double, double* %x1i, align 8
  %98 = load double, double* %x3r, align 8
  %add80 = fadd double %97, %98
  %99 = load double*, double** %a.addr, align 8
  %100 = load i32, i32* %j3, align 4
  %add81 = add nsw i32 %100, 1
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds double, double* %99, i64 %idxprom82
  store double %add80, double* %arrayidx83, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %101 = load i32, i32* %j, align 4
  %add84 = add nsw i32 %101, 2
  store i32 %add84, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end126

if.else:                                          ; preds = %if.end
  store i32 0, i32* %j, align 4
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc123, %if.else
  %102 = load i32, i32* %j, align 4
  %103 = load i32, i32* %l, align 4
  %cmp86 = icmp slt i32 %102, %103
  br i1 %cmp86, label %for.body87, label %for.end125

for.body87:                                       ; preds = %for.cond85
  %104 = load i32, i32* %j, align 4
  %105 = load i32, i32* %l, align 4
  %add88 = add nsw i32 %104, %105
  store i32 %add88, i32* %j1, align 4
  %106 = load double*, double** %a.addr, align 8
  %107 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %107 to i64
  %arrayidx90 = getelementptr inbounds double, double* %106, i64 %idxprom89
  %108 = load double, double* %arrayidx90, align 8
  %109 = load double*, double** %a.addr, align 8
  %110 = load i32, i32* %j1, align 4
  %idxprom91 = sext i32 %110 to i64
  %arrayidx92 = getelementptr inbounds double, double* %109, i64 %idxprom91
  %111 = load double, double* %arrayidx92, align 8
  %sub93 = fsub double %108, %111
  store double %sub93, double* %x0r, align 8
  %112 = load double*, double** %a.addr, align 8
  %113 = load i32, i32* %j, align 4
  %add94 = add nsw i32 %113, 1
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds double, double* %112, i64 %idxprom95
  %114 = load double, double* %arrayidx96, align 8
  %sub97 = fsub double -0.000000e+00, %114
  %115 = load double*, double** %a.addr, align 8
  %116 = load i32, i32* %j1, align 4
  %add98 = add nsw i32 %116, 1
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds double, double* %115, i64 %idxprom99
  %117 = load double, double* %arrayidx100, align 8
  %add101 = fadd double %sub97, %117
  store double %add101, double* %x0i, align 8
  %118 = load double*, double** %a.addr, align 8
  %119 = load i32, i32* %j1, align 4
  %idxprom102 = sext i32 %119 to i64
  %arrayidx103 = getelementptr inbounds double, double* %118, i64 %idxprom102
  %120 = load double, double* %arrayidx103, align 8
  %121 = load double*, double** %a.addr, align 8
  %122 = load i32, i32* %j, align 4
  %idxprom104 = sext i32 %122 to i64
  %arrayidx105 = getelementptr inbounds double, double* %121, i64 %idxprom104
  %123 = load double, double* %arrayidx105, align 8
  %add106 = fadd double %123, %120
  store double %add106, double* %arrayidx105, align 8
  %124 = load double*, double** %a.addr, align 8
  %125 = load i32, i32* %j, align 4
  %add107 = add nsw i32 %125, 1
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds double, double* %124, i64 %idxprom108
  %126 = load double, double* %arrayidx109, align 8
  %sub110 = fsub double -0.000000e+00, %126
  %127 = load double*, double** %a.addr, align 8
  %128 = load i32, i32* %j1, align 4
  %add111 = add nsw i32 %128, 1
  %idxprom112 = sext i32 %add111 to i64
  %arrayidx113 = getelementptr inbounds double, double* %127, i64 %idxprom112
  %129 = load double, double* %arrayidx113, align 8
  %sub114 = fsub double %sub110, %129
  %130 = load double*, double** %a.addr, align 8
  %131 = load i32, i32* %j, align 4
  %add115 = add nsw i32 %131, 1
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds double, double* %130, i64 %idxprom116
  store double %sub114, double* %arrayidx117, align 8
  %132 = load double, double* %x0r, align 8
  %133 = load double*, double** %a.addr, align 8
  %134 = load i32, i32* %j1, align 4
  %idxprom118 = sext i32 %134 to i64
  %arrayidx119 = getelementptr inbounds double, double* %133, i64 %idxprom118
  store double %132, double* %arrayidx119, align 8
  %135 = load double, double* %x0i, align 8
  %136 = load double*, double** %a.addr, align 8
  %137 = load i32, i32* %j1, align 4
  %add120 = add nsw i32 %137, 1
  %idxprom121 = sext i32 %add120 to i64
  %arrayidx122 = getelementptr inbounds double, double* %136, i64 %idxprom121
  store double %135, double* %arrayidx122, align 8
  br label %for.inc123

for.inc123:                                       ; preds = %for.body87
  %138 = load i32, i32* %j, align 4
  %add124 = add nsw i32 %138, 2
  store i32 %add124, i32* %j, align 4
  br label %for.cond85

for.end125:                                       ; preds = %for.cond85
  br label %if.end126

if.end126:                                        ; preds = %for.end125, %for.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cft1st(i32 %n, double* %a, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %wk1r = alloca double, align 8
  %wk1i = alloca double, align 8
  %wk2r = alloca double, align 8
  %wk2i = alloca double, align 8
  %wk3r = alloca double, align 8
  %wk3i = alloca double, align 8
  %x0r = alloca double, align 8
  %x0i = alloca double, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %x2r = alloca double, align 8
  %x2i = alloca double, align 8
  %x3r = alloca double, align 8
  %x3i = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %a, double** %a.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load double*, double** %a.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %2 = load double*, double** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 2
  %3 = load double, double* %arrayidx1, align 8
  %add = fadd double %1, %3
  store double %add, double* %x0r, align 8
  %4 = load double*, double** %a.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 1
  %5 = load double, double* %arrayidx2, align 8
  %6 = load double*, double** %a.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 3
  %7 = load double, double* %arrayidx3, align 8
  %add4 = fadd double %5, %7
  store double %add4, double* %x0i, align 8
  %8 = load double*, double** %a.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 0
  %9 = load double, double* %arrayidx5, align 8
  %10 = load double*, double** %a.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %10, i64 2
  %11 = load double, double* %arrayidx6, align 8
  %sub = fsub double %9, %11
  store double %sub, double* %x1r, align 8
  %12 = load double*, double** %a.addr, align 8
  %arrayidx7 = getelementptr inbounds double, double* %12, i64 1
  %13 = load double, double* %arrayidx7, align 8
  %14 = load double*, double** %a.addr, align 8
  %arrayidx8 = getelementptr inbounds double, double* %14, i64 3
  %15 = load double, double* %arrayidx8, align 8
  %sub9 = fsub double %13, %15
  store double %sub9, double* %x1i, align 8
  %16 = load double*, double** %a.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %16, i64 4
  %17 = load double, double* %arrayidx10, align 8
  %18 = load double*, double** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds double, double* %18, i64 6
  %19 = load double, double* %arrayidx11, align 8
  %add12 = fadd double %17, %19
  store double %add12, double* %x2r, align 8
  %20 = load double*, double** %a.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %20, i64 5
  %21 = load double, double* %arrayidx13, align 8
  %22 = load double*, double** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %22, i64 7
  %23 = load double, double* %arrayidx14, align 8
  %add15 = fadd double %21, %23
  store double %add15, double* %x2i, align 8
  %24 = load double*, double** %a.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %24, i64 4
  %25 = load double, double* %arrayidx16, align 8
  %26 = load double*, double** %a.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %26, i64 6
  %27 = load double, double* %arrayidx17, align 8
  %sub18 = fsub double %25, %27
  store double %sub18, double* %x3r, align 8
  %28 = load double*, double** %a.addr, align 8
  %arrayidx19 = getelementptr inbounds double, double* %28, i64 5
  %29 = load double, double* %arrayidx19, align 8
  %30 = load double*, double** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %30, i64 7
  %31 = load double, double* %arrayidx20, align 8
  %sub21 = fsub double %29, %31
  store double %sub21, double* %x3i, align 8
  %32 = load double, double* %x0r, align 8
  %33 = load double, double* %x2r, align 8
  %add22 = fadd double %32, %33
  %34 = load double*, double** %a.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %34, i64 0
  store double %add22, double* %arrayidx23, align 8
  %35 = load double, double* %x0i, align 8
  %36 = load double, double* %x2i, align 8
  %add24 = fadd double %35, %36
  %37 = load double*, double** %a.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %37, i64 1
  store double %add24, double* %arrayidx25, align 8
  %38 = load double, double* %x0r, align 8
  %39 = load double, double* %x2r, align 8
  %sub26 = fsub double %38, %39
  %40 = load double*, double** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds double, double* %40, i64 4
  store double %sub26, double* %arrayidx27, align 8
  %41 = load double, double* %x0i, align 8
  %42 = load double, double* %x2i, align 8
  %sub28 = fsub double %41, %42
  %43 = load double*, double** %a.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %43, i64 5
  store double %sub28, double* %arrayidx29, align 8
  %44 = load double, double* %x1r, align 8
  %45 = load double, double* %x3i, align 8
  %sub30 = fsub double %44, %45
  %46 = load double*, double** %a.addr, align 8
  %arrayidx31 = getelementptr inbounds double, double* %46, i64 2
  store double %sub30, double* %arrayidx31, align 8
  %47 = load double, double* %x1i, align 8
  %48 = load double, double* %x3r, align 8
  %add32 = fadd double %47, %48
  %49 = load double*, double** %a.addr, align 8
  %arrayidx33 = getelementptr inbounds double, double* %49, i64 3
  store double %add32, double* %arrayidx33, align 8
  %50 = load double, double* %x1r, align 8
  %51 = load double, double* %x3i, align 8
  %add34 = fadd double %50, %51
  %52 = load double*, double** %a.addr, align 8
  %arrayidx35 = getelementptr inbounds double, double* %52, i64 6
  store double %add34, double* %arrayidx35, align 8
  %53 = load double, double* %x1i, align 8
  %54 = load double, double* %x3r, align 8
  %sub36 = fsub double %53, %54
  %55 = load double*, double** %a.addr, align 8
  %arrayidx37 = getelementptr inbounds double, double* %55, i64 7
  store double %sub36, double* %arrayidx37, align 8
  %56 = load double*, double** %w.addr, align 8
  %arrayidx38 = getelementptr inbounds double, double* %56, i64 2
  %57 = load double, double* %arrayidx38, align 8
  store double %57, double* %wk1r, align 8
  %58 = load double*, double** %a.addr, align 8
  %arrayidx39 = getelementptr inbounds double, double* %58, i64 8
  %59 = load double, double* %arrayidx39, align 8
  %60 = load double*, double** %a.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %60, i64 10
  %61 = load double, double* %arrayidx40, align 8
  %add41 = fadd double %59, %61
  store double %add41, double* %x0r, align 8
  %62 = load double*, double** %a.addr, align 8
  %arrayidx42 = getelementptr inbounds double, double* %62, i64 9
  %63 = load double, double* %arrayidx42, align 8
  %64 = load double*, double** %a.addr, align 8
  %arrayidx43 = getelementptr inbounds double, double* %64, i64 11
  %65 = load double, double* %arrayidx43, align 8
  %add44 = fadd double %63, %65
  store double %add44, double* %x0i, align 8
  %66 = load double*, double** %a.addr, align 8
  %arrayidx45 = getelementptr inbounds double, double* %66, i64 8
  %67 = load double, double* %arrayidx45, align 8
  %68 = load double*, double** %a.addr, align 8
  %arrayidx46 = getelementptr inbounds double, double* %68, i64 10
  %69 = load double, double* %arrayidx46, align 8
  %sub47 = fsub double %67, %69
  store double %sub47, double* %x1r, align 8
  %70 = load double*, double** %a.addr, align 8
  %arrayidx48 = getelementptr inbounds double, double* %70, i64 9
  %71 = load double, double* %arrayidx48, align 8
  %72 = load double*, double** %a.addr, align 8
  %arrayidx49 = getelementptr inbounds double, double* %72, i64 11
  %73 = load double, double* %arrayidx49, align 8
  %sub50 = fsub double %71, %73
  store double %sub50, double* %x1i, align 8
  %74 = load double*, double** %a.addr, align 8
  %arrayidx51 = getelementptr inbounds double, double* %74, i64 12
  %75 = load double, double* %arrayidx51, align 8
  %76 = load double*, double** %a.addr, align 8
  %arrayidx52 = getelementptr inbounds double, double* %76, i64 14
  %77 = load double, double* %arrayidx52, align 8
  %add53 = fadd double %75, %77
  store double %add53, double* %x2r, align 8
  %78 = load double*, double** %a.addr, align 8
  %arrayidx54 = getelementptr inbounds double, double* %78, i64 13
  %79 = load double, double* %arrayidx54, align 8
  %80 = load double*, double** %a.addr, align 8
  %arrayidx55 = getelementptr inbounds double, double* %80, i64 15
  %81 = load double, double* %arrayidx55, align 8
  %add56 = fadd double %79, %81
  store double %add56, double* %x2i, align 8
  %82 = load double*, double** %a.addr, align 8
  %arrayidx57 = getelementptr inbounds double, double* %82, i64 12
  %83 = load double, double* %arrayidx57, align 8
  %84 = load double*, double** %a.addr, align 8
  %arrayidx58 = getelementptr inbounds double, double* %84, i64 14
  %85 = load double, double* %arrayidx58, align 8
  %sub59 = fsub double %83, %85
  store double %sub59, double* %x3r, align 8
  %86 = load double*, double** %a.addr, align 8
  %arrayidx60 = getelementptr inbounds double, double* %86, i64 13
  %87 = load double, double* %arrayidx60, align 8
  %88 = load double*, double** %a.addr, align 8
  %arrayidx61 = getelementptr inbounds double, double* %88, i64 15
  %89 = load double, double* %arrayidx61, align 8
  %sub62 = fsub double %87, %89
  store double %sub62, double* %x3i, align 8
  %90 = load double, double* %x0r, align 8
  %91 = load double, double* %x2r, align 8
  %add63 = fadd double %90, %91
  %92 = load double*, double** %a.addr, align 8
  %arrayidx64 = getelementptr inbounds double, double* %92, i64 8
  store double %add63, double* %arrayidx64, align 8
  %93 = load double, double* %x0i, align 8
  %94 = load double, double* %x2i, align 8
  %add65 = fadd double %93, %94
  %95 = load double*, double** %a.addr, align 8
  %arrayidx66 = getelementptr inbounds double, double* %95, i64 9
  store double %add65, double* %arrayidx66, align 8
  %96 = load double, double* %x2i, align 8
  %97 = load double, double* %x0i, align 8
  %sub67 = fsub double %96, %97
  %98 = load double*, double** %a.addr, align 8
  %arrayidx68 = getelementptr inbounds double, double* %98, i64 12
  store double %sub67, double* %arrayidx68, align 8
  %99 = load double, double* %x0r, align 8
  %100 = load double, double* %x2r, align 8
  %sub69 = fsub double %99, %100
  %101 = load double*, double** %a.addr, align 8
  %arrayidx70 = getelementptr inbounds double, double* %101, i64 13
  store double %sub69, double* %arrayidx70, align 8
  %102 = load double, double* %x1r, align 8
  %103 = load double, double* %x3i, align 8
  %sub71 = fsub double %102, %103
  store double %sub71, double* %x0r, align 8
  %104 = load double, double* %x1i, align 8
  %105 = load double, double* %x3r, align 8
  %add72 = fadd double %104, %105
  store double %add72, double* %x0i, align 8
  %106 = load double, double* %wk1r, align 8
  %107 = load double, double* %x0r, align 8
  %108 = load double, double* %x0i, align 8
  %sub73 = fsub double %107, %108
  %mul = fmul double %106, %sub73
  %109 = load double*, double** %a.addr, align 8
  %arrayidx74 = getelementptr inbounds double, double* %109, i64 10
  store double %mul, double* %arrayidx74, align 8
  %110 = load double, double* %wk1r, align 8
  %111 = load double, double* %x0r, align 8
  %112 = load double, double* %x0i, align 8
  %add75 = fadd double %111, %112
  %mul76 = fmul double %110, %add75
  %113 = load double*, double** %a.addr, align 8
  %arrayidx77 = getelementptr inbounds double, double* %113, i64 11
  store double %mul76, double* %arrayidx77, align 8
  %114 = load double, double* %x3i, align 8
  %115 = load double, double* %x1r, align 8
  %add78 = fadd double %114, %115
  store double %add78, double* %x0r, align 8
  %116 = load double, double* %x3r, align 8
  %117 = load double, double* %x1i, align 8
  %sub79 = fsub double %116, %117
  store double %sub79, double* %x0i, align 8
  %118 = load double, double* %wk1r, align 8
  %119 = load double, double* %x0i, align 8
  %120 = load double, double* %x0r, align 8
  %sub80 = fsub double %119, %120
  %mul81 = fmul double %118, %sub80
  %121 = load double*, double** %a.addr, align 8
  %arrayidx82 = getelementptr inbounds double, double* %121, i64 14
  store double %mul81, double* %arrayidx82, align 8
  %122 = load double, double* %wk1r, align 8
  %123 = load double, double* %x0i, align 8
  %124 = load double, double* %x0r, align 8
  %add83 = fadd double %123, %124
  %mul84 = fmul double %122, %add83
  %125 = load double*, double** %a.addr, align 8
  %arrayidx85 = getelementptr inbounds double, double* %125, i64 15
  store double %mul84, double* %arrayidx85, align 8
  store i32 0, i32* %k1, align 4
  store i32 16, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %126 = load i32, i32* %j, align 4
  %127 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %126, %127
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %128 = load i32, i32* %k1, align 4
  %add86 = add nsw i32 %128, 2
  store i32 %add86, i32* %k1, align 4
  %129 = load i32, i32* %k1, align 4
  %mul87 = mul nsw i32 2, %129
  store i32 %mul87, i32* %k2, align 4
  %130 = load double*, double** %w.addr, align 8
  %131 = load i32, i32* %k1, align 4
  %idxprom = sext i32 %131 to i64
  %arrayidx88 = getelementptr inbounds double, double* %130, i64 %idxprom
  %132 = load double, double* %arrayidx88, align 8
  store double %132, double* %wk2r, align 8
  %133 = load double*, double** %w.addr, align 8
  %134 = load i32, i32* %k1, align 4
  %add89 = add nsw i32 %134, 1
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds double, double* %133, i64 %idxprom90
  %135 = load double, double* %arrayidx91, align 8
  store double %135, double* %wk2i, align 8
  %136 = load double*, double** %w.addr, align 8
  %137 = load i32, i32* %k2, align 4
  %idxprom92 = sext i32 %137 to i64
  %arrayidx93 = getelementptr inbounds double, double* %136, i64 %idxprom92
  %138 = load double, double* %arrayidx93, align 8
  store double %138, double* %wk1r, align 8
  %139 = load double*, double** %w.addr, align 8
  %140 = load i32, i32* %k2, align 4
  %add94 = add nsw i32 %140, 1
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds double, double* %139, i64 %idxprom95
  %141 = load double, double* %arrayidx96, align 8
  store double %141, double* %wk1i, align 8
  %142 = load double, double* %wk1r, align 8
  %143 = load double, double* %wk2i, align 8
  %mul97 = fmul double 2.000000e+00, %143
  %144 = load double, double* %wk1i, align 8
  %mul98 = fmul double %mul97, %144
  %sub99 = fsub double %142, %mul98
  store double %sub99, double* %wk3r, align 8
  %145 = load double, double* %wk2i, align 8
  %mul100 = fmul double 2.000000e+00, %145
  %146 = load double, double* %wk1r, align 8
  %mul101 = fmul double %mul100, %146
  %147 = load double, double* %wk1i, align 8
  %sub102 = fsub double %mul101, %147
  store double %sub102, double* %wk3i, align 8
  %148 = load double*, double** %a.addr, align 8
  %149 = load i32, i32* %j, align 4
  %idxprom103 = sext i32 %149 to i64
  %arrayidx104 = getelementptr inbounds double, double* %148, i64 %idxprom103
  %150 = load double, double* %arrayidx104, align 8
  %151 = load double*, double** %a.addr, align 8
  %152 = load i32, i32* %j, align 4
  %add105 = add nsw i32 %152, 2
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds double, double* %151, i64 %idxprom106
  %153 = load double, double* %arrayidx107, align 8
  %add108 = fadd double %150, %153
  store double %add108, double* %x0r, align 8
  %154 = load double*, double** %a.addr, align 8
  %155 = load i32, i32* %j, align 4
  %add109 = add nsw i32 %155, 1
  %idxprom110 = sext i32 %add109 to i64
  %arrayidx111 = getelementptr inbounds double, double* %154, i64 %idxprom110
  %156 = load double, double* %arrayidx111, align 8
  %157 = load double*, double** %a.addr, align 8
  %158 = load i32, i32* %j, align 4
  %add112 = add nsw i32 %158, 3
  %idxprom113 = sext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds double, double* %157, i64 %idxprom113
  %159 = load double, double* %arrayidx114, align 8
  %add115 = fadd double %156, %159
  store double %add115, double* %x0i, align 8
  %160 = load double*, double** %a.addr, align 8
  %161 = load i32, i32* %j, align 4
  %idxprom116 = sext i32 %161 to i64
  %arrayidx117 = getelementptr inbounds double, double* %160, i64 %idxprom116
  %162 = load double, double* %arrayidx117, align 8
  %163 = load double*, double** %a.addr, align 8
  %164 = load i32, i32* %j, align 4
  %add118 = add nsw i32 %164, 2
  %idxprom119 = sext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds double, double* %163, i64 %idxprom119
  %165 = load double, double* %arrayidx120, align 8
  %sub121 = fsub double %162, %165
  store double %sub121, double* %x1r, align 8
  %166 = load double*, double** %a.addr, align 8
  %167 = load i32, i32* %j, align 4
  %add122 = add nsw i32 %167, 1
  %idxprom123 = sext i32 %add122 to i64
  %arrayidx124 = getelementptr inbounds double, double* %166, i64 %idxprom123
  %168 = load double, double* %arrayidx124, align 8
  %169 = load double*, double** %a.addr, align 8
  %170 = load i32, i32* %j, align 4
  %add125 = add nsw i32 %170, 3
  %idxprom126 = sext i32 %add125 to i64
  %arrayidx127 = getelementptr inbounds double, double* %169, i64 %idxprom126
  %171 = load double, double* %arrayidx127, align 8
  %sub128 = fsub double %168, %171
  store double %sub128, double* %x1i, align 8
  %172 = load double*, double** %a.addr, align 8
  %173 = load i32, i32* %j, align 4
  %add129 = add nsw i32 %173, 4
  %idxprom130 = sext i32 %add129 to i64
  %arrayidx131 = getelementptr inbounds double, double* %172, i64 %idxprom130
  %174 = load double, double* %arrayidx131, align 8
  %175 = load double*, double** %a.addr, align 8
  %176 = load i32, i32* %j, align 4
  %add132 = add nsw i32 %176, 6
  %idxprom133 = sext i32 %add132 to i64
  %arrayidx134 = getelementptr inbounds double, double* %175, i64 %idxprom133
  %177 = load double, double* %arrayidx134, align 8
  %add135 = fadd double %174, %177
  store double %add135, double* %x2r, align 8
  %178 = load double*, double** %a.addr, align 8
  %179 = load i32, i32* %j, align 4
  %add136 = add nsw i32 %179, 5
  %idxprom137 = sext i32 %add136 to i64
  %arrayidx138 = getelementptr inbounds double, double* %178, i64 %idxprom137
  %180 = load double, double* %arrayidx138, align 8
  %181 = load double*, double** %a.addr, align 8
  %182 = load i32, i32* %j, align 4
  %add139 = add nsw i32 %182, 7
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds double, double* %181, i64 %idxprom140
  %183 = load double, double* %arrayidx141, align 8
  %add142 = fadd double %180, %183
  store double %add142, double* %x2i, align 8
  %184 = load double*, double** %a.addr, align 8
  %185 = load i32, i32* %j, align 4
  %add143 = add nsw i32 %185, 4
  %idxprom144 = sext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds double, double* %184, i64 %idxprom144
  %186 = load double, double* %arrayidx145, align 8
  %187 = load double*, double** %a.addr, align 8
  %188 = load i32, i32* %j, align 4
  %add146 = add nsw i32 %188, 6
  %idxprom147 = sext i32 %add146 to i64
  %arrayidx148 = getelementptr inbounds double, double* %187, i64 %idxprom147
  %189 = load double, double* %arrayidx148, align 8
  %sub149 = fsub double %186, %189
  store double %sub149, double* %x3r, align 8
  %190 = load double*, double** %a.addr, align 8
  %191 = load i32, i32* %j, align 4
  %add150 = add nsw i32 %191, 5
  %idxprom151 = sext i32 %add150 to i64
  %arrayidx152 = getelementptr inbounds double, double* %190, i64 %idxprom151
  %192 = load double, double* %arrayidx152, align 8
  %193 = load double*, double** %a.addr, align 8
  %194 = load i32, i32* %j, align 4
  %add153 = add nsw i32 %194, 7
  %idxprom154 = sext i32 %add153 to i64
  %arrayidx155 = getelementptr inbounds double, double* %193, i64 %idxprom154
  %195 = load double, double* %arrayidx155, align 8
  %sub156 = fsub double %192, %195
  store double %sub156, double* %x3i, align 8
  %196 = load double, double* %x0r, align 8
  %197 = load double, double* %x2r, align 8
  %add157 = fadd double %196, %197
  %198 = load double*, double** %a.addr, align 8
  %199 = load i32, i32* %j, align 4
  %idxprom158 = sext i32 %199 to i64
  %arrayidx159 = getelementptr inbounds double, double* %198, i64 %idxprom158
  store double %add157, double* %arrayidx159, align 8
  %200 = load double, double* %x0i, align 8
  %201 = load double, double* %x2i, align 8
  %add160 = fadd double %200, %201
  %202 = load double*, double** %a.addr, align 8
  %203 = load i32, i32* %j, align 4
  %add161 = add nsw i32 %203, 1
  %idxprom162 = sext i32 %add161 to i64
  %arrayidx163 = getelementptr inbounds double, double* %202, i64 %idxprom162
  store double %add160, double* %arrayidx163, align 8
  %204 = load double, double* %x2r, align 8
  %205 = load double, double* %x0r, align 8
  %sub164 = fsub double %205, %204
  store double %sub164, double* %x0r, align 8
  %206 = load double, double* %x2i, align 8
  %207 = load double, double* %x0i, align 8
  %sub165 = fsub double %207, %206
  store double %sub165, double* %x0i, align 8
  %208 = load double, double* %wk2r, align 8
  %209 = load double, double* %x0r, align 8
  %mul166 = fmul double %208, %209
  %210 = load double, double* %wk2i, align 8
  %211 = load double, double* %x0i, align 8
  %mul167 = fmul double %210, %211
  %sub168 = fsub double %mul166, %mul167
  %212 = load double*, double** %a.addr, align 8
  %213 = load i32, i32* %j, align 4
  %add169 = add nsw i32 %213, 4
  %idxprom170 = sext i32 %add169 to i64
  %arrayidx171 = getelementptr inbounds double, double* %212, i64 %idxprom170
  store double %sub168, double* %arrayidx171, align 8
  %214 = load double, double* %wk2r, align 8
  %215 = load double, double* %x0i, align 8
  %mul172 = fmul double %214, %215
  %216 = load double, double* %wk2i, align 8
  %217 = load double, double* %x0r, align 8
  %mul173 = fmul double %216, %217
  %add174 = fadd double %mul172, %mul173
  %218 = load double*, double** %a.addr, align 8
  %219 = load i32, i32* %j, align 4
  %add175 = add nsw i32 %219, 5
  %idxprom176 = sext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds double, double* %218, i64 %idxprom176
  store double %add174, double* %arrayidx177, align 8
  %220 = load double, double* %x1r, align 8
  %221 = load double, double* %x3i, align 8
  %sub178 = fsub double %220, %221
  store double %sub178, double* %x0r, align 8
  %222 = load double, double* %x1i, align 8
  %223 = load double, double* %x3r, align 8
  %add179 = fadd double %222, %223
  store double %add179, double* %x0i, align 8
  %224 = load double, double* %wk1r, align 8
  %225 = load double, double* %x0r, align 8
  %mul180 = fmul double %224, %225
  %226 = load double, double* %wk1i, align 8
  %227 = load double, double* %x0i, align 8
  %mul181 = fmul double %226, %227
  %sub182 = fsub double %mul180, %mul181
  %228 = load double*, double** %a.addr, align 8
  %229 = load i32, i32* %j, align 4
  %add183 = add nsw i32 %229, 2
  %idxprom184 = sext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds double, double* %228, i64 %idxprom184
  store double %sub182, double* %arrayidx185, align 8
  %230 = load double, double* %wk1r, align 8
  %231 = load double, double* %x0i, align 8
  %mul186 = fmul double %230, %231
  %232 = load double, double* %wk1i, align 8
  %233 = load double, double* %x0r, align 8
  %mul187 = fmul double %232, %233
  %add188 = fadd double %mul186, %mul187
  %234 = load double*, double** %a.addr, align 8
  %235 = load i32, i32* %j, align 4
  %add189 = add nsw i32 %235, 3
  %idxprom190 = sext i32 %add189 to i64
  %arrayidx191 = getelementptr inbounds double, double* %234, i64 %idxprom190
  store double %add188, double* %arrayidx191, align 8
  %236 = load double, double* %x1r, align 8
  %237 = load double, double* %x3i, align 8
  %add192 = fadd double %236, %237
  store double %add192, double* %x0r, align 8
  %238 = load double, double* %x1i, align 8
  %239 = load double, double* %x3r, align 8
  %sub193 = fsub double %238, %239
  store double %sub193, double* %x0i, align 8
  %240 = load double, double* %wk3r, align 8
  %241 = load double, double* %x0r, align 8
  %mul194 = fmul double %240, %241
  %242 = load double, double* %wk3i, align 8
  %243 = load double, double* %x0i, align 8
  %mul195 = fmul double %242, %243
  %sub196 = fsub double %mul194, %mul195
  %244 = load double*, double** %a.addr, align 8
  %245 = load i32, i32* %j, align 4
  %add197 = add nsw i32 %245, 6
  %idxprom198 = sext i32 %add197 to i64
  %arrayidx199 = getelementptr inbounds double, double* %244, i64 %idxprom198
  store double %sub196, double* %arrayidx199, align 8
  %246 = load double, double* %wk3r, align 8
  %247 = load double, double* %x0i, align 8
  %mul200 = fmul double %246, %247
  %248 = load double, double* %wk3i, align 8
  %249 = load double, double* %x0r, align 8
  %mul201 = fmul double %248, %249
  %add202 = fadd double %mul200, %mul201
  %250 = load double*, double** %a.addr, align 8
  %251 = load i32, i32* %j, align 4
  %add203 = add nsw i32 %251, 7
  %idxprom204 = sext i32 %add203 to i64
  %arrayidx205 = getelementptr inbounds double, double* %250, i64 %idxprom204
  store double %add202, double* %arrayidx205, align 8
  %252 = load double*, double** %w.addr, align 8
  %253 = load i32, i32* %k2, align 4
  %add206 = add nsw i32 %253, 2
  %idxprom207 = sext i32 %add206 to i64
  %arrayidx208 = getelementptr inbounds double, double* %252, i64 %idxprom207
  %254 = load double, double* %arrayidx208, align 8
  store double %254, double* %wk1r, align 8
  %255 = load double*, double** %w.addr, align 8
  %256 = load i32, i32* %k2, align 4
  %add209 = add nsw i32 %256, 3
  %idxprom210 = sext i32 %add209 to i64
  %arrayidx211 = getelementptr inbounds double, double* %255, i64 %idxprom210
  %257 = load double, double* %arrayidx211, align 8
  store double %257, double* %wk1i, align 8
  %258 = load double, double* %wk1r, align 8
  %259 = load double, double* %wk2r, align 8
  %mul212 = fmul double 2.000000e+00, %259
  %260 = load double, double* %wk1i, align 8
  %mul213 = fmul double %mul212, %260
  %sub214 = fsub double %258, %mul213
  store double %sub214, double* %wk3r, align 8
  %261 = load double, double* %wk2r, align 8
  %mul215 = fmul double 2.000000e+00, %261
  %262 = load double, double* %wk1r, align 8
  %mul216 = fmul double %mul215, %262
  %263 = load double, double* %wk1i, align 8
  %sub217 = fsub double %mul216, %263
  store double %sub217, double* %wk3i, align 8
  %264 = load double*, double** %a.addr, align 8
  %265 = load i32, i32* %j, align 4
  %add218 = add nsw i32 %265, 8
  %idxprom219 = sext i32 %add218 to i64
  %arrayidx220 = getelementptr inbounds double, double* %264, i64 %idxprom219
  %266 = load double, double* %arrayidx220, align 8
  %267 = load double*, double** %a.addr, align 8
  %268 = load i32, i32* %j, align 4
  %add221 = add nsw i32 %268, 10
  %idxprom222 = sext i32 %add221 to i64
  %arrayidx223 = getelementptr inbounds double, double* %267, i64 %idxprom222
  %269 = load double, double* %arrayidx223, align 8
  %add224 = fadd double %266, %269
  store double %add224, double* %x0r, align 8
  %270 = load double*, double** %a.addr, align 8
  %271 = load i32, i32* %j, align 4
  %add225 = add nsw i32 %271, 9
  %idxprom226 = sext i32 %add225 to i64
  %arrayidx227 = getelementptr inbounds double, double* %270, i64 %idxprom226
  %272 = load double, double* %arrayidx227, align 8
  %273 = load double*, double** %a.addr, align 8
  %274 = load i32, i32* %j, align 4
  %add228 = add nsw i32 %274, 11
  %idxprom229 = sext i32 %add228 to i64
  %arrayidx230 = getelementptr inbounds double, double* %273, i64 %idxprom229
  %275 = load double, double* %arrayidx230, align 8
  %add231 = fadd double %272, %275
  store double %add231, double* %x0i, align 8
  %276 = load double*, double** %a.addr, align 8
  %277 = load i32, i32* %j, align 4
  %add232 = add nsw i32 %277, 8
  %idxprom233 = sext i32 %add232 to i64
  %arrayidx234 = getelementptr inbounds double, double* %276, i64 %idxprom233
  %278 = load double, double* %arrayidx234, align 8
  %279 = load double*, double** %a.addr, align 8
  %280 = load i32, i32* %j, align 4
  %add235 = add nsw i32 %280, 10
  %idxprom236 = sext i32 %add235 to i64
  %arrayidx237 = getelementptr inbounds double, double* %279, i64 %idxprom236
  %281 = load double, double* %arrayidx237, align 8
  %sub238 = fsub double %278, %281
  store double %sub238, double* %x1r, align 8
  %282 = load double*, double** %a.addr, align 8
  %283 = load i32, i32* %j, align 4
  %add239 = add nsw i32 %283, 9
  %idxprom240 = sext i32 %add239 to i64
  %arrayidx241 = getelementptr inbounds double, double* %282, i64 %idxprom240
  %284 = load double, double* %arrayidx241, align 8
  %285 = load double*, double** %a.addr, align 8
  %286 = load i32, i32* %j, align 4
  %add242 = add nsw i32 %286, 11
  %idxprom243 = sext i32 %add242 to i64
  %arrayidx244 = getelementptr inbounds double, double* %285, i64 %idxprom243
  %287 = load double, double* %arrayidx244, align 8
  %sub245 = fsub double %284, %287
  store double %sub245, double* %x1i, align 8
  %288 = load double*, double** %a.addr, align 8
  %289 = load i32, i32* %j, align 4
  %add246 = add nsw i32 %289, 12
  %idxprom247 = sext i32 %add246 to i64
  %arrayidx248 = getelementptr inbounds double, double* %288, i64 %idxprom247
  %290 = load double, double* %arrayidx248, align 8
  %291 = load double*, double** %a.addr, align 8
  %292 = load i32, i32* %j, align 4
  %add249 = add nsw i32 %292, 14
  %idxprom250 = sext i32 %add249 to i64
  %arrayidx251 = getelementptr inbounds double, double* %291, i64 %idxprom250
  %293 = load double, double* %arrayidx251, align 8
  %add252 = fadd double %290, %293
  store double %add252, double* %x2r, align 8
  %294 = load double*, double** %a.addr, align 8
  %295 = load i32, i32* %j, align 4
  %add253 = add nsw i32 %295, 13
  %idxprom254 = sext i32 %add253 to i64
  %arrayidx255 = getelementptr inbounds double, double* %294, i64 %idxprom254
  %296 = load double, double* %arrayidx255, align 8
  %297 = load double*, double** %a.addr, align 8
  %298 = load i32, i32* %j, align 4
  %add256 = add nsw i32 %298, 15
  %idxprom257 = sext i32 %add256 to i64
  %arrayidx258 = getelementptr inbounds double, double* %297, i64 %idxprom257
  %299 = load double, double* %arrayidx258, align 8
  %add259 = fadd double %296, %299
  store double %add259, double* %x2i, align 8
  %300 = load double*, double** %a.addr, align 8
  %301 = load i32, i32* %j, align 4
  %add260 = add nsw i32 %301, 12
  %idxprom261 = sext i32 %add260 to i64
  %arrayidx262 = getelementptr inbounds double, double* %300, i64 %idxprom261
  %302 = load double, double* %arrayidx262, align 8
  %303 = load double*, double** %a.addr, align 8
  %304 = load i32, i32* %j, align 4
  %add263 = add nsw i32 %304, 14
  %idxprom264 = sext i32 %add263 to i64
  %arrayidx265 = getelementptr inbounds double, double* %303, i64 %idxprom264
  %305 = load double, double* %arrayidx265, align 8
  %sub266 = fsub double %302, %305
  store double %sub266, double* %x3r, align 8
  %306 = load double*, double** %a.addr, align 8
  %307 = load i32, i32* %j, align 4
  %add267 = add nsw i32 %307, 13
  %idxprom268 = sext i32 %add267 to i64
  %arrayidx269 = getelementptr inbounds double, double* %306, i64 %idxprom268
  %308 = load double, double* %arrayidx269, align 8
  %309 = load double*, double** %a.addr, align 8
  %310 = load i32, i32* %j, align 4
  %add270 = add nsw i32 %310, 15
  %idxprom271 = sext i32 %add270 to i64
  %arrayidx272 = getelementptr inbounds double, double* %309, i64 %idxprom271
  %311 = load double, double* %arrayidx272, align 8
  %sub273 = fsub double %308, %311
  store double %sub273, double* %x3i, align 8
  %312 = load double, double* %x0r, align 8
  %313 = load double, double* %x2r, align 8
  %add274 = fadd double %312, %313
  %314 = load double*, double** %a.addr, align 8
  %315 = load i32, i32* %j, align 4
  %add275 = add nsw i32 %315, 8
  %idxprom276 = sext i32 %add275 to i64
  %arrayidx277 = getelementptr inbounds double, double* %314, i64 %idxprom276
  store double %add274, double* %arrayidx277, align 8
  %316 = load double, double* %x0i, align 8
  %317 = load double, double* %x2i, align 8
  %add278 = fadd double %316, %317
  %318 = load double*, double** %a.addr, align 8
  %319 = load i32, i32* %j, align 4
  %add279 = add nsw i32 %319, 9
  %idxprom280 = sext i32 %add279 to i64
  %arrayidx281 = getelementptr inbounds double, double* %318, i64 %idxprom280
  store double %add278, double* %arrayidx281, align 8
  %320 = load double, double* %x2r, align 8
  %321 = load double, double* %x0r, align 8
  %sub282 = fsub double %321, %320
  store double %sub282, double* %x0r, align 8
  %322 = load double, double* %x2i, align 8
  %323 = load double, double* %x0i, align 8
  %sub283 = fsub double %323, %322
  store double %sub283, double* %x0i, align 8
  %324 = load double, double* %wk2i, align 8
  %sub284 = fsub double -0.000000e+00, %324
  %325 = load double, double* %x0r, align 8
  %mul285 = fmul double %sub284, %325
  %326 = load double, double* %wk2r, align 8
  %327 = load double, double* %x0i, align 8
  %mul286 = fmul double %326, %327
  %sub287 = fsub double %mul285, %mul286
  %328 = load double*, double** %a.addr, align 8
  %329 = load i32, i32* %j, align 4
  %add288 = add nsw i32 %329, 12
  %idxprom289 = sext i32 %add288 to i64
  %arrayidx290 = getelementptr inbounds double, double* %328, i64 %idxprom289
  store double %sub287, double* %arrayidx290, align 8
  %330 = load double, double* %wk2i, align 8
  %sub291 = fsub double -0.000000e+00, %330
  %331 = load double, double* %x0i, align 8
  %mul292 = fmul double %sub291, %331
  %332 = load double, double* %wk2r, align 8
  %333 = load double, double* %x0r, align 8
  %mul293 = fmul double %332, %333
  %add294 = fadd double %mul292, %mul293
  %334 = load double*, double** %a.addr, align 8
  %335 = load i32, i32* %j, align 4
  %add295 = add nsw i32 %335, 13
  %idxprom296 = sext i32 %add295 to i64
  %arrayidx297 = getelementptr inbounds double, double* %334, i64 %idxprom296
  store double %add294, double* %arrayidx297, align 8
  %336 = load double, double* %x1r, align 8
  %337 = load double, double* %x3i, align 8
  %sub298 = fsub double %336, %337
  store double %sub298, double* %x0r, align 8
  %338 = load double, double* %x1i, align 8
  %339 = load double, double* %x3r, align 8
  %add299 = fadd double %338, %339
  store double %add299, double* %x0i, align 8
  %340 = load double, double* %wk1r, align 8
  %341 = load double, double* %x0r, align 8
  %mul300 = fmul double %340, %341
  %342 = load double, double* %wk1i, align 8
  %343 = load double, double* %x0i, align 8
  %mul301 = fmul double %342, %343
  %sub302 = fsub double %mul300, %mul301
  %344 = load double*, double** %a.addr, align 8
  %345 = load i32, i32* %j, align 4
  %add303 = add nsw i32 %345, 10
  %idxprom304 = sext i32 %add303 to i64
  %arrayidx305 = getelementptr inbounds double, double* %344, i64 %idxprom304
  store double %sub302, double* %arrayidx305, align 8
  %346 = load double, double* %wk1r, align 8
  %347 = load double, double* %x0i, align 8
  %mul306 = fmul double %346, %347
  %348 = load double, double* %wk1i, align 8
  %349 = load double, double* %x0r, align 8
  %mul307 = fmul double %348, %349
  %add308 = fadd double %mul306, %mul307
  %350 = load double*, double** %a.addr, align 8
  %351 = load i32, i32* %j, align 4
  %add309 = add nsw i32 %351, 11
  %idxprom310 = sext i32 %add309 to i64
  %arrayidx311 = getelementptr inbounds double, double* %350, i64 %idxprom310
  store double %add308, double* %arrayidx311, align 8
  %352 = load double, double* %x1r, align 8
  %353 = load double, double* %x3i, align 8
  %add312 = fadd double %352, %353
  store double %add312, double* %x0r, align 8
  %354 = load double, double* %x1i, align 8
  %355 = load double, double* %x3r, align 8
  %sub313 = fsub double %354, %355
  store double %sub313, double* %x0i, align 8
  %356 = load double, double* %wk3r, align 8
  %357 = load double, double* %x0r, align 8
  %mul314 = fmul double %356, %357
  %358 = load double, double* %wk3i, align 8
  %359 = load double, double* %x0i, align 8
  %mul315 = fmul double %358, %359
  %sub316 = fsub double %mul314, %mul315
  %360 = load double*, double** %a.addr, align 8
  %361 = load i32, i32* %j, align 4
  %add317 = add nsw i32 %361, 14
  %idxprom318 = sext i32 %add317 to i64
  %arrayidx319 = getelementptr inbounds double, double* %360, i64 %idxprom318
  store double %sub316, double* %arrayidx319, align 8
  %362 = load double, double* %wk3r, align 8
  %363 = load double, double* %x0i, align 8
  %mul320 = fmul double %362, %363
  %364 = load double, double* %wk3i, align 8
  %365 = load double, double* %x0r, align 8
  %mul321 = fmul double %364, %365
  %add322 = fadd double %mul320, %mul321
  %366 = load double*, double** %a.addr, align 8
  %367 = load i32, i32* %j, align 4
  %add323 = add nsw i32 %367, 15
  %idxprom324 = sext i32 %add323 to i64
  %arrayidx325 = getelementptr inbounds double, double* %366, i64 %idxprom324
  store double %add322, double* %arrayidx325, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %368 = load i32, i32* %j, align 4
  %add326 = add nsw i32 %368, 16
  store i32 %add326, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cftmdl(i32 %n, i32 %l, double* %a, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %a.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %j = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %k = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %m = alloca i32, align 4
  %m2 = alloca i32, align 4
  %wk1r = alloca double, align 8
  %wk1i = alloca double, align 8
  %wk2r = alloca double, align 8
  %wk2i = alloca double, align 8
  %wk3r = alloca double, align 8
  %wk3i = alloca double, align 8
  %x0r = alloca double, align 8
  %x0i = alloca double, align 8
  %x1r = alloca double, align 8
  %x1i = alloca double, align 8
  %x2r = alloca double, align 8
  %x2i = alloca double, align 8
  %x3r = alloca double, align 8
  %x3i = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %l, i32* %l.addr, align 4
  store double* %a, double** %a.addr, align 8
  store double* %w, double** %w.addr, align 8
  %0 = load i32, i32* %l.addr, align 4
  %shl = shl i32 %0, 2
  store i32 %shl, i32* %m, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %l.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %l.addr, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %j1, align 4
  %5 = load i32, i32* %j1, align 4
  %6 = load i32, i32* %l.addr, align 4
  %add1 = add nsw i32 %5, %6
  store i32 %add1, i32* %j2, align 4
  %7 = load i32, i32* %j2, align 4
  %8 = load i32, i32* %l.addr, align 4
  %add2 = add nsw i32 %7, %8
  store i32 %add2, i32* %j3, align 4
  %9 = load double*, double** %a.addr, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds double, double* %9, i64 %idxprom
  %11 = load double, double* %arrayidx, align 8
  %12 = load double*, double** %a.addr, align 8
  %13 = load i32, i32* %j1, align 4
  %idxprom3 = sext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds double, double* %12, i64 %idxprom3
  %14 = load double, double* %arrayidx4, align 8
  %add5 = fadd double %11, %14
  store double %add5, double* %x0r, align 8
  %15 = load double*, double** %a.addr, align 8
  %16 = load i32, i32* %j, align 4
  %add6 = add nsw i32 %16, 1
  %idxprom7 = sext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds double, double* %15, i64 %idxprom7
  %17 = load double, double* %arrayidx8, align 8
  %18 = load double*, double** %a.addr, align 8
  %19 = load i32, i32* %j1, align 4
  %add9 = add nsw i32 %19, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds double, double* %18, i64 %idxprom10
  %20 = load double, double* %arrayidx11, align 8
  %add12 = fadd double %17, %20
  store double %add12, double* %x0i, align 8
  %21 = load double*, double** %a.addr, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %22 to i64
  %arrayidx14 = getelementptr inbounds double, double* %21, i64 %idxprom13
  %23 = load double, double* %arrayidx14, align 8
  %24 = load double*, double** %a.addr, align 8
  %25 = load i32, i32* %j1, align 4
  %idxprom15 = sext i32 %25 to i64
  %arrayidx16 = getelementptr inbounds double, double* %24, i64 %idxprom15
  %26 = load double, double* %arrayidx16, align 8
  %sub = fsub double %23, %26
  store double %sub, double* %x1r, align 8
  %27 = load double*, double** %a.addr, align 8
  %28 = load i32, i32* %j, align 4
  %add17 = add nsw i32 %28, 1
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds double, double* %27, i64 %idxprom18
  %29 = load double, double* %arrayidx19, align 8
  %30 = load double*, double** %a.addr, align 8
  %31 = load i32, i32* %j1, align 4
  %add20 = add nsw i32 %31, 1
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds double, double* %30, i64 %idxprom21
  %32 = load double, double* %arrayidx22, align 8
  %sub23 = fsub double %29, %32
  store double %sub23, double* %x1i, align 8
  %33 = load double*, double** %a.addr, align 8
  %34 = load i32, i32* %j2, align 4
  %idxprom24 = sext i32 %34 to i64
  %arrayidx25 = getelementptr inbounds double, double* %33, i64 %idxprom24
  %35 = load double, double* %arrayidx25, align 8
  %36 = load double*, double** %a.addr, align 8
  %37 = load i32, i32* %j3, align 4
  %idxprom26 = sext i32 %37 to i64
  %arrayidx27 = getelementptr inbounds double, double* %36, i64 %idxprom26
  %38 = load double, double* %arrayidx27, align 8
  %add28 = fadd double %35, %38
  store double %add28, double* %x2r, align 8
  %39 = load double*, double** %a.addr, align 8
  %40 = load i32, i32* %j2, align 4
  %add29 = add nsw i32 %40, 1
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds double, double* %39, i64 %idxprom30
  %41 = load double, double* %arrayidx31, align 8
  %42 = load double*, double** %a.addr, align 8
  %43 = load i32, i32* %j3, align 4
  %add32 = add nsw i32 %43, 1
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds double, double* %42, i64 %idxprom33
  %44 = load double, double* %arrayidx34, align 8
  %add35 = fadd double %41, %44
  store double %add35, double* %x2i, align 8
  %45 = load double*, double** %a.addr, align 8
  %46 = load i32, i32* %j2, align 4
  %idxprom36 = sext i32 %46 to i64
  %arrayidx37 = getelementptr inbounds double, double* %45, i64 %idxprom36
  %47 = load double, double* %arrayidx37, align 8
  %48 = load double*, double** %a.addr, align 8
  %49 = load i32, i32* %j3, align 4
  %idxprom38 = sext i32 %49 to i64
  %arrayidx39 = getelementptr inbounds double, double* %48, i64 %idxprom38
  %50 = load double, double* %arrayidx39, align 8
  %sub40 = fsub double %47, %50
  store double %sub40, double* %x3r, align 8
  %51 = load double*, double** %a.addr, align 8
  %52 = load i32, i32* %j2, align 4
  %add41 = add nsw i32 %52, 1
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds double, double* %51, i64 %idxprom42
  %53 = load double, double* %arrayidx43, align 8
  %54 = load double*, double** %a.addr, align 8
  %55 = load i32, i32* %j3, align 4
  %add44 = add nsw i32 %55, 1
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds double, double* %54, i64 %idxprom45
  %56 = load double, double* %arrayidx46, align 8
  %sub47 = fsub double %53, %56
  store double %sub47, double* %x3i, align 8
  %57 = load double, double* %x0r, align 8
  %58 = load double, double* %x2r, align 8
  %add48 = fadd double %57, %58
  %59 = load double*, double** %a.addr, align 8
  %60 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %60 to i64
  %arrayidx50 = getelementptr inbounds double, double* %59, i64 %idxprom49
  store double %add48, double* %arrayidx50, align 8
  %61 = load double, double* %x0i, align 8
  %62 = load double, double* %x2i, align 8
  %add51 = fadd double %61, %62
  %63 = load double*, double** %a.addr, align 8
  %64 = load i32, i32* %j, align 4
  %add52 = add nsw i32 %64, 1
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds double, double* %63, i64 %idxprom53
  store double %add51, double* %arrayidx54, align 8
  %65 = load double, double* %x0r, align 8
  %66 = load double, double* %x2r, align 8
  %sub55 = fsub double %65, %66
  %67 = load double*, double** %a.addr, align 8
  %68 = load i32, i32* %j2, align 4
  %idxprom56 = sext i32 %68 to i64
  %arrayidx57 = getelementptr inbounds double, double* %67, i64 %idxprom56
  store double %sub55, double* %arrayidx57, align 8
  %69 = load double, double* %x0i, align 8
  %70 = load double, double* %x2i, align 8
  %sub58 = fsub double %69, %70
  %71 = load double*, double** %a.addr, align 8
  %72 = load i32, i32* %j2, align 4
  %add59 = add nsw i32 %72, 1
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds double, double* %71, i64 %idxprom60
  store double %sub58, double* %arrayidx61, align 8
  %73 = load double, double* %x1r, align 8
  %74 = load double, double* %x3i, align 8
  %sub62 = fsub double %73, %74
  %75 = load double*, double** %a.addr, align 8
  %76 = load i32, i32* %j1, align 4
  %idxprom63 = sext i32 %76 to i64
  %arrayidx64 = getelementptr inbounds double, double* %75, i64 %idxprom63
  store double %sub62, double* %arrayidx64, align 8
  %77 = load double, double* %x1i, align 8
  %78 = load double, double* %x3r, align 8
  %add65 = fadd double %77, %78
  %79 = load double*, double** %a.addr, align 8
  %80 = load i32, i32* %j1, align 4
  %add66 = add nsw i32 %80, 1
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds double, double* %79, i64 %idxprom67
  store double %add65, double* %arrayidx68, align 8
  %81 = load double, double* %x1r, align 8
  %82 = load double, double* %x3i, align 8
  %add69 = fadd double %81, %82
  %83 = load double*, double** %a.addr, align 8
  %84 = load i32, i32* %j3, align 4
  %idxprom70 = sext i32 %84 to i64
  %arrayidx71 = getelementptr inbounds double, double* %83, i64 %idxprom70
  store double %add69, double* %arrayidx71, align 8
  %85 = load double, double* %x1i, align 8
  %86 = load double, double* %x3r, align 8
  %sub72 = fsub double %85, %86
  %87 = load double*, double** %a.addr, align 8
  %88 = load i32, i32* %j3, align 4
  %add73 = add nsw i32 %88, 1
  %idxprom74 = sext i32 %add73 to i64
  %arrayidx75 = getelementptr inbounds double, double* %87, i64 %idxprom74
  store double %sub72, double* %arrayidx75, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %89 = load i32, i32* %j, align 4
  %add76 = add nsw i32 %89, 2
  store i32 %add76, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %90 = load double*, double** %w.addr, align 8
  %arrayidx77 = getelementptr inbounds double, double* %90, i64 2
  %91 = load double, double* %arrayidx77, align 8
  store double %91, double* %wk1r, align 8
  %92 = load i32, i32* %m, align 4
  store i32 %92, i32* %j, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc168, %for.end
  %93 = load i32, i32* %j, align 4
  %94 = load i32, i32* %l.addr, align 4
  %95 = load i32, i32* %m, align 4
  %add79 = add nsw i32 %94, %95
  %cmp80 = icmp slt i32 %93, %add79
  br i1 %cmp80, label %for.body81, label %for.end170

for.body81:                                       ; preds = %for.cond78
  %96 = load i32, i32* %j, align 4
  %97 = load i32, i32* %l.addr, align 4
  %add82 = add nsw i32 %96, %97
  store i32 %add82, i32* %j1, align 4
  %98 = load i32, i32* %j1, align 4
  %99 = load i32, i32* %l.addr, align 4
  %add83 = add nsw i32 %98, %99
  store i32 %add83, i32* %j2, align 4
  %100 = load i32, i32* %j2, align 4
  %101 = load i32, i32* %l.addr, align 4
  %add84 = add nsw i32 %100, %101
  store i32 %add84, i32* %j3, align 4
  %102 = load double*, double** %a.addr, align 8
  %103 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %103 to i64
  %arrayidx86 = getelementptr inbounds double, double* %102, i64 %idxprom85
  %104 = load double, double* %arrayidx86, align 8
  %105 = load double*, double** %a.addr, align 8
  %106 = load i32, i32* %j1, align 4
  %idxprom87 = sext i32 %106 to i64
  %arrayidx88 = getelementptr inbounds double, double* %105, i64 %idxprom87
  %107 = load double, double* %arrayidx88, align 8
  %add89 = fadd double %104, %107
  store double %add89, double* %x0r, align 8
  %108 = load double*, double** %a.addr, align 8
  %109 = load i32, i32* %j, align 4
  %add90 = add nsw i32 %109, 1
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds double, double* %108, i64 %idxprom91
  %110 = load double, double* %arrayidx92, align 8
  %111 = load double*, double** %a.addr, align 8
  %112 = load i32, i32* %j1, align 4
  %add93 = add nsw i32 %112, 1
  %idxprom94 = sext i32 %add93 to i64
  %arrayidx95 = getelementptr inbounds double, double* %111, i64 %idxprom94
  %113 = load double, double* %arrayidx95, align 8
  %add96 = fadd double %110, %113
  store double %add96, double* %x0i, align 8
  %114 = load double*, double** %a.addr, align 8
  %115 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %115 to i64
  %arrayidx98 = getelementptr inbounds double, double* %114, i64 %idxprom97
  %116 = load double, double* %arrayidx98, align 8
  %117 = load double*, double** %a.addr, align 8
  %118 = load i32, i32* %j1, align 4
  %idxprom99 = sext i32 %118 to i64
  %arrayidx100 = getelementptr inbounds double, double* %117, i64 %idxprom99
  %119 = load double, double* %arrayidx100, align 8
  %sub101 = fsub double %116, %119
  store double %sub101, double* %x1r, align 8
  %120 = load double*, double** %a.addr, align 8
  %121 = load i32, i32* %j, align 4
  %add102 = add nsw i32 %121, 1
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds double, double* %120, i64 %idxprom103
  %122 = load double, double* %arrayidx104, align 8
  %123 = load double*, double** %a.addr, align 8
  %124 = load i32, i32* %j1, align 4
  %add105 = add nsw i32 %124, 1
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds double, double* %123, i64 %idxprom106
  %125 = load double, double* %arrayidx107, align 8
  %sub108 = fsub double %122, %125
  store double %sub108, double* %x1i, align 8
  %126 = load double*, double** %a.addr, align 8
  %127 = load i32, i32* %j2, align 4
  %idxprom109 = sext i32 %127 to i64
  %arrayidx110 = getelementptr inbounds double, double* %126, i64 %idxprom109
  %128 = load double, double* %arrayidx110, align 8
  %129 = load double*, double** %a.addr, align 8
  %130 = load i32, i32* %j3, align 4
  %idxprom111 = sext i32 %130 to i64
  %arrayidx112 = getelementptr inbounds double, double* %129, i64 %idxprom111
  %131 = load double, double* %arrayidx112, align 8
  %add113 = fadd double %128, %131
  store double %add113, double* %x2r, align 8
  %132 = load double*, double** %a.addr, align 8
  %133 = load i32, i32* %j2, align 4
  %add114 = add nsw i32 %133, 1
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds double, double* %132, i64 %idxprom115
  %134 = load double, double* %arrayidx116, align 8
  %135 = load double*, double** %a.addr, align 8
  %136 = load i32, i32* %j3, align 4
  %add117 = add nsw i32 %136, 1
  %idxprom118 = sext i32 %add117 to i64
  %arrayidx119 = getelementptr inbounds double, double* %135, i64 %idxprom118
  %137 = load double, double* %arrayidx119, align 8
  %add120 = fadd double %134, %137
  store double %add120, double* %x2i, align 8
  %138 = load double*, double** %a.addr, align 8
  %139 = load i32, i32* %j2, align 4
  %idxprom121 = sext i32 %139 to i64
  %arrayidx122 = getelementptr inbounds double, double* %138, i64 %idxprom121
  %140 = load double, double* %arrayidx122, align 8
  %141 = load double*, double** %a.addr, align 8
  %142 = load i32, i32* %j3, align 4
  %idxprom123 = sext i32 %142 to i64
  %arrayidx124 = getelementptr inbounds double, double* %141, i64 %idxprom123
  %143 = load double, double* %arrayidx124, align 8
  %sub125 = fsub double %140, %143
  store double %sub125, double* %x3r, align 8
  %144 = load double*, double** %a.addr, align 8
  %145 = load i32, i32* %j2, align 4
  %add126 = add nsw i32 %145, 1
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds double, double* %144, i64 %idxprom127
  %146 = load double, double* %arrayidx128, align 8
  %147 = load double*, double** %a.addr, align 8
  %148 = load i32, i32* %j3, align 4
  %add129 = add nsw i32 %148, 1
  %idxprom130 = sext i32 %add129 to i64
  %arrayidx131 = getelementptr inbounds double, double* %147, i64 %idxprom130
  %149 = load double, double* %arrayidx131, align 8
  %sub132 = fsub double %146, %149
  store double %sub132, double* %x3i, align 8
  %150 = load double, double* %x0r, align 8
  %151 = load double, double* %x2r, align 8
  %add133 = fadd double %150, %151
  %152 = load double*, double** %a.addr, align 8
  %153 = load i32, i32* %j, align 4
  %idxprom134 = sext i32 %153 to i64
  %arrayidx135 = getelementptr inbounds double, double* %152, i64 %idxprom134
  store double %add133, double* %arrayidx135, align 8
  %154 = load double, double* %x0i, align 8
  %155 = load double, double* %x2i, align 8
  %add136 = fadd double %154, %155
  %156 = load double*, double** %a.addr, align 8
  %157 = load i32, i32* %j, align 4
  %add137 = add nsw i32 %157, 1
  %idxprom138 = sext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds double, double* %156, i64 %idxprom138
  store double %add136, double* %arrayidx139, align 8
  %158 = load double, double* %x2i, align 8
  %159 = load double, double* %x0i, align 8
  %sub140 = fsub double %158, %159
  %160 = load double*, double** %a.addr, align 8
  %161 = load i32, i32* %j2, align 4
  %idxprom141 = sext i32 %161 to i64
  %arrayidx142 = getelementptr inbounds double, double* %160, i64 %idxprom141
  store double %sub140, double* %arrayidx142, align 8
  %162 = load double, double* %x0r, align 8
  %163 = load double, double* %x2r, align 8
  %sub143 = fsub double %162, %163
  %164 = load double*, double** %a.addr, align 8
  %165 = load i32, i32* %j2, align 4
  %add144 = add nsw i32 %165, 1
  %idxprom145 = sext i32 %add144 to i64
  %arrayidx146 = getelementptr inbounds double, double* %164, i64 %idxprom145
  store double %sub143, double* %arrayidx146, align 8
  %166 = load double, double* %x1r, align 8
  %167 = load double, double* %x3i, align 8
  %sub147 = fsub double %166, %167
  store double %sub147, double* %x0r, align 8
  %168 = load double, double* %x1i, align 8
  %169 = load double, double* %x3r, align 8
  %add148 = fadd double %168, %169
  store double %add148, double* %x0i, align 8
  %170 = load double, double* %wk1r, align 8
  %171 = load double, double* %x0r, align 8
  %172 = load double, double* %x0i, align 8
  %sub149 = fsub double %171, %172
  %mul = fmul double %170, %sub149
  %173 = load double*, double** %a.addr, align 8
  %174 = load i32, i32* %j1, align 4
  %idxprom150 = sext i32 %174 to i64
  %arrayidx151 = getelementptr inbounds double, double* %173, i64 %idxprom150
  store double %mul, double* %arrayidx151, align 8
  %175 = load double, double* %wk1r, align 8
  %176 = load double, double* %x0r, align 8
  %177 = load double, double* %x0i, align 8
  %add152 = fadd double %176, %177
  %mul153 = fmul double %175, %add152
  %178 = load double*, double** %a.addr, align 8
  %179 = load i32, i32* %j1, align 4
  %add154 = add nsw i32 %179, 1
  %idxprom155 = sext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds double, double* %178, i64 %idxprom155
  store double %mul153, double* %arrayidx156, align 8
  %180 = load double, double* %x3i, align 8
  %181 = load double, double* %x1r, align 8
  %add157 = fadd double %180, %181
  store double %add157, double* %x0r, align 8
  %182 = load double, double* %x3r, align 8
  %183 = load double, double* %x1i, align 8
  %sub158 = fsub double %182, %183
  store double %sub158, double* %x0i, align 8
  %184 = load double, double* %wk1r, align 8
  %185 = load double, double* %x0i, align 8
  %186 = load double, double* %x0r, align 8
  %sub159 = fsub double %185, %186
  %mul160 = fmul double %184, %sub159
  %187 = load double*, double** %a.addr, align 8
  %188 = load i32, i32* %j3, align 4
  %idxprom161 = sext i32 %188 to i64
  %arrayidx162 = getelementptr inbounds double, double* %187, i64 %idxprom161
  store double %mul160, double* %arrayidx162, align 8
  %189 = load double, double* %wk1r, align 8
  %190 = load double, double* %x0i, align 8
  %191 = load double, double* %x0r, align 8
  %add163 = fadd double %190, %191
  %mul164 = fmul double %189, %add163
  %192 = load double*, double** %a.addr, align 8
  %193 = load i32, i32* %j3, align 4
  %add165 = add nsw i32 %193, 1
  %idxprom166 = sext i32 %add165 to i64
  %arrayidx167 = getelementptr inbounds double, double* %192, i64 %idxprom166
  store double %mul164, double* %arrayidx167, align 8
  br label %for.inc168

for.inc168:                                       ; preds = %for.body81
  %194 = load i32, i32* %j, align 4
  %add169 = add nsw i32 %194, 2
  store i32 %add169, i32* %j, align 4
  br label %for.cond78

for.end170:                                       ; preds = %for.cond78
  store i32 0, i32* %k1, align 4
  %195 = load i32, i32* %m, align 4
  %mul171 = mul nsw i32 2, %195
  store i32 %mul171, i32* %m2, align 4
  %196 = load i32, i32* %m2, align 4
  store i32 %196, i32* %k, align 4
  br label %for.cond172

for.cond172:                                      ; preds = %for.inc417, %for.end170
  %197 = load i32, i32* %k, align 4
  %198 = load i32, i32* %n.addr, align 4
  %cmp173 = icmp slt i32 %197, %198
  br i1 %cmp173, label %for.body174, label %for.end419

for.body174:                                      ; preds = %for.cond172
  %199 = load i32, i32* %k1, align 4
  %add175 = add nsw i32 %199, 2
  store i32 %add175, i32* %k1, align 4
  %200 = load i32, i32* %k1, align 4
  %mul176 = mul nsw i32 2, %200
  store i32 %mul176, i32* %k2, align 4
  %201 = load double*, double** %w.addr, align 8
  %202 = load i32, i32* %k1, align 4
  %idxprom177 = sext i32 %202 to i64
  %arrayidx178 = getelementptr inbounds double, double* %201, i64 %idxprom177
  %203 = load double, double* %arrayidx178, align 8
  store double %203, double* %wk2r, align 8
  %204 = load double*, double** %w.addr, align 8
  %205 = load i32, i32* %k1, align 4
  %add179 = add nsw i32 %205, 1
  %idxprom180 = sext i32 %add179 to i64
  %arrayidx181 = getelementptr inbounds double, double* %204, i64 %idxprom180
  %206 = load double, double* %arrayidx181, align 8
  store double %206, double* %wk2i, align 8
  %207 = load double*, double** %w.addr, align 8
  %208 = load i32, i32* %k2, align 4
  %idxprom182 = sext i32 %208 to i64
  %arrayidx183 = getelementptr inbounds double, double* %207, i64 %idxprom182
  %209 = load double, double* %arrayidx183, align 8
  store double %209, double* %wk1r, align 8
  %210 = load double*, double** %w.addr, align 8
  %211 = load i32, i32* %k2, align 4
  %add184 = add nsw i32 %211, 1
  %idxprom185 = sext i32 %add184 to i64
  %arrayidx186 = getelementptr inbounds double, double* %210, i64 %idxprom185
  %212 = load double, double* %arrayidx186, align 8
  store double %212, double* %wk1i, align 8
  %213 = load double, double* %wk1r, align 8
  %214 = load double, double* %wk2i, align 8
  %mul187 = fmul double 2.000000e+00, %214
  %215 = load double, double* %wk1i, align 8
  %mul188 = fmul double %mul187, %215
  %sub189 = fsub double %213, %mul188
  store double %sub189, double* %wk3r, align 8
  %216 = load double, double* %wk2i, align 8
  %mul190 = fmul double 2.000000e+00, %216
  %217 = load double, double* %wk1r, align 8
  %mul191 = fmul double %mul190, %217
  %218 = load double, double* %wk1i, align 8
  %sub192 = fsub double %mul191, %218
  store double %sub192, double* %wk3i, align 8
  %219 = load i32, i32* %k, align 4
  store i32 %219, i32* %j, align 4
  br label %for.cond193

for.cond193:                                      ; preds = %for.inc294, %for.body174
  %220 = load i32, i32* %j, align 4
  %221 = load i32, i32* %l.addr, align 4
  %222 = load i32, i32* %k, align 4
  %add194 = add nsw i32 %221, %222
  %cmp195 = icmp slt i32 %220, %add194
  br i1 %cmp195, label %for.body196, label %for.end296

for.body196:                                      ; preds = %for.cond193
  %223 = load i32, i32* %j, align 4
  %224 = load i32, i32* %l.addr, align 4
  %add197 = add nsw i32 %223, %224
  store i32 %add197, i32* %j1, align 4
  %225 = load i32, i32* %j1, align 4
  %226 = load i32, i32* %l.addr, align 4
  %add198 = add nsw i32 %225, %226
  store i32 %add198, i32* %j2, align 4
  %227 = load i32, i32* %j2, align 4
  %228 = load i32, i32* %l.addr, align 4
  %add199 = add nsw i32 %227, %228
  store i32 %add199, i32* %j3, align 4
  %229 = load double*, double** %a.addr, align 8
  %230 = load i32, i32* %j, align 4
  %idxprom200 = sext i32 %230 to i64
  %arrayidx201 = getelementptr inbounds double, double* %229, i64 %idxprom200
  %231 = load double, double* %arrayidx201, align 8
  %232 = load double*, double** %a.addr, align 8
  %233 = load i32, i32* %j1, align 4
  %idxprom202 = sext i32 %233 to i64
  %arrayidx203 = getelementptr inbounds double, double* %232, i64 %idxprom202
  %234 = load double, double* %arrayidx203, align 8
  %add204 = fadd double %231, %234
  store double %add204, double* %x0r, align 8
  %235 = load double*, double** %a.addr, align 8
  %236 = load i32, i32* %j, align 4
  %add205 = add nsw i32 %236, 1
  %idxprom206 = sext i32 %add205 to i64
  %arrayidx207 = getelementptr inbounds double, double* %235, i64 %idxprom206
  %237 = load double, double* %arrayidx207, align 8
  %238 = load double*, double** %a.addr, align 8
  %239 = load i32, i32* %j1, align 4
  %add208 = add nsw i32 %239, 1
  %idxprom209 = sext i32 %add208 to i64
  %arrayidx210 = getelementptr inbounds double, double* %238, i64 %idxprom209
  %240 = load double, double* %arrayidx210, align 8
  %add211 = fadd double %237, %240
  store double %add211, double* %x0i, align 8
  %241 = load double*, double** %a.addr, align 8
  %242 = load i32, i32* %j, align 4
  %idxprom212 = sext i32 %242 to i64
  %arrayidx213 = getelementptr inbounds double, double* %241, i64 %idxprom212
  %243 = load double, double* %arrayidx213, align 8
  %244 = load double*, double** %a.addr, align 8
  %245 = load i32, i32* %j1, align 4
  %idxprom214 = sext i32 %245 to i64
  %arrayidx215 = getelementptr inbounds double, double* %244, i64 %idxprom214
  %246 = load double, double* %arrayidx215, align 8
  %sub216 = fsub double %243, %246
  store double %sub216, double* %x1r, align 8
  %247 = load double*, double** %a.addr, align 8
  %248 = load i32, i32* %j, align 4
  %add217 = add nsw i32 %248, 1
  %idxprom218 = sext i32 %add217 to i64
  %arrayidx219 = getelementptr inbounds double, double* %247, i64 %idxprom218
  %249 = load double, double* %arrayidx219, align 8
  %250 = load double*, double** %a.addr, align 8
  %251 = load i32, i32* %j1, align 4
  %add220 = add nsw i32 %251, 1
  %idxprom221 = sext i32 %add220 to i64
  %arrayidx222 = getelementptr inbounds double, double* %250, i64 %idxprom221
  %252 = load double, double* %arrayidx222, align 8
  %sub223 = fsub double %249, %252
  store double %sub223, double* %x1i, align 8
  %253 = load double*, double** %a.addr, align 8
  %254 = load i32, i32* %j2, align 4
  %idxprom224 = sext i32 %254 to i64
  %arrayidx225 = getelementptr inbounds double, double* %253, i64 %idxprom224
  %255 = load double, double* %arrayidx225, align 8
  %256 = load double*, double** %a.addr, align 8
  %257 = load i32, i32* %j3, align 4
  %idxprom226 = sext i32 %257 to i64
  %arrayidx227 = getelementptr inbounds double, double* %256, i64 %idxprom226
  %258 = load double, double* %arrayidx227, align 8
  %add228 = fadd double %255, %258
  store double %add228, double* %x2r, align 8
  %259 = load double*, double** %a.addr, align 8
  %260 = load i32, i32* %j2, align 4
  %add229 = add nsw i32 %260, 1
  %idxprom230 = sext i32 %add229 to i64
  %arrayidx231 = getelementptr inbounds double, double* %259, i64 %idxprom230
  %261 = load double, double* %arrayidx231, align 8
  %262 = load double*, double** %a.addr, align 8
  %263 = load i32, i32* %j3, align 4
  %add232 = add nsw i32 %263, 1
  %idxprom233 = sext i32 %add232 to i64
  %arrayidx234 = getelementptr inbounds double, double* %262, i64 %idxprom233
  %264 = load double, double* %arrayidx234, align 8
  %add235 = fadd double %261, %264
  store double %add235, double* %x2i, align 8
  %265 = load double*, double** %a.addr, align 8
  %266 = load i32, i32* %j2, align 4
  %idxprom236 = sext i32 %266 to i64
  %arrayidx237 = getelementptr inbounds double, double* %265, i64 %idxprom236
  %267 = load double, double* %arrayidx237, align 8
  %268 = load double*, double** %a.addr, align 8
  %269 = load i32, i32* %j3, align 4
  %idxprom238 = sext i32 %269 to i64
  %arrayidx239 = getelementptr inbounds double, double* %268, i64 %idxprom238
  %270 = load double, double* %arrayidx239, align 8
  %sub240 = fsub double %267, %270
  store double %sub240, double* %x3r, align 8
  %271 = load double*, double** %a.addr, align 8
  %272 = load i32, i32* %j2, align 4
  %add241 = add nsw i32 %272, 1
  %idxprom242 = sext i32 %add241 to i64
  %arrayidx243 = getelementptr inbounds double, double* %271, i64 %idxprom242
  %273 = load double, double* %arrayidx243, align 8
  %274 = load double*, double** %a.addr, align 8
  %275 = load i32, i32* %j3, align 4
  %add244 = add nsw i32 %275, 1
  %idxprom245 = sext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds double, double* %274, i64 %idxprom245
  %276 = load double, double* %arrayidx246, align 8
  %sub247 = fsub double %273, %276
  store double %sub247, double* %x3i, align 8
  %277 = load double, double* %x0r, align 8
  %278 = load double, double* %x2r, align 8
  %add248 = fadd double %277, %278
  %279 = load double*, double** %a.addr, align 8
  %280 = load i32, i32* %j, align 4
  %idxprom249 = sext i32 %280 to i64
  %arrayidx250 = getelementptr inbounds double, double* %279, i64 %idxprom249
  store double %add248, double* %arrayidx250, align 8
  %281 = load double, double* %x0i, align 8
  %282 = load double, double* %x2i, align 8
  %add251 = fadd double %281, %282
  %283 = load double*, double** %a.addr, align 8
  %284 = load i32, i32* %j, align 4
  %add252 = add nsw i32 %284, 1
  %idxprom253 = sext i32 %add252 to i64
  %arrayidx254 = getelementptr inbounds double, double* %283, i64 %idxprom253
  store double %add251, double* %arrayidx254, align 8
  %285 = load double, double* %x2r, align 8
  %286 = load double, double* %x0r, align 8
  %sub255 = fsub double %286, %285
  store double %sub255, double* %x0r, align 8
  %287 = load double, double* %x2i, align 8
  %288 = load double, double* %x0i, align 8
  %sub256 = fsub double %288, %287
  store double %sub256, double* %x0i, align 8
  %289 = load double, double* %wk2r, align 8
  %290 = load double, double* %x0r, align 8
  %mul257 = fmul double %289, %290
  %291 = load double, double* %wk2i, align 8
  %292 = load double, double* %x0i, align 8
  %mul258 = fmul double %291, %292
  %sub259 = fsub double %mul257, %mul258
  %293 = load double*, double** %a.addr, align 8
  %294 = load i32, i32* %j2, align 4
  %idxprom260 = sext i32 %294 to i64
  %arrayidx261 = getelementptr inbounds double, double* %293, i64 %idxprom260
  store double %sub259, double* %arrayidx261, align 8
  %295 = load double, double* %wk2r, align 8
  %296 = load double, double* %x0i, align 8
  %mul262 = fmul double %295, %296
  %297 = load double, double* %wk2i, align 8
  %298 = load double, double* %x0r, align 8
  %mul263 = fmul double %297, %298
  %add264 = fadd double %mul262, %mul263
  %299 = load double*, double** %a.addr, align 8
  %300 = load i32, i32* %j2, align 4
  %add265 = add nsw i32 %300, 1
  %idxprom266 = sext i32 %add265 to i64
  %arrayidx267 = getelementptr inbounds double, double* %299, i64 %idxprom266
  store double %add264, double* %arrayidx267, align 8
  %301 = load double, double* %x1r, align 8
  %302 = load double, double* %x3i, align 8
  %sub268 = fsub double %301, %302
  store double %sub268, double* %x0r, align 8
  %303 = load double, double* %x1i, align 8
  %304 = load double, double* %x3r, align 8
  %add269 = fadd double %303, %304
  store double %add269, double* %x0i, align 8
  %305 = load double, double* %wk1r, align 8
  %306 = load double, double* %x0r, align 8
  %mul270 = fmul double %305, %306
  %307 = load double, double* %wk1i, align 8
  %308 = load double, double* %x0i, align 8
  %mul271 = fmul double %307, %308
  %sub272 = fsub double %mul270, %mul271
  %309 = load double*, double** %a.addr, align 8
  %310 = load i32, i32* %j1, align 4
  %idxprom273 = sext i32 %310 to i64
  %arrayidx274 = getelementptr inbounds double, double* %309, i64 %idxprom273
  store double %sub272, double* %arrayidx274, align 8
  %311 = load double, double* %wk1r, align 8
  %312 = load double, double* %x0i, align 8
  %mul275 = fmul double %311, %312
  %313 = load double, double* %wk1i, align 8
  %314 = load double, double* %x0r, align 8
  %mul276 = fmul double %313, %314
  %add277 = fadd double %mul275, %mul276
  %315 = load double*, double** %a.addr, align 8
  %316 = load i32, i32* %j1, align 4
  %add278 = add nsw i32 %316, 1
  %idxprom279 = sext i32 %add278 to i64
  %arrayidx280 = getelementptr inbounds double, double* %315, i64 %idxprom279
  store double %add277, double* %arrayidx280, align 8
  %317 = load double, double* %x1r, align 8
  %318 = load double, double* %x3i, align 8
  %add281 = fadd double %317, %318
  store double %add281, double* %x0r, align 8
  %319 = load double, double* %x1i, align 8
  %320 = load double, double* %x3r, align 8
  %sub282 = fsub double %319, %320
  store double %sub282, double* %x0i, align 8
  %321 = load double, double* %wk3r, align 8
  %322 = load double, double* %x0r, align 8
  %mul283 = fmul double %321, %322
  %323 = load double, double* %wk3i, align 8
  %324 = load double, double* %x0i, align 8
  %mul284 = fmul double %323, %324
  %sub285 = fsub double %mul283, %mul284
  %325 = load double*, double** %a.addr, align 8
  %326 = load i32, i32* %j3, align 4
  %idxprom286 = sext i32 %326 to i64
  %arrayidx287 = getelementptr inbounds double, double* %325, i64 %idxprom286
  store double %sub285, double* %arrayidx287, align 8
  %327 = load double, double* %wk3r, align 8
  %328 = load double, double* %x0i, align 8
  %mul288 = fmul double %327, %328
  %329 = load double, double* %wk3i, align 8
  %330 = load double, double* %x0r, align 8
  %mul289 = fmul double %329, %330
  %add290 = fadd double %mul288, %mul289
  %331 = load double*, double** %a.addr, align 8
  %332 = load i32, i32* %j3, align 4
  %add291 = add nsw i32 %332, 1
  %idxprom292 = sext i32 %add291 to i64
  %arrayidx293 = getelementptr inbounds double, double* %331, i64 %idxprom292
  store double %add290, double* %arrayidx293, align 8
  br label %for.inc294

for.inc294:                                       ; preds = %for.body196
  %333 = load i32, i32* %j, align 4
  %add295 = add nsw i32 %333, 2
  store i32 %add295, i32* %j, align 4
  br label %for.cond193

for.end296:                                       ; preds = %for.cond193
  %334 = load double*, double** %w.addr, align 8
  %335 = load i32, i32* %k2, align 4
  %add297 = add nsw i32 %335, 2
  %idxprom298 = sext i32 %add297 to i64
  %arrayidx299 = getelementptr inbounds double, double* %334, i64 %idxprom298
  %336 = load double, double* %arrayidx299, align 8
  store double %336, double* %wk1r, align 8
  %337 = load double*, double** %w.addr, align 8
  %338 = load i32, i32* %k2, align 4
  %add300 = add nsw i32 %338, 3
  %idxprom301 = sext i32 %add300 to i64
  %arrayidx302 = getelementptr inbounds double, double* %337, i64 %idxprom301
  %339 = load double, double* %arrayidx302, align 8
  store double %339, double* %wk1i, align 8
  %340 = load double, double* %wk1r, align 8
  %341 = load double, double* %wk2r, align 8
  %mul303 = fmul double 2.000000e+00, %341
  %342 = load double, double* %wk1i, align 8
  %mul304 = fmul double %mul303, %342
  %sub305 = fsub double %340, %mul304
  store double %sub305, double* %wk3r, align 8
  %343 = load double, double* %wk2r, align 8
  %mul306 = fmul double 2.000000e+00, %343
  %344 = load double, double* %wk1r, align 8
  %mul307 = fmul double %mul306, %344
  %345 = load double, double* %wk1i, align 8
  %sub308 = fsub double %mul307, %345
  store double %sub308, double* %wk3i, align 8
  %346 = load i32, i32* %k, align 4
  %347 = load i32, i32* %m, align 4
  %add309 = add nsw i32 %346, %347
  store i32 %add309, i32* %j, align 4
  br label %for.cond310

for.cond310:                                      ; preds = %for.inc414, %for.end296
  %348 = load i32, i32* %j, align 4
  %349 = load i32, i32* %l.addr, align 4
  %350 = load i32, i32* %k, align 4
  %351 = load i32, i32* %m, align 4
  %add311 = add nsw i32 %350, %351
  %add312 = add nsw i32 %349, %add311
  %cmp313 = icmp slt i32 %348, %add312
  br i1 %cmp313, label %for.body314, label %for.end416

for.body314:                                      ; preds = %for.cond310
  %352 = load i32, i32* %j, align 4
  %353 = load i32, i32* %l.addr, align 4
  %add315 = add nsw i32 %352, %353
  store i32 %add315, i32* %j1, align 4
  %354 = load i32, i32* %j1, align 4
  %355 = load i32, i32* %l.addr, align 4
  %add316 = add nsw i32 %354, %355
  store i32 %add316, i32* %j2, align 4
  %356 = load i32, i32* %j2, align 4
  %357 = load i32, i32* %l.addr, align 4
  %add317 = add nsw i32 %356, %357
  store i32 %add317, i32* %j3, align 4
  %358 = load double*, double** %a.addr, align 8
  %359 = load i32, i32* %j, align 4
  %idxprom318 = sext i32 %359 to i64
  %arrayidx319 = getelementptr inbounds double, double* %358, i64 %idxprom318
  %360 = load double, double* %arrayidx319, align 8
  %361 = load double*, double** %a.addr, align 8
  %362 = load i32, i32* %j1, align 4
  %idxprom320 = sext i32 %362 to i64
  %arrayidx321 = getelementptr inbounds double, double* %361, i64 %idxprom320
  %363 = load double, double* %arrayidx321, align 8
  %add322 = fadd double %360, %363
  store double %add322, double* %x0r, align 8
  %364 = load double*, double** %a.addr, align 8
  %365 = load i32, i32* %j, align 4
  %add323 = add nsw i32 %365, 1
  %idxprom324 = sext i32 %add323 to i64
  %arrayidx325 = getelementptr inbounds double, double* %364, i64 %idxprom324
  %366 = load double, double* %arrayidx325, align 8
  %367 = load double*, double** %a.addr, align 8
  %368 = load i32, i32* %j1, align 4
  %add326 = add nsw i32 %368, 1
  %idxprom327 = sext i32 %add326 to i64
  %arrayidx328 = getelementptr inbounds double, double* %367, i64 %idxprom327
  %369 = load double, double* %arrayidx328, align 8
  %add329 = fadd double %366, %369
  store double %add329, double* %x0i, align 8
  %370 = load double*, double** %a.addr, align 8
  %371 = load i32, i32* %j, align 4
  %idxprom330 = sext i32 %371 to i64
  %arrayidx331 = getelementptr inbounds double, double* %370, i64 %idxprom330
  %372 = load double, double* %arrayidx331, align 8
  %373 = load double*, double** %a.addr, align 8
  %374 = load i32, i32* %j1, align 4
  %idxprom332 = sext i32 %374 to i64
  %arrayidx333 = getelementptr inbounds double, double* %373, i64 %idxprom332
  %375 = load double, double* %arrayidx333, align 8
  %sub334 = fsub double %372, %375
  store double %sub334, double* %x1r, align 8
  %376 = load double*, double** %a.addr, align 8
  %377 = load i32, i32* %j, align 4
  %add335 = add nsw i32 %377, 1
  %idxprom336 = sext i32 %add335 to i64
  %arrayidx337 = getelementptr inbounds double, double* %376, i64 %idxprom336
  %378 = load double, double* %arrayidx337, align 8
  %379 = load double*, double** %a.addr, align 8
  %380 = load i32, i32* %j1, align 4
  %add338 = add nsw i32 %380, 1
  %idxprom339 = sext i32 %add338 to i64
  %arrayidx340 = getelementptr inbounds double, double* %379, i64 %idxprom339
  %381 = load double, double* %arrayidx340, align 8
  %sub341 = fsub double %378, %381
  store double %sub341, double* %x1i, align 8
  %382 = load double*, double** %a.addr, align 8
  %383 = load i32, i32* %j2, align 4
  %idxprom342 = sext i32 %383 to i64
  %arrayidx343 = getelementptr inbounds double, double* %382, i64 %idxprom342
  %384 = load double, double* %arrayidx343, align 8
  %385 = load double*, double** %a.addr, align 8
  %386 = load i32, i32* %j3, align 4
  %idxprom344 = sext i32 %386 to i64
  %arrayidx345 = getelementptr inbounds double, double* %385, i64 %idxprom344
  %387 = load double, double* %arrayidx345, align 8
  %add346 = fadd double %384, %387
  store double %add346, double* %x2r, align 8
  %388 = load double*, double** %a.addr, align 8
  %389 = load i32, i32* %j2, align 4
  %add347 = add nsw i32 %389, 1
  %idxprom348 = sext i32 %add347 to i64
  %arrayidx349 = getelementptr inbounds double, double* %388, i64 %idxprom348
  %390 = load double, double* %arrayidx349, align 8
  %391 = load double*, double** %a.addr, align 8
  %392 = load i32, i32* %j3, align 4
  %add350 = add nsw i32 %392, 1
  %idxprom351 = sext i32 %add350 to i64
  %arrayidx352 = getelementptr inbounds double, double* %391, i64 %idxprom351
  %393 = load double, double* %arrayidx352, align 8
  %add353 = fadd double %390, %393
  store double %add353, double* %x2i, align 8
  %394 = load double*, double** %a.addr, align 8
  %395 = load i32, i32* %j2, align 4
  %idxprom354 = sext i32 %395 to i64
  %arrayidx355 = getelementptr inbounds double, double* %394, i64 %idxprom354
  %396 = load double, double* %arrayidx355, align 8
  %397 = load double*, double** %a.addr, align 8
  %398 = load i32, i32* %j3, align 4
  %idxprom356 = sext i32 %398 to i64
  %arrayidx357 = getelementptr inbounds double, double* %397, i64 %idxprom356
  %399 = load double, double* %arrayidx357, align 8
  %sub358 = fsub double %396, %399
  store double %sub358, double* %x3r, align 8
  %400 = load double*, double** %a.addr, align 8
  %401 = load i32, i32* %j2, align 4
  %add359 = add nsw i32 %401, 1
  %idxprom360 = sext i32 %add359 to i64
  %arrayidx361 = getelementptr inbounds double, double* %400, i64 %idxprom360
  %402 = load double, double* %arrayidx361, align 8
  %403 = load double*, double** %a.addr, align 8
  %404 = load i32, i32* %j3, align 4
  %add362 = add nsw i32 %404, 1
  %idxprom363 = sext i32 %add362 to i64
  %arrayidx364 = getelementptr inbounds double, double* %403, i64 %idxprom363
  %405 = load double, double* %arrayidx364, align 8
  %sub365 = fsub double %402, %405
  store double %sub365, double* %x3i, align 8
  %406 = load double, double* %x0r, align 8
  %407 = load double, double* %x2r, align 8
  %add366 = fadd double %406, %407
  %408 = load double*, double** %a.addr, align 8
  %409 = load i32, i32* %j, align 4
  %idxprom367 = sext i32 %409 to i64
  %arrayidx368 = getelementptr inbounds double, double* %408, i64 %idxprom367
  store double %add366, double* %arrayidx368, align 8
  %410 = load double, double* %x0i, align 8
  %411 = load double, double* %x2i, align 8
  %add369 = fadd double %410, %411
  %412 = load double*, double** %a.addr, align 8
  %413 = load i32, i32* %j, align 4
  %add370 = add nsw i32 %413, 1
  %idxprom371 = sext i32 %add370 to i64
  %arrayidx372 = getelementptr inbounds double, double* %412, i64 %idxprom371
  store double %add369, double* %arrayidx372, align 8
  %414 = load double, double* %x2r, align 8
  %415 = load double, double* %x0r, align 8
  %sub373 = fsub double %415, %414
  store double %sub373, double* %x0r, align 8
  %416 = load double, double* %x2i, align 8
  %417 = load double, double* %x0i, align 8
  %sub374 = fsub double %417, %416
  store double %sub374, double* %x0i, align 8
  %418 = load double, double* %wk2i, align 8
  %sub375 = fsub double -0.000000e+00, %418
  %419 = load double, double* %x0r, align 8
  %mul376 = fmul double %sub375, %419
  %420 = load double, double* %wk2r, align 8
  %421 = load double, double* %x0i, align 8
  %mul377 = fmul double %420, %421
  %sub378 = fsub double %mul376, %mul377
  %422 = load double*, double** %a.addr, align 8
  %423 = load i32, i32* %j2, align 4
  %idxprom379 = sext i32 %423 to i64
  %arrayidx380 = getelementptr inbounds double, double* %422, i64 %idxprom379
  store double %sub378, double* %arrayidx380, align 8
  %424 = load double, double* %wk2i, align 8
  %sub381 = fsub double -0.000000e+00, %424
  %425 = load double, double* %x0i, align 8
  %mul382 = fmul double %sub381, %425
  %426 = load double, double* %wk2r, align 8
  %427 = load double, double* %x0r, align 8
  %mul383 = fmul double %426, %427
  %add384 = fadd double %mul382, %mul383
  %428 = load double*, double** %a.addr, align 8
  %429 = load i32, i32* %j2, align 4
  %add385 = add nsw i32 %429, 1
  %idxprom386 = sext i32 %add385 to i64
  %arrayidx387 = getelementptr inbounds double, double* %428, i64 %idxprom386
  store double %add384, double* %arrayidx387, align 8
  %430 = load double, double* %x1r, align 8
  %431 = load double, double* %x3i, align 8
  %sub388 = fsub double %430, %431
  store double %sub388, double* %x0r, align 8
  %432 = load double, double* %x1i, align 8
  %433 = load double, double* %x3r, align 8
  %add389 = fadd double %432, %433
  store double %add389, double* %x0i, align 8
  %434 = load double, double* %wk1r, align 8
  %435 = load double, double* %x0r, align 8
  %mul390 = fmul double %434, %435
  %436 = load double, double* %wk1i, align 8
  %437 = load double, double* %x0i, align 8
  %mul391 = fmul double %436, %437
  %sub392 = fsub double %mul390, %mul391
  %438 = load double*, double** %a.addr, align 8
  %439 = load i32, i32* %j1, align 4
  %idxprom393 = sext i32 %439 to i64
  %arrayidx394 = getelementptr inbounds double, double* %438, i64 %idxprom393
  store double %sub392, double* %arrayidx394, align 8
  %440 = load double, double* %wk1r, align 8
  %441 = load double, double* %x0i, align 8
  %mul395 = fmul double %440, %441
  %442 = load double, double* %wk1i, align 8
  %443 = load double, double* %x0r, align 8
  %mul396 = fmul double %442, %443
  %add397 = fadd double %mul395, %mul396
  %444 = load double*, double** %a.addr, align 8
  %445 = load i32, i32* %j1, align 4
  %add398 = add nsw i32 %445, 1
  %idxprom399 = sext i32 %add398 to i64
  %arrayidx400 = getelementptr inbounds double, double* %444, i64 %idxprom399
  store double %add397, double* %arrayidx400, align 8
  %446 = load double, double* %x1r, align 8
  %447 = load double, double* %x3i, align 8
  %add401 = fadd double %446, %447
  store double %add401, double* %x0r, align 8
  %448 = load double, double* %x1i, align 8
  %449 = load double, double* %x3r, align 8
  %sub402 = fsub double %448, %449
  store double %sub402, double* %x0i, align 8
  %450 = load double, double* %wk3r, align 8
  %451 = load double, double* %x0r, align 8
  %mul403 = fmul double %450, %451
  %452 = load double, double* %wk3i, align 8
  %453 = load double, double* %x0i, align 8
  %mul404 = fmul double %452, %453
  %sub405 = fsub double %mul403, %mul404
  %454 = load double*, double** %a.addr, align 8
  %455 = load i32, i32* %j3, align 4
  %idxprom406 = sext i32 %455 to i64
  %arrayidx407 = getelementptr inbounds double, double* %454, i64 %idxprom406
  store double %sub405, double* %arrayidx407, align 8
  %456 = load double, double* %wk3r, align 8
  %457 = load double, double* %x0i, align 8
  %mul408 = fmul double %456, %457
  %458 = load double, double* %wk3i, align 8
  %459 = load double, double* %x0r, align 8
  %mul409 = fmul double %458, %459
  %add410 = fadd double %mul408, %mul409
  %460 = load double*, double** %a.addr, align 8
  %461 = load i32, i32* %j3, align 4
  %add411 = add nsw i32 %461, 1
  %idxprom412 = sext i32 %add411 to i64
  %arrayidx413 = getelementptr inbounds double, double* %460, i64 %idxprom412
  store double %add410, double* %arrayidx413, align 8
  br label %for.inc414

for.inc414:                                       ; preds = %for.body314
  %462 = load i32, i32* %j, align 4
  %add415 = add nsw i32 %462, 2
  store i32 %add415, i32* %j, align 4
  br label %for.cond310

for.end416:                                       ; preds = %for.cond310
  br label %for.inc417

for.inc417:                                       ; preds = %for.end416
  %463 = load i32, i32* %m2, align 4
  %464 = load i32, i32* %k, align 4
  %add418 = add nsw i32 %464, %463
  store i32 %add418, i32* %k, align 4
  br label %for.cond172

for.end419:                                       ; preds = %for.cond172
  ret void
}

; Function Attrs: nounwind
declare double @atan(double) #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
