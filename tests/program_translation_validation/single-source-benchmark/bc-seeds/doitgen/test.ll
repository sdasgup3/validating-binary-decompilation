; ModuleID = 'doitgen/test.bc'
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
@.str.2 = private unnamed_addr constant [84 x i8] c"A[%d][%d][%d] = %lf and B[%d][%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1

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
  %nr = alloca i32, align 4
  %nq = alloca i32, align 4
  %np = alloca i32, align 4
  %A = alloca [128 x [128 x [128 x double]]]*, align 8
  %A_StrictFP = alloca [128 x [128 x [128 x double]]]*, align 8
  %sum = alloca [128 x [128 x [128 x double]]]*, align 8
  %C4 = alloca [128 x [128 x double]]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 128, i32* %nr, align 4
  store i32 128, i32* %nq, align 4
  store i32 128, i32* %np, align 4
  %call = call i8* @polybench_alloc_data(i64 2097152, i32 8)
  %0 = bitcast i8* %call to [128 x [128 x [128 x double]]]*
  store [128 x [128 x [128 x double]]]* %0, [128 x [128 x [128 x double]]]** %A, align 8
  %call1 = call i8* @polybench_alloc_data(i64 2097152, i32 8)
  %1 = bitcast i8* %call1 to [128 x [128 x [128 x double]]]*
  store [128 x [128 x [128 x double]]]* %1, [128 x [128 x [128 x double]]]** %A_StrictFP, align 8
  %call2 = call i8* @polybench_alloc_data(i64 2097152, i32 8)
  %2 = bitcast i8* %call2 to [128 x [128 x [128 x double]]]*
  store [128 x [128 x [128 x double]]]* %2, [128 x [128 x [128 x double]]]** %sum, align 8
  %call3 = call i8* @polybench_alloc_data(i64 16384, i32 8)
  %3 = bitcast i8* %call3 to [128 x [128 x double]]*
  store [128 x [128 x double]]* %3, [128 x [128 x double]]** %C4, align 8
  %4 = load i32, i32* %nr, align 4
  %5 = load i32, i32* %nq, align 4
  %6 = load i32, i32* %np, align 4
  %7 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %A, align 8
  %arraydecay = getelementptr inbounds [128 x [128 x [128 x double]]], [128 x [128 x [128 x double]]]* %7, i32 0, i32 0
  %8 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %A_StrictFP, align 8
  %arraydecay4 = getelementptr inbounds [128 x [128 x [128 x double]]], [128 x [128 x [128 x double]]]* %8, i32 0, i32 0
  %9 = load [128 x [128 x double]]*, [128 x [128 x double]]** %C4, align 8
  %arraydecay5 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %9, i32 0, i32 0
  call void @init_array(i32 %4, i32 %5, i32 %6, [128 x [128 x double]]* %arraydecay, [128 x [128 x double]]* %arraydecay4, [128 x double]* %arraydecay5)
  %10 = load i32, i32* %nr, align 4
  %11 = load i32, i32* %nq, align 4
  %12 = load i32, i32* %np, align 4
  %13 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %A, align 8
  %arraydecay6 = getelementptr inbounds [128 x [128 x [128 x double]]], [128 x [128 x [128 x double]]]* %13, i32 0, i32 0
  %14 = load [128 x [128 x double]]*, [128 x [128 x double]]** %C4, align 8
  %arraydecay7 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %14, i32 0, i32 0
  %15 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %sum, align 8
  %arraydecay8 = getelementptr inbounds [128 x [128 x [128 x double]]], [128 x [128 x [128 x double]]]* %15, i32 0, i32 0
  call void @kernel_doitgen(i32 %10, i32 %11, i32 %12, [128 x [128 x double]]* %arraydecay6, [128 x double]* %arraydecay7, [128 x [128 x double]]* %arraydecay8)
  %16 = load i32, i32* %nr, align 4
  %17 = load i32, i32* %nq, align 4
  %18 = load i32, i32* %np, align 4
  %19 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %A_StrictFP, align 8
  %arraydecay9 = getelementptr inbounds [128 x [128 x [128 x double]]], [128 x [128 x [128 x double]]]* %19, i32 0, i32 0
  %20 = load [128 x [128 x double]]*, [128 x [128 x double]]** %C4, align 8
  %arraydecay10 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %20, i32 0, i32 0
  %21 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %sum, align 8
  %arraydecay11 = getelementptr inbounds [128 x [128 x [128 x double]]], [128 x [128 x [128 x double]]]* %21, i32 0, i32 0
  call void @kernel_doitgen_StrictFP(i32 %16, i32 %17, i32 %18, [128 x [128 x double]]* %arraydecay9, [128 x double]* %arraydecay10, [128 x [128 x double]]* %arraydecay11)
  %22 = load i32, i32* %nr, align 4
  %23 = load i32, i32* %nq, align 4
  %24 = load i32, i32* %np, align 4
  %25 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %A, align 8
  %arraydecay12 = getelementptr inbounds [128 x [128 x [128 x double]]], [128 x [128 x [128 x double]]]* %25, i32 0, i32 0
  %26 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %A_StrictFP, align 8
  %arraydecay13 = getelementptr inbounds [128 x [128 x [128 x double]]], [128 x [128 x [128 x double]]]* %26, i32 0, i32 0
  %call14 = call i32 @check_FP(i32 %22, i32 %23, i32 %24, [128 x [128 x double]]* %arraydecay12, [128 x [128 x double]]* %arraydecay13)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %27 = load i32, i32* %nr, align 4
  %28 = load i32, i32* %nq, align 4
  %29 = load i32, i32* %np, align 4
  %30 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %A_StrictFP, align 8
  %arraydecay15 = getelementptr inbounds [128 x [128 x [128 x double]]], [128 x [128 x [128 x double]]]* %30, i32 0, i32 0
  call void @print_array(i32 %27, i32 %28, i32 %29, [128 x [128 x double]]* %arraydecay15)
  %31 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %A, align 8
  %32 = bitcast [128 x [128 x [128 x double]]]* %31 to i8*
  call void @free(i8* %32) #5
  %33 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %A_StrictFP, align 8
  %34 = bitcast [128 x [128 x [128 x double]]]* %33 to i8*
  call void @free(i8* %34) #5
  %35 = load [128 x [128 x [128 x double]]]*, [128 x [128 x [128 x double]]]** %sum, align 8
  %36 = bitcast [128 x [128 x [128 x double]]]* %35 to i8*
  call void @free(i8* %36) #5
  %37 = load [128 x [128 x double]]*, [128 x [128 x double]]** %C4, align 8
  %38 = bitcast [128 x [128 x double]]* %37 to i8*
  call void @free(i8* %38) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 %nr, i32 %nq, i32 %np, [128 x [128 x double]]* %A, [128 x [128 x double]]* %A_StrictFP, [128 x double]* %C4) #0 {
