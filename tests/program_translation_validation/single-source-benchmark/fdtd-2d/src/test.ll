; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/fdtd-2d/fdtd-2d.bc'
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
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
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
  call void @free(i8* %10) #4
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
  %call = call i32 @posix_memalign(i8** %new, i64 32, i64 %0) #4
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
  call void @exit(i32 1) #5
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
  %tmax = alloca i32, align 4
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %ex = alloca [1000 x [1000 x double]]*, align 8
  %ey = alloca [1000 x [1000 x double]]*, align 8
  %hz = alloca [1000 x [1000 x double]]*, align 8
  %ex_StrictFP = alloca [1000 x [1000 x double]]*, align 8
  %ey_StrictFP = alloca [1000 x [1000 x double]]*, align 8
  %hz_StrictFP = alloca [1000 x [1000 x double]]*, align 8
  %_fict_ = alloca [50 x double]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 50, i32* %tmax, align 4
  store i32 1000, i32* %nx, align 4
  store i32 1000, i32* %ny, align 4
  %call = call i8* @polybench_alloc_data(i64 1000000, i32 8)
  %0 = bitcast i8* %call to [1000 x [1000 x double]]*
  store [1000 x [1000 x double]]* %0, [1000 x [1000 x double]]** %ex, align 8
  %call1 = call i8* @polybench_alloc_data(i64 1000000, i32 8)
  %1 = bitcast i8* %call1 to [1000 x [1000 x double]]*
  store [1000 x [1000 x double]]* %1, [1000 x [1000 x double]]** %ey, align 8
  %call2 = call i8* @polybench_alloc_data(i64 1000000, i32 8)
  %2 = bitcast i8* %call2 to [1000 x [1000 x double]]*
  store [1000 x [1000 x double]]* %2, [1000 x [1000 x double]]** %hz, align 8
  %call3 = call i8* @polybench_alloc_data(i64 1000000, i32 8)
  %3 = bitcast i8* %call3 to [1000 x [1000 x double]]*
  store [1000 x [1000 x double]]* %3, [1000 x [1000 x double]]** %ex_StrictFP, align 8
  %call4 = call i8* @polybench_alloc_data(i64 1000000, i32 8)
  %4 = bitcast i8* %call4 to [1000 x [1000 x double]]*
  store [1000 x [1000 x double]]* %4, [1000 x [1000 x double]]** %ey_StrictFP, align 8
  %call5 = call i8* @polybench_alloc_data(i64 1000000, i32 8)
  %5 = bitcast i8* %call5 to [1000 x [1000 x double]]*
  store [1000 x [1000 x double]]* %5, [1000 x [1000 x double]]** %hz_StrictFP, align 8
  %call6 = call i8* @polybench_alloc_data(i64 50, i32 8)
  %6 = bitcast i8* %call6 to [50 x double]*
  store [50 x double]* %6, [50 x double]** %_fict_, align 8
  %7 = load i32, i32* %tmax, align 4
  %8 = load i32, i32* %nx, align 4
  %9 = load i32, i32* %ny, align 4
  %10 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %ex, align 8
  %arraydecay = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %10, i32 0, i32 0
  %11 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %ey, align 8
  %arraydecay7 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %11, i32 0, i32 0
  %12 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %hz, align 8
  %arraydecay8 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %12, i32 0, i32 0
  %13 = load [50 x double]*, [50 x double]** %_fict_, align 8
  %arraydecay9 = getelementptr inbounds [50 x double], [50 x double]* %13, i32 0, i32 0
  call void @init_array(i32 %7, i32 %8, i32 %9, [1000 x double]* %arraydecay, [1000 x double]* %arraydecay7, [1000 x double]* %arraydecay8, double* %arraydecay9)
  %14 = load i32, i32* %tmax, align 4
  %15 = load i32, i32* %nx, align 4
  %16 = load i32, i32* %ny, align 4
  %17 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %ex, align 8
  %arraydecay10 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %17, i32 0, i32 0
  %18 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %ey, align 8
  %arraydecay11 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %18, i32 0, i32 0
  %19 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %hz, align 8
  %arraydecay12 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %19, i32 0, i32 0
  %20 = load [50 x double]*, [50 x double]** %_fict_, align 8
  %arraydecay13 = getelementptr inbounds [50 x double], [50 x double]* %20, i32 0, i32 0
  call void @kernel_fdtd_2d(i32 %14, i32 %15, i32 %16, [1000 x double]* %arraydecay10, [1000 x double]* %arraydecay11, [1000 x double]* %arraydecay12, double* %arraydecay13)
  %21 = load i32, i32* %tmax, align 4
  %22 = load i32, i32* %nx, align 4
  %23 = load i32, i32* %ny, align 4
  %24 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %ex_StrictFP, align 8
  %arraydecay14 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %24, i32 0, i32 0
  %25 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %ey_StrictFP, align 8
  %arraydecay15 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %25, i32 0, i32 0
  %26 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %hz_StrictFP, align 8
  %arraydecay16 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %26, i32 0, i32 0
  %27 = load [50 x double]*, [50 x double]** %_fict_, align 8
  %arraydecay17 = getelementptr inbounds [50 x double], [50 x double]* %27, i32 0, i32 0
  call void @init_array(i32 %21, i32 %22, i32 %23, [1000 x double]* %arraydecay14, [1000 x double]* %arraydecay15, [1000 x double]* %arraydecay16, double* %arraydecay17)
  %28 = load i32, i32* %tmax, align 4
  %29 = load i32, i32* %nx, align 4
  %30 = load i32, i32* %ny, align 4
  %31 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %ex_StrictFP, align 8
  %arraydecay18 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %31, i32 0, i32 0
  %32 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %ey_StrictFP, align 8
  %arraydecay19 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %32, i32 0, i32 0
  %33 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %hz_StrictFP, align 8
  %arraydecay20 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %33, i32 0, i32 0
  %34 = load [50 x double]*, [50 x double]** %_fict_, align 8
  %arraydecay21 = getelementptr inbounds [50 x double], [50 x double]* %34, i32 0, i32 0
  call void @kernel_fdtd_2d_StrictFP(i32 %28, i32 %29, i32 %30, [1000 x double]* %arraydecay18, [1000 x double]* %arraydecay19, [1000 x double]* %arraydecay20, double* %arraydecay21)
  %35 = load i32, i32* %nx, align 4
  %36 = load i32, i32* %ny, align 4
  %37 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %ex_StrictFP, align 8
  %arraydecay22 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %37, i32 0, i32 0
  %38 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %ey_StrictFP, align 8
  %arraydecay23 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %38, i32 0, i32 0
  %39 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %hz_StrictFP, align 8
  %arraydecay24 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %39, i32 0, i32 0
  call void @print_array(i32 %35, i32 %36, [1000 x double]* %arraydecay22, [1000 x double]* %arraydecay23, [1000 x double]* %arraydecay24)
  %40 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %ex, align 8
  %41 = bitcast [1000 x [1000 x double]]* %40 to i8*
  call void @free(i8* %41) #4
  %42 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %ey, align 8
  %43 = bitcast [1000 x [1000 x double]]* %42 to i8*
  call void @free(i8* %43) #4
  %44 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %hz, align 8
  %45 = bitcast [1000 x [1000 x double]]* %44 to i8*
  call void @free(i8* %45) #4
  %46 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %ex_StrictFP, align 8
  %47 = bitcast [1000 x [1000 x double]]* %46 to i8*
  call void @free(i8* %47) #4
  %48 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %ey_StrictFP, align 8
  %49 = bitcast [1000 x [1000 x double]]* %48 to i8*
  call void @free(i8* %49) #4
  %50 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %hz_StrictFP, align 8
  %51 = bitcast [1000 x [1000 x double]]* %50 to i8*
  call void @free(i8* %51) #4
  %52 = load [50 x double]*, [50 x double]** %_fict_, align 8
  %53 = bitcast [50 x double]* %52 to i8*
  call void @free(i8* %53) #4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 %tmax, i32 %nx, i32 %ny, [1000 x double]* %ex, [1000 x double]* %ey, [1000 x double]* %hz, double* %_fict_) #0 {
