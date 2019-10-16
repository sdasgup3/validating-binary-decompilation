; ModuleID = 'Puzzle/Puzzle.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node*, %struct.node*, i32 }
%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = common global i64 0, align 8
@piecemax = common global [13 x i32] zeroinitializer, align 16
@p = common global [13 x [512 x i32]] zeroinitializer, align 16
@puzzl = common global [512 x i32] zeroinitializer, align 16
@piececount = common global [4 x i32] zeroinitializer, align 16
@class = common global [13 x i32] zeroinitializer, align 16
@kount = common global i32 0, align 4
@n = common global i32 0, align 4
@value = common global float 0.000000e+00, align 4
@fixed = common global float 0.000000e+00, align 4
@floated = common global float 0.000000e+00, align 4
@permarray = common global [11 x i32] zeroinitializer, align 16
@pctr = common global i32 0, align 4
@tree = common global %struct.node* null, align 8
@stack = common global [4 x i32] zeroinitializer, align 16
@cellspace = common global [19 x %struct.element] zeroinitializer, align 16
@freelist = common global i32 0, align 4
@movesdone = common global i32 0, align 4
@ima = common global [41 x [41 x i32]] zeroinitializer, align 16
@imb = common global [41 x [41 x i32]] zeroinitializer, align 16
@imr = common global [41 x [41 x i32]] zeroinitializer, align 16
@rma = common global [41 x [41 x float]] zeroinitializer, align 16
@rmb = common global [41 x [41 x float]] zeroinitializer, align 16
@rmr = common global [41 x [41 x float]] zeroinitializer, align 16
@sortlist = common global [5001 x i32] zeroinitializer, align 16
@biggest = common global i32 0, align 4
@littlest = common global i32 0, align 4
@top = common global i32 0, align 4
@z = common global [257 x %struct.complex] zeroinitializer, align 16
@w = common global [257 x %struct.complex] zeroinitializer, align 16
@e = common global [130 x %struct.complex] zeroinitializer, align 16
@zr = common global float 0.000000e+00, align 4
@zi = common global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [18 x i8] c"Error1 in Puzzle\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Error2 in Puzzle.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Error3 in Puzzle.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @Initrand() #0 {
entry:
  store i64 74755, i64* @seed, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @Rand() #0 {
entry:
  %0 = load i64, i64* @seed, align 8
  %mul = mul nsw i64 %0, 1309
  %add = add nsw i64 %mul, 13849
  %and = and i64 %add, 65535
  store i64 %and, i64* @seed, align 8
  %1 = load i64, i64* @seed, align 8
  %conv = trunc i64 %1 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @Fit(i32 %i, i32 %j) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [13 x i32], [13 x i32]* @piecemax, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [13 x [512 x i32]], [13 x [512 x i32]]* @p, i64 0, i64 %idxprom1
  %4 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [512 x i32], [512 x i32]* %arrayidx2, i64 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %j.addr, align 4
  %7 = load i32, i32* %k, align 4
  %add = add nsw i32 %6, %7
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [512 x i32], [512 x i32]* @puzzl, i64 0, i64 %idxprom5
  %8 = load i32, i32* %arrayidx6, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end9

if.end9:                                          ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %9 = load i32, i32* %k, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then8
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define i32 @Place(i32 %i, i32 %j) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [13 x i32], [13 x i32]* @piecemax, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [13 x [512 x i32]], [13 x [512 x i32]]* @p, i64 0, i64 %idxprom1
  %4 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [512 x i32], [512 x i32]* %arrayidx2, i64 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %j.addr, align 4
  %7 = load i32, i32* %k, align 4
  %add = add nsw i32 %6, %7
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [512 x i32], [512 x i32]* @puzzl, i64 0, i64 %idxprom5
  store i32 1, i32* %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %k, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %i.addr, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [13 x i32], [13 x i32]* @class, i64 0, i64 %idxprom7
  %10 = load i32, i32* %arrayidx8, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* @piececount, i64 0, i64 %idxprom9
  %11 = load i32, i32* %arrayidx10, align 4
  %sub = sub nsw i32 %11, 1
  %12 = load i32, i32* %i.addr, align 4
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [13 x i32], [13 x i32]* @class, i64 0, i64 %idxprom11
  %13 = load i32, i32* %arrayidx12, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* @piececount, i64 0, i64 %idxprom13
  store i32 %sub, i32* %arrayidx14, align 4
  %14 = load i32, i32* %j.addr, align 4
  store i32 %14, i32* %k, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc23, %for.end
  %15 = load i32, i32* %k, align 4
  %cmp16 = icmp sle i32 %15, 511
  br i1 %cmp16, label %for.body17, label %for.end25

for.body17:                                       ; preds = %for.cond15
  %16 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [512 x i32], [512 x i32]* @puzzl, i64 0, i64 %idxprom18
  %17 = load i32, i32* %arrayidx19, align 4
  %tobool20 = icmp ne i32 %17, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %for.body17
  %18 = load i32, i32* %k, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %for.body17
  br label %for.inc23

for.inc23:                                        ; preds = %if.end22
  %19 = load i32, i32* %k, align 4
  %inc24 = add nsw i32 %19, 1
  store i32 %inc24, i32* %k, align 4
  br label %for.cond15

