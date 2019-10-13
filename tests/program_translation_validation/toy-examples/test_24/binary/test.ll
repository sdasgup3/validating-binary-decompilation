; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/toy-examples/bc-seeds/test_24/test_24.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [38 x i8] c"give me a key in the format key{hex}\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"a winner is you!\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"set sail for fail: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @to_byte(i8 zeroext %b) #0 {
entry:
  %retval = alloca i32, align 4
  %b.addr = alloca i8, align 1
  store i8 %b, i8* %b.addr, align 1
  %0 = load i8, i8* %b.addr, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp sle i32 %conv, 57
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %b.addr, align 1
  %conv2 = zext i8 %1 to i32
  %sub = sub nsw i32 %conv2, 48
  store i32 %sub, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %b.addr, align 1
  %conv3 = zext i8 %2 to i32
  %cmp4 = icmp sle i32 %conv3, 70
  br i1 %cmp4, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %3 = load i8, i8* %b.addr, align 1
  %conv7 = zext i8 %3 to i32
  %sub8 = sub nsw i32 %conv7, 55
  store i32 %sub8, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %4 = load i8, i8* %b.addr, align 1
  %conv10 = zext i8 %4 to i32
  %cmp11 = icmp sle i32 %conv10, 102
  br i1 %cmp11, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  %5 = load i8, i8* %b.addr, align 1
  %conv14 = zext i8 %5 to i32
  %sub15 = sub nsw i32 %conv14, 87
  store i32 %sub15, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end9
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then13, %if.then6, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define i32 @read_bytes(i32 %base, i8* %p, i32 %l) #0 {
entry:
  %base.addr = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %l.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %base, i32* %base.addr, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %l.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %base.addr, align 4
  %shl = shl i32 %2, 4
  store i32 %shl, i32* %base.addr, align 4
  %3 = load i8*, i8** %p.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %call = call i32 @to_byte(i8 zeroext %5)
  %6 = load i32, i32* %base.addr, align 4
  %or = or i32 %6, %call
  store i32 %or, i32* %base.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %base.addr, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %key = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %key, align 8
  %4 = load i8*, i8** %key, align 8
  %call1 = call i32 (i8*, ...) bitcast (i32 (i8*)* @keycomp to i32 (i8*, ...)*)(i8* %4)
  store i32 %call1, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end6

