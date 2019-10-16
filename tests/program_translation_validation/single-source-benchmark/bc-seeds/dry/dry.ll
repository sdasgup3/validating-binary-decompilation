; ModuleID = 'dry/dry.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Record = type { %struct.Record*, i32, i32, i32, [31 x i8] }

@Version = global [4 x i8] c"1.1\00", align 1
@PtrGlbNext = common global %struct.Record* null, align 8
@PtrGlb = common global %struct.Record* null, align 8
@Array2Glob = common global [51 x [51 x i32]] zeroinitializer, align 16
@BoolGlob = common global i32 0, align 4
@Array1Glob = common global [51 x i32] zeroinitializer, align 16
@Char2Glob = common global i8 0, align 1
@Char1Glob = common global i8 0, align 1
@IntGlob = common global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @Proc0()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define i32 @Proc0() #0 {
entry:
  %retval = alloca i32, align 4
  %IntLoc1 = alloca i32, align 4
  %IntLoc2 = alloca i32, align 4
  %IntLoc3 = alloca i32, align 4
  %CharLoc = alloca i8, align 1
  %CharIndex = alloca i8, align 1
  %EnumLoc = alloca i32, align 4
  %String1Loc = alloca [31 x i8], align 16
  %String2Loc = alloca [31 x i8], align 16
  %i = alloca i32, align 4
  %starttime = alloca i64, align 8
  %benchtime = alloca i64, align 8
  %nulltime = alloca i64, align 8
  %call = call i64 @clock() #3
  store i64 %call, i64* %starttime, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 100000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call1 = call i64 @clock() #3
  %2 = load i64, i64* %starttime, align 8
  %sub = sub nsw i64 %call1, %2
  store i64 %sub, i64* %nulltime, align 8
  %call2 = call noalias i8* @malloc(i64 56) #3
  %3 = bitcast i8* %call2 to %struct.Record*
  store %struct.Record* %3, %struct.Record** @PtrGlbNext, align 8
  %call3 = call noalias i8* @malloc(i64 56) #3
  %4 = bitcast i8* %call3 to %struct.Record*
  store %struct.Record* %4, %struct.Record** @PtrGlb, align 8
  %5 = load %struct.Record*, %struct.Record** @PtrGlbNext, align 8
  %6 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %PtrComp = getelementptr inbounds %struct.Record, %struct.Record* %6, i32 0, i32 0
  store %struct.Record* %5, %struct.Record** %PtrComp, align 8
  %7 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %Discr = getelementptr inbounds %struct.Record, %struct.Record* %7, i32 0, i32 1
  store i32 0, i32* %Discr, align 8
  %8 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %EnumComp = getelementptr inbounds %struct.Record, %struct.Record* %8, i32 0, i32 2
  store i32 10001, i32* %EnumComp, align 4
  %9 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %IntComp = getelementptr inbounds %struct.Record, %struct.Record* %9, i32 0, i32 3
  store i32 40, i32* %IntComp, align 8
  %10 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %StringComp = getelementptr inbounds %struct.Record, %struct.Record* %10, i32 0, i32 4
  %arraydecay = getelementptr inbounds [31 x i8], [31 x i8]* %StringComp, i32 0, i32 0
  %call4 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #3
  %arraydecay5 = getelementptr inbounds [31 x i8], [31 x i8]* %String1Loc, i32 0, i32 0
  %call6 = call i8* @strcpy(i8* %arraydecay5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #3
  store i32 10, i32* getelementptr inbounds ([51 x [51 x i32]], [51 x [51 x i32]]* @Array2Glob, i64 0, i64 8, i64 7), align 4
  %call7 = call i64 @clock() #3
  store i64 %call7, i64* %starttime, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc42, %for.end
  %11 = load i32, i32* %i, align 4
  %cmp9 = icmp ult i32 %11, 100000000
  br i1 %cmp9, label %for.body10, label %for.end44

for.body10:                                       ; preds = %for.cond8
  %call11 = call i32 @Proc5()
  %call12 = call i32 @Proc4()
  store i32 2, i32* %IntLoc1, align 4
  store i32 3, i32* %IntLoc2, align 4
  %arraydecay13 = getelementptr inbounds [31 x i8], [31 x i8]* %String2Loc, i32 0, i32 0
  %call14 = call i8* @strcpy(i8* %arraydecay13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0)) #3
  store i32 10000, i32* %EnumLoc, align 4
  %arraydecay15 = getelementptr inbounds [31 x i8], [31 x i8]* %String1Loc, i32 0, i32 0
  %arraydecay16 = getelementptr inbounds [31 x i8], [31 x i8]* %String2Loc, i32 0, i32 0
  %call17 = call i32 @Func2(i8* %arraydecay15, i8* %arraydecay16)
  %tobool = icmp ne i32 %call17, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* @BoolGlob, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body10
  %12 = load i32, i32* %IntLoc1, align 4
  %13 = load i32, i32* %IntLoc2, align 4
  %cmp18 = icmp slt i32 %12, %13
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %IntLoc1, align 4
  %mul = mul nsw i32 5, %14
  %15 = load i32, i32* %IntLoc2, align 4
  %sub19 = sub nsw i32 %mul, %15
  store i32 %sub19, i32* %IntLoc3, align 4
  %16 = load i32, i32* %IntLoc1, align 4
  %17 = load i32, i32* %IntLoc2, align 4
  %call20 = call i32 @Proc7(i32 %16, i32 %17, i32* %IntLoc3)
  %18 = load i32, i32* %IntLoc1, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, i32* %IntLoc1, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %IntLoc1, align 4
  %20 = load i32, i32* %IntLoc3, align 4
  %call22 = call i32 @Proc8(i32* getelementptr inbounds ([51 x i32], [51 x i32]* @Array1Glob, i32 0, i32 0), [51 x i32]* getelementptr inbounds ([51 x [51 x i32]], [51 x [51 x i32]]* @Array2Glob, i32 0, i32 0), i32 %19, i32 %20)
  %21 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %call23 = call i32 @Proc1(%struct.Record* %21)
  store i8 65, i8* %CharIndex, align 1
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc34, %while.end
  %22 = load i8, i8* %CharIndex, align 1
  %conv = sext i8 %22 to i32
  %23 = load i8, i8* @Char2Glob, align 1
  %conv25 = sext i8 %23 to i32
  %cmp26 = icmp sle i32 %conv, %conv25
  br i1 %cmp26, label %for.body28, label %for.end36

