; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/toy-examples/bc-seeds/test_6/test_6.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @foo(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e, i32 %f, i32 %size1, i32* %arr1, i32 %size2, i32* %arr2) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %e.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  %size1.addr = alloca i32, align 4
  %arr1.addr = alloca i32*, align 8
  %size2.addr = alloca i32, align 4
  %arr2.addr = alloca i32*, align 8
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %d, i32* %d.addr, align 4
  store i32 %e, i32* %e.addr, align 4
  store i32 %f, i32* %f.addr, align 4
  store i32 %size1, i32* %size1.addr, align 4
  store i32* %arr1, i32** %arr1.addr, align 8
  store i32 %size2, i32* %size2.addr, align 4
  store i32* %arr2, i32** %arr2.addr, align 8
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size1.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %arr1.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32*, i32** %arr2.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %sub = sub nsw i32 %4, %7
  %8 = load i32, i32* %sum, align 4
  %add = add i32 %8, %sub
  store i32 %add, i32* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %sum, align 4
  %11 = load i32, i32* %a.addr, align 4
  %12 = load i32, i32* %b.addr, align 4
  %add3 = add nsw i32 %11, %12
  %13 = load i32, i32* %c.addr, align 4
  %add4 = add nsw i32 %add3, %13
  %14 = load i32, i32* %d.addr, align 4
  %add5 = add nsw i32 %add4, %14
  %15 = load i32, i32* %e.addr, align 4
  %add6 = add nsw i32 %add5, %15
  %16 = load i32, i32* %f.addr, align 4
  %add7 = add nsw i32 %add6, %16
  %mul = mul i32 %10, %add7
  ret i32 %mul
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %arr1 = alloca i32*, align 8
  %arr2 = alloca i32*, align 8
  %i = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call noalias i8* @malloc(i64 40) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %arr1, align 8
  %call1 = call noalias i8* @malloc(i64 40) #3
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %arr2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 10, %3
  %add2 = add nsw i32 %add, 1
  %4 = load i32*, i32** %arr1, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 %add2, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %for.end
  %7 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %7, 10
  br i1 %cmp4, label %for.body5, label %for.end11

for.body5:                                        ; preds = %for.cond3
  %8 = load i32, i32* %i, align 4
  %add6 = add nsw i32 %8, 1
  %9 = load i32*, i32** %arr2, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %9, i64 %idxprom7
  store i32 %add6, i32* %arrayidx8, align 4
  br label %for.inc9

for.inc9:                                         ; preds = %for.body5
  %11 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %11, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond3

for.end11:                                        ; preds = %for.cond3
  %12 = load i32*, i32** %arr1, align 8
  %13 = load i32*, i32** %arr2, align 8
  %call12 = call i32 @foo(i32 100, i32 200, i32 300, i32 400, i32 500, i32 600, i32 10, i32* %12, i32 10, i32* %13)
  store i32 %call12, i32* %z, align 4
  %14 = load i32, i32* %z, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %14)
  %15 = load i32, i32* %z, align 4
  ret i32 %15
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
