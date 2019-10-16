; ModuleID = '/home/ubuntu/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/symm/symm.bc'
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
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %C = alloca [1024 x [1024 x double]]*, align 8
  %C_StrictFP = alloca [1024 x [1024 x double]]*, align 8
  %A = alloca [1024 x [1024 x double]]*, align 8
  %B = alloca [1024 x [1024 x double]]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1024, i32* %ni, align 4
  store i32 1024, i32* %nj, align 4
  %call = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %0 = bitcast i8* %call to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %0, [1024 x [1024 x double]]** %C, align 8
  %call1 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %1 = bitcast i8* %call1 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %1, [1024 x [1024 x double]]** %C_StrictFP, align 8
  %call2 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %2 = bitcast i8* %call2 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %2, [1024 x [1024 x double]]** %A, align 8
  %call3 = call i8* @polybench_alloc_data(i64 1048576, i32 8)
  %3 = bitcast i8* %call3 to [1024 x [1024 x double]]*
  store [1024 x [1024 x double]]* %3, [1024 x [1024 x double]]** %B, align 8
  %4 = load i32, i32* %ni, align 4
  %5 = load i32, i32* %nj, align 4
  %6 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %C, align 8
  %arraydecay = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %6, i32 0, i32 0
  %7 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %C_StrictFP, align 8
  %arraydecay4 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %7, i32 0, i32 0
  %8 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %arraydecay5 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %8, i32 0, i32 0
  %9 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %B, align 8
  %arraydecay6 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %9, i32 0, i32 0
  call void @init_array(i32 %4, i32 %5, double* %alpha, double* %beta, [1024 x double]* %arraydecay, [1024 x double]* %arraydecay4, [1024 x double]* %arraydecay5, [1024 x double]* %arraydecay6)
  %10 = load i32, i32* %ni, align 4
  %11 = load i32, i32* %nj, align 4
  %12 = load double, double* %alpha, align 8
  %13 = load double, double* %beta, align 8
  %14 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %C, align 8
  %arraydecay7 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %14, i32 0, i32 0
  %15 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %arraydecay8 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %15, i32 0, i32 0
  %16 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %B, align 8
  %arraydecay9 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %16, i32 0, i32 0
  call void @kernel_symm(i32 %10, i32 %11, double %12, double %13, [1024 x double]* %arraydecay7, [1024 x double]* %arraydecay8, [1024 x double]* %arraydecay9)
  %17 = load i32, i32* %ni, align 4
  %18 = load i32, i32* %nj, align 4
  %19 = load double, double* %alpha, align 8
  %20 = load double, double* %beta, align 8
  %21 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %C_StrictFP, align 8
  %arraydecay10 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %21, i32 0, i32 0
  %22 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %arraydecay11 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %22, i32 0, i32 0
  %23 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %B, align 8
  %arraydecay12 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %23, i32 0, i32 0
  call void @kernel_symm_StrictFP(i32 %17, i32 %18, double %19, double %20, [1024 x double]* %arraydecay10, [1024 x double]* %arraydecay11, [1024 x double]* %arraydecay12)
  %24 = load i32, i32* %ni, align 4
  %25 = load i32, i32* %nj, align 4
  %26 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %C, align 8
  %arraydecay13 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %26, i32 0, i32 0
  %27 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %C_StrictFP, align 8
  %arraydecay14 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %27, i32 0, i32 0
  %call15 = call i32 @check_FP(i32 %24, i32 %25, [1024 x double]* %arraydecay13, [1024 x double]* %arraydecay14)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %28 = load i32, i32* %ni, align 4
  %29 = load i32, i32* %nj, align 4
  %30 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %C_StrictFP, align 8
  %arraydecay16 = getelementptr inbounds [1024 x [1024 x double]], [1024 x [1024 x double]]* %30, i32 0, i32 0
  call void @print_array(i32 %28, i32 %29, [1024 x double]* %arraydecay16)
  %31 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %C, align 8
  %32 = bitcast [1024 x [1024 x double]]* %31 to i8*
  call void @free(i8* %32) #5
  %33 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %C_StrictFP, align 8
  %34 = bitcast [1024 x [1024 x double]]* %33 to i8*
  call void @free(i8* %34) #5
  %35 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %A, align 8
  %36 = bitcast [1024 x [1024 x double]]* %35 to i8*
  call void @free(i8* %36) #5
  %37 = load [1024 x [1024 x double]]*, [1024 x [1024 x double]]** %B, align 8
  %38 = bitcast [1024 x [1024 x double]]* %37 to i8*
  call void @free(i8* %38) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 %ni, i32 %nj, double* %alpha, double* %beta, [1024 x double]* %C, [1024 x double]* %C_StrictFP, [1024 x double]* %A, [1024 x double]* %B) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %alpha.addr = alloca double*, align 8
  %beta.addr = alloca double*, align 8
  %C.addr = alloca [1024 x double]*, align 8
  %C_StrictFP.addr = alloca [1024 x double]*, align 8
  %A.addr = alloca [1024 x double]*, align 8
  %B.addr = alloca [1024 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store double* %alpha, double** %alpha.addr, align 8
  store double* %beta, double** %beta.addr, align 8
  store [1024 x double]* %C, [1024 x double]** %C.addr, align 8
  store [1024 x double]* %C_StrictFP, [1024 x double]** %C_StrictFP.addr, align 8
  store [1024 x double]* %A, [1024 x double]** %A.addr, align 8
  store [1024 x double]* %B, [1024 x double]** %B.addr, align 8
  %0 = load double*, double** %alpha.addr, align 8
  store double 3.241200e+04, double* %0, align 8
  %1 = load double*, double** %beta.addr, align 8
  store double 2.123000e+03, double* %1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, i32* %i, align 4
  %conv = sitofp i32 %6 to double
  %7 = load i32, i32* %j, align 4
  %conv4 = sitofp i32 %7 to double
  %mul = fmul double %conv, %conv4
  %8 = load i32, i32* %ni.addr, align 4
  %conv5 = sitofp i32 %8 to double
  %div = fdiv double %mul, %conv5
  %9 = load [1024 x double]*, [1024 x double]** %C.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [1024 x double], [1024 x double]* %9, i64 %idxprom
  %11 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx, i64 0, i64 %idxprom6
  store double %div, double* %arrayidx7, align 8
  %12 = load [1024 x double]*, [1024 x double]** %C_StrictFP.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [1024 x double], [1024 x double]* %12, i64 %idxprom8
  %14 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx9, i64 0, i64 %idxprom10
  store double %div, double* %arrayidx11, align 8
  %15 = load i32, i32* %i, align 4
  %conv12 = sitofp i32 %15 to double
  %16 = load i32, i32* %j, align 4
  %conv13 = sitofp i32 %16 to double
  %mul14 = fmul double %conv12, %conv13
  %17 = load i32, i32* %ni.addr, align 4
  %conv15 = sitofp i32 %17 to double
  %div16 = fdiv double %mul14, %conv15
  %18 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [1024 x double], [1024 x double]* %18, i64 %idxprom17
  %20 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx18, i64 0, i64 %idxprom19
  store double %div16, double* %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %22, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond

for.end23:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc44, %for.end23
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %nj.addr, align 4
  %cmp25 = icmp slt i32 %23, %24
  br i1 %cmp25, label %for.body27, label %for.end46

for.body27:                                       ; preds = %for.cond24
  store i32 0, i32* %j, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc41, %for.body27
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %nj.addr, align 4
  %cmp29 = icmp slt i32 %25, %26
  br i1 %cmp29, label %for.body31, label %for.end43

for.body31:                                       ; preds = %for.cond28
  %27 = load i32, i32* %i, align 4
  %conv32 = sitofp i32 %27 to double
  %28 = load i32, i32* %j, align 4
  %conv33 = sitofp i32 %28 to double
  %mul34 = fmul double %conv32, %conv33
  %29 = load i32, i32* %ni.addr, align 4
  %conv35 = sitofp i32 %29 to double
  %div36 = fdiv double %mul34, %conv35
  %30 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %31 to i64
  %arrayidx38 = getelementptr inbounds [1024 x double], [1024 x double]* %30, i64 %idxprom37
  %32 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %32 to i64
  %arrayidx40 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx38, i64 0, i64 %idxprom39
  store double %div36, double* %arrayidx40, align 8
  br label %for.inc41

for.inc41:                                        ; preds = %for.body31
  %33 = load i32, i32* %j, align 4
  %inc42 = add nsw i32 %33, 1
  store i32 %inc42, i32* %j, align 4
  br label %for.cond28

for.end43:                                        ; preds = %for.cond28
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %34 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %34, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond24

for.end46:                                        ; preds = %for.cond24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_symm(i32 %ni, i32 %nj, double %alpha, double %beta, [1024 x double]* %C, [1024 x double]* %A, [1024 x double]* %B) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %C.addr = alloca [1024 x double]*, align 8
  %A.addr = alloca [1024 x double]*, align 8
  %B.addr = alloca [1024 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %acc = alloca double, align 8
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store double %alpha, double* %alpha.addr, align 8
  store double %beta, double* %beta.addr, align 8
  store [1024 x double]* %C, [1024 x double]** %C.addr, align 8
  store [1024 x double]* %A, [1024 x double]** %A.addr, align 8
  store [1024 x double]* %B, [1024 x double]** %B.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc50, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end52

for.body3:                                        ; preds = %for.cond1
  store double 0.000000e+00, double* %acc, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %5, 1
  %cmp5 = icmp slt i32 %4, %sub
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load double, double* %alpha.addr, align 8
  %7 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %8 = load i32, i32* %k, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [1024 x double], [1024 x double]* %7, i64 %idxprom
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx, i64 0, i64 %idxprom7
  %10 = load double, double* %arrayidx8, align 8
  %mul = fmul double %6, %10
  %11 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [1024 x double], [1024 x double]* %11, i64 %idxprom9
  %13 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx10, i64 0, i64 %idxprom11
  %14 = load double, double* %arrayidx12, align 8
  %mul13 = fmul double %mul, %14
  %15 = load [1024 x double]*, [1024 x double]** %C.addr, align 8
  %16 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [1024 x double], [1024 x double]* %15, i64 %idxprom14
  %17 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx15, i64 0, i64 %idxprom16
  %18 = load double, double* %arrayidx17, align 8
  %add = fadd double %18, %mul13
  store double %add, double* %arrayidx17, align 8
  %19 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %20 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds [1024 x double], [1024 x double]* %19, i64 %idxprom18
  %21 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx19, i64 0, i64 %idxprom20
  %22 = load double, double* %arrayidx21, align 8
  %23 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %24 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %24 to i64
  %arrayidx23 = getelementptr inbounds [1024 x double], [1024 x double]* %23, i64 %idxprom22
  %25 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %25 to i64
  %arrayidx25 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx23, i64 0, i64 %idxprom24
  %26 = load double, double* %arrayidx25, align 8
  %mul26 = fmul double %22, %26
  %27 = load double, double* %acc, align 8
  %add27 = fadd double %27, %mul26
  store double %add27, double* %acc, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %28 = load i32, i32* %k, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  %29 = load double, double* %beta.addr, align 8
  %30 = load [1024 x double]*, [1024 x double]** %C.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %31 to i64
  %arrayidx29 = getelementptr inbounds [1024 x double], [1024 x double]* %30, i64 %idxprom28
  %32 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %32 to i64
  %arrayidx31 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx29, i64 0, i64 %idxprom30
  %33 = load double, double* %arrayidx31, align 8
  %mul32 = fmul double %29, %33
  %34 = load double, double* %alpha.addr, align 8
  %35 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %36 to i64
  %arrayidx34 = getelementptr inbounds [1024 x double], [1024 x double]* %35, i64 %idxprom33
  %37 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %37 to i64
  %arrayidx36 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx34, i64 0, i64 %idxprom35
  %38 = load double, double* %arrayidx36, align 8
  %mul37 = fmul double %34, %38
  %39 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %40 to i64
  %arrayidx39 = getelementptr inbounds [1024 x double], [1024 x double]* %39, i64 %idxprom38
  %41 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %41 to i64
  %arrayidx41 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx39, i64 0, i64 %idxprom40
  %42 = load double, double* %arrayidx41, align 8
  %mul42 = fmul double %mul37, %42
  %add43 = fadd double %mul32, %mul42
  %43 = load double, double* %alpha.addr, align 8
  %44 = load double, double* %acc, align 8
  %mul44 = fmul double %43, %44
  %add45 = fadd double %add43, %mul44
  %45 = load [1024 x double]*, [1024 x double]** %C.addr, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %46 to i64
  %arrayidx47 = getelementptr inbounds [1024 x double], [1024 x double]* %45, i64 %idxprom46
  %47 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %47 to i64
  %arrayidx49 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx47, i64 0, i64 %idxprom48
  store double %add45, double* %arrayidx49, align 8
  br label %for.inc50

for.inc50:                                        ; preds = %for.end
  %48 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %48, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond1

for.end52:                                        ; preds = %for.cond1
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %49 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %49, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond

for.end55:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_symm_StrictFP(i32 %ni, i32 %nj, double %alpha, double %beta, [1024 x double]* %C, [1024 x double]* %A, [1024 x double]* %B) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %C.addr = alloca [1024 x double]*, align 8
  %A.addr = alloca [1024 x double]*, align 8
  %B.addr = alloca [1024 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %acc = alloca double, align 8
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store double %alpha, double* %alpha.addr, align 8
  store double %beta, double* %beta.addr, align 8
  store [1024 x double]* %C, [1024 x double]** %C.addr, align 8
  store [1024 x double]* %A, [1024 x double]** %A.addr, align 8
  store [1024 x double]* %B, [1024 x double]** %B.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc50, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %nj.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end52

for.body3:                                        ; preds = %for.cond1
  store double 0.000000e+00, double* %acc, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %5, 1
  %cmp5 = icmp slt i32 %4, %sub
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load double, double* %alpha.addr, align 8
  %7 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %8 = load i32, i32* %k, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [1024 x double], [1024 x double]* %7, i64 %idxprom
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx, i64 0, i64 %idxprom7
  %10 = load double, double* %arrayidx8, align 8
  %mul = fmul double %6, %10
  %11 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [1024 x double], [1024 x double]* %11, i64 %idxprom9
  %13 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx10, i64 0, i64 %idxprom11
  %14 = load double, double* %arrayidx12, align 8
  %mul13 = fmul double %mul, %14
  %15 = load [1024 x double]*, [1024 x double]** %C.addr, align 8
  %16 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [1024 x double], [1024 x double]* %15, i64 %idxprom14
  %17 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx15, i64 0, i64 %idxprom16
  %18 = load double, double* %arrayidx17, align 8
  %add = fadd double %18, %mul13
  store double %add, double* %arrayidx17, align 8
  %19 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %20 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds [1024 x double], [1024 x double]* %19, i64 %idxprom18
  %21 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx19, i64 0, i64 %idxprom20
  %22 = load double, double* %arrayidx21, align 8
  %23 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %24 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %24 to i64
  %arrayidx23 = getelementptr inbounds [1024 x double], [1024 x double]* %23, i64 %idxprom22
  %25 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %25 to i64
  %arrayidx25 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx23, i64 0, i64 %idxprom24
  %26 = load double, double* %arrayidx25, align 8
  %mul26 = fmul double %22, %26
  %27 = load double, double* %acc, align 8
  %add27 = fadd double %27, %mul26
  store double %add27, double* %acc, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %28 = load i32, i32* %k, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  %29 = load double, double* %beta.addr, align 8
  %30 = load [1024 x double]*, [1024 x double]** %C.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %31 to i64
  %arrayidx29 = getelementptr inbounds [1024 x double], [1024 x double]* %30, i64 %idxprom28
  %32 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %32 to i64
  %arrayidx31 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx29, i64 0, i64 %idxprom30
  %33 = load double, double* %arrayidx31, align 8
  %mul32 = fmul double %29, %33
  %34 = load double, double* %alpha.addr, align 8
  %35 = load [1024 x double]*, [1024 x double]** %A.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %36 to i64
  %arrayidx34 = getelementptr inbounds [1024 x double], [1024 x double]* %35, i64 %idxprom33
  %37 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %37 to i64
  %arrayidx36 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx34, i64 0, i64 %idxprom35
  %38 = load double, double* %arrayidx36, align 8
  %mul37 = fmul double %34, %38
  %39 = load [1024 x double]*, [1024 x double]** %B.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %40 to i64
  %arrayidx39 = getelementptr inbounds [1024 x double], [1024 x double]* %39, i64 %idxprom38
  %41 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %41 to i64
  %arrayidx41 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx39, i64 0, i64 %idxprom40
  %42 = load double, double* %arrayidx41, align 8
  %mul42 = fmul double %mul37, %42
  %add43 = fadd double %mul32, %mul42
  %43 = load double, double* %alpha.addr, align 8
  %44 = load double, double* %acc, align 8
  %mul44 = fmul double %43, %44
  %add45 = fadd double %add43, %mul44
  %45 = load [1024 x double]*, [1024 x double]** %C.addr, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %46 to i64
  %arrayidx47 = getelementptr inbounds [1024 x double], [1024 x double]* %45, i64 %idxprom46
  %47 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %47 to i64
  %arrayidx49 = getelementptr inbounds [1024 x double], [1024 x double]* %arrayidx47, i64 0, i64 %idxprom48
  store double %add45, double* %arrayidx49, align 8
  br label %for.inc50

for.inc50:                                        ; preds = %for.end
  %48 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %48, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond1

for.end52:                                        ; preds = %for.cond1
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %49 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %49, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond

for.end55:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_FP(i32 %ni, i32 %nj, [1024 x double]* %A, [1024 x double]* %B) #0 {
entry:
  %retval = alloca i32, align 4
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %A.addr = alloca [1024 x double]*, align 8
  %B.addr = alloca [1024 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %AbsTolerance = alloca double, align 8
  %V1 = alloca double, align 8
  %V2 = alloca double, align 8
  %Diff = alloca double, align 8
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store [1024 x double]* %A, [1024 x double]** %A.addr, align 8
  store [1024 x double]* %B, [1024 x double]** %B.addr, align 8
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
define internal void @print_array(i32 %ni, i32 %nj, [1024 x double]* %C) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %C.addr = alloca [1024 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %printmat = alloca i8*, align 8
  store i32 %ni, i32* %ni.addr, align 4
  store i32 %nj, i32* %nj.addr, align 4
  store [1024 x double]* %C, [1024 x double]** %C.addr, align 8
  %0 = load i32, i32* %nj.addr, align 4
  %mul = mul nsw i32 %0, 16
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @malloc(i64 %conv) #5
  store i8* %call, i8** %printmat, align 8
  %1 = load i8*, i8** %printmat, align 8
  %2 = load i32, i32* %nj.addr, align 4
  %mul1 = mul nsw i32 %2, 16
  %idxprom = sext i32 %mul1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %ni.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %nj.addr, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond3
  %7 = load [1024 x double]*, [1024 x double]** %C.addr, align 8
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
