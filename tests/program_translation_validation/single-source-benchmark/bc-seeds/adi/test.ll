; ModuleID = 'adi/test.bc'
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
  %tsteps = alloca i32, align 4
  %X = alloca [1024 x [1024 x double]]*, align 8
  %X_StrictFP = alloca [1024 x [1024 x double]]*, align 8
  %A = alloca [1024 x [1024 x double]]*, align 8
  %B = alloca [1024 x [1024 x double]]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1024, i32* %n, align 4
  store i32 50, i32* %tsteps, align 4
  %call = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %0 = bitcast i8* %call to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %0, [1024 x [1024 x double]]** %X, align 8
  %call1 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %1 = bitcast i8* %call1 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %1, [1024 x [1024 x double]]** %X_StrictFP, align 8
  %call2 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %2 = bitcast i8* %call2 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %2, [1024 x [1024 x double]]** %A, align 8
  %call3 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %3 = bitcast i8* %call3 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %3, [1024 x [1024 x double]]** %B, align 8
  %4 = load i32, i32* %n, align 4
  %5 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %X, align 8
  %arraydecay = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %5, i32 0, i32 0
  %6 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %arraydecay4 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %6, i32 0, i32 0
  %7 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %B, align 8
  %arraydecay5 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %7, i32 0, i32 0
  call void @init_array(i32 %4, [1024 x double]* %arraydecay, [1024 x double]* %arraydecay4, [1024 x double]* %arraydecay5)
  %8 = load i32, i32* %tsteps, align 4
  %9 = load i32, i32* %n, align 4
  %10 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %X, align 8
  %arraydecay6 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %10, i32 0, i32 0
  %11 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %arraydecay7 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %11, i32 0, i32 0
  %12 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %B, align 8
  %arraydecay8 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %12, i32 0, i32 0
  call void @kernel_adi(i32 %8, i32 %9, [1024 x double]* %arraydecay6, [1024 x double]* %arraydecay7, [1024 x double]* %arraydecay8)
  %13 = load i32, i32* %n, align 4
  %14 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %X_StrictFP, align 8
  %arraydecay9 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %14, i32 0, i32 0
  %15 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %arraydecay10 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %15, i32 0, i32 0
  %16 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %B, align 8
  %arraydecay11 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %16, i32 0, i32 0
  call void @init_array(i32 %13, [1024 x double]* %arraydecay9, [1024 x double]* %arraydecay10, [1024 x double]* %arraydecay11)
  %17 = load i32, i32* %tsteps, align 4
  %18 = load i32, i32* %n, align 4
  %19 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %X_StrictFP, align 8
  %arraydecay12 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %19, i32 0, i32 0
  %20 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %arraydecay13 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %20, i32 0, i32 0
  %21 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %B, align 8
  %arraydecay14 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %21, i32 0, i32 0
  call void @kernel_adi(i32 %17, i32 %18, [1024 x double]* %arraydecay12, [1024 x double]* %arraydecay13, [1024 x double]* %arraydecay14)
  %22 = load i32, i32* %n, align 4
  %23 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %X, align 8
  %arraydecay15 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %23, i32 0, i32 0
  %24 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %X_StrictFP, align 8
  %arraydecay16 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %24, i32 0, i32 0
  %call17 = call i32 @check_FP(i32 %22, [1024 x double]* %arraydecay15, [1024 x double]* %arraydecay16)
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %25 = load i32, i32* %n, align 4
  %26 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %X_StrictFP, align 8
  %arraydecay18 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %26, i32 0, i32 0
  call void @print_array(i32 %25, [1024 x double]* %arraydecay18)
  %27 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %X, align 8
  %28 = bitcast [1024 x [1024 x double]]* %27 to i8*
  call void @free(i8* %28) #5
  %29 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %X_StrictFP, align 8
  %30 = bitcast [1024 x [1024 x double]]* %29 to i8*
  call void @free(i8* %30) #5
  %31 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %32 = bitcast [1024 x [1024 x double]]* %31 to i8*
  call void @free(i8* %32) #5
  %33 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %B, align 8
  %34 = bitcast [1024 x [1024 x double]]* %33 to i8*
  call void @free(i8* %34) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 %n, [1024 x double]* %X, [1024 x double]* %A, [1024 x double]* %B) #0 {
