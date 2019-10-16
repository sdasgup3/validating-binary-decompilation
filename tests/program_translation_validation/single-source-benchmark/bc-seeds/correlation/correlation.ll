; ModuleID = 'correlation/correlation.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.anon = type { double }

@polybench_papi_counters_threadid = global i32 0, align 4
@polybench_program_total_flops = global double 0.000000e+00, align 8
@polybench_t_start = common global double 0.000000e+00, align 8
@polybench_t_end = common global double 0.000000e+00, align 8
@polybench_c_start = common global i64 0, align 8
@polybench_c_end = common global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @polybench_flush_cache() #0 {
entry:
  %cs = alloca i32, align 4
  %flush = alloca double*, align 8
  %i = alloca i32, align 4
  %tmp = alloca double, align 8
  store i32 4194560, i32* %cs, align 4
  %0 = load i32, i32* %cs, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #5
  %1 = bitcast i8* %call to double*
  store double* %1, double** %flush, align 8
  store double 0.000000e+00, double* %tmp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %cs, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double*, double** %flush, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load double, double* %tmp, align 8
  %add = fadd double %7, %6
  store double %add, double* %tmp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load double*, double** %flush, align 8
  %10 = bitcast double* %9 to i8*
  call void @free(i8* %10) #5
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @polybench_prepare_instruments() #0 {
entry:
  call void @polybench_flush_cache()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @polybench_timer_start() #0 {
entry:
  call void @polybench_prepare_instruments()
  %call = call double @rtclock()
  store double %call, double* @polybench_t_start, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal double @rtclock() #0 {
entry:
  ret double 0.000000e+00
}

; Function Attrs: noinline nounwind uwtable
define void @polybench_timer_stop() #0 {
entry:
  %call = call double @rtclock()
  store double %call, double* @polybench_t_end, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @polybench_timer_print() #0 {
entry:
  %0 = load double, double* @polybench_t_end, align 8
  %1 = load double, double* @polybench_t_start, align 8
  %sub = fsub double %0, %1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), double %sub)
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define i8* @polybench_alloc_data(i64 %n, i32 %elt_size) #0 {
entry:
  %n.addr = alloca i64, align 8
  %elt_size.addr = alloca i32, align 4
  %val = alloca i64, align 8
  %ret = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  store i32 %elt_size, i32* %elt_size.addr, align 4
  %0 = load i64, i64* %n.addr, align 8
  store i64 %0, i64* %val, align 8
  %1 = load i32, i32* %elt_size.addr, align 4
  %conv = sext i32 %1 to i64
  %2 = load i64, i64* %val, align 8
  %mul = mul i64 %2, %conv
  store i64 %mul, i64* %val, align 8
  %3 = load i64, i64* %val, align 8
  %call = call i8* @xmalloc(i64 %3)
  store i8* %call, i8** %ret, align 8
  %4 = load i8*, i8** %ret, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @xmalloc(i64 %num) #0 {
entry:
  %num.addr = alloca i64, align 8
  %new = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i64 %num, i64* %num.addr, align 8
  store i8* null, i8** %new, align 8
  %0 = load i64, i64* %num.addr, align 8
  %call = call i32 @posix_memalign(i8** %new, i64 32, i64 %0) #5
  store i32 %call, i32* %ret, align 4
  %1 = load i8*, i8** %new, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %new, align 8
  ret i8* %4
}

