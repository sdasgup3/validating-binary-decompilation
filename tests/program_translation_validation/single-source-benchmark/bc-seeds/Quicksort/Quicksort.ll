; ModuleID = 'Quicksort/Quicksort.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node*, %struct.node*, i32 }
%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = common global i64 0, align 8
@biggest = common global i32 0, align 4
@littlest = common global i32 0, align 4
@sortlist = common global [5001 x i32] zeroinitializer, align 16
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
@piececount = common global [4 x i32] zeroinitializer, align 16
@class = common global [13 x i32] zeroinitializer, align 16
@piecemax = common global [13 x i32] zeroinitializer, align 16
@puzzl = common global [512 x i32] zeroinitializer, align 16
@p = common global [13 x [512 x i32]] zeroinitializer, align 16
@n = common global i32 0, align 4
@kount = common global i32 0, align 4
@top = common global i32 0, align 4
@z = common global [257 x %struct.complex] zeroinitializer, align 16
@w = common global [257 x %struct.complex] zeroinitializer, align 16
@e = common global [130 x %struct.complex] zeroinitializer, align 16
@zr = common global float 0.000000e+00, align 4
@zi = common global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [18 x i8] c" Error in Quick.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

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
define void @Initarr() #0 {
entry:
  %i = alloca i32, align 4
  %temp = alloca i64, align 8
  call void @Initrand()
  store i32 0, i32* @biggest, align 4
  store i32 0, i32* @littlest, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 5000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @Rand()
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %temp, align 8
  %1 = load i64, i64* %temp, align 8
  %2 = load i64, i64* %temp, align 8
  %div = sdiv i64 %2, 100000
  %mul = mul nsw i64 %div, 100000
  %sub = sub nsw i64 %1, %mul
  %sub1 = sub nsw i64 %sub, 50000
  %conv2 = trunc i64 %sub1 to i32
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %idxprom
  store i32 %conv2, i32* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %6 = load i32, i32* @biggest, align 4
  %cmp5 = icmp sgt i32 %5, %6
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %idxprom7
  %8 = load i32, i32* %arrayidx8, align 4
  store i32 %8, i32* @biggest, align 4
  br label %if.end16

if.else:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %idxprom9
  %10 = load i32, i32* %arrayidx10, align 4
  %11 = load i32, i32* @littlest, align 4
  %cmp11 = icmp slt i32 %10, %11
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.else
  %12 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %idxprom14
  %13 = load i32, i32* %arrayidx15, align 4
  store i32 %13, i32* @littlest, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @Quicksort(i32* %a, i32 %l, i32 %r) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %w = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load i32, i32* %l.addr, align 4
  store i32 %0, i32* %i, align 4
  %1 = load i32, i32* %r.addr, align 4
  store i32 %1, i32* %j, align 4
  %2 = load i32*, i32** %a.addr, align 8
  %3 = load i32, i32* %l.addr, align 4
  %4 = load i32, i32* %r.addr, align 4
  %add = add nsw i32 %3, %4
  %div = sdiv i32 %add, 2
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %x, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %6 = load i32*, i32** %a.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %8 = load i32, i32* %arrayidx2, align 4
  %9 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %i, align 4
  %add3 = add nsw i32 %10, 1
  store i32 %add3, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond4

while.cond4:                                      ; preds = %while.body8, %while.end
  %11 = load i32, i32* %x, align 4
  %12 = load i32*, i32** %a.addr, align 8
  %13 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  %14 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp slt i32 %11, %14
  br i1 %cmp7, label %while.body8, label %while.end9

while.body8:                                      ; preds = %while.cond4
  %15 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %15, 1
  store i32 %sub, i32* %j, align 4
  br label %while.cond4

while.end9:                                       ; preds = %while.cond4
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %j, align 4
  %cmp10 = icmp sle i32 %16, %17
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %while.end9
  %18 = load i32*, i32** %a.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %18, i64 %idxprom11
  %20 = load i32, i32* %arrayidx12, align 4
  store i32 %20, i32* %w, align 4
  %21 = load i32*, i32** %a.addr, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %22 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %21, i64 %idxprom13
  %23 = load i32, i32* %arrayidx14, align 4
  %24 = load i32*, i32** %a.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %25 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %24, i64 %idxprom15
  store i32 %23, i32* %arrayidx16, align 4
  %26 = load i32, i32* %w, align 4
  %27 = load i32*, i32** %a.addr, align 8
  %28 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %28 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %27, i64 %idxprom17
  store i32 %26, i32* %arrayidx18, align 4
  %29 = load i32, i32* %i, align 4
  %add19 = add nsw i32 %29, 1
  store i32 %add19, i32* %i, align 4
  %30 = load i32, i32* %j, align 4
  %sub20 = sub nsw i32 %30, 1
  store i32 %sub20, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end9
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %j, align 4
  %cmp21 = icmp sle i32 %31, %32
  br i1 %cmp21, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %33 = load i32, i32* %l.addr, align 4
  %34 = load i32, i32* %j, align 4
  %cmp22 = icmp slt i32 %33, %34
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %do.end
  %35 = load i32*, i32** %a.addr, align 8
  %36 = load i32, i32* %l.addr, align 4
  %37 = load i32, i32* %j, align 4
  call void @Quicksort(i32* %35, i32 %36, i32 %37)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %do.end
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %r.addr, align 4
  %cmp25 = icmp slt i32 %38, %39
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end24
  %40 = load i32*, i32** %a.addr, align 8
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %r.addr, align 4
  call void @Quicksort(i32* %40, i32 %41, i32 %42)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @Quick(i32 %run) #0 {
entry:
  %run.addr = alloca i32, align 4
  store i32 %run, i32* %run.addr, align 4
  call void @Initarr()
  call void @Quicksort(i32* getelementptr inbounds ([5001 x i32], [5001 x i32]* @sortlist, i32 0, i32 0), i32 1, i32 5000)
  %0 = load i32, i32* getelementptr inbounds ([5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 1), align 4
  %1 = load i32, i32* @littlest, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds ([5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 5000), align 16
  %3 = load i32, i32* @biggest, align 4
  %cmp1 = icmp ne i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = load i32, i32* %run.addr, align 4
  %add = add nsw i32 %4, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %5)
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
  %1 = load i32, i32* %i, align 4
  call void @Quick(i32 %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
