; ModuleID = 'gemver/test.bc'
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
@.str.2 = private unnamed_addr constant [68 x i8] c"A[%d] = %lf and B[%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1

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
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %A = alloca [4000 x [4000 x double]]*, align 8
  %A_tmp = alloca [4000 x [4000 x double]]*, align 8
  %u1 = alloca [4000 x double]*, align 8
  %v1 = alloca [4000 x double]*, align 8
  %u2 = alloca [4000 x double]*, align 8
  %v2 = alloca [4000 x double]*, align 8
  %w = alloca [4000 x double]*, align 8
  %w_StrictFP = alloca [4000 x double]*, align 8
  %x = alloca [4000 x double]*, align 8
  %y = alloca [4000 x double]*, align 8
  %z = alloca [4000 x double]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 4000, i32* %n, align 4
  %call = call i8* @polybench_alloc_data(i64 16000000, i32 8)
  %0 = bitcast i8* %call to [4000 x [4000 x double]]*
  store [4000 x [4000 x double]]* %0, [4000 x [4000 x double]]** %A, align 8
  %call1 = call i8* @polybench_alloc_data(i64 16000000, i32 8)
  %1 = bitcast i8* %call1 to [4000 x [4000 x double]]*
  store [4000 x [4000 x double]]* %1, [4000 x [4000 x double]]** %A_tmp, align 8
  %call2 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %2 = bitcast i8* %call2 to [4000 x double]*
  store [4000 x double]* %2, [4000 x double]** %u1, align 8
  %call3 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %3 = bitcast i8* %call3 to [4000 x double]*
  store [4000 x double]* %3, [4000 x double]** %v1, align 8
  %call4 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %4 = bitcast i8* %call4 to [4000 x double]*
  store [4000 x double]* %4, [4000 x double]** %u2, align 8
  %call5 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %5 = bitcast i8* %call5 to [4000 x double]*
  store [4000 x double]* %5, [4000 x double]** %v2, align 8
  %call6 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %6 = bitcast i8* %call6 to [4000 x double]*
  store [4000 x double]* %6, [4000 x double]** %w, align 8
  %call7 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %7 = bitcast i8* %call7 to [4000 x double]*
  store [4000 x double]* %7, [4000 x double]** %w_StrictFP, align 8
  %call8 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %8 = bitcast i8* %call8 to [4000 x double]*
  store [4000 x double]* %8, [4000 x double]** %x, align 8
  %call9 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %9 = bitcast i8* %call9 to [4000 x double]*
  store [4000 x double]* %9, [4000 x double]** %y, align 8
  %call10 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %10 = bitcast i8* %call10 to [4000 x double]*
  store [4000 x double]* %10, [4000 x double]** %z, align 8
  %11 = load i32, i32* %n, align 4
  %12 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8
  %arraydecay = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %12, i32 0, i32 0
  %13 = load [4000 x double]*, [4000 x double]** %u1, align 8
  %arraydecay11 = getelementptr inbounds [4000 x double], [4000 x double]* %13, i32 0, i32 0
  %14 = load [4000 x double]*, [4000 x double]** %v1, align 8
  %arraydecay12 = getelementptr inbounds [4000 x double], [4000 x double]* %14, i32 0, i32 0
  %15 = load [4000 x double]*, [4000 x double]** %u2, align 8
  %arraydecay13 = getelementptr inbounds [4000 x double], [4000 x double]* %15, i32 0, i32 0
  %16 = load [4000 x double]*, [4000 x double]** %v2, align 8
  %arraydecay14 = getelementptr inbounds [4000 x double], [4000 x double]* %16, i32 0, i32 0
  %17 = load [4000 x double]*, [4000 x double]** %w, align 8
  %arraydecay15 = getelementptr inbounds [4000 x double], [4000 x double]* %17, i32 0, i32 0
  %18 = load [4000 x double]*, [4000 x double]** %w_StrictFP, align 8
  %arraydecay16 = getelementptr inbounds [4000 x double], [4000 x double]* %18, i32 0, i32 0
  %19 = load [4000 x double]*, [4000 x double]** %y, align 8
  %arraydecay17 = getelementptr inbounds [4000 x double], [4000 x double]* %19, i32 0, i32 0
  %20 = load [4000 x double]*, [4000 x double]** %z, align 8
  %arraydecay18 = getelementptr inbounds [4000 x double], [4000 x double]* %20, i32 0, i32 0
  call void @init_array(i32 %11, double* %alpha, double* %beta, [4000 x double]* %arraydecay, double* %arraydecay11, double* %arraydecay12, double* %arraydecay13, double* %arraydecay14, double* %arraydecay15, double* %arraydecay16, double* %arraydecay17, double* %arraydecay18)
  %21 = load i32, i32* %n, align 4
  %22 = load double, double* %alpha, align 8
  %23 = load double, double* %beta, align 8
  %24 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8
  %arraydecay19 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %24, i32 0, i32 0
  %25 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A_tmp, align 8
  %arraydecay20 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %25, i32 0, i32 0
  %26 = load [4000 x double]*, [4000 x double]** %u1, align 8
  %arraydecay21 = getelementptr inbounds [4000 x double], [4000 x double]* %26, i32 0, i32 0
  %27 = load [4000 x double]*, [4000 x double]** %v1, align 8
  %arraydecay22 = getelementptr inbounds [4000 x double], [4000 x double]* %27, i32 0, i32 0
  %28 = load [4000 x double]*, [4000 x double]** %u2, align 8
  %arraydecay23 = getelementptr inbounds [4000 x double], [4000 x double]* %28, i32 0, i32 0
  %29 = load [4000 x double]*, [4000 x double]** %v2, align 8
  %arraydecay24 = getelementptr inbounds [4000 x double], [4000 x double]* %29, i32 0, i32 0
  %30 = load [4000 x double]*, [4000 x double]** %w, align 8
  %arraydecay25 = getelementptr inbounds [4000 x double], [4000 x double]* %30, i32 0, i32 0
  %31 = load [4000 x double]*, [4000 x double]** %x, align 8
  %arraydecay26 = getelementptr inbounds [4000 x double], [4000 x double]* %31, i32 0, i32 0
  %32 = load [4000 x double]*, [4000 x double]** %y, align 8
  %arraydecay27 = getelementptr inbounds [4000 x double], [4000 x double]* %32, i32 0, i32 0
  %33 = load [4000 x double]*, [4000 x double]** %z, align 8
  %arraydecay28 = getelementptr inbounds [4000 x double], [4000 x double]* %33, i32 0, i32 0
  call void @kernel_gemver(i32 %21, double %22, double %23, [4000 x double]* %arraydecay19, [4000 x double]* %arraydecay20, double* %arraydecay21, double* %arraydecay22, double* %arraydecay23, double* %arraydecay24, double* %arraydecay25, double* %arraydecay26, double* %arraydecay27, double* %arraydecay28)
  %34 = load i32, i32* %n, align 4
  %35 = load double, double* %alpha, align 8
  %36 = load double, double* %beta, align 8
  %37 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8
  %arraydecay29 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %37, i32 0, i32 0
  %38 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A_tmp, align 8
  %arraydecay30 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %38, i32 0, i32 0
  %39 = load [4000 x double]*, [4000 x double]** %u1, align 8
  %arraydecay31 = getelementptr inbounds [4000 x double], [4000 x double]* %39, i32 0, i32 0
  %40 = load [4000 x double]*, [4000 x double]** %v1, align 8
  %arraydecay32 = getelementptr inbounds [4000 x double], [4000 x double]* %40, i32 0, i32 0
  %41 = load [4000 x double]*, [4000 x double]** %u2, align 8
  %arraydecay33 = getelementptr inbounds [4000 x double], [4000 x double]* %41, i32 0, i32 0
  %42 = load [4000 x double]*, [4000 x double]** %v2, align 8
  %arraydecay34 = getelementptr inbounds [4000 x double], [4000 x double]* %42, i32 0, i32 0
  %43 = load [4000 x double]*, [4000 x double]** %w_StrictFP, align 8
  %arraydecay35 = getelementptr inbounds [4000 x double], [4000 x double]* %43, i32 0, i32 0
  %44 = load [4000 x double]*, [4000 x double]** %x, align 8
  %arraydecay36 = getelementptr inbounds [4000 x double], [4000 x double]* %44, i32 0, i32 0
  %45 = load [4000 x double]*, [4000 x double]** %y, align 8
  %arraydecay37 = getelementptr inbounds [4000 x double], [4000 x double]* %45, i32 0, i32 0
  %46 = load [4000 x double]*, [4000 x double]** %z, align 8
  %arraydecay38 = getelementptr inbounds [4000 x double], [4000 x double]* %46, i32 0, i32 0
  call void @kernel_gemver_StrictFP(i32 %34, double %35, double %36, [4000 x double]* %arraydecay29, [4000 x double]* %arraydecay30, double* %arraydecay31, double* %arraydecay32, double* %arraydecay33, double* %arraydecay34, double* %arraydecay35, double* %arraydecay36, double* %arraydecay37, double* %arraydecay38)
  %47 = load i32, i32* %n, align 4
  %48 = load [4000 x double]*, [4000 x double]** %w, align 8
  %arraydecay39 = getelementptr inbounds [4000 x double], [4000 x double]* %48, i32 0, i32 0
  %49 = load [4000 x double]*, [4000 x double]** %w_StrictFP, align 8
  %arraydecay40 = getelementptr inbounds [4000 x double], [4000 x double]* %49, i32 0, i32 0
  %call41 = call i32 @check_FP(i32 %47, double* %arraydecay39, double* %arraydecay40)
  %tobool = icmp ne i32 %call41, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %50 = load i32, i32* %n, align 4
  %51 = load [4000 x double]*, [4000 x double]** %w_StrictFP, align 8
  %arraydecay42 = getelementptr inbounds [4000 x double], [4000 x double]* %51, i32 0, i32 0
  call void @print_array(i32 %50, double* %arraydecay42)
  %52 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8
  %53 = bitcast [4000 x [4000 x double]]* %52 to i8*
  call void @free(i8* %53) #5
  %54 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A_tmp, align 8
  %55 = bitcast [4000 x [4000 x double]]* %54 to i8*
  call void @free(i8* %55) #5
  %56 = load [4000 x double]*, [4000 x double]** %u1, align 8
  %57 = bitcast [4000 x double]* %56 to i8*
  call void @free(i8* %57) #5
  %58 = load [4000 x double]*, [4000 x double]** %v1, align 8
  %59 = bitcast [4000 x double]* %58 to i8*
  call void @free(i8* %59) #5
  %60 = load [4000 x double]*, [4000 x double]** %u2, align 8
  %61 = bitcast [4000 x double]* %60 to i8*
  call void @free(i8* %61) #5
  %62 = load [4000 x double]*, [4000 x double]** %v2, align 8
  %63 = bitcast [4000 x double]* %62 to i8*
  call void @free(i8* %63) #5
  %64 = load [4000 x double]*, [4000 x double]** %w, align 8
  %65 = bitcast [4000 x double]* %64 to i8*
  call void @free(i8* %65) #5
  %66 = load [4000 x double]*, [4000 x double]** %w_StrictFP, align 8
  %67 = bitcast [4000 x double]* %66 to i8*
  call void @free(i8* %67) #5
  %68 = load [4000 x double]*, [4000 x double]** %x, align 8
  %69 = bitcast [4000 x double]* %68 to i8*
  call void @free(i8* %69) #5
  %70 = load [4000 x double]*, [4000 x double]** %y, align 8
  %71 = bitcast [4000 x double]* %70 to i8*
  call void @free(i8* %71) #5
  %72 = load [4000 x double]*, [4000 x double]** %z, align 8
  %73 = bitcast [4000 x double]* %72 to i8*
  call void @free(i8* %73) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %74 = load i32, i32* %retval, align 4
  ret i32 %74
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 %n, double* %alpha, double* %beta, [4000 x double]* %A, double* %u1, double* %v1, double* %u2, double* %v2, double* %w, double* %w_StrictFP, double* %y, double* %z) #0 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca double*, align 8
  %beta.addr = alloca double*, align 8
  %A.addr = alloca [4000 x double]*, align 8
  %u1.addr = alloca double*, align 8
  %v1.addr = alloca double*, align 8
  %u2.addr = alloca double*, align 8
  %v2.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %w_StrictFP.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %z.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double* %alpha, double** %alpha.addr, align 8
  store double* %beta, double** %beta.addr, align 8
  store [4000 x double]* %A, [4000 x double]** %A.addr, align 8
  store double* %u1, double** %u1.addr, align 8
  store double* %v1, double** %v1.addr, align 8
  store double* %u2, double** %u2.addr, align 8
  store double* %v2, double** %v2.addr, align 8
  store double* %w, double** %w.addr, align 8
  store double* %w_StrictFP, double** %w_StrictFP.addr, align 8
  store double* %y, double** %y.addr, align 8
  store double* %z, double** %z.addr, align 8
  %0 = load double*, double** %alpha.addr, align 8
  store double 4.353200e+04, double* %0, align 8
  %1 = load double*, double** %beta.addr, align 8
  store double 1.231300e+04, double* %1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc45, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end47

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %conv = sitofp i32 %4 to double
  %5 = load double*, double** %u1.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  store double %conv, double* %arrayidx, align 8
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  %8 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %add, %8
  %conv1 = sitofp i32 %div to double
  %div2 = fdiv double %conv1, 2.000000e+00
  %9 = load double*, double** %u2.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds double, double* %9, i64 %idxprom3
  store double %div2, double* %arrayidx4, align 8
  %11 = load i32, i32* %i, align 4
  %add5 = add nsw i32 %11, 1
  %12 = load i32, i32* %n.addr, align 4
  %div6 = sdiv i32 %add5, %12
  %conv7 = sitofp i32 %div6 to double
  %div8 = fdiv double %conv7, 4.000000e+00
  %13 = load double*, double** %v1.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds double, double* %13, i64 %idxprom9
  store double %div8, double* %arrayidx10, align 8
  %15 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %15, 1
  %16 = load i32, i32* %n.addr, align 4
  %div12 = sdiv i32 %add11, %16
  %conv13 = sitofp i32 %div12 to double
  %div14 = fdiv double %conv13, 6.000000e+00
  %17 = load double*, double** %v2.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds double, double* %17, i64 %idxprom15
  store double %div14, double* %arrayidx16, align 8
  %19 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %19, 1
  %20 = load i32, i32* %n.addr, align 4
  %div18 = sdiv i32 %add17, %20
  %conv19 = sitofp i32 %div18 to double
  %div20 = fdiv double %conv19, 8.000000e+00
  %21 = load double*, double** %y.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds double, double* %21, i64 %idxprom21
  store double %div20, double* %arrayidx22, align 8
  %23 = load i32, i32* %i, align 4
  %add23 = add nsw i32 %23, 1
  %24 = load i32, i32* %n.addr, align 4
  %div24 = sdiv i32 %add23, %24
  %conv25 = sitofp i32 %div24 to double
  %div26 = fdiv double %conv25, 9.000000e+00
  %25 = load double*, double** %z.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %26 to i64
  %arrayidx28 = getelementptr inbounds double, double* %25, i64 %idxprom27
  store double %div26, double* %arrayidx28, align 8
  %27 = load double*, double** %w.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds double, double* %27, i64 %idxprom29
  store double 0.000000e+00, double* %arrayidx30, align 8
  %29 = load double*, double** %w_StrictFP.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %30 to i64
  %arrayidx32 = getelementptr inbounds double, double* %29, i64 %idxprom31
  store double 0.000000e+00, double* %arrayidx32, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc, %for.body
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %n.addr, align 4
  %cmp34 = icmp slt i32 %31, %32
  br i1 %cmp34, label %for.body36, label %for.end