; Function Attrs: nounwind
declare i32 @posix_memalign(i8**, i64, i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %float_n = alloca double, align 8
  %data = alloca [1000 x [1000 x double]]*, align 8
  %symmat = alloca [1000 x [1000 x double]]*, align 8
  %symmat_StrictFP = alloca [1000 x [1000 x double]]*, align 8
  %mean = alloca [1000 x double]*, align 8
  %stddev = alloca [1000 x double]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1000, i32* %n, align 4
  store i32 1000, i32* %m, align 4
  %call = call i8* @polybench_alloc_data(i64 1000000, i32 8)
  %0 = bitcast i8* %call to [1000 x [1000 x double]]*
  store [1000 x [1000 x double]]* %0, [1000 x [1000 x double]]** %data, align 8
  %call1 = call i8* @polybench_alloc_data(i64 1000000, i32 8)
  %1 = bitcast i8* %call1 to [1000 x [1000 x double]]*
  store [1000 x [1000 x double]]* %1, [1000 x [1000 x double]]** %symmat, align 8
  %call2 = call i8* @polybench_alloc_data(i64 1000000, i32 8)
  %2 = bitcast i8* %call2 to [1000 x [1000 x double]]*
  store [1000 x [1000 x double]]* %2, [1000 x [1000 x double]]** %symmat_StrictFP, align 8
  %call3 = call i8* @polybench_alloc_data(i64 1000, i32 8)
  %3 = bitcast i8* %call3 to [1000 x double]*
  store [1000 x double]* %3, [1000 x double]** %mean, align 8
  %call4 = call i8* @polybench_alloc_data(i64 1000, i32 8)
  %4 = bitcast i8* %call4 to [1000 x double]*
  store [1000 x double]* %4, [1000 x double]** %stddev, align 8
  %5 = load i32, i32* %m, align 4
  %6 = load i32, i32* %n, align 4
  %7 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %data, align 8
  %arraydecay = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %7, i32 0, i32 0
  call void @init_array(i32 %5, i32 %6, double* %float_n, [1000 x double]* %arraydecay)
  %8 = load i32, i32* %m, align 4
  %9 = load i32, i32* %n, align 4
  %10 = load double, double* %float_n, align 8
  %11 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %data, align 8
  %arraydecay5 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %11, i32 0, i32 0
  %12 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %symmat, align 8
  %arraydecay6 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %12, i32 0, i32 0
  %13 = load [1000 x double]*, [1000 x double]** %mean, align 8
  %arraydecay7 = getelementptr inbounds [1000 x double], [1000 x double]* %13, i32 0, i32 0
  %14 = load [1000 x double]*, [1000 x double]** %stddev, align 8
  %arraydecay8 = getelementptr inbounds [1000 x double], [1000 x double]* %14, i32 0, i32 0
  call void @kernel_correlation(i32 %8, i32 %9, double %10, [1000 x double]* %arraydecay5, [1000 x double]* %arraydecay6, double* %arraydecay7, double* %arraydecay8)
  %15 = load i32, i32* %m, align 4
  %16 = load i32, i32* %n, align 4
  %17 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %data, align 8
  %arraydecay9 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %17, i32 0, i32 0
  call void @init_array(i32 %15, i32 %16, double* %float_n, [1000 x double]* %arraydecay9)
  %18 = load i32, i32* %m, align 4
  %19 = load i32, i32* %n, align 4
  %20 = load double, double* %float_n, align 8
  %21 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %data, align 8
  %arraydecay10 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %21, i32 0, i32 0
  %22 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %symmat_StrictFP, align 8
  %arraydecay11 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %22, i32 0, i32 0
  %23 = load [1000 x double]*, [1000 x double]** %mean, align 8
  %arraydecay12 = getelementptr inbounds [1000 x double], [1000 x double]* %23, i32 0, i32 0
  %24 = load [1000 x double]*, [1000 x double]** %stddev, align 8
  %arraydecay13 = getelementptr inbounds [1000 x double], [1000 x double]* %24, i32 0, i32 0
  call void @kernel_correlation(i32 %18, i32 %19, double %20, [1000 x double]* %arraydecay10, [1000 x double]* %arraydecay11, double* %arraydecay12, double* %arraydecay13)
  %25 = load i32, i32* %m, align 4
  %26 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %symmat, align 8
  %arraydecay14 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %26, i32 0, i32 0
  %27 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %symmat_StrictFP, align 8
  %arraydecay15 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %27, i32 0, i32 0
  %call16 = call i32 @check_FP(i32 %25, [1000 x double]* %arraydecay14, [1000 x double]* %arraydecay15)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %28 = load i32, i32* %m, align 4
  %29 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %symmat_StrictFP, align 8
  %arraydecay17 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %29, i32 0, i32 0
  call void @print_array(i32 %28, [1000 x double]* %arraydecay17)
  %30 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %data, align 8
  %31 = bitcast [1000 x [1000 x double]]* %30 to i8*
  call void @free(i8* %31) #5
  %32 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %symmat, align 8
  %33 = bitcast [1000 x [1000 x double]]* %32 to i8*
  call void @free(i8* %33) #5
  %34 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %symmat_StrictFP, align 8
  %35 = bitcast [1000 x [1000 x double]]* %34 to i8*
  call void @free(i8* %35) #5
  %36 = load [1000 x double]*, [1000 x double]** %mean, align 8
  %37 = bitcast [1000 x double]* %36 to i8*
  call void @free(i8* %37) #5
  %38 = load [1000 x double]*, [1000 x double]** %stddev, align 8
  %39 = bitcast [1000 x double]* %38 to i8*
  call void @free(i8* %39) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 %m, i32 %n, double* %float_n, [1000 x double]* %data) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %float_n.addr = alloca double*, align 8
  %data.addr = alloca [1000 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store double* %float_n, double** %float_n.addr, align 8
  store [1000 x double]* %data, [1000 x double]** %data.addr, align 8
  %0 = load double*, double** %float_n.addr, align 8
  store double 1.200000e+00, double* %0, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %5 = load i32, i32* %i, align 4
  %conv = sitofp i32 %5 to double
  %6 = load i32, i32* %j, align 4
  %conv4 = sitofp i32 %6 to double
  %mul = fmul double %conv, %conv4
  %div = fdiv double %mul, 1.000000e+03
  %7 = load [1000 x double]*, [1000 x double]** %data.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [1000 x double], [1000 x double]* %7, i64 %idxprom
  %9 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx, i64 0, i64 %idxprom5
  store double %div, double* %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %11, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_correlation(i32 %m, i32 %n, double %float_n, [1000 x double]* %data, [1000 x double]* %symmat, double* %mean, double* %stddev) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %float_n.addr = alloca double, align 8
  %data.addr = alloca [1000 x double]*, align 8
  %symmat.addr = alloca [1000 x double]*, align 8
  %mean.addr = alloca double*, align 8
  %stddev.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %eps = alloca double, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store double %float_n, double* %float_n.addr, align 8
  store [1000 x double]* %data, [1000 x double]** %data.addr, align 8
  store [1000 x double]* %symmat, [1000 x double]** %symmat.addr, align 8
  store double* %mean, double** %mean.addr, align 8
  store double* %stddev, double** %stddev.addr, align 8
  store double 0x3FB99999A0000000, double* %eps, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  %2 = load double*, double** %mean.addr, align 8
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds double, double* %2, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load [1000 x double]*, [1000 x double]** %data.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [1000 x double], [1000 x double]* %6, i64 %idxprom4
  %8 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx5, i64 0, i64 %idxprom6
  %9 = load double, double* %arrayidx7, align 8
  %10 = load double*, double** %mean.addr, align 8
  %11 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds double, double* %10, i64 %idxprom8
  %12 = load double, double* %arrayidx9, align 8
  %add = fadd double %12, %9
  store double %add, double* %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %14 = load double, double* %float_n.addr, align 8
  %15 = load double*, double** %mean.addr, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds double, double* %15, i64 %idxprom10
  %17 = load double, double* %arrayidx11, align 8
  %div = fdiv double %17, %14
  store double %div, double* %arrayidx11, align 8
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %18 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %18, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond

for.end14:                                        ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc56, %for.end14
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %m.addr, align 4
  %cmp16 = icmp slt i32 %19, %20
  br i1 %cmp16, label %for.body17, label %for.end58

for.body17:                                       ; preds = %for.cond15
  %21 = load double*, double** %stddev.addr, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds double, double* %21, i64 %idxprom18
  store double 0.000000e+00, double* %arrayidx19, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.body17
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %n.addr, align 4
  %cmp21 = icmp slt i32 %23, %24
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  %25 = load [1000 x double]*, [1000 x double]** %data.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %26 to i64
  %arrayidx24 = getelementptr inbounds [1000 x double], [1000 x double]* %25, i64 %idxprom23
  %27 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %27 to i64
  %arrayidx26 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx24, i64 0, i64 %idxprom25
  %28 = load double, double* %arrayidx26, align 8
  %29 = load double*, double** %mean.addr, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %30 to i64
  %arrayidx28 = getelementptr inbounds double, double* %29, i64 %idxprom27
  %31 = load double, double* %arrayidx28, align 8
  %sub = fsub double %28, %31
  %32 = load [1000 x double]*, [1000 x double]** %data.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %33 to i64
  %arrayidx30 = getelementptr inbounds [1000 x double], [1000 x double]* %32, i64 %idxprom29
  %34 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %34 to i64
  %arrayidx32 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx30, i64 0, i64 %idxprom31
  %35 = load double, double* %arrayidx32, align 8
  %36 = load double*, double** %mean.addr, align 8
  %37 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %37 to i64
  %arrayidx34 = getelementptr inbounds double, double* %36, i64 %idxprom33
  %38 = load double, double* %arrayidx34, align 8
  %sub35 = fsub double %35, %38
  %mul = fmul double %sub, %sub35
  %39 = load double*, double** %stddev.addr, align 8
  %40 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %40 to i64
  %arrayidx37 = getelementptr inbounds double, double* %39, i64 %idxprom36
  %41 = load double, double* %arrayidx37, align 8
  %add38 = fadd double %41, %mul
  store double %add38, double* %arrayidx37, align 8
  br label %for.inc39

for.inc39:                                        ; preds = %for.body22
  %42 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %42, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond20

for.end41:                                        ; preds = %for.cond20
  %43 = load double, double* %float_n.addr, align 8
  %44 = load double*, double** %stddev.addr, align 8
  %45 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %45 to i64
  %arrayidx43 = getelementptr inbounds double, double* %44, i64 %idxprom42
  %46 = load double, double* %arrayidx43, align 8
  %div44 = fdiv double %46, %43
  store double %div44, double* %arrayidx43, align 8
  %47 = load double*, double** %stddev.addr, align 8
  %48 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %48 to i64
  %arrayidx46 = getelementptr inbounds double, double* %47, i64 %idxprom45
  %49 = load double, double* %arrayidx46, align 8
  %call = call double @sqrt(double %49) #5
  %50 = load double*, double** %stddev.addr, align 8
  %51 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %51 to i64
  %arrayidx48 = getelementptr inbounds double, double* %50, i64 %idxprom47
  store double %call, double* %arrayidx48, align 8
  %52 = load double*, double** %stddev.addr, align 8
  %53 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %53 to i64
  %arrayidx50 = getelementptr inbounds double, double* %52, i64 %idxprom49
  %54 = load double, double* %arrayidx50, align 8
  %55 = load double, double* %eps, align 8
  %cmp51 = fcmp ole double %54, %55
  br i1 %cmp51, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end41
  br label %cond.end

cond.false:                                       ; preds = %for.end41
  %56 = load double*, double** %stddev.addr, align 8
  %57 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %57 to i64
  %arrayidx53 = getelementptr inbounds double, double* %56, i64 %idxprom52
  %58 = load double, double* %arrayidx53, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 1.000000e+00, %cond.true ], [ %58, %cond.false ]
  %59 = load double*, double** %stddev.addr, align 8
  %60 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %60 to i64
  %arrayidx55 = getelementptr inbounds double, double* %59, i64 %idxprom54
  store double %cond, double* %arrayidx55, align 8
  br label %for.inc56