entry:
  %tmax.addr = alloca i32, align 4
  %nx.addr = alloca i32, align 4
  %ny.addr = alloca i32, align 4
  %ex.addr = alloca [1000 x double]*, align 8
  %ey.addr = alloca [1000 x double]*, align 8
  %hz.addr = alloca [1000 x double]*, align 8
  %_fict_.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %tmax, i32* %tmax.addr, align 4
  store i32 %nx, i32* %nx.addr, align 4
  store i32 %ny, i32* %ny.addr, align 4
  store [1000 x double]* %ex, [1000 x double]** %ex.addr, align 8
  store [1000 x double]* %ey, [1000 x double]** %ey.addr, align 8
  store [1000 x double]* %hz, [1000 x double]** %hz.addr, align 8
  store double* %_fict_, double** %_fict_.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %tmax.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %conv = sitofp i32 %2 to double
  %3 = load double*, double** %_fict_.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  store double %conv, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc39, %for.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %nx.addr, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body4, label %for.end41

for.body4:                                        ; preds = %for.cond1
  store i32 0, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc36, %for.body4
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %ny.addr, align 4
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %for.body8, label %for.end38

for.body8:                                        ; preds = %for.cond5
  %10 = load i32, i32* %i, align 4
  %conv9 = sitofp i32 %10 to double
  %11 = load i32, i32* %j, align 4
  %add = add nsw i32 %11, 1
  %conv10 = sitofp i32 %add to double
  %mul = fmul double %conv9, %conv10
  %12 = load i32, i32* %nx.addr, align 4
  %conv11 = sitofp i32 %12 to double
  %div = fdiv double %mul, %conv11
  %13 = load [1000 x double]*, [1000 x double]** %ex.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [1000 x double], [1000 x double]* %13, i64 %idxprom12
  %15 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx13, i64 0, i64 %idxprom14
  store double %div, double* %arrayidx15, align 8
  %16 = load i32, i32* %i, align 4
  %conv16 = sitofp i32 %16 to double
  %17 = load i32, i32* %j, align 4
  %add17 = add nsw i32 %17, 2
  %conv18 = sitofp i32 %add17 to double
  %mul19 = fmul double %conv16, %conv18
  %18 = load i32, i32* %ny.addr, align 4
  %conv20 = sitofp i32 %18 to double
  %div21 = fdiv double %mul19, %conv20
  %19 = load [1000 x double]*, [1000 x double]** %ey.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [1000 x double], [1000 x double]* %19, i64 %idxprom22
  %21 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx23, i64 0, i64 %idxprom24
  store double %div21, double* %arrayidx25, align 8
  %22 = load i32, i32* %i, align 4
  %conv26 = sitofp i32 %22 to double
  %23 = load i32, i32* %j, align 4
  %add27 = add nsw i32 %23, 3
  %conv28 = sitofp i32 %add27 to double
  %mul29 = fmul double %conv26, %conv28
  %24 = load i32, i32* %nx.addr, align 4
  %conv30 = sitofp i32 %24 to double
  %div31 = fdiv double %mul29, %conv30
  %25 = load [1000 x double]*, [1000 x double]** %hz.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [1000 x double], [1000 x double]* %25, i64 %idxprom32
  %27 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx33, i64 0, i64 %idxprom34
  store double %div31, double* %arrayidx35, align 8
  br label %for.inc36