for.end25:                                        ; preds = %for.cond15
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end25, %if.then21
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define void @Remove(i32 %i, i32 %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [13 x i32], [13 x i32]* @piecemax, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [13 x [512 x i32]], [13 x [512 x i32]]* @p, i64 0, i64 %idxprom1
  %4 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [512 x i32], [512 x i32]* %arrayidx2, i64 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %j.addr, align 4
  %7 = load i32, i32* %k, align 4
  %add = add nsw i32 %6, %7
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [512 x i32], [512 x i32]* @puzzl, i64 0, i64 %idxprom5
  store i32 0, i32* %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %k, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %i.addr, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [13 x i32], [13 x i32]* @class, i64 0, i64 %idxprom7
  %10 = load i32, i32* %arrayidx8, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* @piececount, i64 0, i64 %idxprom9
  %11 = load i32, i32* %arrayidx10, align 4
  %add11 = add nsw i32 %11, 1
  %12 = load i32, i32* %i.addr, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [13 x i32], [13 x i32]* @class, i64 0, i64 %idxprom12
  %13 = load i32, i32* %arrayidx13, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* @piececount, i64 0, i64 %idxprom14
  store i32 %add11, i32* %arrayidx15, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @Trial(i32 %j) #0 {
entry:
  %retval = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32, i32* @kount, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* @kount, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %1, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [13 x i32], [13 x i32]* @class, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* @piececount, i64 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp ne i32 %4, 0
  br i1 %cmp3, label %if.then, label %if.end11

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %j.addr, align 4
  %call = call i32 @Fit(i32 %5, i32 %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.then
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %j.addr, align 4
  %call5 = call i32 @Place(i32 %7, i32 %8)
  store i32 %call5, i32* %k, align 4
  %9 = load i32, i32* %k, align 4
  %call6 = call i32 @Trial(i32 %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %10 = load i32, i32* %k, align 4
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %lor.lhs.false, %if.then4
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %j.addr, align 4
  call void @Remove(i32 %11, i32 %12)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then9
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define void @Puzzle() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %m, align 4
  %cmp = icmp sle i32 %0, 511
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %m, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [512 x i32], [512 x i32]* @puzzl, i64 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %m, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc20, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp sle i32 %3, 5
  br i1 %cmp2, label %for.body3, label %for.end22

for.body3:                                        ; preds = %for.cond1
  store i32 1, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc17, %for.body3
  %4 = load i32, i32* %j, align 4
  %cmp5 = icmp sle i32 %4, 5
  br i1 %cmp5, label %for.body6, label %for.end19

for.body6:                                        ; preds = %for.cond4
  store i32 1, i32* %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc14, %for.body6
  %5 = load i32, i32* %k, align 4
  %cmp8 = icmp sle i32 %5, 5
  br i1 %cmp8, label %for.body9, label %for.end16

for.body9:                                        ; preds = %for.cond7
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %k, align 4
  %mul = mul nsw i32 8, %8
  %add = add nsw i32 %7, %mul
  %mul10 = mul nsw i32 8, %add
  %add11 = add nsw i32 %6, %mul10
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [512 x i32], [512 x i32]* @puzzl, i64 0, i64 %idxprom12
  store i32 0, i32* %arrayidx13, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %for.body9
  %9 = load i32, i32* %k, align 4
  %inc15 = add nsw i32 %9, 1
  store i32 %inc15, i32* %k, align 4
  br label %for.cond7

for.end16:                                        ; preds = %for.cond7
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %10 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %10, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond4

for.end19:                                        ; preds = %for.cond4
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %11 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %11, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond1

for.end22:                                        ; preds = %for.cond1
  store i32 0, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc36, %for.end22
  %12 = load i32, i32* %i, align 4
  %cmp24 = icmp sle i32 %12, 12
  br i1 %cmp24, label %for.body25, label %for.end38

for.body25:                                       ; preds = %for.cond23
  store i32 0, i32* %m, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc33, %for.body25
  %13 = load i32, i32* %m, align 4
  %cmp27 = icmp sle i32 %13, 511
  br i1 %cmp27, label %for.body28, label %for.end35

for.body28:                                       ; preds = %for.cond26
  %14 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %14 to i64
  %arrayidx30 = getelementptr inbounds [13 x [512 x i32]], [13 x [512 x i32]]* @p, i64 0, i64 %idxprom29
  %15 = load i32, i32* %m, align 4
  %idxprom31 = sext i32 %15 to i64
  %arrayidx32 = getelementptr inbounds [512 x i32], [512 x i32]* %arrayidx30, i64 0, i64 %idxprom31
  store i32 0, i32* %arrayidx32, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.body28
  %16 = load i32, i32* %m, align 4
  %inc34 = add nsw i32 %16, 1
  store i32 %inc34, i32* %m, align 4
  br label %for.cond26

for.end35:                                        ; preds = %for.cond26
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %17 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %17, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond23

for.end38:                                        ; preds = %for.cond23
  store i32 0, i32* %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc60, %for.end38
  %18 = load i32, i32* %i, align 4
  %cmp40 = icmp sle i32 %18, 3
  br i1 %cmp40, label %for.body41, label %for.end62

for.body41:                                       ; preds = %for.cond39
  store i32 0, i32* %j, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc57, %for.body41
  %19 = load i32, i32* %j, align 4
  %cmp43 = icmp sle i32 %19, 1
  br i1 %cmp43, label %for.body44, label %for.end59

for.body44:                                       ; preds = %for.cond42
  store i32 0, i32* %k, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc54, %for.body44
  %20 = load i32, i32* %k, align 4
  %cmp46 = icmp sle i32 %20, 0
  br i1 %cmp46, label %for.body47, label %for.end56

for.body47:                                       ; preds = %for.cond45
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %k, align 4
  %mul48 = mul nsw i32 8, %23
  %add49 = add nsw i32 %22, %mul48
  %mul50 = mul nsw i32 8, %add49
  %add51 = add nsw i32 %21, %mul50
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i64 0, i64 0), i64 0, i64 %idxprom52
  store i32 1, i32* %arrayidx53, align 4
  br label %for.inc54

for.inc54:                                        ; preds = %for.body47
  %24 = load i32, i32* %k, align 4
  %inc55 = add nsw i32 %24, 1
  store i32 %inc55, i32* %k, align 4
  br label %for.cond45

for.end56:                                        ; preds = %for.cond45
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %25 = load i32, i32* %j, align 4
  %inc58 = add nsw i32 %25, 1
  store i32 %inc58, i32* %j, align 4
  br label %for.cond42

for.end59:                                        ; preds = %for.cond42
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %26 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %26, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond39

for.end62:                                        ; preds = %for.cond39
  store i32 0, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i64 0, i64 0), align 16
  store i32 11, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i64 0, i64 0), align 16
  store i32 0, i32* %i, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc84, %for.end62
  %27 = load i32, i32* %i, align 4
  %cmp64 = icmp sle i32 %27, 1
  br i1 %cmp64, label %for.body65, label %for.end86