for.body36:                                       ; preds = %for.cond33
  %33 = load i32, i32* %i, align 4
  %conv37 = sitofp i32 %33 to double
  %34 = load i32, i32* %j, align 4
  %conv38 = sitofp i32 %34 to double
  %mul = fmul double %conv37, %conv38
  %35 = load i32, i32* %n.addr, align 4
  %conv39 = sitofp i32 %35 to double
  %div40 = fdiv double %mul, %conv39
  %36 = load [4000 x double]*, [4000 x double]** %A.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %37 to i64
  %arrayidx42 = getelementptr inbounds [4000 x double], [4000 x double]* %36, i64 %idxprom41
  %38 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %38 to i64
  %arrayidx44 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx42, i64 0, i64 %idxprom43
  store double %div40, double* %arrayidx44, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body36
  %39 = load i32, i32* %j, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond33

for.end:                                          ; preds = %for.cond33
  br label %for.inc45

for.inc45:                                        ; preds = %for.end
  %40 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %40, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond

for.end47:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver(i32 %n, double %alpha, double %beta, [4000 x double]* %A, [4000 x double]* %A_tmp, double* %u1, double* %v1, double* %u2, double* %v2, double* %w, double* %x, double* %y, double* %z) #0 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %A.addr = alloca [4000 x double]*, align 8
  %A_tmp.addr = alloca [4000 x double]*, align 8
  %u1.addr = alloca double*, align 8
  %v1.addr = alloca double*, align 8
  %u2.addr = alloca double*, align 8
  %v2.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %z.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double %alpha, double* %alpha.addr, align 8
  store double %beta, double* %beta.addr, align 8
  store [4000 x double]* %A, [4000 x double]** %A.addr, align 8
  store [4000 x double]* %A_tmp, [4000 x double]** %A_tmp.addr, align 8
  store double* %u1, double** %u1.addr, align 8
  store double* %v1, double** %v1.addr, align 8
  store double* %u2, double** %u2.addr, align 8
  store double* %v2, double** %v2.addr, align 8
  store double* %w, double** %w.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  store double* %z, double** %z.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load [4000 x double]*, [4000 x double]** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [4000 x double], [4000 x double]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx, i64 0, i64 %idxprom4
  %7 = load double, double* %arrayidx5, align 8
  %8 = load double*, double** %u1.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds double, double* %8, i64 %idxprom6
  %10 = load double, double* %arrayidx7, align 8
  %11 = load double*, double** %v1.addr, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds double, double* %11, i64 %idxprom8
  %13 = load double, double* %arrayidx9, align 8
  %mul = fmul double %10, %13
  %add = fadd double %7, %mul
  %14 = load double*, double** %u2.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds double, double* %14, i64 %idxprom10
  %16 = load double, double* %arrayidx11, align 8
  %17 = load double*, double** %v2.addr, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds double, double* %17, i64 %idxprom12
  %19 = load double, double* %arrayidx13, align 8
  %mul14 = fmul double %16, %19
  %add15 = fadd double %add, %mul14
  %20 = load [4000 x double]*, [4000 x double]** %A_tmp.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds [4000 x double], [4000 x double]* %20, i64 %idxprom16
  %22 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx17, i64 0, i64 %idxprom18
  store double %add15, double* %arrayidx19, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %24, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end22:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc47, %for.end22
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %n.addr, align 4
  %cmp24 = icmp slt i32 %25, %26
  br i1 %cmp24, label %for.body25, label %for.end49