for.inc36:                                        ; preds = %for.body8
  %28 = load i32, i32* %j, align 4
  %inc37 = add nsw i32 %28, 1
  store i32 %inc37, i32* %j, align 4
  br label %for.cond5

for.end38:                                        ; preds = %for.cond5
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %29 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %29, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond1

for.end41:                                        ; preds = %for.cond1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_fdtd_2d(i32 %tmax, i32 %nx, i32 %ny, [1000 x double]* %ex, [1000 x double]* %ey, [1000 x double]* %hz, double* %_fict_) #0 {
entry:
  %tmax.addr = alloca i32, align 4
  %nx.addr = alloca i32, align 4
  %ny.addr = alloca i32, align 4
  %ex.addr = alloca [1000 x double]*, align 8
  %ey.addr = alloca [1000 x double]*, align 8
  %hz.addr = alloca [1000 x double]*, align 8
  %_fict_.addr = alloca double*, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %tmax, i32* %tmax.addr, align 4
  store i32 %nx, i32* %nx.addr, align 4
  store i32 %ny, i32* %ny.addr, align 4
  store [1000 x double]* %ex, [1000 x double]** %ex.addr, align 8
  store [1000 x double]* %ey, [1000 x double]** %ey.addr, align 8
  store [1000 x double]* %hz, [1000 x double]** %hz.addr, align 8
  store double* %_fict_, double** %_fict_.addr, align 8
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc113, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %tmax.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end115

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %ny.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load double*, double** %_fict_.addr, align 8
  %5 = load i32, i32* %t, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load [1000 x double]*, [1000 x double]** %ey.addr, align 8
  %arrayidx4 = getelementptr inbounds [1000 x double], [1000 x double]* %7, i64 0
  %8 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx4, i64 0, i64 %idxprom5
  store double %6, double* %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc34, %for.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %nx.addr, align 4
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %for.body9, label %for.end36

for.body9:                                        ; preds = %for.cond7
  store i32 0, i32* %j, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc31, %for.body9
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %ny.addr, align 4
  %cmp11 = icmp slt i32 %12, %13
  br i1 %cmp11, label %for.body12, label %for.end33