for.body65:                                       ; preds = %for.cond63
  store i32 0, i32* %j, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc81, %for.body65
  %28 = load i32, i32* %j, align 4
  %cmp67 = icmp sle i32 %28, 0
  br i1 %cmp67, label %for.body68, label %for.end83

for.body68:                                       ; preds = %for.cond66
  store i32 0, i32* %k, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc78, %for.body68
  %29 = load i32, i32* %k, align 4
  %cmp70 = icmp sle i32 %29, 3
  br i1 %cmp70, label %for.body71, label %for.end80

for.body71:                                       ; preds = %for.cond69
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %k, align 4
  %mul72 = mul nsw i32 8, %32
  %add73 = add nsw i32 %31, %mul72
  %mul74 = mul nsw i32 8, %add73
  %add75 = add nsw i32 %30, %mul74
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i64 0, i64 1), i64 0, i64 %idxprom76
  store i32 1, i32* %arrayidx77, align 4
  br label %for.inc78

for.inc78:                                        ; preds = %for.body71
  %33 = load i32, i32* %k, align 4
  %inc79 = add nsw i32 %33, 1
  store i32 %inc79, i32* %k, align 4
  br label %for.cond69

for.end80:                                        ; preds = %for.cond69
  br label %for.inc81

for.inc81:                                        ; preds = %for.end80
  %34 = load i32, i32* %j, align 4
  %inc82 = add nsw i32 %34, 1
  store i32 %inc82, i32* %j, align 4
  br label %for.cond66

for.end83:                                        ; preds = %for.cond66
  br label %for.inc84

for.inc84:                                        ; preds = %for.end83
  %35 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %35, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond63

for.end86:                                        ; preds = %for.cond63
  store i32 0, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i64 0, i64 1), align 4
  store i32 193, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i64 0, i64 1), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc108, %for.end86
  %36 = load i32, i32* %i, align 4
  %cmp88 = icmp sle i32 %36, 0
  br i1 %cmp88, label %for.body89, label %for.end110

for.body89:                                       ; preds = %for.cond87
  store i32 0, i32* %j, align 4
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc105, %for.body89
  %37 = load i32, i32* %j, align 4
  %cmp91 = icmp sle i32 %37, 3
  br i1 %cmp91, label %for.body92, label %for.end107

for.body92:                                       ; preds = %for.cond90
  store i32 0, i32* %k, align 4
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc102, %for.body92
  %38 = load i32, i32* %k, align 4
  %cmp94 = icmp sle i32 %38, 1
  br i1 %cmp94, label %for.body95, label %for.end104

for.body95:                                       ; preds = %for.cond93
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %k, align 4
  %mul96 = mul nsw i32 8, %41
  %add97 = add nsw i32 %40, %mul96
  %mul98 = mul nsw i32 8, %add97
  %add99 = add nsw i32 %39, %mul98
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i64 0, i64 2), i64 0, i64 %idxprom100
  store i32 1, i32* %arrayidx101, align 4
  br label %for.inc102

for.inc102:                                       ; preds = %for.body95
  %42 = load i32, i32* %k, align 4
  %inc103 = add nsw i32 %42, 1
  store i32 %inc103, i32* %k, align 4
  br label %for.cond93

for.end104:                                       ; preds = %for.cond93
  br label %for.inc105

for.inc105:                                       ; preds = %for.end104
  %43 = load i32, i32* %j, align 4
  %inc106 = add nsw i32 %43, 1
  store i32 %inc106, i32* %j, align 4
  br label %for.cond90

for.end107:                                       ; preds = %for.cond90
  br label %for.inc108

for.inc108:                                       ; preds = %for.end107
  %44 = load i32, i32* %i, align 4
  %inc109 = add nsw i32 %44, 1
  store i32 %inc109, i32* %i, align 4
  br label %for.cond87

