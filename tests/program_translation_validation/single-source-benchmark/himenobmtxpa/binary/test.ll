; ModuleID = '/home/ubuntu/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/himenobmtxpa/himenobmtxpa.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Mat = type { float*, i32, i32, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@omega = global float 0x3FE99999A0000000, align 4
@p = common global %struct.Mat zeroinitializer, align 8
@bnd = common global %struct.Mat zeroinitializer, align 8
@wrk1 = common global %struct.Mat zeroinitializer, align 8
@wrk2 = common global %struct.Mat zeroinitializer, align 8
@a = common global %struct.Mat zeroinitializer, align 8
@b = common global %struct.Mat zeroinitializer, align 8
@c = common global %struct.Mat zeroinitializer, align 8
@.str = private unnamed_addr constant [34 x i8] c"mimax = %d mjmax = %d mkmax = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"imax = %d jmax = %d kmax =%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c" Loop executed for %d times\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" Gosa : %e \0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"XS\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"xs\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"XL\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"xl\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Invalid input character !!\0A\00", align 1
@second.base_sec = internal global i32 0, align 4
@second.base_usec = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nn = alloca i32, align 4
  %imax = alloca i32, align 4
  %jmax = alloca i32, align 4
  %kmax = alloca i32, align 4
  %mimax = alloca i32, align 4
  %mjmax = alloca i32, align 4
  %mkmax = alloca i32, align 4
  %msize = alloca [3 x i32], align 4
  %gosa = alloca float, align 4
  %cpu0 = alloca double, align 8
  %cpu1 = alloca double, align 8
  %cpu = alloca double, align 8
  %flop = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %msize, i64 0, i64 0
  store i32 64, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %msize, i64 0, i64 1
  store i32 64, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %msize, i64 0, i64 2
  store i32 128, i32* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %msize, i64 0, i64 0
  %0 = load i32, i32* %arrayidx3, align 4
  store i32 %0, i32* %mimax, align 4
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %msize, i64 0, i64 1
  %1 = load i32, i32* %arrayidx4, align 4
  store i32 %1, i32* %mjmax, align 4
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %msize, i64 0, i64 2
  %2 = load i32, i32* %arrayidx5, align 4
  store i32 %2, i32* %mkmax, align 4
  %3 = load i32, i32* %mimax, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %imax, align 4
  %4 = load i32, i32* %mjmax, align 4
  %sub6 = sub nsw i32 %4, 1
  store i32 %sub6, i32* %jmax, align 4
  %5 = load i32, i32* %mkmax, align 4
  %sub7 = sub nsw i32 %5, 1
  store i32 %sub7, i32* %kmax, align 4
  %6 = load i32, i32* %mimax, align 4
  %7 = load i32, i32* %mjmax, align 4
  %8 = load i32, i32* %mkmax, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i32 %6, i32 %7, i32 %8)
  %9 = load i32, i32* %imax, align 4
  %10 = load i32, i32* %jmax, align 4
  %11 = load i32, i32* %kmax, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i32 %9, i32 %10, i32 %11)
  %12 = load i32, i32* %mimax, align 4
  %13 = load i32, i32* %mjmax, align 4
  %14 = load i32, i32* %mkmax, align 4
  %call9 = call i32 @newMat(%struct.Mat* @p, i32 1, i32 %12, i32 %13, i32 %14)
  %15 = load i32, i32* %mimax, align 4
  %16 = load i32, i32* %mjmax, align 4
  %17 = load i32, i32* %mkmax, align 4
  %call10 = call i32 @newMat(%struct.Mat* @bnd, i32 1, i32 %15, i32 %16, i32 %17)
  %18 = load i32, i32* %mimax, align 4
  %19 = load i32, i32* %mjmax, align 4
  %20 = load i32, i32* %mkmax, align 4
  %call11 = call i32 @newMat(%struct.Mat* @wrk1, i32 1, i32 %18, i32 %19, i32 %20)
  %21 = load i32, i32* %mimax, align 4
  %22 = load i32, i32* %mjmax, align 4
  %23 = load i32, i32* %mkmax, align 4
  %call12 = call i32 @newMat(%struct.Mat* @wrk2, i32 1, i32 %21, i32 %22, i32 %23)
  %24 = load i32, i32* %mimax, align 4
  %25 = load i32, i32* %mjmax, align 4
  %26 = load i32, i32* %mkmax, align 4
  %call13 = call i32 @newMat(%struct.Mat* @a, i32 4, i32 %24, i32 %25, i32 %26)
  %27 = load i32, i32* %mimax, align 4
  %28 = load i32, i32* %mjmax, align 4
  %29 = load i32, i32* %mkmax, align 4
  %call14 = call i32 @newMat(%struct.Mat* @b, i32 3, i32 %27, i32 %28, i32 %29)
  %30 = load i32, i32* %mimax, align 4
  %31 = load i32, i32* %mjmax, align 4
  %32 = load i32, i32* %mkmax, align 4
  %call15 = call i32 @newMat(%struct.Mat* @c, i32 3, i32 %30, i32 %31, i32 %32)
  call void @mat_set_init(%struct.Mat* @p)
  call void @mat_set(%struct.Mat* @bnd, i32 0, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @wrk1, i32 0, float 0.000000e+00)
  call void @mat_set(%struct.Mat* @wrk2, i32 0, float 0.000000e+00)
  call void @mat_set(%struct.Mat* @a, i32 0, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @a, i32 1, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @a, i32 2, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @a, i32 3, float 0x3FC5555560000000)
  call void @mat_set(%struct.Mat* @b, i32 0, float 0.000000e+00)
  call void @mat_set(%struct.Mat* @b, i32 1, float 0.000000e+00)
  call void @mat_set(%struct.Mat* @b, i32 2, float 0.000000e+00)
  call void @mat_set(%struct.Mat* @c, i32 0, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @c, i32 1, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @c, i32 2, float 1.000000e+00)
  store i32 64, i32* %nn, align 4
  %33 = load i32, i32* %nn, align 4
  %call16 = call float @jacobi(i32 %33, %struct.Mat* @a, %struct.Mat* @b, %struct.Mat* @c, %struct.Mat* @p, %struct.Mat* @bnd, %struct.Mat* @wrk1, %struct.Mat* @wrk2)
  store float %call16, float* %gosa, align 4
  %34 = load i32, i32* %nn, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 %34)
  %35 = load float, float* %gosa, align 4
  %conv = fpext float %35 to double
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), double %conv)
  call void @clearMat(%struct.Mat* @p)
  call void @clearMat(%struct.Mat* @bnd)
  call void @clearMat(%struct.Mat* @wrk1)
  call void @clearMat(%struct.Mat* @wrk2)
  call void @clearMat(%struct.Mat* @a)
  call void @clearMat(%struct.Mat* @b)
  call void @clearMat(%struct.Mat* @c)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define i32 @newMat(%struct.Mat* %Mat, i32 %mnums, i32 %mrows, i32 %mcols, i32 %mdeps) #0 {
entry:
  %Mat.addr = alloca %struct.Mat*, align 8
  %mnums.addr = alloca i32, align 4
  %mrows.addr = alloca i32, align 4
  %mcols.addr = alloca i32, align 4
  %mdeps.addr = alloca i32, align 4
  store %struct.Mat* %Mat, %struct.Mat** %Mat.addr, align 8
  store i32 %mnums, i32* %mnums.addr, align 4
  store i32 %mrows, i32* %mrows.addr, align 4
  store i32 %mcols, i32* %mcols.addr, align 4
  store i32 %mdeps, i32* %mdeps.addr, align 4
  %0 = load i32, i32* %mnums.addr, align 4
  %1 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mnums1 = getelementptr inbounds %struct.Mat, %struct.Mat* %1, i32 0, i32 1
  store i32 %0, i32* %mnums1, align 8
  %2 = load i32, i32* %mrows.addr, align 4
  %3 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mrows2 = getelementptr inbounds %struct.Mat, %struct.Mat* %3, i32 0, i32 2
  store i32 %2, i32* %mrows2, align 4
  %4 = load i32, i32* %mcols.addr, align 4
  %5 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mcols3 = getelementptr inbounds %struct.Mat, %struct.Mat* %5, i32 0, i32 3
  store i32 %4, i32* %mcols3, align 8
  %6 = load i32, i32* %mdeps.addr, align 4
  %7 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps4 = getelementptr inbounds %struct.Mat, %struct.Mat* %7, i32 0, i32 4
  store i32 %6, i32* %mdeps4, align 4
  %8 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %m = getelementptr inbounds %struct.Mat, %struct.Mat* %8, i32 0, i32 0
  store float* null, float** %m, align 8
  %9 = load i32, i32* %mnums.addr, align 4
  %10 = load i32, i32* %mrows.addr, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i32, i32* %mcols.addr, align 4
  %mul5 = mul nsw i32 %mul, %11
  %12 = load i32, i32* %mdeps.addr, align 4
  %mul6 = mul nsw i32 %mul5, %12
  %conv = sext i32 %mul6 to i64
  %mul7 = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul7) #5
  %13 = bitcast i8* %call to float*
  %14 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %m8 = getelementptr inbounds %struct.Mat, %struct.Mat* %14, i32 0, i32 0
  store float* %13, float** %m8, align 8
  %15 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %m9 = getelementptr inbounds %struct.Mat, %struct.Mat* %15, i32 0, i32 0
  %16 = load float*, float** %m9, align 8
  %cmp = icmp ne float* %16, null
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define void @mat_set_init(%struct.Mat* %Mat) #0 {
entry:
  %Mat.addr = alloca %struct.Mat*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %tt = alloca float, align 4
  store %struct.Mat* %Mat, %struct.Mat** %Mat.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mrows = getelementptr inbounds %struct.Mat, %struct.Mat* %1, i32 0, i32 2
  %2 = load i32, i32* %mrows, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc26, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mcols = getelementptr inbounds %struct.Mat, %struct.Mat* %4, i32 0, i32 3
  %5 = load i32, i32* %mcols, align 8
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body3, label %for.end28

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %6 = load i32, i32* %k, align 4
  %7 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps = getelementptr inbounds %struct.Mat, %struct.Mat* %7, i32 0, i32 4
  %8 = load i32, i32* %mdeps, align 4
  %cmp5 = icmp slt i32 %6, %8
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %9, %10
  %conv = sitofp i32 %mul to float
  %11 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mrows7 = getelementptr inbounds %struct.Mat, %struct.Mat* %11, i32 0, i32 2
  %12 = load i32, i32* %mrows7, align 4
  %sub = sub nsw i32 %12, 1
  %13 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mrows8 = getelementptr inbounds %struct.Mat, %struct.Mat* %13, i32 0, i32 2
  %14 = load i32, i32* %mrows8, align 4
  %sub9 = sub nsw i32 %14, 1
  %mul10 = mul nsw i32 %sub, %sub9
  %conv11 = sitofp i32 %mul10 to float
  %div = fdiv float %conv, %conv11
  %15 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %m = getelementptr inbounds %struct.Mat, %struct.Mat* %15, i32 0, i32 0
  %16 = load float*, float** %m, align 8
  %17 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mrows12 = getelementptr inbounds %struct.Mat, %struct.Mat* %17, i32 0, i32 2
  %18 = load i32, i32* %mrows12, align 4
  %mul13 = mul nsw i32 0, %18
  %19 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mcols14 = getelementptr inbounds %struct.Mat, %struct.Mat* %19, i32 0, i32 3
  %20 = load i32, i32* %mcols14, align 8
  %mul15 = mul nsw i32 %mul13, %20
  %21 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps16 = getelementptr inbounds %struct.Mat, %struct.Mat* %21, i32 0, i32 4
  %22 = load i32, i32* %mdeps16, align 4
  %mul17 = mul nsw i32 %mul15, %22
  %23 = load i32, i32* %i, align 4
  %24 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mcols18 = getelementptr inbounds %struct.Mat, %struct.Mat* %24, i32 0, i32 3
  %25 = load i32, i32* %mcols18, align 8
  %mul19 = mul nsw i32 %23, %25
  %26 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps20 = getelementptr inbounds %struct.Mat, %struct.Mat* %26, i32 0, i32 4
  %27 = load i32, i32* %mdeps20, align 4
  %mul21 = mul nsw i32 %mul19, %27
  %add = add nsw i32 %mul17, %mul21
  %28 = load i32, i32* %j, align 4
  %29 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps22 = getelementptr inbounds %struct.Mat, %struct.Mat* %29, i32 0, i32 4
  %30 = load i32, i32* %mdeps22, align 4
  %mul23 = mul nsw i32 %28, %30
  %add24 = add nsw i32 %add, %mul23
  %31 = load i32, i32* %k, align 4
  %add25 = add nsw i32 %add24, %31
  %idxprom = sext i32 %add25 to i64
  %arrayidx = getelementptr inbounds float, float* %16, i64 %idxprom
  store float %div, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %32 = load i32, i32* %k, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %33 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %33, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond1

for.end28:                                        ; preds = %for.cond1
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %34 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %34, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond

for.end31:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @mat_set(%struct.Mat* %Mat, i32 %l, float %val) #0 {
entry:
  %Mat.addr = alloca %struct.Mat*, align 8
  %l.addr = alloca i32, align 4
  %val.addr = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.Mat* %Mat, %struct.Mat** %Mat.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store float %val, float* %val.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mrows = getelementptr inbounds %struct.Mat, %struct.Mat* %1, i32 0, i32 2
  %2 = load i32, i32* %mrows, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc20, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mcols = getelementptr inbounds %struct.Mat, %struct.Mat* %4, i32 0, i32 3
  %5 = load i32, i32* %mcols, align 8
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body3, label %for.end22

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %6 = load i32, i32* %k, align 4
  %7 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps = getelementptr inbounds %struct.Mat, %struct.Mat* %7, i32 0, i32 4
  %8 = load i32, i32* %mdeps, align 4
  %cmp5 = icmp slt i32 %6, %8
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %9 = load float, float* %val.addr, align 4
  %10 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %m = getelementptr inbounds %struct.Mat, %struct.Mat* %10, i32 0, i32 0
  %11 = load float*, float** %m, align 8
  %12 = load i32, i32* %l.addr, align 4
  %13 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mrows7 = getelementptr inbounds %struct.Mat, %struct.Mat* %13, i32 0, i32 2
  %14 = load i32, i32* %mrows7, align 4
  %mul = mul nsw i32 %12, %14
  %15 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mcols8 = getelementptr inbounds %struct.Mat, %struct.Mat* %15, i32 0, i32 3
  %16 = load i32, i32* %mcols8, align 8
  %mul9 = mul nsw i32 %mul, %16
  %17 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps10 = getelementptr inbounds %struct.Mat, %struct.Mat* %17, i32 0, i32 4
  %18 = load i32, i32* %mdeps10, align 4
  %mul11 = mul nsw i32 %mul9, %18
  %19 = load i32, i32* %i, align 4
  %20 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mcols12 = getelementptr inbounds %struct.Mat, %struct.Mat* %20, i32 0, i32 3
  %21 = load i32, i32* %mcols12, align 8
  %mul13 = mul nsw i32 %19, %21
  %22 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps14 = getelementptr inbounds %struct.Mat, %struct.Mat* %22, i32 0, i32 4
  %23 = load i32, i32* %mdeps14, align 4
  %mul15 = mul nsw i32 %mul13, %23
  %add = add nsw i32 %mul11, %mul15
  %24 = load i32, i32* %j, align 4
  %25 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps16 = getelementptr inbounds %struct.Mat, %struct.Mat* %25, i32 0, i32 4
  %26 = load i32, i32* %mdeps16, align 4
  %mul17 = mul nsw i32 %24, %26
  %add18 = add nsw i32 %add, %mul17
  %27 = load i32, i32* %k, align 4
  %add19 = add nsw i32 %add18, %27
  %idxprom = sext i32 %add19 to i64
  %arrayidx = getelementptr inbounds float, float* %11, i64 %idxprom
  store float %9, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %28 = load i32, i32* %k, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %29 = load i32, i32* %j, align 4
  %inc21 = add nsw i32 %29, 1
  store i32 %inc21, i32* %j, align 4
  br label %for.cond1

for.end22:                                        ; preds = %for.cond1
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %30 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %30, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define float @jacobi(i32 %nn, %struct.Mat* %a, %struct.Mat* %b, %struct.Mat* %c, %struct.Mat* %p, %struct.Mat* %bnd, %struct.Mat* %wrk1, %struct.Mat* %wrk2) #0 {
entry:
  %nn.addr = alloca i32, align 4
  %a.addr = alloca %struct.Mat*, align 8
  %b.addr = alloca %struct.Mat*, align 8
  %c.addr = alloca %struct.Mat*, align 8
  %p.addr = alloca %struct.Mat*, align 8
  %bnd.addr = alloca %struct.Mat*, align 8
  %wrk1.addr = alloca %struct.Mat*, align 8
  %wrk2.addr = alloca %struct.Mat*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %imax = alloca i32, align 4
  %jmax = alloca i32, align 4
  %kmax = alloca i32, align 4
  %gosa = alloca float, align 4
  %s0 = alloca float, align 4
  %ss = alloca float, align 4
  store i32 %nn, i32* %nn.addr, align 4
  store %struct.Mat* %a, %struct.Mat** %a.addr, align 8
  store %struct.Mat* %b, %struct.Mat** %b.addr, align 8
  store %struct.Mat* %c, %struct.Mat** %c.addr, align 8
  store %struct.Mat* %p, %struct.Mat** %p.addr, align 8
  store %struct.Mat* %bnd, %struct.Mat** %bnd.addr, align 8
  store %struct.Mat* %wrk1, %struct.Mat** %wrk1.addr, align 8
  store %struct.Mat* %wrk2, %struct.Mat** %wrk2.addr, align 8
  %0 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows = getelementptr inbounds %struct.Mat, %struct.Mat* %0, i32 0, i32 2
  %1 = load i32, i32* %mrows, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %imax, align 4
  %2 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols = getelementptr inbounds %struct.Mat, %struct.Mat* %2, i32 0, i32 3
  %3 = load i32, i32* %mcols, align 8
  %sub1 = sub nsw i32 %3, 1
  store i32 %sub1, i32* %jmax, align 4
  %4 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps = getelementptr inbounds %struct.Mat, %struct.Mat* %4, i32 0, i32 4
  %5 = load i32, i32* %mdeps, align 4
  %sub2 = sub nsw i32 %5, 1
  store i32 %sub2, i32* %kmax, align 4
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc725, %entry
  %6 = load i32, i32* %n, align 4
  %7 = load i32, i32* %nn.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end727

for.body:                                         ; preds = %for.cond
  store float 0.000000e+00, float* %gosa, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc668, %for.body
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %imax, align 4
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body5, label %for.end670

for.body5:                                        ; preds = %for.cond3
  store i32 1, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc665, %for.body5
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %jmax, align 4
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body8, label %for.end667