for.body12:                                       ; preds = %for.cond10
  %14 = load [1000 x double]*, [1000 x double]** %ey.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [1000 x double], [1000 x double]* %14, i64 %idxprom13
  %16 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx14, i64 0, i64 %idxprom15
  %17 = load double, double* %arrayidx16, align 8
  %18 = load [1000 x double]*, [1000 x double]** %hz.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [1000 x double], [1000 x double]* %18, i64 %idxprom17
  %20 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx18, i64 0, i64 %idxprom19
  %21 = load double, double* %arrayidx20, align 8
  %22 = load [1000 x double]*, [1000 x double]** %hz.addr, align 8
  %23 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %23, 1
  %idxprom21 = sext i32 %sub to i64
  %arrayidx22 = getelementptr inbounds [1000 x double], [1000 x double]* %22, i64 %idxprom21
  %24 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx22, i64 0, i64 %idxprom23
  %25 = load double, double* %arrayidx24, align 8
  %sub25 = fsub double %21, %25
  %mul = fmul double 5.000000e-01, %sub25
  %sub26 = fsub double %17, %mul
  %26 = load [1000 x double]*, [1000 x double]** %ey.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [1000 x double], [1000 x double]* %26, i64 %idxprom27
  %28 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx28, i64 0, i64 %idxprom29
  store double %sub26, double* %arrayidx30, align 8
  br label %for.inc31

for.inc31:                                        ; preds = %for.body12
  %29 = load i32, i32* %j, align 4
  %inc32 = add nsw i32 %29, 1
  store i32 %inc32, i32* %j, align 4
  br label %for.cond10

for.end33:                                        ; preds = %for.cond10
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %30 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %30, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond7

for.end36:                                        ; preds = %for.cond7
  store i32 0, i32* %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc66, %for.end36
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %nx.addr, align 4
  %cmp38 = icmp slt i32 %31, %32
  br i1 %cmp38, label %for.body39, label %for.end68

for.body39:                                       ; preds = %for.cond37
  store i32 1, i32* %j, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc63, %for.body39
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %ny.addr, align 4
  %cmp41 = icmp slt i32 %33, %34
  br i1 %cmp41, label %for.body42, label %for.end65

for.body42:                                       ; preds = %for.cond40
  %35 = load [1000 x double]*, [1000 x double]** %ex.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %36 to i64
  %arrayidx44 = getelementptr inbounds [1000 x double], [1000 x double]* %35, i64 %idxprom43
  %37 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %37 to i64
  %arrayidx46 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx44, i64 0, i64 %idxprom45
  %38 = load double, double* %arrayidx46, align 8
  %39 = load [1000 x double]*, [1000 x double]** %hz.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %40 to i64
  %arrayidx48 = getelementptr inbounds [1000 x double], [1000 x double]* %39, i64 %idxprom47
  %41 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %41 to i64
  %arrayidx50 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx48, i64 0, i64 %idxprom49
  %42 = load double, double* %arrayidx50, align 8
  %43 = load [1000 x double]*, [1000 x double]** %hz.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %44 to i64
  %arrayidx52 = getelementptr inbounds [1000 x double], [1000 x double]* %43, i64 %idxprom51
  %45 = load i32, i32* %j, align 4
  %sub53 = sub nsw i32 %45, 1
  %idxprom54 = sext i32 %sub53 to i64
  %arrayidx55 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx52, i64 0, i64 %idxprom54
  %46 = load double, double* %arrayidx55, align 8
  %sub56 = fsub double %42, %46
  %mul57 = fmul double 5.000000e-01, %sub56
  %sub58 = fsub double %38, %mul57
  %47 = load [1000 x double]*, [1000 x double]** %ex.addr, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %48 to i64
  %arrayidx60 = getelementptr inbounds [1000 x double], [1000 x double]* %47, i64 %idxprom59
  %49 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %49 to i64
  %arrayidx62 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx60, i64 0, i64 %idxprom61
  store double %sub58, double* %arrayidx62, align 8
  br label %for.inc63

for.inc63:                                        ; preds = %for.body42
  %50 = load i32, i32* %j, align 4
  %inc64 = add nsw i32 %50, 1
  store i32 %inc64, i32* %j, align 4
  br label %for.cond40

for.end65:                                        ; preds = %for.cond40
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %51 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %51, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond37

for.end68:                                        ; preds = %for.cond37
  store i32 0, i32* %i, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc110, %for.end68
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %nx.addr, align 4
  %sub70 = sub nsw i32 %53, 1
  %cmp71 = icmp slt i32 %52, %sub70
  br i1 %cmp71, label %for.body72, label %for.end112