for.end110:                                       ; preds = %for.cond87
  store i32 0, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i64 0, i64 2), align 8
  store i32 88, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i64 0, i64 2), align 8
  store i32 0, i32* %i, align 4
  br label %for.cond111

for.cond111:                                      ; preds = %for.inc132, %for.end110
  %45 = load i32, i32* %i, align 4
  %cmp112 = icmp sle i32 %45, 1
  br i1 %cmp112, label %for.body113, label %for.end134

for.body113:                                      ; preds = %for.cond111
  store i32 0, i32* %j, align 4
  br label %for.cond114

for.cond114:                                      ; preds = %for.inc129, %for.body113
  %46 = load i32, i32* %j, align 4
  %cmp115 = icmp sle i32 %46, 3
  br i1 %cmp115, label %for.body116, label %for.end131

for.body116:                                      ; preds = %for.cond114
  store i32 0, i32* %k, align 4
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc126, %for.body116
  %47 = load i32, i32* %k, align 4
  %cmp118 = icmp sle i32 %47, 0
  br i1 %cmp118, label %for.body119, label %for.end128

for.body119:                                      ; preds = %for.cond117
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %j, align 4
  %50 = load i32, i32* %k, align 4
  %mul120 = mul nsw i32 8, %50
  %add121 = add nsw i32 %49, %mul120
  %mul122 = mul nsw i32 8, %add121
  %add123 = add nsw i32 %48, %mul122
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i64 0, i64 3), i64 0, i64 %idxprom124
  store i32 1, i32* %arrayidx125, align 4
  br label %for.inc126

for.inc126:                                       ; preds = %for.body119
  %51 = load i32, i32* %k, align 4
  %inc127 = add nsw i32 %51, 1
  store i32 %inc127, i32* %k, align 4
  br label %for.cond117

for.end128:                                       ; preds = %for.cond117
  br label %for.inc129

for.inc129:                                       ; preds = %for.end128
  %52 = load i32, i32* %j, align 4
  %inc130 = add nsw i32 %52, 1
  store i32 %inc130, i32* %j, align 4
  br label %for.cond114

for.end131:                                       ; preds = %for.cond114
  br label %for.inc132

for.inc132:                                       ; preds = %for.end131
  %53 = load i32, i32* %i, align 4
  %inc133 = add nsw i32 %53, 1
  store i32 %inc133, i32* %i, align 4
  br label %for.cond111

for.end134:                                       ; preds = %for.cond111
  store i32 0, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i64 0, i64 3), align 4
  store i32 25, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i64 0, i64 3), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond135

for.cond135:                                      ; preds = %for.inc156, %for.end134
  %54 = load i32, i32* %i, align 4
  %cmp136 = icmp sle i32 %54, 3
  br i1 %cmp136, label %for.body137, label %for.end158

for.body137:                                      ; preds = %for.cond135
  store i32 0, i32* %j, align 4
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc153, %for.body137
  %55 = load i32, i32* %j, align 4
  %cmp139 = icmp sle i32 %55, 0
  br i1 %cmp139, label %for.body140, label %for.end155

for.body140:                                      ; preds = %for.cond138
  store i32 0, i32* %k, align 4
  br label %for.cond141

for.cond141:                                      ; preds = %for.inc150, %for.body140
  %56 = load i32, i32* %k, align 4
  %cmp142 = icmp sle i32 %56, 1
  br i1 %cmp142, label %for.body143, label %for.end152

for.body143:                                      ; preds = %for.cond141
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %j, align 4
  %59 = load i32, i32* %k, align 4
  %mul144 = mul nsw i32 8, %59
  %add145 = add nsw i32 %58, %mul144
  %mul146 = mul nsw i32 8, %add145
  %add147 = add nsw i32 %57, %mul146
  %idxprom148 = sext i32 %add147 to i64
  %arrayidx149 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i64 0, i64 4), i64 0, i64 %idxprom148
  store i32 1, i32* %arrayidx149, align 4
  br label %for.inc150

for.inc150:                                       ; preds = %for.body143
  %60 = load i32, i32* %k, align 4
  %inc151 = add nsw i32 %60, 1
  store i32 %inc151, i32* %k, align 4
  br label %for.cond141

for.end152:                                       ; preds = %for.cond141
  br label %for.inc153

for.inc153:                                       ; preds = %for.end152
  %61 = load i32, i32* %j, align 4
  %inc154 = add nsw i32 %61, 1
  store i32 %inc154, i32* %j, align 4
  br label %for.cond138

for.end155:                                       ; preds = %for.cond138
  br label %for.inc156

for.inc156:                                       ; preds = %for.end155
  %62 = load i32, i32* %i, align 4
  %inc157 = add nsw i32 %62, 1
  store i32 %inc157, i32* %i, align 4
  br label %for.cond135

for.end158:                                       ; preds = %for.cond135
  store i32 0, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i64 0, i64 4), align 16
  store i32 67, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i64 0, i64 4), align 16
  store i32 0, i32* %i, align 4
  br label %for.cond159

for.cond159:                                      ; preds = %for.inc180, %for.end158
  %63 = load i32, i32* %i, align 4
  %cmp160 = icmp sle i32 %63, 0
  br i1 %cmp160, label %for.body161, label %for.end182

for.body161:                                      ; preds = %for.cond159
  store i32 0, i32* %j, align 4
  br label %for.cond162

for.cond162:                                      ; preds = %for.inc177, %for.body161
  %64 = load i32, i32* %j, align 4
  %cmp163 = icmp sle i32 %64, 1
  br i1 %cmp163, label %for.body164, label %for.end179

