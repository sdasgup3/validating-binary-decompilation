; ModuleID = 'revertBits/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"0x12345678\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"0x0123456789012345\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"0x%x -> 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"0x%llx -> 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ReverseBits32(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %shr = lshr i32 %0, 1
  %and = and i32 %shr, 1431655765
  %1 = load i32, i32* %n.addr, align 4
  %and1 = and i32 %1, 1431655765
  %shl = shl i32 %and1, 1
  %or = or i32 %and, %shl
  store i32 %or, i32* %n.addr, align 4
  %2 = load i32, i32* %n.addr, align 4
  %shr2 = lshr i32 %2, 2
  %and3 = and i32 %shr2, 858993459
  %3 = load i32, i32* %n.addr, align 4
  %and4 = and i32 %3, 858993459
  %shl5 = shl i32 %and4, 2
  %or6 = or i32 %and3, %shl5
  store i32 %or6, i32* %n.addr, align 4
  %4 = load i32, i32* %n.addr, align 4
  %shr7 = lshr i32 %4, 4
  %and8 = and i32 %shr7, 252645135
  %5 = load i32, i32* %n.addr, align 4
  %and9 = and i32 %5, 252645135
  %shl10 = shl i32 %and9, 4
  %or11 = or i32 %and8, %shl10
  store i32 %or11, i32* %n.addr, align 4
  %6 = load i32, i32* %n.addr, align 4
  %and12 = and i32 %6, -16777216
  %shr13 = lshr i32 %and12, 24
  %7 = load i32, i32* %n.addr, align 4
  %and14 = and i32 %7, 16711680
  %shr15 = lshr i32 %and14, 8
  %or16 = or i32 %shr13, %shr15
  %8 = load i32, i32* %n.addr, align 4
  %and17 = and i32 %8, 65280
  %shl18 = shl i32 %and17, 8
  %or19 = or i32 %or16, %shl18
  %9 = load i32, i32* %n.addr, align 4
  %and20 = and i32 %9, 255
  %shl21 = shl i32 %and20, 24
  %or22 = or i32 %or19, %shl21
  ret i32 %or22
}

