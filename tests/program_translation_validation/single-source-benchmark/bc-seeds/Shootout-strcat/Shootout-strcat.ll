; ModuleID = 'Shootout-strcat/Shootout-strcat.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"calloc strbuf\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"realloc strbuf\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"hello\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %buflen = alloca i32, align 4
  %strbuf = alloca i8*, align 8
  %strend = alloca i8*, align 8
  %stufflen = alloca i32, align 4
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
  %call = call i32 @atoi(i8* %2) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 10000000, %cond.false ]
  store i32 %cond, i32* %n, align 4
  store i32 32, i32* %buflen, align 4
  %3 = load i32, i32* %buflen, align 4
  %conv = sext i32 %3 to i64
  %call1 = call noalias i8* @calloc(i64 1, i64 %conv) #6
  store i8* %call1, i8** %strbuf, align 8
  %4 = load i8*, i8** %strbuf, align 8
  store i8* %4, i8** %strend, align 8
  store i32 6, i32* %stufflen, align 4
  %5 = load i8*, i8** %strbuf, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  call void @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %cond.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %strbuf, align 8
  %9 = load i32, i32* %buflen, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  %10 = load i8*, i8** %strend, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %11 = load i32, i32* %stufflen, align 4
  %add = add nsw i32 %11, 1
  %conv4 = sext i32 %add to i64
  %cmp5 = icmp slt i64 %sub.ptr.sub, %conv4
  br i1 %cmp5, label %if.then7, label %if.end15

if.then7:                                         ; preds = %for.body
  %12 = load i32, i32* %buflen, align 4
  %mul = mul nsw i32 2, %12
  store i32 %mul, i32* %buflen, align 4
  %13 = load i8*, i8** %strbuf, align 8
  %14 = load i32, i32* %buflen, align 4
  %conv8 = sext i32 %14 to i64
  %call9 = call i8* @realloc(i8* %13, i64 %conv8) #6
  store i8* %call9, i8** %strbuf, align 8
  %15 = load i8*, i8** %strbuf, align 8
  %tobool10 = icmp ne i8* %15, null
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.then7
  call void @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end12:                                         ; preds = %if.then7
  %16 = load i8*, i8** %strbuf, align 8
  %17 = load i8*, i8** %strbuf, align 8
  %call13 = call i64 @strlen(i8* %17) #5
  %add.ptr14 = getelementptr inbounds i8, i8* %16, i64 %call13
  store i8* %add.ptr14, i8** %strend, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end12, %for.body
  %18 = load i8*, i8** %strend, align 8
  %call16 = call i8* @strcat(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)) #6
  %19 = load i32, i32* %stufflen, align 4
  %20 = load i8*, i8** %strend, align 8
  %idx.ext17 = sext i32 %19 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %20, i64 %idx.ext17
  store i8* %add.ptr18, i8** %strend, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i8*, i8** %strbuf, align 8
  %call19 = call i64 @strlen(i8* %22) #5
  %conv20 = trunc i64 %call19 to i32
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %conv20)
  %23 = load i8*, i8** %strbuf, align 8
  call void @free(i8* %23) #6
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare void @perror(i8*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