for.body8:                                        ; preds = %for.cond6
  store i32 1, i32* %k, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body8
  %12 = load i32, i32* %k, align 4
  %13 = load i32, i32* %kmax, align 4
  %cmp10 = icmp slt i32 %12, %13
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %14 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %m = getelementptr inbounds %struct.Mat, %struct.Mat* %14, i32 0, i32 0
  %15 = load float*, float** %m, align 8
  %16 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mrows12 = getelementptr inbounds %struct.Mat, %struct.Mat* %16, i32 0, i32 2
  %17 = load i32, i32* %mrows12, align 4
  %mul = mul nsw i32 0, %17
  %18 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mcols13 = getelementptr inbounds %struct.Mat, %struct.Mat* %18, i32 0, i32 3
  %19 = load i32, i32* %mcols13, align 8
  %mul14 = mul nsw i32 %mul, %19
  %20 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps15 = getelementptr inbounds %struct.Mat, %struct.Mat* %20, i32 0, i32 4
  %21 = load i32, i32* %mdeps15, align 4
  %mul16 = mul nsw i32 %mul14, %21
  %22 = load i32, i32* %i, align 4
  %23 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mcols17 = getelementptr inbounds %struct.Mat, %struct.Mat* %23, i32 0, i32 3
  %24 = load i32, i32* %mcols17, align 8
  %mul18 = mul nsw i32 %22, %24
  %25 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps19 = getelementptr inbounds %struct.Mat, %struct.Mat* %25, i32 0, i32 4
  %26 = load i32, i32* %mdeps19, align 4
  %mul20 = mul nsw i32 %mul18, %26
  %add = add nsw i32 %mul16, %mul20
  %27 = load i32, i32* %j, align 4
  %28 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps21 = getelementptr inbounds %struct.Mat, %struct.Mat* %28, i32 0, i32 4
  %29 = load i32, i32* %mdeps21, align 4
  %mul22 = mul nsw i32 %27, %29
  %add23 = add nsw i32 %add, %mul22
  %30 = load i32, i32* %k, align 4
  %add24 = add nsw i32 %add23, %30
  %idxprom = sext i32 %add24 to i64
  %arrayidx = getelementptr inbounds float, float* %15, i64 %idxprom
  %31 = load float, float* %arrayidx, align 4
  %32 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m25 = getelementptr inbounds %struct.Mat, %struct.Mat* %32, i32 0, i32 0
  %33 = load float*, float** %m25, align 8
  %34 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows26 = getelementptr inbounds %struct.Mat, %struct.Mat* %34, i32 0, i32 2
  %35 = load i32, i32* %mrows26, align 4
  %mul27 = mul nsw i32 0, %35
  %36 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols28 = getelementptr inbounds %struct.Mat, %struct.Mat* %36, i32 0, i32 3
  %37 = load i32, i32* %mcols28, align 8
  %mul29 = mul nsw i32 %mul27, %37
  %38 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps30 = getelementptr inbounds %struct.Mat, %struct.Mat* %38, i32 0, i32 4
  %39 = load i32, i32* %mdeps30, align 4
  %mul31 = mul nsw i32 %mul29, %39
  %40 = load i32, i32* %i, align 4
  %add32 = add nsw i32 %40, 1
  %41 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols33 = getelementptr inbounds %struct.Mat, %struct.Mat* %41, i32 0, i32 3
  %42 = load i32, i32* %mcols33, align 8
  %mul34 = mul nsw i32 %add32, %42
  %43 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps35 = getelementptr inbounds %struct.Mat, %struct.Mat* %43, i32 0, i32 4
  %44 = load i32, i32* %mdeps35, align 4
  %mul36 = mul nsw i32 %mul34, %44
  %add37 = add nsw i32 %mul31, %mul36
  %45 = load i32, i32* %j, align 4
  %46 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps38 = getelementptr inbounds %struct.Mat, %struct.Mat* %46, i32 0, i32 4
  %47 = load i32, i32* %mdeps38, align 4
  %mul39 = mul nsw i32 %45, %47
  %add40 = add nsw i32 %add37, %mul39
  %48 = load i32, i32* %k, align 4
  %add41 = add nsw i32 %add40, %48
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds float, float* %33, i64 %idxprom42
  %49 = load float, float* %arrayidx43, align 4
  %mul44 = fmul float %31, %49
  %50 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %m45 = getelementptr inbounds %struct.Mat, %struct.Mat* %50, i32 0, i32 0
  %51 = load float*, float** %m45, align 8
  %52 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mrows46 = getelementptr inbounds %struct.Mat, %struct.Mat* %52, i32 0, i32 2
  %53 = load i32, i32* %mrows46, align 4
  %mul47 = mul nsw i32 1, %53
  %54 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mcols48 = getelementptr inbounds %struct.Mat, %struct.Mat* %54, i32 0, i32 3
  %55 = load i32, i32* %mcols48, align 8
  %mul49 = mul nsw i32 %mul47, %55
  %56 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps50 = getelementptr inbounds %struct.Mat, %struct.Mat* %56, i32 0, i32 4
  %57 = load i32, i32* %mdeps50, align 4
  %mul51 = mul nsw i32 %mul49, %57
  %58 = load i32, i32* %i, align 4
  %59 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mcols52 = getelementptr inbounds %struct.Mat, %struct.Mat* %59, i32 0, i32 3
  %60 = load i32, i32* %mcols52, align 8
  %mul53 = mul nsw i32 %58, %60
  %61 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps54 = getelementptr inbounds %struct.Mat, %struct.Mat* %61, i32 0, i32 4
  %62 = load i32, i32* %mdeps54, align 4
  %mul55 = mul nsw i32 %mul53, %62
  %add56 = add nsw i32 %mul51, %mul55
  %63 = load i32, i32* %j, align 4
  %64 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps57 = getelementptr inbounds %struct.Mat, %struct.Mat* %64, i32 0, i32 4
  %65 = load i32, i32* %mdeps57, align 4
  %mul58 = mul nsw i32 %63, %65
  %add59 = add nsw i32 %add56, %mul58
  %66 = load i32, i32* %k, align 4
  %add60 = add nsw i32 %add59, %66
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds float, float* %51, i64 %idxprom61
  %67 = load float, float* %arrayidx62, align 4
  %68 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m63 = getelementptr inbounds %struct.Mat, %struct.Mat* %68, i32 0, i32 0
  %69 = load float*, float** %m63, align 8
  %70 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows64 = getelementptr inbounds %struct.Mat, %struct.Mat* %70, i32 0, i32 2
  %71 = load i32, i32* %mrows64, align 4
  %mul65 = mul nsw i32 0, %71
  %72 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols66 = getelementptr inbounds %struct.Mat, %struct.Mat* %72, i32 0, i32 3
  %73 = load i32, i32* %mcols66, align 8
  %mul67 = mul nsw i32 %mul65, %73
  %74 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps68 = getelementptr inbounds %struct.Mat, %struct.Mat* %74, i32 0, i32 4
  %75 = load i32, i32* %mdeps68, align 4
  %mul69 = mul nsw i32 %mul67, %75
  %76 = load i32, i32* %i, align 4
  %77 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols70 = getelementptr inbounds %struct.Mat, %struct.Mat* %77, i32 0, i32 3
  %78 = load i32, i32* %mcols70, align 8
  %mul71 = mul nsw i32 %76, %78
  %79 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps72 = getelementptr inbounds %struct.Mat, %struct.Mat* %79, i32 0, i32 4
  %80 = load i32, i32* %mdeps72, align 4
  %mul73 = mul nsw i32 %mul71, %80
  %add74 = add nsw i32 %mul69, %mul73
  %81 = load i32, i32* %j, align 4
  %add75 = add nsw i32 %81, 1
  %82 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps76 = getelementptr inbounds %struct.Mat, %struct.Mat* %82, i32 0, i32 4
  %83 = load i32, i32* %mdeps76, align 4
  %mul77 = mul nsw i32 %add75, %83
  %add78 = add nsw i32 %add74, %mul77
  %84 = load i32, i32* %k, align 4
  %add79 = add nsw i32 %add78, %84
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds float, float* %69, i64 %idxprom80
  %85 = load float, float* %arrayidx81, align 4
  %mul82 = fmul float %67, %85
  %add83 = fadd float %mul44, %mul82
  %86 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %m84 = getelementptr inbounds %struct.Mat, %struct.Mat* %86, i32 0, i32 0
  %87 = load float*, float** %m84, align 8
  %88 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mrows85 = getelementptr inbounds %struct.Mat, %struct.Mat* %88, i32 0, i32 2
  %89 = load i32, i32* %mrows85, align 4
  %mul86 = mul nsw i32 2, %89
  %90 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mcols87 = getelementptr inbounds %struct.Mat, %struct.Mat* %90, i32 0, i32 3
  %91 = load i32, i32* %mcols87, align 8
  %mul88 = mul nsw i32 %mul86, %91
  %92 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps89 = getelementptr inbounds %struct.Mat, %struct.Mat* %92, i32 0, i32 4
  %93 = load i32, i32* %mdeps89, align 4
  %mul90 = mul nsw i32 %mul88, %93
  %94 = load i32, i32* %i, align 4
  %95 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mcols91 = getelementptr inbounds %struct.Mat, %struct.Mat* %95, i32 0, i32 3
  %96 = load i32, i32* %mcols91, align 8
  %mul92 = mul nsw i32 %94, %96
  %97 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps93 = getelementptr inbounds %struct.Mat, %struct.Mat* %97, i32 0, i32 4
  %98 = load i32, i32* %mdeps93, align 4
  %mul94 = mul nsw i32 %mul92, %98
  %add95 = add nsw i32 %mul90, %mul94
  %99 = load i32, i32* %j, align 4
  %100 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps96 = getelementptr inbounds %struct.Mat, %struct.Mat* %100, i32 0, i32 4
  %101 = load i32, i32* %mdeps96, align 4
  %mul97 = mul nsw i32 %99, %101
  %add98 = add nsw i32 %add95, %mul97
  %102 = load i32, i32* %k, align 4
  %add99 = add nsw i32 %add98, %102
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds float, float* %87, i64 %idxprom100
  %103 = load float, float* %arrayidx101, align 4
  %104 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m102 = getelementptr inbounds %struct.Mat, %struct.Mat* %104, i32 0, i32 0
  %105 = load float*, float** %m102, align 8
  %106 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows103 = getelementptr inbounds %struct.Mat, %struct.Mat* %106, i32 0, i32 2
  %107 = load i32, i32* %mrows103, align 4
  %mul104 = mul nsw i32 0, %107
  %108 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols105 = getelementptr inbounds %struct.Mat, %struct.Mat* %108, i32 0, i32 3
  %109 = load i32, i32* %mcols105, align 8
  %mul106 = mul nsw i32 %mul104, %109
  %110 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps107 = getelementptr inbounds %struct.Mat, %struct.Mat* %110, i32 0, i32 4
  %111 = load i32, i32* %mdeps107, align 4
  %mul108 = mul nsw i32 %mul106, %111
  %112 = load i32, i32* %i, align 4
  %113 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols109 = getelementptr inbounds %struct.Mat, %struct.Mat* %113, i32 0, i32 3
  %114 = load i32, i32* %mcols109, align 8
  %mul110 = mul nsw i32 %112, %114
  %115 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps111 = getelementptr inbounds %struct.Mat, %struct.Mat* %115, i32 0, i32 4
  %116 = load i32, i32* %mdeps111, align 4
  %mul112 = mul nsw i32 %mul110, %116
  %add113 = add nsw i32 %mul108, %mul112
  %117 = load i32, i32* %j, align 4
  %118 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps114 = getelementptr inbounds %struct.Mat, %struct.Mat* %118, i32 0, i32 4
  %119 = load i32, i32* %mdeps114, align 4
  %mul115 = mul nsw i32 %117, %119
  %add116 = add nsw i32 %add113, %mul115
  %120 = load i32, i32* %k, align 4
  %add117 = add nsw i32 %120, 1
  %add118 = add nsw i32 %add116, %add117
  %idxprom119 = sext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds float, float* %105, i64 %idxprom119
  %121 = load float, float* %arrayidx120, align 4
  %mul121 = fmul float %103, %121
  %add122 = fadd float %add83, %mul121
  %122 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %m123 = getelementptr inbounds %struct.Mat, %struct.Mat* %122, i32 0, i32 0
  %123 = load float*, float** %m123, align 8
  %124 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mrows124 = getelementptr inbounds %struct.Mat, %struct.Mat* %124, i32 0, i32 2
  %125 = load i32, i32* %mrows124, align 4
  %mul125 = mul nsw i32 0, %125
  %126 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mcols126 = getelementptr inbounds %struct.Mat, %struct.Mat* %126, i32 0, i32 3
  %127 = load i32, i32* %mcols126, align 8
  %mul127 = mul nsw i32 %mul125, %127
  %128 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps128 = getelementptr inbounds %struct.Mat, %struct.Mat* %128, i32 0, i32 4
  %129 = load i32, i32* %mdeps128, align 4
  %mul129 = mul nsw i32 %mul127, %129
  %130 = load i32, i32* %i, align 4
  %131 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mcols130 = getelementptr inbounds %struct.Mat, %struct.Mat* %131, i32 0, i32 3
  %132 = load i32, i32* %mcols130, align 8
  %mul131 = mul nsw i32 %130, %132
  %133 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps132 = getelementptr inbounds %struct.Mat, %struct.Mat* %133, i32 0, i32 4
  %134 = load i32, i32* %mdeps132, align 4
  %mul133 = mul nsw i32 %mul131, %134
  %add134 = add nsw i32 %mul129, %mul133
  %135 = load i32, i32* %j, align 4
  %136 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps135 = getelementptr inbounds %struct.Mat, %struct.Mat* %136, i32 0, i32 4
  %137 = load i32, i32* %mdeps135, align 4
  %mul136 = mul nsw i32 %135, %137
  %add137 = add nsw i32 %add134, %mul136
  %138 = load i32, i32* %k, align 4
  %add138 = add nsw i32 %add137, %138
  %idxprom139 = sext i32 %add138 to i64
  %arrayidx140 = getelementptr inbounds float, float* %123, i64 %idxprom139
  %139 = load float, float* %arrayidx140, align 4
  %140 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m141 = getelementptr inbounds %struct.Mat, %struct.Mat* %140, i32 0, i32 0
  %141 = load float*, float** %m141, align 8
  %142 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows142 = getelementptr inbounds %struct.Mat, %struct.Mat* %142, i32 0, i32 2
  %143 = load i32, i32* %mrows142, align 4
  %mul143 = mul nsw i32 0, %143
  %144 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols144 = getelementptr inbounds %struct.Mat, %struct.Mat* %144, i32 0, i32 3
  %145 = load i32, i32* %mcols144, align 8
  %mul145 = mul nsw i32 %mul143, %145
  %146 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps146 = getelementptr inbounds %struct.Mat, %struct.Mat* %146, i32 0, i32 4
  %147 = load i32, i32* %mdeps146, align 4
  %mul147 = mul nsw i32 %mul145, %147
  %148 = load i32, i32* %i, align 4
  %add148 = add nsw i32 %148, 1
  %149 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols149 = getelementptr inbounds %struct.Mat, %struct.Mat* %149, i32 0, i32 3
  %150 = load i32, i32* %mcols149, align 8
  %mul150 = mul nsw i32 %add148, %150
  %151 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps151 = getelementptr inbounds %struct.Mat, %struct.Mat* %151, i32 0, i32 4
  %152 = load i32, i32* %mdeps151, align 4
  %mul152 = mul nsw i32 %mul150, %152
  %add153 = add nsw i32 %mul147, %mul152
  %153 = load i32, i32* %j, align 4
  %add154 = add nsw i32 %153, 1
  %154 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps155 = getelementptr inbounds %struct.Mat, %struct.Mat* %154, i32 0, i32 4
  %155 = load i32, i32* %mdeps155, align 4
  %mul156 = mul nsw i32 %add154, %155
  %add157 = add nsw i32 %add153, %mul156
  %156 = load i32, i32* %k, align 4
  %add158 = add nsw i32 %add157, %156
  %idxprom159 = sext i32 %add158 to i64
  %arrayidx160 = getelementptr inbounds float, float* %141, i64 %idxprom159
  %157 = load float, float* %arrayidx160, align 4
  %158 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m161 = getelementptr inbounds %struct.Mat, %struct.Mat* %158, i32 0, i32 0
  %159 = load float*, float** %m161, align 8
  %160 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows162 = getelementptr inbounds %struct.Mat, %struct.Mat* %160, i32 0, i32 2
  %161 = load i32, i32* %mrows162, align 4
  %mul163 = mul nsw i32 0, %161
  %162 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols164 = getelementptr inbounds %struct.Mat, %struct.Mat* %162, i32 0, i32 3
  %163 = load i32, i32* %mcols164, align 8
  %mul165 = mul nsw i32 %mul163, %163
  %164 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps166 = getelementptr inbounds %struct.Mat, %struct.Mat* %164, i32 0, i32 4
  %165 = load i32, i32* %mdeps166, align 4
  %mul167 = mul nsw i32 %mul165, %165
  %166 = load i32, i32* %i, align 4
  %add168 = add nsw i32 %166, 1
  %167 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols169 = getelementptr inbounds %struct.Mat, %struct.Mat* %167, i32 0, i32 3
  %168 = load i32, i32* %mcols169, align 8
  %mul170 = mul nsw i32 %add168, %168
  %169 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps171 = getelementptr inbounds %struct.Mat, %struct.Mat* %169, i32 0, i32 4
  %170 = load i32, i32* %mdeps171, align 4
  %mul172 = mul nsw i32 %mul170, %170
  %add173 = add nsw i32 %mul167, %mul172
  %171 = load i32, i32* %j, align 4
  %sub174 = sub nsw i32 %171, 1
  %172 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps175 = getelementptr inbounds %struct.Mat, %struct.Mat* %172, i32 0, i32 4
  %173 = load i32, i32* %mdeps175, align 4
  %mul176 = mul nsw i32 %sub174, %173
  %add177 = add nsw i32 %add173, %mul176
  %174 = load i32, i32* %k, align 4
  %add178 = add nsw i32 %add177, %174
  %idxprom179 = sext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds float, float* %159, i64 %idxprom179
  %175 = load float, float* %arrayidx180, align 4
  %sub181 = fsub float %157, %175
  %176 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m182 = getelementptr inbounds %struct.Mat, %struct.Mat* %176, i32 0, i32 0
  %177 = load float*, float** %m182, align 8
  %178 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows183 = getelementptr inbounds %struct.Mat, %struct.Mat* %178, i32 0, i32 2
  %179 = load i32, i32* %mrows183, align 4
  %mul184 = mul nsw i32 0, %179
  %180 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols185 = getelementptr inbounds %struct.Mat, %struct.Mat* %180, i32 0, i32 3
  %181 = load i32, i32* %mcols185, align 8
  %mul186 = mul nsw i32 %mul184, %181
  %182 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps187 = getelementptr inbounds %struct.Mat, %struct.Mat* %182, i32 0, i32 4
  %183 = load i32, i32* %mdeps187, align 4
  %mul188 = mul nsw i32 %mul186, %183
  %184 = load i32, i32* %i, align 4
  %sub189 = sub nsw i32 %184, 1
  %185 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols190 = getelementptr inbounds %struct.Mat, %struct.Mat* %185, i32 0, i32 3
  %186 = load i32, i32* %mcols190, align 8
  %mul191 = mul nsw i32 %sub189, %186
  %187 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps192 = getelementptr inbounds %struct.Mat, %struct.Mat* %187, i32 0, i32 4
  %188 = load i32, i32* %mdeps192, align 4
  %mul193 = mul nsw i32 %mul191, %188
  %add194 = add nsw i32 %mul188, %mul193
  %189 = load i32, i32* %j, align 4
  %add195 = add nsw i32 %189, 1
  %190 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps196 = getelementptr inbounds %struct.Mat, %struct.Mat* %190, i32 0, i32 4
  %191 = load i32, i32* %mdeps196, align 4
  %mul197 = mul nsw i32 %add195, %191
  %add198 = add nsw i32 %add194, %mul197
  %192 = load i32, i32* %k, align 4
  %add199 = add nsw i32 %add198, %192
  %idxprom200 = sext i32 %add199 to i64
  %arrayidx201 = getelementptr inbounds float, float* %177, i64 %idxprom200
  %193 = load float, float* %arrayidx201, align 4
  %sub202 = fsub float %sub181, %193
  %194 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m203 = getelementptr inbounds %struct.Mat, %struct.Mat* %194, i32 0, i32 0
  %195 = load float*, float** %m203, align 8
  %196 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows204 = getelementptr inbounds %struct.Mat, %struct.Mat* %196, i32 0, i32 2
  %197 = load i32, i32* %mrows204, align 4
  %mul205 = mul nsw i32 0, %197
  %198 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols206 = getelementptr inbounds %struct.Mat, %struct.Mat* %198, i32 0, i32 3
  %199 = load i32, i32* %mcols206, align 8
  %mul207 = mul nsw i32 %mul205, %199
  %200 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps208 = getelementptr inbounds %struct.Mat, %struct.Mat* %200, i32 0, i32 4
  %201 = load i32, i32* %mdeps208, align 4
  %mul209 = mul nsw i32 %mul207, %201
  %202 = load i32, i32* %i, align 4
  %sub210 = sub nsw i32 %202, 1
  %203 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols211 = getelementptr inbounds %struct.Mat, %struct.Mat* %203, i32 0, i32 3
  %204 = load i32, i32* %mcols211, align 8
  %mul212 = mul nsw i32 %sub210, %204
  %205 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps213 = getelementptr inbounds %struct.Mat, %struct.Mat* %205, i32 0, i32 4
  %206 = load i32, i32* %mdeps213, align 4
  %mul214 = mul nsw i32 %mul212, %206
  %add215 = add nsw i32 %mul209, %mul214
  %207 = load i32, i32* %j, align 4
  %sub216 = sub nsw i32 %207, 1
  %208 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps217 = getelementptr inbounds %struct.Mat, %struct.Mat* %208, i32 0, i32 4
  %209 = load i32, i32* %mdeps217, align 4
  %mul218 = mul nsw i32 %sub216, %209
  %add219 = add nsw i32 %add215, %mul218
  %210 = load i32, i32* %k, align 4
  %add220 = add nsw i32 %add219, %210
  %idxprom221 = sext i32 %add220 to i64
  %arrayidx222 = getelementptr inbounds float, float* %195, i64 %idxprom221
  %211 = load float, float* %arrayidx222, align 4
  %add223 = fadd float %sub202, %211
  %mul224 = fmul float %139, %add223
  %add225 = fadd float %add122, %mul224
  %212 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %m226 = getelementptr inbounds %struct.Mat, %struct.Mat* %212, i32 0, i32 0
  %213 = load float*, float** %m226, align 8
  %214 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mrows227 = getelementptr inbounds %struct.Mat, %struct.Mat* %214, i32 0, i32 2
  %215 = load i32, i32* %mrows227, align 4
  %mul228 = mul nsw i32 1, %215
  %216 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mcols229 = getelementptr inbounds %struct.Mat, %struct.Mat* %216, i32 0, i32 3
  %217 = load i32, i32* %mcols229, align 8
  %mul230 = mul nsw i32 %mul228, %217
  %218 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps231 = getelementptr inbounds %struct.Mat, %struct.Mat* %218, i32 0, i32 4
  %219 = load i32, i32* %mdeps231, align 4
  %mul232 = mul nsw i32 %mul230, %219
  %220 = load i32, i32* %i, align 4
  %221 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mcols233 = getelementptr inbounds %struct.Mat, %struct.Mat* %221, i32 0, i32 3
  %222 = load i32, i32* %mcols233, align 8
  %mul234 = mul nsw i32 %220, %222
  %223 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps235 = getelementptr inbounds %struct.Mat, %struct.Mat* %223, i32 0, i32 4
  %224 = load i32, i32* %mdeps235, align 4
  %mul236 = mul nsw i32 %mul234, %224
  %add237 = add nsw i32 %mul232, %mul236
  %225 = load i32, i32* %j, align 4
  %226 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps238 = getelementptr inbounds %struct.Mat, %struct.Mat* %226, i32 0, i32 4
  %227 = load i32, i32* %mdeps238, align 4
  %mul239 = mul nsw i32 %225, %227
  %add240 = add nsw i32 %add237, %mul239
  %228 = load i32, i32* %k, align 4
  %add241 = add nsw i32 %add240, %228
  %idxprom242 = sext i32 %add241 to i64
  %arrayidx243 = getelementptr inbounds float, float* %213, i64 %idxprom242
  %229 = load float, float* %arrayidx243, align 4
  %230 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m244 = getelementptr inbounds %struct.Mat, %struct.Mat* %230, i32 0, i32 0
  %231 = load float*, float** %m244, align 8
  %232 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows245 = getelementptr inbounds %struct.Mat, %struct.Mat* %232, i32 0, i32 2
  %233 = load i32, i32* %mrows245, align 4
  %mul246 = mul nsw i32 0, %233
  %234 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols247 = getelementptr inbounds %struct.Mat, %struct.Mat* %234, i32 0, i32 3
  %235 = load i32, i32* %mcols247, align 8
  %mul248 = mul nsw i32 %mul246, %235
  %236 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps249 = getelementptr inbounds %struct.Mat, %struct.Mat* %236, i32 0, i32 4
  %237 = load i32, i32* %mdeps249, align 4
  %mul250 = mul nsw i32 %mul248, %237
  %238 = load i32, i32* %i, align 4
  %239 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols251 = getelementptr inbounds %struct.Mat, %struct.Mat* %239, i32 0, i32 3
  %240 = load i32, i32* %mcols251, align 8
  %mul252 = mul nsw i32 %238, %240
  %241 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps253 = getelementptr inbounds %struct.Mat, %struct.Mat* %241, i32 0, i32 4
  %242 = load i32, i32* %mdeps253, align 4
  %mul254 = mul nsw i32 %mul252, %242
  %add255 = add nsw i32 %mul250, %mul254
  %243 = load i32, i32* %j, align 4
  %add256 = add nsw i32 %243, 1
  %244 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps257 = getelementptr inbounds %struct.Mat, %struct.Mat* %244, i32 0, i32 4
  %245 = load i32, i32* %mdeps257, align 4
  %mul258 = mul nsw i32 %add256, %245
  %add259 = add nsw i32 %add255, %mul258
  %246 = load i32, i32* %k, align 4
  %add260 = add nsw i32 %246, 1
  %add261 = add nsw i32 %add259, %add260
  %idxprom262 = sext i32 %add261 to i64
  %arrayidx263 = getelementptr inbounds float, float* %231, i64 %idxprom262
  %247 = load float, float* %arrayidx263, align 4
  %248 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m264 = getelementptr inbounds %struct.Mat, %struct.Mat* %248, i32 0, i32 0
  %249 = load float*, float** %m264, align 8
  %250 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows265 = getelementptr inbounds %struct.Mat, %struct.Mat* %250, i32 0, i32 2
  %251 = load i32, i32* %mrows265, align 4
  %mul266 = mul nsw i32 0, %251
  %252 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols267 = getelementptr inbounds %struct.Mat, %struct.Mat* %252, i32 0, i32 3
  %253 = load i32, i32* %mcols267, align 8
  %mul268 = mul nsw i32 %mul266, %253
  %254 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps269 = getelementptr inbounds %struct.Mat, %struct.Mat* %254, i32 0, i32 4
  %255 = load i32, i32* %mdeps269, align 4
  %mul270 = mul nsw i32 %mul268, %255
  %256 = load i32, i32* %i, align 4
  %257 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols271 = getelementptr inbounds %struct.Mat, %struct.Mat* %257, i32 0, i32 3
  %258 = load i32, i32* %mcols271, align 8
  %mul272 = mul nsw i32 %256, %258
  %259 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps273 = getelementptr inbounds %struct.Mat, %struct.Mat* %259, i32 0, i32 4
  %260 = load i32, i32* %mdeps273, align 4
  %mul274 = mul nsw i32 %mul272, %260
  %add275 = add nsw i32 %mul270, %mul274
  %261 = load i32, i32* %j, align 4
  %sub276 = sub nsw i32 %261, 1
  %262 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps277 = getelementptr inbounds %struct.Mat, %struct.Mat* %262, i32 0, i32 4
  %263 = load i32, i32* %mdeps277, align 4
  %mul278 = mul nsw i32 %sub276, %263
  %add279 = add nsw i32 %add275, %mul278
  %264 = load i32, i32* %k, align 4
  %add280 = add nsw i32 %264, 1
  %add281 = add nsw i32 %add279, %add280
  %idxprom282 = sext i32 %add281 to i64
  %arrayidx283 = getelementptr inbounds float, float* %249, i64 %idxprom282
  %265 = load float, float* %arrayidx283, align 4
  %sub284 = fsub float %247, %265
  %266 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m285 = getelementptr inbounds %struct.Mat, %struct.Mat* %266, i32 0, i32 0
  %267 = load float*, float** %m285, align 8
  %268 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows286 = getelementptr inbounds %struct.Mat, %struct.Mat* %268, i32 0, i32 2
  %269 = load i32, i32* %mrows286, align 4
  %mul287 = mul nsw i32 0, %269
  %270 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols288 = getelementptr inbounds %struct.Mat, %struct.Mat* %270, i32 0, i32 3
  %271 = load i32, i32* %mcols288, align 8
  %mul289 = mul nsw i32 %mul287, %271
  %272 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps290 = getelementptr inbounds %struct.Mat, %struct.Mat* %272, i32 0, i32 4
  %273 = load i32, i32* %mdeps290, align 4
  %mul291 = mul nsw i32 %mul289, %273
  %274 = load i32, i32* %i, align 4
  %275 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols292 = getelementptr inbounds %struct.Mat, %struct.Mat* %275, i32 0, i32 3
  %276 = load i32, i32* %mcols292, align 8
  %mul293 = mul nsw i32 %274, %276
  %277 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps294 = getelementptr inbounds %struct.Mat, %struct.Mat* %277, i32 0, i32 4
  %278 = load i32, i32* %mdeps294, align 4
  %mul295 = mul nsw i32 %mul293, %278
  %add296 = add nsw i32 %mul291, %mul295
  %279 = load i32, i32* %j, align 4
  %add297 = add nsw i32 %279, 1
  %280 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps298 = getelementptr inbounds %struct.Mat, %struct.Mat* %280, i32 0, i32 4
  %281 = load i32, i32* %mdeps298, align 4
  %mul299 = mul nsw i32 %add297, %281
  %add300 = add nsw i32 %add296, %mul299
  %282 = load i32, i32* %k, align 4
  %sub301 = sub nsw i32 %282, 1
  %add302 = add nsw i32 %add300, %sub301
  %idxprom303 = sext i32 %add302 to i64
  %arrayidx304 = getelementptr inbounds float, float* %267, i64 %idxprom303
  %283 = load float, float* %arrayidx304, align 4
  %sub305 = fsub float %sub284, %283
  %284 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m306 = getelementptr inbounds %struct.Mat, %struct.Mat* %284, i32 0, i32 0
  %285 = load float*, float** %m306, align 8
  %286 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows307 = getelementptr inbounds %struct.Mat, %struct.Mat* %286, i32 0, i32 2
  %287 = load i32, i32* %mrows307, align 4
  %mul308 = mul nsw i32 0, %287
  %288 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols309 = getelementptr inbounds %struct.Mat, %struct.Mat* %288, i32 0, i32 3
  %289 = load i32, i32* %mcols309, align 8
  %mul310 = mul nsw i32 %mul308, %289
  %290 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps311 = getelementptr inbounds %struct.Mat, %struct.Mat* %290, i32 0, i32 4
  %291 = load i32, i32* %mdeps311, align 4
  %mul312 = mul nsw i32 %mul310, %291
  %292 = load i32, i32* %i, align 4
  %293 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols313 = getelementptr inbounds %struct.Mat, %struct.Mat* %293, i32 0, i32 3
  %294 = load i32, i32* %mcols313, align 8
  %mul314 = mul nsw i32 %292, %294
  %295 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps315 = getelementptr inbounds %struct.Mat, %struct.Mat* %295, i32 0, i32 4
  %296 = load i32, i32* %mdeps315, align 4
  %mul316 = mul nsw i32 %mul314, %296
  %add317 = add nsw i32 %mul312, %mul316
  %297 = load i32, i32* %j, align 4
  %sub318 = sub nsw i32 %297, 1
  %298 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps319 = getelementptr inbounds %struct.Mat, %struct.Mat* %298, i32 0, i32 4
  %299 = load i32, i32* %mdeps319, align 4
  %mul320 = mul nsw i32 %sub318, %299
  %add321 = add nsw i32 %add317, %mul320
  %300 = load i32, i32* %k, align 4
  %sub322 = sub nsw i32 %300, 1
  %add323 = add nsw i32 %add321, %sub322
  %idxprom324 = sext i32 %add323 to i64
  %arrayidx325 = getelementptr inbounds float, float* %285, i64 %idxprom324
  %301 = load float, float* %arrayidx325, align 4
  %add326 = fadd float %sub305, %301
  %mul327 = fmul float %229, %add326
  %add328 = fadd float %add225, %mul327
  %302 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %m329 = getelementptr inbounds %struct.Mat, %struct.Mat* %302, i32 0, i32 0
  %303 = load float*, float** %m329, align 8
  %304 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mrows330 = getelementptr inbounds %struct.Mat, %struct.Mat* %304, i32 0, i32 2
  %305 = load i32, i32* %mrows330, align 4
  %mul331 = mul nsw i32 2, %305
  %306 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mcols332 = getelementptr inbounds %struct.Mat, %struct.Mat* %306, i32 0, i32 3
  %307 = load i32, i32* %mcols332, align 8
  %mul333 = mul nsw i32 %mul331, %307
  %308 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps334 = getelementptr inbounds %struct.Mat, %struct.Mat* %308, i32 0, i32 4
  %309 = load i32, i32* %mdeps334, align 4
  %mul335 = mul nsw i32 %mul333, %309
  %310 = load i32, i32* %i, align 4
  %311 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mcols336 = getelementptr inbounds %struct.Mat, %struct.Mat* %311, i32 0, i32 3
  %312 = load i32, i32* %mcols336, align 8
  %mul337 = mul nsw i32 %310, %312
  %313 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps338 = getelementptr inbounds %struct.Mat, %struct.Mat* %313, i32 0, i32 4
  %314 = load i32, i32* %mdeps338, align 4
  %mul339 = mul nsw i32 %mul337, %314
  %add340 = add nsw i32 %mul335, %mul339
  %315 = load i32, i32* %j, align 4
  %316 = load %struct.Mat*, %struct.Mat** %b.addr, align 8
  %mdeps341 = getelementptr inbounds %struct.Mat, %struct.Mat* %316, i32 0, i32 4
  %317 = load i32, i32* %mdeps341, align 4
  %mul342 = mul nsw i32 %315, %317
  %add343 = add nsw i32 %add340, %mul342
  %318 = load i32, i32* %k, align 4
  %add344 = add nsw i32 %add343, %318
  %idxprom345 = sext i32 %add344 to i64
  %arrayidx346 = getelementptr inbounds float, float* %303, i64 %idxprom345
  %319 = load float, float* %arrayidx346, align 4
  %320 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m347 = getelementptr inbounds %struct.Mat, %struct.Mat* %320, i32 0, i32 0
  %321 = load float*, float** %m347, align 8
  %322 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows348 = getelementptr inbounds %struct.Mat, %struct.Mat* %322, i32 0, i32 2
  %323 = load i32, i32* %mrows348, align 4
  %mul349 = mul nsw i32 0, %323
  %324 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols350 = getelementptr inbounds %struct.Mat, %struct.Mat* %324, i32 0, i32 3
  %325 = load i32, i32* %mcols350, align 8
  %mul351 = mul nsw i32 %mul349, %325
  %326 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps352 = getelementptr inbounds %struct.Mat, %struct.Mat* %326, i32 0, i32 4
  %327 = load i32, i32* %mdeps352, align 4
  %mul353 = mul nsw i32 %mul351, %327
  %328 = load i32, i32* %i, align 4
  %add354 = add nsw i32 %328, 1
  %329 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols355 = getelementptr inbounds %struct.Mat, %struct.Mat* %329, i32 0, i32 3
  %330 = load i32, i32* %mcols355, align 8
  %mul356 = mul nsw i32 %add354, %330
  %331 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps357 = getelementptr inbounds %struct.Mat, %struct.Mat* %331, i32 0, i32 4
  %332 = load i32, i32* %mdeps357, align 4
  %mul358 = mul nsw i32 %mul356, %332
  %add359 = add nsw i32 %mul353, %mul358
  %333 = load i32, i32* %j, align 4
  %334 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps360 = getelementptr inbounds %struct.Mat, %struct.Mat* %334, i32 0, i32 4
  %335 = load i32, i32* %mdeps360, align 4
  %mul361 = mul nsw i32 %333, %335
  %add362 = add nsw i32 %add359, %mul361
  %336 = load i32, i32* %k, align 4
  %add363 = add nsw i32 %336, 1
  %add364 = add nsw i32 %add362, %add363
  %idxprom365 = sext i32 %add364 to i64
  %arrayidx366 = getelementptr inbounds float, float* %321, i64 %idxprom365
  %337 = load float, float* %arrayidx366, align 4
  %338 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m367 = getelementptr inbounds %struct.Mat, %struct.Mat* %338, i32 0, i32 0
  %339 = load float*, float** %m367, align 8
  %340 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows368 = getelementptr inbounds %struct.Mat, %struct.Mat* %340, i32 0, i32 2
  %341 = load i32, i32* %mrows368, align 4
  %mul369 = mul nsw i32 0, %341
  %342 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols370 = getelementptr inbounds %struct.Mat, %struct.Mat* %342, i32 0, i32 3
  %343 = load i32, i32* %mcols370, align 8
  %mul371 = mul nsw i32 %mul369, %343
  %344 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps372 = getelementptr inbounds %struct.Mat, %struct.Mat* %344, i32 0, i32 4
  %345 = load i32, i32* %mdeps372, align 4
  %mul373 = mul nsw i32 %mul371, %345
  %346 = load i32, i32* %i, align 4
  %sub374 = sub nsw i32 %346, 1
  %347 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols375 = getelementptr inbounds %struct.Mat, %struct.Mat* %347, i32 0, i32 3
  %348 = load i32, i32* %mcols375, align 8
  %mul376 = mul nsw i32 %sub374, %348
  %349 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps377 = getelementptr inbounds %struct.Mat, %struct.Mat* %349, i32 0, i32 4
  %350 = load i32, i32* %mdeps377, align 4
  %mul378 = mul nsw i32 %mul376, %350
  %add379 = add nsw i32 %mul373, %mul378
  %351 = load i32, i32* %j, align 4
  %352 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps380 = getelementptr inbounds %struct.Mat, %struct.Mat* %352, i32 0, i32 4
  %353 = load i32, i32* %mdeps380, align 4
  %mul381 = mul nsw i32 %351, %353
  %add382 = add nsw i32 %add379, %mul381
  %354 = load i32, i32* %k, align 4
  %add383 = add nsw i32 %354, 1
  %add384 = add nsw i32 %add382, %add383
  %idxprom385 = sext i32 %add384 to i64
  %arrayidx386 = getelementptr inbounds float, float* %339, i64 %idxprom385
  %355 = load float, float* %arrayidx386, align 4
  %sub387 = fsub float %337, %355
  %356 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m388 = getelementptr inbounds %struct.Mat, %struct.Mat* %356, i32 0, i32 0
  %357 = load float*, float** %m388, align 8
  %358 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows389 = getelementptr inbounds %struct.Mat, %struct.Mat* %358, i32 0, i32 2
  %359 = load i32, i32* %mrows389, align 4
  %mul390 = mul nsw i32 0, %359
  %360 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols391 = getelementptr inbounds %struct.Mat, %struct.Mat* %360, i32 0, i32 3
  %361 = load i32, i32* %mcols391, align 8
  %mul392 = mul nsw i32 %mul390, %361
  %362 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps393 = getelementptr inbounds %struct.Mat, %struct.Mat* %362, i32 0, i32 4
  %363 = load i32, i32* %mdeps393, align 4
  %mul394 = mul nsw i32 %mul392, %363
  %364 = load i32, i32* %i, align 4
  %add395 = add nsw i32 %364, 1
  %365 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols396 = getelementptr inbounds %struct.Mat, %struct.Mat* %365, i32 0, i32 3
  %366 = load i32, i32* %mcols396, align 8
  %mul397 = mul nsw i32 %add395, %366
  %367 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps398 = getelementptr inbounds %struct.Mat, %struct.Mat* %367, i32 0, i32 4
  %368 = load i32, i32* %mdeps398, align 4
  %mul399 = mul nsw i32 %mul397, %368
  %add400 = add nsw i32 %mul394, %mul399
  %369 = load i32, i32* %j, align 4
  %370 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps401 = getelementptr inbounds %struct.Mat, %struct.Mat* %370, i32 0, i32 4
  %371 = load i32, i32* %mdeps401, align 4
  %mul402 = mul nsw i32 %369, %371
  %add403 = add nsw i32 %add400, %mul402
  %372 = load i32, i32* %k, align 4
  %sub404 = sub nsw i32 %372, 1
  %add405 = add nsw i32 %add403, %sub404
  %idxprom406 = sext i32 %add405 to i64
  %arrayidx407 = getelementptr inbounds float, float* %357, i64 %idxprom406
  %373 = load float, float* %arrayidx407, align 4
  %sub408 = fsub float %sub387, %373
  %374 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m409 = getelementptr inbounds %struct.Mat, %struct.Mat* %374, i32 0, i32 0
  %375 = load float*, float** %m409, align 8
  %376 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows410 = getelementptr inbounds %struct.Mat, %struct.Mat* %376, i32 0, i32 2
  %377 = load i32, i32* %mrows410, align 4
  %mul411 = mul nsw i32 0, %377
  %378 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols412 = getelementptr inbounds %struct.Mat, %struct.Mat* %378, i32 0, i32 3
  %379 = load i32, i32* %mcols412, align 8
  %mul413 = mul nsw i32 %mul411, %379
  %380 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps414 = getelementptr inbounds %struct.Mat, %struct.Mat* %380, i32 0, i32 4
  %381 = load i32, i32* %mdeps414, align 4
  %mul415 = mul nsw i32 %mul413, %381
  %382 = load i32, i32* %i, align 4
  %sub416 = sub nsw i32 %382, 1
  %383 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols417 = getelementptr inbounds %struct.Mat, %struct.Mat* %383, i32 0, i32 3
  %384 = load i32, i32* %mcols417, align 8
  %mul418 = mul nsw i32 %sub416, %384
  %385 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps419 = getelementptr inbounds %struct.Mat, %struct.Mat* %385, i32 0, i32 4
  %386 = load i32, i32* %mdeps419, align 4
  %mul420 = mul nsw i32 %mul418, %386
  %add421 = add nsw i32 %mul415, %mul420
  %387 = load i32, i32* %j, align 4
  %388 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps422 = getelementptr inbounds %struct.Mat, %struct.Mat* %388, i32 0, i32 4
  %389 = load i32, i32* %mdeps422, align 4
  %mul423 = mul nsw i32 %387, %389
  %add424 = add nsw i32 %add421, %mul423
  %390 = load i32, i32* %k, align 4
  %sub425 = sub nsw i32 %390, 1
  %add426 = add nsw i32 %add424, %sub425
  %idxprom427 = sext i32 %add426 to i64
  %arrayidx428 = getelementptr inbounds float, float* %375, i64 %idxprom427
  %391 = load float, float* %arrayidx428, align 4
  %add429 = fadd float %sub408, %391
  %mul430 = fmul float %319, %add429
  %add431 = fadd float %add328, %mul430
  %392 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %m432 = getelementptr inbounds %struct.Mat, %struct.Mat* %392, i32 0, i32 0
  %393 = load float*, float** %m432, align 8
  %394 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mrows433 = getelementptr inbounds %struct.Mat, %struct.Mat* %394, i32 0, i32 2
  %395 = load i32, i32* %mrows433, align 4
  %mul434 = mul nsw i32 0, %395
  %396 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mcols435 = getelementptr inbounds %struct.Mat, %struct.Mat* %396, i32 0, i32 3
  %397 = load i32, i32* %mcols435, align 8
  %mul436 = mul nsw i32 %mul434, %397
  %398 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps437 = getelementptr inbounds %struct.Mat, %struct.Mat* %398, i32 0, i32 4
  %399 = load i32, i32* %mdeps437, align 4
  %mul438 = mul nsw i32 %mul436, %399
  %400 = load i32, i32* %i, align 4
  %401 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mcols439 = getelementptr inbounds %struct.Mat, %struct.Mat* %401, i32 0, i32 3
  %402 = load i32, i32* %mcols439, align 8
  %mul440 = mul nsw i32 %400, %402
  %403 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps441 = getelementptr inbounds %struct.Mat, %struct.Mat* %403, i32 0, i32 4
  %404 = load i32, i32* %mdeps441, align 4
  %mul442 = mul nsw i32 %mul440, %404
  %add443 = add nsw i32 %mul438, %mul442
  %405 = load i32, i32* %j, align 4
  %406 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps444 = getelementptr inbounds %struct.Mat, %struct.Mat* %406, i32 0, i32 4
  %407 = load i32, i32* %mdeps444, align 4
  %mul445 = mul nsw i32 %405, %407
  %add446 = add nsw i32 %add443, %mul445
  %408 = load i32, i32* %k, align 4
  %add447 = add nsw i32 %add446, %408
  %idxprom448 = sext i32 %add447 to i64
  %arrayidx449 = getelementptr inbounds float, float* %393, i64 %idxprom448
  %409 = load float, float* %arrayidx449, align 4
  %410 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m450 = getelementptr inbounds %struct.Mat, %struct.Mat* %410, i32 0, i32 0
  %411 = load float*, float** %m450, align 8
  %412 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows451 = getelementptr inbounds %struct.Mat, %struct.Mat* %412, i32 0, i32 2
  %413 = load i32, i32* %mrows451, align 4
  %mul452 = mul nsw i32 0, %413
  %414 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols453 = getelementptr inbounds %struct.Mat, %struct.Mat* %414, i32 0, i32 3
  %415 = load i32, i32* %mcols453, align 8
  %mul454 = mul nsw i32 %mul452, %415
  %416 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps455 = getelementptr inbounds %struct.Mat, %struct.Mat* %416, i32 0, i32 4
  %417 = load i32, i32* %mdeps455, align 4
  %mul456 = mul nsw i32 %mul454, %417
  %418 = load i32, i32* %i, align 4
  %sub457 = sub nsw i32 %418, 1
  %419 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols458 = getelementptr inbounds %struct.Mat, %struct.Mat* %419, i32 0, i32 3
  %420 = load i32, i32* %mcols458, align 8
  %mul459 = mul nsw i32 %sub457, %420
  %421 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps460 = getelementptr inbounds %struct.Mat, %struct.Mat* %421, i32 0, i32 4
  %422 = load i32, i32* %mdeps460, align 4
  %mul461 = mul nsw i32 %mul459, %422
  %add462 = add nsw i32 %mul456, %mul461
  %423 = load i32, i32* %j, align 4
  %424 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps463 = getelementptr inbounds %struct.Mat, %struct.Mat* %424, i32 0, i32 4
  %425 = load i32, i32* %mdeps463, align 4
  %mul464 = mul nsw i32 %423, %425
  %add465 = add nsw i32 %add462, %mul464
  %426 = load i32, i32* %k, align 4
  %add466 = add nsw i32 %add465, %426
  %idxprom467 = sext i32 %add466 to i64
  %arrayidx468 = getelementptr inbounds float, float* %411, i64 %idxprom467
  %427 = load float, float* %arrayidx468, align 4
  %mul469 = fmul float %409, %427
  %add470 = fadd float %add431, %mul469
  %428 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %m471 = getelementptr inbounds %struct.Mat, %struct.Mat* %428, i32 0, i32 0
  %429 = load float*, float** %m471, align 8
  %430 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mrows472 = getelementptr inbounds %struct.Mat, %struct.Mat* %430, i32 0, i32 2
  %431 = load i32, i32* %mrows472, align 4
  %mul473 = mul nsw i32 1, %431
  %432 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mcols474 = getelementptr inbounds %struct.Mat, %struct.Mat* %432, i32 0, i32 3
  %433 = load i32, i32* %mcols474, align 8
  %mul475 = mul nsw i32 %mul473, %433
  %434 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps476 = getelementptr inbounds %struct.Mat, %struct.Mat* %434, i32 0, i32 4
  %435 = load i32, i32* %mdeps476, align 4
  %mul477 = mul nsw i32 %mul475, %435
  %436 = load i32, i32* %i, align 4
  %437 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mcols478 = getelementptr inbounds %struct.Mat, %struct.Mat* %437, i32 0, i32 3
  %438 = load i32, i32* %mcols478, align 8
  %mul479 = mul nsw i32 %436, %438
  %439 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps480 = getelementptr inbounds %struct.Mat, %struct.Mat* %439, i32 0, i32 4
  %440 = load i32, i32* %mdeps480, align 4
  %mul481 = mul nsw i32 %mul479, %440
  %add482 = add nsw i32 %mul477, %mul481
  %441 = load i32, i32* %j, align 4
  %442 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps483 = getelementptr inbounds %struct.Mat, %struct.Mat* %442, i32 0, i32 4
  %443 = load i32, i32* %mdeps483, align 4
  %mul484 = mul nsw i32 %441, %443
  %add485 = add nsw i32 %add482, %mul484
  %444 = load i32, i32* %k, align 4
  %add486 = add nsw i32 %add485, %444
  %idxprom487 = sext i32 %add486 to i64
  %arrayidx488 = getelementptr inbounds float, float* %429, i64 %idxprom487
  %445 = load float, float* %arrayidx488, align 4
  %446 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m489 = getelementptr inbounds %struct.Mat, %struct.Mat* %446, i32 0, i32 0
  %447 = load float*, float** %m489, align 8
  %448 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows490 = getelementptr inbounds %struct.Mat, %struct.Mat* %448, i32 0, i32 2
  %449 = load i32, i32* %mrows490, align 4
  %mul491 = mul nsw i32 0, %449
  %450 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols492 = getelementptr inbounds %struct.Mat, %struct.Mat* %450, i32 0, i32 3
  %451 = load i32, i32* %mcols492, align 8
  %mul493 = mul nsw i32 %mul491, %451
  %452 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps494 = getelementptr inbounds %struct.Mat, %struct.Mat* %452, i32 0, i32 4
  %453 = load i32, i32* %mdeps494, align 4
  %mul495 = mul nsw i32 %mul493, %453
  %454 = load i32, i32* %i, align 4
  %455 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols496 = getelementptr inbounds %struct.Mat, %struct.Mat* %455, i32 0, i32 3
  %456 = load i32, i32* %mcols496, align 8
  %mul497 = mul nsw i32 %454, %456
  %457 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps498 = getelementptr inbounds %struct.Mat, %struct.Mat* %457, i32 0, i32 4
  %458 = load i32, i32* %mdeps498, align 4
  %mul499 = mul nsw i32 %mul497, %458
  %add500 = add nsw i32 %mul495, %mul499
  %459 = load i32, i32* %j, align 4
  %sub501 = sub nsw i32 %459, 1
  %460 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps502 = getelementptr inbounds %struct.Mat, %struct.Mat* %460, i32 0, i32 4
  %461 = load i32, i32* %mdeps502, align 4
  %mul503 = mul nsw i32 %sub501, %461
  %add504 = add nsw i32 %add500, %mul503
  %462 = load i32, i32* %k, align 4
  %add505 = add nsw i32 %add504, %462
  %idxprom506 = sext i32 %add505 to i64
  %arrayidx507 = getelementptr inbounds float, float* %447, i64 %idxprom506
  %463 = load float, float* %arrayidx507, align 4
  %mul508 = fmul float %445, %463
  %add509 = fadd float %add470, %mul508
  %464 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %m510 = getelementptr inbounds %struct.Mat, %struct.Mat* %464, i32 0, i32 0
  %465 = load float*, float** %m510, align 8
  %466 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mrows511 = getelementptr inbounds %struct.Mat, %struct.Mat* %466, i32 0, i32 2
  %467 = load i32, i32* %mrows511, align 4
  %mul512 = mul nsw i32 2, %467
  %468 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mcols513 = getelementptr inbounds %struct.Mat, %struct.Mat* %468, i32 0, i32 3
  %469 = load i32, i32* %mcols513, align 8
  %mul514 = mul nsw i32 %mul512, %469
  %470 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps515 = getelementptr inbounds %struct.Mat, %struct.Mat* %470, i32 0, i32 4
  %471 = load i32, i32* %mdeps515, align 4
  %mul516 = mul nsw i32 %mul514, %471
  %472 = load i32, i32* %i, align 4
  %473 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mcols517 = getelementptr inbounds %struct.Mat, %struct.Mat* %473, i32 0, i32 3
  %474 = load i32, i32* %mcols517, align 8
  %mul518 = mul nsw i32 %472, %474
  %475 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps519 = getelementptr inbounds %struct.Mat, %struct.Mat* %475, i32 0, i32 4
  %476 = load i32, i32* %mdeps519, align 4
  %mul520 = mul nsw i32 %mul518, %476
  %add521 = add nsw i32 %mul516, %mul520
  %477 = load i32, i32* %j, align 4
  %478 = load %struct.Mat*, %struct.Mat** %c.addr, align 8
  %mdeps522 = getelementptr inbounds %struct.Mat, %struct.Mat* %478, i32 0, i32 4
  %479 = load i32, i32* %mdeps522, align 4
  %mul523 = mul nsw i32 %477, %479
  %add524 = add nsw i32 %add521, %mul523
  %480 = load i32, i32* %k, align 4
  %add525 = add nsw i32 %add524, %480
  %idxprom526 = sext i32 %add525 to i64
  %arrayidx527 = getelementptr inbounds float, float* %465, i64 %idxprom526
  %481 = load float, float* %arrayidx527, align 4
  %482 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m528 = getelementptr inbounds %struct.Mat, %struct.Mat* %482, i32 0, i32 0
  %483 = load float*, float** %m528, align 8
  %484 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows529 = getelementptr inbounds %struct.Mat, %struct.Mat* %484, i32 0, i32 2
  %485 = load i32, i32* %mrows529, align 4
  %mul530 = mul nsw i32 0, %485
  %486 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols531 = getelementptr inbounds %struct.Mat, %struct.Mat* %486, i32 0, i32 3
  %487 = load i32, i32* %mcols531, align 8
  %mul532 = mul nsw i32 %mul530, %487
  %488 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps533 = getelementptr inbounds %struct.Mat, %struct.Mat* %488, i32 0, i32 4
  %489 = load i32, i32* %mdeps533, align 4
  %mul534 = mul nsw i32 %mul532, %489
  %490 = load i32, i32* %i, align 4
  %491 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols535 = getelementptr inbounds %struct.Mat, %struct.Mat* %491, i32 0, i32 3
  %492 = load i32, i32* %mcols535, align 8
  %mul536 = mul nsw i32 %490, %492
  %493 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps537 = getelementptr inbounds %struct.Mat, %struct.Mat* %493, i32 0, i32 4
  %494 = load i32, i32* %mdeps537, align 4
  %mul538 = mul nsw i32 %mul536, %494
  %add539 = add nsw i32 %mul534, %mul538
  %495 = load i32, i32* %j, align 4
  %496 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps540 = getelementptr inbounds %struct.Mat, %struct.Mat* %496, i32 0, i32 4
  %497 = load i32, i32* %mdeps540, align 4
  %mul541 = mul nsw i32 %495, %497
  %add542 = add nsw i32 %add539, %mul541
  %498 = load i32, i32* %k, align 4
  %sub543 = sub nsw i32 %498, 1
  %add544 = add nsw i32 %add542, %sub543
  %idxprom545 = sext i32 %add544 to i64
  %arrayidx546 = getelementptr inbounds float, float* %483, i64 %idxprom545
  %499 = load float, float* %arrayidx546, align 4
  %mul547 = fmul float %481, %499
  %add548 = fadd float %add509, %mul547
  %500 = load %struct.Mat*, %struct.Mat** %wrk1.addr, align 8
  %m549 = getelementptr inbounds %struct.Mat, %struct.Mat* %500, i32 0, i32 0
  %501 = load float*, float** %m549, align 8
  %502 = load %struct.Mat*, %struct.Mat** %wrk1.addr, align 8
  %mrows550 = getelementptr inbounds %struct.Mat, %struct.Mat* %502, i32 0, i32 2
  %503 = load i32, i32* %mrows550, align 4
  %mul551 = mul nsw i32 0, %503
  %504 = load %struct.Mat*, %struct.Mat** %wrk1.addr, align 8
  %mcols552 = getelementptr inbounds %struct.Mat, %struct.Mat* %504, i32 0, i32 3
  %505 = load i32, i32* %mcols552, align 8
  %mul553 = mul nsw i32 %mul551, %505
  %506 = load %struct.Mat*, %struct.Mat** %wrk1.addr, align 8
  %mdeps554 = getelementptr inbounds %struct.Mat, %struct.Mat* %506, i32 0, i32 4
  %507 = load i32, i32* %mdeps554, align 4
  %mul555 = mul nsw i32 %mul553, %507
  %508 = load i32, i32* %i, align 4
  %509 = load %struct.Mat*, %struct.Mat** %wrk1.addr, align 8
  %mcols556 = getelementptr inbounds %struct.Mat, %struct.Mat* %509, i32 0, i32 3
  %510 = load i32, i32* %mcols556, align 8
  %mul557 = mul nsw i32 %508, %510
  %511 = load %struct.Mat*, %struct.Mat** %wrk1.addr, align 8
  %mdeps558 = getelementptr inbounds %struct.Mat, %struct.Mat* %511, i32 0, i32 4
  %512 = load i32, i32* %mdeps558, align 4
  %mul559 = mul nsw i32 %mul557, %512
  %add560 = add nsw i32 %mul555, %mul559
  %513 = load i32, i32* %j, align 4
  %514 = load %struct.Mat*, %struct.Mat** %wrk1.addr, align 8
  %mdeps561 = getelementptr inbounds %struct.Mat, %struct.Mat* %514, i32 0, i32 4
  %515 = load i32, i32* %mdeps561, align 4
  %mul562 = mul nsw i32 %513, %515
  %add563 = add nsw i32 %add560, %mul562
  %516 = load i32, i32* %k, align 4
  %add564 = add nsw i32 %add563, %516
  %idxprom565 = sext i32 %add564 to i64
  %arrayidx566 = getelementptr inbounds float, float* %501, i64 %idxprom565
  %517 = load float, float* %arrayidx566, align 4
  %add567 = fadd float %add548, %517
  store float %add567, float* %s0, align 4
  %518 = load float, float* %s0, align 4
  %519 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %m568 = getelementptr inbounds %struct.Mat, %struct.Mat* %519, i32 0, i32 0
  %520 = load float*, float** %m568, align 8
  %521 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mrows569 = getelementptr inbounds %struct.Mat, %struct.Mat* %521, i32 0, i32 2
  %522 = load i32, i32* %mrows569, align 4
  %mul570 = mul nsw i32 3, %522
  %523 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mcols571 = getelementptr inbounds %struct.Mat, %struct.Mat* %523, i32 0, i32 3
  %524 = load i32, i32* %mcols571, align 8
  %mul572 = mul nsw i32 %mul570, %524
  %525 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps573 = getelementptr inbounds %struct.Mat, %struct.Mat* %525, i32 0, i32 4
  %526 = load i32, i32* %mdeps573, align 4
  %mul574 = mul nsw i32 %mul572, %526
  %527 = load i32, i32* %i, align 4
  %528 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mcols575 = getelementptr inbounds %struct.Mat, %struct.Mat* %528, i32 0, i32 3
  %529 = load i32, i32* %mcols575, align 8
  %mul576 = mul nsw i32 %527, %529
  %530 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps577 = getelementptr inbounds %struct.Mat, %struct.Mat* %530, i32 0, i32 4
  %531 = load i32, i32* %mdeps577, align 4
  %mul578 = mul nsw i32 %mul576, %531
  %add579 = add nsw i32 %mul574, %mul578
  %532 = load i32, i32* %j, align 4
  %533 = load %struct.Mat*, %struct.Mat** %a.addr, align 8
  %mdeps580 = getelementptr inbounds %struct.Mat, %struct.Mat* %533, i32 0, i32 4
  %534 = load i32, i32* %mdeps580, align 4
  %mul581 = mul nsw i32 %532, %534
  %add582 = add nsw i32 %add579, %mul581
  %535 = load i32, i32* %k, align 4
  %add583 = add nsw i32 %add582, %535
  %idxprom584 = sext i32 %add583 to i64
  %arrayidx585 = getelementptr inbounds float, float* %520, i64 %idxprom584
  %536 = load float, float* %arrayidx585, align 4
  %mul586 = fmul float %518, %536
  %537 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m587 = getelementptr inbounds %struct.Mat, %struct.Mat* %537, i32 0, i32 0
  %538 = load float*, float** %m587, align 8
  %539 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows588 = getelementptr inbounds %struct.Mat, %struct.Mat* %539, i32 0, i32 2
  %540 = load i32, i32* %mrows588, align 4
  %mul589 = mul nsw i32 0, %540
  %541 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols590 = getelementptr inbounds %struct.Mat, %struct.Mat* %541, i32 0, i32 3
  %542 = load i32, i32* %mcols590, align 8
  %mul591 = mul nsw i32 %mul589, %542
  %543 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps592 = getelementptr inbounds %struct.Mat, %struct.Mat* %543, i32 0, i32 4
  %544 = load i32, i32* %mdeps592, align 4
  %mul593 = mul nsw i32 %mul591, %544
  %545 = load i32, i32* %i, align 4
  %546 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols594 = getelementptr inbounds %struct.Mat, %struct.Mat* %546, i32 0, i32 3
  %547 = load i32, i32* %mcols594, align 8
  %mul595 = mul nsw i32 %545, %547
  %548 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps596 = getelementptr inbounds %struct.Mat, %struct.Mat* %548, i32 0, i32 4
  %549 = load i32, i32* %mdeps596, align 4
  %mul597 = mul nsw i32 %mul595, %549
  %add598 = add nsw i32 %mul593, %mul597
  %550 = load i32, i32* %j, align 4
  %551 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps599 = getelementptr inbounds %struct.Mat, %struct.Mat* %551, i32 0, i32 4
  %552 = load i32, i32* %mdeps599, align 4
  %mul600 = mul nsw i32 %550, %552
  %add601 = add nsw i32 %add598, %mul600
  %553 = load i32, i32* %k, align 4
  %add602 = add nsw i32 %add601, %553
  %idxprom603 = sext i32 %add602 to i64
  %arrayidx604 = getelementptr inbounds float, float* %538, i64 %idxprom603
  %554 = load float, float* %arrayidx604, align 4
  %sub605 = fsub float %mul586, %554
  %555 = load %struct.Mat*, %struct.Mat** %bnd.addr, align 8
  %m606 = getelementptr inbounds %struct.Mat, %struct.Mat* %555, i32 0, i32 0
  %556 = load float*, float** %m606, align 8
  %557 = load %struct.Mat*, %struct.Mat** %bnd.addr, align 8
  %mrows607 = getelementptr inbounds %struct.Mat, %struct.Mat* %557, i32 0, i32 2
  %558 = load i32, i32* %mrows607, align 4
  %mul608 = mul nsw i32 0, %558
  %559 = load %struct.Mat*, %struct.Mat** %bnd.addr, align 8
  %mcols609 = getelementptr inbounds %struct.Mat, %struct.Mat* %559, i32 0, i32 3
  %560 = load i32, i32* %mcols609, align 8
  %mul610 = mul nsw i32 %mul608, %560
  %561 = load %struct.Mat*, %struct.Mat** %bnd.addr, align 8
  %mdeps611 = getelementptr inbounds %struct.Mat, %struct.Mat* %561, i32 0, i32 4
  %562 = load i32, i32* %mdeps611, align 4
  %mul612 = mul nsw i32 %mul610, %562
  %563 = load i32, i32* %i, align 4
  %564 = load %struct.Mat*, %struct.Mat** %bnd.addr, align 8
  %mcols613 = getelementptr inbounds %struct.Mat, %struct.Mat* %564, i32 0, i32 3
  %565 = load i32, i32* %mcols613, align 8
  %mul614 = mul nsw i32 %563, %565
  %566 = load %struct.Mat*, %struct.Mat** %bnd.addr, align 8
  %mdeps615 = getelementptr inbounds %struct.Mat, %struct.Mat* %566, i32 0, i32 4
  %567 = load i32, i32* %mdeps615, align 4
  %mul616 = mul nsw i32 %mul614, %567
  %add617 = add nsw i32 %mul612, %mul616
  %568 = load i32, i32* %j, align 4
  %569 = load %struct.Mat*, %struct.Mat** %bnd.addr, align 8
  %mdeps618 = getelementptr inbounds %struct.Mat, %struct.Mat* %569, i32 0, i32 4
  %570 = load i32, i32* %mdeps618, align 4
  %mul619 = mul nsw i32 %568, %570
  %add620 = add nsw i32 %add617, %mul619
  %571 = load i32, i32* %k, align 4
  %add621 = add nsw i32 %add620, %571
  %idxprom622 = sext i32 %add621 to i64
  %arrayidx623 = getelementptr inbounds float, float* %556, i64 %idxprom622
  %572 = load float, float* %arrayidx623, align 4
  %mul624 = fmul float %sub605, %572
  store float %mul624, float* %ss, align 4
  %573 = load float, float* %ss, align 4
  %574 = load float, float* %ss, align 4
  %mul625 = fmul float %573, %574
  %575 = load float, float* %gosa, align 4
  %add626 = fadd float %575, %mul625
  store float %add626, float* %gosa, align 4
  %576 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m627 = getelementptr inbounds %struct.Mat, %struct.Mat* %576, i32 0, i32 0
  %577 = load float*, float** %m627, align 8
  %578 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows628 = getelementptr inbounds %struct.Mat, %struct.Mat* %578, i32 0, i32 2
  %579 = load i32, i32* %mrows628, align 4
  %mul629 = mul nsw i32 0, %579
  %580 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols630 = getelementptr inbounds %struct.Mat, %struct.Mat* %580, i32 0, i32 3
  %581 = load i32, i32* %mcols630, align 8
  %mul631 = mul nsw i32 %mul629, %581
  %582 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps632 = getelementptr inbounds %struct.Mat, %struct.Mat* %582, i32 0, i32 4
  %583 = load i32, i32* %mdeps632, align 4
  %mul633 = mul nsw i32 %mul631, %583
  %584 = load i32, i32* %i, align 4
  %585 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols634 = getelementptr inbounds %struct.Mat, %struct.Mat* %585, i32 0, i32 3
  %586 = load i32, i32* %mcols634, align 8
  %mul635 = mul nsw i32 %584, %586
  %587 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps636 = getelementptr inbounds %struct.Mat, %struct.Mat* %587, i32 0, i32 4
  %588 = load i32, i32* %mdeps636, align 4
  %mul637 = mul nsw i32 %mul635, %588
  %add638 = add nsw i32 %mul633, %mul637
  %589 = load i32, i32* %j, align 4
  %590 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps639 = getelementptr inbounds %struct.Mat, %struct.Mat* %590, i32 0, i32 4
  %591 = load i32, i32* %mdeps639, align 4
  %mul640 = mul nsw i32 %589, %591
  %add641 = add nsw i32 %add638, %mul640
  %592 = load i32, i32* %k, align 4
  %add642 = add nsw i32 %add641, %592
  %idxprom643 = sext i32 %add642 to i64
  %arrayidx644 = getelementptr inbounds float, float* %577, i64 %idxprom643
  %593 = load float, float* %arrayidx644, align 4
  %594 = load float, float* @omega, align 4
  %595 = load float, float* %ss, align 4
  %mul645 = fmul float %594, %595
  %add646 = fadd float %593, %mul645
  %596 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %m647 = getelementptr inbounds %struct.Mat, %struct.Mat* %596, i32 0, i32 0
  %597 = load float*, float** %m647, align 8
  %598 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mrows648 = getelementptr inbounds %struct.Mat, %struct.Mat* %598, i32 0, i32 2
  %599 = load i32, i32* %mrows648, align 4
  %mul649 = mul nsw i32 0, %599
  %600 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mcols650 = getelementptr inbounds %struct.Mat, %struct.Mat* %600, i32 0, i32 3
  %601 = load i32, i32* %mcols650, align 8
  %mul651 = mul nsw i32 %mul649, %601
  %602 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mdeps652 = getelementptr inbounds %struct.Mat, %struct.Mat* %602, i32 0, i32 4
  %603 = load i32, i32* %mdeps652, align 4
  %mul653 = mul nsw i32 %mul651, %603
  %604 = load i32, i32* %i, align 4
  %605 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mcols654 = getelementptr inbounds %struct.Mat, %struct.Mat* %605, i32 0, i32 3
  %606 = load i32, i32* %mcols654, align 8
  %mul655 = mul nsw i32 %604, %606
  %607 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mdeps656 = getelementptr inbounds %struct.Mat, %struct.Mat* %607, i32 0, i32 4
  %608 = load i32, i32* %mdeps656, align 4
  %mul657 = mul nsw i32 %mul655, %608
  %add658 = add nsw i32 %mul653, %mul657
  %609 = load i32, i32* %j, align 4
  %610 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mdeps659 = getelementptr inbounds %struct.Mat, %struct.Mat* %610, i32 0, i32 4
  %611 = load i32, i32* %mdeps659, align 4
  %mul660 = mul nsw i32 %609, %611
  %add661 = add nsw i32 %add658, %mul660
  %612 = load i32, i32* %k, align 4
  %add662 = add nsw i32 %add661, %612
  %idxprom663 = sext i32 %add662 to i64
  %arrayidx664 = getelementptr inbounds float, float* %597, i64 %idxprom663
  store float %add646, float* %arrayidx664, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %613 = load i32, i32* %k, align 4
  %inc = add nsw i32 %613, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond9