for.body164:                                      ; preds = %for.cond162
  store i32 0, i32* %k, align 4
  br label %for.cond165

for.cond165:                                      ; preds = %for.inc174, %for.body164
  %65 = load i32, i32* %k, align 4
  %cmp166 = icmp sle i32 %65, 3
  br i1 %cmp166, label %for.body167, label %for.end176

for.body167:                                      ; preds = %for.cond165
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* %j, align 4
  %68 = load i32, i32* %k, align 4
  %mul168 = mul nsw i32 8, %68
  %add169 = add nsw i32 %67, %mul168
  %mul170 = mul nsw i32 8, %add169
  %add171 = add nsw i32 %66, %mul170
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i64 0, i64 5), i64 0, i64 %idxprom172
  store i32 1, i32* %arrayidx173, align 4
  br label %for.inc174

for.inc174:                                       ; preds = %for.body167
  %69 = load i32, i32* %k, align 4
  %inc175 = add nsw i32 %69, 1
  store i32 %inc175, i32* %k, align 4
  br label %for.cond165

for.end176:                                       ; preds = %for.cond165
  br label %for.inc177

for.inc177:                                       ; preds = %for.end176
  %70 = load i32, i32* %j, align 4
  %inc178 = add nsw i32 %70, 1
  store i32 %inc178, i32* %j, align 4
  br label %for.cond162

for.end179:                                       ; preds = %for.cond162
  br label %for.inc180

for.inc180:                                       ; preds = %for.end179
  %71 = load i32, i32* %i, align 4
  %inc181 = add nsw i32 %71, 1
  store i32 %inc181, i32* %i, align 4
  br label %for.cond159

for.end182:                                       ; preds = %for.cond159
  store i32 0, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i64 0, i64 5), align 4
  store i32 200, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i64 0, i64 5), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond183

for.cond183:                                      ; preds = %for.inc204, %for.end182
  %72 = load i32, i32* %i, align 4
  %cmp184 = icmp sle i32 %72, 2
  br i1 %cmp184, label %for.body185, label %for.end206

for.body185:                                      ; preds = %for.cond183
  store i32 0, i32* %j, align 4
  br label %for.cond186

for.cond186:                                      ; preds = %for.inc201, %for.body185
  %73 = load i32, i32* %j, align 4
  %cmp187 = icmp sle i32 %73, 0
  br i1 %cmp187, label %for.body188, label %for.end203

for.body188:                                      ; preds = %for.cond186
  store i32 0, i32* %k, align 4
  br label %for.cond189

for.cond189:                                      ; preds = %for.inc198, %for.body188
  %74 = load i32, i32* %k, align 4
  %cmp190 = icmp sle i32 %74, 0
  br i1 %cmp190, label %for.body191, label %for.end200

for.body191:                                      ; preds = %for.cond189
  %75 = load i32, i32* %i, align 4
  %76 = load i32, i32* %j, align 4
  %77 = load i32, i32* %k, align 4
  %mul192 = mul nsw i32 8, %77
  %add193 = add nsw i32 %76, %mul192
  %mul194 = mul nsw i32 8, %add193
  %add195 = add nsw i32 %75, %mul194
  %idxprom196 = sext i32 %add195 to i64
  %arrayidx197 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i64 0, i64 6), i64 0, i64 %idxprom196
  store i32 1, i32* %arrayidx197, align 4
  br label %for.inc198

for.inc198:                                       ; preds = %for.body191
  %78 = load i32, i32* %k, align 4
  %inc199 = add nsw i32 %78, 1
  store i32 %inc199, i32* %k, align 4
  br label %for.cond189

for.end200:                                       ; preds = %for.cond189
  br label %for.inc201

for.inc201:                                       ; preds = %for.end200
  %79 = load i32, i32* %j, align 4
  %inc202 = add nsw i32 %79, 1
  store i32 %inc202, i32* %j, align 4
  br label %for.cond186

for.end203:                                       ; preds = %for.cond186
  br label %for.inc204

for.inc204:                                       ; preds = %for.end203
  %80 = load i32, i32* %i, align 4
  %inc205 = add nsw i32 %80, 1
  store i32 %inc205, i32* %i, align 4
  br label %for.cond183

for.end206:                                       ; preds = %for.cond183
  store i32 1, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i64 0, i64 6), align 8
  store i32 2, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i64 0, i64 6), align 8
  store i32 0, i32* %i, align 4
  br label %for.cond207

for.cond207:                                      ; preds = %for.inc228, %for.end206
  %81 = load i32, i32* %i, align 4
  %cmp208 = icmp sle i32 %81, 0
  br i1 %cmp208, label %for.body209, label %for.end230

for.body209:                                      ; preds = %for.cond207
  store i32 0, i32* %j, align 4
  br label %for.cond210

for.cond210:                                      ; preds = %for.inc225, %for.body209
  %82 = load i32, i32* %j, align 4
  %cmp211 = icmp sle i32 %82, 2
  br i1 %cmp211, label %for.body212, label %for.end227

for.body212:                                      ; preds = %for.cond210
  store i32 0, i32* %k, align 4
  br label %for.cond213

for.cond213:                                      ; preds = %for.inc222, %for.body212
  %83 = load i32, i32* %k, align 4
  %cmp214 = icmp sle i32 %83, 0
  br i1 %cmp214, label %for.body215, label %for.end224