for.body72:                                       ; preds = %for.cond69
  store i32 0, i32* %j, align 4
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc107, %for.body72
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %ny.addr, align 4
  %sub74 = sub nsw i32 %55, 1
  %cmp75 = icmp slt i32 %54, %sub74
  br i1 %cmp75, label %for.body76, label %for.end109

for.body76:                                       ; preds = %for.cond73
  %56 = load [1000 x double]*, [1000 x double]** %hz.addr, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %57 to i64
  %arrayidx78 = getelementptr inbounds [1000 x double], [1000 x double]* %56, i64 %idxprom77
  %58 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %58 to i64
  %arrayidx80 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx78, i64 0, i64 %idxprom79
  %59 = load double, double* %arrayidx80, align 8
  %60 = load [1000 x double]*, [1000 x double]** %ex.addr, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %61 to i64
  %arrayidx82 = getelementptr inbounds [1000 x double], [1000 x double]* %60, i64 %idxprom81
  %62 = load i32, i32* %j, align 4
  %add = add nsw i32 %62, 1
  %idxprom83 = sext i32 %add to i64
  %arrayidx84 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx82, i64 0, i64 %idxprom83
  %63 = load double, double* %arrayidx84, align 8
  %64 = load [1000 x double]*, [1000 x double]** %ex.addr, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %65 to i64
  %arrayidx86 = getelementptr inbounds [1000 x double], [1000 x double]* %64, i64 %idxprom85
  %66 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %66 to i64
  %arrayidx88 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx86, i64 0, i64 %idxprom87
  %67 = load double, double* %arrayidx88, align 8
  %sub89 = fsub double %63, %67
  %68 = load [1000 x double]*, [1000 x double]** %ey.addr, align 8
  %69 = load i32, i32* %i, align 4
  %add90 = add nsw i32 %69, 1
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds [1000 x double], [1000 x double]* %68, i64 %idxprom91
  %70 = load i32, i32* %j, align 4
  %idxprom93 = sext i32 %70 to i64
  %arrayidx94 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx92, i64 0, i64 %idxprom93
  %71 = load double, double* %arrayidx94, align 8
  %add95 = fadd double %sub89, %71
  %72 = load [1000 x double]*, [1000 x double]** %ey.addr, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %73 to i64
  %arrayidx97 = getelementptr inbounds [1000 x double], [1000 x double]* %72, i64 %idxprom96
  %74 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %74 to i64
  %arrayidx99 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx97, i64 0, i64 %idxprom98
  %75 = load double, double* %arrayidx99, align 8
  %sub100 = fsub double %add95, %75
  %mul101 = fmul double 7.000000e-01, %sub100
  %sub102 = fsub double %59, %mul101
  %76 = load [1000 x double]*, [1000 x double]** %hz.addr, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %77 to i64
  %arrayidx104 = getelementptr inbounds [1000 x double], [1000 x double]* %76, i64 %idxprom103
  %78 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %78 to i64
  %arrayidx106 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx104, i64 0, i64 %idxprom105
  store double %sub102, double* %arrayidx106, align 8
  br label %for.inc107

for.inc107:                                       ; preds = %for.body76
  %79 = load i32, i32* %j, align 4
  %inc108 = add nsw i32 %79, 1
  store i32 %inc108, i32* %j, align 4
  br label %for.cond73

for.end109:                                       ; preds = %for.cond73
  br label %for.inc110

for.inc110:                                       ; preds = %for.end109
  %80 = load i32, i32* %i, align 4
  %inc111 = add nsw i32 %80, 1
  store i32 %inc111, i32* %i, align 4
  br label %for.cond69

for.end112:                                       ; preds = %for.cond69
  br label %for.inc113

for.inc113:                                       ; preds = %for.end112
  %81 = load i32, i32* %t, align 4
  %inc114 = add nsw i32 %81, 1
  store i32 %inc114, i32* %t, align 4
  br label %for.cond