for.end:                                          ; preds = %for.cond9
  br label %for.inc665

for.inc665:                                       ; preds = %for.end
  %614 = load i32, i32* %j, align 4
  %inc666 = add nsw i32 %614, 1
  store i32 %inc666, i32* %j, align 4
  br label %for.cond6

for.end667:                                       ; preds = %for.cond6
  br label %for.inc668

for.inc668:                                       ; preds = %for.end667
  %615 = load i32, i32* %i, align 4
  %inc669 = add nsw i32 %615, 1
  store i32 %inc669, i32* %i, align 4
  br label %for.cond3

for.end670:                                       ; preds = %for.cond3
  store i32 1, i32* %i, align 4
  br label %for.cond671

for.cond671:                                      ; preds = %for.inc722, %for.end670
  %616 = load i32, i32* %i, align 4
  %617 = load i32, i32* %imax, align 4
  %cmp672 = icmp slt i32 %616, %617
  br i1 %cmp672, label %for.body673, label %for.end724

for.body673:                                      ; preds = %for.cond671
  store i32 1, i32* %j, align 4
  br label %for.cond674

for.cond674:                                      ; preds = %for.inc719, %for.body673
  %618 = load i32, i32* %j, align 4
  %619 = load i32, i32* %jmax, align 4
  %cmp675 = icmp slt i32 %618, %619
  br i1 %cmp675, label %for.body676, label %for.end721