for.body25:                                       ; preds = %for.cond23
  %27 = load double*, double** %x.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %28 to i64
  %arrayidx27 = getelementptr inbounds double, double* %27, i64 %idxprom26
  store double 0.000000e+00, double* %arrayidx27, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc44, %for.body25
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %n.addr, align 4
  %cmp29 = icmp slt i32 %29, %30
  br i1 %cmp29, label %for.body30, label %for.end46

for.body30:                                       ; preds = %for.cond28
  %31 = load double*, double** %x.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %32 to i64
  %arrayidx32 = getelementptr inbounds double, double* %31, i64 %idxprom31
  %33 = load double, double* %arrayidx32, align 8
  %34 = load double, double* %beta.addr, align 8
  %35 = load [4000 x double]*, [4000 x double]** %A_tmp.addr, align 8
  %36 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %36 to i64
  %arrayidx34 = getelementptr inbounds [4000 x double], [4000 x double]* %35, i64 %idxprom33
  %37 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %37 to i64
  %arrayidx36 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx34, i64 0, i64 %idxprom35
  %38 = load double, double* %arrayidx36, align 8
  %mul37 = fmul double %34, %38
  %39 = load double*, double** %y.addr, align 8
  %40 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %40 to i64
  %arrayidx39 = getelementptr inbounds double, double* %39, i64 %idxprom38
  %41 = load double, double* %arrayidx39, align 8
  %mul40 = fmul double %mul37, %41
  %add41 = fadd double %33, %mul40
  %42 = load double*, double** %x.addr, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %43 to i64
  %arrayidx43 = getelementptr inbounds double, double* %42, i64 %idxprom42
  store double %add41, double* %arrayidx43, align 8
  br label %for.inc44