for.body28:                                       ; preds = %for.cond24
  %24 = load i32, i32* %EnumLoc, align 4
  %25 = load i8, i8* %CharIndex, align 1
  %conv29 = sext i8 %25 to i32
  %call30 = call i32 @Func1(i32 %conv29, i32 67)
  %cmp31 = icmp eq i32 %24, %call30
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %for.body28
  %call33 = call i32 @Proc6(i32 0, i32* %EnumLoc)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body28
  br label %for.inc34

for.inc34:                                        ; preds = %if.end
  %26 = load i8, i8* %CharIndex, align 1
  %inc35 = add i8 %26, 1
  store i8 %inc35, i8* %CharIndex, align 1
  br label %for.cond24

for.end36:                                        ; preds = %for.cond24
  %27 = load i32, i32* %IntLoc2, align 4
  %28 = load i32, i32* %IntLoc1, align 4
  %mul37 = mul nsw i32 %27, %28
  store i32 %mul37, i32* %IntLoc3, align 4
  %29 = load i32, i32* %IntLoc3, align 4
  %30 = load i32, i32* %IntLoc1, align 4
  %div = sdiv i32 %29, %30
  store i32 %div, i32* %IntLoc2, align 4
  %31 = load i32, i32* %IntLoc3, align 4
  %32 = load i32, i32* %IntLoc2, align 4
  %sub38 = sub nsw i32 %31, %32
  %mul39 = mul nsw i32 7, %sub38
  %33 = load i32, i32* %IntLoc1, align 4
  %sub40 = sub nsw i32 %mul39, %33
  store i32 %sub40, i32* %IntLoc2, align 4
  %call41 = call i32 @Proc2(i32* %IntLoc1)
  br label %for.inc42