for.inc56:                                        ; preds = %cond.end
  %61 = load i32, i32* %j, align 4
  %inc57 = add nsw i32 %61, 1
  store i32 %inc57, i32* %j, align 4
  br label %for.cond15

for.end58:                                        ; preds = %for.cond15
  store i32 0, i32* %i, align 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc84, %for.end58
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %n.addr, align 4
  %cmp60 = icmp slt i32 %62, %63
  br i1 %cmp60, label %for.body61, label %for.end86

for.body61:                                       ; preds = %for.cond59
  store i32 0, i32* %j, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc81, %for.body61
  %64 = load i32, i32* %j, align 4
  %65 = load i32, i32* %m.addr, align 4
  %cmp63 = icmp slt i32 %64, %65
  br i1 %cmp63, label %for.body64, label %for.end83

for.body64:                                       ; preds = %for.cond62
  %66 = load double*, double** %mean.addr, align 8
  %67 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %67 to i64
  %arrayidx66 = getelementptr inbounds double, double* %66, i64 %idxprom65
  %68 = load double, double* %arrayidx66, align 8
  %69 = load [1000 x double]*, [1000 x double]** %data.addr, align 8
  %70 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %70 to i64
  %arrayidx68 = getelementptr inbounds [1000 x double], [1000 x double]* %69, i64 %idxprom67
  %71 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %71 to i64
  %arrayidx70 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx68, i64 0, i64 %idxprom69
  %72 = load double, double* %arrayidx70, align 8
  %sub71 = fsub double %72, %68
  store double %sub71, double* %arrayidx70, align 8
  %73 = load double, double* %float_n.addr, align 8
  %call72 = call double @sqrt(double %73) #5
  %74 = load double*, double** %stddev.addr, align 8
  %75 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %75 to i64
  %arrayidx74 = getelementptr inbounds double, double* %74, i64 %idxprom73
  %76 = load double, double* %arrayidx74, align 8
  %mul75 = fmul double %call72, %76
  %77 = load [1000 x double]*, [1000 x double]** %data.addr, align 8
  %78 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %78 to i64
  %arrayidx77 = getelementptr inbounds [1000 x double], [1000 x double]* %77, i64 %idxprom76
  %79 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %79 to i64
  %arrayidx79 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx77, i64 0, i64 %idxprom78
  %80 = load double, double* %arrayidx79, align 8
  %div80 = fdiv double %80, %mul75
  store double %div80, double* %arrayidx79, align 8
  br label %for.inc81