for.inc44:                                        ; preds = %for.body30
  %44 = load i32, i32* %j, align 4
  %inc45 = add nsw i32 %44, 1
  store i32 %inc45, i32* %j, align 4
  br label %for.cond28

for.end46:                                        ; preds = %for.cond28
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %45 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %45, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond23

for.end49:                                        ; preds = %for.cond23
  store i32 0, i32* %i, align 4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc60, %for.end49
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %n.addr, align 4
  %cmp51 = icmp slt i32 %46, %47
  br i1 %cmp51, label %for.body52, label %for.end62

for.body52:                                       ; preds = %for.cond50
  %48 = load double*, double** %x.addr, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %49 to i64
  %arrayidx54 = getelementptr inbounds double, double* %48, i64 %idxprom53
  %50 = load double, double* %arrayidx54, align 8
  %51 = load double*, double** %z.addr, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %52 to i64
  %arrayidx56 = getelementptr inbounds double, double* %51, i64 %idxprom55
  %53 = load double, double* %arrayidx56, align 8
  %add57 = fadd double %50, %53
  %54 = load double*, double** %x.addr, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %55 to i64
  %arrayidx59 = getelementptr inbounds double, double* %54, i64 %idxprom58
  store double %add57, double* %arrayidx59, align 8
  br label %for.inc60