for.inc42:                                        ; preds = %for.end36
  %34 = load i32, i32* %i, align 4
  %inc43 = add i32 %34, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond8

for.end44:                                        ; preds = %for.cond8
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: nounwind
declare i64 @clock() #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define i32 @Proc5() #0 {
entry:
  %retval = alloca i32, align 4
  store i8 65, i8* @Char1Glob, align 1
  store i32 0, i32* @BoolGlob, align 4
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @Proc4() #0 {
entry:
  %retval = alloca i32, align 4
  %BoolLoc = alloca i32, align 4
  %0 = load i8, i8* @Char1Glob, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 65
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, i32* %BoolLoc, align 4
  %1 = load i32, i32* @BoolGlob, align 4
  %2 = load i32, i32* %BoolLoc, align 4
  %or = or i32 %2, %1
  store i32 %or, i32* %BoolLoc, align 4
  store i8 66, i8* @Char2Glob, align 1
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define i32 @Func2(i8* %StrParI1, i8* %StrParI2) #0 {
entry:
  %retval = alloca i32, align 4
  %StrParI1.addr = alloca i8*, align 8
  %StrParI2.addr = alloca i8*, align 8
  %IntLoc = alloca i32, align 4
  %CharLoc = alloca i8, align 1
  store i8* %StrParI1, i8** %StrParI1.addr, align 8
  store i8* %StrParI2, i8** %StrParI2.addr, align 8
  store i32 1, i32* %IntLoc, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %IntLoc, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %StrParI1.addr, align 8
  %2 = load i32, i32* %IntLoc, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %4 = load i8*, i8** %StrParI2.addr, align 8
  %5 = load i32, i32* %IntLoc, align 4
  %add = add nsw i32 %5, 1
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %6 to i32
  %call = call i32 @Func1(i32 %conv, i32 %conv3)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i8 65, i8* %CharLoc, align 1
  %7 = load i32, i32* %IntLoc, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %IntLoc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i8, i8* %CharLoc, align 1
  %conv6 = sext i8 %8 to i32
  %cmp7 = icmp sge i32 %conv6, 87
  br i1 %cmp7, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %while.end
  %9 = load i8, i8* %CharLoc, align 1
  %conv9 = sext i8 %9 to i32
  %cmp10 = icmp sle i32 %conv9, 90
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  store i32 7, i32* %IntLoc, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %while.end
  %10 = load i8, i8* %CharLoc, align 1
  %conv14 = sext i8 %10 to i32
  %cmp15 = icmp eq i32 %conv14, 88
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end13
  %11 = load i8*, i8** %StrParI1.addr, align 8
  %12 = load i8*, i8** %StrParI2.addr, align 8
  %call18 = call i32 @strcmp(i8* %11, i8* %12) #4
  %cmp19 = icmp sgt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.else
  %13 = load i32, i32* %IntLoc, align 4
  %add22 = add nsw i32 %13, 7
  store i32 %add22, i32* %IntLoc, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.else23:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else23, %if.then21, %if.then17
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define i32 @Proc7(i32 %IntParI1, i32 %IntParI2, i32* %IntParOut) #0 {
entry:
  %retval = alloca i32, align 4
  %IntParI1.addr = alloca i32, align 4
  %IntParI2.addr = alloca i32, align 4
  %IntParOut.addr = alloca i32*, align 8
  %IntLoc = alloca i32, align 4
  store i32 %IntParI1, i32* %IntParI1.addr, align 4
  store i32 %IntParI2, i32* %IntParI2.addr, align 4
  store i32* %IntParOut, i32** %IntParOut.addr, align 8
  %0 = load i32, i32* %IntParI1.addr, align 4
  %add = add nsw i32 %0, 2
  store i32 %add, i32* %IntLoc, align 4
  %1 = load i32, i32* %IntParI2.addr, align 4
  %2 = load i32, i32* %IntLoc, align 4
  %add1 = add nsw i32 %1, %2
  %3 = load i32*, i32** %IntParOut.addr, align 8
  store i32 %add1, i32* %3, align 4
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define i32 @Proc8(i32* %Array1Par, [51 x i32]* %Array2Par, i32 %IntParI1, i32 %IntParI2) #0 {
entry:
  %retval = alloca i32, align 4
  %Array1Par.addr = alloca i32*, align 8
  %Array2Par.addr = alloca [51 x i32]*, align 8
  %IntParI1.addr = alloca i32, align 4
  %IntParI2.addr = alloca i32, align 4
  %IntLoc = alloca i32, align 4
  %IntIndex = alloca i32, align 4
  store i32* %Array1Par, i32** %Array1Par.addr, align 8
  store [51 x i32]* %Array2Par, [51 x i32]** %Array2Par.addr, align 8
  store i32 %IntParI1, i32* %IntParI1.addr, align 4
  store i32 %IntParI2, i32* %IntParI2.addr, align 4
  %0 = load i32, i32* %IntParI1.addr, align 4
  %add = add nsw i32 %0, 5
  store i32 %add, i32* %IntLoc, align 4
  %1 = load i32, i32* %IntParI2.addr, align 4
  %2 = load i32*, i32** %Array1Par.addr, align 8
  %3 = load i32, i32* %IntLoc, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4
  %4 = load i32*, i32** %Array1Par.addr, align 8
  %5 = load i32, i32* %IntLoc, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %7 = load i32*, i32** %Array1Par.addr, align 8
  %8 = load i32, i32* %IntLoc, align 4
  %add3 = add nsw i32 %8, 1
  %idxprom4 = sext i32 %add3 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i64 %idxprom4
  store i32 %6, i32* %arrayidx5, align 4
  %9 = load i32, i32* %IntLoc, align 4
  %10 = load i32*, i32** %Array1Par.addr, align 8
  %11 = load i32, i32* %IntLoc, align 4
  %add6 = add nsw i32 %11, 30
  %idxprom7 = sext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %10, i64 %idxprom7
  store i32 %9, i32* %arrayidx8, align 4
  %12 = load i32, i32* %IntLoc, align 4
  store i32 %12, i32* %IntIndex, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %IntIndex, align 4
  %14 = load i32, i32* %IntLoc, align 4
  %add9 = add nsw i32 %14, 1
  %cmp = icmp sle i32 %13, %add9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %IntLoc, align 4
  %16 = load [51 x i32]*, [51 x i32]** %Array2Par.addr, align 8
  %17 = load i32, i32* %IntLoc, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds [51 x i32], [51 x i32]* %16, i64 %idxprom10
  %18 = load i32, i32* %IntIndex, align 4
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds [51 x i32], [51 x i32]* %arrayidx11, i64 0, i64 %idxprom12
  store i32 %15, i32* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %IntIndex, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %IntIndex, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load [51 x i32]*, [51 x i32]** %Array2Par.addr, align 8
  %21 = load i32, i32* %IntLoc, align 4
  %idxprom14 = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds [51 x i32], [51 x i32]* %20, i64 %idxprom14
  %22 = load i32, i32* %IntLoc, align 4
  %sub = sub nsw i32 %22, 1
  %idxprom16 = sext i32 %sub to i64
  %arrayidx17 = getelementptr inbounds [51 x i32], [51 x i32]* %arrayidx15, i64 0, i64 %idxprom16
  %23 = load i32, i32* %arrayidx17, align 4
  %inc18 = add nsw i32 %23, 1
  store i32 %inc18, i32* %arrayidx17, align 4
  %24 = load i32*, i32** %Array1Par.addr, align 8
  %25 = load i32, i32* %IntLoc, align 4
  %idxprom19 = sext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %24, i64 %idxprom19
  %26 = load i32, i32* %arrayidx20, align 4
  %27 = load [51 x i32]*, [51 x i32]** %Array2Par.addr, align 8
  %28 = load i32, i32* %IntLoc, align 4
  %add21 = add nsw i32 %28, 20
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [51 x i32], [51 x i32]* %27, i64 %idxprom22
  %29 = load i32, i32* %IntLoc, align 4
  %idxprom24 = sext i32 %29 to i64
  %arrayidx25 = getelementptr inbounds [51 x i32], [51 x i32]* %arrayidx23, i64 0, i64 %idxprom24
  store i32 %26, i32* %arrayidx25, align 4
  store i32 5, i32* @IntGlob, align 4
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define i32 @Proc1(%struct.Record* %PtrParIn) #0 {
entry:
  %retval = alloca i32, align 4
  %PtrParIn.addr = alloca %struct.Record*, align 8
  store %struct.Record* %PtrParIn, %struct.Record** %PtrParIn.addr, align 8
  %0 = load %struct.Record*, %struct.Record** %PtrParIn.addr, align 8
  %IntComp = getelementptr inbounds %struct.Record, %struct.Record* %0, i32 0, i32 3
  store i32 5, i32* %IntComp, align 8
  %1 = load %struct.Record*, %struct.Record** %PtrParIn.addr, align 8
  %IntComp1 = getelementptr inbounds %struct.Record, %struct.Record* %1, i32 0, i32 3
  %2 = load i32, i32* %IntComp1, align 8
  %3 = load %struct.Record*, %struct.Record** %PtrParIn.addr, align 8
  %PtrComp = getelementptr inbounds %struct.Record, %struct.Record* %3, i32 0, i32 0
  %4 = load %struct.Record*, %struct.Record** %PtrComp, align 8
  %IntComp2 = getelementptr inbounds %struct.Record, %struct.Record* %4, i32 0, i32 3
  store i32 %2, i32* %IntComp2, align 8
  %5 = load %struct.Record*, %struct.Record** %PtrParIn.addr, align 8
  %PtrComp3 = getelementptr inbounds %struct.Record, %struct.Record* %5, i32 0, i32 0
  %6 = load %struct.Record*, %struct.Record** %PtrComp3, align 8
  %7 = load %struct.Record*, %struct.Record** %PtrParIn.addr, align 8
  %PtrComp4 = getelementptr inbounds %struct.Record, %struct.Record* %7, i32 0, i32 0
  %8 = load %struct.Record*, %struct.Record** %PtrComp4, align 8
  %PtrComp5 = getelementptr inbounds %struct.Record, %struct.Record* %8, i32 0, i32 0
  store %struct.Record* %6, %struct.Record** %PtrComp5, align 8
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define i32 @Func1(i32, i32) #0 {
entry:
  %retval = alloca i32, align 4
  %CharPar1.addr = alloca i8, align 1
  %CharPar2.addr = alloca i8, align 1
  %CharLoc1 = alloca i8, align 1
  %CharLoc2 = alloca i8, align 1
  %CharPar1 = trunc i32 %0 to i8
  %CharPar2 = trunc i32 %1 to i8
  store i8 %CharPar1, i8* %CharPar1.addr, align 1
  store i8 %CharPar2, i8* %CharPar2.addr, align 1
  %2 = load i8, i8* %CharPar1.addr, align 1
  store i8 %2, i8* %CharLoc1, align 1
  %3 = load i8, i8* %CharLoc1, align 1
  store i8 %3, i8* %CharLoc2, align 1
  %4 = load i8, i8* %CharLoc2, align 1
  %conv = sext i8 %4 to i32
  %5 = load i8, i8* %CharPar2.addr, align 1
  %conv2 = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 10000, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define i32 @Proc6(i32 %EnumParIn, i32* %EnumParOut) #0 {
