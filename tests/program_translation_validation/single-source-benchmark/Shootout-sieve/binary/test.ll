; ModuleID = '/home/ubuntu/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/Shootout-sieve/Shootout-sieve.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.flags = internal global [8193 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"Count: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %NUM = alloca i32, align 4
  %i = alloca i64, align 8
  %k = alloca i64, align 8
  %count = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 170000, %cond.false ]
  store i32 %cond, i32* %NUM, align 4
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end18, %cond.end
  %3 = load i32, i32* %NUM, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %NUM, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %count, align 4
  store i64 2, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %4 = load i64, i64* %i, align 8
  %cmp1 = icmp sle i64 %4, 8192
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %5
  store i8 1, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 2, i64* %i, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc16, %for.end
  %7 = load i64, i64* %i, align 8
  %cmp4 = icmp sle i64 %7, 8192
  br i1 %cmp4, label %for.body5, label %for.end18

for.body5:                                        ; preds = %for.cond3
  %8 = load i64, i64* %i, align 8
  %arrayidx6 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %8
  %9 = load i8, i8* %arrayidx6, align 1
  %tobool7 = icmp ne i8 %9, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %10 = load i64, i64* %i, align 8
  %11 = load i64, i64* %i, align 8
  %add = add nsw i64 %10, %11
  store i64 %add, i64* %k, align 8
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc12, %if.then
  %12 = load i64, i64* %k, align 8
  %cmp9 = icmp sle i64 %12, 8192
  br i1 %cmp9, label %for.body10, label %for.end14

for.body10:                                       ; preds = %for.cond8
  %13 = load i64, i64* %k, align 8
  %arrayidx11 = getelementptr inbounds [8193 x i8], [8193 x i8]* @main.flags, i64 0, i64 %13
  store i8 0, i8* %arrayidx11, align 1
  br label %for.inc12

for.inc12:                                        ; preds = %for.body10
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %k, align 8
  %add13 = add nsw i64 %15, %14
  store i64 %add13, i64* %k, align 8
  br label %for.cond8

for.end14:                                        ; preds = %for.cond8
  %16 = load i32, i32* %count, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %for.end14, %for.body5
  br label %for.inc16

for.inc16:                                        ; preds = %if.end
  %17 = load i64, i64* %i, align 8
  %inc17 = add nsw i64 %17, 1
  store i64 %inc17, i64* %i, align 8
  br label %for.cond3

for.end18:                                        ; preds = %for.cond3
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i32, i32* %count, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 %18)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