for.body215:                                      ; preds = %for.cond213
  %84 = load i32, i32* %i, align 4
  %85 = load i32, i32* %j, align 4
  %86 = load i32, i32* %k, align 4
  %mul216 = mul nsw i32 8, %86
  %add217 = add nsw i32 %85, %mul216
  %mul218 = mul nsw i32 8, %add217
  %add219 = add nsw i32 %84, %mul218
  %idxprom220 = sext i32 %add219 to i64
  %arrayidx221 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i64 0, i64 7), i64 0, i64 %idxprom220
  store i32 1, i32* %arrayidx221, align 4
  br label %for.inc222

for.inc222:                                       ; preds = %for.body215
  %87 = load i32, i32* %k, align 4
  %inc223 = add nsw i32 %87, 1
  store i32 %inc223, i32* %k, align 4
  br label %for.cond213

for.end224:                                       ; preds = %for.cond213
  br label %for.inc225

for.inc225:                                       ; preds = %for.end224
  %88 = load i32, i32* %j, align 4
  %inc226 = add nsw i32 %88, 1
  store i32 %inc226, i32* %j, align 4
  br label %for.cond210

for.end227:                                       ; preds = %for.cond210
  br label %for.inc228

for.inc228:                                       ; preds = %for.end227
  %89 = load i32, i32* %i, align 4
  %inc229 = add nsw i32 %89, 1
  store i32 %inc229, i32* %i, align 4
  br label %for.cond207

for.end230:                                       ; preds = %for.cond207
  store i32 1, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i64 0, i64 7), align 4
  store i32 16, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i64 0, i64 7), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond231

for.cond231:                                      ; preds = %for.inc252, %for.end230
  %90 = load i32, i32* %i, align 4
  %cmp232 = icmp sle i32 %90, 0
  br i1 %cmp232, label %for.body233, label %for.end254

for.body233:                                      ; preds = %for.cond231
  store i32 0, i32* %j, align 4
  br label %for.cond234

for.cond234:                                      ; preds = %for.inc249, %for.body233
  %91 = load i32, i32* %j, align 4
  %cmp235 = icmp sle i32 %91, 0
  br i1 %cmp235, label %for.body236, label %for.end251

for.body236:                                      ; preds = %for.cond234
  store i32 0, i32* %k, align 4
  br label %for.cond237

for.cond237:                                      ; preds = %for.inc246, %for.body236
  %92 = load i32, i32* %k, align 4
  %cmp238 = icmp sle i32 %92, 2
  br i1 %cmp238, label %for.body239, label %for.end248

for.body239:                                      ; preds = %for.cond237
  %93 = load i32, i32* %i, align 4
  %94 = load i32, i32* %j, align 4
  %95 = load i32, i32* %k, align 4
  %mul240 = mul nsw i32 8, %95
  %add241 = add nsw i32 %94, %mul240
  %mul242 = mul nsw i32 8, %add241
  %add243 = add nsw i32 %93, %mul242
  %idxprom244 = sext i32 %add243 to i64
  %arrayidx245 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i64 0, i64 8), i64 0, i64 %idxprom244
  store i32 1, i32* %arrayidx245, align 4
  br label %for.inc246

for.inc246:                                       ; preds = %for.body239
  %96 = load i32, i32* %k, align 4
  %inc247 = add nsw i32 %96, 1
  store i32 %inc247, i32* %k, align 4
  br label %for.cond237

for.end248:                                       ; preds = %for.cond237
  br label %for.inc249

for.inc249:                                       ; preds = %for.end248
  %97 = load i32, i32* %j, align 4
  %inc250 = add nsw i32 %97, 1
  store i32 %inc250, i32* %j, align 4
  br label %for.cond234

for.end251:                                       ; preds = %for.cond234
  br label %for.inc252

for.inc252:                                       ; preds = %for.end251
  %98 = load i32, i32* %i, align 4
  %inc253 = add nsw i32 %98, 1
  store i32 %inc253, i32* %i, align 4
  br label %for.cond231

for.end254:                                       ; preds = %for.cond231
  store i32 1, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i64 0, i64 8), align 16
  store i32 128, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i64 0, i64 8), align 16
  store i32 0, i32* %i, align 4
  br label %for.cond255

for.cond255:                                      ; preds = %for.inc276, %for.end254
  %99 = load i32, i32* %i, align 4
  %cmp256 = icmp sle i32 %99, 1
  br i1 %cmp256, label %for.body257, label %for.end278

for.body257:                                      ; preds = %for.cond255
  store i32 0, i32* %j, align 4
  br label %for.cond258

for.cond258:                                      ; preds = %for.inc273, %for.body257
  %100 = load i32, i32* %j, align 4
  %cmp259 = icmp sle i32 %100, 1
  br i1 %cmp259, label %for.body260, label %for.end275

for.body260:                                      ; preds = %for.cond258
  store i32 0, i32* %k, align 4
  br label %for.cond261

for.cond261:                                      ; preds = %for.inc270, %for.body260
  %101 = load i32, i32* %k, align 4
  %cmp262 = icmp sle i32 %101, 0
  br i1 %cmp262, label %for.body263, label %for.end272