entry:
  %retval = alloca i32, align 4
  %EnumParIn.addr = alloca i32, align 4
  %EnumParOut.addr = alloca i32*, align 8
  store i32 %EnumParIn, i32* %EnumParIn.addr, align 4
  store i32* %EnumParOut, i32** %EnumParOut.addr, align 8
  %0 = load i32, i32* %EnumParIn.addr, align 4
  %1 = load i32*, i32** %EnumParOut.addr, align 8
  store i32 %0, i32* %1, align 4
  %2 = load i32, i32* %EnumParIn.addr, align 4
  %call = call i32 @Func3(i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %EnumParOut.addr, align 8
  store i32 10002, i32* %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %EnumParIn.addr, align 4
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 10000, label %sw.bb1
    i32 10001, label %sw.bb4
    i32 10002, label %sw.bb5
    i32 10003, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load i32*, i32** %EnumParOut.addr, align 8
  store i32 0, i32* %5, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %6 = load i32, i32* @IntGlob, align 4
  %cmp = icmp sgt i32 %6, 100
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %sw.bb1
  %7 = load i32*, i32** %EnumParOut.addr, align 8
  store i32 0, i32* %7, align 4
  br label %if.end3

if.else:                                          ; preds = %sw.bb1
  %8 = load i32*, i32** %EnumParOut.addr, align 8
  store i32 10002, i32* %8, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %9 = load i32*, i32** %EnumParOut.addr, align 8
  store i32 10000, i32* %9, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %10 = load i32*, i32** %EnumParOut.addr, align 8
  store i32 10001, i32* %10, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %if.end, %sw.bb5, %sw.bb4, %if.end3, %sw.bb
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define i32 @Proc2(i32* %IntParIO) #0 {
entry:
  %retval = alloca i32, align 4
  %IntParIO.addr = alloca i32*, align 8
  %IntLoc = alloca i32, align 4
  %EnumLoc = alloca i32, align 4
  store i32* %IntParIO, i32** %IntParIO.addr, align 8
  %0 = load i32*, i32** %IntParIO.addr, align 8
  %1 = load i32, i32* %0, align 4
  %add = add nsw i32 %1, 10
  store i32 %add, i32* %IntLoc, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end5, %entry
  %2 = load i8, i8* @Char1Glob, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 65
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %3 = load i32, i32* %IntLoc, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %IntLoc, align 4
  %4 = load i32, i32* %IntLoc, align 4
  %5 = load i32, i32* @IntGlob, align 4
  %sub = sub nsw i32 %4, %5
  %6 = load i32*, i32** %IntParIO.addr, align 8
  store i32 %sub, i32* %6, align 4
  store i32 0, i32* %EnumLoc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond
  %7 = load i32, i32* %EnumLoc, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %for.end

if.end5:                                          ; preds = %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then4
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define i32 @Func3(i32 %EnumParIn) #0 {
entry:
  %retval = alloca i32, align 4
  %EnumParIn.addr = alloca i32, align 4
  %EnumLoc = alloca i32, align 4
  store i32 %EnumParIn, i32* %EnumParIn.addr, align 4
  %0 = load i32, i32* %EnumParIn.addr, align 4
  store i32 %0, i32* %EnumLoc, align 4
  %1 = load i32, i32* %EnumLoc, align 4
  %cmp = icmp eq i32 %1, 10001
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define i32 @Proc3(%struct.Record** %PtrParOut) #0 {
entry:
  %retval = alloca i32, align 4
  %PtrParOut.addr = alloca %struct.Record**, align 8
  store %struct.Record** %PtrParOut, %struct.Record*** %PtrParOut.addr, align 8
  %0 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %cmp = icmp ne %struct.Record* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %PtrComp = getelementptr inbounds %struct.Record, %struct.Record* %1, i32 0, i32 0
  %2 = load %struct.Record*, %struct.Record** %PtrComp, align 8
  %3 = load %struct.Record**, %struct.Record*** %PtrParOut.addr, align 8
  store %struct.Record* %2, %struct.Record** %3, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 100, i32* @IntGlob, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* @IntGlob, align 4
  %5 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %IntComp = getelementptr inbounds %struct.Record, %struct.Record* %5, i32 0, i32 3
  %call = call i32 @Proc7(i32 10, i32 %4, i32* %IntComp)
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