entry:
  %nr.addr = alloca i32, align 4
  %nq.addr = alloca i32, align 4
  %np.addr = alloca i32, align 4
  %A.addr = alloca [128 x [128 x double]]*, align 8
  %A_StrictFP.addr = alloca [128 x [128 x double]]*, align 8
  %C4.addr = alloca [128 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %nr, i32* %nr.addr, align 4
  store i32 %nq, i32* %nq.addr, align 4
  store i32 %np, i32* %np.addr, align 4
  store [128 x [128 x double]]* %A, [128 x [128 x double]]** %A.addr, align 8
  store [128 x [128 x double]]* %A_StrictFP, [128 x [128 x double]]** %A_StrictFP.addr, align 8
  store [128 x double]* %C4, [128 x double]** %C4.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nr.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc20, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nq.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end22

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %np.addr, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, i32* %i, align 4
  %conv = sitofp i32 %6 to double
  %7 = load i32, i32* %j, align 4
  %conv7 = sitofp i32 %7 to double
  %mul = fmul double %conv, %conv7
  %8 = load i32, i32* %k, align 4
  %conv8 = sitofp i32 %8 to double
  %add = fadd double %mul, %conv8
  %9 = load i32, i32* %np.addr, align 4
  %conv9 = sitofp i32 %9 to double
  %div = fdiv double %add, %conv9
  %10 = load [128 x [128 x double]]*, [128 x [128 x double]]** %A.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %10, i64 %idxprom
  %12 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx, i64 0, i64 %idxprom10
  %13 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx11, i64 0, i64 %idxprom12
  store double %div, double* %arrayidx13, align 8
  %14 = load [128 x [128 x double]]*, [128 x [128 x double]]** %A_StrictFP.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %14, i64 %idxprom14
  %16 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx15, i64 0, i64 %idxprom16
  %17 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx17, i64 0, i64 %idxprom18
  store double %div, double* %arrayidx19, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %19 = load i32, i32* %j, align 4
  %inc21 = add nsw i32 %19, 1
  store i32 %inc21, i32* %j, align 4
  br label %for.cond1

for.end22:                                        ; preds = %for.cond1
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %20 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %20, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end25:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc46, %for.end25
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %np.addr, align 4
  %cmp27 = icmp slt i32 %21, %22
  br i1 %cmp27, label %for.body29, label %for.end48

for.body29:                                       ; preds = %for.cond26
  store i32 0, i32* %j, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc43, %for.body29
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %np.addr, align 4
  %cmp31 = icmp slt i32 %23, %24
  br i1 %cmp31, label %for.body33, label %for.end45

for.body33:                                       ; preds = %for.cond30
  %25 = load i32, i32* %i, align 4
  %conv34 = sitofp i32 %25 to double
  %26 = load i32, i32* %j, align 4
  %conv35 = sitofp i32 %26 to double
  %mul36 = fmul double %conv34, %conv35
  %27 = load i32, i32* %np.addr, align 4
  %conv37 = sitofp i32 %27 to double
  %div38 = fdiv double %mul36, %conv37
  %28 = load [128 x double]*, [128 x double]** %C4.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [128 x double], [128 x double]* %28, i64 %idxprom39
  %30 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %30 to i64
  %arrayidx42 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx40, i64 0, i64 %idxprom41
  store double %div38, double* %arrayidx42, align 8
  br label %for.inc43

for.inc43:                                        ; preds = %for.body33
  %31 = load i32, i32* %j, align 4
  %inc44 = add nsw i32 %31, 1
  store i32 %inc44, i32* %j, align 4
  br label %for.cond30

for.end45:                                        ; preds = %for.cond30
  br label %for.inc46

for.inc46:                                        ; preds = %for.end45
  %32 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %32, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond26

for.end48:                                        ; preds = %for.cond26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_doitgen(i32 %nr, i32 %nq, i32 %np, [128 x [128 x double]]* %A, [128 x double]* %C4, [128 x [128 x double]]* %sum) #0 {
entry:
  %nr.addr = alloca i32, align 4
  %nq.addr = alloca i32, align 4
  %np.addr = alloca i32, align 4
  %A.addr = alloca [128 x [128 x double]]*, align 8
  %C4.addr = alloca [128 x double]*, align 8
  %sum.addr = alloca [128 x [128 x double]]*, align 8
  %r = alloca i32, align 4
  %q = alloca i32, align 4
  %p = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %nr, i32* %nr.addr, align 4
  store i32 %nq, i32* %nq.addr, align 4
  store i32 %np, i32* %np.addr, align 4
  store [128 x [128 x double]]* %A, [128 x [128 x double]]** %A.addr, align 8
  store [128 x double]* %C4, [128 x double]** %C4.addr, align 8
  store [128 x [128 x double]]* %sum, [128 x [128 x double]]** %sum.addr, align 8
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc60, %entry
  %0 = load i32, i32* %r, align 4
  %1 = load i32, i32* %nr.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end62

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %q, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc57, %for.body
  %2 = load i32, i32* %q, align 4
  %3 = load i32, i32* %nq.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end59

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %p, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc36, %for.body3
  %4 = load i32, i32* %p, align 4
  %5 = load i32, i32* %np.addr, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end38

for.body6:                                        ; preds = %for.cond4
  %6 = load [128 x [128 x double]]*, [128 x [128 x double]]** %sum.addr, align 8
  %7 = load i32, i32* %r, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %6, i64 %idxprom
  %8 = load i32, i32* %q, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx, i64 0, i64 %idxprom7
  %9 = load i32, i32* %p, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx8, i64 0, i64 %idxprom9
  store double 0.000000e+00, double* %arrayidx10, align 8
  store i32 0, i32* %s, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body6
  %10 = load i32, i32* %s, align 4
  %11 = load i32, i32* %np.addr, align 4
  %cmp12 = icmp slt i32 %10, %11
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %12 = load [128 x [128 x double]]*, [128 x [128 x double]]** %sum.addr, align 8
  %13 = load i32, i32* %r, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %12, i64 %idxprom14
  %14 = load i32, i32* %q, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx15, i64 0, i64 %idxprom16
  %15 = load i32, i32* %p, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx17, i64 0, i64 %idxprom18
  %16 = load double, double* %arrayidx19, align 8
  %17 = load [128 x [128 x double]]*, [128 x [128 x double]]** %A.addr, align 8
  %18 = load i32, i32* %r, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %17, i64 %idxprom20
  %19 = load i32, i32* %q, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx21, i64 0, i64 %idxprom22
  %20 = load i32, i32* %s, align 4
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx23, i64 0, i64 %idxprom24
  %21 = load double, double* %arrayidx25, align 8
  %22 = load [128 x double]*, [128 x double]** %C4.addr, align 8
  %23 = load i32, i32* %s, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [128 x double], [128 x double]* %22, i64 %idxprom26
  %24 = load i32, i32* %p, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx27, i64 0, i64 %idxprom28
  %25 = load double, double* %arrayidx29, align 8
  %mul = fmul double %21, %25
  %add = fadd double %16, %mul
  %26 = load [128 x [128 x double]]*, [128 x [128 x double]]** %sum.addr, align 8
  %27 = load i32, i32* %r, align 4
  %idxprom30 = sext i32 %27 to i64
  %arrayidx31 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %26, i64 %idxprom30
  %28 = load i32, i32* %q, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx31, i64 0, i64 %idxprom32
  %29 = load i32, i32* %p, align 4
  %idxprom34 = sext i32 %29 to i64
  %arrayidx35 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx33, i64 0, i64 %idxprom34
  store double %add, double* %arrayidx35, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %30 = load i32, i32* %s, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond11

for.end:                                          ; preds = %for.cond11
  br label %for.inc36

for.inc36:                                        ; preds = %for.end
  %31 = load i32, i32* %p, align 4
  %inc37 = add nsw i32 %31, 1
  store i32 %inc37, i32* %p, align 4
  br label %for.cond4

for.end38:                                        ; preds = %for.cond4
  store i32 0, i32* %p, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc54, %for.end38
  %32 = load i32, i32* %p, align 4
  %33 = load i32, i32* %nr.addr, align 4
  %cmp40 = icmp slt i32 %32, %33
  br i1 %cmp40, label %for.body41, label %for.end56

for.body41:                                       ; preds = %for.cond39
  %34 = load [128 x [128 x double]]*, [128 x [128 x double]]** %sum.addr, align 8
  %35 = load i32, i32* %r, align 4
  %idxprom42 = sext i32 %35 to i64
  %arrayidx43 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %34, i64 %idxprom42
  %36 = load i32, i32* %q, align 4
  %idxprom44 = sext i32 %36 to i64
  %arrayidx45 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx43, i64 0, i64 %idxprom44
  %37 = load i32, i32* %p, align 4
  %idxprom46 = sext i32 %37 to i64
  %arrayidx47 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx45, i64 0, i64 %idxprom46
  %38 = load double, double* %arrayidx47, align 8
  %39 = load [128 x [128 x double]]*, [128 x [128 x double]]** %A.addr, align 8
  %40 = load i32, i32* %r, align 4
  %idxprom48 = sext i32 %40 to i64
  %arrayidx49 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %39, i64 %idxprom48
  %41 = load i32, i32* %q, align 4
  %idxprom50 = sext i32 %41 to i64
  %arrayidx51 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx49, i64 0, i64 %idxprom50
  %42 = load i32, i32* %p, align 4
  %idxprom52 = sext i32 %42 to i64
  %arrayidx53 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx51, i64 0, i64 %idxprom52
  store double %38, double* %arrayidx53, align 8
  br label %for.inc54

for.inc54:                                        ; preds = %for.body41
  %43 = load i32, i32* %p, align 4
  %inc55 = add nsw i32 %43, 1
  store i32 %inc55, i32* %p, align 4
  br label %for.cond39

for.end56:                                        ; preds = %for.cond39
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %44 = load i32, i32* %q, align 4
  %inc58 = add nsw i32 %44, 1
  store i32 %inc58, i32* %q, align 4
  br label %for.cond1

for.end59:                                        ; preds = %for.cond1
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %45 = load i32, i32* %r, align 4
  %inc61 = add nsw i32 %45, 1
  store i32 %inc61, i32* %r, align 4
  br label %for.cond

for.end62:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_doitgen_StrictFP(i32 %nr, i32 %nq, i32 %np, [128 x [128 x double]]* %A, [128 x double]* %C4, [128 x [128 x double]]* %sum) #0 {
entry:
  %nr.addr = alloca i32, align 4
  %nq.addr = alloca i32, align 4
  %np.addr = alloca i32, align 4
  %A.addr = alloca [128 x [128 x double]]*, align 8
  %C4.addr = alloca [128 x double]*, align 8
  %sum.addr = alloca [128 x [128 x double]]*, align 8
  %r = alloca i32, align 4
  %q = alloca i32, align 4
  %p = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %nr, i32* %nr.addr, align 4
  store i32 %nq, i32* %nq.addr, align 4
  store i32 %np, i32* %np.addr, align 4
  store [128 x [128 x double]]* %A, [128 x [128 x double]]** %A.addr, align 8
  store [128 x double]* %C4, [128 x double]** %C4.addr, align 8
  store [128 x [128 x double]]* %sum, [128 x [128 x double]]** %sum.addr, align 8
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc60, %entry
  %0 = load i32, i32* %r, align 4
  %1 = load i32, i32* %nr.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end62

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %q, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc57, %for.body
  %2 = load i32, i32* %q, align 4
  %3 = load i32, i32* %nq.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end59

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %p, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc36, %for.body3
  %4 = load i32, i32* %p, align 4
  %5 = load i32, i32* %np.addr, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end38

for.body6:                                        ; preds = %for.cond4
  %6 = load [128 x [128 x double]]*, [128 x [128 x double]]** %sum.addr, align 8
  %7 = load i32, i32* %r, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %6, i64 %idxprom
  %8 = load i32, i32* %q, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx, i64 0, i64 %idxprom7
  %9 = load i32, i32* %p, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx8, i64 0, i64 %idxprom9
  store double 0.000000e+00, double* %arrayidx10, align 8
  store i32 0, i32* %s, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body6
  %10 = load i32, i32* %s, align 4
  %11 = load i32, i32* %np.addr, align 4
  %cmp12 = icmp slt i32 %10, %11
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %12 = load [128 x [128 x double]]*, [128 x [128 x double]]** %sum.addr, align 8
  %13 = load i32, i32* %r, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %12, i64 %idxprom14
  %14 = load i32, i32* %q, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx15, i64 0, i64 %idxprom16
  %15 = load i32, i32* %p, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx17, i64 0, i64 %idxprom18
  %16 = load double, double* %arrayidx19, align 8
  %17 = load [128 x [128 x double]]*, [128 x [128 x double]]** %A.addr, align 8
  %18 = load i32, i32* %r, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %17, i64 %idxprom20
  %19 = load i32, i32* %q, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx21, i64 0, i64 %idxprom22
  %20 = load i32, i32* %s, align 4
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx23, i64 0, i64 %idxprom24
  %21 = load double, double* %arrayidx25, align 8
  %22 = load [128 x double]*, [128 x double]** %C4.addr, align 8
  %23 = load i32, i32* %s, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [128 x double], [128 x double]* %22, i64 %idxprom26
  %24 = load i32, i32* %p, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx27, i64 0, i64 %idxprom28
  %25 = load double, double* %arrayidx29, align 8
  %mul = fmul double %21, %25
  %add = fadd double %16, %mul
  %26 = load [128 x [128 x double]]*, [128 x [128 x double]]** %sum.addr, align 8
  %27 = load i32, i32* %r, align 4
  %idxprom30 = sext i32 %27 to i64
  %arrayidx31 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %26, i64 %idxprom30
  %28 = load i32, i32* %q, align 4
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx31, i64 0, i64 %idxprom32
  %29 = load i32, i32* %p, align 4
  %idxprom34 = sext i32 %29 to i64
  %arrayidx35 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx33, i64 0, i64 %idxprom34
  store double %add, double* %arrayidx35, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %30 = load i32, i32* %s, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond11

for.end:                                          ; preds = %for.cond11
  br label %for.inc36

for.inc36:                                        ; preds = %for.end
  %31 = load i32, i32* %p, align 4
  %inc37 = add nsw i32 %31, 1
  store i32 %inc37, i32* %p, align 4
  br label %for.cond4

for.end38:                                        ; preds = %for.cond4
  store i32 0, i32* %p, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc54, %for.end38
  %32 = load i32, i32* %p, align 4
  %33 = load i32, i32* %nr.addr, align 4
  %cmp40 = icmp slt i32 %32, %33
  br i1 %cmp40, label %for.body41, label %for.end56

for.body41:                                       ; preds = %for.cond39
  %34 = load [128 x [128 x double]]*, [128 x [128 x double]]** %sum.addr, align 8
  %35 = load i32, i32* %r, align 4
  %idxprom42 = sext i32 %35 to i64
  %arrayidx43 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %34, i64 %idxprom42
  %36 = load i32, i32* %q, align 4
  %idxprom44 = sext i32 %36 to i64
  %arrayidx45 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx43, i64 0, i64 %idxprom44
  %37 = load i32, i32* %p, align 4
  %idxprom46 = sext i32 %37 to i64
  %arrayidx47 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx45, i64 0, i64 %idxprom46
  %38 = load double, double* %arrayidx47, align 8
  %39 = load [128 x [128 x double]]*, [128 x [128 x double]]** %A.addr, align 8
  %40 = load i32, i32* %r, align 4
  %idxprom48 = sext i32 %40 to i64
  %arrayidx49 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %39, i64 %idxprom48
  %41 = load i32, i32* %q, align 4
  %idxprom50 = sext i32 %41 to i64
  %arrayidx51 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx49, i64 0, i64 %idxprom50
  %42 = load i32, i32* %p, align 4
  %idxprom52 = sext i32 %42 to i64
  %arrayidx53 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx51, i64 0, i64 %idxprom52
  store double %38, double* %arrayidx53, align 8
  br label %for.inc54

for.inc54:                                        ; preds = %for.body41
  %43 = load i32, i32* %p, align 4
  %inc55 = add nsw i32 %43, 1
  store i32 %inc55, i32* %p, align 4
  br label %for.cond39

for.end56:                                        ; preds = %for.cond39
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %44 = load i32, i32* %q, align 4
  %inc58 = add nsw i32 %44, 1
  store i32 %inc58, i32* %q, align 4
  br label %for.cond1

for.end59:                                        ; preds = %for.cond1
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %45 = load i32, i32* %r, align 4
  %inc61 = add nsw i32 %45, 1
  store i32 %inc61, i32* %r, align 4
  br label %for.cond

for.end62:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_FP(i32 %nr, i32 %nq, i32 %np, [128 x [128 x double]]* %A, [128 x [128 x double]]* %B) #0 {
entry:
  %retval = alloca i32, align 4
  %nr.addr = alloca i32, align 4
  %nq.addr = alloca i32, align 4
  %np.addr = alloca i32, align 4
  %A.addr = alloca [128 x [128 x double]]*, align 8
  %B.addr = alloca [128 x [128 x double]]*, align 8
  %AbsTolerance = alloca double, align 8
  %r = alloca i32, align 4
  %q = alloca i32, align 4
  %p = alloca i32, align 4
  %s = alloca i32, align 4
  %V1 = alloca double, align 8
  %V2 = alloca double, align 8
  %Diff = alloca double, align 8
  store i32 %nr, i32* %nr.addr, align 4
  store i32 %nq, i32* %nq.addr, align 4
  store i32 %np, i32* %np.addr, align 4
  store [128 x [128 x double]]* %A, [128 x [128 x double]]** %A.addr, align 8
  store [128 x [128 x double]]* %B, [128 x [128 x double]]** %B.addr, align 8
  store double 1.000000e-05, double* %AbsTolerance, align 8
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %0 = load i32, i32* %r, align 4
  %1 = load i32, i32* %nr.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %q, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc19, %for.body
  %2 = load i32, i32* %q, align 4
  %3 = load i32, i32* %nq.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end21

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %p, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %p, align 4
  %5 = load i32, i32* %np.addr, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load [128 x [128 x double]]*, [128 x [128 x double]]** %A.addr, align 8
  %7 = load i32, i32* %r, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %6, i64 %idxprom
  %8 = load i32, i32* %q, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx, i64 0, i64 %idxprom7
  %9 = load i32, i32* %p, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx8, i64 0, i64 %idxprom9
  %10 = load double, double* %arrayidx10, align 8
  store double %10, double* %V1, align 8
  %11 = load [128 x [128 x double]]*, [128 x [128 x double]]** %B.addr, align 8
  %12 = load i32, i32* %r, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %11, i64 %idxprom11
  %13 = load i32, i32* %q, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx12, i64 0, i64 %idxprom13
  %14 = load i32, i32* %p, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx14, i64 0, i64 %idxprom15
  %15 = load double, double* %arrayidx16, align 8
  store double %15, double* %V2, align 8
  %16 = load double, double* %V1, align 8
  %17 = load double, double* %V2, align 8
  %sub = fsub double %16, %17
  %call = call double @fabs(double %sub) #7
  store double %call, double* %Diff, align 8
  %18 = load double, double* %Diff, align 8
  %19 = load double, double* %AbsTolerance, align 8
  %cmp17 = fcmp ogt double %18, %19
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i32, i32* %r, align 4
  %22 = load i32, i32* %q, align 4
  %23 = load i32, i32* %p, align 4
  %24 = load double, double* %V1, align 8
  %25 = load i32, i32* %r, align 4
  %26 = load i32, i32* %q, align 4
  %27 = load i32, i32* %p, align 4
  %28 = load double, double* %V2, align 8
  %29 = load double, double* %AbsTolerance, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i32 0, i32 0), i32 %21, i32 %22, i32 %23, double %24, i32 %25, i32 %26, i32 %27, double %28, double %29)
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i32, i32* %p, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %p, align 4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %31 = load i32, i32* %q, align 4
  %inc20 = add nsw i32 %31, 1
  store i32 %inc20, i32* %q, align 4
  br label %for.cond1

