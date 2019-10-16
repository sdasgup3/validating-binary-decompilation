; ModuleID = 'fannkuch/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Pfannkuchen(%d) = %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 11, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %call = call i64 @fannkuch(i32 %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 %0, i64 %call)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @fannkuch(i32 %n) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i32, align 4
  %perm = alloca i32*, align 8
  %perm1 = alloca i32*, align 8
  %count = alloca i32*, align 8
  %flips = alloca i64, align 8
  %flipsMax = alloca i64, align 8
  %r = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %didpr = alloca i32, align 4
  %n1 = alloca i32, align 4
  %j = alloca i32, align 4
  %t_mp = alloca i32, align 4
  %perm0 = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %n1, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %2 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 4) #3
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** %perm, align 8
  %4 = load i32, i32* %n.addr, align 4
  %conv1 = sext i32 %4 to i64
  %call2 = call noalias i8* @calloc(i64 %conv1, i64 4) #3
  %5 = bitcast i8* %call2 to i32*
  store i32* %5, i32** %perm1, align 8
  %6 = load i32, i32* %n.addr, align 4
  %conv3 = sext i32 %6 to i64
  %call4 = call noalias i8* @calloc(i64 %conv3, i64 4) #3
  %7 = bitcast i8* %call4 to i32*
  store i32* %7, i32** %count, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %11 = load i32*, i32** %perm1, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  store i32 %10, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %n.addr, align 4
  store i32 %14, i32* %r, align 4
  store i32 0, i32* %didpr, align 4
  store i64 0, i64* %flipsMax, align 8
  br label %for.cond7

for.cond7:                                        ; preds = %for.end103, %for.end
  %15 = load i32, i32* %didpr, align 4
  %cmp8 = icmp slt i32 %15, 30
  br i1 %cmp8, label %if.then10, label %if.end23

if.then10:                                        ; preds = %for.cond7
  store i32 0, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc18, %if.then10
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %n.addr, align 4
  %cmp12 = icmp slt i32 %16, %17
  br i1 %cmp12, label %for.body14, label %for.end20

for.body14:                                       ; preds = %for.cond11
  %18 = load i32*, i32** %perm1, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %18, i64 %idxprom15
  %20 = load i32, i32* %arrayidx16, align 4
  %add = add nsw i32 1, %20
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %add)
  br label %for.inc18

for.inc18:                                        ; preds = %for.body14
  %21 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond11

for.end20:                                        ; preds = %for.cond11
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %22 = load i32, i32* %didpr, align 4
  %inc22 = add nsw i32 %22, 1
  store i32 %inc22, i32* %didpr, align 4
  br label %if.end23

if.end23:                                         ; preds = %for.end20, %for.cond7
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc31, %if.end23
  %23 = load i32, i32* %r, align 4
  %cmp25 = icmp ne i32 %23, 1
  br i1 %cmp25, label %for.body27, label %for.end32

for.body27:                                       ; preds = %for.cond24
  %24 = load i32, i32* %r, align 4
  %25 = load i32*, i32** %count, align 8
  %26 = load i32, i32* %r, align 4
  %sub28 = sub nsw i32 %26, 1
  %idxprom29 = sext i32 %sub28 to i64
  %arrayidx30 = getelementptr inbounds i32, i32* %25, i64 %idxprom29
  store i32 %24, i32* %arrayidx30, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %for.body27
  %27 = load i32, i32* %r, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %r, align 4
  br label %for.cond24

for.end32:                                        ; preds = %for.cond24
  %28 = load i32*, i32** %perm1, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %28, i64 0
  %29 = load i32, i32* %arrayidx33, align 4
  %cmp34 = icmp eq i32 %29, 0
  br i1 %cmp34, label %if.end79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end32
  %30 = load i32*, i32** %perm1, align 8
  %31 = load i32, i32* %n1, align 4
  %idxprom36 = sext i32 %31 to i64
  %arrayidx37 = getelementptr inbounds i32, i32* %30, i64 %idxprom36
  %32 = load i32, i32* %arrayidx37, align 4
  %33 = load i32, i32* %n1, align 4
  %cmp38 = icmp eq i32 %32, %33
  br i1 %cmp38, label %if.end79, label %if.then40

if.then40:                                        ; preds = %lor.lhs.false
  store i64 0, i64* %flips, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc49, %if.then40
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %n.addr, align 4
  %cmp42 = icmp slt i32 %34, %35
  br i1 %cmp42, label %for.body44, label %for.end51

for.body44:                                       ; preds = %for.cond41
  %36 = load i32*, i32** %perm1, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %37 to i64
  %arrayidx46 = getelementptr inbounds i32, i32* %36, i64 %idxprom45
  %38 = load i32, i32* %arrayidx46, align 4
  %39 = load i32*, i32** %perm, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %40 to i64
  %arrayidx48 = getelementptr inbounds i32, i32* %39, i64 %idxprom47
  store i32 %38, i32* %arrayidx48, align 4
  br label %for.inc49

for.inc49:                                        ; preds = %for.body44
  %41 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %41, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond41

for.end51:                                        ; preds = %for.cond41
  %42 = load i32*, i32** %perm1, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %42, i64 0
  %43 = load i32, i32* %arrayidx52, align 4
  store i32 %43, i32* %k, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end51
  store i32 1, i32* %i, align 4
  %44 = load i32, i32* %k, align 4
  %sub53 = sub nsw i32 %44, 1
  store i32 %sub53, i32* %j, align 4
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc66, %do.body
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %j, align 4
  %cmp55 = icmp slt i32 %45, %46
  br i1 %cmp55, label %for.body57, label %for.end69

