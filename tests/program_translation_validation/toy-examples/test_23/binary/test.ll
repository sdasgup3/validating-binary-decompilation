; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/toy-examples/bc-seeds/test_23/test_23.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@maze = global [7 x [11 x i8]] [[11 x i8] c"+-+---+---+", [11 x i8] c"| |     |#|", [11 x i8] c"| | --+ | |", [11 x i8] c"| |   | | |", [11 x i8] c"| +-- | | |", [11 x i8] c"|     |   |", [11 x i8] c"+-----+---+"], align 16
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Wrong command!(only w,s,a,d accepted!)\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"You lose!\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"You win!\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Your solution:%s \0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"You lose\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @draw() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 7
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 11
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [7 x [11 x i8]], [7 x [11 x i8]]* @maze, i64 0, i64 %idxprom
  %3 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx, i64 0, i64 %idxprom4
  %4 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %4 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %6 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %6, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %ox = alloca i32, align 4
  %oy = alloca i32, align 4
  %i = alloca i32, align 4
  %program = alloca [28 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 1, i32* %x, align 4
  store i32 1, i32* %y, align 4
  %0 = load i32, i32* %y, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [7 x [11 x i8]], [7 x [11 x i8]]* @maze, i64 0, i64 %idxprom
  %1 = load i32, i32* %x, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx, i64 0, i64 %idxprom1
  store i8 88, i8* %arrayidx2, align 1
  %arraydecay = getelementptr inbounds [28 x i8], [28 x i8]* %program, i32 0, i32 0
  %call = call i64 @read(i32 0, i8* %arraydecay, i64 28)
  br label %while.cond

while.cond:                                       ; preds = %if.end54, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 28
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %x, align 4
  store i32 %3, i32* %ox, align 4
  %4 = load i32, i32* %y, align 4
  store i32 %4, i32* %oy, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [28 x i8], [28 x i8]* %program, i64 0, i64 %idxprom3
  %6 = load i8, i8* %arrayidx4, align 1
  %conv = sext i8 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 119, label %sw.bb
    i32 115, label %sw.bb5
    i32 97, label %sw.bb6
    i32 100, label %sw.bb8
  ]

sw.bb:                                            ; preds = %while.body
  %7 = load i32, i32* %y, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %y, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body
  %8 = load i32, i32* %y, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %y, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %while.body
  %9 = load i32, i32* %x, align 4
  %dec7 = add nsw i32 %9, -1
  store i32 %dec7, i32* %x, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  %10 = load i32, i32* %x, align 4
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, i32* %x, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0))
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 -1) #3
  unreachable

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb5, %sw.bb
  %11 = load i32, i32* %y, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [7 x [11 x i8]], [7 x [11 x i8]]* @maze, i64 0, i64 %idxprom12
  %12 = load i32, i32* %x, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx13, i64 0, i64 %idxprom14
  %13 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %13 to i32
  %cmp17 = icmp eq i32 %conv16, 35
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %arraydecay20 = getelementptr inbounds [28 x i8], [28 x i8]* %program, i32 0, i32 0
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay20)
  call void @exit(i32 0) #3
  unreachable

if.end:                                           ; preds = %sw.epilog
  %14 = load i32, i32* %y, align 4
  %idxprom22 = sext i32 %14 to i64
  %arrayidx23 = getelementptr inbounds [7 x [11 x i8]], [7 x [11 x i8]]* @maze, i64 0, i64 %idxprom22
  %15 = load i32, i32* %x, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx23, i64 0, i64 %idxprom24
  %16 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %16 to i32
  %cmp27 = icmp ne i32 %conv26, 32
  br i1 %cmp27, label %land.lhs.true, label %if.end46

land.lhs.true:                                    ; preds = %if.end
  %17 = load i32, i32* %y, align 4
  %cmp29 = icmp eq i32 %17, 2
  br i1 %cmp29, label %land.lhs.true31, label %if.then45

land.lhs.true31:                                  ; preds = %land.lhs.true
  %18 = load i32, i32* %y, align 4
  %idxprom32 = sext i32 %18 to i64
  %arrayidx33 = getelementptr inbounds [7 x [11 x i8]], [7 x [11 x i8]]* @maze, i64 0, i64 %idxprom32
  %19 = load i32, i32* %x, align 4
  %idxprom34 = sext i32 %19 to i64
  %arrayidx35 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx33, i64 0, i64 %idxprom34
  %20 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %20 to i32
  %cmp37 = icmp eq i32 %conv36, 124
  br i1 %cmp37, label %land.lhs.true39, label %if.then45

land.lhs.true39:                                  ; preds = %land.lhs.true31
  %21 = load i32, i32* %x, align 4
  %cmp40 = icmp sgt i32 %21, 0
  br i1 %cmp40, label %land.lhs.true42, label %if.then45

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %22 = load i32, i32* %x, align 4
  %cmp43 = icmp slt i32 %22, 11
  br i1 %cmp43, label %if.end46, label %if.then45

if.then45:                                        ; preds = %land.lhs.true42, %land.lhs.true39, %land.lhs.true31, %land.lhs.true
  %23 = load i32, i32* %ox, align 4
  store i32 %23, i32* %x, align 4
  %24 = load i32, i32* %oy, align 4
  store i32 %24, i32* %y, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %land.lhs.true42, %if.end
  %25 = load i32, i32* %ox, align 4
  %26 = load i32, i32* %x, align 4
  %cmp47 = icmp eq i32 %25, %26
  br i1 %cmp47, label %land.lhs.true49, label %if.end54

land.lhs.true49:                                  ; preds = %if.end46
  %27 = load i32, i32* %oy, align 4
  %28 = load i32, i32* %y, align 4
  %cmp50 = icmp eq i32 %27, %28
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %land.lhs.true49
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  store i32 2, i32* %retval, align 4
  br label %return

if.end54:                                         ; preds = %land.lhs.true49, %if.end46
  %29 = load i32, i32* %y, align 4
  %idxprom55 = sext i32 %29 to i64
  %arrayidx56 = getelementptr inbounds [7 x [11 x i8]], [7 x [11 x i8]]* @maze, i64 0, i64 %idxprom55
  %30 = load i32, i32* %x, align 4
  %idxprom57 = sext i32 %30 to i64
  %arrayidx58 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx56, i64 0, i64 %idxprom57
  store i8 88, i8* %arrayidx58, align 1
  call void @draw()
  %31 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %31, 1
  store i32 %inc59, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then52
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
