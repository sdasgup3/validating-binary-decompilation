; ModuleID = 'exptree/exptree.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Comb = type { i32, i32, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [29 x i8] c"Out of memory for work list\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Out of memory for combination list\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" d%d \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%d=%d\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@stopSearch = internal global i32 0, align 4
@nbNodes = internal global i32 0, align 4
@dmax = internal global i32 0, align 4
@workList = internal global i32* null, align 8
@listLength = internal global i32 0, align 4
@goal = internal global i32 0, align 4
@best = internal global i32 0, align 4
@bestDepth = internal global i32 0, align 4
@solution = internal global %struct.Comb* null, align 8
@combList = internal global %struct.Comb* null, align 8
@stdin = external global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define i32* @newWorkList(i32 %length) #0 {
entry:
  %length.addr = alloca i32, align 4
  %newList = alloca i32*, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i32, i32* %length.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 4) #5
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %newList, align 8
  %2 = load i32*, i32** %newList, align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %newList, align 8
  ret i32* %3

if.else:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: noinline nounwind uwtable
define %struct.Comb* @newCombList(i32 %length) #0 {
entry:
  %length.addr = alloca i32, align 4
  %newList = alloca %struct.Comb*, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i32, i32* %length.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 12) #5
  %1 = bitcast i8* %call to %struct.Comb*
  store %struct.Comb* %1, %struct.Comb** %newList, align 8
  %2 = load %struct.Comb*, %struct.Comb** %newList, align 8
  %tobool = icmp ne %struct.Comb* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.Comb*, %struct.Comb** %newList, align 8
  ret %struct.Comb* %3

if.else:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define void @initWorkList(i32* %workList, i32* %givenList, i32 %length) #0 {
entry:
  %workList.addr = alloca i32*, align 8
  %givenList.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %workList, i32** %workList.addr, align 8
  store i32* %givenList, i32** %givenList.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %givenList.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32*, i32** %workList.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  store i32 %4, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @initCombList(%struct.Comb* %combList, i32 %length) #0 {
entry:
  %combList.addr = alloca %struct.Comb*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.Comb* %combList, %struct.Comb** %combList.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Comb*, %struct.Comb** %combList.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.Comb, %struct.Comb* %2, i64 %idxprom
  %operation = getelementptr inbounds %struct.Comb, %struct.Comb* %arrayidx, i32 0, i32 2
  store i32 0, i32* %operation, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @saveSolution(%struct.Comb* %sol, %struct.Comb* %combList, i32 %length) #0 {
entry:
  %sol.addr = alloca %struct.Comb*, align 8
  %combList.addr = alloca %struct.Comb*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.Comb* %sol, %struct.Comb** %sol.addr, align 8
  store %struct.Comb* %combList, %struct.Comb** %combList.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Comb*, %struct.Comb** %combList.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.Comb, %struct.Comb* %2, i64 %idxprom
  %operand1 = getelementptr inbounds %struct.Comb, %struct.Comb* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %operand1, align 4
  %5 = load %struct.Comb*, %struct.Comb** %sol.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds %struct.Comb, %struct.Comb* %5, i64 %idxprom1
  %operand13 = getelementptr inbounds %struct.Comb, %struct.Comb* %arrayidx2, i32 0, i32 0
  store i32 %4, i32* %operand13, align 4
  %7 = load %struct.Comb*, %struct.Comb** %combList.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds %struct.Comb, %struct.Comb* %7, i64 %idxprom4
  %operand2 = getelementptr inbounds %struct.Comb, %struct.Comb* %arrayidx5, i32 0, i32 1
  %9 = load i32, i32* %operand2, align 4
  %10 = load %struct.Comb*, %struct.Comb** %sol.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds %struct.Comb, %struct.Comb* %10, i64 %idxprom6
  %operand28 = getelementptr inbounds %struct.Comb, %struct.Comb* %arrayidx7, i32 0, i32 1
  store i32 %9, i32* %operand28, align 4
  %12 = load %struct.Comb*, %struct.Comb** %combList.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds %struct.Comb, %struct.Comb* %12, i64 %idxprom9
  %operation = getelementptr inbounds %struct.Comb, %struct.Comb* %arrayidx10, i32 0, i32 2
  %14 = load i32, i32* %operation, align 4
  %15 = load %struct.Comb*, %struct.Comb** %sol.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds %struct.Comb, %struct.Comb* %15, i64 %idxprom11
  %operation13 = getelementptr inbounds %struct.Comb, %struct.Comb* %arrayidx12, i32 0, i32 2
  store i32 %14, i32* %operation13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.Comb*, %struct.Comb** %sol.addr, align 8
  %19 = load i32, i32* %length.addr, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds %struct.Comb, %struct.Comb* %18, i64 %idxprom14
  %operation16 = getelementptr inbounds %struct.Comb, %struct.Comb* %arrayidx15, i32 0, i32 2
  store i32 0, i32* %operation16, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @calculate(%struct.Comb* %comb) #0 {
