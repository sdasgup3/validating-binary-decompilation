; ModuleID = 'gramschmidt/gramschmidt.bc'
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
@.str.3 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
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
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %A = alloca [512 x [512 x double]]*, align 8
  %R = alloca [512 x [512 x double]]*, align 8
  %Q = alloca [512 x [512 x double]]*, align 8
  %A_StrictFP = alloca [512 x [512 x double]]*, align 8
  %R_StrictFP = alloca [512 x [512 x double]]*, align 8
  %Q_StrictFP = alloca [512 x [512 x double]]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 512, i32* %ni, align 4
  store i32 512, i32* %nj, align 4
  %call = call i8* @polybench_alloc_data(i64 262144, i32 8)
  %0 = bitcast i8* %call to [512 x [512 x double]]*
  store [512 x [512 x double]]* %0, [512 x [512 x double]]** %A, align 8
  %call1 = call i8* @polybench_alloc_data(i64 262144, i32 8)
  %1 = bitcast i8* %call1 to [512 x [512 x double]]*
  store [512 x [512 x double]]* %1, [512 x [512 x double]]** %R, align 8
  %call2 = call i8* @polybench_alloc_data(i64 262144, i32 8)
  %2 = bitcast i8* %call2 to [512 x [512 x double]]*
  store [512 x [512 x double]]* %2, [512 x [512 x double]]** %Q, align 8
  %call3 = call i8* @polybench_alloc_data(i64 262144, i32 8)
  %3 = bitcast i8* %call3 to [512 x [512 x double]]*
  store [512 x [512 x double]]* %3, [512 x [512 x double]]** %A_StrictFP, align 8
  %call4 = call i8* @polybench_alloc_data(i64 262144, i32 8)
  %4 = bitcast i8* %call4 to [512 x [512 x double]]*
  store [512 x [512 x double]]* %4, [512 x [512 x double]]** %R_StrictFP, align 8
  %call5 = call i8* @polybench_alloc_data(i64 262144, i32 8)
  %5 = bitcast i8* %call5 to [512 x [512 x double]]*
  store [512 x [512 x double]]* %5, [512 x [512 x double]]** %Q_StrictFP, align 8
  %6 = load i32, i32* %ni, align 4
  %7 = load i32, i32* %nj, align 4
  %8 = load [512 x [512 x double]]*, [512 x [512 x double]]** %A, align 8
  %arraydecay = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %8, i32 0, i32 0
  %9 = load [512 x [512 x double]]*, [512 x [512 x double]]** %R, align 8
  %arraydecay6 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %9, i32 0, i32 0
  %10 = load [512 x [512 x double]]*, [512 x [512 x double]]** %Q, align 8
  %arraydecay7 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %10, i32 0, i32 0
  call void @init_array(i32 %6, i32 %7, [512 x double]* %arraydecay, [512 x double]* %arraydecay6, [512 x double]* %arraydecay7)
  %11 = load i32, i32* %ni, align 4
  %12 = load i32, i32* %nj, align 4
  %13 = load [512 x [512 x double]]*, [512 x [512 x double]]** %A, align 8
  %arraydecay8 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %13, i32 0, i32 0
  %14 = load [512 x [512 x double]]*, [512 x [512 x double]]** %R, align 8
  %arraydecay9 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %14, i32 0, i32 0
  %15 = load [512 x [512 x double]]*, [512 x [512 x double]]** %Q, align 8
  %arraydecay10 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %15, i32 0, i32 0
  call void @kernel_gramschmidt(i32 %11, i32 %12, [512 x double]* %arraydecay8, [512 x double]* %arraydecay9, [512 x double]* %arraydecay10)
  %16 = load i32, i32* %ni, align 4
  %17 = load i32, i32* %nj, align 4
  %18 = load [512 x [512 x double]]*, [512 x [512 x double]]** %A_StrictFP, align 8
  %arraydecay11 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %18, i32 0, i32 0
  %19 = load [512 x [512 x double]]*, [512 x [512 x double]]** %R_StrictFP, align 8
  %arraydecay12 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %19, i32 0, i32 0
  %20 = load [512 x [512 x double]]*, [512 x [512 x double]]** %Q_StrictFP, align 8
  %arraydecay13 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %20, i32 0, i32 0
  call void @init_array(i32 %16, i32 %17, [512 x double]* %arraydecay11, [512 x double]* %arraydecay12, [512 x double]* %arraydecay13)
  %21 = load i32, i32* %ni, align 4
  %22 = load i32, i32* %nj, align 4
  %23 = load [512 x [512 x double]]*, [512 x [512 x double]]** %A_StrictFP, align 8
  %arraydecay14 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %23, i32 0, i32 0
  %24 = load [512 x [512 x double]]*, [512 x [512 x double]]** %R_StrictFP, align 8
  %arraydecay15 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %24, i32 0, i32 0
  %25 = load [512 x [512 x double]]*, [512 x [512 x double]]** %Q_StrictFP, align 8
  %arraydecay16 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %25, i32 0, i32 0
  call void @kernel_gramschmidt_StrictFP(i32 %21, i32 %22, [512 x double]* %arraydecay14, [512 x double]* %arraydecay15, [512 x double]* %arraydecay16)
  %26 = load i32, i32* %ni, align 4
  %27 = load i32, i32* %nj, align 4
  %28 = load [512 x [512 x double]]*, [512 x [512 x double]]** %A, align 8
  %arraydecay17 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %28, i32 0, i32 0
  %29 = load [512 x [512 x double]]*, [512 x [512 x double]]** %A_StrictFP, align 8
  %arraydecay18 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %29, i32 0, i32 0
  %call19 = call i32 @check_FP(i32 %26, i32 %27, [512 x double]* %arraydecay17, [512 x double]* %arraydecay18)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %30 = load i32, i32* %ni, align 4
  %31 = load i32, i32* %nj, align 4
  %32 = load [512 x [512 x double]]*, [512 x [512 x double]]** %R, align 8
  %arraydecay20 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %32, i32 0, i32 0
  %33 = load [512 x [512 x double]]*, [512 x [512 x double]]** %R_StrictFP, align 8
  %arraydecay21 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %33, i32 0, i32 0
  %call22 = call i32 @check_FP(i32 %30, i32 %31, [512 x double]* %arraydecay20, [512 x double]* %arraydecay21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end
  %34 = load i32, i32* %ni, align 4
  %35 = load i32, i32* %nj, align 4
  %36 = load [512 x [512 x double]]*, [512 x [512 x double]]** %Q, align 8
  %arraydecay26 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %36, i32 0, i32 0
  %37 = load [512 x [512 x double]]*, [512 x [512 x double]]** %Q_StrictFP, align 8
  %arraydecay27 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %37, i32 0, i32 0
  %call28 = call i32 @check_FP(i32 %34, i32 %35, [512 x double]* %arraydecay26, [512 x double]* %arraydecay27)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end25
  store i32 1, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end25
  %38 = load i32, i32* %ni, align 4
  %39 = load i32, i32* %nj, align 4
  %40 = load [512 x [512 x double]]*, [512 x [512 x double]]** %A_StrictFP, align 8
  %arraydecay32 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %40, i32 0, i32 0
  %41 = load [512 x [512 x double]]*, [512 x [512 x double]]** %R_StrictFP, align 8
  %arraydecay33 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %41, i32 0, i32 0
  %42 = load [512 x [512 x double]]*, [512 x [512 x double]]** %Q_StrictFP, align 8
  %arraydecay34 = getelementptr inbounds [512 x [512 x double]], [512 x [512 x double]]* %42, i32 0, i32 0
  call void @print_array(i32 %38, i32 %39, [512 x double]* %arraydecay32, [512 x double]* %arraydecay33, [512 x double]* %arraydecay34)
  %43 = load [512 x [512 x double]]*, [512 x [512 x double]]** %A, align 8
  %44 = bitcast [512 x [512 x double]]* %43 to i8*
  call void @free(i8* %44) #5
  %45 = load [512 x [512 x double]]*, [512 x [512 x double]]** %R, align 8
  %46 = bitcast [512 x [512 x double]]* %45 to i8*
  call void @free(i8* %46) #5
  %47 = load [512 x [512 x double]]*, [512 x [512 x double]]** %Q, align 8
  %48 = bitcast [512 x [512 x double]]* %47 to i8*
  call void @free(i8* %48) #5
  %49 = load [512 x [512 x double]]*, [512 x [512 x double]]** %A_StrictFP, align 8
  %50 = bitcast [512 x [512 x double]]* %49 to i8*
  call void @free(i8* %50) #5
  %51 = load [512 x [512 x double]]*, [512 x [512 x double]]** %R_StrictFP, align 8
  %52 = bitcast [512 x [512 x double]]* %51 to i8*
  call void @free(i8* %52) #5
  %53 = load [512 x [512 x double]]*, [512 x [512 x double]]** %Q_StrictFP, align 8
  %54 = bitcast [512 x [512 x double]]* %53 to i8*
  call void @free(i8* %54) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then30, %if.then24, %if.then
  %55 = load i32, i32* %retval, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 %ni, i32 %nj, [512 x double]* %A, [512 x double]* %R, [512 x double]* %Q) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %A.addr = alloca [512 x double]*, align 8
  %R.addr = alloca [512 x double]*, align 8
  %Q.addr = alloca [512 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store [512 x double]* %A, [512 x double]** %A.addr, align 8
  store [512 x double]* %R, [512 x double]** %R.addr, align 8
  store [512 x double]* %Q, [512 x double]** %Q.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %conv = sitofp i32 %4 to double
  %5 = load i32, i32* %j, align 4
  %conv4 = sitofp i32 %5 to double
  %mul = fmul double %conv, %conv4
  %6 = load i32, i32* %ni.addr, align 4
  %conv5 = sitofp i32 %6 to double
  %add = fadd double %mul, %conv5
  %7 = load i32, i32* %ni.addr, align 4
  %conv6 = sitofp i32 %7 to double
  %div = fdiv double %add, %conv6
  %8 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [512 x double], [512 x double]* %8, i64 %idxprom
  %10 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx, i64 0, i64 %idxprom7
  store double %div, double* %arrayidx8, align 8
  %11 = load i32, i32* %i, align 4
  %conv9 = sitofp i32 %11 to double
  %12 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %12, 1
  %conv11 = sitofp i32 %add10 to double
  %mul12 = fmul double %conv9, %conv11
  %13 = load i32, i32* %nj.addr, align 4
  %conv13 = sitofp i32 %13 to double
  %add14 = fadd double %mul12, %conv13
  %14 = load i32, i32* %nj.addr, align 4
  %conv15 = sitofp i32 %14 to double
  %div16 = fdiv double %add14, %conv15
  %15 = load [512 x double]*, [512 x double]** %Q.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [512 x double], [512 x double]* %15, i64 %idxprom17
  %17 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx18, i64 0, i64 %idxprom19
  store double %div16, double* %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %19, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond

for.end23:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc47, %for.end23
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %nj.addr, align 4
  %cmp25 = icmp slt i32 %20, %21
  br i1 %cmp25, label %for.body27, label %for.end49

for.body27:                                       ; preds = %for.cond24
  store i32 0, i32* %j, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc44, %for.body27
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %nj.addr, align 4
  %cmp29 = icmp slt i32 %22, %23
  br i1 %cmp29, label %for.body31, label %for.end46

for.body31:                                       ; preds = %for.cond28
  %24 = load i32, i32* %i, align 4
  %conv32 = sitofp i32 %24 to double
  %25 = load i32, i32* %j, align 4
  %add33 = add nsw i32 %25, 2
  %conv34 = sitofp i32 %add33 to double
  %mul35 = fmul double %conv32, %conv34
  %26 = load i32, i32* %nj.addr, align 4
  %conv36 = sitofp i32 %26 to double
  %add37 = fadd double %mul35, %conv36
  %27 = load i32, i32* %nj.addr, align 4
  %conv38 = sitofp i32 %27 to double
  %div39 = fdiv double %add37, %conv38
  %28 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %29 to i64
  %arrayidx41 = getelementptr inbounds [512 x double], [512 x double]* %28, i64 %idxprom40
  %30 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %30 to i64
  %arrayidx43 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx41, i64 0, i64 %idxprom42
  store double %div39, double* %arrayidx43, align 8
  br label %for.inc44

for.inc44:                                        ; preds = %for.body31
  %31 = load i32, i32* %j, align 4
  %inc45 = add nsw i32 %31, 1
  store i32 %inc45, i32* %j, align 4
  br label %for.cond28

for.end46:                                        ; preds = %for.cond28
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %32 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %32, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond24

for.end49:                                        ; preds = %for.cond24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gramschmidt(i32 %ni, i32 %nj, [512 x double]* %A, [512 x double]* %R, [512 x double]* %Q) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %A.addr = alloca [512 x double]*, align 8
  %R.addr = alloca [512 x double]*, align 8
  %Q.addr = alloca [512 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nrm = alloca double, align 8
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store [512 x double]* %A, [512 x double]** %A.addr, align 8
  store [512 x double]* %R, [512 x double]** %R.addr, align 8
  store [512 x double]* %Q, [512 x double]** %Q.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc86, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %nj.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end88

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %nrm, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ni.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [512 x double], [512 x double]* %4, i64 %idxprom
  %6 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx, i64 0, i64 %idxprom4
  %7 = load double, double* %arrayidx5, align 8
  %8 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [512 x double], [512 x double]* %8, i64 %idxprom6
  %10 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx7, i64 0, i64 %idxprom8
  %11 = load double, double* %arrayidx9, align 8
  %mul = fmul double %7, %11
  %12 = load double, double* %nrm, align 8
  %add = fadd double %12, %mul
  store double %add, double* %nrm, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %14 = load double, double* %nrm, align 8
  %call = call double @sqrt(double %14) #5
  %15 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %16 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [512 x double], [512 x double]* %15, i64 %idxprom10
  %17 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx11, i64 0, i64 %idxprom12
  store double %call, double* %arrayidx13, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc29, %for.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %ni.addr, align 4
  %cmp15 = icmp slt i32 %18, %19
  br i1 %cmp15, label %for.body16, label %for.end31

for.body16:                                       ; preds = %for.cond14
  %20 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds [512 x double], [512 x double]* %20, i64 %idxprom17
  %22 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx18, i64 0, i64 %idxprom19
  %23 = load double, double* %arrayidx20, align 8
  %24 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %25 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds [512 x double], [512 x double]* %24, i64 %idxprom21
  %26 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %26 to i64
  %arrayidx24 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx22, i64 0, i64 %idxprom23
  %27 = load double, double* %arrayidx24, align 8
  %div = fdiv double %23, %27
  %28 = load [512 x double]*, [512 x double]** %Q.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds [512 x double], [512 x double]* %28, i64 %idxprom25
  %30 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %30 to i64
  %arrayidx28 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx26, i64 0, i64 %idxprom27
  store double %div, double* %arrayidx28, align 8
  br label %for.inc29

for.inc29:                                        ; preds = %for.body16
  %31 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %31, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond14

for.end31:                                        ; preds = %for.cond14
  %32 = load i32, i32* %k, align 4
  %add32 = add nsw i32 %32, 1
  store i32 %add32, i32* %j, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc83, %for.end31
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %nj.addr, align 4
  %cmp34 = icmp slt i32 %33, %34
  br i1 %cmp34, label %for.body35, label %for.end85

for.body35:                                       ; preds = %for.cond33
  %35 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %36 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %36 to i64
  %arrayidx37 = getelementptr inbounds [512 x double], [512 x double]* %35, i64 %idxprom36
  %37 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %37 to i64
  %arrayidx39 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx37, i64 0, i64 %idxprom38
  store double 0.000000e+00, double* %arrayidx39, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc57, %for.body35
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %ni.addr, align 4
  %cmp41 = icmp slt i32 %38, %39
  br i1 %cmp41, label %for.body42, label %for.end59

for.body42:                                       ; preds = %for.cond40
  %40 = load [512 x double]*, [512 x double]** %Q.addr, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %41 to i64
  %arrayidx44 = getelementptr inbounds [512 x double], [512 x double]* %40, i64 %idxprom43
  %42 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %42 to i64
  %arrayidx46 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx44, i64 0, i64 %idxprom45
  %43 = load double, double* %arrayidx46, align 8
  %44 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %45 to i64
  %arrayidx48 = getelementptr inbounds [512 x double], [512 x double]* %44, i64 %idxprom47
  %46 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %46 to i64
  %arrayidx50 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx48, i64 0, i64 %idxprom49
  %47 = load double, double* %arrayidx50, align 8
  %mul51 = fmul double %43, %47
  %48 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %49 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %49 to i64
  %arrayidx53 = getelementptr inbounds [512 x double], [512 x double]* %48, i64 %idxprom52
  %50 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %50 to i64
  %arrayidx55 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx53, i64 0, i64 %idxprom54
  %51 = load double, double* %arrayidx55, align 8
  %add56 = fadd double %51, %mul51
  store double %add56, double* %arrayidx55, align 8
  br label %for.inc57

for.inc57:                                        ; preds = %for.body42
  %52 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %52, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond40

for.end59:                                        ; preds = %for.cond40
  store i32 0, i32* %i, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc80, %for.end59
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %ni.addr, align 4
  %cmp61 = icmp slt i32 %53, %54
  br i1 %cmp61, label %for.body62, label %for.end82

for.body62:                                       ; preds = %for.cond60
  %55 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %56 to i64
  %arrayidx64 = getelementptr inbounds [512 x double], [512 x double]* %55, i64 %idxprom63
  %57 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %57 to i64
  %arrayidx66 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx64, i64 0, i64 %idxprom65
  %58 = load double, double* %arrayidx66, align 8
  %59 = load [512 x double]*, [512 x double]** %Q.addr, align 8
  %60 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %60 to i64
  %arrayidx68 = getelementptr inbounds [512 x double], [512 x double]* %59, i64 %idxprom67
  %61 = load i32, i32* %k, align 4
  %idxprom69 = sext i32 %61 to i64
  %arrayidx70 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx68, i64 0, i64 %idxprom69
  %62 = load double, double* %arrayidx70, align 8
  %63 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %64 = load i32, i32* %k, align 4
  %idxprom71 = sext i32 %64 to i64
  %arrayidx72 = getelementptr inbounds [512 x double], [512 x double]* %63, i64 %idxprom71
  %65 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %65 to i64
  %arrayidx74 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx72, i64 0, i64 %idxprom73
  %66 = load double, double* %arrayidx74, align 8
  %mul75 = fmul double %62, %66
  %sub = fsub double %58, %mul75
  %67 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %68 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %68 to i64
  %arrayidx77 = getelementptr inbounds [512 x double], [512 x double]* %67, i64 %idxprom76
  %69 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %69 to i64
  %arrayidx79 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx77, i64 0, i64 %idxprom78
  store double %sub, double* %arrayidx79, align 8
  br label %for.inc80

for.inc80:                                        ; preds = %for.body62
  %70 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %70, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond60

for.end82:                                        ; preds = %for.cond60
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %71 = load i32, i32* %j, align 4
  %inc84 = add nsw i32 %71, 1
  store i32 %inc84, i32* %j, align 4
  br label %for.cond33

for.end85:                                        ; preds = %for.cond33
  br label %for.inc86

for.inc86:                                        ; preds = %for.end85
  %72 = load i32, i32* %k, align 4
  %inc87 = add nsw i32 %72, 1
  store i32 %inc87, i32* %k, align 4
  br label %for.cond

for.end88:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gramschmidt_StrictFP(i32 %ni, i32 %nj, [512 x double]* %A, [512 x double]* %R, [512 x double]* %Q) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %A.addr = alloca [512 x double]*, align 8
  %R.addr = alloca [512 x double]*, align 8
  %Q.addr = alloca [512 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nrm = alloca double, align 8
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store [512 x double]* %A, [512 x double]** %A.addr, align 8
  store [512 x double]* %R, [512 x double]** %R.addr, align 8
  store [512 x double]* %Q, [512 x double]** %Q.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc86, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %nj.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end88

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %nrm, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ni.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [512 x double], [512 x double]* %4, i64 %idxprom
  %6 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx, i64 0, i64 %idxprom4
  %7 = load double, double* %arrayidx5, align 8
  %8 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [512 x double], [512 x double]* %8, i64 %idxprom6
  %10 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx7, i64 0, i64 %idxprom8
  %11 = load double, double* %arrayidx9, align 8
  %mul = fmul double %7, %11
  %12 = load double, double* %nrm, align 8
  %add = fadd double %12, %mul
  store double %add, double* %nrm, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %14 = load double, double* %nrm, align 8
  %call = call double @sqrt(double %14) #5
  %15 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %16 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [512 x double], [512 x double]* %15, i64 %idxprom10
  %17 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx11, i64 0, i64 %idxprom12
  store double %call, double* %arrayidx13, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc29, %for.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %ni.addr, align 4
  %cmp15 = icmp slt i32 %18, %19
  br i1 %cmp15, label %for.body16, label %for.end31

for.body16:                                       ; preds = %for.cond14
  %20 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds [512 x double], [512 x double]* %20, i64 %idxprom17
  %22 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx18, i64 0, i64 %idxprom19
  %23 = load double, double* %arrayidx20, align 8
  %24 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %25 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds [512 x double], [512 x double]* %24, i64 %idxprom21
  %26 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %26 to i64
  %arrayidx24 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx22, i64 0, i64 %idxprom23
  %27 = load double, double* %arrayidx24, align 8
  %div = fdiv double %23, %27
  %28 = load [512 x double]*, [512 x double]** %Q.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds [512 x double], [512 x double]* %28, i64 %idxprom25
  %30 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %30 to i64
  %arrayidx28 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx26, i64 0, i64 %idxprom27
  store double %div, double* %arrayidx28, align 8
  br label %for.inc29

for.inc29:                                        ; preds = %for.body16
  %31 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %31, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond14

for.end31:                                        ; preds = %for.cond14
  %32 = load i32, i32* %k, align 4
  %add32 = add nsw i32 %32, 1
  store i32 %add32, i32* %j, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc83, %for.end31
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %nj.addr, align 4
  %cmp34 = icmp slt i32 %33, %34
  br i1 %cmp34, label %for.body35, label %for.end85

for.body35:                                       ; preds = %for.cond33
  %35 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %36 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %36 to i64
  %arrayidx37 = getelementptr inbounds [512 x double], [512 x double]* %35, i64 %idxprom36
  %37 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %37 to i64
  %arrayidx39 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx37, i64 0, i64 %idxprom38
  store double 0.000000e+00, double* %arrayidx39, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc57, %for.body35
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %ni.addr, align 4
  %cmp41 = icmp slt i32 %38, %39
  br i1 %cmp41, label %for.body42, label %for.end59

for.body42:                                       ; preds = %for.cond40
  %40 = load [512 x double]*, [512 x double]** %Q.addr, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %41 to i64
  %arrayidx44 = getelementptr inbounds [512 x double], [512 x double]* %40, i64 %idxprom43
  %42 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %42 to i64
  %arrayidx46 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx44, i64 0, i64 %idxprom45
  %43 = load double, double* %arrayidx46, align 8
  %44 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %45 to i64
  %arrayidx48 = getelementptr inbounds [512 x double], [512 x double]* %44, i64 %idxprom47
  %46 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %46 to i64
  %arrayidx50 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx48, i64 0, i64 %idxprom49
  %47 = load double, double* %arrayidx50, align 8
  %mul51 = fmul double %43, %47
  %48 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %49 = load i32, i32* %k, align 4
  %idxprom52 = sext i32 %49 to i64
  %arrayidx53 = getelementptr inbounds [512 x double], [512 x double]* %48, i64 %idxprom52
  %50 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %50 to i64
  %arrayidx55 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx53, i64 0, i64 %idxprom54
  %51 = load double, double* %arrayidx55, align 8
  %add56 = fadd double %51, %mul51
  store double %add56, double* %arrayidx55, align 8
  br label %for.inc57

for.inc57:                                        ; preds = %for.body42
  %52 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %52, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond40

for.end59:                                        ; preds = %for.cond40
  store i32 0, i32* %i, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc80, %for.end59
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %ni.addr, align 4
  %cmp61 = icmp slt i32 %53, %54
  br i1 %cmp61, label %for.body62, label %for.end82

for.body62:                                       ; preds = %for.cond60
  %55 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %56 to i64
  %arrayidx64 = getelementptr inbounds [512 x double], [512 x double]* %55, i64 %idxprom63
  %57 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %57 to i64
  %arrayidx66 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx64, i64 0, i64 %idxprom65
  %58 = load double, double* %arrayidx66, align 8
  %59 = load [512 x double]*, [512 x double]** %Q.addr, align 8
  %60 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %60 to i64
  %arrayidx68 = getelementptr inbounds [512 x double], [512 x double]* %59, i64 %idxprom67
  %61 = load i32, i32* %k, align 4
  %idxprom69 = sext i32 %61 to i64
  %arrayidx70 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx68, i64 0, i64 %idxprom69
  %62 = load double, double* %arrayidx70, align 8
  %63 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %64 = load i32, i32* %k, align 4
  %idxprom71 = sext i32 %64 to i64
  %arrayidx72 = getelementptr inbounds [512 x double], [512 x double]* %63, i64 %idxprom71
  %65 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %65 to i64
  %arrayidx74 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx72, i64 0, i64 %idxprom73
  %66 = load double, double* %arrayidx74, align 8
  %mul75 = fmul double %62, %66
  %sub = fsub double %58, %mul75
  %67 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %68 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %68 to i64
  %arrayidx77 = getelementptr inbounds [512 x double], [512 x double]* %67, i64 %idxprom76
  %69 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %69 to i64
  %arrayidx79 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx77, i64 0, i64 %idxprom78
  store double %sub, double* %arrayidx79, align 8
  br label %for.inc80

for.inc80:                                        ; preds = %for.body62
  %70 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %70, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond60

for.end82:                                        ; preds = %for.cond60
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %71 = load i32, i32* %j, align 4
  %inc84 = add nsw i32 %71, 1
  store i32 %inc84, i32* %j, align 4
  br label %for.cond33

for.end85:                                        ; preds = %for.cond33
  br label %for.inc86

for.inc86:                                        ; preds = %for.end85
  %72 = load i32, i32* %k, align 4
  %inc87 = add nsw i32 %72, 1
  store i32 %inc87, i32* %k, align 4
  br label %for.cond

for.end88:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_FP(i32 %ni, i32 %nj, [512 x double]* %A, [512 x double]* %B) #0 {
entry:
  %retval = alloca i32, align 4
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %A.addr = alloca [512 x double]*, align 8
  %B.addr = alloca [512 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %AbsTolerance = alloca double, align 8
  %V1 = alloca double, align 8
  %V2 = alloca double, align 8
  %Diff = alloca double, align 8
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store [512 x double]* %A, [512 x double]** %A.addr, align 8
  store [512 x double]* %B, [512 x double]** %B.addr, align 8
  store double 1.000000e-05, double* %AbsTolerance, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [512 x double], [512 x double]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx, i64 0, i64 %idxprom4
  %7 = load double, double* %arrayidx5, align 8
  store double %7, double* %V1, align 8
  %8 = load [512 x double]*, [512 x double]** %B.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [512 x double], [512 x double]* %8, i64 %idxprom6
  %10 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx7, i64 0, i64 %idxprom8
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
define internal void @print_array(i32 %ni, i32 %nj, [512 x double]* %A, [512 x double]* %R, [512 x double]* %Q) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %A.addr = alloca [512 x double]*, align 8
  %R.addr = alloca [512 x double]*, align 8
  %Q.addr = alloca [512 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store [512 x double]* %A, [512 x double]** %A.addr, align 8
  store [512 x double]* %R, [512 x double]** %R.addr, align 8
  store [512 x double]* %Q, [512 x double]** %Q.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load [512 x double]*, [512 x double]** %A.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [512 x double], [512 x double]* %5, i64 %idxprom
  %7 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx, i64 0, i64 %idxprom4
  %8 = load double, double* %arrayidx5, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), double %8)
  %9 = load i32, i32* %i, align 4
  %rem = srem i32 %9, 20
  %cmp6 = icmp eq i32 %rem, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %12 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %12, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc31, %for.end10
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %nj.addr, align 4
  %cmp13 = icmp slt i32 %14, %15
  br i1 %cmp13, label %for.body14, label %for.end33

for.body14:                                       ; preds = %for.cond12
  store i32 0, i32* %j, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc28, %for.body14
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %nj.addr, align 4
  %cmp16 = icmp slt i32 %16, %17
  br i1 %cmp16, label %for.body17, label %for.end30

for.body17:                                       ; preds = %for.cond15
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load [512 x double]*, [512 x double]** %R.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds [512 x double], [512 x double]* %19, i64 %idxprom18
  %21 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx19, i64 0, i64 %idxprom20
  %22 = load double, double* %arrayidx21, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), double %22)
  %23 = load i32, i32* %i, align 4
  %rem23 = srem i32 %23, 20
  %cmp24 = icmp eq i32 %rem23, 0
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.body17
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.body17
  br label %for.inc28

for.inc28:                                        ; preds = %if.end27
  %25 = load i32, i32* %j, align 4
  %inc29 = add nsw i32 %25, 1
  store i32 %inc29, i32* %j, align 4
  br label %for.cond15

for.end30:                                        ; preds = %for.cond15
  br label %for.inc31

for.inc31:                                        ; preds = %for.end30
  %26 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %26, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond12

for.end33:                                        ; preds = %for.cond12
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc54, %for.end33
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %ni.addr, align 4
  %cmp36 = icmp slt i32 %28, %29
  br i1 %cmp36, label %for.body37, label %for.end56

for.body37:                                       ; preds = %for.cond35
  store i32 0, i32* %j, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc51, %for.body37
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %nj.addr, align 4
  %cmp39 = icmp slt i32 %30, %31
  br i1 %cmp39, label %for.body40, label %for.end53

for.body40:                                       ; preds = %for.cond38
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load [512 x double]*, [512 x double]** %Q.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %34 to i64
  %arrayidx42 = getelementptr inbounds [512 x double], [512 x double]* %33, i64 %idxprom41
  %35 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %35 to i64
  %arrayidx44 = getelementptr inbounds [512 x double], [512 x double]* %arrayidx42, i64 0, i64 %idxprom43
  %36 = load double, double* %arrayidx44, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), double %36)
  %37 = load i32, i32* %i, align 4
  %rem46 = srem i32 %37, 20
  %cmp47 = icmp eq i32 %rem46, 0
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %for.body40
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %for.body40
  br label %for.inc51

for.inc51:                                        ; preds = %if.end50
  %39 = load i32, i32* %j, align 4
  %inc52 = add nsw i32 %39, 1
  store i32 %inc52, i32* %j, align 4
  br label %for.cond38

for.end53:                                        ; preds = %for.cond38
  br label %for.inc54

for.inc54:                                        ; preds = %for.end53
  %40 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %40, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond35

for.end56:                                        ; preds = %for.cond35
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  ret void
}

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
