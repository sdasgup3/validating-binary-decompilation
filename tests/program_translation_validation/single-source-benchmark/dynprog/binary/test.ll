; ModuleID = '/home/ubuntu/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/dynprog/dynprog.bc'
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
@.str.2 = private unnamed_addr constant [60 x i8] c"A = %lf and B = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1

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
  %length = alloca i32, align 4
  %tsteps = alloca i32, align 4
  %out = alloca i32, align 4
  %out_StrictFP = alloca i32, align 4
  %sum_c = alloca [50 x [50 x [50 x i32]]]*, align 8
  %c = alloca [50 x [50 x i32]]*, align 8
  %W = alloca [50 x [50 x i32]]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 50, i32* %length, align 4
  store i32 10000, i32* %tsteps, align 4
  %call = call i8* @polybench_alloc_data(i64 125000, i32 4)
  %0 = bitcast i8* %call to [50 x [50 x [50 x i32]]]*
  store [50 x [50 x [50 x i32]]]* %0, [50 x [50 x [50 x i32]]]** %sum_c, align 8
  %call1 = call i8* @polybench_alloc_data(i64 2500, i32 4)
  %1 = bitcast i8* %call1 to [50 x [50 x i32]]*
  store [50 x [50 x i32]]* %1, [50 x [50 x i32]]** %c, align 8
  %call2 = call i8* @polybench_alloc_data(i64 2500, i32 4)
  %2 = bitcast i8* %call2 to [50 x [50 x i32]]*
  store [50 x [50 x i32]]* %2, [50 x [50 x i32]]** %W, align 8
  %3 = load i32, i32* %length, align 4
  %4 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %c, align 8
  %arraydecay = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %4, i32 0, i32 0
  %5 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %W, align 8
  %arraydecay3 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %5, i32 0, i32 0
  call void @init_array(i32 %3, [50 x i32]* %arraydecay, [50 x i32]* %arraydecay3)
  %6 = load i32, i32* %tsteps, align 4
  %7 = load i32, i32* %length, align 4
  %8 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %c, align 8
  %arraydecay4 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %8, i32 0, i32 0
  %9 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %W, align 8
  %arraydecay5 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %9, i32 0, i32 0
  %10 = load [50 x [50 x [50 x i32]]]*, [50 x [50 x [50 x i32]]]** %sum_c, align 8
  %arraydecay6 = getelementptr inbounds [50 x [50 x [50 x i32]]], [50 x [50 x [50 x i32]]]* %10, i32 0, i32 0
  call void @kernel_dynprog(i32 %6, i32 %7, [50 x i32]* %arraydecay4, [50 x i32]* %arraydecay5, [50 x [50 x i32]]* %arraydecay6, i32* %out)
  %11 = load i32, i32* %length, align 4
  %12 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %c, align 8
  %arraydecay7 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %12, i32 0, i32 0
  %13 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %W, align 8
  %arraydecay8 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %13, i32 0, i32 0
  call void @init_array(i32 %11, [50 x i32]* %arraydecay7, [50 x i32]* %arraydecay8)
  %14 = load i32, i32* %tsteps, align 4
  %15 = load i32, i32* %length, align 4
  %16 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %c, align 8
  %arraydecay9 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %16, i32 0, i32 0
  %17 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %W, align 8
  %arraydecay10 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %17, i32 0, i32 0
  %18 = load [50 x [50 x [50 x i32]]]*, [50 x [50 x [50 x i32]]]** %sum_c, align 8
  %arraydecay11 = getelementptr inbounds [50 x [50 x [50 x i32]]], [50 x [50 x [50 x i32]]]* %18, i32 0, i32 0
  call void @kernel_dynprog(i32 %14, i32 %15, [50 x i32]* %arraydecay9, [50 x i32]* %arraydecay10, [50 x [50 x i32]]* %arraydecay11, i32* %out_StrictFP)
  %19 = load i32, i32* %out, align 4
  %20 = load i32, i32* %out_StrictFP, align 4
  %call12 = call i32 @check_FP(i32 %19, i32 %20)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %21 = load i32, i32* %out_StrictFP, align 4
  call void @print_array(i32 %21)
  %22 = load [50 x [50 x [50 x i32]]]*, [50 x [50 x [50 x i32]]]** %sum_c, align 8
  %23 = bitcast [50 x [50 x [50 x i32]]]* %22 to i8*
  call void @free(i8* %23) #5
  %24 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %c, align 8
  %25 = bitcast [50 x [50 x i32]]* %24 to i8*
  call void @free(i8* %25) #5
  %26 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %W, align 8
  %27 = bitcast [50 x [50 x i32]]* %26 to i8*
  call void @free(i8* %27) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 %length, [50 x i32]* %c, [50 x i32]* %W) #0 {