entry:
  %retval = alloca i32, align 4
  %comb.addr = alloca %struct.Comb*, align 8
  store %struct.Comb* %comb, %struct.Comb** %comb.addr, align 8
  %0 = load %struct.Comb*, %struct.Comb** %comb.addr, align 8
  %operation = getelementptr inbounds %struct.Comb, %struct.Comb* %0, i32 0, i32 2
  %1 = load i32, i32* %operation, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb4
    i32 4, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.Comb*, %struct.Comb** %comb.addr, align 8
  %operand1 = getelementptr inbounds %struct.Comb, %struct.Comb* %2, i32 0, i32 0
  %3 = load i32, i32* %operand1, align 4
  %4 = load %struct.Comb*, %struct.Comb** %comb.addr, align 8
  %operand2 = getelementptr inbounds %struct.Comb, %struct.Comb* %4, i32 0, i32 1
  %5 = load i32, i32* %operand2, align 4
  %add = add nsw i32 %3, %5
  store i32 %add, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %6 = load %struct.Comb*, %struct.Comb** %comb.addr, align 8
  %operand12 = getelementptr inbounds %struct.Comb, %struct.Comb* %6, i32 0, i32 0
  %7 = load i32, i32* %operand12, align 4
  %8 = load %struct.Comb*, %struct.Comb** %comb.addr, align 8
  %operand23 = getelementptr inbounds %struct.Comb, %struct.Comb* %8, i32 0, i32 1
  %9 = load i32, i32* %operand23, align 4
  %sub = sub nsw i32 %7, %9
  store i32 %sub, i32* %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  %10 = load %struct.Comb*, %struct.Comb** %comb.addr, align 8
  %operand15 = getelementptr inbounds %struct.Comb, %struct.Comb* %10, i32 0, i32 0
  %11 = load i32, i32* %operand15, align 4
  %12 = load %struct.Comb*, %struct.Comb** %comb.addr, align 8
  %operand26 = getelementptr inbounds %struct.Comb, %struct.Comb* %12, i32 0, i32 1
  %13 = load i32, i32* %operand26, align 4
  %mul = mul nsw i32 %11, %13
  store i32 %mul, i32* %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  %14 = load %struct.Comb*, %struct.Comb** %comb.addr, align 8
  %operand18 = getelementptr inbounds %struct.Comb, %struct.Comb* %14, i32 0, i32 0
  %15 = load i32, i32* %operand18, align 4
  %16 = load %struct.Comb*, %struct.Comb** %comb.addr, align 8
  %operand29 = getelementptr inbounds %struct.Comb, %struct.Comb* %16, i32 0, i32 1
  %17 = load i32, i32* %operand29, align 4
  %div = sdiv i32 %15, %17
  store i32 %div, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define void @printSolution(%struct.Comb* %combList, i32 %length) #0 {
entry:
  %combList.addr = alloca %struct.Comb*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.Comb* %combList, %struct.Comb** %combList.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Comb*, %struct.Comb** %combList.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.Comb, %struct.Comb* %2, i64 %idxprom
  %operand1 = getelementptr inbounds %struct.Comb, %struct.Comb* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %operand1, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %4)
  %5 = load %struct.Comb*, %struct.Comb** %combList.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds %struct.Comb, %struct.Comb* %5, i64 %idxprom1
  %operation = getelementptr inbounds %struct.Comb, %struct.Comb* %arrayidx2, i32 0, i32 2
  %7 = load i32, i32* %operation, align 4
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb6
    i32 3, label %sw.bb8
    i32 4, label %sw.bb10
  ]

sw.bb:                                            ; preds = %for.body
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %sw.epilog

