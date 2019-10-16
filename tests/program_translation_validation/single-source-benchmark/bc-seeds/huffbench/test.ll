; ModuleID = 'huffbench/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ012345\00", align 1
@seed = internal global i64 1325, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"error: bit code overflow\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"error: file has only one value!\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"error: no compression\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"\0Ahuffbench (Std. C) run time: %f\0A\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i8* @generate_test_data(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %codes = alloca i8*, align 8
  %result = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i8** %codes, align 8
  %0 = load i64, i64* %n.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #6
  store i8* %call, i8** %result, align 8
  %1 = load i8*, i8** %result, align 8
  store i8* %1, i8** %ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %3 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %conv, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %codes, align 8
  %call2 = call i64 @random4()
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %call2
  %5 = load i8, i8* %arrayidx, align 1
  %6 = load i8*, i8** %ptr, align 8
  store i8 %5, i8* %6, align 1
  %7 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i8*, i8** %result, align 8
  ret i8* %9
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @random4() #0 {
entry:
  %k = alloca i64, align 8
  %result = alloca i64, align 8
  %0 = load i64, i64* @seed, align 8
  %xor = xor i64 %0, 123459876
  store i64 %xor, i64* @seed, align 8
  %1 = load i64, i64* @seed, align 8
  %div = sdiv i64 %1, 127773
  store i64 %div, i64* %k, align 8
  %2 = load i64, i64* @seed, align 8
  %3 = load i64, i64* %k, align 8
  %mul = mul nsw i64 %3, 127773
  %sub = sub nsw i64 %2, %mul
  %mul1 = mul nsw i64 16807, %sub
  %4 = load i64, i64* %k, align 8
  %mul2 = mul nsw i64 2836, %4
  %sub3 = sub nsw i64 %mul1, %mul2
  store i64 %sub3, i64* @seed, align 8
  %5 = load i64, i64* @seed, align 8
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i64, i64* @seed, align 8
  %add = add nsw i64 %6, 2147483647
  store i64 %add, i64* @seed, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, i64* @seed, align 8
  %rem = srem i64 %7, 32
  store i64 %rem, i64* %result, align 8
  %8 = load i64, i64* @seed, align 8
  %xor4 = xor i64 %8, 123459876
  store i64 %xor4, i64* @seed, align 8
  %9 = load i64, i64* %result, align 8
  ret i64 %9
}

; Function Attrs: noinline nounwind uwtable
define void @compdecomp(i8* %data, i64 %data_len) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %data_len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %n = alloca i64, align 8
  %mask = alloca i64, align 8
  %k = alloca i64, align 8
  %t = alloca i64, align 8
  %c = alloca i8, align 1
  %cptr = alloca i8*, align 8
  %dptr = alloca i8*, align 8
  %comp = alloca i8*, align 8
  %freq = alloca [512 x i64], align 16
  %heap = alloca [256 x i64], align 16
  %link = alloca [512 x i32], align 16
  %code = alloca [256 x i64], align 16
  %clen = alloca [256 x i8], align 16
  %temp = alloca i64, align 8
  %m = alloca i64, align 8
  %x = alloca i64, align 8
  %maxx = alloca i64, align 8
  %maxi = alloca i64, align 8
  %l = alloca i32, align 4
  %comp_len = alloca i64, align 8
  %bout = alloca i8, align 1
  %bit = alloca i32, align 4
  %heap2 = alloca [256 x i64], align 16
  %outc = alloca [256 x i8], align 16
  %optr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_len, i64* %data_len.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %dptr, align 8
  %1 = load i64, i64* %data_len.addr, align 8
  %add = add i64 %1, 1
  %call = call noalias i8* @malloc(i64 %add) #6
  store i8* %call, i8** %comp, align 8
  %2 = load i8*, i8** %comp, align 8
  %3 = load i64, i64* %data_len.addr, align 8
  %add1 = add i64 %3, 1
  %mul = mul i64 1, %add1
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %mul, i32 1, i1 false)
  %arraydecay = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i32 0, i32 0
  %4 = bitcast i64* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 4096, i32 16, i1 false)
  %arraydecay2 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i32 0, i32 0
  %5 = bitcast i64* %arraydecay2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 2048, i32 16, i1 false)
  %arraydecay3 = getelementptr inbounds [512 x i32], [512 x i32]* %link, i32 0, i32 0
  %6 = bitcast i32* %arraydecay3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 2048, i32 16, i1 false)
  %arraydecay4 = getelementptr inbounds [256 x i64], [256 x i64]* %code, i32 0, i32 0
  %7 = bitcast i64* %arraydecay4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 2048, i32 16, i1 false)
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %clen, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %arraydecay5, i8 0, i64 256, i32 16, i1 false)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i64, i64* %i, align 8
  %9 = load i64, i64* %data_len.addr, align 8
  %cmp = icmp ult i64 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %dptr, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i64
  %arrayidx = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i64 0, i64 %conv
  %12 = load i64, i64* %arrayidx, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %arrayidx, align 8
  %13 = load i8*, i8** %dptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %dptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, i64* %i, align 8
  %inc6 = add i64 %14, 1
  store i64 %inc6, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc14, %for.end
  %15 = load i64, i64* %i, align 8
  %cmp8 = icmp ult i64 %15, 256
  br i1 %cmp8, label %for.body10, label %for.end16