for.body676:                                      ; preds = %for.cond674
  store i32 1, i32* %k, align 4
  br label %for.cond677

for.cond677:                                      ; preds = %for.inc716, %for.body676
  %620 = load i32, i32* %k, align 4
  %621 = load i32, i32* %kmax, align 4
  %cmp678 = icmp slt i32 %620, %621
  br i1 %cmp678, label %for.body679, label %for.end718

for.body679:                                      ; preds = %for.cond677
  %622 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %m680 = getelementptr inbounds %struct.Mat, %struct.Mat* %622, i32 0, i32 0
  %623 = load float*, float** %m680, align 8
  %624 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mrows681 = getelementptr inbounds %struct.Mat, %struct.Mat* %624, i32 0, i32 2
  %625 = load i32, i32* %mrows681, align 4
  %mul682 = mul nsw i32 0, %625
  %626 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mcols683 = getelementptr inbounds %struct.Mat, %struct.Mat* %626, i32 0, i32 3
  %627 = load i32, i32* %mcols683, align 8
  %mul684 = mul nsw i32 %mul682, %627
  %628 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mdeps685 = getelementptr inbounds %struct.Mat, %struct.Mat* %628, i32 0, i32 4
  %629 = load i32, i32* %mdeps685, align 4
  %mul686 = mul nsw i32 %mul684, %629
  %630 = load i32, i32* %i, align 4
  %631 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mcols687 = getelementptr inbounds %struct.Mat, %struct.Mat* %631, i32 0, i32 3
  %632 = load i32, i32* %mcols687, align 8
  %mul688 = mul nsw i32 %630, %632
  %633 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mdeps689 = getelementptr inbounds %struct.Mat, %struct.Mat* %633, i32 0, i32 4
  %634 = load i32, i32* %mdeps689, align 4
  %mul690 = mul nsw i32 %mul688, %634
  %add691 = add nsw i32 %mul686, %mul690
  %635 = load i32, i32* %j, align 4
  %636 = load %struct.Mat*, %struct.Mat** %wrk2.addr, align 8
  %mdeps692 = getelementptr inbounds %struct.Mat, %struct.Mat* %636, i32 0, i32 4
  %637 = load i32, i32* %mdeps692, align 4
  %mul693 = mul nsw i32 %635, %637
  %add694 = add nsw i32 %add691, %mul693
  %638 = load i32, i32* %k, align 4
  %add695 = add nsw i32 %add694, %638
  %idxprom696 = sext i32 %add695 to i64
  %arrayidx697 = getelementptr inbounds float, float* %623, i64 %idxprom696
  %639 = load float, float* %arrayidx697, align 4
  %640 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %m698 = getelementptr inbounds %struct.Mat, %struct.Mat* %640, i32 0, i32 0
  %641 = load float*, float** %m698, align 8
  %642 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mrows699 = getelementptr inbounds %struct.Mat, %struct.Mat* %642, i32 0, i32 2
  %643 = load i32, i32* %mrows699, align 4
  %mul700 = mul nsw i32 0, %643
  %644 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols701 = getelementptr inbounds %struct.Mat, %struct.Mat* %644, i32 0, i32 3
  %645 = load i32, i32* %mcols701, align 8
  %mul702 = mul nsw i32 %mul700, %645
  %646 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps703 = getelementptr inbounds %struct.Mat, %struct.Mat* %646, i32 0, i32 4
  %647 = load i32, i32* %mdeps703, align 4
  %mul704 = mul nsw i32 %mul702, %647
  %648 = load i32, i32* %i, align 4
  %649 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mcols705 = getelementptr inbounds %struct.Mat, %struct.Mat* %649, i32 0, i32 3
  %650 = load i32, i32* %mcols705, align 8
  %mul706 = mul nsw i32 %648, %650
  %651 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps707 = getelementptr inbounds %struct.Mat, %struct.Mat* %651, i32 0, i32 4
  %652 = load i32, i32* %mdeps707, align 4
  %mul708 = mul nsw i32 %mul706, %652
  %add709 = add nsw i32 %mul704, %mul708
  %653 = load i32, i32* %j, align 4
  %654 = load %struct.Mat*, %struct.Mat** %p.addr, align 8
  %mdeps710 = getelementptr inbounds %struct.Mat, %struct.Mat* %654, i32 0, i32 4
  %655 = load i32, i32* %mdeps710, align 4
  %mul711 = mul nsw i32 %653, %655
  %add712 = add nsw i32 %add709, %mul711
  %656 = load i32, i32* %k, align 4
  %add713 = add nsw i32 %add712, %656
  %idxprom714 = sext i32 %add713 to i64
  %arrayidx715 = getelementptr inbounds float, float* %641, i64 %idxprom714
  store float %639, float* %arrayidx715, align 4
  br label %for.inc716