sw.bb4:                                           ; preds = %for.body
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.body
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.body
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %8 = load %struct.Comb*, %struct.Comb** %combList.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds %struct.Comb, %struct.Comb* %8, i64 %idxprom12
  %operation14 = getelementptr inbounds %struct.Comb, %struct.Comb* %arrayidx13, i32 0, i32 2
  %10 = load i32, i32* %operation14, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %10)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb
  %11 = load %struct.Comb*, %struct.Comb** %combList.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds %struct.Comb, %struct.Comb* %11, i64 %idxprom16
  %operand2 = getelementptr inbounds %struct.Comb, %struct.Comb* %arrayidx17, i32 0, i32 1
  %13 = load i32, i32* %operand2, align 4
  %14 = load %struct.Comb*, %struct.Comb** %combList.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds %struct.Comb, %struct.Comb* %14, i64 %idxprom18
  %call20 = call i32 @calculate(%struct.Comb* %arrayidx19)
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %13, i32 %call20)
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %length.addr, align 4
  %sub = sub nsw i32 %17, 1
  %cmp22 = icmp slt i32 %16, %sub
  br i1 %cmp22, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define void @printList(i32* %list, i32 %length, i32 %mask) #0 {
entry:
  %list.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %list, i32** %list.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 %mask, i32* %mask.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %shl = shl i32 1, %2
  %3 = load i32, i32* %mask.addr, align 4
  %and = and i32 %shl, %3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = load i32*, i32** %list.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @recSearch(i32 %searchDepth, i32 %usedMask) #0 {
entry:
  %searchDepth.addr = alloca i32, align 4
  %usedMask.addr = alloca i32, align 4
  %currOp = alloca i32, align 4
  %newMask = alloca i32, align 4
  %operand1 = alloca i32, align 4
  %operand2 = alloca i32, align 4
  %working1 = alloca i32, align 4
  %working2 = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %searchDepth, i32* %searchDepth.addr, align 4
  store i32 %usedMask, i32* %usedMask.addr, align 4
  %0 = load i32, i32* @stopSearch, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end84

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @nbNodes, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @nbNodes, align 4
  %2 = load i32, i32* %searchDepth.addr, align 4
  %3 = load i32, i32* @dmax, align 4
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = load i32*, i32** @workList, align 8
  %5 = load i32, i32* @listLength, align 4
  %6 = load i32, i32* %searchDepth.addr, align 4
  %add = add nsw i32 %5, %6
  %sub = sub nsw i32 %add, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32, i32* @goal, align 4
  %sub2 = sub nsw i32 %7, %8
  %call = call i32 @abs(i32 %sub2) #7
  %9 = load i32, i32* @best, align 4
  %10 = load i32, i32* @goal, align 4
  %sub3 = sub nsw i32 %9, %10
  %call4 = call i32 @abs(i32 %sub3) #7
  %cmp5 = icmp slt i32 %call, %call4
  br i1 %cmp5, label %if.then6, label %if.end14

if.then6:                                         ; preds = %if.then1
  %11 = load i32*, i32** @workList, align 8
  %12 = load i32, i32* @listLength, align 4
  %13 = load i32, i32* %searchDepth.addr, align 4
  %add7 = add nsw i32 %12, %13
  %sub8 = sub nsw i32 %add7, 1
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %11, i64 %idxprom9
  %14 = load i32, i32* %arrayidx10, align 4
  store i32 %14, i32* @best, align 4
  %15 = load i32, i32* %searchDepth.addr, align 4
  store i32 %15, i32* @bestDepth, align 4
  %16 = load %struct.Comb*, %struct.Comb** @solution, align 8
  %17 = load %struct.Comb*, %struct.Comb** @combList, align 8
  %18 = load i32, i32* %searchDepth.addr, align 4
  call void @saveSolution(%struct.Comb* %16, %struct.Comb* %17, i32 %18)
  %19 = load i32, i32* @best, align 4
  %20 = load i32, i32* @goal, align 4
  %cmp11 = icmp eq i32 %19, %20
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then6
  %21 = load %struct.Comb*, %struct.Comb** @combList, align 8
  %22 = load i32, i32* %searchDepth.addr, align 4
  call void @printSolution(%struct.Comb* %21, i32 %22)
  store i32 1, i32* @stopSearch, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then6
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then1
  br label %if.end84

if.else:                                          ; preds = %if.end
  store i32 1, i32* %currOp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc81, %if.else
  %23 = load i32, i32* %currOp, align 4
  %cmp15 = icmp sle i32 %23, 4
  br i1 %cmp15, label %for.body, label %for.end83

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %operand1, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc78, %for.body
  %24 = load i32, i32* %operand1, align 4
  %25 = load i32, i32* @listLength, align 4
  %26 = load i32, i32* %searchDepth.addr, align 4
  %add17 = add nsw i32 %25, %26
  %cmp18 = icmp slt i32 %24, %add17
  br i1 %cmp18, label %for.body19, label %for.end80