for.inc81:                                        ; preds = %for.body64
  %81 = load i32, i32* %j, align 4
  %inc82 = add nsw i32 %81, 1
  store i32 %inc82, i32* %j, align 4
  br label %for.cond62

for.end83:                                        ; preds = %for.cond62
  br label %for.inc84

for.inc84:                                        ; preds = %for.end83
  %82 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %82, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond59

for.end86:                                        ; preds = %for.cond59
  store i32 0, i32* %j1, align 4
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc134, %for.end86
  %83 = load i32, i32* %j1, align 4
  %84 = load i32, i32* %m.addr, align 4
  %sub88 = sub nsw i32 %84, 1
  %cmp89 = icmp slt i32 %83, %sub88
  br i1 %cmp89, label %for.body90, label %for.end136

for.body90:                                       ; preds = %for.cond87
  %85 = load [1000 x double]*, [1000 x double]** %symmat.addr, align 8
  %86 = load i32, i32* %j1, align 4
  %idxprom91 = sext i32 %86 to i64
  %arrayidx92 = getelementptr inbounds [1000 x double], [1000 x double]* %85, i64 %idxprom91
  %87 = load i32, i32* %j1, align 4
  %idxprom93 = sext i32 %87 to i64
  %arrayidx94 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx92, i64 0, i64 %idxprom93
  store double 1.000000e+00, double* %arrayidx94, align 8
  %88 = load i32, i32* %j1, align 4
  %add95 = add nsw i32 %88, 1
  store i32 %add95, i32* %j2, align 4
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc131, %for.body90
  %89 = load i32, i32* %j2, align 4
  %90 = load i32, i32* %m.addr, align 4
  %cmp97 = icmp slt i32 %89, %90
  br i1 %cmp97, label %for.body98, label %for.end133