for.inc716:                                       ; preds = %for.body679
  %657 = load i32, i32* %k, align 4
  %inc717 = add nsw i32 %657, 1
  store i32 %inc717, i32* %k, align 4
  br label %for.cond677

for.end718:                                       ; preds = %for.cond677
  br label %for.inc719

for.inc719:                                       ; preds = %for.end718
  %658 = load i32, i32* %j, align 4
  %inc720 = add nsw i32 %658, 1
  store i32 %inc720, i32* %j, align 4
  br label %for.cond674

for.end721:                                       ; preds = %for.cond674
  br label %for.inc722

for.inc722:                                       ; preds = %for.end721
  %659 = load i32, i32* %i, align 4
  %inc723 = add nsw i32 %659, 1
  store i32 %inc723, i32* %i, align 4
  br label %for.cond671

for.end724:                                       ; preds = %for.cond671
  br label %for.inc725

for.inc725:                                       ; preds = %for.end724
  %660 = load i32, i32* %n, align 4
  %inc726 = add nsw i32 %660, 1
  store i32 %inc726, i32* %n, align 4
  br label %for.cond

for.end727:                                       ; preds = %for.cond
  %661 = load float, float* %gosa, align 4
  ret float %661
}

; Function Attrs: noinline nounwind uwtable
define void @clearMat(%struct.Mat* %Mat) #0 {
entry:
  %Mat.addr = alloca %struct.Mat*, align 8
  store %struct.Mat* %Mat, %struct.Mat** %Mat.addr, align 8
  %0 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %m = getelementptr inbounds %struct.Mat, %struct.Mat* %0, i32 0, i32 0
  %1 = load float*, float** %m, align 8
  %tobool = icmp ne float* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %m1 = getelementptr inbounds %struct.Mat, %struct.Mat* %2, i32 0, i32 0
  %3 = load float*, float** %m1, align 8
  %4 = bitcast float* %3 to i8*
  call void @free(i8* %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %m2 = getelementptr inbounds %struct.Mat, %struct.Mat* %5, i32 0, i32 0
  store float* null, float** %m2, align 8
  %6 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mnums = getelementptr inbounds %struct.Mat, %struct.Mat* %6, i32 0, i32 1
  store i32 0, i32* %mnums, align 8
  %7 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mcols = getelementptr inbounds %struct.Mat, %struct.Mat* %7, i32 0, i32 3
  store i32 0, i32* %mcols, align 8
  %8 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mrows = getelementptr inbounds %struct.Mat, %struct.Mat* %8, i32 0, i32 2
  store i32 0, i32* %mrows, align 4
  %9 = load %struct.Mat*, %struct.Mat** %Mat.addr, align 8
  %mdeps = getelementptr inbounds %struct.Mat, %struct.Mat* %9, i32 0, i32 4
  store i32 0, i32* %mdeps, align 4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define double @fflop(i32 %mx, i32 %my, i32 %mz) #0 {
entry:
  %mx.addr = alloca i32, align 4
  %my.addr = alloca i32, align 4
  %mz.addr = alloca i32, align 4
  store i32 %mx, i32* %mx.addr, align 4
  store i32 %my, i32* %my.addr, align 4
  store i32 %mz, i32* %mz.addr, align 4
  %0 = load i32, i32* %mz.addr, align 4
  %sub = sub nsw i32 %0, 2
  %conv = sitofp i32 %sub to double
  %1 = load i32, i32* %my.addr, align 4
  %sub1 = sub nsw i32 %1, 2
  %conv2 = sitofp i32 %sub1 to double
  %mul = fmul double %conv, %conv2
  %2 = load i32, i32* %mx.addr, align 4
  %sub3 = sub nsw i32 %2, 2
  %conv4 = sitofp i32 %sub3 to double
  %mul5 = fmul double %mul, %conv4
  %mul6 = fmul double %mul5, 3.400000e+01
  ret double %mul6
}

