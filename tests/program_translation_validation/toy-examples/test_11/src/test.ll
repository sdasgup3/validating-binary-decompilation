; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/toy-examples/bc-seeds/test_11/test_11.bc'
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
  %call = call noalias i8* @malloc(i64 %0) #5
  store i8* %call, i8** %a, align 8
  %1 = load i8*, i8** %a, align 8
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)) #5
  %2 = load i8*, i8** %a, align 8
  %call2 = call i8* @doTrans(i8* %2)
  store i8* %call2, i8** %b, align 8
  %3 = load i8*, i8** %a, align 8
  %4 = load i8*, i8** %b, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* %3, i8* %4)
  %5 = load i8*, i8** %a, align 8
  call void @free(i8* %5) #5
  %6 = load i8*, i8** %b, align 8
  call void @free(i8* %6) #5
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define i8* @doTrans(i8* %inS) #0 {
entry:
  %retval = alloca i8*, align 8
  %inS.addr = alloca i8*, align 8
  %oldS = alloca i64, align 8
  %newS = alloca i8*, align 8
  %curP = alloca i8*, align 8
  %curN = alloca i8*, align 8
  store i8* %inS, i8** %inS.addr, align 8
  %0 = load i8*, i8** %inS.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %add = add i64 %call, 1
  store i64 %add, i64* %oldS, align 8
  %1 = load i64, i64* %oldS, align 8
  %call1 = call noalias i8* @malloc(i64 %1) #5
  store i8* %call1, i8** %newS, align 8
  %2 = load i8*, i8** %newS, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else8

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %inS.addr, align 8
  store i8* %3, i8** %curP, align 8
  %4 = load i8*, i8** %newS, align 8
  store i8* %4, i8** %curN, align 8
  %5 = load i8*, i8** %newS, align 8
  %6 = load i64, i64* %oldS, align 8
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 %6, i32 1, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %7 = load i8*, i8** %curP, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %curP, align 8
  %10 = load i8, i8* %9, align 1
  %conv3 = sext i8 %10 to i32
  %cmp4 = icmp eq i32 %conv3, 47
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.body
  %11 = load i8*, i8** %curN, align 8
  store i8 92, i8* %11, align 1
  br label %if.end

if.else:                                          ; preds = %while.body
  %12 = load i8*, i8** %curP, align 8
  %13 = load i8, i8* %12, align 1
  %14 = load i8*, i8** %curN, align 8
  store i8 %13, i8* %14, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %15 = load i8*, i8** %curP, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %curP, align 8
  %16 = load i8*, i8** %curN, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr7, i8** %curN, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i8*, i8** %newS, align 8
  store i8* %17, i8** %retval, align 8
  br label %return

if.else8:                                         ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else8, %while.end
  %18 = load i8*, i8** %retval, align 8
  ret i8* %18
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0, !0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