for.body263:                                      ; preds = %for.cond261
  %102 = load i32, i32* %i, align 4
  %103 = load i32, i32* %j, align 4
  %104 = load i32, i32* %k, align 4
  %mul264 = mul nsw i32 8, %104
  %add265 = add nsw i32 %103, %mul264
  %mul266 = mul nsw i32 8, %add265
  %add267 = add nsw i32 %102, %mul266
  %idxprom268 = sext i32 %add267 to i64
  %arrayidx269 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i64 0, i64 9), i64 0, i64 %idxprom268
  store i32 1, i32* %arrayidx269, align 4
  br label %for.inc270

for.inc270:                                       ; preds = %for.body263
  %105 = load i32, i32* %k, align 4
  %inc271 = add nsw i32 %105, 1
  store i32 %inc271, i32* %k, align 4
  br label %for.cond261

for.end272:                                       ; preds = %for.cond261
  br label %for.inc273

for.inc273:                                       ; preds = %for.end272
  %106 = load i32, i32* %j, align 4
  %inc274 = add nsw i32 %106, 1
  store i32 %inc274, i32* %j, align 4
  br label %for.cond258

for.end275:                                       ; preds = %for.cond258
  br label %for.inc276

for.inc276:                                       ; preds = %for.end275
  %107 = load i32, i32* %i, align 4
  %inc277 = add nsw i32 %107, 1
  store i32 %inc277, i32* %i, align 4
  br label %for.cond255

for.end278:                                       ; preds = %for.cond255
  store i32 2, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i64 0, i64 9), align 4
  store i32 9, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i64 0, i64 9), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond279

for.cond279:                                      ; preds = %for.inc300, %for.end278
  %108 = load i32, i32* %i, align 4
  %cmp280 = icmp sle i32 %108, 1
  br i1 %cmp280, label %for.body281, label %for.end302

for.body281:                                      ; preds = %for.cond279
  store i32 0, i32* %j, align 4
  br label %for.cond282

for.cond282:                                      ; preds = %for.inc297, %for.body281
  %109 = load i32, i32* %j, align 4
  %cmp283 = icmp sle i32 %109, 0
  br i1 %cmp283, label %for.body284, label %for.end299

for.body284:                                      ; preds = %for.cond282
  store i32 0, i32* %k, align 4
  br label %for.cond285

for.cond285:                                      ; preds = %for.inc294, %for.body284
  %110 = load i32, i32* %k, align 4
  %cmp286 = icmp sle i32 %110, 1
  br i1 %cmp286, label %for.body287, label %for.end296

for.body287:                                      ; preds = %for.cond285
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* %j, align 4
  %113 = load i32, i32* %k, align 4
  %mul288 = mul nsw i32 8, %113
  %add289 = add nsw i32 %112, %mul288
  %mul290 = mul nsw i32 8, %add289
  %add291 = add nsw i32 %111, %mul290
  %idxprom292 = sext i32 %add291 to i64
  %arrayidx293 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i64 0, i64 10), i64 0, i64 %idxprom292
  store i32 1, i32* %arrayidx293, align 4
  br label %for.inc294

for.inc294:                                       ; preds = %for.body287
  %114 = load i32, i32* %k, align 4
  %inc295 = add nsw i32 %114, 1
  store i32 %inc295, i32* %k, align 4
  br label %for.cond285

for.end296:                                       ; preds = %for.cond285
  br label %for.inc297

for.inc297:                                       ; preds = %for.end296
  %115 = load i32, i32* %j, align 4
  %inc298 = add nsw i32 %115, 1
  store i32 %inc298, i32* %j, align 4
  br label %for.cond282

for.end299:                                       ; preds = %for.cond282
  br label %for.inc300

for.inc300:                                       ; preds = %for.end299
  %116 = load i32, i32* %i, align 4
  %inc301 = add nsw i32 %116, 1
  store i32 %inc301, i32* %i, align 4
  br label %for.cond279

for.end302:                                       ; preds = %for.cond279
  store i32 2, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i64 0, i64 10), align 8
  store i32 65, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i64 0, i64 10), align 8
  store i32 0, i32* %i, align 4
  br label %for.cond303

for.cond303:                                      ; preds = %for.inc324, %for.end302
  %117 = load i32, i32* %i, align 4
  %cmp304 = icmp sle i32 %117, 0
  br i1 %cmp304, label %for.body305, label %for.end326

for.body305:                                      ; preds = %for.cond303
  store i32 0, i32* %j, align 4
  br label %for.cond306

for.cond306:                                      ; preds = %for.inc321, %for.body305
  %118 = load i32, i32* %j, align 4
  %cmp307 = icmp sle i32 %118, 1
  br i1 %cmp307, label %for.body308, label %for.end323

for.body308:                                      ; preds = %for.cond306
  store i32 0, i32* %k, align 4
  br label %for.cond309

for.cond309:                                      ; preds = %for.inc318, %for.body308
  %119 = load i32, i32* %k, align 4
  %cmp310 = icmp sle i32 %119, 1
  br i1 %cmp310, label %for.body311, label %for.end320

for.body311:                                      ; preds = %for.cond309
  %120 = load i32, i32* %i, align 4
  %121 = load i32, i32* %j, align 4
  %122 = load i32, i32* %k, align 4
  %mul312 = mul nsw i32 8, %122
  %add313 = add nsw i32 %121, %mul312
  %mul314 = mul nsw i32 8, %add313
  %add315 = add nsw i32 %120, %mul314
  %idxprom316 = sext i32 %add315 to i64
  %arrayidx317 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i64 0, i64 11), i64 0, i64 %idxprom316
  store i32 1, i32* %arrayidx317, align 4
  br label %for.inc318