; Function Attrs: noinline nounwind uwtable
define double @mflops(i32 %nn, double %cpu, double %flop) #0 {
entry:
  %nn.addr = alloca i32, align 4
  %cpu.addr = alloca double, align 8
  %flop.addr = alloca double, align 8
  store i32 %nn, i32* %nn.addr, align 4
  store double %cpu, double* %cpu.addr, align 8
  store double %flop, double* %flop.addr, align 8
  %0 = load double, double* %flop.addr, align 8
  %1 = load double, double* %cpu.addr, align 8
  %div = fdiv double %0, %1
  %mul = fmul double %div, 1.000000e-06
  %2 = load i32, i32* %nn.addr, align 4
  %conv = sitofp i32 %2 to double
  %mul1 = fmul double %mul, %conv
  ret double %mul1
}

; Function Attrs: noinline nounwind uwtable
define void @set_param(i32* %is, i8* %size) #0 {
entry:
  %is.addr = alloca i32*, align 8
  %size.addr = alloca i8*, align 8
  store i32* %is, i32** %is.addr, align 8
  store i8* %size, i8** %size.addr, align 8
  %0 = load i8*, i8** %size.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %size.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #6
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32*, i32** %is.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  store i32 32, i32* %arrayidx, align 4
  %3 = load i32*, i32** %is.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %3, i64 1
  store i32 32, i32* %arrayidx3, align 4
  %4 = load i32*, i32** %is.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 64, i32* %arrayidx4, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i8*, i8** %size.addr, align 8
  %call5 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)) #6
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %lor.lhs.false7, label %if.then10

