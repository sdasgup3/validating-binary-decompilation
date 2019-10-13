; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/toy-examples/bc-seeds/test_13/test_13.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/stuff/\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"a == %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"b == %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"c == %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %foo = alloca [3 x i8*], align 16
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  %c = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call noalias i8* @malloc(i64 4) #5
  store i8* %call, i8** %a, align 8
  %call1 = call noalias i8* @malloc(i64 8) #5
  store i8* %call1, i8** %b, align 8
  %call2 = call noalias i8* @malloc(i64 4) #5
  store i8* %call2, i8** %c, align 8
  %0 = load i8*, i8** %a, align 8
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 4, i32 1, i1 false)
  %1 = load i8*, i8** %b, align 8
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 8, i32 1, i1 false)
  %2 = load i8*, i8** %c, align 8
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 4, i32 1, i1 false)
  %3 = load i8*, i8** %a, align 8
  %call3 = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #5
  %4 = load i8*, i8** %b, align 8
  %call4 = call i8* @strcpy(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)) #5
  %5 = load i8*, i8** %c, align 8
  %call5 = call i8* @strcpy(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)) #5
  %6 = load i8*, i8** %a, align 8
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* %foo, i64 0, i64 0
  store i8* %6, i8** %arrayidx, align 16
  %7 = load i8*, i8** %b, align 8
  %arrayidx6 = getelementptr inbounds [3 x i8*], [3 x i8*]* %foo, i64 0, i64 1
  store i8* %7, i8** %arrayidx6, align 8
  %8 = load i8*, i8** %c, align 8
  %arrayidx7 = getelementptr inbounds [3 x i8*], [3 x i8*]* %foo, i64 0, i64 2
  store i8* %8, i8** %arrayidx7, align 16
  %9 = load i8*, i8** %a, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %9)
  %10 = load i8*, i8** %b, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %10)
  %11 = load i8*, i8** %c, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* %11)
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %foo, i32 0, i32 0
  call void @doWork(i8** %arraydecay, i32 3)
  %12 = load i8*, i8** %a, align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* %12)
  %13 = load i8*, i8** %b, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* %13)
  %14 = load i8*, i8** %c, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* %14)
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define void @doWork(i8** %f, i32 %l) #0 {
entry:
  %f.addr = alloca i8**, align 8
  %l.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i8*, align 8
  %c = alloca i8*, align 8
  store i8** %f, i8*** %f.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 0, i32* %a, align 4
  %0 = load i32, i32* %l.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #5
  store i8* %call, i8** %b, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %a, align 4
  %2 = load i32, i32* %l.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %f.addr, align 8
  %4 = load i32, i32* %a, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  store i8* %5, i8** %c, align 8
  %6 = load i8*, i8** %c, align 8
  %call2 = call i32 @checkFn(i8* %6)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i8*, i8** %c, align 8
  %8 = load i8*, i8** %c, align 8
  call void @doStuff(i8* %7, i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %a, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i8*, i8** %b, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 2, i8* %arrayidx5, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @checkFn(i8* %f) #0 {
entry:
  %f.addr = alloca i8*, align 8
  %r = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca i8, align 1
  %b = alloca i8, align 1
  store i8* %f, i8** %f.addr, align 8
  store i32 1, i32* %r, align 4
  %0 = load i8*, i8** %f.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %k, align 4
  %1 = load i32, i32* %k, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %f.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  store i8 %3, i8* %a, align 1
  %4 = load i8*, i8** %f.addr, align 8
  %5 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx2, align 1
  store i8 %6, i8* %b, align 1
  %7 = load i8, i8* %a, align 1
  %conv3 = sext i8 %7 to i32
  %8 = load i8, i8* %b, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv3, %conv4
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  store i32 0, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %9 = load i32, i32* %r, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal void @doStuff(i8* %src, i8* %dst) #0 {
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

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0, !0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