for.inc318:                                       ; preds = %for.body311
  %123 = load i32, i32* %k, align 4
  %inc319 = add nsw i32 %123, 1
  store i32 %inc319, i32* %k, align 4
  br label %for.cond309

for.end320:                                       ; preds = %for.cond309
  br label %for.inc321

for.inc321:                                       ; preds = %for.end320
  %124 = load i32, i32* %j, align 4
  %inc322 = add nsw i32 %124, 1
  store i32 %inc322, i32* %j, align 4
  br label %for.cond306

for.end323:                                       ; preds = %for.cond306
  br label %for.inc324

for.inc324:                                       ; preds = %for.end323
  %125 = load i32, i32* %i, align 4
  %inc325 = add nsw i32 %125, 1
  store i32 %inc325, i32* %i, align 4
  br label %for.cond303

for.end326:                                       ; preds = %for.cond303
  store i32 2, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i64 0, i64 11), align 4
  store i32 72, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i64 0, i64 11), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond327

for.cond327:                                      ; preds = %for.inc348, %for.end326
  %126 = load i32, i32* %i, align 4
  %cmp328 = icmp sle i32 %126, 1
  br i1 %cmp328, label %for.body329, label %for.end350

for.body329:                                      ; preds = %for.cond327
  store i32 0, i32* %j, align 4
  br label %for.cond330

for.cond330:                                      ; preds = %for.inc345, %for.body329
  %127 = load i32, i32* %j, align 4
  %cmp331 = icmp sle i32 %127, 1
  br i1 %cmp331, label %for.body332, label %for.end347

for.body332:                                      ; preds = %for.cond330
  store i32 0, i32* %k, align 4
  br label %for.cond333

for.cond333:                                      ; preds = %for.inc342, %for.body332
  %128 = load i32, i32* %k, align 4
  %cmp334 = icmp sle i32 %128, 1
  br i1 %cmp334, label %for.body335, label %for.end344

for.body335:                                      ; preds = %for.cond333
  %129 = load i32, i32* %i, align 4
  %130 = load i32, i32* %j, align 4
  %131 = load i32, i32* %k, align 4
  %mul336 = mul nsw i32 8, %131
  %add337 = add nsw i32 %130, %mul336
  %mul338 = mul nsw i32 8, %add337
  %add339 = add nsw i32 %129, %mul338
  %idxprom340 = sext i32 %add339 to i64
  %arrayidx341 = getelementptr inbounds [512 x i32], [512 x i32]* getelementptr inbounds ([13 x [512 x i32]], [13 x [512 x i32]]* @p, i64 0, i64 12), i64 0, i64 %idxprom340
  store i32 1, i32* %arrayidx341, align 4
  br label %for.inc342

for.inc342:                                       ; preds = %for.body335
  %132 = load i32, i32* %k, align 4
  %inc343 = add nsw i32 %132, 1
  store i32 %inc343, i32* %k, align 4
  br label %for.cond333

for.end344:                                       ; preds = %for.cond333
  br label %for.inc345

for.inc345:                                       ; preds = %for.end344
  %133 = load i32, i32* %j, align 4
  %inc346 = add nsw i32 %133, 1
  store i32 %inc346, i32* %j, align 4
  br label %for.cond330

for.end347:                                       ; preds = %for.cond330
  br label %for.inc348

for.inc348:                                       ; preds = %for.end347
  %134 = load i32, i32* %i, align 4
  %inc349 = add nsw i32 %134, 1
  store i32 %inc349, i32* %i, align 4
  br label %for.cond327

for.end350:                                       ; preds = %for.cond327
  store i32 3, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @class, i64 0, i64 12), align 16
  store i32 73, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @piecemax, i64 0, i64 12), align 16
  store i32 13, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @piececount, i64 0, i64 0), align 16
  store i32 3, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @piececount, i64 0, i64 1), align 4
  store i32 1, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @piececount, i64 0, i64 2), align 8
  store i32 1, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @piececount, i64 0, i64 3), align 4
  store i32 73, i32* %m, align 4
  store i32 0, i32* @kount, align 4
  %135 = load i32, i32* %m, align 4
  %call = call i32 @Fit(i32 0, i32 %135)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end350
  %136 = load i32, i32* %m, align 4
  %call351 = call i32 @Place(i32 0, i32 %136)
  store i32 %call351, i32* @n, align 4
  br label %if.end

if.else:                                          ; preds = %for.end350
  %call352 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %137 = load i32, i32* @n, align 4
  %call353 = call i32 @Trial(i32 %137)
  %tobool354 = icmp ne i32 %call353, 0
  br i1 %tobool354, label %if.else357, label %if.then355

if.then355:                                       ; preds = %if.end
  %call356 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end362

if.else357:                                       ; preds = %if.end
  %138 = load i32, i32* @kount, align 4
  %cmp358 = icmp ne i32 %138, 2005
  br i1 %cmp358, label %if.then359, label %if.end361

if.then359:                                       ; preds = %if.else357
  %call360 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end361

if.end361:                                        ; preds = %if.then359, %if.else357
  br label %if.end362

if.end362:                                        ; preds = %if.end361, %if.then355
  %139 = load i32, i32* @n, align 4
  %call363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %139)
  %140 = load i32, i32* @kount, align 4
  %call364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %140)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @Puzzle()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
