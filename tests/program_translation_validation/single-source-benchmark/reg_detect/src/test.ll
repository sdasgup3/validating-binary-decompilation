; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/reg_detect/reg_detect.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@polybench_papi_counters_threadid = global i32 0, align 4
@polybench_program_total_flops = global double 0.000000e+00, align 8
@polybench_t_start = common global double 0.000000e+00, align 8
@polybench_t_end = common global double 0.000000e+00, align 8
@polybench_c_start = common global i64 0, align 8
@polybench_c_end = common global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
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
  %niter = alloca i32, align 4
  %maxgrid = alloca i32, align 4
  %length = alloca i32, align 4
  %sum_tang = alloca [6 x [6 x i32]]*, align 8
  %mean = alloca [6 x [6 x i32]]*, align 8
  %path = alloca [6 x [6 x i32]]*, align 8
  %path_StrictFP = alloca [6 x [6 x i32]]*, align 8
  %diff = alloca [6 x [6 x [64 x i32]]]*, align 8
  %sum_diff = alloca [6 x [6 x [64 x i32]]]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 10000, i32* %niter, align 4
  store i32 6, i32* %maxgrid, align 4
  store i32 64, i32* %length, align 4
  %call = call i8* @polybench_alloc_data(i64 36, i32 4)
  %0 = bitcast i8* %call to [6 x [6 x i32]]*
  store [6 x [6 x i32]]* %0, [6 x [6 x i32]]** %sum_tang, align 8
  %call1 = call i8* @polybench_alloc_data(i64 36, i32 4)
  %1 = bitcast i8* %call1 to [6 x [6 x i32]]*
  store [6 x [6 x i32]]* %1, [6 x [6 x i32]]** %mean, align 8
  %call2 = call i8* @polybench_alloc_data(i64 36, i32 4)
  %2 = bitcast i8* %call2 to [6 x [6 x i32]]*
  store [6 x [6 x i32]]* %2, [6 x [6 x i32]]** %path, align 8
  %call3 = call i8* @polybench_alloc_data(i64 36, i32 4)
  %3 = bitcast i8* %call3 to [6 x [6 x i32]]*
  store [6 x [6 x i32]]* %3, [6 x [6 x i32]]** %path_StrictFP, align 8
  %call4 = call i8* @polybench_alloc_data(i64 2304, i32 4)
  %4 = bitcast i8* %call4 to [6 x [6 x [64 x i32]]]*
  store [6 x [6 x [64 x i32]]]* %4, [6 x [6 x [64 x i32]]]** %diff, align 8
  %call5 = call i8* @polybench_alloc_data(i64 2304, i32 4)
  %5 = bitcast i8* %call5 to [6 x [6 x [64 x i32]]]*
  store [6 x [6 x [64 x i32]]]* %5, [6 x [6 x [64 x i32]]]** %sum_diff, align 8
  %6 = load i32, i32* %maxgrid, align 4
  %7 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %sum_tang, align 8
  %arraydecay = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %7, i32 0, i32 0
  %8 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %mean, align 8
  %arraydecay6 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %8, i32 0, i32 0
  %9 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %path, align 8
  %arraydecay7 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %9, i32 0, i32 0
  call void @init_array(i32 %6, [6 x i32]* %arraydecay, [6 x i32]* %arraydecay6, [6 x i32]* %arraydecay7)
  %10 = load i32, i32* %niter, align 4
  %11 = load i32, i32* %maxgrid, align 4
  %12 = load i32, i32* %length, align 4
  %13 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %sum_tang, align 8
  %arraydecay8 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %13, i32 0, i32 0
  %14 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %mean, align 8
  %arraydecay9 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %14, i32 0, i32 0
  %15 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %path, align 8
  %arraydecay10 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %15, i32 0, i32 0
  %16 = load [6 x [6 x [64 x i32]]]*, [6 x [6 x [64 x i32]]]** %diff, align 8
  %arraydecay11 = getelementptr inbounds [6 x [6 x [64 x i32]]], [6 x [6 x [64 x i32]]]* %16, i32 0, i32 0
  %17 = load [6 x [6 x [64 x i32]]]*, [6 x [6 x [64 x i32]]]** %sum_diff, align 8
  %arraydecay12 = getelementptr inbounds [6 x [6 x [64 x i32]]], [6 x [6 x [64 x i32]]]* %17, i32 0, i32 0
  call void @kernel_reg_detect(i32 %10, i32 %11, i32 %12, [6 x i32]* %arraydecay8, [6 x i32]* %arraydecay9, [6 x i32]* %arraydecay10, [6 x [64 x i32]]* %arraydecay11, [6 x [64 x i32]]* %arraydecay12)
  %18 = load i32, i32* %maxgrid, align 4
  %19 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %sum_tang, align 8
  %arraydecay13 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %19, i32 0, i32 0
  %20 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %mean, align 8
  %arraydecay14 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %20, i32 0, i32 0
  %21 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %path_StrictFP, align 8
  %arraydecay15 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %21, i32 0, i32 0
  call void @init_array(i32 %18, [6 x i32]* %arraydecay13, [6 x i32]* %arraydecay14, [6 x i32]* %arraydecay15)
  %22 = load i32, i32* %niter, align 4
  %23 = load i32, i32* %maxgrid, align 4
  %24 = load i32, i32* %length, align 4
  %25 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %sum_tang, align 8
  %arraydecay16 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %25, i32 0, i32 0
  %26 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %mean, align 8
  %arraydecay17 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %26, i32 0, i32 0
  %27 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %path_StrictFP, align 8
  %arraydecay18 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %27, i32 0, i32 0
  %28 = load [6 x [6 x [64 x i32]]]*, [6 x [6 x [64 x i32]]]** %diff, align 8
  %arraydecay19 = getelementptr inbounds [6 x [6 x [64 x i32]]], [6 x [6 x [64 x i32]]]* %28, i32 0, i32 0
  %29 = load [6 x [6 x [64 x i32]]]*, [6 x [6 x [64 x i32]]]** %sum_diff, align 8
  %arraydecay20 = getelementptr inbounds [6 x [6 x [64 x i32]]], [6 x [6 x [64 x i32]]]* %29, i32 0, i32 0
  call void @kernel_reg_detect_StrictFP(i32 %22, i32 %23, i32 %24, [6 x i32]* %arraydecay16, [6 x i32]* %arraydecay17, [6 x i32]* %arraydecay18, [6 x [64 x i32]]* %arraydecay19, [6 x [64 x i32]]* %arraydecay20)
  %30 = load i32, i32* %maxgrid, align 4
  %31 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %path, align 8
  %arraydecay21 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %31, i32 0, i32 0
  %32 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %path_StrictFP, align 8
  %arraydecay22 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %32, i32 0, i32 0
  %call23 = call i32 @check_FP(i32 %30, [6 x i32]* %arraydecay21, [6 x i32]* %arraydecay22)
  %tobool = icmp ne i32 %call23, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %33 = load i32, i32* %maxgrid, align 4
  %34 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %path_StrictFP, align 8
  %arraydecay24 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %34, i32 0, i32 0
  call void @print_array(i32 %33, [6 x i32]* %arraydecay24)
  %35 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %sum_tang, align 8
  %36 = bitcast [6 x [6 x i32]]* %35 to i8*
  call void @free(i8* %36) #5
  %37 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %mean, align 8
  %38 = bitcast [6 x [6 x i32]]* %37 to i8*
  call void @free(i8* %38) #5
  %39 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %path, align 8
  %40 = bitcast [6 x [6 x i32]]* %39 to i8*
  call void @free(i8* %40) #5
  %41 = load [6 x [6 x i32]]*, [6 x [6 x i32]]** %path_StrictFP, align 8
  %42 = bitcast [6 x [6 x i32]]* %41 to i8*
  call void @free(i8* %42) #5
  %43 = load [6 x [6 x [64 x i32]]]*, [6 x [6 x [64 x i32]]]** %diff, align 8
  %44 = bitcast [6 x [6 x [64 x i32]]]* %43 to i8*
  call void @free(i8* %44) #5
  %45 = load [6 x [6 x [64 x i32]]]*, [6 x [6 x [64 x i32]]]** %sum_diff, align 8
  %46 = bitcast [6 x [6 x [64 x i32]]]* %45 to i8*
  call void @free(i8* %46) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %47 = load i32, i32* %retval, align 4
  ret i32 %47
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 %maxgrid, [6 x i32]* %sum_tang, [6 x i32]* %mean, [6 x i32]* %path) #0 {
entry:
  %maxgrid.addr = alloca i32, align 4
  %sum_tang.addr = alloca [6 x i32]*, align 8
  %mean.addr = alloca [6 x i32]*, align 8
  %path.addr = alloca [6 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %maxgrid, i32* %maxgrid.addr, align 4
  store [6 x i32]* %sum_tang, [6 x i32]** %sum_tang.addr, align 8
  store [6 x i32]* %mean, [6 x i32]** %mean.addr, align 8
  store [6 x i32]* %path, [6 x i32]** %path.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %maxgrid.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %maxgrid.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  %5 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %5, 1
  %mul = mul nsw i32 %add, %add4
  %6 = load [6 x i32]*, [6 x i32]** %sum_tang.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 %idxprom
  %8 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx, i64 0, i64 %idxprom5
  store i32 %mul, i32* %arrayidx6, align 4
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %9, %10
  %11 = load i32, i32* %maxgrid.addr, align 4
  %div = sdiv i32 %sub, %11
  %12 = load [6 x i32]*, [6 x i32]** %mean.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 %idxprom7
  %14 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx8, i64 0, i64 %idxprom9
  store i32 %div, i32* %arrayidx10, align 4
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %j, align 4
  %sub11 = sub nsw i32 %16, 1
  %mul12 = mul nsw i32 %15, %sub11
  %17 = load i32, i32* %maxgrid.addr, align 4
  %div13 = sdiv i32 %mul12, %17
  %18 = load [6 x i32]*, [6 x i32]** %path.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [6 x i32], [6 x i32]* %18, i64 %idxprom14
  %20 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx15, i64 0, i64 %idxprom16
  store i32 %div13, i32* %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %22, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end20:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_reg_detect(i32 %niter, i32 %maxgrid, i32 %length, [6 x i32]* %sum_tang, [6 x i32]* %mean, [6 x i32]* %path, [6 x [64 x i32]]* %diff, [6 x [64 x i32]]* %sum_diff) #0 {
entry:
  %niter.addr = alloca i32, align 4
  %maxgrid.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %sum_tang.addr = alloca [6 x i32]*, align 8
  %mean.addr = alloca [6 x i32]*, align 8
  %path.addr = alloca [6 x i32]*, align 8
  %diff.addr = alloca [6 x [64 x i32]]*, align 8
  %sum_diff.addr = alloca [6 x [64 x i32]]*, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cnt = alloca i32, align 4
  store i32 %niter, i32* %niter.addr, align 4
  store i32 %maxgrid, i32* %maxgrid.addr, align 4
  store i32 %length, i32* %length.addr, align 4
  store [6 x i32]* %sum_tang, [6 x i32]** %sum_tang.addr, align 8
  store [6 x i32]* %mean, [6 x i32]** %mean.addr, align 8
  store [6 x i32]* %path, [6 x i32]** %path.addr, align 8
  store [6 x [64 x i32]]* %diff, [6 x [64 x i32]]** %diff.addr, align 8
  store [6 x [64 x i32]]* %sum_diff, [6 x [64 x i32]]** %sum_diff.addr, align 8
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc129, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %niter.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end131

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc23, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %maxgrid.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp sle i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end25

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %j, align 4
  store i32 %4, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc20, %for.body3
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %maxgrid.addr, align 4
  %sub5 = sub nsw i32 %6, 1
  %cmp6 = icmp sle i32 %5, %sub5
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond4
  store i32 0, i32* %cnt, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %7 = load i32, i32* %cnt, align 4
  %8 = load i32, i32* %length.addr, align 4
  %sub9 = sub nsw i32 %8, 1
  %cmp10 = icmp sle i32 %7, %sub9
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %9 = load [6 x i32]*, [6 x i32]** %sum_tang.addr, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 %idxprom
  %11 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx, i64 0, i64 %idxprom12
  %12 = load i32, i32* %arrayidx13, align 4
  %13 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %diff.addr, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %13, i64 %idxprom14
  %15 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx15, i64 0, i64 %idxprom16
  %16 = load i32, i32* %cnt, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx17, i64 0, i64 %idxprom18
  store i32 %12, i32* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %17 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %cnt, align 4
  br label %for.cond8

for.end:                                          ; preds = %for.cond8
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond4

for.end22:                                        ; preds = %for.cond4
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %19 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %19, 1
  store i32 %inc24, i32* %j, align 4
  br label %for.cond1

for.end25:                                        ; preds = %for.cond1
  store i32 0, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc84, %for.end25
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %maxgrid.addr, align 4
  %sub27 = sub nsw i32 %21, 1
  %cmp28 = icmp sle i32 %20, %sub27
  br i1 %cmp28, label %for.body29, label %for.end86

for.body29:                                       ; preds = %for.cond26
  %22 = load i32, i32* %j, align 4
  store i32 %22, i32* %i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc81, %for.body29
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %maxgrid.addr, align 4
  %sub31 = sub nsw i32 %24, 1
  %cmp32 = icmp sle i32 %23, %sub31
  br i1 %cmp32, label %for.body33, label %for.end83

for.body33:                                       ; preds = %for.cond30
  %25 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %diff.addr, align 8
  %26 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %26 to i64
  %arrayidx35 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %25, i64 %idxprom34
  %27 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx35, i64 0, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx37, i64 0, i64 0
  %28 = load i32, i32* %arrayidx38, align 4
  %29 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %sum_diff.addr, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %29, i64 %idxprom39
  %31 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx40, i64 0, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx42, i64 0, i64 0
  store i32 %28, i32* %arrayidx43, align 4
  store i32 1, i32* %cnt, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc67, %for.body33
  %32 = load i32, i32* %cnt, align 4
  %33 = load i32, i32* %length.addr, align 4
  %sub45 = sub nsw i32 %33, 1
  %cmp46 = icmp sle i32 %32, %sub45
  br i1 %cmp46, label %for.body47, label %for.end69

for.body47:                                       ; preds = %for.cond44
  %34 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %sum_diff.addr, align 8
  %35 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %35 to i64
  %arrayidx49 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %34, i64 %idxprom48
  %36 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %36 to i64
  %arrayidx51 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx49, i64 0, i64 %idxprom50
  %37 = load i32, i32* %cnt, align 4
  %sub52 = sub nsw i32 %37, 1
  %idxprom53 = sext i32 %sub52 to i64
  %arrayidx54 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx51, i64 0, i64 %idxprom53
  %38 = load i32, i32* %arrayidx54, align 4
  %39 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %diff.addr, align 8
  %40 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %40 to i64
  %arrayidx56 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %39, i64 %idxprom55
  %41 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %41 to i64
  %arrayidx58 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx56, i64 0, i64 %idxprom57
  %42 = load i32, i32* %cnt, align 4
  %idxprom59 = sext i32 %42 to i64
  %arrayidx60 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx58, i64 0, i64 %idxprom59
  %43 = load i32, i32* %arrayidx60, align 4
  %add = add nsw i32 %38, %43
  %44 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %sum_diff.addr, align 8
  %45 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %45 to i64
  %arrayidx62 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %44, i64 %idxprom61
  %46 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %46 to i64
  %arrayidx64 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx62, i64 0, i64 %idxprom63
  %47 = load i32, i32* %cnt, align 4
  %idxprom65 = sext i32 %47 to i64
  %arrayidx66 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx64, i64 0, i64 %idxprom65
  store i32 %add, i32* %arrayidx66, align 4
  br label %for.inc67

for.inc67:                                        ; preds = %for.body47
  %48 = load i32, i32* %cnt, align 4
  %inc68 = add nsw i32 %48, 1
  store i32 %inc68, i32* %cnt, align 4
  br label %for.cond44

for.end69:                                        ; preds = %for.cond44
  %49 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %sum_diff.addr, align 8
  %50 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %50 to i64
  %arrayidx71 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %49, i64 %idxprom70
  %51 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %51 to i64
  %arrayidx73 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx71, i64 0, i64 %idxprom72
  %52 = load i32, i32* %length.addr, align 4
  %sub74 = sub nsw i32 %52, 1
  %idxprom75 = sext i32 %sub74 to i64
  %arrayidx76 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx73, i64 0, i64 %idxprom75
  %53 = load i32, i32* %arrayidx76, align 4
  %54 = load [6 x i32]*, [6 x i32]** %mean.addr, align 8
  %55 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %55 to i64
  %arrayidx78 = getelementptr inbounds [6 x i32], [6 x i32]* %54, i64 %idxprom77
  %56 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %56 to i64
  %arrayidx80 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx78, i64 0, i64 %idxprom79
  store i32 %53, i32* %arrayidx80, align 4
  br label %for.inc81

for.inc81:                                        ; preds = %for.end69
  %57 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %57, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond30

for.end83:                                        ; preds = %for.cond30
  br label %for.inc84

for.inc84:                                        ; preds = %for.end83
  %58 = load i32, i32* %j, align 4
  %inc85 = add nsw i32 %58, 1
  store i32 %inc85, i32* %j, align 4
  br label %for.cond26

for.end86:                                        ; preds = %for.cond26
  store i32 0, i32* %i, align 4
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc97, %for.end86
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %maxgrid.addr, align 4
  %sub88 = sub nsw i32 %60, 1
  %cmp89 = icmp sle i32 %59, %sub88
  br i1 %cmp89, label %for.body90, label %for.end99

for.body90:                                       ; preds = %for.cond87
  %61 = load [6 x i32]*, [6 x i32]** %mean.addr, align 8
  %arrayidx91 = getelementptr inbounds [6 x i32], [6 x i32]* %61, i64 0
  %62 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %62 to i64
  %arrayidx93 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx91, i64 0, i64 %idxprom92
  %63 = load i32, i32* %arrayidx93, align 4
  %64 = load [6 x i32]*, [6 x i32]** %path.addr, align 8
  %arrayidx94 = getelementptr inbounds [6 x i32], [6 x i32]* %64, i64 0
  %65 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %65 to i64
  %arrayidx96 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx94, i64 0, i64 %idxprom95
  store i32 %63, i32* %arrayidx96, align 4
  br label %for.inc97

for.inc97:                                        ; preds = %for.body90
  %66 = load i32, i32* %i, align 4
  %inc98 = add nsw i32 %66, 1
  store i32 %inc98, i32* %i, align 4
  br label %for.cond87

for.end99:                                        ; preds = %for.cond87
  store i32 1, i32* %j, align 4
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc126, %for.end99
  %67 = load i32, i32* %j, align 4
  %68 = load i32, i32* %maxgrid.addr, align 4
  %sub101 = sub nsw i32 %68, 1
  %cmp102 = icmp sle i32 %67, %sub101
  br i1 %cmp102, label %for.body103, label %for.end128

for.body103:                                      ; preds = %for.cond100
  %69 = load i32, i32* %j, align 4
  store i32 %69, i32* %i, align 4
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc123, %for.body103
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %maxgrid.addr, align 4
  %sub105 = sub nsw i32 %71, 1
  %cmp106 = icmp sle i32 %70, %sub105
  br i1 %cmp106, label %for.body107, label %for.end125

for.body107:                                      ; preds = %for.cond104
  %72 = load [6 x i32]*, [6 x i32]** %path.addr, align 8
  %73 = load i32, i32* %j, align 4
  %sub108 = sub nsw i32 %73, 1
  %idxprom109 = sext i32 %sub108 to i64
  %arrayidx110 = getelementptr inbounds [6 x i32], [6 x i32]* %72, i64 %idxprom109
  %74 = load i32, i32* %i, align 4
  %sub111 = sub nsw i32 %74, 1
  %idxprom112 = sext i32 %sub111 to i64
  %arrayidx113 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx110, i64 0, i64 %idxprom112
  %75 = load i32, i32* %arrayidx113, align 4
  %76 = load [6 x i32]*, [6 x i32]** %mean.addr, align 8
  %77 = load i32, i32* %j, align 4
  %idxprom114 = sext i32 %77 to i64
  %arrayidx115 = getelementptr inbounds [6 x i32], [6 x i32]* %76, i64 %idxprom114
  %78 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %78 to i64
  %arrayidx117 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx115, i64 0, i64 %idxprom116
  %79 = load i32, i32* %arrayidx117, align 4
  %add118 = add nsw i32 %75, %79
  %80 = load [6 x i32]*, [6 x i32]** %path.addr, align 8
  %81 = load i32, i32* %j, align 4
  %idxprom119 = sext i32 %81 to i64
  %arrayidx120 = getelementptr inbounds [6 x i32], [6 x i32]* %80, i64 %idxprom119
  %82 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %82 to i64
  %arrayidx122 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx120, i64 0, i64 %idxprom121
  store i32 %add118, i32* %arrayidx122, align 4
  br label %for.inc123

for.inc123:                                       ; preds = %for.body107
  %83 = load i32, i32* %i, align 4
  %inc124 = add nsw i32 %83, 1
  store i32 %inc124, i32* %i, align 4
  br label %for.cond104

for.end125:                                       ; preds = %for.cond104
  br label %for.inc126

for.inc126:                                       ; preds = %for.end125
  %84 = load i32, i32* %j, align 4
  %inc127 = add nsw i32 %84, 1
  store i32 %inc127, i32* %j, align 4
  br label %for.cond100

for.end128:                                       ; preds = %for.cond100
  br label %for.inc129

for.inc129:                                       ; preds = %for.end128
  %85 = load i32, i32* %t, align 4
  %inc130 = add nsw i32 %85, 1
  store i32 %inc130, i32* %t, align 4
  br label %for.cond

for.end131:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_reg_detect_StrictFP(i32 %niter, i32 %maxgrid, i32 %length, [6 x i32]* %sum_tang, [6 x i32]* %mean, [6 x i32]* %path, [6 x [64 x i32]]* %diff, [6 x [64 x i32]]* %sum_diff) #0 {
entry:
  %niter.addr = alloca i32, align 4
  %maxgrid.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %sum_tang.addr = alloca [6 x i32]*, align 8
  %mean.addr = alloca [6 x i32]*, align 8
  %path.addr = alloca [6 x i32]*, align 8
  %diff.addr = alloca [6 x [64 x i32]]*, align 8
  %sum_diff.addr = alloca [6 x [64 x i32]]*, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cnt = alloca i32, align 4
  store i32 %niter, i32* %niter.addr, align 4
  store i32 %maxgrid, i32* %maxgrid.addr, align 4
  store i32 %length, i32* %length.addr, align 4
  store [6 x i32]* %sum_tang, [6 x i32]** %sum_tang.addr, align 8
  store [6 x i32]* %mean, [6 x i32]** %mean.addr, align 8
  store [6 x i32]* %path, [6 x i32]** %path.addr, align 8
  store [6 x [64 x i32]]* %diff, [6 x [64 x i32]]** %diff.addr, align 8
  store [6 x [64 x i32]]* %sum_diff, [6 x [64 x i32]]** %sum_diff.addr, align 8
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc129, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %niter.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end131

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc23, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %maxgrid.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp sle i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end25

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %j, align 4
  store i32 %4, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc20, %for.body3
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %maxgrid.addr, align 4
  %sub5 = sub nsw i32 %6, 1
  %cmp6 = icmp sle i32 %5, %sub5
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond4
  store i32 0, i32* %cnt, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %7 = load i32, i32* %cnt, align 4
  %8 = load i32, i32* %length.addr, align 4
  %sub9 = sub nsw i32 %8, 1
  %cmp10 = icmp sle i32 %7, %sub9
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %9 = load [6 x i32]*, [6 x i32]** %sum_tang.addr, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 %idxprom
  %11 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx, i64 0, i64 %idxprom12
  %12 = load i32, i32* %arrayidx13, align 4
  %13 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %diff.addr, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %13, i64 %idxprom14
  %15 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx15, i64 0, i64 %idxprom16
  %16 = load i32, i32* %cnt, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx17, i64 0, i64 %idxprom18
  store i32 %12, i32* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %17 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %cnt, align 4
  br label %for.cond8

for.end:                                          ; preds = %for.cond8
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond4

for.end22:                                        ; preds = %for.cond4
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %19 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %19, 1
  store i32 %inc24, i32* %j, align 4
  br label %for.cond1

for.end25:                                        ; preds = %for.cond1
  store i32 0, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc84, %for.end25
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %maxgrid.addr, align 4
  %sub27 = sub nsw i32 %21, 1
  %cmp28 = icmp sle i32 %20, %sub27
  br i1 %cmp28, label %for.body29, label %for.end86

for.body29:                                       ; preds = %for.cond26
  %22 = load i32, i32* %j, align 4
  store i32 %22, i32* %i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc81, %for.body29
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %maxgrid.addr, align 4
  %sub31 = sub nsw i32 %24, 1
  %cmp32 = icmp sle i32 %23, %sub31
  br i1 %cmp32, label %for.body33, label %for.end83

for.body33:                                       ; preds = %for.cond30
  %25 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %diff.addr, align 8
  %26 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %26 to i64
  %arrayidx35 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %25, i64 %idxprom34
  %27 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx35, i64 0, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx37, i64 0, i64 0
  %28 = load i32, i32* %arrayidx38, align 4
  %29 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %sum_diff.addr, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %29, i64 %idxprom39
  %31 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx40, i64 0, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx42, i64 0, i64 0
  store i32 %28, i32* %arrayidx43, align 4
  store i32 1, i32* %cnt, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc67, %for.body33
  %32 = load i32, i32* %cnt, align 4
  %33 = load i32, i32* %length.addr, align 4
  %sub45 = sub nsw i32 %33, 1
  %cmp46 = icmp sle i32 %32, %sub45
  br i1 %cmp46, label %for.body47, label %for.end69

for.body47:                                       ; preds = %for.cond44
  %34 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %sum_diff.addr, align 8
  %35 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %35 to i64
  %arrayidx49 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %34, i64 %idxprom48
  %36 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %36 to i64
  %arrayidx51 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx49, i64 0, i64 %idxprom50
  %37 = load i32, i32* %cnt, align 4
  %sub52 = sub nsw i32 %37, 1
  %idxprom53 = sext i32 %sub52 to i64
  %arrayidx54 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx51, i64 0, i64 %idxprom53
  %38 = load i32, i32* %arrayidx54, align 4
  %39 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %diff.addr, align 8
  %40 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %40 to i64
  %arrayidx56 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %39, i64 %idxprom55
  %41 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %41 to i64
  %arrayidx58 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx56, i64 0, i64 %idxprom57
  %42 = load i32, i32* %cnt, align 4
  %idxprom59 = sext i32 %42 to i64
  %arrayidx60 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx58, i64 0, i64 %idxprom59
  %43 = load i32, i32* %arrayidx60, align 4
  %add = add nsw i32 %38, %43
  %44 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %sum_diff.addr, align 8
  %45 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %45 to i64
  %arrayidx62 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %44, i64 %idxprom61
  %46 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %46 to i64
  %arrayidx64 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx62, i64 0, i64 %idxprom63
  %47 = load i32, i32* %cnt, align 4
  %idxprom65 = sext i32 %47 to i64
  %arrayidx66 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx64, i64 0, i64 %idxprom65
  store i32 %add, i32* %arrayidx66, align 4
  br label %for.inc67

for.inc67:                                        ; preds = %for.body47
  %48 = load i32, i32* %cnt, align 4
  %inc68 = add nsw i32 %48, 1
  store i32 %inc68, i32* %cnt, align 4
  br label %for.cond44

for.end69:                                        ; preds = %for.cond44
  %49 = load [6 x [64 x i32]]*, [6 x [64 x i32]]** %sum_diff.addr, align 8
  %50 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %50 to i64
  %arrayidx71 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %49, i64 %idxprom70
  %51 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %51 to i64
  %arrayidx73 = getelementptr inbounds [6 x [64 x i32]], [6 x [64 x i32]]* %arrayidx71, i64 0, i64 %idxprom72
  %52 = load i32, i32* %length.addr, align 4
  %sub74 = sub nsw i32 %52, 1
  %idxprom75 = sext i32 %sub74 to i64
  %arrayidx76 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx73, i64 0, i64 %idxprom75
  %53 = load i32, i32* %arrayidx76, align 4
  %54 = load [6 x i32]*, [6 x i32]** %mean.addr, align 8
  %55 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %55 to i64
  %arrayidx78 = getelementptr inbounds [6 x i32], [6 x i32]* %54, i64 %idxprom77
  %56 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %56 to i64
  %arrayidx80 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx78, i64 0, i64 %idxprom79
  store i32 %53, i32* %arrayidx80, align 4
  br label %for.inc81

for.inc81:                                        ; preds = %for.end69
  %57 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %57, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond30

for.end83:                                        ; preds = %for.cond30
  br label %for.inc84

for.inc84:                                        ; preds = %for.end83
  %58 = load i32, i32* %j, align 4
  %inc85 = add nsw i32 %58, 1
  store i32 %inc85, i32* %j, align 4
  br label %for.cond26

for.end86:                                        ; preds = %for.cond26
  store i32 0, i32* %i, align 4
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc97, %for.end86
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %maxgrid.addr, align 4
  %sub88 = sub nsw i32 %60, 1
  %cmp89 = icmp sle i32 %59, %sub88
  br i1 %cmp89, label %for.body90, label %for.end99

for.body90:                                       ; preds = %for.cond87
  %61 = load [6 x i32]*, [6 x i32]** %mean.addr, align 8
  %arrayidx91 = getelementptr inbounds [6 x i32], [6 x i32]* %61, i64 0
  %62 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %62 to i64
  %arrayidx93 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx91, i64 0, i64 %idxprom92
  %63 = load i32, i32* %arrayidx93, align 4
  %64 = load [6 x i32]*, [6 x i32]** %path.addr, align 8
  %arrayidx94 = getelementptr inbounds [6 x i32], [6 x i32]* %64, i64 0
  %65 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %65 to i64
  %arrayidx96 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx94, i64 0, i64 %idxprom95
  store i32 %63, i32* %arrayidx96, align 4
  br label %for.inc97

for.inc97:                                        ; preds = %for.body90
  %66 = load i32, i32* %i, align 4
  %inc98 = add nsw i32 %66, 1
  store i32 %inc98, i32* %i, align 4
  br label %for.cond87

for.end99:                                        ; preds = %for.cond87
  store i32 1, i32* %j, align 4
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc126, %for.end99
  %67 = load i32, i32* %j, align 4
  %68 = load i32, i32* %maxgrid.addr, align 4
  %sub101 = sub nsw i32 %68, 1
  %cmp102 = icmp sle i32 %67, %sub101
  br i1 %cmp102, label %for.body103, label %for.end128

for.body103:                                      ; preds = %for.cond100
  %69 = load i32, i32* %j, align 4
  store i32 %69, i32* %i, align 4
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc123, %for.body103
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %maxgrid.addr, align 4
  %sub105 = sub nsw i32 %71, 1
  %cmp106 = icmp sle i32 %70, %sub105
  br i1 %cmp106, label %for.body107, label %for.end125

for.body107:                                      ; preds = %for.cond104
  %72 = load [6 x i32]*, [6 x i32]** %path.addr, align 8
  %73 = load i32, i32* %j, align 4
  %sub108 = sub nsw i32 %73, 1
  %idxprom109 = sext i32 %sub108 to i64
  %arrayidx110 = getelementptr inbounds [6 x i32], [6 x i32]* %72, i64 %idxprom109
  %74 = load i32, i32* %i, align 4
  %sub111 = sub nsw i32 %74, 1
  %idxprom112 = sext i32 %sub111 to i64
  %arrayidx113 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx110, i64 0, i64 %idxprom112
  %75 = load i32, i32* %arrayidx113, align 4
  %76 = load [6 x i32]*, [6 x i32]** %mean.addr, align 8
  %77 = load i32, i32* %j, align 4
  %idxprom114 = sext i32 %77 to i64
  %arrayidx115 = getelementptr inbounds [6 x i32], [6 x i32]* %76, i64 %idxprom114
  %78 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %78 to i64
  %arrayidx117 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx115, i64 0, i64 %idxprom116
  %79 = load i32, i32* %arrayidx117, align 4
  %add118 = add nsw i32 %75, %79
  %80 = load [6 x i32]*, [6 x i32]** %path.addr, align 8
  %81 = load i32, i32* %j, align 4
  %idxprom119 = sext i32 %81 to i64
  %arrayidx120 = getelementptr inbounds [6 x i32], [6 x i32]* %80, i64 %idxprom119
  %82 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %82 to i64
  %arrayidx122 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx120, i64 0, i64 %idxprom121
  store i32 %add118, i32* %arrayidx122, align 4
  br label %for.inc123

for.inc123:                                       ; preds = %for.body107
  %83 = load i32, i32* %i, align 4
  %inc124 = add nsw i32 %83, 1
  store i32 %inc124, i32* %i, align 4
  br label %for.cond104

for.end125:                                       ; preds = %for.cond104
  br label %for.inc126

for.inc126:                                       ; preds = %for.end125
  %84 = load i32, i32* %j, align 4
  %inc127 = add nsw i32 %84, 1
  store i32 %inc127, i32* %j, align 4
  br label %for.cond100

for.end128:                                       ; preds = %for.cond100
  br label %for.inc129

for.inc129:                                       ; preds = %for.end128
  %85 = load i32, i32* %t, align 4
  %inc130 = add nsw i32 %85, 1
  store i32 %inc130, i32* %t, align 4
  br label %for.cond

for.end131:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_FP(i32 %maxgrid, [6 x i32]* %A, [6 x i32]* %B) #0 {
entry:
  %retval = alloca i32, align 4
  %maxgrid.addr = alloca i32, align 4
  %A.addr = alloca [6 x i32]*, align 8
  %B.addr = alloca [6 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %AbsTolerance = alloca double, align 8
  %V1 = alloca double, align 8
  %V2 = alloca double, align 8
  %Diff = alloca double, align 8
  store i32 %maxgrid, i32* %maxgrid.addr, align 4
  store [6 x i32]* %A, [6 x i32]** %A.addr, align 8
  store [6 x i32]* %B, [6 x i32]** %B.addr, align 8
  store double 1.000000e-05, double* %AbsTolerance, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %maxgrid.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %maxgrid.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load [6 x i32]*, [6 x i32]** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %7 = load i32, i32* %arrayidx5, align 4
  %conv = sitofp i32 %7 to double
  store double %conv, double* %V1, align 8
  %8 = load [6 x i32]*, [6 x i32]** %B.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 %idxprom6
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx7, i64 0, i64 %idxprom8
  %11 = load i32, i32* %arrayidx9, align 4
  %conv10 = sitofp i32 %11 to double
  store double %conv10, double* %V2, align 8
  %12 = load double, double* %V1, align 8
  %13 = load double, double* %V2, align 8
  %sub = fsub double %12, %13
  %call = call double @fabs(double %sub) #7
  store double %call, double* %Diff, align 8
  %14 = load double, double* %Diff, align 8
  %15 = load double, double* %AbsTolerance, align 8
  %cmp11 = fcmp ogt double %14, %15
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %j, align 4
  %19 = load double, double* %V1, align 8
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %j, align 4
  %22 = load double, double* %V2, align 8
  %23 = load double, double* %AbsTolerance, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i32 0, i32 0), i32 %17, i32 %18, double %19, i32 %20, i32 %21, double %22, double %23)
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
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %25, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end16:                                        ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end16, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 %maxgrid, [6 x i32]* %path) #0 {
entry:
  %maxgrid.addr = alloca i32, align 4
  %path.addr = alloca [6 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %maxgrid, i32* %maxgrid.addr, align 4
  store [6 x i32]* %path, [6 x i32]** %path.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %maxgrid.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %maxgrid.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load [6 x i32]*, [6 x i32]** %path.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 %idxprom
  %7 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %8)
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %maxgrid.addr, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %11
  %rem = srem i32 %add, 20
  %cmp6 = icmp eq i32 %rem, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %14, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  ret void
}

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