for.body19:                                       ; preds = %for.cond16
  %27 = load i32, i32* %operand1, align 4
  %shl = shl i32 1, %27
  %28 = load i32, i32* %usedMask.addr, align 4
  %and = and i32 %shl, %28
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.body19
  br label %for.inc78

if.end22:                                         ; preds = %for.body19
  store i32 0, i32* %operand2, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc, %if.end22
  %29 = load i32, i32* %operand2, align 4
  %30 = load i32, i32* %operand1, align 4
  %cmp24 = icmp slt i32 %29, %30
  br i1 %cmp24, label %for.body25, label %for.end

for.body25:                                       ; preds = %for.cond23
  %31 = load i32, i32* %operand2, align 4
  %shl26 = shl i32 1, %31
  %32 = load i32, i32* %usedMask.addr, align 4
  %and27 = and i32 %shl26, %32
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.body25
  br label %for.inc

if.end30:                                         ; preds = %for.body25
  %33 = load i32*, i32** @workList, align 8
  %34 = load i32, i32* %operand1, align 4
  %idxprom31 = sext i32 %34 to i64
  %arrayidx32 = getelementptr inbounds i32, i32* %33, i64 %idxprom31
  %35 = load i32, i32* %arrayidx32, align 4
  store i32 %35, i32* %working1, align 4
  %36 = load i32*, i32** @workList, align 8
  %37 = load i32, i32* %operand2, align 4
  %idxprom33 = sext i32 %37 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %36, i64 %idxprom33
  %38 = load i32, i32* %arrayidx34, align 4
  store i32 %38, i32* %working2, align 4
  %39 = load i32, i32* %currOp, align 4
  %cmp35 = icmp eq i32 %39, 3
  br i1 %cmp35, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end30
  %40 = load i32, i32* %currOp, align 4
  %cmp36 = icmp eq i32 %40, 4
  br i1 %cmp36, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end30
  %41 = load i32, i32* %working1, align 4
  %cmp37 = icmp eq i32 %41, 1
  br i1 %cmp37, label %if.then40, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %land.lhs.true
  %42 = load i32, i32* %working2, align 4
  %cmp39 = icmp eq i32 %42, 1
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %lor.lhs.false38, %land.lhs.true
  br label %for.inc

if.end41:                                         ; preds = %lor.lhs.false38, %lor.lhs.false
  %43 = load i32, i32* %working1, align 4
  %cmp42 = icmp eq i32 %43, 0
  br i1 %cmp42, label %if.then45, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.end41
  %44 = load i32, i32* %working2, align 4
  %cmp44 = icmp eq i32 %44, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %lor.lhs.false43, %if.end41
  br label %for.inc

if.end46:                                         ; preds = %lor.lhs.false43
  %45 = load i32, i32* %currOp, align 4
  %cmp47 = icmp eq i32 %45, 4
  br i1 %cmp47, label %land.lhs.true48, label %if.end51

land.lhs.true48:                                  ; preds = %if.end46
  %46 = load i32, i32* %working1, align 4
  %47 = load i32, i32* %working2, align 4
  %rem = srem i32 %46, %47
  %tobool49 = icmp ne i32 %rem, 0
  br i1 %tobool49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %land.lhs.true48
  br label %for.inc

if.end51:                                         ; preds = %land.lhs.true48, %if.end46
  %48 = load i32, i32* %currOp, align 4
  %cmp52 = icmp eq i32 %48, 4
  br i1 %cmp52, label %land.lhs.true55, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %if.end51
  %49 = load i32, i32* %currOp, align 4
  %cmp54 = icmp eq i32 %49, 2
  br i1 %cmp54, label %land.lhs.true55, label %if.end58

