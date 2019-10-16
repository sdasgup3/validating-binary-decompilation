; ModuleID = '/home/ubuntu/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/puzzle/puzzle.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@next = internal global i64 1, align 8
@.str = private unnamed_addr constant [21 x i8] c"Found duplicate: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @rand() #0 {
entry:
  %0 = load i64, i64* @next, align 8
  %mul = mul i64 %0, 1103515245
  %add = add i64 %mul, 12345
  store i64 %add, i64* @next, align 8
  %1 = load i64, i64* @next, align 8
  %div = udiv i64 %1, 65536
  %conv = trunc i64 %div to i32
  %rem = urem i32 %conv, 32767
  %add1 = add i32 %rem, 1
  ret i32 %add1
}

; Function Attrs: noinline nounwind uwtable
define void @srand(i32 %seed) #0 {
entry:
  %seed.addr = alloca i32, align 4
  store i32 %seed, i32* %seed.addr, align 4
  %0 = load i32, i32* %seed.addr, align 4
  %conv = zext i32 %0 to i64
  store i64 %conv, i64* @next, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @randInt(i32 %min, i32 %max) #0 {
entry:
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %min, i32* %min.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  %0 = load i32, i32* %max.addr, align 4
  %1 = load i32, i32* %min.addr, align 4
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %conv = sitofp i32 %2 to double
  %call = call i32 @rand() #3
  %conv1 = sitofp i32 %call to double
  %div = fdiv double %conv1, 3.276800e+04
  %mul = fmul double %conv, %div
  %conv2 = fptosi double %mul to i32
  store i32 %conv2, i32* %k, align 4
  %3 = load i32, i32* %k, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* %min.addr, align 4
  %add4 = add nsw i32 %5, %6
  %sub5 = sub nsw i32 %add4, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %min.addr, align 4
  %add6 = add nsw i32 %7, %8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub5, %cond.true ], [ %add6, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define void @shuffle(i32* %items, i32 %len) #0 {
entry:
  %items.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %i = alloca i64, align 8
  %aux = alloca i32, align 4
  store i32* %items, i32** %items.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %0, 1
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %add = add i64 %2, 1
  %conv2 = uitofp i64 %add to double
  %call = call i32 @rand() #3
  %conv3 = sitofp i32 %call to double
  %div = fdiv double %conv3, 3.276800e+04
  %mul = fmul double %conv2, %div
  %conv4 = fptosi double %mul to i32
  %conv5 = sext i32 %conv4 to i64
  store i64 %conv5, i64* %k, align 8
  %3 = load i64, i64* %k, align 8
  %4 = load i64, i64* %i, align 8
  %add6 = add i64 %4, 1
  %cmp7 = icmp eq i64 %3, %add6
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %5 = load i64, i64* %k, align 8
  %sub9 = sub i64 %5, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %6 = load i64, i64* %k, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub9, %cond.true ], [ %6, %cond.false ]
  store i64 %cond, i64* %j, align 8
  %7 = load i32*, i32** %items.addr, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %8
  %9 = load i32, i32* %arrayidx, align 4
  store i32 %9, i32* %aux, align 4
  %10 = load i32*, i32** %items.addr, align 8
  %11 = load i64, i64* %j, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %10, i64 %11
  %12 = load i32, i32* %arrayidx10, align 4
  %13 = load i32*, i32** %items.addr, align 8
  %14 = load i64, i64* %i, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32 %12, i32* %arrayidx11, align 4
  %15 = load i32, i32* %aux, align 4
  %16 = load i32*, i32** %items.addr, align 8
  %17 = load i64, i64* %j, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %15, i32* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %18 = load i64, i64* %i, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32* @createRandomArray(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %result = alloca i32*, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #3
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %result, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %6 = load i32*, i32** %result, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  store i32 %5, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %size.addr, align 4
  %call2 = call i32 @randInt(i32 1, i32 %9)
  %10 = load i32*, i32** %result, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %call2, i32* %arrayidx3, align 4
  %11 = load i32*, i32** %result, align 8
  %12 = load i32, i32* %len, align 4
  call void @shuffle(i32* %11, i32 %12)
  %13 = load i32*, i32** %result, align 8
  ret i32* %13
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define i32 @findDuplicate(i32* %data, i32 %len) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %result, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %result, align 4
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 %3, 1
  %xor = xor i32 %2, %add
  %4 = load i32*, i32** %data.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %xor1 = xor i32 %xor, %6
  store i32 %xor1, i32* %result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %len.addr, align 4
  %9 = load i32, i32* %result, align 4
  %xor2 = xor i32 %9, %8
  store i32 %xor2, i32* %result, align 4
  %10 = load i32, i32* %result, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %duplicate = alloca i32, align 4
  %rndArr = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  call void @srand(i32 1) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  %call = call i32* @createRandomArray(i32 500000)
  store i32* %call, i32** %rndArr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 200
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32*, i32** %rndArr, align 8
  %call4 = call i32 @findDuplicate(i32* %2, i32 500001)
  store i32 %call4, i32* %duplicate, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %3 = load i32, i32* %j, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %4 = load i32*, i32** %rndArr, align 8
  %5 = bitcast i32* %4 to i8*
  call void @free(i8* %5) #3
  %6 = load i32, i32* %duplicate, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i32 %6)
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %7 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %7, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end8:                                         ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