for.body10:                                       ; preds = %for.cond7
  %16 = load i64, i64* %i, align 8
  %arrayidx11 = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i64 0, i64 %16
  %17 = load i64, i64* %arrayidx11, align 8
  %tobool = icmp ne i64 %17, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body10
  %18 = load i64, i64* %i, align 8
  %19 = load i64, i64* %n, align 8
  %arrayidx12 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i64 0, i64 %19
  store i64 %18, i64* %arrayidx12, align 8
  %20 = load i64, i64* %n, align 8
  %inc13 = add i64 %20, 1
  store i64 %inc13, i64* %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body10
  br label %for.inc14

for.inc14:                                        ; preds = %if.end
  %21 = load i64, i64* %i, align 8
  %inc15 = add i64 %21, 1
  store i64 %inc15, i64* %i, align 8
  br label %for.cond7

for.end16:                                        ; preds = %for.cond7
  %22 = load i64, i64* %n, align 8
  store i64 %22, i64* %i, align 8
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc25, %for.end16
  %23 = load i64, i64* %i, align 8
  %cmp18 = icmp ugt i64 %23, 0
  br i1 %cmp18, label %for.body20, label %for.end26

for.body20:                                       ; preds = %for.cond17
  %arraydecay21 = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i32 0, i32 0
  %24 = load i64, i64* %n, align 8
  %conv23 = trunc i64 %24 to i32
  %25 = load i64, i64* %i, align 8
  %conv24 = trunc i64 %25 to i32
  call void @heap_adjust(i64* %arraydecay21, i64* %arraydecay22, i32 %conv23, i32 %conv24)
  br label %for.inc25

for.inc25:                                        ; preds = %for.body20
  %26 = load i64, i64* %i, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond17