land.lhs.true55:                                  ; preds = %lor.lhs.false53, %if.end51
  %50 = load i32, i32* %working1, align 4
  %51 = load i32, i32* %working2, align 4
  %cmp56 = icmp slt i32 %50, %51
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %land.lhs.true55
  %52 = load i32, i32* %working1, align 4
  store i32 %52, i32* %temp, align 4
  %53 = load i32, i32* %working2, align 4
  store i32 %53, i32* %working1, align 4
  %54 = load i32, i32* %temp, align 4
  store i32 %54, i32* %working2, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %land.lhs.true55, %lor.lhs.false53
  %55 = load i32, i32* %usedMask.addr, align 4
  %56 = load i32, i32* %operand1, align 4
  %shl59 = shl i32 1, %56
  %or = or i32 %55, %shl59
  %57 = load i32, i32* %operand2, align 4
  %shl60 = shl i32 1, %57
  %or61 = or i32 %or, %shl60
  store i32 %or61, i32* %newMask, align 4
  %58 = load i32, i32* %working1, align 4
  %59 = load %struct.Comb*, %struct.Comb** @combList, align 8
  %60 = load i32, i32* %searchDepth.addr, align 4
  %idxprom62 = sext i32 %60 to i64
  %arrayidx63 = getelementptr inbounds %struct.Comb, %struct.Comb* %59, i64 %idxprom62
  %operand164 = getelementptr inbounds %struct.Comb, %struct.Comb* %arrayidx63, i32 0, i32 0
  store i32 %58, i32* %operand164, align 4
  %61 = load i32, i32* %working2, align 4
  %62 = load %struct.Comb*, %struct.Comb** @combList, align 8
  %63 = load i32, i32* %searchDepth.addr, align 4
  %idxprom65 = sext i32 %63 to i64
  %arrayidx66 = getelementptr inbounds %struct.Comb, %struct.Comb* %62, i64 %idxprom65
  %operand267 = getelementptr inbounds %struct.Comb, %struct.Comb* %arrayidx66, i32 0, i32 1
  store i32 %61, i32* %operand267, align 4
  %64 = load i32, i32* %currOp, align 4
  %65 = load %struct.Comb*, %struct.Comb** @combList, align 8
  %66 = load i32, i32* %searchDepth.addr, align 4
  %idxprom68 = sext i32 %66 to i64
  %arrayidx69 = getelementptr inbounds %struct.Comb, %struct.Comb* %65, i64 %idxprom68
  %operation = getelementptr inbounds %struct.Comb, %struct.Comb* %arrayidx69, i32 0, i32 2
  store i32 %64, i32* %operation, align 4
  %67 = load %struct.Comb*, %struct.Comb** @combList, align 8
  %68 = load i32, i32* %searchDepth.addr, align 4
  %idxprom70 = sext i32 %68 to i64
  %arrayidx71 = getelementptr inbounds %struct.Comb, %struct.Comb* %67, i64 %idxprom70
  %call72 = call i32 @calculate(%struct.Comb* %arrayidx71)
  %69 = load i32*, i32** @workList, align 8
  %70 = load i32, i32* @listLength, align 4
  %71 = load i32, i32* %searchDepth.addr, align 4
  %add73 = add nsw i32 %70, %71
  %idxprom74 = sext i32 %add73 to i64
  %arrayidx75 = getelementptr inbounds i32, i32* %69, i64 %idxprom74
  store i32 %call72, i32* %arrayidx75, align 4
  %72 = load i32, i32* %searchDepth.addr, align 4
  %add76 = add nsw i32 %72, 1
  %73 = load i32, i32* %newMask, align 4
  call void @recSearch(i32 %add76, i32 %73)
  br label %for.inc

for.inc:                                          ; preds = %if.end58, %if.then50, %if.then45, %if.then40, %if.then29
  %74 = load i32, i32* %operand2, align 4
  %inc77 = add nsw i32 %74, 1
  store i32 %inc77, i32* %operand2, align 4
  br label %for.cond23

for.end:                                          ; preds = %for.cond23
  br label %for.inc78

for.inc78:                                        ; preds = %for.end, %if.then21
  %75 = load i32, i32* %operand1, align 4
  %inc79 = add nsw i32 %75, 1
  store i32 %inc79, i32* %operand1, align 4
  br label %for.cond16

for.end80:                                        ; preds = %for.cond16
  br label %for.inc81

for.inc81:                                        ; preds = %for.end80
  %76 = load i32, i32* %currOp, align 4
  %inc82 = add nsw i32 %76, 1
  store i32 %inc82, i32* %currOp, align 4
  br label %for.cond

for.end83:                                        ; preds = %for.cond
  br label %if.end84

if.end84:                                         ; preds = %if.then, %for.end83, %if.end14
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

; Function Attrs: noinline nounwind uwtable
define void @doSearch() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @listLength, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** @workList, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* @goal, align 4
  %sub = sub nsw i32 %4, %5
  %call = call i32 @abs(i32 %sub) #7
  %6 = load i32, i32* @best, align 4
  %7 = load i32, i32* @goal, align 4
  %sub1 = sub nsw i32 %6, %7
  %call2 = call i32 @abs(i32 %sub1) #7
  %cmp3 = icmp slt i32 %call, %call2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32*, i32** @workList, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  store i32 %10, i32* @best, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* @best, align 4
  %13 = load i32, i32* @goal, align 4
  %cmp6 = icmp eq i32 %12, %13
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %for.end
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end20