if.else:                                          ; preds = %if.end
  %6 = load i32, i32* %ret, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %6)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %7 = load i32, i32* %ret, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define i32 @keycomp(i8* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %k2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %ll = alloca i32, align 4
  %k5a = alloca i8, align 1
  %k5b = alloca i8, align 1
  %k67 = alloca i8, align 1
  %k89_10_11 = alloca i16, align 2
  %k12_19 = alloca i32, align 4
  %temp = alloca i32, align 4
  %ok = alloca i32, align 4
  %AAAA = alloca i32, align 4
  %k20_27 = alloca i32, align 4
  %k28_31 = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i64 @strlen(i8* %0) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %ll, align 4
  %1 = load i32, i32* %ll, align 4
  %cmp = icmp ne i32 %1, 37
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ll, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %key.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 4
  store i8* %add.ptr, i8** %key.addr, align 8
  %4 = load i8*, i8** %key.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp ne i32 %conv2, 100
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %6 = load i8*, i8** %key.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx7, align 1
  %call8 = call i32 @to_byte(i8 zeroext %7)
  %cmp9 = icmp ne i32 %call8, 9
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  store i32 -3, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end6
  %8 = load i8*, i8** %key.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx13, align 1
  %call14 = call i32 @to_byte(i8 zeroext %9)
  store i32 %call14, i32* %k2, align 4
  %10 = load i32, i32* %k2, align 4
  %mul = mul nsw i32 %10, 2
  %cmp15 = icmp ne i32 %mul, 26
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  store i32 -4, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end12
  %11 = load i8*, i8** %key.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %11, i64 3
  %12 = load i8, i8* %arrayidx19, align 1
  %call20 = call i32 @to_byte(i8 zeroext %12)
  store i32 %call20, i32* %k3, align 4
  %13 = load i32, i32* %k3, align 4
  %add = add nsw i32 %13, 1
  %div = sdiv i32 %add, 2
  %cmp21 = icmp ne i32 %div, 7
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  store i32 -5, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end18
  %14 = load i8*, i8** %key.addr, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %14, i64 4
  %15 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %15 to i32
  %and = and i32 %conv26, 15
  %cmp27 = icmp eq i32 %and, 1
  br i1 %cmp27, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end24
  %16 = load i8*, i8** %key.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %16, i64 4
  %17 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %17 to i32
  %and31 = and i32 %conv30, 240
  %cmp32 = icmp eq i32 %and31, 48
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %land.lhs.true
  store i32 -4, i32* %ret, align 4
  br label %if.end35

if.else:                                          ; preds = %land.lhs.true, %if.end24
  store i32 -6, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.then34
  %18 = load i8*, i8** %key.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %18, i64 5
  %19 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %19 to i32
  %and38 = and i32 %conv37, 15
  %conv39 = trunc i32 %and38 to i8
  store i8 %conv39, i8* %k5a, align 1
  %20 = load i8*, i8** %key.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %20, i64 5
  %21 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %21 to i32
  %and42 = and i32 %conv41, 240
  %conv43 = trunc i32 %and42 to i8
  store i8 %conv43, i8* %k5b, align 1
  %22 = load i8, i8* %k5a, align 1
  %conv44 = zext i8 %22 to i32
  %cmp45 = icmp eq i32 %conv44, 3
  br i1 %cmp45, label %land.lhs.true47, label %if.else53

land.lhs.true47:                                  ; preds = %if.end35
  %23 = load i8, i8* %k5b, align 1
  %conv48 = zext i8 %23 to i32
  %cmp49 = icmp eq i32 %conv48, 96
  br i1 %cmp49, label %if.then51, label %if.else53

if.then51:                                        ; preds = %land.lhs.true47
  %24 = load i32, i32* %ret, align 4
  %add52 = add nsw i32 %24, 4
  store i32 %add52, i32* %ret, align 4
  br label %if.end55

if.else53:                                        ; preds = %land.lhs.true47, %if.end35
  %25 = load i32, i32* %ret, align 4
  %add54 = add nsw i32 %25, 5
  store i32 %add54, i32* %ret, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %if.then51
  %26 = load i8*, i8** %key.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %26, i64 6
  %27 = load i8, i8* %arrayidx56, align 1
  %call57 = call i32 @to_byte(i8 zeroext %27)
  %conv58 = trunc i32 %call57 to i8
  store i8 %conv58, i8* %k67, align 1
  %28 = load i8*, i8** %key.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %28, i64 7
  %29 = load i8, i8* %arrayidx59, align 1
  %call60 = call i32 @to_byte(i8 zeroext %29)
  %30 = load i8, i8* %k67, align 1
  %conv61 = zext i8 %30 to i32
  %or = or i32 %conv61, %call60
  %conv62 = trunc i32 %or to i8
  store i8 %conv62, i8* %k67, align 1
  %31 = load i8, i8* %k67, align 1
  %conv63 = zext i8 %31 to i32
  %neg = xor i32 %conv63, -1
  %cmp64 = icmp eq i32 %neg, 70
  br i1 %cmp64, label %if.then66, label %if.else67

if.then66:                                        ; preds = %if.end55
  %32 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 %32, 1
  store i32 %sub, i32* %ret, align 4
  br label %if.end68

if.else67:                                        ; preds = %if.end55
  %33 = load i32, i32* %ret, align 4
  %34 = load i32, i32* %ret, align 4
  %shl = shl i32 %34, %33
  store i32 %shl, i32* %ret, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else67, %if.then66
  %35 = load i32, i32* %ret, align 4
  %cmp69 = icmp ne i32 %35, 0
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end68
  store i32 -7, i32* %retval, align 4
  br label %return

if.end72:                                         ; preds = %if.end68
  %36 = load i8*, i8** %key.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %36, i64 8
  %call74 = call i32 @read_bytes(i32 0, i8* %arrayidx73, i32 4)
  %conv75 = trunc i32 %call74 to i16
  store i16 %conv75, i16* %k89_10_11, align 2
  %37 = load i16, i16* %k89_10_11, align 2
  %conv76 = zext i16 %37 to i32
  %or77 = or i32 %conv76, 21845
  %cmp78 = icmp eq i32 %or77, 56663
  br i1 %cmp78, label %land.lhs.true80, label %if.else86

land.lhs.true80:                                  ; preds = %if.end72
  %38 = load i16, i16* %k89_10_11, align 2
  %conv81 = zext i16 %38 to i32
  %or82 = or i32 %conv81, 43690
  %cmp83 = icmp eq i32 %or82, 65211
  br i1 %cmp83, label %if.then85, label %if.else86

if.then85:                                        ; preds = %land.lhs.true80
  store i32 43690, i32* %ret, align 4
  br label %if.end87

if.else86:                                        ; preds = %land.lhs.true80, %if.end72
  store i32 48059, i32* %ret, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.else86, %if.then85
  %39 = load i8*, i8** %key.addr, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %39, i64 12
  %call89 = call i32 @read_bytes(i32 0, i8* %arrayidx88, i32 8)
  store i32 %call89, i32* %k12_19, align 4
  %40 = load i32, i32* %k12_19, align 4
  %xor = xor i32 %40, -1534560611
  store i32 %xor, i32* %temp, align 4
  %41 = load i32, i32* %temp, align 4
  %shr = lshr i32 %41, 16
  store i32 %shr, i32* %ok, align 4
  %42 = load i32, i32* %temp, align 4
  %and90 = and i32 %42, 65535
  store i32 %and90, i32* %AAAA, align 4
  %43 = load i32, i32* %ok, align 4
  %cmp91 = icmp eq i32 %43, 79
  br i1 %cmp91, label %land.lhs.true93, label %if.else97

land.lhs.true93:                                  ; preds = %if.end87
  %44 = load i32, i32* %AAAA, align 4
  %45 = load i32, i32* %ret, align 4
  %cmp94 = icmp eq i32 %44, %45
  br i1 %cmp94, label %if.then96, label %if.else97

if.then96:                                        ; preds = %land.lhs.true93
  store i32 0, i32* %ret, align 4
  br label %if.end98

if.else97:                                        ; preds = %land.lhs.true93, %if.end87
  store i32 48351, i32* %ret, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.else97, %if.then96
  %46 = load i32, i32* %ret, align 4
  %47 = load i8*, i8** %key.addr, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %47, i64 20
  %call100 = call i32 @read_bytes(i32 %46, i8* %arrayidx99, i32 8)
  store i32 %call100, i32* %k20_27, align 4
  %48 = load i32, i32* %k20_27, align 4
  %sub101 = sub i32 %48, 3
  store i32 %sub101, i32* %k20_27, align 4
  %49 = load i32, i32* %k20_27, align 4
  %and102 = and i32 %49, 7
  %cmp103 = icmp ne i32 %and102, 0
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end98
  store i32 -21, i32* %retval, align 4
  br label %return

if.end106:                                        ; preds = %if.end98
  %50 = load i32, i32* %k20_27, align 4
  %sub107 = sub i32 %50, -2147483648
  store i32 %sub107, i32* %k20_27, align 4
  %51 = load i32, i32* %k20_27, align 4
  %cmp108 = icmp ugt i32 %51, 268435455
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.end106
  store i32 -22, i32* %retval, align 4
  br label %return

if.end111:                                        ; preds = %if.end106
  %52 = load i32, i32* %k20_27, align 4
  %xor112 = xor i32 %52, 13631488
  store i32 %xor112, i32* %k20_27, align 4
  %53 = load i32, i32* %k20_27, align 4
  %shr113 = lshr i32 %53, 4
  store i32 %shr113, i32* %k20_27, align 4
  %54 = load i32, i32* %k20_27, align 4
  %sub114 = sub i32 %54, 226
  store i32 %sub114, i32* %k20_27, align 4
  %55 = load i32, i32* %k20_27, align 4
  %div115 = udiv i32 %55, 10000
  store i32 %div115, i32* %k20_27, align 4
  %56 = load i32, i32* %k20_27, align 4
  %cmp116 = icmp ne i32 %56, 3
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end111
  %57 = load i32, i32* %k20_27, align 4
  store i32 %57, i32* %retval, align 4
  br label %return

if.end119:                                        ; preds = %if.end111
  %58 = load i32, i32* %ret, align 4
  %59 = load i8*, i8** %key.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %59, i64 28
  %call121 = call i32 @read_bytes(i32 %58, i8* %arrayidx120, i32 4)
  store i32 %call121, i32* %k28_31, align 4
  %60 = load i8*, i8** %key.addr, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %60, i64 28
  %61 = load i8, i8* %arrayidx122, align 1
  %conv123 = sext i8 %61 to i32
  %cmp124 = icmp eq i32 %conv123, 100
  br i1 %cmp124, label %land.lhs.true126, label %if.else133

land.lhs.true126:                                 ; preds = %if.end119
  %62 = load i8*, i8** %key.addr, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %62, i64 29
  %63 = load i8, i8* %arrayidx127, align 1
  %conv128 = sext i8 %63 to i32
  %cmp129 = icmp eq i32 %conv128, 100
  br i1 %cmp129, label %if.then131, label %if.else133

if.then131:                                       ; preds = %land.lhs.true126
  %64 = load i32, i32* %k28_31, align 4
  %65 = load i32, i32* %ret, align 4
  %xor132 = xor i32 %65, %64
  store i32 %xor132, i32* %ret, align 4
  br label %if.end162

if.else133:                                       ; preds = %land.lhs.true126, %if.end119
  %66 = load i8*, i8** %key.addr, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %66, i64 28
  %67 = load i8, i8* %arrayidx134, align 1
  %conv135 = sext i8 %67 to i32
  %68 = load i8*, i8** %key.addr, align 8
  %arrayidx136 = getelementptr inbounds i8, i8* %68, i64 29
  %69 = load i8, i8* %arrayidx136, align 1
  %conv137 = sext i8 %69 to i32
  %cmp138 = icmp eq i32 %conv135, %conv137
  br i1 %cmp138, label %if.then140, label %if.else160

if.then140:                                       ; preds = %if.else133
  %70 = load i8*, i8** %key.addr, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %70, i64 31
  %71 = load i8, i8* %arrayidx141, align 1
  %conv142 = sext i8 %71 to i32
  %72 = load i8*, i8** %key.addr, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %72, i64 30
  %73 = load i8, i8* %arrayidx143, align 1
  %conv144 = sext i8 %73 to i32
  %sub145 = sub nsw i32 %conv142, %conv144
  %sub146 = sub nsw i32 15, %sub145
  %74 = load i32, i32* %ret, align 4
  %add147 = add nsw i32 %74, %sub146
  store i32 %add147, i32* %ret, align 4
  %75 = load i8*, i8** %key.addr, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %75, i64 28
  %76 = load i8, i8* %arrayidx148, align 1
  %call149 = call i32 @to_byte(i8 zeroext %76)
  %77 = load i32, i32* %ret, align 4
  %sub150 = sub i32 %77, %call149
  store i32 %sub150, i32* %ret, align 4
  %78 = load i32, i32* %ret, align 4
  %cmp151 = icmp eq i32 %78, 0
  br i1 %cmp151, label %land.lhs.true153, label %if.end159

land.lhs.true153:                                 ; preds = %if.then140
  %79 = load i8*, i8** %key.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %79, i64 31
  %80 = load i8, i8* %arrayidx154, align 1
  %call155 = call i32 @to_byte(i8 zeroext %80)
  %cmp156 = icmp ne i32 %call155, 4
  br i1 %cmp156, label %if.then158, label %if.end159

if.then158:                                       ; preds = %land.lhs.true153
  store i32 -32, i32* %ret, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then158, %land.lhs.true153, %if.then140
  br label %if.end161

if.else160:                                       ; preds = %if.else133
  %81 = load i32, i32* %k28_31, align 4
  store i32 %81, i32* %ret, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.else160, %if.end159
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.then131
  %82 = load i32, i32* %ret, align 4
  store i32 %82, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end162, %if.then118, %if.then110, %if.then105, %if.then71, %if.else, %if.then23, %if.then17, %if.then11, %if.then5, %if.then
  %83 = load i32, i32* %retval, align 4
  ret i32 %83
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0, !0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
