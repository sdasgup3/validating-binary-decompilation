; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/fldry/fldry.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Record = type { %struct.Record*, i32, i32, double, [31 x i8] }

@Version = global [4 x i8] c"1.1\00", align 1
@PtrGlbNext = common global %struct.Record* null, align 8
@PtrGlb = common global %struct.Record* null, align 8
@Array2Glob = common global [51 x [51 x double]] zeroinitializer, align 16
@BoolGlob = common global i32 0, align 4
@Array1Glob = common global [51 x double] zeroinitializer, align 16
@Char2Glob = common global i8 0, align 1
@Char1Glob = common global i8 0, align 1
@IntGlob = common global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [53 x i8] c"calculate floating dhrystones using doubles size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i32 0, i32 0), i64 8)
  %call1 = call i32 @Proc0()
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define i32 @Proc0() #0 {
entry:
  %retval = alloca i32, align 4
  %IntLoc1 = alloca double, align 8
  %IntLoc2 = alloca double, align 8
  %IntLoc3 = alloca double, align 8
  %CharLoc = alloca i8, align 1
  %CharIndex = alloca i8, align 1
  %EnumLoc = alloca i32, align 4
  %String1Loc = alloca [31 x i8], align 16
  %String2Loc = alloca [31 x i8], align 16
  %i = alloca i32, align 4
  %starttime = alloca i64, align 8
  %benchtime = alloca i64, align 8
  %nulltime = alloca i64, align 8
  %call = call i64 @clock() #4
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
  %call1 = call i64 @clock() #4
  %2 = load i64, i64* %starttime, align 8
  %sub = sub nsw i64 %call1, %2
  store i64 %sub, i64* %nulltime, align 8
  %call2 = call noalias i8* @malloc(i64 56) #4
  %3 = bitcast i8* %call2 to %struct.Record*
  store %struct.Record* %3, %struct.Record** @PtrGlbNext, align 8
  %call3 = call noalias i8* @malloc(i64 56) #4
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
  store double 4.000000e+01, double* %IntComp, align 8
  %10 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %StringComp = getelementptr inbounds %struct.Record, %struct.Record* %10, i32 0, i32 4
  %arraydecay = getelementptr inbounds [31 x i8], [31 x i8]* %StringComp, i32 0, i32 0
  %call4 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #4
  %arraydecay5 = getelementptr inbounds [31 x i8], [31 x i8]* %String1Loc, i32 0, i32 0
  %call6 = call i8* @strcpy(i8* %arraydecay5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0)) #4
  store double 1.000000e+01, double* getelementptr inbounds ([51 x [51 x double]], [51 x [51 x double]]* @Array2Glob, i64 0, i64 8, i64 7), align 8
  %call7 = call i64 @clock() #4
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
  store double 2.000000e+00, double* %IntLoc1, align 8
  store double 3.000000e+00, double* %IntLoc2, align 8
  %arraydecay13 = getelementptr inbounds [31 x i8], [31 x i8]* %String2Loc, i32 0, i32 0
  %call14 = call i8* @strcpy(i8* %arraydecay13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0)) #4
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
  %12 = load double, double* %IntLoc1, align 8
  %13 = load double, double* %IntLoc2, align 8
  %cmp18 = fcmp olt double %12, %13
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load double, double* %IntLoc1, align 8
  %mul = fmul double 5.000000e+00, %14
  %15 = load double, double* %IntLoc2, align 8
  %sub19 = fsub double %mul, %15
  store double %sub19, double* %IntLoc3, align 8
  %16 = load double, double* %IntLoc1, align 8
  %17 = load double, double* %IntLoc2, align 8
  %call20 = call i32 @Proc7(double %16, double %17, double* %IntLoc3)
  %18 = load double, double* %IntLoc1, align 8
  %inc21 = fadd double %18, 1.000000e+00
  store double %inc21, double* %IntLoc1, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load double, double* %IntLoc1, align 8
  %20 = load double, double* %IntLoc3, align 8
  %call22 = call i32 @Proc8(double* getelementptr inbounds ([51 x double], [51 x double]* @Array1Glob, i32 0, i32 0), [51 x double]* getelementptr inbounds ([51 x [51 x double]], [51 x [51 x double]]* @Array2Glob, i32 0, i32 0), double %19, double %20)
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
  %27 = load double, double* %IntLoc2, align 8
  %28 = load double, double* %IntLoc1, align 8
  %mul37 = fmul double %27, %28
  store double %mul37, double* %IntLoc3, align 8
  %29 = load double, double* %IntLoc3, align 8
  %30 = load double, double* %IntLoc1, align 8
  %div = fdiv double %29, %30
  store double %div, double* %IntLoc2, align 8
  %31 = load double, double* %IntLoc3, align 8
  %32 = load double, double* %IntLoc2, align 8
  %sub38 = fsub double %31, %32
  %mul39 = fmul double 7.000000e+00, %sub38
  %33 = load double, double* %IntLoc1, align 8
  %sub40 = fsub double %mul39, %33
  store double %sub40, double* %IntLoc2, align 8
  %call41 = call i32 @Proc2(double* %IntLoc1)
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
declare i64 @clock() #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

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
  %IntLoc = alloca double, align 8
  %CharLoc = alloca i8, align 1
  store i8* %StrParI1, i8** %StrParI1.addr, align 8
  store i8* %StrParI2, i8** %StrParI2.addr, align 8
  store double 1.000000e+00, double* %IntLoc, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load double, double* %IntLoc, align 8
  %cmp = fcmp ole double %0, 1.000000e+00
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %StrParI1.addr, align 8
  %2 = load double, double* %IntLoc, align 8
  %conv = fptosi double %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %3 to i32
  %4 = load i8*, i8** %StrParI2.addr, align 8
  %5 = load double, double* %IntLoc, align 8
  %conv2 = fptosi double %5 to i32
  %add = add nsw i32 %conv2, 1
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 %idxprom3
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %6 to i32
  %call = call i32 @Func1(i32 %conv1, i32 %conv5)
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i8 65, i8* %CharLoc, align 1
  %7 = load double, double* %IntLoc, align 8
  %inc = fadd double %7, 1.000000e+00
  store double %inc, double* %IntLoc, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i8, i8* %CharLoc, align 1
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp sge i32 %conv8, 87
  br i1 %cmp9, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %while.end
  %9 = load i8, i8* %CharLoc, align 1
  %conv11 = sext i8 %9 to i32
  %cmp12 = icmp sle i32 %conv11, 90
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  store double 7.000000e+00, double* %IntLoc, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true, %while.end
  %10 = load i8, i8* %CharLoc, align 1
  %conv16 = sext i8 %10 to i32
  %cmp17 = icmp eq i32 %conv16, 88
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end15
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end15
  %11 = load i8*, i8** %StrParI1.addr, align 8
  %12 = load i8*, i8** %StrParI2.addr, align 8
  %call20 = call i32 @strcmp(i8* %11, i8* %12) #5
  %cmp21 = icmp sgt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else
  %13 = load double, double* %IntLoc, align 8
  %add24 = fadd double %13, 7.000000e+00
  store double %add24, double* %IntLoc, align 8
  store i32 1, i32* %retval, align 4
  br label %return

