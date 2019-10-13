; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/toy-examples/bc-seeds/test_10/test_10.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"/first/test/path\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %len = alloca i64, align 8
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 17, i64* %len, align 8
  %0 = load i64, i64* %len, align 8
  %call = call noalias i8* @malloc(i64 %0) #4
  store i8* %call, i8** %a, align 8
  %1 = load i64, i64* %len, align 8
  %call1 = call noalias i8* @malloc(i64 %1) #4
  store i8* %call1, i8** %b, align 8
  %2 = load i8*, i8** %b, align 8
  %3 = load i64, i64* %len, align 8
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %3, i32 1, i1 false)
  %4 = load i8*, i8** %a, align 8
  %call2 = call i8* @strcpy(i8* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)) #4
  %5 = load i8*, i8** %a, align 8
  %6 = load i8*, i8** %b, align 8
  call void @demo3(i8* %5, i8* %6)
  %7 = load i8*, i8** %a, align 8
  %8 = load i8*, i8** %b, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* %7, i8* %8)
  %9 = load i8*, i8** %a, align 8
  call void @free(i8* %9) #4
  %10 = load i8*, i8** %b, align 8
  call void @free(i8* %10) #4
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @demo3(i8* %src, i8* %dst) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %s1 = alloca i8*, align 8
  %d1 = alloca i8*, align 8
  %c1 = alloca i8, align 1
  store i8* %src, i8** %src.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  store i8* %0, i8** %s1, align 8
  %1 = load i8*, i8** %dst.addr, align 8
  store i8* %1, i8** %d1, align 8
  %2 = load i8*, i8** %s1, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %c1, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load i8, i8* %c1, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8, i8* %c1, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 47
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load i8*, i8** %d1, align 8
  store i8 92, i8* %6, align 1
  br label %if.end

if.else:                                          ; preds = %while.body
  %7 = load i8, i8* %c1, align 1
  %8 = load i8*, i8** %d1, align 8
  store i8 %7, i8* %8, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i8*, i8** %s1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %s1, align 8
  %10 = load i8*, i8** %d1, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr5, i8** %d1, align 8
  %11 = load i8*, i8** %s1, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %c1, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0, !0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