for.end21:                                        ; preds = %for.cond1
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %32 = load i32, i32* %r, align 4
  %inc23 = add nsw i32 %32, 1
  store i32 %inc23, i32* %r, align 4
  br label %for.cond

for.end24:                                        ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end24, %if.then
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 %nr, i32 %nq, i32 %np, [128 x [128 x double]]* %A) #0 {
entry:
  %nr.addr = alloca i32, align 4
  %nq.addr = alloca i32, align 4
  %np.addr = alloca i32, align 4
  %A.addr = alloca [128 x [128 x double]]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %printmat = alloca i8*, align 8
  store i32 %nr, i32* %nr.addr, align 4
  store i32 %nq, i32* %nq.addr, align 4
  store i32 %np, i32* %np.addr, align 4
  store [128 x [128 x double]]* %A, [128 x [128 x double]]** %A.addr, align 8
  %0 = load i32, i32* %np.addr, align 4
  %mul = mul nsw i32 %0, 16
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @malloc(i64 %conv) #5
  store i8* %call, i8** %printmat, align 8
  %1 = load i8*, i8** %printmat, align 8
  %2 = load i32, i32* %np.addr, align 4
  %mul1 = mul nsw i32 %2, 16
  %idxprom = sext i32 %mul1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %nr.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc18, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %nq.addr, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body6, label %for.end20