for.inc60:                                        ; preds = %for.body52
  %56 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %56, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond50

for.end62:                                        ; preds = %for.cond50
  store i32 0, i32* %i, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc85, %for.end62
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %n.addr, align 4
  %cmp64 = icmp slt i32 %57, %58
  br i1 %cmp64, label %for.body65, label %for.end87

for.body65:                                       ; preds = %for.cond63
  store i32 0, i32* %j, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc82, %for.body65
  %59 = load i32, i32* %j, align 4
  %60 = load i32, i32* %n.addr, align 4
  %cmp67 = icmp slt i32 %59, %60
  br i1 %cmp67, label %for.body68, label %for.end84

for.body68:                                       ; preds = %for.cond66
  %61 = load double*, double** %w.addr, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %62 to i64
  %arrayidx70 = getelementptr inbounds double, double* %61, i64 %idxprom69
  %63 = load double, double* %arrayidx70, align 8
  %64 = load double, double* %alpha.addr, align 8
  %65 = load [4000 x double]*, [4000 x double]** %A_tmp.addr, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %66 to i64
  %arrayidx72 = getelementptr inbounds [4000 x double], [4000 x double]* %65, i64 %idxprom71
  %67 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %67 to i64
  %arrayidx74 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx72, i64 0, i64 %idxprom73
  %68 = load double, double* %arrayidx74, align 8
  %mul75 = fmul double %64, %68
  %69 = load double*, double** %x.addr, align 8
  %70 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %70 to i64
  %arrayidx77 = getelementptr inbounds double, double* %69, i64 %idxprom76
  %71 = load double, double* %arrayidx77, align 8
  %mul78 = fmul double %mul75, %71
  %add79 = fadd double %63, %mul78
  %72 = load double*, double** %w.addr, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %73 to i64
  %arrayidx81 = getelementptr inbounds double, double* %72, i64 %idxprom80
  store double %add79, double* %arrayidx81, align 8
  br label %for.inc82