if.end9:                                          ; preds = %for.end
  store i32 1, i32* @dmax, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc15, %if.end9
  %14 = load i32, i32* @dmax, align 4
  %15 = load i32, i32* @listLength, align 4
  %cmp11 = icmp slt i32 %14, %15
  br i1 %cmp11, label %for.body12, label %for.end17

for.body12:                                       ; preds = %for.cond10
  call void @recSearch(i32 0, i32 0)
  %16 = load i32, i32* @stopSearch, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body12
  br label %for.end17

if.end14:                                         ; preds = %for.body12
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %17 = load i32, i32* @dmax, align 4
  %inc16 = add nsw i32 %17, 1
  store i32 %inc16, i32* @dmax, align 4
  br label %for.cond10

for.end17:                                        ; preds = %if.then13, %for.cond10
  %18 = load i32, i32* @stopSearch, align 4
  %cmp18 = icmp eq i32 %18, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.end17
  %19 = load %struct.Comb*, %struct.Comb** @solution, align 8
  %20 = load i32, i32* @bestDepth, align 4
  call void @printSolution(%struct.Comb* %19, i32 %20)
  br label %if.end20

if.end20:                                         ; preds = %if.then7, %if.then19, %for.end17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @getInput() #0 {
entry:
  %nums = alloca [16 x i32], align 16
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %i, align 4
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %nums, i64 0, i64 0
  store i32 13, i32* %arrayidx, align 16
  %arrayidx1 = getelementptr inbounds [16 x i32], [16 x i32]* %nums, i64 0, i64 1
  store i32 32, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* %nums, i64 0, i64 2
  store i32 14, i32* %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds [16 x i32], [16 x i32]* %nums, i64 0, i64 3
  store i32 1412, i32* %arrayidx3, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @getchar()
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, 10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %0 = load i32, i32* %c, align 4
  %cmp4 = icmp ne i32 %0, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %1 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %1, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %2 = load i32, i32* %c, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call5 = call i32 @ungetc(i32 %2, %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [16 x i32], [16 x i32]* %nums, i64 0, i64 %idxprom
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %arrayidx6)
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %7 = load i32, i32* %i, align 4
  %cmp8 = icmp eq i32 %7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 4, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %8 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %8, 1
  store i32 %sub, i32* @listLength, align 4
  %9 = load i32, i32* @listLength, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [16 x i32], [16 x i32]* %nums, i64 0, i64 %idxprom9
  %10 = load i32, i32* %arrayidx10, align 4
  store i32 %10, i32* @goal, align 4
  %11 = load i32, i32* @listLength, align 4
  %mul = mul nsw i32 2, %11
  %call11 = call i32* @newWorkList(i32 %mul)
  store i32* %call11, i32** @workList, align 8
  %12 = load i32, i32* @listLength, align 4
  %call12 = call %struct.Comb* @newCombList(i32 %12)
  store %struct.Comb* %call12, %struct.Comb** @combList, align 8
  %13 = load i32, i32* @listLength, align 4
  %call13 = call %struct.Comb* @newCombList(i32 %13)
  store %struct.Comb* %call13, %struct.Comb** @solution, align 8
  %14 = load i32*, i32** @workList, align 8
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %nums, i32 0, i32 0
  %15 = load i32, i32* @listLength, align 4
  call void @initWorkList(i32* %14, i32* %arraydecay, i32 %15)
  %16 = load %struct.Comb*, %struct.Comb** @combList, align 8
  %17 = load i32, i32* @listLength, align 4
  call void @initCombList(%struct.Comb* %16, i32 %17)
  %18 = load %struct.Comb*, %struct.Comb** @solution, align 8
  %19 = load i32, i32* @listLength, align 4
  call void @initCombList(%struct.Comb* %18, i32 %19)
  %20 = load i32, i32* @listLength, align 4
  ret i32 %20
}

declare i32 @getchar() #2

declare i32 @ungetc(i32, %struct._IO_FILE*) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define void @search() #0 {
entry:
  store i32 0, i32* @stopSearch, align 4
  store i32 0, i32* @nbNodes, align 4
  call void @doSearch()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @getInput()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @search()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

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