for.body6:                                        ; preds = %for.cond3
  store i32 0, i32* %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %np.addr, align 4
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond7
  %9 = load [128 x [128 x double]]*, [128 x [128 x double]]** %A.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %9, i64 %idxprom11
  %11 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [128 x [128 x double]], [128 x [128 x double]]* %arrayidx12, i64 0, i64 %idxprom13
  %12 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [128 x double], [128 x double]* %arrayidx14, i64 0, i64 %idxprom15
  %13 = load double, double* %arrayidx16, align 8
  %14 = load i32, i32* %k, align 4
  %mul17 = mul nsw i32 %14, 16
  %15 = load i8*, i8** %printmat, align 8
  call void @print_element(double %13, i32 %mul17, i8* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %16 = load i32, i32* %k, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond7

for.end:                                          ; preds = %for.cond7
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %17 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %17, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond3

for.end20:                                        ; preds = %for.cond3
  %18 = load i8*, i8** %printmat, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call21 = call i32 @fputs(i8* %18, %struct._IO_FILE* %19)
  br label %for.inc22

for.inc22:                                        ; preds = %for.end20
  %20 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %20, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end24:                                        ; preds = %for.cond
  %21 = load i8*, i8** %printmat, align 8
  call void @free(i8* %21) #5
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