; Function Attrs: noinline nounwind uwtable
define i64 @ReverseBits64(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %shr = lshr i64 %0, 1
  %and = and i64 %shr, 6148914691236517205
  %1 = load i64, i64* %n.addr, align 8
  %and1 = and i64 %1, 6148914691236517205
  %shl = shl i64 %and1, 1
  %or = or i64 %and, %shl
  store i64 %or, i64* %n.addr, align 8
  %2 = load i64, i64* %n.addr, align 8
  %shr2 = lshr i64 %2, 2
  %and3 = and i64 %shr2, 3689348814741910323
  %3 = load i64, i64* %n.addr, align 8
  %and4 = and i64 %3, 3689348814741910323
  %shl5 = shl i64 %and4, 2
  %or6 = or i64 %and3, %shl5
  store i64 %or6, i64* %n.addr, align 8
  %4 = load i64, i64* %n.addr, align 8
  %shr7 = lshr i64 %4, 4
  %and8 = and i64 %shr7, 1085102592571150095
  %5 = load i64, i64* %n.addr, align 8
  %and9 = and i64 %5, 1085102592571150095
  %shl10 = shl i64 %and9, 4
  %or11 = or i64 %and8, %shl10
  store i64 %or11, i64* %n.addr, align 8
  %6 = load i64, i64* %n.addr, align 8
  %and12 = and i64 %6, -72057594037927936
  %shr13 = lshr i64 %and12, 56
  %7 = load i64, i64* %n.addr, align 8
  %and14 = and i64 %7, 71776119061217280
  %shr15 = lshr i64 %and14, 40
  %or16 = or i64 %shr13, %shr15
  %8 = load i64, i64* %n.addr, align 8
  %and17 = and i64 %8, 280375465082880
  %shr18 = lshr i64 %and17, 24
  %or19 = or i64 %or16, %shr18
  %9 = load i64, i64* %n.addr, align 8
  %and20 = and i64 %9, 1095216660480
  %shr21 = lshr i64 %and20, 8
  %or22 = or i64 %or19, %shr21
  %10 = load i64, i64* %n.addr, align 8
  %and23 = and i64 %10, 255
  %shl24 = shl i64 %and23, 56
  %or25 = or i64 %or22, %shl24
  %11 = load i64, i64* %n.addr, align 8
  %and26 = and i64 %11, 65280
  %shl27 = shl i64 %and26, 40
  %or28 = or i64 %or25, %shl27
  %12 = load i64, i64* %n.addr, align 8
  %and29 = and i64 %12, 16711680
  %shl30 = shl i64 %and29, 24
  %or31 = or i64 %or28, %shl30
  %13 = load i64, i64* %n.addr, align 8
  %and32 = and i64 %13, 4278190080
  %shl33 = shl i64 %and32, 8
  %or34 = or i64 %or31, %shl33
  ret i64 %or34
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sum32 = alloca i64, align 8
  %sum64 = alloca i64, align 8
  %rev32 = alloca i32, align 4
  %rev64 = alloca i64, align 8
  %i = alloca i32, align 4
  %i8 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i64 0, i64* %sum32, align 8
  store i64 0, i64* %sum64, align 8
  %call = call i64 @strtoll(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8** null, i32 16) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %rev32, align 4
  %call1 = call i64 @strtoll(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8** null, i32 16) #4
  store i64 %call1, i64* %rev64, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 16777216
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call3 = call i32 @ReverseBits32(i32 %1)
  %conv4 = zext i32 %call3 to i64
  %2 = load i64, i64* %sum32, align 8
  %add = add i64 %2, %conv4
  store i64 %add, i64* %sum32, align 8
  %3 = load i32, i32* %i, align 4
  %conv5 = sext i32 %3 to i64
  %call6 = call i64 @ReverseBits64(i64 %conv5)
  %4 = load i64, i64* %sum64, align 8
  %add7 = add i64 %4, %call6
  store i64 %add7, i64* %sum64, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i8, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %for.end
  %6 = load i32, i32* %i8, align 4
  %cmp10 = icmp slt i32 %6, 16777216
  br i1 %cmp10, label %for.body12, label %for.end18

for.body12:                                       ; preds = %for.cond9
  %7 = load i32, i32* %i8, align 4
  %8 = call i32 @llvm.bitreverse.i32(i32 %7)
  %conv13 = zext i32 %8 to i64
  %9 = load i64, i64* %sum32, align 8
  %sub = sub i64 %9, %conv13
  store i64 %sub, i64* %sum32, align 8
  %10 = load i32, i32* %i8, align 4
  %conv14 = sext i32 %10 to i64
  %11 = call i64 @llvm.bitreverse.i64(i64 %conv14)
  %12 = load i64, i64* %sum64, align 8
  %sub15 = sub i64 %12, %11
  store i64 %sub15, i64* %sum64, align 8
  br label %for.inc16

for.inc16:                                        ; preds = %for.body12
  %13 = load i32, i32* %i8, align 4
  %inc17 = add nsw i32 %13, 1
  store i32 %inc17, i32* %i8, align 4
  br label %for.cond9

for.end18:                                        ; preds = %for.cond9
  %14 = load i32, i32* %rev32, align 4
  %15 = load i32, i32* %rev32, align 4
  %16 = call i32 @llvm.bitreverse.i32(i32 %15)
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %14, i32 %16)
  %17 = load i64, i64* %rev64, align 8
  %18 = load i64, i64* %rev64, align 8
  %19 = call i64 @llvm.bitreverse.i64(i64 %18)
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i64 %17, i64 %19)
  %20 = load i64, i64* %sum32, align 8
  %cmp21 = icmp eq i64 %20, 0
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end18
  %21 = load i64, i64* %sum64, align 8
  %cmp23 = icmp eq i64 %21, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end18
  %22 = phi i1 [ false, %for.end18 ], [ %cmp23, %land.rhs ]
  %cond = select i1 %22, i32 0, i32 1
  ret i32 %cond
}

; Function Attrs: nounwind
declare i64 @strtoll(i8*, i8**, i32) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.bitreverse.i32(i32) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.bitreverse.i64(i64) #2

declare i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
