; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/toy-examples/bc-seeds/test_4/test_4.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.arr1 = private unnamed_addr constant [10 x i32] [i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20], align 16
@main.arr2 = private unnamed_addr constant [10 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 16
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
  %arr1 = alloca [10 x i32], align 16
  %arr2 = alloca [10 x i32], align 16
  %z = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [10 x i32]* %arr1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([10 x i32]* @main.arr1 to i8*), i64 40, i32 16, i1 false)
  %1 = bitcast [10 x i32]* %arr2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([10 x i32]* @main.arr2 to i8*), i64 40, i32 16, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %arr1, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [10 x i32], [10 x i32]* %arr2, i32 0, i32 0
  %call = call i32 @foo(i32 100, i32 200, i32 300, i32 400, i32 500, i32 600, i32 10, i32* %arraydecay, i32 10, i32* %arraydecay1)
  store i32 %call, i32* %z, align 4
  %2 = load i32, i32* %z, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %2)
  %3 = load i32, i32* %z, align 4
  ret i32 %3
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