for.end115:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_fdtd_2d_StrictFP(i32 %tmax, i32 %nx, i32 %ny, [1000 x double]* %ex, [1000 x double]* %ey, [1000 x double]* %hz, double* %_fict_) #0 {
entry:
  %tmax.addr = alloca i32, align 4
  %nx.addr = alloca i32, align 4
  %ny.addr = alloca i32, align 4
  %ex.addr = alloca [1000 x double]*, align 8
  %ey.addr = alloca [1000 x double]*, align 8
  %hz.addr = alloca [1000 x double]*, align 8
  %_fict_.addr = alloca double*, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %tmax, i32* %tmax.addr, align 4
  store i32 %nx, i32* %nx.addr, align 4
  store i32 %ny, i32* %ny.addr, align 4
  store [1000 x double]* %ex, [1000 x double]** %ex.addr, align 8
  store [1000 x double]* %ey, [1000 x double]** %ey.addr, align 8
  store [1000 x double]* %hz, [1000 x double]** %hz.addr, align 8
  store double* %_fict_, double** %_fict_.addr, align 8
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc113, %entry
  %0 = load i32, i32* %t, align 4
  %1 = load i32, i32* %tmax.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end115

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %ny.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load double*, double** %_fict_.addr, align 8
  %5 = load i32, i32* %t, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load [1000 x double]*, [1000 x double]** %ey.addr, align 8
  %arrayidx4 = getelementptr inbounds [1000 x double], [1000 x double]* %7, i64 0
  %8 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx4, i64 0, i64 %idxprom5
  store double %6, double* %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  store i32 1, i32* %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc34, %for.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %nx.addr, align 4
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %for.body9, label %for.end36

for.body9:                                        ; preds = %for.cond7
  store i32 0, i32* %j, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc31, %for.body9
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %ny.addr, align 4
  %cmp11 = icmp slt i32 %12, %13
  br i1 %cmp11, label %for.body12, label %for.end33

for.body12:                                       ; preds = %for.cond10
  %14 = load [1000 x double]*, [1000 x double]** %ey.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [1000 x double], [1000 x double]* %14, i64 %idxprom13
  %16 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx14, i64 0, i64 %idxprom15
  %17 = load double, double* %arrayidx16, align 8
  %18 = load [1000 x double]*, [1000 x double]** %hz.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [1000 x double], [1000 x double]* %18, i64 %idxprom17
  %20 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx18, i64 0, i64 %idxprom19
  %21 = load double, double* %arrayidx20, align 8
  %22 = load [1000 x double]*, [1000 x double]** %hz.addr, align 8
  %23 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %23, 1
  %idxprom21 = sext i32 %sub to i64
  %arrayidx22 = getelementptr inbounds [1000 x double], [1000 x double]* %22, i64 %idxprom21
  %24 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx22, i64 0, i64 %idxprom23
  %25 = load double, double* %arrayidx24, align 8
  %sub25 = fsub double %21, %25
  %mul = fmul double 5.000000e-01, %sub25
  %sub26 = fsub double %17, %mul
  %26 = load [1000 x double]*, [1000 x double]** %ey.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [1000 x double], [1000 x double]* %26, i64 %idxprom27
  %28 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx28, i64 0, i64 %idxprom29
  store double %sub26, double* %arrayidx30, align 8
  br label %for.inc31

for.inc31:                                        ; preds = %for.body12
  %29 = load i32, i32* %j, align 4
  %inc32 = add nsw i32 %29, 1
  store i32 %inc32, i32* %j, align 4
  br label %for.cond10

for.end33:                                        ; preds = %for.cond10
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %30 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %30, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond7

for.end36:                                        ; preds = %for.cond7
  store i32 0, i32* %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc66, %for.end36
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %nx.addr, align 4
  %cmp38 = icmp slt i32 %31, %32
  br i1 %cmp38, label %for.body39, label %for.end68

for.body39:                                       ; preds = %for.cond37
  store i32 1, i32* %j, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc63, %for.body39
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %ny.addr, align 4
  %cmp41 = icmp slt i32 %33, %34
  br i1 %cmp41, label %for.body42, label %for.end65

for.body42:                                       ; preds = %for.cond40
  %35 = load [1000 x double]*, [1000 x double]** %ex.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %36 to i64
  %arrayidx44 = getelementptr inbounds [1000 x double], [1000 x double]* %35, i64 %idxprom43
  %37 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %37 to i64
  %arrayidx46 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx44, i64 0, i64 %idxprom45
  %38 = load double, double* %arrayidx46, align 8
  %39 = load [1000 x double]*, [1000 x double]** %hz.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %40 to i64
  %arrayidx48 = getelementptr inbounds [1000 x double], [1000 x double]* %39, i64 %idxprom47
  %41 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %41 to i64
  %arrayidx50 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx48, i64 0, i64 %idxprom49
  %42 = load double, double* %arrayidx50, align 8
  %43 = load [1000 x double]*, [1000 x double]** %hz.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %44 to i64
  %arrayidx52 = getelementptr inbounds [1000 x double], [1000 x double]* %43, i64 %idxprom51
  %45 = load i32, i32* %j, align 4
  %sub53 = sub nsw i32 %45, 1
  %idxprom54 = sext i32 %sub53 to i64
  %arrayidx55 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx52, i64 0, i64 %idxprom54
  %46 = load double, double* %arrayidx55, align 8
  %sub56 = fsub double %42, %46
  %mul57 = fmul double 5.000000e-01, %sub56
  %sub58 = fsub double %38, %mul57
  %47 = load [1000 x double]*, [1000 x double]** %ex.addr, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %48 to i64
  %arrayidx60 = getelementptr inbounds [1000 x double], [1000 x double]* %47, i64 %idxprom59
  %49 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %49 to i64
  %arrayidx62 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx60, i64 0, i64 %idxprom61
  store double %sub58, double* %arrayidx62, align 8
  br label %for.inc63