if.else25:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else25, %if.then23, %if.then19
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define i32 @Proc7(double %IntParI1, double %IntParI2, double* %IntParOut) #0 {
entry:
  %retval = alloca i32, align 4
  %IntParI1.addr = alloca double, align 8
  %IntParI2.addr = alloca double, align 8
  %IntParOut.addr = alloca double*, align 8
  %IntLoc = alloca double, align 8
  store double %IntParI1, double* %IntParI1.addr, align 8
  store double %IntParI2, double* %IntParI2.addr, align 8
  store double* %IntParOut, double** %IntParOut.addr, align 8
  %0 = load double, double* %IntParI1.addr, align 8
  %add = fadd double %0, 2.000000e+00
  store double %add, double* %IntLoc, align 8
  %1 = load double, double* %IntParI2.addr, align 8
  %2 = load double, double* %IntLoc, align 8
  %add1 = fadd double %1, %2
  %3 = load double*, double** %IntParOut.addr, align 8
  store double %add1, double* %3, align 8
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define i32 @Proc8(double* %Array1Par, [51 x double]* %Array2Par, double %IntParI1, double %IntParI2) #0 {
entry:
  %retval = alloca i32, align 4
  %Array1Par.addr = alloca double*, align 8
  %Array2Par.addr = alloca [51 x double]*, align 8
  %IntParI1.addr = alloca double, align 8
  %IntParI2.addr = alloca double, align 8
  %IntLoc = alloca double, align 8
  %IntIndex = alloca double, align 8
  store double* %Array1Par, double** %Array1Par.addr, align 8
  store [51 x double]* %Array2Par, [51 x double]** %Array2Par.addr, align 8
  store double %IntParI1, double* %IntParI1.addr, align 8
  store double %IntParI2, double* %IntParI2.addr, align 8
  %0 = load double, double* %IntParI1.addr, align 8
  %add = fadd double %0, 5.000000e+00
  store double %add, double* %IntLoc, align 8
  %1 = load double, double* %IntParI2.addr, align 8
  %2 = load double*, double** %Array1Par.addr, align 8
  %3 = load double, double* %IntLoc, align 8
  %conv = fptosi double %3 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds double, double* %2, i64 %idxprom
  store double %1, double* %arrayidx, align 8
  %4 = load double*, double** %Array1Par.addr, align 8
  %5 = load double, double* %IntLoc, align 8
  %conv1 = fptosi double %5 to i32
  %idxprom2 = sext i32 %conv1 to i64
  %arrayidx3 = getelementptr inbounds double, double* %4, i64 %idxprom2
  %6 = load double, double* %arrayidx3, align 8
  %7 = load double*, double** %Array1Par.addr, align 8
  %8 = load double, double* %IntLoc, align 8
  %conv4 = fptosi double %8 to i32
  %add5 = add nsw i32 %conv4, 1
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds double, double* %7, i64 %idxprom6
  store double %6, double* %arrayidx7, align 8
  %9 = load double, double* %IntLoc, align 8
  %10 = load double*, double** %Array1Par.addr, align 8
  %11 = load double, double* %IntLoc, align 8
  %conv8 = fptosi double %11 to i32
  %add9 = add nsw i32 %conv8, 30
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds double, double* %10, i64 %idxprom10
  store double %9, double* %arrayidx11, align 8
  %12 = load double, double* %IntLoc, align 8
  store double %12, double* %IntIndex, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load double, double* %IntIndex, align 8
  %14 = load double, double* %IntLoc, align 8
  %add12 = fadd double %14, 1.000000e+00
  %cmp = fcmp ole double %13, %add12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load double, double* %IntLoc, align 8
  %16 = load [51 x double]*, [51 x double]** %Array2Par.addr, align 8
  %17 = load double, double* %IntLoc, align 8
  %conv14 = fptosi double %17 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds [51 x double], [51 x double]* %16, i64 %idxprom15
  %18 = load double, double* %IntIndex, align 8
  %conv17 = fptosi double %18 to i32
  %idxprom18 = sext i32 %conv17 to i64
  %arrayidx19 = getelementptr inbounds [51 x double], [51 x double]* %arrayidx16, i64 0, i64 %idxprom18
  store double %15, double* %arrayidx19, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load double, double* %IntIndex, align 8
  %inc = fadd double %19, 1.000000e+00
  store double %inc, double* %IntIndex, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load [51 x double]*, [51 x double]** %Array2Par.addr, align 8
  %21 = load double, double* %IntLoc, align 8
  %conv20 = fptosi double %21 to i32
  %idxprom21 = sext i32 %conv20 to i64
  %arrayidx22 = getelementptr inbounds [51 x double], [51 x double]* %20, i64 %idxprom21
  %22 = load double, double* %IntLoc, align 8
  %conv23 = fptosi double %22 to i32
  %sub = sub nsw i32 %conv23, 1
  %idxprom24 = sext i32 %sub to i64
  %arrayidx25 = getelementptr inbounds [51 x double], [51 x double]* %arrayidx22, i64 0, i64 %idxprom24
  %23 = load double, double* %arrayidx25, align 8
  %inc26 = fadd double %23, 1.000000e+00
  store double %inc26, double* %arrayidx25, align 8
  %24 = load double*, double** %Array1Par.addr, align 8
  %25 = load double, double* %IntLoc, align 8
  %conv27 = fptosi double %25 to i32
  %idxprom28 = sext i32 %conv27 to i64
  %arrayidx29 = getelementptr inbounds double, double* %24, i64 %idxprom28
  %26 = load double, double* %arrayidx29, align 8
  %27 = load [51 x double]*, [51 x double]** %Array2Par.addr, align 8
  %28 = load double, double* %IntLoc, align 8
  %conv30 = fptosi double %28 to i32
  %add31 = add nsw i32 %conv30, 20
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds [51 x double], [51 x double]* %27, i64 %idxprom32
  %29 = load double, double* %IntLoc, align 8
  %conv34 = fptosi double %29 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds [51 x double], [51 x double]* %arrayidx33, i64 0, i64 %idxprom35
  store double %26, double* %arrayidx36, align 8
  store double 5.000000e+00, double* @IntGlob, align 8
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
  store double 5.000000e+00, double* %IntComp, align 8
  %1 = load %struct.Record*, %struct.Record** %PtrParIn.addr, align 8
  %IntComp1 = getelementptr inbounds %struct.Record, %struct.Record* %1, i32 0, i32 3
  %2 = load double, double* %IntComp1, align 8
  %3 = load %struct.Record*, %struct.Record** %PtrParIn.addr, align 8
  %PtrComp = getelementptr inbounds %struct.Record, %struct.Record* %3, i32 0, i32 0
  %4 = load %struct.Record*, %struct.Record** %PtrComp, align 8
  %IntComp2 = getelementptr inbounds %struct.Record, %struct.Record* %4, i32 0, i32 3
  store double %2, double* %IntComp2, align 8
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
  %6 = load double, double* @IntGlob, align 8
  %cmp = fcmp ogt double %6, 1.000000e+02
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
define i32 @Proc2(double* %IntParIO) #0 {
entry:
  %retval = alloca i32, align 4
  %IntParIO.addr = alloca double*, align 8
  %IntLoc = alloca double, align 8
  %EnumLoc = alloca i32, align 4
  store double* %IntParIO, double** %IntParIO.addr, align 8
  %0 = load double*, double** %IntParIO.addr, align 8
  %1 = load double, double* %0, align 8
  %add = fadd double %1, 1.000000e+01
  store double %add, double* %IntLoc, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end5, %entry
  %2 = load i8, i8* @Char1Glob, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 65
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %3 = load double, double* %IntLoc, align 8
  %dec = fadd double %3, -1.000000e+00
  store double %dec, double* %IntLoc, align 8
  %4 = load double, double* %IntLoc, align 8
  %5 = load double, double* @IntGlob, align 8
  %sub = fsub double %4, %5
  %6 = load double*, double** %IntParIO.addr, align 8
  store double %sub, double* %6, align 8
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
declare i32 @strcmp(i8*, i8*) #3

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
  store double 1.000000e+02, double* @IntGlob, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load double, double* @IntGlob, align 8
  %5 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %IntComp = getelementptr inbounds %struct.Record, %struct.Record* %5, i32 0, i32 3
  %call = call i32 (i32, double, double*, ...) bitcast (i32 (double, double, double*)* @Proc7 to i32 (i32, double, double*, ...)*)(i32 10, double %4, double* %IntComp)
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