entry:
  %length.addr = alloca i32, align 4
  %c.addr = alloca [50 x i32]*, align 8
  %W.addr = alloca [50 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %length, i32* %length.addr, align 4
  store [50 x i32]* %c, [50 x i32]** %c.addr, align 8
  store [50 x i32]* %W, [50 x i32]** %W.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %length.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %4, %5
  %rem = srem i32 %mul, 2
  %6 = load [50 x i32]*, [50 x i32]** %c.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [50 x i32], [50 x i32]* %6, i64 %idxprom
  %8 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx, i64 0, i64 %idxprom4
  store i32 %rem, i32* %arrayidx5, align 4
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %9, %10
  %11 = load i32, i32* %length.addr, align 4
  %div = sdiv i32 %sub, %11
  %12 = load [50 x i32]*, [50 x i32]** %W.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds [50 x i32], [50 x i32]* %12, i64 %idxprom6
  %14 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx7, i64 0, i64 %idxprom8
  store i32 %div, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %16, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_dynprog(i32 %tsteps, i32 %length, [50 x i32]* %c, [50 x i32]* %W, [50 x [50 x i32]]* %sum_c, i32* %out) #0 {
entry:
  %tsteps.addr = alloca i32, align 4
  %length.addr = alloca i32, align 4
  %c.addr = alloca [50 x i32]*, align 8
  %W.addr = alloca [50 x i32]*, align 8
  %sum_c.addr = alloca [50 x [50 x i32]]*, align 8
  %out.addr = alloca i32*, align 8
  %iter = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %out_l = alloca i32, align 4
  store i32 %tsteps, i32* %tsteps.addr, align 4
  store i32 %length, i32* %length.addr, align 4
  store [50 x i32]* %c, [50 x i32]** %c.addr, align 8
  store [50 x i32]* %W, [50 x i32]** %W.addr, align 8
  store [50 x [50 x i32]]* %sum_c, [50 x [50 x i32]]** %sum_c.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32 0, i32* %out_l, align 4
  store i32 0, i32* %iter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc85, %entry
  %0 = load i32, i32* %iter, align 4
  %1 = load i32, i32* %tsteps.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end87

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %length.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp sle i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %length.addr, align 4
  %sub5 = sub nsw i32 %5, 1
  %cmp6 = icmp sle i32 %4, %sub5
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %6 = load [50 x i32]*, [50 x i32]** %c.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [50 x i32], [50 x i32]* %6, i64 %idxprom
  %8 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx, i64 0, i64 %idxprom8
  store i32 0, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %10 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc77, %for.end12
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %length.addr, align 4
  %sub14 = sub nsw i32 %12, 2
  %cmp15 = icmp sle i32 %11, %sub14
  br i1 %cmp15, label %for.body16, label %for.end79

for.body16:                                       ; preds = %for.cond13
  %13 = load i32, i32* %i, align 4
  %add = add nsw i32 %13, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc74, %for.body16
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %length.addr, align 4
  %sub18 = sub nsw i32 %15, 1
  %cmp19 = icmp sle i32 %14, %sub18
  br i1 %cmp19, label %for.body20, label %for.end76

for.body20:                                       ; preds = %for.cond17
  %16 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %sum_c.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %16, i64 %idxprom21
  %18 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %arrayidx22, i64 0, i64 %idxprom23
  %19 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx24, i64 0, i64 %idxprom25
  store i32 0, i32* %arrayidx26, align 4
  %20 = load i32, i32* %i, align 4
  %add27 = add nsw i32 %20, 1
  store i32 %add27, i32* %k, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc55, %for.body20
  %21 = load i32, i32* %k, align 4
  %22 = load i32, i32* %j, align 4
  %sub29 = sub nsw i32 %22, 1
  %cmp30 = icmp sle i32 %21, %sub29
  br i1 %cmp30, label %for.body31, label %for.end57

for.body31:                                       ; preds = %for.cond28
  %23 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %sum_c.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %24 to i64
  %arrayidx33 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %23, i64 %idxprom32
  %25 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %25 to i64
  %arrayidx35 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %arrayidx33, i64 0, i64 %idxprom34
  %26 = load i32, i32* %k, align 4
  %sub36 = sub nsw i32 %26, 1
  %idxprom37 = sext i32 %sub36 to i64
  %arrayidx38 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx35, i64 0, i64 %idxprom37
  %27 = load i32, i32* %arrayidx38, align 4
  %28 = load [50 x i32]*, [50 x i32]** %c.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [50 x i32], [50 x i32]* %28, i64 %idxprom39
  %30 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %30 to i64
  %arrayidx42 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx40, i64 0, i64 %idxprom41
  %31 = load i32, i32* %arrayidx42, align 4
  %add43 = add nsw i32 %27, %31
  %32 = load [50 x i32]*, [50 x i32]** %c.addr, align 8
  %33 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %33 to i64
  %arrayidx45 = getelementptr inbounds [50 x i32], [50 x i32]* %32, i64 %idxprom44
  %34 = load i32, i32* %j, align 4
  %idxprom46 = sext i32 %34 to i64
  %arrayidx47 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx45, i64 0, i64 %idxprom46
  %35 = load i32, i32* %arrayidx47, align 4
  %add48 = add nsw i32 %add43, %35
  %36 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %sum_c.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %37 to i64
  %arrayidx50 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %36, i64 %idxprom49
  %38 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %38 to i64
  %arrayidx52 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %arrayidx50, i64 0, i64 %idxprom51
  %39 = load i32, i32* %k, align 4
  %idxprom53 = sext i32 %39 to i64
  %arrayidx54 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx52, i64 0, i64 %idxprom53
  store i32 %add48, i32* %arrayidx54, align 4
  br label %for.inc55

for.inc55:                                        ; preds = %for.body31
  %40 = load i32, i32* %k, align 4
  %inc56 = add nsw i32 %40, 1
  store i32 %inc56, i32* %k, align 4
  br label %for.cond28

for.end57:                                        ; preds = %for.cond28
  %41 = load [50 x [50 x i32]]*, [50 x [50 x i32]]** %sum_c.addr, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %42 to i64
  %arrayidx59 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %41, i64 %idxprom58
  %43 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %43 to i64
  %arrayidx61 = getelementptr inbounds [50 x [50 x i32]], [50 x [50 x i32]]* %arrayidx59, i64 0, i64 %idxprom60
  %44 = load i32, i32* %j, align 4
  %sub62 = sub nsw i32 %44, 1
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx61, i64 0, i64 %idxprom63
  %45 = load i32, i32* %arrayidx64, align 4
  %46 = load [50 x i32]*, [50 x i32]** %W.addr, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %47 to i64
  %arrayidx66 = getelementptr inbounds [50 x i32], [50 x i32]* %46, i64 %idxprom65
  %48 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %48 to i64
  %arrayidx68 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx66, i64 0, i64 %idxprom67
  %49 = load i32, i32* %arrayidx68, align 4
  %add69 = add nsw i32 %45, %49
  %50 = load [50 x i32]*, [50 x i32]** %c.addr, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %51 to i64
  %arrayidx71 = getelementptr inbounds [50 x i32], [50 x i32]* %50, i64 %idxprom70
  %52 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %52 to i64
  %arrayidx73 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx71, i64 0, i64 %idxprom72
  store i32 %add69, i32* %arrayidx73, align 4
  br label %for.inc74

for.inc74:                                        ; preds = %for.end57
  %53 = load i32, i32* %j, align 4
  %inc75 = add nsw i32 %53, 1
  store i32 %inc75, i32* %j, align 4
  br label %for.cond17

for.end76:                                        ; preds = %for.cond17
  br label %for.inc77

for.inc77:                                        ; preds = %for.end76
  %54 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %54, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond13

for.end79:                                        ; preds = %for.cond13
  %55 = load [50 x i32]*, [50 x i32]** %c.addr, align 8
  %arrayidx80 = getelementptr inbounds [50 x i32], [50 x i32]* %55, i64 0
  %56 = load i32, i32* %length.addr, align 4
  %sub81 = sub nsw i32 %56, 1
  %idxprom82 = sext i32 %sub81 to i64
  %arrayidx83 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx80, i64 0, i64 %idxprom82
  %57 = load i32, i32* %arrayidx83, align 4
  %58 = load i32, i32* %out_l, align 4
  %add84 = add nsw i32 %58, %57
  store i32 %add84, i32* %out_l, align 4
  br label %for.inc85

for.inc85:                                        ; preds = %for.end79
  %59 = load i32, i32* %iter, align 4
  %inc86 = add nsw i32 %59, 1
  store i32 %inc86, i32* %iter, align 4
  br label %for.cond

for.end87:                                        ; preds = %for.cond
  %60 = load i32, i32* %out_l, align 4
  %61 = load i32*, i32** %out.addr, align 8
  store i32 %60, i32* %61, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_FP(i32 %A, i32 %B) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  %AbsTolerance = alloca double, align 8
  %V1 = alloca double, align 8
  %V2 = alloca double, align 8
  %Diff = alloca double, align 8
  store i32 %A, i32* %A.addr, align 4
  store i32 %B, i32* %B.addr, align 4
  store double 1.000000e-05, double* %AbsTolerance, align 8
  %0 = load i32, i32* %A.addr, align 4
  %conv = sitofp i32 %0 to double
  store double %conv, double* %V1, align 8
  %1 = load i32, i32* %B.addr, align 4
  %conv1 = sitofp i32 %1 to double
  store double %conv1, double* %V2, align 8
  %2 = load double, double* %V1, align 8
  %3 = load double, double* %V2, align 8
  %sub = fsub double %2, %3
  %call = call double @fabs(double %sub) #7
  store double %call, double* %Diff, align 8
  %4 = load double, double* %Diff, align 8
  %5 = load double, double* %AbsTolerance, align 8
  %cmp = fcmp ogt double %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load double, double* %V1, align 8
  %8 = load double, double* %V2, align 8
  %9 = load double, double* %AbsTolerance, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i32 0, i32 0), double %7, double %8, double %9)
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 %out) #0 {
entry:
  %out.addr = alloca i32, align 4
  store i32 %out, i32* %out.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i32, i32* %out.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
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