entry:
  %n.addr = alloca i32, align 4
  %X.addr = alloca [1024 x double]*, align 8
  %A.addr = alloca [1024 x double]*, align 8
  %B.addr = alloca [1024 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store [1024 x double]* %X, [1024 x double]** %X.addr, align 8
  store [1024 x double]* %A, [1024 x double]** %A.addr, align 8
  store [1024 x double]* %B, [1024 x double]** %B.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end33

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %conv = sitofp i32 %4 to double
  %5 = load i32, i32* %j, align 4
  %add = add nsw i32 %5, 1
  %conv4 = sitofp i32 %add to double
  %mul = fmul double %conv, %conv4
  %add5 = fadd double %mul, 1.000000e+00
  %6 = load i32, i32* %n.addr, align 4
  %conv6 = sitofp i32 %6 to double
  %div = fdiv double %add5, %conv6
  %7 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [1024 x double], [1024 x double]* %7, i64 %idxprom
  %9 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx, i64 0, i64 %idxprom7
  store double %div, double* %arrayidx8, align 8
  %10 = load i32, i32* %i, align 4
  %conv9 = sitofp i32 %10 to double
  %11 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %11, 2
  %conv11 = sitofp i32 %add10 to double
  %mul12 = fmul double %conv9, %conv11
  %add13 = fadd double %mul12, 2.000000e+00
  %12 = load i32, i32* %n.addr, align 4
  %conv14 = sitofp i32 %12 to double
  %div15 = fdiv double %add13, %conv14
  %13 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [1024 x double], [1024 x double]* %13, i64 %idxprom16
  %15 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx17, i64 0, i64 %idxprom18
  store double %div15, double* %arrayidx19, align 8
  %16 = load i32, i32* %i, align 4
  %conv20 = sitofp i32 %16 to double
  %17 = load i32, i32* %j, align 4
  %add21 = add nsw i32 %17, 3
  %conv22 = sitofp i32 %add21 to double
  %mul23 = fmul double %conv20, %conv22
  %add24 = fadd double %mul23, 3.000000e+00
  %18 = load i32, i32* %n.addr, align 4
  %conv25 = sitofp i32 %18 to double
  %div26 = fdiv double %add24, %conv25
  %19 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %20 to i64
  %arrayidx28 = getelementptr inbounds [1024 x double], [1024 x double]* %19, i64 %idxprom27
  %21 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %21 to i64
  %arrayidx30 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx28, i64 0, i64 %idxprom29
  store double %div26, double* %arrayidx30, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc31

for.inc31:                                        ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %23, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond

for.end33:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_adi(i32 %tsteps, i32 %n, [1024 x double]* %X, [1024 x double]* %A, [1024 x double]* %B) #0 {
entry:
  %tsteps.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %X.addr = alloca [1024 x double]*, align 8
  %A.addr = alloca [1024 x double]*, align 8
  %B.addr = alloca [1024 x double]*, align 8
  %t = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [1024 x double]* %X, [1024 x double]** %X.addr, align 8
  store [1024 x double]* %A, [1024 x double]** %A.addr, align 8
  store [1024 x double]* %B, [1024 x double]** %B.addr, align 8
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc252, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %tsteps.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end254

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i1, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc51, %for.body
  %2 = load i32, i32* %i1, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end53

for.body3:                                        ; preds = %for.cond1
  store i32 1, i32* %i2, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %i2, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %7 = load i32, i32* %i1, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [1024 x double], [1024 x double]* %6, i64 %idxprom
  %8 = load i32, i32* %i2, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx, i64 0, i64 %idxprom7
  %9 = load double, double* %arrayidx8, align 8
  %10 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %11 = load i32, i32* %i1, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [1024 x double], [1024 x double]* %10, i64 %idxprom9
  %12 = load i32, i32* %i2, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom11 = sext i32 %sub to i64
  %arrayidx12 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx10, i64 0, i64 %idxprom11
  %13 = load double, double* %arrayidx12, align 8
  %14 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %15 = load i32, i32* %i1, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [1024 x double], [1024 x double]* %14, i64 %idxprom13
  %16 = load i32, i32* %i2, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx14, i64 0, i64 %idxprom15
  %17 = load double, double* %arrayidx16, align 8
  %mul = fmul double %13, %17
  %18 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %19 = load i32, i32* %i1, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [1024 x double], [1024 x double]* %18, i64 %idxprom17
  %20 = load i32, i32* %i2, align 4
  %sub19 = sub nsw i32 %20, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx18, i64 0, i64 %idxprom20
  %21 = load double, double* %arrayidx21, align 8
  %div = fdiv double %mul, %21
  %sub22 = fsub double %9, %div
  %22 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %23 = load i32, i32* %i1, align 4
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds [1024 x double], [1024 x double]* %22, i64 %idxprom23
  %24 = load i32, i32* %i2, align 4
  %idxprom25 = sext i32 %24 to i64
  %arrayidx26 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx24, i64 0, i64 %idxprom25
  store double %sub22, double* %arrayidx26, align 8
  %25 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %26 = load i32, i32* %i1, align 4
  %idxprom27 = sext i32 %26 to i64
  %arrayidx28 = getelementptr inbounds [1024 x double], [1024 x double]* %25, i64 %idxprom27
  %27 = load i32, i32* %i2, align 4
  %idxprom29 = sext i32 %27 to i64
  %arrayidx30 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx28, i64 0, i64 %idxprom29
  %28 = load double, double* %arrayidx30, align 8
  %29 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %30 = load i32, i32* %i1, align 4
  %idxprom31 = sext i32 %30 to i64
  %arrayidx32 = getelementptr inbounds [1024 x double], [1024 x double]* %29, i64 %idxprom31
  %31 = load i32, i32* %i2, align 4
  %idxprom33 = sext i32 %31 to i64
  %arrayidx34 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx32, i64 0, i64 %idxprom33
  %32 = load double, double* %arrayidx34, align 8
  %33 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %34 = load i32, i32* %i1, align 4
  %idxprom35 = sext i32 %34 to i64
  %arrayidx36 = getelementptr inbounds [1024 x double], [1024 x double]* %33, i64 %idxprom35
  %35 = load i32, i32* %i2, align 4
  %idxprom37 = sext i32 %35 to i64
  %arrayidx38 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx36, i64 0, i64 %idxprom37
  %36 = load double, double* %arrayidx38, align 8
  %mul39 = fmul double %32, %36
  %37 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %38 = load i32, i32* %i1, align 4
  %idxprom40 = sext i32 %38 to i64
  %arrayidx41 = getelementptr inbounds [1024 x double], [1024 x double]* %37, i64 %idxprom40
  %39 = load i32, i32* %i2, align 4
  %sub42 = sub nsw i32 %39, 1
  %idxprom43 = sext i32 %sub42 to i64
  %arrayidx44 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx41, i64 0, i64 %idxprom43
  %40 = load double, double* %arrayidx44, align 8
  %div45 = fdiv double %mul39, %40
  %sub46 = fsub double %28, %div45
  %41 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %42 = load i32, i32* %i1, align 4
  %idxprom47 = sext i32 %42 to i64
  %arrayidx48 = getelementptr inbounds [1024 x double], [1024 x double]* %41, i64 %idxprom47
  %43 = load i32, i32* %i2, align 4
  %idxprom49 = sext i32 %43 to i64
  %arrayidx50 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx48, i64 0, i64 %idxprom49
  store double %sub46, double* %arrayidx50, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %44 = load i32, i32* %i2, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i2, align 4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  br label %for.inc51

for.inc51:                                        ; preds = %for.end
  %45 = load i32, i32* %i1, align 4
  %inc52 = add nsw i32 %45, 1
  store i32 %inc52, i32* %i1, align 4
  br label %for.cond1

for.end53:                                        ; preds = %for.cond1
  store i32 0, i32* %i1, align 4
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc73, %for.end53
  %46 = load i32, i32* %i1, align 4
  %47 = load i32, i32* %n.addr, align 4
  %cmp55 = icmp slt i32 %46, %47
  br i1 %cmp55, label %for.body56, label %for.end75

for.body56:                                       ; preds = %for.cond54
  %48 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %49 = load i32, i32* %i1, align 4
  %idxprom57 = sext i32 %49 to i64
  %arrayidx58 = getelementptr inbounds [1024 x double], [1024 x double]* %48, i64 %idxprom57
  %50 = load i32, i32* %n.addr, align 4
  %sub59 = sub nsw i32 %50, 1
  %idxprom60 = sext i32 %sub59 to i64
  %arrayidx61 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx58, i64 0, i64 %idxprom60
  %51 = load double, double* %arrayidx61, align 8
  %52 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %53 = load i32, i32* %i1, align 4
  %idxprom62 = sext i32 %53 to i64
  %arrayidx63 = getelementptr inbounds [1024 x double], [1024 x double]* %52, i64 %idxprom62
  %54 = load i32, i32* %n.addr, align 4
  %sub64 = sub nsw i32 %54, 1
  %idxprom65 = sext i32 %sub64 to i64
  %arrayidx66 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx63, i64 0, i64 %idxprom65
  %55 = load double, double* %arrayidx66, align 8
  %div67 = fdiv double %51, %55
  %56 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %57 = load i32, i32* %i1, align 4
  %idxprom68 = sext i32 %57 to i64
  %arrayidx69 = getelementptr inbounds [1024 x double], [1024 x double]* %56, i64 %idxprom68
  %58 = load i32, i32* %n.addr, align 4
  %sub70 = sub nsw i32 %58, 1
  %idxprom71 = sext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx69, i64 0, i64 %idxprom71
  store double %div67, double* %arrayidx72, align 8
  br label %for.inc73

for.inc73:                                        ; preds = %for.body56
  %59 = load i32, i32* %i1, align 4
  %inc74 = add nsw i32 %59, 1
  store i32 %inc74, i32* %i1, align 4
  br label %for.cond54

for.end75:                                        ; preds = %for.cond54
  store i32 0, i32* %i1, align 4
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc120, %for.end75
  %60 = load i32, i32* %i1, align 4
  %61 = load i32, i32* %n.addr, align 4
  %cmp77 = icmp slt i32 %60, %61
  br i1 %cmp77, label %for.body78, label %for.end122

for.body78:                                       ; preds = %for.cond76
  store i32 0, i32* %i2, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc117, %for.body78
  %62 = load i32, i32* %i2, align 4
  %63 = load i32, i32* %n.addr, align 4
  %sub80 = sub nsw i32 %63, 2
  %cmp81 = icmp slt i32 %62, %sub80
  br i1 %cmp81, label %for.body82, label %for.end119

for.body82:                                       ; preds = %for.cond79
  %64 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %65 = load i32, i32* %i1, align 4
  %idxprom83 = sext i32 %65 to i64
  %arrayidx84 = getelementptr inbounds [1024 x double], [1024 x double]* %64, i64 %idxprom83
  %66 = load i32, i32* %n.addr, align 4
  %sub85 = sub nsw i32 %66, 2
  %67 = load i32, i32* %i2, align 4
  %sub86 = sub nsw i32 %sub85, %67
  %idxprom87 = sext i32 %sub86 to i64
  %arrayidx88 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx84, i64 0, i64 %idxprom87
  %68 = load double, double* %arrayidx88, align 8
  %69 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %70 = load i32, i32* %i1, align 4
  %idxprom89 = sext i32 %70 to i64
  %arrayidx90 = getelementptr inbounds [1024 x double], [1024 x double]* %69, i64 %idxprom89
  %71 = load i32, i32* %n.addr, align 4
  %sub91 = sub nsw i32 %71, 2
  %72 = load i32, i32* %i2, align 4
  %sub92 = sub nsw i32 %sub91, %72
  %sub93 = sub nsw i32 %sub92, 1
  %idxprom94 = sext i32 %sub93 to i64
  %arrayidx95 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx90, i64 0, i64 %idxprom94
  %73 = load double, double* %arrayidx95, align 8
  %74 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %75 = load i32, i32* %i1, align 4
  %idxprom96 = sext i32 %75 to i64
  %arrayidx97 = getelementptr inbounds [1024 x double], [1024 x double]* %74, i64 %idxprom96
  %76 = load i32, i32* %n.addr, align 4
  %77 = load i32, i32* %i2, align 4
  %sub98 = sub nsw i32 %76, %77
  %sub99 = sub nsw i32 %sub98, 3
  %idxprom100 = sext i32 %sub99 to i64
  %arrayidx101 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx97, i64 0, i64 %idxprom100
  %78 = load double, double* %arrayidx101, align 8
  %mul102 = fmul double %73, %78
  %sub103 = fsub double %68, %mul102
  %79 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %80 = load i32, i32* %i1, align 4
  %idxprom104 = sext i32 %80 to i64
  %arrayidx105 = getelementptr inbounds [1024 x double], [1024 x double]* %79, i64 %idxprom104
  %81 = load i32, i32* %n.addr, align 4
  %sub106 = sub nsw i32 %81, 3
  %82 = load i32, i32* %i2, align 4
  %sub107 = sub nsw i32 %sub106, %82
  %idxprom108 = sext i32 %sub107 to i64
  %arrayidx109 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx105, i64 0, i64 %idxprom108
  %83 = load double, double* %arrayidx109, align 8
  %div110 = fdiv double %sub103, %83
  %84 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %85 = load i32, i32* %i1, align 4
  %idxprom111 = sext i32 %85 to i64
  %arrayidx112 = getelementptr inbounds [1024 x double], [1024 x double]* %84, i64 %idxprom111
  %86 = load i32, i32* %n.addr, align 4
  %87 = load i32, i32* %i2, align 4
  %sub113 = sub nsw i32 %86, %87
  %sub114 = sub nsw i32 %sub113, 2
  %idxprom115 = sext i32 %sub114 to i64
  %arrayidx116 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx112, i64 0, i64 %idxprom115
  store double %div110, double* %arrayidx116, align 8
  br label %for.inc117

for.inc117:                                       ; preds = %for.body82
  %88 = load i32, i32* %i2, align 4
  %inc118 = add nsw i32 %88, 1
  store i32 %inc118, i32* %i2, align 4
  br label %for.cond79

for.end119:                                       ; preds = %for.cond79
  br label %for.inc120

for.inc120:                                       ; preds = %for.end119
  %89 = load i32, i32* %i1, align 4
  %inc121 = add nsw i32 %89, 1
  store i32 %inc121, i32* %i1, align 4
  br label %for.cond76

for.end122:                                       ; preds = %for.cond76
  store i32 1, i32* %i1, align 4
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc181, %for.end122
  %90 = load i32, i32* %i1, align 4
  %91 = load i32, i32* %n.addr, align 4
  %cmp124 = icmp slt i32 %90, %91
  br i1 %cmp124, label %for.body125, label %for.end183

for.body125:                                      ; preds = %for.cond123
  store i32 0, i32* %i2, align 4
  br label %for.cond126

for.cond126:                                      ; preds = %for.inc178, %for.body125
  %92 = load i32, i32* %i2, align 4
  %93 = load i32, i32* %n.addr, align 4
  %cmp127 = icmp slt i32 %92, %93
  br i1 %cmp127, label %for.body128, label %for.end180

for.body128:                                      ; preds = %for.cond126
  %94 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %95 = load i32, i32* %i1, align 4
  %idxprom129 = sext i32 %95 to i64
  %arrayidx130 = getelementptr inbounds [1024 x double], [1024 x double]* %94, i64 %idxprom129
  %96 = load i32, i32* %i2, align 4
  %idxprom131 = sext i32 %96 to i64
  %arrayidx132 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx130, i64 0, i64 %idxprom131
  %97 = load double, double* %arrayidx132, align 8
  %98 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %99 = load i32, i32* %i1, align 4
  %sub133 = sub nsw i32 %99, 1
  %idxprom134 = sext i32 %sub133 to i64
  %arrayidx135 = getelementptr inbounds [1024 x double], [1024 x double]* %98, i64 %idxprom134
  %100 = load i32, i32* %i2, align 4
  %idxprom136 = sext i32 %100 to i64
  %arrayidx137 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx135, i64 0, i64 %idxprom136
  %101 = load double, double* %arrayidx137, align 8
  %102 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %103 = load i32, i32* %i1, align 4
  %idxprom138 = sext i32 %103 to i64
  %arrayidx139 = getelementptr inbounds [1024 x double], [1024 x double]* %102, i64 %idxprom138
  %104 = load i32, i32* %i2, align 4
  %idxprom140 = sext i32 %104 to i64
  %arrayidx141 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx139, i64 0, i64 %idxprom140
  %105 = load double, double* %arrayidx141, align 8
  %mul142 = fmul double %101, %105
  %106 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %107 = load i32, i32* %i1, align 4
  %sub143 = sub nsw i32 %107, 1
  %idxprom144 = sext i32 %sub143 to i64
  %arrayidx145 = getelementptr inbounds [1024 x double], [1024 x double]* %106, i64 %idxprom144
  %108 = load i32, i32* %i2, align 4
  %idxprom146 = sext i32 %108 to i64
  %arrayidx147 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx145, i64 0, i64 %idxprom146
  %109 = load double, double* %arrayidx147, align 8
  %div148 = fdiv double %mul142, %109
  %sub149 = fsub double %97, %div148
  %110 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %111 = load i32, i32* %i1, align 4
  %idxprom150 = sext i32 %111 to i64
  %arrayidx151 = getelementptr inbounds [1024 x double], [1024 x double]* %110, i64 %idxprom150
  %112 = load i32, i32* %i2, align 4
  %idxprom152 = sext i32 %112 to i64
  %arrayidx153 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx151, i64 0, i64 %idxprom152
  store double %sub149, double* %arrayidx153, align 8
  %113 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %114 = load i32, i32* %i1, align 4
  %idxprom154 = sext i32 %114 to i64
  %arrayidx155 = getelementptr inbounds [1024 x double], [1024 x double]* %113, i64 %idxprom154
  %115 = load i32, i32* %i2, align 4
  %idxprom156 = sext i32 %115 to i64
  %arrayidx157 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx155, i64 0, i64 %idxprom156
  %116 = load double, double* %arrayidx157, align 8
  %117 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %118 = load i32, i32* %i1, align 4
  %idxprom158 = sext i32 %118 to i64
  %arrayidx159 = getelementptr inbounds [1024 x double], [1024 x double]* %117, i64 %idxprom158
  %119 = load i32, i32* %i2, align 4
  %idxprom160 = sext i32 %119 to i64
  %arrayidx161 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx159, i64 0, i64 %idxprom160
  %120 = load double, double* %arrayidx161, align 8
  %121 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %122 = load i32, i32* %i1, align 4
  %idxprom162 = sext i32 %122 to i64
  %arrayidx163 = getelementptr inbounds [1024 x double], [1024 x double]* %121, i64 %idxprom162
  %123 = load i32, i32* %i2, align 4
  %idxprom164 = sext i32 %123 to i64
  %arrayidx165 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx163, i64 0, i64 %idxprom164
  %124 = load double, double* %arrayidx165, align 8
  %mul166 = fmul double %120, %124
  %125 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %126 = load i32, i32* %i1, align 4
  %sub167 = sub nsw i32 %126, 1
  %idxprom168 = sext i32 %sub167 to i64
  %arrayidx169 = getelementptr inbounds [1024 x double], [1024 x double]* %125, i64 %idxprom168
  %127 = load i32, i32* %i2, align 4
  %idxprom170 = sext i32 %127 to i64
  %arrayidx171 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx169, i64 0, i64 %idxprom170
  %128 = load double, double* %arrayidx171, align 8
  %div172 = fdiv double %mul166, %128
  %sub173 = fsub double %116, %div172
  %129 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %130 = load i32, i32* %i1, align 4
  %idxprom174 = sext i32 %130 to i64
  %arrayidx175 = getelementptr inbounds [1024 x double], [1024 x double]* %129, i64 %idxprom174
  %131 = load i32, i32* %i2, align 4
  %idxprom176 = sext i32 %131 to i64
  %arrayidx177 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx175, i64 0, i64 %idxprom176
  store double %sub173, double* %arrayidx177, align 8
  br label %for.inc178

for.inc178:                                       ; preds = %for.body128
  %132 = load i32, i32* %i2, align 4
  %inc179 = add nsw i32 %132, 1
  store i32 %inc179, i32* %i2, align 4
  br label %for.cond126

for.end180:                                       ; preds = %for.cond126
  br label %for.inc181

for.inc181:                                       ; preds = %for.end180
  %133 = load i32, i32* %i1, align 4
  %inc182 = add nsw i32 %133, 1
  store i32 %inc182, i32* %i1, align 4
  br label %for.cond123

for.end183:                                       ; preds = %for.cond123
  store i32 0, i32* %i2, align 4
  br label %for.cond184

for.cond184:                                      ; preds = %for.inc203, %for.end183
  %134 = load i32, i32* %i2, align 4
  %135 = load i32, i32* %n.addr, align 4
  %cmp185 = icmp slt i32 %134, %135
  br i1 %cmp185, label %for.body186, label %for.end205

for.body186:                                      ; preds = %for.cond184
  %136 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %137 = load i32, i32* %n.addr, align 4
  %sub187 = sub nsw i32 %137, 1
  %idxprom188 = sext i32 %sub187 to i64
  %arrayidx189 = getelementptr inbounds [1024 x double], [1024 x double]* %136, i64 %idxprom188
  %138 = load i32, i32* %i2, align 4
  %idxprom190 = sext i32 %138 to i64
  %arrayidx191 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx189, i64 0, i64 %idxprom190
  %139 = load double, double* %arrayidx191, align 8
  %140 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %141 = load i32, i32* %n.addr, align 4
  %sub192 = sub nsw i32 %141, 1
  %idxprom193 = sext i32 %sub192 to i64
  %arrayidx194 = getelementptr inbounds [1024 x double], [1024 x double]* %140, i64 %idxprom193
  %142 = load i32, i32* %i2, align 4
  %idxprom195 = sext i32 %142 to i64
  %arrayidx196 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx194, i64 0, i64 %idxprom195
  %143 = load double, double* %arrayidx196, align 8
  %div197 = fdiv double %139, %143
  %144 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %145 = load i32, i32* %n.addr, align 4
  %sub198 = sub nsw i32 %145, 1
  %idxprom199 = sext i32 %sub198 to i64
  %arrayidx200 = getelementptr inbounds [1024 x double], [1024 x double]* %144, i64 %idxprom199
  %146 = load i32, i32* %i2, align 4
  %idxprom201 = sext i32 %146 to i64
  %arrayidx202 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx200, i64 0, i64 %idxprom201
  store double %div197, double* %arrayidx202, align 8
  br label %for.inc203

for.inc203:                                       ; preds = %for.body186
  %147 = load i32, i32* %i2, align 4
  %inc204 = add nsw i32 %147, 1
  store i32 %inc204, i32* %i2, align 4
  br label %for.cond184

for.end205:                                       ; preds = %for.cond184
  store i32 0, i32* %i1, align 4
  br label %for.cond206

for.cond206:                                      ; preds = %for.inc249, %for.end205
  %148 = load i32, i32* %i1, align 4
  %149 = load i32, i32* %n.addr, align 4
  %sub207 = sub nsw i32 %149, 2
  %cmp208 = icmp slt i32 %148, %sub207
  br i1 %cmp208, label %for.body209, label %for.end251

for.body209:                                      ; preds = %for.cond206
  store i32 0, i32* %i2, align 4
  br label %for.cond210

for.cond210:                                      ; preds = %for.inc246, %for.body209
  %150 = load i32, i32* %i2, align 4
  %151 = load i32, i32* %n.addr, align 4
  %cmp211 = icmp slt i32 %150, %151
  br i1 %cmp211, label %for.body212, label %for.end248

for.body212:                                      ; preds = %for.cond210
  %152 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %153 = load i32, i32* %n.addr, align 4
  %sub213 = sub nsw i32 %153, 2
  %154 = load i32, i32* %i1, align 4
  %sub214 = sub nsw i32 %sub213, %154
  %idxprom215 = sext i32 %sub214 to i64
  %arrayidx216 = getelementptr inbounds [1024 x double], [1024 x double]* %152, i64 %idxprom215
  %155 = load i32, i32* %i2, align 4
  %idxprom217 = sext i32 %155 to i64
  %arrayidx218 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx216, i64 0, i64 %idxprom217
  %156 = load double, double* %arrayidx218, align 8
  %157 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %158 = load i32, i32* %n.addr, align 4
  %159 = load i32, i32* %i1, align 4
  %sub219 = sub nsw i32 %158, %159
  %sub220 = sub nsw i32 %sub219, 3
  %idxprom221 = sext i32 %sub220 to i64
  %arrayidx222 = getelementptr inbounds [1024 x double], [1024 x double]* %157, i64 %idxprom221
  %160 = load i32, i32* %i2, align 4
  %idxprom223 = sext i32 %160 to i64
  %arrayidx224 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx222, i64 0, i64 %idxprom223
  %161 = load double, double* %arrayidx224, align 8
  %162 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %163 = load i32, i32* %n.addr, align 4
  %sub225 = sub nsw i32 %163, 3
  %164 = load i32, i32* %i1, align 4
  %sub226 = sub nsw i32 %sub225, %164
  %idxprom227 = sext i32 %sub226 to i64
  %arrayidx228 = getelementptr inbounds [1024 x double], [1024 x double]* %162, i64 %idxprom227
  %165 = load i32, i32* %i2, align 4
  %idxprom229 = sext i32 %165 to i64
  %arrayidx230 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx228, i64 0, i64 %idxprom229
  %166 = load double, double* %arrayidx230, align 8
  %mul231 = fmul double %161, %166
  %sub232 = fsub double %156, %mul231
  %167 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %168 = load i32, i32* %n.addr, align 4
  %sub233 = sub nsw i32 %168, 2
  %169 = load i32, i32* %i1, align 4
  %sub234 = sub nsw i32 %sub233, %169
  %idxprom235 = sext i32 %sub234 to i64
  %arrayidx236 = getelementptr inbounds [1024 x double], [1024 x double]* %167, i64 %idxprom235
  %170 = load i32, i32* %i2, align 4
  %idxprom237 = sext i32 %170 to i64
  %arrayidx238 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx236, i64 0, i64 %idxprom237
  %171 = load double, double* %arrayidx238, align 8
  %div239 = fdiv double %sub232, %171
  %172 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %173 = load i32, i32* %n.addr, align 4
  %sub240 = sub nsw i32 %173, 2
  %174 = load i32, i32* %i1, align 4
  %sub241 = sub nsw i32 %sub240, %174
  %idxprom242 = sext i32 %sub241 to i64
  %arrayidx243 = getelementptr inbounds [1024 x double], [1024 x double]* %172, i64 %idxprom242
  %175 = load i32, i32* %i2, align 4
  %idxprom244 = sext i32 %175 to i64
  %arrayidx245 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx243, i64 0, i64 %idxprom244
  store double %div239, double* %arrayidx245, align 8
  br label %for.inc246

for.inc246:                                       ; preds = %for.body212
  %176 = load i32, i32* %i2, align 4
  %inc247 = add nsw i32 %176, 1
  store i32 %inc247, i32* %i2, align 4
  br label %for.cond210

for.end248:                                       ; preds = %for.cond210
  br label %for.inc249

for.inc249:                                       ; preds = %for.end248
  %177 = load i32, i32* %i1, align 4
  %inc250 = add nsw i32 %177, 1
  store i32 %inc250, i32* %i1, align 4
  br label %for.cond206

for.end251:                                       ; preds = %for.cond206
  br label %for.inc252

for.inc252:                                       ; preds = %for.end251
  %178 = load i32, i32* %t, align 4
  %inc253 = add nsw i32 %178, 1
  store i32 %inc253, i32* %t, align 4
  br label %for.cond

for.end254:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_FP(i32 %n, [1024 x double]* %A, [1024 x double]* %B) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [1024 x double]*, align 8
  %B.addr = alloca [1024 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %AbsTolerance = alloca double, align 8
  %V1 = alloca double, align 8
  %V2 = alloca double, align 8
  %Diff = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store [1024 x double]* %A, [1024 x double]** %A.addr, align 8
  store [1024 x double]* %B, [1024 x double]** %B.addr, align 8
  store double 1.000000e-05, double* %AbsTolerance, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [1024 x double], [1024 x double]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx, i64 0, i64 %idxprom4
  %7 = load double, double* %arrayidx5, align 8
  store double %7, double* %V1, align 8
  %8 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [1024 x double], [1024 x double]* %8, i64 %idxprom6
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx7, i64 0, i64 %idxprom8
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
define internal void @print_array(i32 %n, [1024 x double]* %X) #0 {
entry:
  %n.addr = alloca i32, align 4
  %X.addr = alloca [1024 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %printmat = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  store [1024 x double]* %X, [1024 x double]** %X.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 %0, 16
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @malloc(i64 %conv) #5
  store i8* %call, i8** %printmat, align 8
  %1 = load i8*, i8** %printmat, align 8
  %2 = load i32, i32* %n.addr, align 4
  %mul1 = mul nsw i32 %2, 16
  %idxprom = sext i32 %mul1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond3
  %7 = load [1024 x double]*, [1024 x double]** %X.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [1024 x double], [1024 x double]* %7, i64 %idxprom7
  %9 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx8, i64 0, i64 %idxprom9
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