for.body98:                                       ; preds = %for.cond96
  %91 = load [1000 x double]*, [1000 x double]** %symmat.addr, align 8
  %92 = load i32, i32* %j1, align 4
  %idxprom99 = sext i32 %92 to i64
  %arrayidx100 = getelementptr inbounds [1000 x double], [1000 x double]* %91, i64 %idxprom99
  %93 = load i32, i32* %j2, align 4
  %idxprom101 = sext i32 %93 to i64
  %arrayidx102 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx100, i64 0, i64 %idxprom101
  store double 0.000000e+00, double* %arrayidx102, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc120, %for.body98
  %94 = load i32, i32* %i, align 4
  %95 = load i32, i32* %n.addr, align 4
  %cmp104 = icmp slt i32 %94, %95
  br i1 %cmp104, label %for.body105, label %for.end122

for.body105:                                      ; preds = %for.cond103
  %96 = load [1000 x double]*, [1000 x double]** %data.addr, align 8
  %97 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %97 to i64
  %arrayidx107 = getelementptr inbounds [1000 x double], [1000 x double]* %96, i64 %idxprom106
  %98 = load i32, i32* %j1, align 4
  %idxprom108 = sext i32 %98 to i64
  %arrayidx109 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx107, i64 0, i64 %idxprom108
  %99 = load double, double* %arrayidx109, align 8
  %100 = load [1000 x double]*, [1000 x double]** %data.addr, align 8
  %101 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %101 to i64
  %arrayidx111 = getelementptr inbounds [1000 x double], [1000 x double]* %100, i64 %idxprom110
  %102 = load i32, i32* %j2, align 4
  %idxprom112 = sext i32 %102 to i64
  %arrayidx113 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx111, i64 0, i64 %idxprom112
  %103 = load double, double* %arrayidx113, align 8
  %mul114 = fmul double %99, %103
  %104 = load [1000 x double]*, [1000 x double]** %symmat.addr, align 8
  %105 = load i32, i32* %j1, align 4
  %idxprom115 = sext i32 %105 to i64
  %arrayidx116 = getelementptr inbounds [1000 x double], [1000 x double]* %104, i64 %idxprom115
  %106 = load i32, i32* %j2, align 4
  %idxprom117 = sext i32 %106 to i64
  %arrayidx118 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx116, i64 0, i64 %idxprom117
  %107 = load double, double* %arrayidx118, align 8
  %add119 = fadd double %107, %mul114
  store double %add119, double* %arrayidx118, align 8
  br label %for.inc120

for.inc120:                                       ; preds = %for.body105
  %108 = load i32, i32* %i, align 4
  %inc121 = add nsw i32 %108, 1
  store i32 %inc121, i32* %i, align 4
  br label %for.cond103

for.end122:                                       ; preds = %for.cond103
  %109 = load [1000 x double]*, [1000 x double]** %symmat.addr, align 8
  %110 = load i32, i32* %j1, align 4
  %idxprom123 = sext i32 %110 to i64
  %arrayidx124 = getelementptr inbounds [1000 x double], [1000 x double]* %109, i64 %idxprom123
  %111 = load i32, i32* %j2, align 4
  %idxprom125 = sext i32 %111 to i64
  %arrayidx126 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx124, i64 0, i64 %idxprom125
  %112 = load double, double* %arrayidx126, align 8
  %113 = load [1000 x double]*, [1000 x double]** %symmat.addr, align 8
  %114 = load i32, i32* %j2, align 4
  %idxprom127 = sext i32 %114 to i64
  %arrayidx128 = getelementptr inbounds [1000 x double], [1000 x double]* %113, i64 %idxprom127
  %115 = load i32, i32* %j1, align 4
  %idxprom129 = sext i32 %115 to i64
  %arrayidx130 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx128, i64 0, i64 %idxprom129
  store double %112, double* %arrayidx130, align 8
  br label %for.inc131

for.inc131:                                       ; preds = %for.end122
  %116 = load i32, i32* %j2, align 4
  %inc132 = add nsw i32 %116, 1
  store i32 %inc132, i32* %j2, align 4
  br label %for.cond96

for.end133:                                       ; preds = %for.cond96
  br label %for.inc134

for.inc134:                                       ; preds = %for.end133
  %117 = load i32, i32* %j1, align 4
  %inc135 = add nsw i32 %117, 1
  store i32 %inc135, i32* %j1, align 4
  br label %for.cond87