for.inc82:                                        ; preds = %for.body68
  %74 = load i32, i32* %j, align 4
  %inc83 = add nsw i32 %74, 1
  store i32 %inc83, i32* %j, align 4
  br label %for.cond66

for.end84:                                        ; preds = %for.cond66
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %75 = load i32, i32* %i, align 4
  %inc86 = add nsw i32 %75, 1
  store i32 %inc86, i32* %i, align 4
  br label %for.cond63

for.end87:                                        ; preds = %for.cond63
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver_StrictFP(i32 %n, double %alpha, double %beta, [4000 x double]* %A, [4000 x double]* %A_tmp, double* %u1, double* %v1, double* %u2, double* %v2, double* %w, double* %x, double* %y, double* %z) #0 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %A.addr = alloca [4000 x double]*, align 8
  %A_tmp.addr = alloca [4000 x double]*, align 8
  %u1.addr = alloca double*, align 8
  %v1.addr = alloca double*, align 8
  %u2.addr = alloca double*, align 8
  %v2.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %z.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double %alpha, double* %alpha.addr, align 8
  store double %beta, double* %beta.addr, align 8
  store [4000 x double]* %A, [4000 x double]** %A.addr, align 8
  store [4000 x double]* %A_tmp, [4000 x double]** %A_tmp.addr, align 8
  store double* %u1, double** %u1.addr, align 8
  store double* %v1, double** %v1.addr, align 8
  store double* %u2, double** %u2.addr, align 8
  store double* %v2, double** %v2.addr, align 8
  store double* %w, double** %w.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %y, double** %y.addr, align 8
  store double* %z, double** %z.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load [4000 x double]*, [4000 x double]** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [4000 x double], [4000 x double]* %4, i64 %idxprom
  %6 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx, i64 0, i64 %idxprom4
  %7 = load double, double* %arrayidx5, align 8
  %8 = load double*, double** %u1.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds double, double* %8, i64 %idxprom6
  %10 = load double, double* %arrayidx7, align 8
  %11 = load double*, double** %v1.addr, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds double, double* %11, i64 %idxprom8
  %13 = load double, double* %arrayidx9, align 8
  %mul = fmul double %10, %13
  %add = fadd double %7, %mul
  %14 = load double*, double** %u2.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds double, double* %14, i64 %idxprom10
  %16 = load double, double* %arrayidx11, align 8
  %17 = load double*, double** %v2.addr, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds double, double* %17, i64 %idxprom12
  %19 = load double, double* %arrayidx13, align 8
  %mul14 = fmul double %16, %19
  %add15 = fadd double %add, %mul14
  %20 = load [4000 x double]*, [4000 x double]** %A_tmp.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds [4000 x double], [4000 x double]* %20, i64 %idxprom16
  %22 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx17, i64 0, i64 %idxprom18
  store double %add15, double* %arrayidx19, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %24, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end22:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc47, %for.end22
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %n.addr, align 4
  %cmp24 = icmp slt i32 %25, %26
  br i1 %cmp24, label %for.body25, label %for.end49