for.end26:                                        ; preds = %for.cond17
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end26
  %27 = load i64, i64* %n, align 8
  %cmp27 = icmp ugt i64 %27, 1
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load i64, i64* %n, align 8
  %dec29 = add i64 %28, -1
  store i64 %dec29, i64* %n, align 8
  %arrayidx30 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i64 0, i64 0
  %29 = load i64, i64* %arrayidx30, align 16
  store i64 %29, i64* %temp, align 8
  %30 = load i64, i64* %n, align 8
  %arrayidx31 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i64 0, i64 %30
  %31 = load i64, i64* %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i64 0, i64 0
  store i64 %31, i64* %arrayidx32, align 16
  %arraydecay33 = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i32 0, i32 0
  %arraydecay34 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i32 0, i32 0
  %32 = load i64, i64* %n, align 8
  %conv35 = trunc i64 %32 to i32
  call void @heap_adjust(i64* %arraydecay33, i64* %arraydecay34, i32 %conv35, i32 1)
  %arrayidx36 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i64 0, i64 0
  %33 = load i64, i64* %arrayidx36, align 16
  %arrayidx37 = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i64 0, i64 %33
  %34 = load i64, i64* %arrayidx37, align 8
  %35 = load i64, i64* %temp, align 8
  %arrayidx38 = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i64 0, i64 %35
  %36 = load i64, i64* %arrayidx38, align 8
  %add39 = add i64 %34, %36
  %37 = load i64, i64* %n, align 8
  %add40 = add i64 256, %37
  %arrayidx41 = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i64 0, i64 %add40
  store i64 %add39, i64* %arrayidx41, align 8
  %38 = load i64, i64* %n, align 8
  %add42 = add i64 256, %38
  %conv43 = trunc i64 %add42 to i32
  %39 = load i64, i64* %temp, align 8
  %arrayidx44 = getelementptr inbounds [512 x i32], [512 x i32]* %link, i64 0, i64 %39
  store i32 %conv43, i32* %arrayidx44, align 4
  %40 = load i64, i64* %n, align 8
  %sub = sub i64 -256, %40
  %conv45 = trunc i64 %sub to i32
  %arrayidx46 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i64 0, i64 0
  %41 = load i64, i64* %arrayidx46, align 16
  %arrayidx47 = getelementptr inbounds [512 x i32], [512 x i32]* %link, i64 0, i64 %41
  store i32 %conv45, i32* %arrayidx47, align 4
  %42 = load i64, i64* %n, align 8
  %add48 = add i64 256, %42
  %arrayidx49 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i64 0, i64 0
  store i64 %add48, i64* %arrayidx49, align 16
  %arraydecay50 = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i32 0, i32 0
  %arraydecay51 = getelementptr inbounds [256 x i64], [256 x i64]* %heap, i32 0, i32 0
  %43 = load i64, i64* %n, align 8
  %conv52 = trunc i64 %43 to i32
  call void @heap_adjust(i64* %arraydecay50, i64* %arraydecay51, i32 %conv52, i32 1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %44 = load i64, i64* %n, align 8
  %add53 = add i64 256, %44
  %arrayidx54 = getelementptr inbounds [512 x i32], [512 x i32]* %link, i64 0, i64 %add53
  store i32 0, i32* %arrayidx54, align 4
  store i64 0, i64* %maxx, align 8
  store i64 0, i64* %maxi, align 8
  store i64 0, i64* %m, align 8
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc89, %while.end
  %45 = load i64, i64* %m, align 8
  %cmp56 = icmp ult i64 %45, 256
  br i1 %cmp56, label %for.body58, label %for.end91

for.body58:                                       ; preds = %for.cond55
  %46 = load i64, i64* %m, align 8
  %arrayidx59 = getelementptr inbounds [512 x i64], [512 x i64]* %freq, i64 0, i64 %46
  %47 = load i64, i64* %arrayidx59, align 8
  %tobool60 = icmp ne i64 %47, 0
  br i1 %tobool60, label %if.else, label %if.then61

if.then61:                                        ; preds = %for.body58
  %48 = load i64, i64* %m, align 8
  %arrayidx62 = getelementptr inbounds [256 x i64], [256 x i64]* %code, i64 0, i64 %48
  store i64 0, i64* %arrayidx62, align 8
  %49 = load i64, i64* %m, align 8
  %arrayidx63 = getelementptr inbounds [256 x i8], [256 x i8]* %clen, i64 0, i64 %49
  store i8 0, i8* %arrayidx63, align 1
  br label %if.end88

if.else:                                          ; preds = %for.body58
  store i64 0, i64* %i, align 8
  store i64 1, i64* %j, align 8
  store i64 0, i64* %x, align 8
  %50 = load i64, i64* %m, align 8
  %arrayidx64 = getelementptr inbounds [512 x i32], [512 x i32]* %link, i64 0, i64 %50
  %51 = load i32, i32* %arrayidx64, align 4
  store i32 %51, i32* %l, align 4
  br label %while.cond65

while.cond65:                                     ; preds = %if.end73, %if.else
  %52 = load i32, i32* %l, align 4
  %tobool66 = icmp ne i32 %52, 0
  br i1 %tobool66, label %while.body67, label %while.end76

while.body67:                                     ; preds = %while.cond65
  %53 = load i32, i32* %l, align 4
  %cmp68 = icmp slt i32 %53, 0
  br i1 %cmp68, label %if.then70, label %if.end73

if.then70:                                        ; preds = %while.body67
  %54 = load i64, i64* %j, align 8
  %55 = load i64, i64* %x, align 8
  %add71 = add i64 %55, %54
  store i64 %add71, i64* %x, align 8
  %56 = load i32, i32* %l, align 4
  %sub72 = sub nsw i32 0, %56
  store i32 %sub72, i32* %l, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %while.body67
  %57 = load i32, i32* %l, align 4
  %idxprom = sext i32 %57 to i64
  %arrayidx74 = getelementptr inbounds [512 x i32], [512 x i32]* %link, i64 0, i64 %idxprom
  %58 = load i32, i32* %arrayidx74, align 4
  store i32 %58, i32* %l, align 4
  %59 = load i64, i64* %j, align 8
  %shl = shl i64 %59, 1
  store i64 %shl, i64* %j, align 8
  %60 = load i64, i64* %i, align 8
  %inc75 = add i64 %60, 1
  store i64 %inc75, i64* %i, align 8
  br label %while.cond65

while.end76:                                      ; preds = %while.cond65
  %61 = load i64, i64* %x, align 8
  %62 = load i64, i64* %m, align 8
  %arrayidx77 = getelementptr inbounds [256 x i64], [256 x i64]* %code, i64 0, i64 %62
  store i64 %61, i64* %arrayidx77, align 8
  %63 = load i64, i64* %i, align 8
  %conv78 = trunc i64 %63 to i8
  %64 = load i64, i64* %m, align 8
  %arrayidx79 = getelementptr inbounds [256 x i8], [256 x i8]* %clen, i64 0, i64 %64
  store i8 %conv78, i8* %arrayidx79, align 1
  %65 = load i64, i64* %x, align 8
  %66 = load i64, i64* %maxx, align 8
  %cmp80 = icmp ugt i64 %65, %66
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %while.end76
  %67 = load i64, i64* %x, align 8
  store i64 %67, i64* %maxx, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %while.end76
  %68 = load i64, i64* %i, align 8
  %69 = load i64, i64* %maxi, align 8
  %cmp84 = icmp ugt i64 %68, %69
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end83
  %70 = load i64, i64* %i, align 8
  store i64 %70, i64* %maxi, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end83
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then61
  br label %for.inc89

for.inc89:                                        ; preds = %if.end88
  %71 = load i64, i64* %m, align 8
  %inc90 = add i64 %71, 1
  store i64 %inc90, i64* %m, align 8
  br label %for.cond55

for.end91:                                        ; preds = %for.cond55
  %72 = load i64, i64* %maxi, align 8
  %cmp92 = icmp ugt i64 %72, 64
  br i1 %cmp92, label %if.then94, label %if.end96

if.then94:                                        ; preds = %for.end91
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end96:                                         ; preds = %for.end91
  store i64 0, i64* %comp_len, align 8
  store i8 0, i8* %bout, align 1
  store i32 -1, i32* %bit, align 4
  %74 = load i8*, i8** %data.addr, align 8
  store i8* %74, i8** %dptr, align 8
  %75 = load i64, i64* %maxx, align 8
  %cmp97 = icmp eq i64 %75, 0
  br i1 %cmp97, label %if.then99, label %if.end101

if.then99:                                        ; preds = %if.end96
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end101:                                        ; preds = %if.end96
  store i64 0, i64* %j, align 8
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc146, %if.end101
  %77 = load i64, i64* %j, align 8
  %78 = load i64, i64* %data_len.addr, align 8
  %cmp103 = icmp ult i64 %77, %78
  br i1 %cmp103, label %for.body105, label %for.end148

for.body105:                                      ; preds = %for.cond102
  %79 = load i8*, i8** %dptr, align 8
  %80 = load i8, i8* %79, align 1
  %idxprom106 = zext i8 %80 to i64
  %arrayidx107 = getelementptr inbounds [256 x i8], [256 x i8]* %clen, i64 0, i64 %idxprom106
  %81 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %81 to i32
  %sub109 = sub nsw i32 %conv108, 1
  %shl110 = shl i32 1, %sub109
  %conv111 = sext i32 %shl110 to i64
  store i64 %conv111, i64* %mask, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc142, %for.body105
  %82 = load i64, i64* %i, align 8
  %83 = load i8*, i8** %dptr, align 8
  %84 = load i8, i8* %83, align 1
  %idxprom113 = zext i8 %84 to i64
  %arrayidx114 = getelementptr inbounds [256 x i8], [256 x i8]* %clen, i64 0, i64 %idxprom113
  %85 = load i8, i8* %arrayidx114, align 1
  %conv115 = zext i8 %85 to i64
  %cmp116 = icmp ult i64 %82, %conv115
  br i1 %cmp116, label %for.body118, label %for.end144

for.body118:                                      ; preds = %for.cond112
  %86 = load i32, i32* %bit, align 4
  %cmp119 = icmp eq i32 %86, 7
  br i1 %cmp119, label %if.then121, label %if.else129

if.then121:                                       ; preds = %for.body118
  %87 = load i8, i8* %bout, align 1
  %88 = load i8*, i8** %comp, align 8
  %89 = load i64, i64* %comp_len, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8 %87, i8* %arrayidx122, align 1
  %90 = load i64, i64* %comp_len, align 8
  %inc123 = add i64 %90, 1
  store i64 %inc123, i64* %comp_len, align 8
  %91 = load i64, i64* %comp_len, align 8
  %92 = load i64, i64* %data_len.addr, align 8
  %cmp124 = icmp eq i64 %91, %92
  br i1 %cmp124, label %if.then126, label %if.end128

if.then126:                                       ; preds = %if.then121
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end128:                                        ; preds = %if.then121
  store i32 0, i32* %bit, align 4
  store i8 0, i8* %bout, align 1
  br label %if.end134

if.else129:                                       ; preds = %for.body118
  %94 = load i32, i32* %bit, align 4
  %inc130 = add nsw i32 %94, 1
  store i32 %inc130, i32* %bit, align 4
  %95 = load i8, i8* %bout, align 1
  %conv131 = sext i8 %95 to i32
  %shl132 = shl i32 %conv131, 1
  %conv133 = trunc i32 %shl132 to i8
  store i8 %conv133, i8* %bout, align 1
  br label %if.end134

if.end134:                                        ; preds = %if.else129, %if.end128
  %96 = load i8*, i8** %dptr, align 8
  %97 = load i8, i8* %96, align 1
  %idxprom135 = zext i8 %97 to i64
  %arrayidx136 = getelementptr inbounds [256 x i64], [256 x i64]* %code, i64 0, i64 %idxprom135
  %98 = load i64, i64* %arrayidx136, align 8
  %99 = load i64, i64* %mask, align 8
  %and = and i64 %98, %99
  %tobool137 = icmp ne i64 %and, 0
  br i1 %tobool137, label %if.then138, label %if.end141

if.then138:                                       ; preds = %if.end134
  %100 = load i8, i8* %bout, align 1
  %conv139 = sext i8 %100 to i32
  %or = or i32 %conv139, 1
  %conv140 = trunc i32 %or to i8
  store i8 %conv140, i8* %bout, align 1
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %if.end134
  %101 = load i64, i64* %mask, align 8
  %shr = lshr i64 %101, 1
  store i64 %shr, i64* %mask, align 8
  br label %for.inc142

for.inc142:                                       ; preds = %if.end141
  %102 = load i64, i64* %i, align 8
  %inc143 = add i64 %102, 1
  store i64 %inc143, i64* %i, align 8
  br label %for.cond112

for.end144:                                       ; preds = %for.cond112
  %103 = load i8*, i8** %dptr, align 8
  %incdec.ptr145 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr145, i8** %dptr, align 8
  br label %for.inc146

for.inc146:                                       ; preds = %for.end144
  %104 = load i64, i64* %j, align 8
  %inc147 = add i64 %104, 1
  store i64 %inc147, i64* %j, align 8
  br label %for.cond102

for.end148:                                       ; preds = %for.cond102
  %105 = load i32, i32* %bit, align 4
  %sub149 = sub nsw i32 7, %105
  %106 = load i8, i8* %bout, align 1
  %conv150 = sext i8 %106 to i32
  %shl151 = shl i32 %conv150, %sub149
  %conv152 = trunc i32 %shl151 to i8
  store i8 %conv152, i8* %bout, align 1
  %107 = load i8, i8* %bout, align 1
  %108 = load i8*, i8** %comp, align 8
  %109 = load i64, i64* %comp_len, align 8
  %arrayidx153 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8 %107, i8* %arrayidx153, align 1
  %110 = load i64, i64* %comp_len, align 8
  %inc154 = add i64 %110, 1
  store i64 %inc154, i64* %comp_len, align 8
  %arraydecay155 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i32 0, i32 0
  %111 = bitcast i64* %arraydecay155 to i8*
  call void @llvm.memset.p0i8.i64(i8* %111, i8 0, i64 2048, i32 16, i1 false)
  %arraydecay156 = getelementptr inbounds [256 x i8], [256 x i8]* %outc, i32 0, i32 0
  store i8* %arraydecay156, i8** %optr, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond157

for.cond157:                                      ; preds = %for.inc194, %for.end148
  %112 = load i64, i64* %j, align 8
  %cmp158 = icmp ult i64 %112, 256
  br i1 %cmp158, label %for.body160, label %for.end196

for.body160:                                      ; preds = %for.cond157
  %113 = load i64, i64* %j, align 8
  %conv161 = trunc i64 %113 to i8
  %114 = load i8*, i8** %optr, align 8
  store i8 %conv161, i8* %114, align 1
  %115 = load i8*, i8** %optr, align 8
  %incdec.ptr162 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr162, i8** %optr, align 8
  %116 = load i64, i64* %j, align 8
  %arrayidx163 = getelementptr inbounds [256 x i64], [256 x i64]* %code, i64 0, i64 %116
  %117 = load i64, i64* %arrayidx163, align 8
  %118 = load i64, i64* %j, align 8
  %arrayidx164 = getelementptr inbounds [256 x i8], [256 x i8]* %clen, i64 0, i64 %118
  %119 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %119 to i64
  %or166 = or i64 %117, %conv165
  %tobool167 = icmp ne i64 %or166, 0
  br i1 %tobool167, label %if.then168, label %if.end193

if.then168:                                       ; preds = %for.body160
  store i64 0, i64* %k, align 8
  %120 = load i64, i64* %j, align 8
  %arrayidx169 = getelementptr inbounds [256 x i8], [256 x i8]* %clen, i64 0, i64 %120
  %121 = load i8, i8* %arrayidx169, align 1
  %conv170 = zext i8 %121 to i32
  %sub171 = sub nsw i32 %conv170, 1
  %shl172 = shl i32 1, %sub171
  %conv173 = sext i32 %shl172 to i64
  store i64 %conv173, i64* %mask, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond174

for.cond174:                                      ; preds = %for.inc189, %if.then168
  %122 = load i64, i64* %i, align 8
  %123 = load i64, i64* %j, align 8
  %arrayidx175 = getelementptr inbounds [256 x i8], [256 x i8]* %clen, i64 0, i64 %123
  %124 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %124 to i64
  %cmp177 = icmp ult i64 %122, %conv176
  br i1 %cmp177, label %for.body179, label %for.end191

for.body179:                                      ; preds = %for.cond174
  %125 = load i64, i64* %k, align 8
  %mul180 = mul i64 %125, 2
  %add181 = add i64 %mul180, 1
  store i64 %add181, i64* %k, align 8
  %126 = load i64, i64* %j, align 8
  %arrayidx182 = getelementptr inbounds [256 x i64], [256 x i64]* %code, i64 0, i64 %126
  %127 = load i64, i64* %arrayidx182, align 8
  %128 = load i64, i64* %mask, align 8
  %and183 = and i64 %127, %128
  %tobool184 = icmp ne i64 %and183, 0
  br i1 %tobool184, label %if.then185, label %if.end187

if.then185:                                       ; preds = %for.body179
  %129 = load i64, i64* %k, align 8
  %inc186 = add i64 %129, 1
  store i64 %inc186, i64* %k, align 8
  br label %if.end187

if.end187:                                        ; preds = %if.then185, %for.body179
  %130 = load i64, i64* %mask, align 8
  %shr188 = lshr i64 %130, 1
  store i64 %shr188, i64* %mask, align 8
  br label %for.inc189

for.inc189:                                       ; preds = %if.end187
  %131 = load i64, i64* %i, align 8
  %inc190 = add i64 %131, 1
  store i64 %inc190, i64* %i, align 8
  br label %for.cond174

for.end191:                                       ; preds = %for.cond174
  %132 = load i64, i64* %k, align 8
  %133 = load i64, i64* %j, align 8
  %arrayidx192 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i64 0, i64 %133
  store i64 %132, i64* %arrayidx192, align 8
  br label %if.end193

if.end193:                                        ; preds = %for.end191, %for.body160
  br label %for.inc194

for.inc194:                                       ; preds = %if.end193
  %134 = load i64, i64* %j, align 8
  %inc195 = add i64 %134, 1
  store i64 %inc195, i64* %j, align 8
  br label %for.cond157

for.end196:                                       ; preds = %for.cond157
  store i64 1, i64* %i, align 8
  br label %for.cond197

for.cond197:                                      ; preds = %for.inc220, %for.end196
  %135 = load i64, i64* %i, align 8
  %cmp198 = icmp ult i64 %135, 256
  br i1 %cmp198, label %for.body200, label %for.end222

for.body200:                                      ; preds = %for.cond197
  %136 = load i64, i64* %i, align 8
  %arrayidx201 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i64 0, i64 %136
  %137 = load i64, i64* %arrayidx201, align 8
  store i64 %137, i64* %t, align 8
  %138 = load i64, i64* %i, align 8
  %arrayidx202 = getelementptr inbounds [256 x i8], [256 x i8]* %outc, i64 0, i64 %138
  %139 = load i8, i8* %arrayidx202, align 1
  store i8 %139, i8* %c, align 1
  %140 = load i64, i64* %i, align 8
  store i64 %140, i64* %j, align 8
  br label %while.cond203

while.cond203:                                    ; preds = %while.body209, %for.body200
  %141 = load i64, i64* %j, align 8
  %tobool204 = icmp ne i64 %141, 0
  br i1 %tobool204, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond203
  %142 = load i64, i64* %j, align 8
  %sub205 = sub i64 %142, 1
  %arrayidx206 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i64 0, i64 %sub205
  %143 = load i64, i64* %arrayidx206, align 8
  %144 = load i64, i64* %t, align 8
  %cmp207 = icmp ugt i64 %143, %144
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond203
  %145 = phi i1 [ false, %while.cond203 ], [ %cmp207, %land.rhs ]
  br i1 %145, label %while.body209, label %while.end217

while.body209:                                    ; preds = %land.end
  %146 = load i64, i64* %j, align 8
  %sub210 = sub i64 %146, 1
  %arrayidx211 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i64 0, i64 %sub210
  %147 = load i64, i64* %arrayidx211, align 8
  %148 = load i64, i64* %j, align 8
  %arrayidx212 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i64 0, i64 %148
  store i64 %147, i64* %arrayidx212, align 8
  %149 = load i64, i64* %j, align 8
  %sub213 = sub i64 %149, 1
  %arrayidx214 = getelementptr inbounds [256 x i8], [256 x i8]* %outc, i64 0, i64 %sub213
  %150 = load i8, i8* %arrayidx214, align 1
  %151 = load i64, i64* %j, align 8
  %arrayidx215 = getelementptr inbounds [256 x i8], [256 x i8]* %outc, i64 0, i64 %151
  store i8 %150, i8* %arrayidx215, align 1
  %152 = load i64, i64* %j, align 8
  %dec216 = add i64 %152, -1
  store i64 %dec216, i64* %j, align 8
  br label %while.cond203

while.end217:                                     ; preds = %land.end
  %153 = load i64, i64* %t, align 8
  %154 = load i64, i64* %j, align 8
  %arrayidx218 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i64 0, i64 %154
  store i64 %153, i64* %arrayidx218, align 8
  %155 = load i8, i8* %c, align 1
  %156 = load i64, i64* %j, align 8
  %arrayidx219 = getelementptr inbounds [256 x i8], [256 x i8]* %outc, i64 0, i64 %156
  store i8 %155, i8* %arrayidx219, align 1
  br label %for.inc220

for.inc220:                                       ; preds = %while.end217
  %157 = load i64, i64* %i, align 8
  %inc221 = add i64 %157, 1
  store i64 %inc221, i64* %i, align 8
  br label %for.cond197

for.end222:                                       ; preds = %for.cond197
  store i64 0, i64* %j, align 8
  br label %for.cond223

for.cond223:                                      ; preds = %for.inc228, %for.end222
  %158 = load i64, i64* %j, align 8
  %arrayidx224 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i64 0, i64 %158
  %159 = load i64, i64* %arrayidx224, align 8
  %cmp225 = icmp eq i64 %159, 0
  br i1 %cmp225, label %for.body227, label %for.end230

for.body227:                                      ; preds = %for.cond223
  br label %for.inc228

for.inc228:                                       ; preds = %for.body227
  %160 = load i64, i64* %j, align 8
  %inc229 = add i64 %160, 1
  store i64 %inc229, i64* %j, align 8
  br label %for.cond223

for.end230:                                       ; preds = %for.cond223
  store i64 0, i64* %k, align 8
  %161 = load i64, i64* %j, align 8
  store i64 %161, i64* %i, align 8
  store i64 128, i64* %mask, align 8
  store i64 0, i64* %n, align 8
  %162 = load i8*, i8** %comp, align 8
  store i8* %162, i8** %cptr, align 8
  %163 = load i8*, i8** %data.addr, align 8
  store i8* %163, i8** %dptr, align 8
  br label %while.cond231

while.cond231:                                    ; preds = %if.end264, %for.end230
  %164 = load i64, i64* %n, align 8
  %165 = load i64, i64* %data_len.addr, align 8
  %cmp232 = icmp ult i64 %164, %165
  br i1 %cmp232, label %while.body234, label %while.end265

while.body234:                                    ; preds = %while.cond231
  %166 = load i64, i64* %k, align 8
  %mul235 = mul i64 %166, 2
  %add236 = add i64 %mul235, 1
  store i64 %add236, i64* %k, align 8
  %167 = load i8*, i8** %cptr, align 8
  %168 = load i8, i8* %167, align 1
  %conv237 = zext i8 %168 to i64
  %169 = load i64, i64* %mask, align 8
  %and238 = and i64 %conv237, %169
  %tobool239 = icmp ne i64 %and238, 0
  br i1 %tobool239, label %if.then240, label %if.end242

if.then240:                                       ; preds = %while.body234
  %170 = load i64, i64* %k, align 8
  %inc241 = add i64 %170, 1
  store i64 %inc241, i64* %k, align 8
  br label %if.end242

if.end242:                                        ; preds = %if.then240, %while.body234
  br label %while.cond243

while.cond243:                                    ; preds = %while.body247, %if.end242
  %171 = load i64, i64* %i, align 8
  %arrayidx244 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i64 0, i64 %171
  %172 = load i64, i64* %arrayidx244, align 8
  %173 = load i64, i64* %k, align 8
  %cmp245 = icmp ult i64 %172, %173
  br i1 %cmp245, label %while.body247, label %while.end249

while.body247:                                    ; preds = %while.cond243
  %174 = load i64, i64* %i, align 8
  %inc248 = add i64 %174, 1
  store i64 %inc248, i64* %i, align 8
  br label %while.cond243

while.end249:                                     ; preds = %while.cond243
  %175 = load i64, i64* %k, align 8
  %176 = load i64, i64* %i, align 8
  %arrayidx250 = getelementptr inbounds [256 x i64], [256 x i64]* %heap2, i64 0, i64 %176
  %177 = load i64, i64* %arrayidx250, align 8
  %cmp251 = icmp eq i64 %175, %177
  br i1 %cmp251, label %if.then253, label %if.end257

if.then253:                                       ; preds = %while.end249
  %178 = load i64, i64* %i, align 8
  %arrayidx254 = getelementptr inbounds [256 x i8], [256 x i8]* %outc, i64 0, i64 %178
  %179 = load i8, i8* %arrayidx254, align 1
  %180 = load i8*, i8** %dptr, align 8
  store i8 %179, i8* %180, align 1
  %181 = load i8*, i8** %dptr, align 8
  %incdec.ptr255 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %incdec.ptr255, i8** %dptr, align 8
  %182 = load i64, i64* %n, align 8
  %inc256 = add i64 %182, 1
  store i64 %inc256, i64* %n, align 8
  store i64 0, i64* %k, align 8
  %183 = load i64, i64* %j, align 8
  store i64 %183, i64* %i, align 8
  br label %if.end257

if.end257:                                        ; preds = %if.then253, %while.end249
  %184 = load i64, i64* %mask, align 8
  %cmp258 = icmp ugt i64 %184, 1
  br i1 %cmp258, label %if.then260, label %if.else262

if.then260:                                       ; preds = %if.end257
  %185 = load i64, i64* %mask, align 8
  %shr261 = lshr i64 %185, 1
  store i64 %shr261, i64* %mask, align 8
  br label %if.end264

if.else262:                                       ; preds = %if.end257
  store i64 128, i64* %mask, align 8
  %186 = load i8*, i8** %cptr, align 8
  %incdec.ptr263 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %incdec.ptr263, i8** %cptr, align 8
  br label %if.end264

if.end264:                                        ; preds = %if.else262, %if.then260
  br label %while.cond231

while.end265:                                     ; preds = %while.cond231
  %187 = load i8*, i8** %comp, align 8
  call void @free(i8* %187) #6
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: noinline nounwind uwtable
define internal void @heap_adjust(i64* %freq, i64* %heap, i32 %n, i32 %k) #0 {
entry:
  %freq.addr = alloca i64*, align 8
  %heap.addr = alloca i64*, align 8
  %n.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %v = alloca i32, align 4
  store i64* %freq, i64** %freq.addr, align 8
  store i64* %heap, i64** %heap.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load i64*, i64** %heap.addr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %0, i32 -1
  store i64* %incdec.ptr, i64** %heap.addr, align 8
  %1 = load i64*, i64** %heap.addr, align 8
  %2 = load i32, i32* %k.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %conv = trunc i64 %3 to i32
  store i32 %conv, i32* %v, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end21, %entry
  %4 = load i32, i32* %k.addr, align 4
  %5 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %5, 2
  %cmp = icmp sle i32 %4, %div
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %k.addr, align 4
  %7 = load i32, i32* %k.addr, align 4
  %add = add nsw i32 %6, %7
  store i32 %add, i32* %j, align 4
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %10 = load i64*, i64** %freq.addr, align 8
  %11 = load i64*, i64** %heap.addr, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i64, i64* %11, i64 %idxprom4
  %13 = load i64, i64* %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %10, i64 %13
  %14 = load i64, i64* %arrayidx6, align 8
  %15 = load i64*, i64** %freq.addr, align 8
  %16 = load i64*, i64** %heap.addr, align 8
  %17 = load i32, i32* %j, align 4
  %add7 = add nsw i32 %17, 1
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds i64, i64* %16, i64 %idxprom8
  %18 = load i64, i64* %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %15, i64 %18
  %19 = load i64, i64* %arrayidx10, align 8
  %cmp11 = icmp ugt i64 %14, %19
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %21 = load i64*, i64** %freq.addr, align 8
  %22 = load i32, i32* %v, align 4
  %idxprom13 = sext i32 %22 to i64
  %arrayidx14 = getelementptr inbounds i64, i64* %21, i64 %idxprom13
  %23 = load i64, i64* %arrayidx14, align 8
  %24 = load i64*, i64** %freq.addr, align 8
  %25 = load i64*, i64** %heap.addr, align 8
  %26 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds i64, i64* %25, i64 %idxprom15
  %27 = load i64, i64* %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i64, i64* %24, i64 %27
  %28 = load i64, i64* %arrayidx17, align 8
  %cmp18 = icmp ult i64 %23, %28
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end
  br label %while.end

if.end21:                                         ; preds = %if.end
  %29 = load i64*, i64** %heap.addr, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %30 to i64
  %arrayidx23 = getelementptr inbounds i64, i64* %29, i64 %idxprom22
  %31 = load i64, i64* %arrayidx23, align 8
  %32 = load i64*, i64** %heap.addr, align 8
  %33 = load i32, i32* %k.addr, align 4
  %idxprom24 = sext i32 %33 to i64
  %arrayidx25 = getelementptr inbounds i64, i64* %32, i64 %idxprom24
  store i64 %31, i64* %arrayidx25, align 8
  %34 = load i32, i32* %j, align 4
  store i32 %34, i32* %k.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then20, %while.cond
  %35 = load i32, i32* %v, align 4
  %conv26 = sext i32 %35 to i64
  %36 = load i64*, i64** %heap.addr, align 8
  %37 = load i32, i32* %k.addr, align 4
  %idxprom27 = sext i32 %37 to i64
  %arrayidx28 = getelementptr inbounds i64, i64* %36, i64 %idxprom27
  store i64 %conv26, i64* %arrayidx28, align 8
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %ga_testing = alloca i8, align 1
  %test_data = alloca i8*, align 8
  %run_time = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8 0, i8* %ga_testing, align 1
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %for.body
  store i8 1, i8* %ga_testing, align 1
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then2, %for.cond
  br label %if.end3

if.end3:                                          ; preds = %for.end, %entry
  %call4 = call i8* @generate_test_data(i64 10000000)
  store i8* %call4, i8** %test_data, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc8, %if.end3
  %6 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %6, 30
  br i1 %cmp6, label %for.body7, label %for.end10

for.body7:                                        ; preds = %for.cond5
  %7 = load i8*, i8** %test_data, align 8
  call void @compdecomp(i8* %7, i64 10000000)
  br label %for.inc8

for.inc8:                                         ; preds = %for.body7
  %8 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %8, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond5

for.end10:                                        ; preds = %for.cond5
  store double 0.000000e+00, double* %run_time, align 8
  %9 = load i8*, i8** %test_data, align 8
  call void @free(i8* %9) #6
  %10 = load i8, i8* %ga_testing, align 1
  %tobool11 = trunc i8 %10 to i1
  br i1 %tobool11, label %if.then12, label %if.else

if.then12:                                        ; preds = %for.end10
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %12 = load double, double* %run_time, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), double %12)
  br label %if.end15

if.else:                                          ; preds = %for.end10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = load double, double* %run_time, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), double %14)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call16 = call i32 @fflush(%struct._IO_FILE* %15)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare i32 @fflush(%struct._IO_FILE*) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