for.inc63:                                        ; preds = %for.body42
  %50 = load i32, i32* %j, align 4
  %inc64 = add nsw i32 %50, 1
  store i32 %inc64, i32* %j, align 4
  br label %for.cond40

for.end65:                                        ; preds = %for.cond40
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %51 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %51, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond37

for.end68:                                        ; preds = %for.cond37
  store i32 0, i32* %i, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc110, %for.end68
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %nx.addr, align 4
  %sub70 = sub nsw i32 %53, 1
  %cmp71 = icmp slt i32 %52, %sub70
  br i1 %cmp71, label %for.body72, label %for.end112

for.body72:                                       ; preds = %for.cond69
  store i32 0, i32* %j, align 4
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc107, %for.body72
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %ny.addr, align 4
  %sub74 = sub nsw i32 %55, 1
  %cmp75 = icmp slt i32 %54, %sub74
  br i1 %cmp75, label %for.body76, label %for.end109

for.body76:                                       ; preds = %for.cond73
  %56 = load [1000 x double]*, [1000 x double]** %hz.addr, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %57 to i64
  %arrayidx78 = getelementptr inbounds [1000 x double], [1000 x double]* %56, i64 %idxprom77
  %58 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %58 to i64
  %arrayidx80 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx78, i64 0, i64 %idxprom79
  %59 = load double, double* %arrayidx80, align 8
  %60 = load [1000 x double]*, [1000 x double]** %ex.addr, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %61 to i64
  %arrayidx82 = getelementptr inbounds [1000 x double], [1000 x double]* %60, i64 %idxprom81
  %62 = load i32, i32* %j, align 4
  %add = add nsw i32 %62, 1
  %idxprom83 = sext i32 %add to i64
  %arrayidx84 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx82, i64 0, i64 %idxprom83
  %63 = load double, double* %arrayidx84, align 8
  %64 = load [1000 x double]*, [1000 x double]** %ex.addr, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %65 to i64
  %arrayidx86 = getelementptr inbounds [1000 x double], [1000 x double]* %64, i64 %idxprom85
  %66 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %66 to i64
  %arrayidx88 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx86, i64 0, i64 %idxprom87
  %67 = load double, double* %arrayidx88, align 8
  %sub89 = fsub double %63, %67
  %68 = load [1000 x double]*, [1000 x double]** %ey.addr, align 8
  %69 = load i32, i32* %i, align 4
  %add90 = add nsw i32 %69, 1
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds [1000 x double], [1000 x double]* %68, i64 %idxprom91
  %70 = load i32, i32* %j, align 4
  %idxprom93 = sext i32 %70 to i64
  %arrayidx94 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx92, i64 0, i64 %idxprom93
  %71 = load double, double* %arrayidx94, align 8
  %add95 = fadd double %sub89, %71
  %72 = load [1000 x double]*, [1000 x double]** %ey.addr, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %73 to i64
  %arrayidx97 = getelementptr inbounds [1000 x double], [1000 x double]* %72, i64 %idxprom96
  %74 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %74 to i64
  %arrayidx99 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx97, i64 0, i64 %idxprom98
  %75 = load double, double* %arrayidx99, align 8
  %sub100 = fsub double %add95, %75
  %mul101 = fmul double 7.000000e-01, %sub100
  %sub102 = fsub double %59, %mul101
  %76 = load [1000 x double]*, [1000 x double]** %hz.addr, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %77 to i64
  %arrayidx104 = getelementptr inbounds [1000 x double], [1000 x double]* %76, i64 %idxprom103
  %78 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %78 to i64
  %arrayidx106 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx104, i64 0, i64 %idxprom105
  store double %sub102, double* %arrayidx106, align 8
  br label %for.inc107

for.inc107:                                       ; preds = %for.body76
  %79 = load i32, i32* %j, align 4
  %inc108 = add nsw i32 %79, 1
  store i32 %inc108, i32* %j, align 4
  br label %for.cond73