for.body25:                                       ; preds = %for.cond23
  %27 = load double*, double** %x.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %28 to i64
  %arrayidx27 = getelementptr inbounds double, double* %27, i64 %idxprom26
  store double 0.000000e+00, double* %arrayidx27, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc44, %for.body25
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %n.addr, align 4
  %cmp29 = icmp slt i32 %29, %30
  br i1 %cmp29, label %for.body30, label %for.end46

for.body30:                                       ; preds = %for.cond28
  %31 = load double*, double** %x.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %32 to i64
  %arrayidx32 = getelementptr inbounds double, double* %31, i64 %idxprom31
  %33 = load double, double* %arrayidx32, align 8
  %34 = load double, double* %beta.addr, align 8
  %35 = load [4000 x double]*, [4000 x double]** %A_tmp.addr, align 8
  %36 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %36 to i64
  %arrayidx34 = getelementptr inbounds [4000 x double], [4000 x double]* %35, i64 %idxprom33
  %37 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %37 to i64
  %arrayidx36 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx34, i64 0, i64 %idxprom35
  %38 = load double, double* %arrayidx36, align 8
  %mul37 = fmul double %34, %38
  %39 = load double*, double** %y.addr, align 8
  %40 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %40 to i64
  %arrayidx39 = getelementptr inbounds double, double* %39, i64 %idxprom38
  %41 = load double, double* %arrayidx39, align 8
  %mul40 = fmul double %mul37, %41
  %add41 = fadd double %33, %mul40
  %42 = load double*, double** %x.addr, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %43 to i64
  %arrayidx43 = getelementptr inbounds double, double* %42, i64 %idxprom42
  store double %add41, double* %arrayidx43, align 8
  br label %for.inc44

for.inc44:                                        ; preds = %for.body30
  %44 = load i32, i32* %j, align 4
  %inc45 = add nsw i32 %44, 1
  store i32 %inc45, i32* %j, align 4
  br label %for.cond28

for.end46:                                        ; preds = %for.cond28
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %45 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %45, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond23

for.end49:                                        ; preds = %for.cond23
  store i32 0, i32* %i, align 4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc60, %for.end49
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %n.addr, align 4
  %cmp51 = icmp slt i32 %46, %47
  br i1 %cmp51, label %for.body52, label %for.end62

for.body52:                                       ; preds = %for.cond50
  %48 = load double*, double** %x.addr, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %49 to i64
  %arrayidx54 = getelementptr inbounds double, double* %48, i64 %idxprom53
  %50 = load double, double* %arrayidx54, align 8
  %51 = load double*, double** %z.addr, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %52 to i64
  %arrayidx56 = getelementptr inbounds double, double* %51, i64 %idxprom55
  %53 = load double, double* %arrayidx56, align 8
  %add57 = fadd double %50, %53
  %54 = load double*, double** %x.addr, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %55 to i64
  %arrayidx59 = getelementptr inbounds double, double* %54, i64 %idxprom58
  store double %add57, double* %arrayidx59, align 8
  br label %for.inc60