for.end136:                                       ; preds = %for.cond87
  %118 = load [1000 x double]*, [1000 x double]** %symmat.addr, align 8
  %119 = load i32, i32* %m.addr, align 4
  %sub137 = sub nsw i32 %119, 1
  %idxprom138 = sext i32 %sub137 to i64
  %arrayidx139 = getelementptr inbounds [1000 x double], [1000 x double]* %118, i64 %idxprom138
  %120 = load i32, i32* %m.addr, align 4
  %sub140 = sub nsw i32 %120, 1
  %idxprom141 = sext i32 %sub140 to i64
  %arrayidx142 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx139, i64 0, i64 %idxprom141
  store double 1.000000e+00, double* %arrayidx142, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_FP(i32 %m, [1000 x double]* %A, [1000 x double]* %B) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %A.addr = alloca [1000 x double]*, align 8
  %B.addr = alloca [1000 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %AbsTolerance = alloca double, align 8
  %V1 = alloca double, align 8
  %V2 = alloca double, align 8
  %Diff = alloca double, align 8
  store i32 %m, i32* %m.addr, align 4
  store [1000 x double]* %A, [1000 x double]** %A.addr, align 8
  store [1000 x double]* %B, [1000 x double]** %B.addr, align 8
  store double 1.000000e-05, double* %AbsTolerance, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %m.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load [1000 x double]*, [1000 x double]** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [1000 x double], [1000 x double]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx, i64 0, i64 %idxprom4
  %7 = load double, double* %arrayidx5, align 8
  store double %7, double* %V1, align 8
  %8 = load [1000 x double]*, [1000 x double]** %B.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [1000 x double], [1000 x double]* %8, i64 %idxprom6
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx7, i64 0, i64 %idxprom8
  %11 = load double, double* %arrayidx9, align 8
  store double %11, double* %V2, align 8
  %12 = load double, double* %V1, align 8
  %13 = load double, double* %V2, align 8
  %sub = fsub double %12, %13
  %call = call double @fabs(double %sub) #7
  store double %call, double* %Diff, align 8
  %14 = load double, double* %Diff, align 8
  %15 = load double, double* %AbsTolerance, align 8
  %cmp10 = fcmp ogt double %14, %15
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %j, align 4
  %19 = load double, double* %V1, align 8
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %j, align 4
  %22 = load double, double* %V2, align 8
  %23 = load double, double* %AbsTolerance, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i32 0, i32 0), i32 %17, i32 %18, double %19, i32 %20, i32 %21, double %22, double %23)
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %25, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end14:                                        ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end14, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 %m, [1000 x double]* %symmat) #0 {
entry:
  %m.addr = alloca i32, align 4
  %symmat.addr = alloca [1000 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %printmat = alloca i8*, align 8
  store i32 %m, i32* %m.addr, align 4
  store [1000 x double]* %symmat, [1000 x double]** %symmat.addr, align 8
  %0 = load i32, i32* %m.addr, align 4
  %mul = mul nsw i32 %0, 16
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @malloc(i64 %conv) #5
  store i8* %call, i8** %printmat, align 8
  %1 = load i8*, i8** %printmat, align 8
  %2 = load i32, i32* %m.addr, align 4
  %mul1 = mul nsw i32 %2, 16
  %idxprom = sext i32 %mul1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %m.addr, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond3
  %7 = load [1000 x double]*, [1000 x double]** %symmat.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [1000 x double], [1000 x double]* %7, i64 %idxprom7
  %9 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx8, i64 0, i64 %idxprom9
  %10 = load double, double* %arrayidx10, align 8
  %11 = load i32, i32* %j, align 4
  %mul11 = mul nsw i32 %11, 16
  %12 = load i8*, i8** %printmat, align 8
  call void @print_element(double %10, i32 %mul11, i8* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3

for.end:                                          ; preds = %for.cond3
  %14 = load i8*, i8** %printmat, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call12 = call i32 @fputs(i8* %14, %struct._IO_FILE* %15)
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end15:                                        ; preds = %for.cond
  %17 = load i8*, i8** %printmat, align 8
  call void @free(i8* %17) #5
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define internal void @print_element(double %el, i32 %pos, i8* %out) #0 {
entry:
  %el.addr = alloca double, align 8
  %pos.addr = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %block = alloca %union.anon, align 8
  store double %el, double* %el.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store i8* %out, i8** %out.addr, align 8
  %0 = load double, double* %el.addr, align 8
  %datum = bitcast %union.anon* %block to double*
  store double %0, double* %datum, align 8
  %bytes = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %bytes, i64 0, i64 0
  %1 = load i8, i8* %arrayidx, align 8
  %conv = sext i8 %1 to i32
  %and = and i32 %conv, 15
  %add = add nsw i32 %and, 48
  %conv1 = trunc i32 %add to i8
  %2 = load i8*, i8** %out.addr, align 8
  %3 = load i32, i32* %pos.addr, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8 %conv1, i8* %add.ptr, align 1
  %bytes2 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx3 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes2, i64 0, i64 0
  %4 = load i8, i8* %arrayidx3, align 8
  %conv4 = sext i8 %4 to i32
  %and5 = and i32 %conv4, 15
  %add6 = add nsw i32 %and5, 48
  %conv7 = trunc i32 %add6 to i8
  %5 = load i8*, i8** %out.addr, align 8
  %6 = load i32, i32* %pos.addr, align 4
  %idx.ext8 = sext i32 %6 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %5, i64 %idx.ext8
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr9, i64 1
  store i8 %conv7, i8* %add.ptr10, align 1
  %bytes11 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx12 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes11, i64 0, i64 1
  %7 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %7 to i32
  %and14 = and i32 %conv13, 15
  %add15 = add nsw i32 %and14, 48
  %conv16 = trunc i32 %add15 to i8
  %8 = load i8*, i8** %out.addr, align 8
  %9 = load i32, i32* %pos.addr, align 4
  %idx.ext17 = sext i32 %9 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %8, i64 %idx.ext17
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr18, i64 2
  store i8 %conv16, i8* %add.ptr19, align 1
  %bytes20 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx21 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes20, i64 0, i64 1
  %10 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %10 to i32
  %and23 = and i32 %conv22, 15
  %add24 = add nsw i32 %and23, 48
  %conv25 = trunc i32 %add24 to i8
  %11 = load i8*, i8** %out.addr, align 8
  %12 = load i32, i32* %pos.addr, align 4
  %idx.ext26 = sext i32 %12 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %11, i64 %idx.ext26
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr27, i64 3
  store i8 %conv25, i8* %add.ptr28, align 1
  %bytes29 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx30 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes29, i64 0, i64 2
  %13 = load i8, i8* %arrayidx30, align 2
  %conv31 = sext i8 %13 to i32
  %and32 = and i32 %conv31, 15
  %add33 = add nsw i32 %and32, 48
  %conv34 = trunc i32 %add33 to i8
  %14 = load i8*, i8** %out.addr, align 8
  %15 = load i32, i32* %pos.addr, align 4
  %idx.ext35 = sext i32 %15 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %14, i64 %idx.ext35
  %add.ptr37 = getelementptr inbounds i8, i8* %add.ptr36, i64 4
  store i8 %conv34, i8* %add.ptr37, align 1
  %bytes38 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx39 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes38, i64 0, i64 2
  %16 = load i8, i8* %arrayidx39, align 2
  %conv40 = sext i8 %16 to i32
  %and41 = and i32 %conv40, 15
  %add42 = add nsw i32 %and41, 48
  %conv43 = trunc i32 %add42 to i8
  %17 = load i8*, i8** %out.addr, align 8
  %18 = load i32, i32* %pos.addr, align 4
  %idx.ext44 = sext i32 %18 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %17, i64 %idx.ext44
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr45, i64 5
  store i8 %conv43, i8* %add.ptr46, align 1
  %bytes47 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx48 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes47, i64 0, i64 3
  %19 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %19 to i32
  %and50 = and i32 %conv49, 15
  %add51 = add nsw i32 %and50, 48
  %conv52 = trunc i32 %add51 to i8
  %20 = load i8*, i8** %out.addr, align 8
  %21 = load i32, i32* %pos.addr, align 4
  %idx.ext53 = sext i32 %21 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %20, i64 %idx.ext53
  %add.ptr55 = getelementptr inbounds i8, i8* %add.ptr54, i64 6
  store i8 %conv52, i8* %add.ptr55, align 1
  %bytes56 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx57 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes56, i64 0, i64 3
  %22 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %22 to i32
  %and59 = and i32 %conv58, 15
  %add60 = add nsw i32 %and59, 48
  %conv61 = trunc i32 %add60 to i8
  %23 = load i8*, i8** %out.addr, align 8
  %24 = load i32, i32* %pos.addr, align 4
  %idx.ext62 = sext i32 %24 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %23, i64 %idx.ext62
  %add.ptr64 = getelementptr inbounds i8, i8* %add.ptr63, i64 7
  store i8 %conv61, i8* %add.ptr64, align 1
  %bytes65 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx66 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes65, i64 0, i64 4
  %25 = load i8, i8* %arrayidx66, align 4
  %conv67 = sext i8 %25 to i32
  %and68 = and i32 %conv67, 15
  %add69 = add nsw i32 %and68, 48
  %conv70 = trunc i32 %add69 to i8
  %26 = load i8*, i8** %out.addr, align 8
  %27 = load i32, i32* %pos.addr, align 4
  %idx.ext71 = sext i32 %27 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %26, i64 %idx.ext71
  %add.ptr73 = getelementptr inbounds i8, i8* %add.ptr72, i64 8
  store i8 %conv70, i8* %add.ptr73, align 1
  %bytes74 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx75 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes74, i64 0, i64 4
  %28 = load i8, i8* %arrayidx75, align 4
  %conv76 = sext i8 %28 to i32
  %and77 = and i32 %conv76, 15
  %add78 = add nsw i32 %and77, 48
  %conv79 = trunc i32 %add78 to i8
  %29 = load i8*, i8** %out.addr, align 8
  %30 = load i32, i32* %pos.addr, align 4
  %idx.ext80 = sext i32 %30 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %29, i64 %idx.ext80
  %add.ptr82 = getelementptr inbounds i8, i8* %add.ptr81, i64 9
  store i8 %conv79, i8* %add.ptr82, align 1
  %bytes83 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx84 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes83, i64 0, i64 5
  %31 = load i8, i8* %arrayidx84, align 1
  %conv85 = sext i8 %31 to i32
  %and86 = and i32 %conv85, 15
  %add87 = add nsw i32 %and86, 48
  %conv88 = trunc i32 %add87 to i8
  %32 = load i8*, i8** %out.addr, align 8
  %33 = load i32, i32* %pos.addr, align 4
  %idx.ext89 = sext i32 %33 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %32, i64 %idx.ext89
  %add.ptr91 = getelementptr inbounds i8, i8* %add.ptr90, i64 10
  store i8 %conv88, i8* %add.ptr91, align 1
  %bytes92 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx93 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes92, i64 0, i64 5
  %34 = load i8, i8* %arrayidx93, align 1
  %conv94 = sext i8 %34 to i32
  %and95 = and i32 %conv94, 15
  %add96 = add nsw i32 %and95, 48
  %conv97 = trunc i32 %add96 to i8
  %35 = load i8*, i8** %out.addr, align 8
  %36 = load i32, i32* %pos.addr, align 4
  %idx.ext98 = sext i32 %36 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %35, i64 %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr99, i64 11
  store i8 %conv97, i8* %add.ptr100, align 1
  %bytes101 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx102 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes101, i64 0, i64 6
  %37 = load i8, i8* %arrayidx102, align 2
  %conv103 = sext i8 %37 to i32
  %and104 = and i32 %conv103, 15
  %add105 = add nsw i32 %and104, 48
  %conv106 = trunc i32 %add105 to i8
  %38 = load i8*, i8** %out.addr, align 8
  %39 = load i32, i32* %pos.addr, align 4
  %idx.ext107 = sext i32 %39 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %38, i64 %idx.ext107
  %add.ptr109 = getelementptr inbounds i8, i8* %add.ptr108, i64 12
  store i8 %conv106, i8* %add.ptr109, align 1
  %bytes110 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx111 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes110, i64 0, i64 6
  %40 = load i8, i8* %arrayidx111, align 2
  %conv112 = sext i8 %40 to i32
  %and113 = and i32 %conv112, 15
  %add114 = add nsw i32 %and113, 48
  %conv115 = trunc i32 %add114 to i8
  %41 = load i8*, i8** %out.addr, align 8
  %42 = load i32, i32* %pos.addr, align 4
  %idx.ext116 = sext i32 %42 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %41, i64 %idx.ext116
  %add.ptr118 = getelementptr inbounds i8, i8* %add.ptr117, i64 13
  store i8 %conv115, i8* %add.ptr118, align 1
  %bytes119 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx120 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes119, i64 0, i64 7
  %43 = load i8, i8* %arrayidx120, align 1
  %conv121 = sext i8 %43 to i32
  %and122 = and i32 %conv121, 15
  %add123 = add nsw i32 %and122, 48
  %conv124 = trunc i32 %add123 to i8
  %44 = load i8*, i8** %out.addr, align 8
  %45 = load i32, i32* %pos.addr, align 4
  %idx.ext125 = sext i32 %45 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %44, i64 %idx.ext125
  %add.ptr127 = getelementptr inbounds i8, i8* %add.ptr126, i64 14
  store i8 %conv124, i8* %add.ptr127, align 1
  %bytes128 = bitcast %union.anon* %block to [8 x i8]*
  %arrayidx129 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes128, i64 0, i64 7
  %46 = load i8, i8* %arrayidx129, align 1
  %conv130 = sext i8 %46 to i32
  %and131 = and i32 %conv130, 15
  %add132 = add nsw i32 %and131, 48
  %conv133 = trunc i32 %add132 to i8
  %47 = load i8*, i8** %out.addr, align 8
  %48 = load i32, i32* %pos.addr, align 4
  %idx.ext134 = sext i32 %48 to i64
  %add.ptr135 = getelementptr inbounds i8, i8* %47, i64 %idx.ext134
  %add.ptr136 = getelementptr inbounds i8, i8* %add.ptr135, i64 15
  store i8 %conv133, i8* %add.ptr136, align 1
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