for.body57:                                       ; preds = %for.cond54
  %47 = load i32*, i32** %perm, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %48 to i64
  %arrayidx59 = getelementptr inbounds i32, i32* %47, i64 %idxprom58
  %49 = load i32, i32* %arrayidx59, align 4
  store i32 %49, i32* %t_mp, align 4
  %50 = load i32*, i32** %perm, align 8
  %51 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %51 to i64
  %arrayidx61 = getelementptr inbounds i32, i32* %50, i64 %idxprom60
  %52 = load i32, i32* %arrayidx61, align 4
  %53 = load i32*, i32** %perm, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %54 to i64
  %arrayidx63 = getelementptr inbounds i32, i32* %53, i64 %idxprom62
  store i32 %52, i32* %arrayidx63, align 4
  %55 = load i32, i32* %t_mp, align 4
  %56 = load i32*, i32** %perm, align 8
  %57 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %57 to i64
  %arrayidx65 = getelementptr inbounds i32, i32* %56, i64 %idxprom64
  store i32 %55, i32* %arrayidx65, align 4
  br label %for.inc66

for.inc66:                                        ; preds = %for.body57
  %58 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %58, 1
  store i32 %inc67, i32* %i, align 4
  %59 = load i32, i32* %j, align 4
  %dec68 = add nsw i32 %59, -1
  store i32 %dec68, i32* %j, align 4
  br label %for.cond54

for.end69:                                        ; preds = %for.cond54
  %60 = load i64, i64* %flips, align 8
  %inc70 = add nsw i64 %60, 1
  store i64 %inc70, i64* %flips, align 8
  %61 = load i32*, i32** %perm, align 8
  %62 = load i32, i32* %k, align 4
  %idxprom71 = sext i32 %62 to i64
  %arrayidx72 = getelementptr inbounds i32, i32* %61, i64 %idxprom71
  %63 = load i32, i32* %arrayidx72, align 4
  store i32 %63, i32* %j, align 4
  %64 = load i32, i32* %k, align 4
  %65 = load i32*, i32** %perm, align 8
  %66 = load i32, i32* %k, align 4
  %idxprom73 = sext i32 %66 to i64
  %arrayidx74 = getelementptr inbounds i32, i32* %65, i64 %idxprom73
  store i32 %64, i32* %arrayidx74, align 4
  %67 = load i32, i32* %j, align 4
  store i32 %67, i32* %k, align 4
  br label %do.cond

do.cond:                                          ; preds = %for.end69
  %68 = load i32, i32* %k, align 4
  %tobool = icmp ne i32 %68, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %69 = load i64, i64* %flipsMax, align 8
  %70 = load i64, i64* %flips, align 8
  %cmp75 = icmp slt i64 %69, %70
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %do.end
  %71 = load i64, i64* %flips, align 8
  store i64 %71, i64* %flipsMax, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %do.end
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %lor.lhs.false, %for.end32
  br label %for.cond80

for.cond80:                                       ; preds = %if.end101, %if.end79
  %72 = load i32, i32* %r, align 4
  %73 = load i32, i32* %n.addr, align 4
  %cmp81 = icmp eq i32 %72, %73
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %for.cond80
  %74 = load i64, i64* %flipsMax, align 8
  store i64 %74, i64* %retval, align 8
  br label %return

if.end84:                                         ; preds = %for.cond80
  %75 = load i32*, i32** %perm1, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %75, i64 0
  %76 = load i32, i32* %arrayidx85, align 4
  store i32 %76, i32* %perm0, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end84
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* %r, align 4
  %cmp86 = icmp slt i32 %77, %78
  br i1 %cmp86, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %79 = load i32, i32* %i, align 4
  %add88 = add nsw i32 %79, 1
  store i32 %add88, i32* %k, align 4
  %80 = load i32*, i32** %perm1, align 8
  %81 = load i32, i32* %k, align 4
  %idxprom89 = sext i32 %81 to i64
  %arrayidx90 = getelementptr inbounds i32, i32* %80, i64 %idxprom89
  %82 = load i32, i32* %arrayidx90, align 4
  %83 = load i32*, i32** %perm1, align 8
  %84 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %84 to i64
  %arrayidx92 = getelementptr inbounds i32, i32* %83, i64 %idxprom91
  store i32 %82, i32* %arrayidx92, align 4
  %85 = load i32, i32* %k, align 4
  store i32 %85, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %86 = load i32, i32* %perm0, align 4
  %87 = load i32*, i32** %perm1, align 8
  %88 = load i32, i32* %r, align 4
  %idxprom93 = sext i32 %88 to i64
  %arrayidx94 = getelementptr inbounds i32, i32* %87, i64 %idxprom93
  store i32 %86, i32* %arrayidx94, align 4
  %89 = load i32*, i32** %count, align 8
  %90 = load i32, i32* %r, align 4
  %idxprom95 = sext i32 %90 to i64
  %arrayidx96 = getelementptr inbounds i32, i32* %89, i64 %idxprom95
  %91 = load i32, i32* %arrayidx96, align 4
  %sub97 = sub nsw i32 %91, 1
  store i32 %sub97, i32* %arrayidx96, align 4
  %cmp98 = icmp sgt i32 %sub97, 0
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %while.end
  br label %for.end103

if.end101:                                        ; preds = %while.end
  %92 = load i32, i32* %r, align 4
  %inc102 = add nsw i32 %92, 1
  store i32 %inc102, i32* %r, align 4
  br label %for.cond80

for.end103:                                       ; preds = %if.then100
  br label %for.cond7

return:                                           ; preds = %if.then83, %if.then
  %93 = load i64, i64* %retval, align 8
  ret i64 %93
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