for.end109:                                       ; preds = %for.cond73
  br label %for.inc110

for.inc110:                                       ; preds = %for.end109
  %80 = load i32, i32* %i, align 4
  %inc111 = add nsw i32 %80, 1
  store i32 %inc111, i32* %i, align 4
  br label %for.cond69

for.end112:                                       ; preds = %for.cond69
  br label %for.inc113

for.inc113:                                       ; preds = %for.end112
  %81 = load i32, i32* %t, align 4
  %inc114 = add nsw i32 %81, 1
  store i32 %inc114, i32* %t, align 4
  br label %for.cond

for.end115:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 %nx, i32 %ny, [1000 x double]* %ex, [1000 x double]* %ey, [1000 x double]* %hz) #0 {
entry:
  %nx.addr = alloca i32, align 4
  %ny.addr = alloca i32, align 4
  %ex.addr = alloca [1000 x double]*, align 8
  %ey.addr = alloca [1000 x double]*, align 8
  %hz.addr = alloca [1000 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %printmat = alloca i8*, align 8
  store i32 %nx, i32* %nx.addr, align 4
  store i32 %ny, i32* %ny.addr, align 4
  store [1000 x double]* %ex, [1000 x double]** %ex.addr, align 8
  store [1000 x double]* %ey, [1000 x double]** %ey.addr, align 8
  store [1000 x double]* %hz, [1000 x double]** %hz.addr, align 8
  %0 = load i32, i32* %ny.addr, align 4
  %mul = mul nsw i32 %0, 16
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @malloc(i64 %conv) #4
  store i8* %call, i8** %printmat, align 8
  %1 = load i8*, i8** %printmat, align 8
  %2 = load i32, i32* %ny.addr, align 4
  %mul1 = mul nsw i32 %2, 16
  %idxprom = sext i32 %mul1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc39, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %nx.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end41

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %ny.addr, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond3
  %7 = load [1000 x double]*, [1000 x double]** %ex.addr, align 8
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
  store i32 0, i32* %j, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc22, %for.end
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %ny.addr, align 4
  %cmp14 = icmp slt i32 %16, %17
  br i1 %cmp14, label %for.body16, label %for.end24

for.body16:                                       ; preds = %for.cond13
  %18 = load [1000 x double]*, [1000 x double]** %ey.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [1000 x double], [1000 x double]* %18, i64 %idxprom17
  %20 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx18, i64 0, i64 %idxprom19
  %21 = load double, double* %arrayidx20, align 8
  %22 = load i32, i32* %j, align 4
  %mul21 = mul nsw i32 %22, 16
  %23 = load i8*, i8** %printmat, align 8
  call void @print_element(double %21, i32 %mul21, i8* %23)
  br label %for.inc22

for.inc22:                                        ; preds = %for.body16
  %24 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %24, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond13

for.end24:                                        ; preds = %for.cond13
  %25 = load i8*, i8** %printmat, align 8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call25 = call i32 @fputs(i8* %25, %struct._IO_FILE* %26)
  store i32 0, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc35, %for.end24
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %ny.addr, align 4
  %cmp27 = icmp slt i32 %27, %28
  br i1 %cmp27, label %for.body29, label %for.end37

for.body29:                                       ; preds = %for.cond26
  %29 = load [1000 x double]*, [1000 x double]** %hz.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %30 to i64
  %arrayidx31 = getelementptr inbounds [1000 x double], [1000 x double]* %29, i64 %idxprom30
  %31 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %31 to i64
  %arrayidx33 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx31, i64 0, i64 %idxprom32
  %32 = load double, double* %arrayidx33, align 8
  %33 = load i32, i32* %j, align 4
  %mul34 = mul nsw i32 %33, 16
  %34 = load i8*, i8** %printmat, align 8
  call void @print_element(double %32, i32 %mul34, i8* %34)
  br label %for.inc35

for.inc35:                                        ; preds = %for.body29
  %35 = load i32, i32* %j, align 4
  %inc36 = add nsw i32 %35, 1
  store i32 %inc36, i32* %j, align 4
  br label %for.cond26

for.end37:                                        ; preds = %for.cond26
  %36 = load i8*, i8** %printmat, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call38 = call i32 @fputs(i8* %36, %struct._IO_FILE* %37)
  br label %for.inc39

for.inc39:                                        ; preds = %for.end37
  %38 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %38, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond

for.end41:                                        ; preds = %for.cond
  %39 = load i8*, i8** %printmat, align 8
  call void @free(i8* %39) #4
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

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