for.inc60:                                        ; preds = %for.body52
  %56 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %56, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond50

for.end62:                                        ; preds = %for.cond50
  store i32 0, i32* %i, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc85, %for.end62
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %n.addr, align 4
  %cmp64 = icmp slt i32 %57, %58
  br i1 %cmp64, label %for.body65, label %for.end87

for.body65:                                       ; preds = %for.cond63
  store i32 0, i32* %j, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc82, %for.body65
  %59 = load i32, i32* %j, align 4
  %60 = load i32, i32* %n.addr, align 4
  %cmp67 = icmp slt i32 %59, %60
  br i1 %cmp67, label %for.body68, label %for.end84

for.body68:                                       ; preds = %for.cond66
  %61 = load double*, double** %w.addr, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %62 to i64
  %arrayidx70 = getelementptr inbounds double, double* %61, i64 %idxprom69
  %63 = load double, double* %arrayidx70, align 8
  %64 = load double, double* %alpha.addr, align 8
  %65 = load [4000 x double]*, [4000 x double]** %A_tmp.addr, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %66 to i64
  %arrayidx72 = getelementptr inbounds [4000 x double], [4000 x double]* %65, i64 %idxprom71
  %67 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %67 to i64
  %arrayidx74 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx72, i64 0, i64 %idxprom73
  %68 = load double, double* %arrayidx74, align 8
  %mul75 = fmul double %64, %68
  %69 = load double*, double** %x.addr, align 8
  %70 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %70 to i64
  %arrayidx77 = getelementptr inbounds double, double* %69, i64 %idxprom76
  %71 = load double, double* %arrayidx77, align 8
  %mul78 = fmul double %mul75, %71
  %add79 = fadd double %63, %mul78
  %72 = load double*, double** %w.addr, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %73 to i64
  %arrayidx81 = getelementptr inbounds double, double* %72, i64 %idxprom80
  store double %add79, double* %arrayidx81, align 8
  br label %for.inc82

for.inc82:                                        ; preds = %for.body68
  %74 = load i32, i32* %j, align 4
  %inc83 = add nsw i32 %74, 1
  store i32 %inc83, i32* %j, align 4
  br label %for.cond66

for.end84:                                        ; preds = %for.cond66
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %75 = load i32, i32* %i, align 4
  %inc86 = add nsw i32 %75, 1
  store i32 %inc86, i32* %i, align 4
  br label %for.cond63

for.end87:                                        ; preds = %for.cond63
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_FP(i32 %n, double* %A, double* %B) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca double*, align 8
  %B.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %AbsTolerance = alloca double, align 8
  %V1 = alloca double, align 8
  %V2 = alloca double, align 8
  %Diff = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4
  store double* %A, double** %A.addr, align 8
  store double* %B, double** %B.addr, align 8
  store double 1.000000e-05, double* %AbsTolerance, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double*, double** %A.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds double, double* %2, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  store double %4, double* %V1, align 8
  %5 = load double*, double** %B.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds double, double* %5, i64 %idxprom1
  %7 = load double, double* %arrayidx2, align 8
  store double %7, double* %V2, align 8
  %8 = load double, double* %V1, align 8
  %9 = load double, double* %V2, align 8
  %sub = fsub double %8, %9
  %call = call double @fabs(double %sub) #7
  store double %call, double* %Diff, align 8
  %10 = load double, double* %Diff, align 8
  %11 = load double, double* %AbsTolerance, align 8
  %cmp3 = fcmp ogt double %10, %11
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i32, i32* %i, align 4
  %14 = load double, double* %V1, align 8
  %15 = load i32, i32* %i, align 4
  %16 = load double, double* %V2, align 8
  %17 = load double, double* %AbsTolerance, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i32 0, i32 0), i32 %13, double %14, i32 %15, double %16, double %17)
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 %n, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %w.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double* %w, double** %w.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load double*, double** %w.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), double %5)
  %6 = load i32, i32* %i, align 4
  %rem = srem i32 %6, 20
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
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