lor.lhs.false7:                                   ; preds = %if.end
  %6 = load i8*, i8** %size.addr, align 8
  %call8 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #6
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end14, label %if.then10

if.then10:                                        ; preds = %lor.lhs.false7, %if.end
  %7 = load i32*, i32** %is.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 64, i32* %arrayidx11, align 4
  %8 = load i32*, i32** %is.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 64, i32* %arrayidx12, align 4
  %9 = load i32*, i32** %is.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %9, i64 2
  store i32 128, i32* %arrayidx13, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false7
  %10 = load i8*, i8** %size.addr, align 8
  %call15 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #6
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %lor.lhs.false17, label %if.then20

lor.lhs.false17:                                  ; preds = %if.end14
  %11 = load i8*, i8** %size.addr, align 8
  %call18 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #6
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end24, label %if.then20

if.then20:                                        ; preds = %lor.lhs.false17, %if.end14
  %12 = load i32*, i32** %is.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 128, i32* %arrayidx21, align 4
  %13 = load i32*, i32** %is.addr, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 128, i32* %arrayidx22, align 4
  %14 = load i32*, i32** %is.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %14, i64 2
  store i32 256, i32* %arrayidx23, align 4
  br label %return

if.end24:                                         ; preds = %lor.lhs.false17
  %15 = load i8*, i8** %size.addr, align 8
  %call25 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #6
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %lor.lhs.false27, label %if.then30

lor.lhs.false27:                                  ; preds = %if.end24
  %16 = load i8*, i8** %size.addr, align 8
  %call28 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #6
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end34, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false27, %if.end24
  %17 = load i32*, i32** %is.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 256, i32* %arrayidx31, align 4
  %18 = load i32*, i32** %is.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 256, i32* %arrayidx32, align 4
  %19 = load i32*, i32** %is.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 512, i32* %arrayidx33, align 4
  br label %return

if.end34:                                         ; preds = %lor.lhs.false27
  %20 = load i8*, i8** %size.addr, align 8
  %call35 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0)) #6
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %lor.lhs.false37, label %if.then40

lor.lhs.false37:                                  ; preds = %if.end34
  %21 = load i8*, i8** %size.addr, align 8
  %call38 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0)) #6
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.else, label %if.then40

if.then40:                                        ; preds = %lor.lhs.false37, %if.end34
  %22 = load i32*, i32** %is.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 512, i32* %arrayidx41, align 4
  %23 = load i32*, i32** %is.addr, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 512, i32* %arrayidx42, align 4
  %24 = load i32*, i32** %is.addr, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 1024, i32* %arrayidx43, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false37
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0))
  call void @exit(i32 6) #7
  unreachable

return:                                           ; preds = %if.then40, %if.then30, %if.then20, %if.then10, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define double @second() #0 {
entry:
  %tm = alloca %struct.timeval, align 8
  %t = alloca double, align 8
  %call = call i32 @gettimeofday(%struct.timeval* %tm, %struct.timezone* null) #5
  %0 = load i32, i32* @second.base_sec, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @second.base_usec, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tm, i32 0, i32 0
  %2 = load i64, i64* %tv_sec, align 8
  %conv = trunc i64 %2 to i32
  store i32 %conv, i32* @second.base_sec, align 4
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tm, i32 0, i32 1
  %3 = load i64, i64* %tv_usec, align 8
  %conv2 = trunc i64 %3 to i32
  store i32 %conv2, i32* @second.base_usec, align 4
  store double 0.000000e+00, double* %t, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %tv_sec3 = getelementptr inbounds %struct.timeval, %struct.timeval* %tm, i32 0, i32 0
  %4 = load i64, i64* %tv_sec3, align 8
  %5 = load i32, i32* @second.base_sec, align 4
  %conv4 = sext i32 %5 to i64
  %sub = sub nsw i64 %4, %conv4
  %conv5 = sitofp i64 %sub to double
  %tv_usec6 = getelementptr inbounds %struct.timeval, %struct.timeval* %tm, i32 0, i32 1
  %6 = load i64, i64* %tv_usec6, align 8
  %7 = load i32, i32* @second.base_usec, align 4
  %conv7 = sext i32 %7 to i64
  %sub8 = sub nsw i64 %6, %conv7
  %conv9 = sitofp i64 %sub8 to double
  %div = fdiv double %conv9, 1.000000e+06
  %add = fadd double %conv5, %div
  store double %add, double* %t, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load double, double* %t, align 8
  ret double %8
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
