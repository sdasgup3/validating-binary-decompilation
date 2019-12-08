; ModuleID = '/home/ubuntu/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/perlin/perlin.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%e\0A\00", align 1
@p = internal global [512 x i32] zeroinitializer, align 16
@permutation = internal global [256 x i32] [i32 151, i32 160, i32 137, i32 91, i32 90, i32 15, i32 131, i32 13, i32 201, i32 95, i32 96, i32 53, i32 194, i32 233, i32 7, i32 225, i32 140, i32 36, i32 103, i32 30, i32 69, i32 142, i32 8, i32 99, i32 37, i32 240, i32 21, i32 10, i32 23, i32 190, i32 6, i32 148, i32 247, i32 120, i32 234, i32 75, i32 0, i32 26, i32 197, i32 62, i32 94, i32 252, i32 219, i32 203, i32 117, i32 35, i32 11, i32 32, i32 57, i32 177, i32 33, i32 88, i32 237, i32 149, i32 56, i32 87, i32 174, i32 20, i32 125, i32 136, i32 171, i32 168, i32 68, i32 175, i32 74, i32 165, i32 71, i32 134, i32 139, i32 48, i32 27, i32 166, i32 77, i32 146, i32 158, i32 231, i32 83, i32 111, i32 229, i32 122, i32 60, i32 211, i32 133, i32 230, i32 220, i32 105, i32 92, i32 41, i32 55, i32 46, i32 245, i32 40, i32 244, i32 102, i32 143, i32 54, i32 65, i32 25, i32 63, i32 161, i32 1, i32 216, i32 80, i32 73, i32 209, i32 76, i32 132, i32 187, i32 208, i32 89, i32 18, i32 169, i32 200, i32 196, i32 135, i32 130, i32 116, i32 188, i32 159, i32 86, i32 164, i32 100, i32 109, i32 198, i32 173, i32 186, i32 3, i32 64, i32 52, i32 217, i32 226, i32 250, i32 124, i32 123, i32 5, i32 202, i32 38, i32 147, i32 118, i32 126, i32 255, i32 82, i32 85, i32 212, i32 207, i32 206, i32 59, i32 227, i32 47, i32 16, i32 58, i32 17, i32 182, i32 189, i32 28, i32 42, i32 223, i32 183, i32 170, i32 213, i32 119, i32 248, i32 152, i32 2, i32 44, i32 154, i32 163, i32 70, i32 221, i32 153, i32 101, i32 155, i32 167, i32 43, i32 172, i32 9, i32 129, i32 22, i32 39, i32 253, i32 19, i32 98, i32 108, i32 110, i32 79, i32 113, i32 224, i32 232, i32 178, i32 185, i32 112, i32 104, i32 218, i32 246, i32 97, i32 228, i32 251, i32 34, i32 242, i32 193, i32 238, i32 210, i32 144, i32 12, i32 191, i32 179, i32 162, i32 241, i32 81, i32 51, i32 145, i32 235, i32 249, i32 14, i32 239, i32 107, i32 49, i32 192, i32 214, i32 31, i32 181, i32 199, i32 106, i32 157, i32 184, i32 84, i32 204, i32 176, i32 115, i32 121, i32 50, i32 45, i32 127, i32 4, i32 150, i32 254, i32 138, i32 236, i32 205, i32 93, i32 222, i32 114, i32 67, i32 29, i32 24, i32 72, i32 243, i32 141, i32 128, i32 195, i32 78, i32 66, i32 215, i32 61, i32 156, i32 180], align 16

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  %sum = alloca double, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 @init()
  store double 0.000000e+00, double* %sum, align 8
  store double -1.135257e+04, double* %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load double, double* %x, align 8
  %cmp = fcmp olt double %0, 2.356157e+04
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store double -3.461235e+02, double* %y, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc9, %for.body
  %1 = load double, double* %y, align 8
  %cmp2 = fcmp olt double %1, 1.241240e+02
  br i1 %cmp2, label %for.body3, label %for.end11

for.body3:                                        ; preds = %for.cond1
  store double -1.562350e+02, double* %z, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load double, double* %y, align 8
  %cmp5 = fcmp olt double %2, 2.323450e+01
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load double, double* %x, align 8
  %4 = load double, double* %y, align 8
  %5 = load double, double* %z, align 8
  %call7 = call double @noise(double %3, double %4, double %5)
  %6 = load double, double* %sum, align 8
  %add = fadd double %6, %call7
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %7 = load double, double* %y, align 8
  %add8 = fadd double %7, 2.450000e+00
  store double %add8, double* %y, align 8
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %8 = load double, double* %y, align 8
  %add10 = fadd double %8, 1.432500e+00
  store double %add10, double* %y, align 8
  br label %for.cond1

for.end11:                                        ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end11
  %9 = load double, double* %x, align 8
  %add13 = fadd double %9, 1.235000e-01
  store double %add13, double* %x, align 8
  br label %for.cond

for.end14:                                        ; preds = %for.cond
  %10 = load double, double* %sum, align 8
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double %10)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @init() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @permutation, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %idxprom1
  store i32 %2, i32* %arrayidx2, align 4
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 256, %4
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %idxprom3
  store i32 %2, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal double @noise(double %x, double %y, double %z) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %z.addr = alloca double, align 8
  %X = alloca i32, align 4
  %Y = alloca i32, align 4
  %Z = alloca i32, align 4
  %u = alloca double, align 8
  %v = alloca double, align 8
  %w = alloca double, align 8
  %A = alloca i32, align 4
  %AA = alloca i32, align 4
  %AB = alloca i32, align 4
  %B = alloca i32, align 4
  %BA = alloca i32, align 4
  %BB = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %z, double* %z.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %call = call double @floor(double %0) #3
  %conv = fptosi double %call to i32
  %and = and i32 %conv, 255
  store i32 %and, i32* %X, align 4
  %1 = load double, double* %y.addr, align 8
  %call1 = call double @floor(double %1) #3
  %conv2 = fptosi double %call1 to i32
  %and3 = and i32 %conv2, 255
  store i32 %and3, i32* %Y, align 4
  %2 = load double, double* %z.addr, align 8
  %call4 = call double @floor(double %2) #3
  %conv5 = fptosi double %call4 to i32
  %and6 = and i32 %conv5, 255
  store i32 %and6, i32* %Z, align 4
  %3 = load double, double* %x.addr, align 8
  %call7 = call double @floor(double %3) #3
  %4 = load double, double* %x.addr, align 8
  %sub = fsub double %4, %call7
  store double %sub, double* %x.addr, align 8
  %5 = load double, double* %y.addr, align 8
  %call8 = call double @floor(double %5) #3
  %6 = load double, double* %y.addr, align 8
  %sub9 = fsub double %6, %call8
  store double %sub9, double* %y.addr, align 8
  %7 = load double, double* %z.addr, align 8
  %call10 = call double @floor(double %7) #3
  %8 = load double, double* %z.addr, align 8
  %sub11 = fsub double %8, %call10
  store double %sub11, double* %z.addr, align 8
  %9 = load double, double* %x.addr, align 8
  %call12 = call double @fade(double %9)
  store double %call12, double* %u, align 8
  %10 = load double, double* %y.addr, align 8
  %call13 = call double @fade(double %10)
  store double %call13, double* %v, align 8
  %11 = load double, double* %z.addr, align 8
  %call14 = call double @fade(double %11)
  store double %call14, double* %w, align 8
  %12 = load i32, i32* %X, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4
  %14 = load i32, i32* %Y, align 4
  %add = add nsw i32 %13, %14
  store i32 %add, i32* %A, align 4
  %15 = load i32, i32* %A, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %idxprom15
  %16 = load i32, i32* %arrayidx16, align 4
  %17 = load i32, i32* %Z, align 4
  %add17 = add nsw i32 %16, %17
  store i32 %add17, i32* %AA, align 4
  %18 = load i32, i32* %A, align 4
  %add18 = add nsw i32 %18, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %idxprom19
  %19 = load i32, i32* %arrayidx20, align 4
  %20 = load i32, i32* %Z, align 4
  %add21 = add nsw i32 %19, %20
  store i32 %add21, i32* %AB, align 4
  %21 = load i32, i32* %X, align 4
  %add22 = add nsw i32 %21, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %idxprom23
  %22 = load i32, i32* %arrayidx24, align 4
  %23 = load i32, i32* %Y, align 4
  %add25 = add nsw i32 %22, %23
  store i32 %add25, i32* %B, align 4
  %24 = load i32, i32* %B, align 4
  %idxprom26 = sext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %idxprom26
  %25 = load i32, i32* %arrayidx27, align 4
  %26 = load i32, i32* %Z, align 4
  %add28 = add nsw i32 %25, %26
  store i32 %add28, i32* %BA, align 4
  %27 = load i32, i32* %B, align 4
  %add29 = add nsw i32 %27, 1
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %idxprom30
  %28 = load i32, i32* %arrayidx31, align 4
  %29 = load i32, i32* %Z, align 4
  %add32 = add nsw i32 %28, %29
  store i32 %add32, i32* %BB, align 4
  %30 = load double, double* %w, align 8
  %31 = load double, double* %v, align 8
  %32 = load double, double* %u, align 8
  %33 = load i32, i32* %AA, align 4
  %idxprom33 = sext i32 %33 to i64
  %arrayidx34 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %idxprom33
  %34 = load i32, i32* %arrayidx34, align 4
  %35 = load double, double* %x.addr, align 8
  %36 = load double, double* %y.addr, align 8
  %37 = load double, double* %z.addr, align 8
  %call35 = call double @grad(i32 %34, double %35, double %36, double %37)
  %38 = load i32, i32* %BA, align 4
  %idxprom36 = sext i32 %38 to i64
  %arrayidx37 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %idxprom36
  %39 = load i32, i32* %arrayidx37, align 4
  %40 = load double, double* %x.addr, align 8
  %sub38 = fsub double %40, 1.000000e+00
  %41 = load double, double* %y.addr, align 8
  %42 = load double, double* %z.addr, align 8
  %call39 = call double @grad(i32 %39, double %sub38, double %41, double %42)
  %call40 = call double @lerp(double %32, double %call35, double %call39)
  %43 = load double, double* %u, align 8
  %44 = load i32, i32* %AB, align 4
  %idxprom41 = sext i32 %44 to i64
  %arrayidx42 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %idxprom41
  %45 = load i32, i32* %arrayidx42, align 4
  %46 = load double, double* %x.addr, align 8
  %47 = load double, double* %y.addr, align 8
  %sub43 = fsub double %47, 1.000000e+00
  %48 = load double, double* %z.addr, align 8
  %call44 = call double @grad(i32 %45, double %46, double %sub43, double %48)
  %49 = load i32, i32* %BB, align 4
  %idxprom45 = sext i32 %49 to i64
  %arrayidx46 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %idxprom45
  %50 = load i32, i32* %arrayidx46, align 4
  %51 = load double, double* %x.addr, align 8
  %sub47 = fsub double %51, 1.000000e+00
  %52 = load double, double* %y.addr, align 8
  %sub48 = fsub double %52, 1.000000e+00
  %53 = load double, double* %z.addr, align 8
  %call49 = call double @grad(i32 %50, double %sub47, double %sub48, double %53)
  %call50 = call double @lerp(double %43, double %call44, double %call49)
  %call51 = call double @lerp(double %31, double %call40, double %call50)
  %54 = load double, double* %v, align 8
  %55 = load double, double* %u, align 8
  %56 = load i32, i32* %AA, align 4
  %add52 = add nsw i32 %56, 1
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %idxprom53
  %57 = load i32, i32* %arrayidx54, align 4
  %58 = load double, double* %x.addr, align 8
  %59 = load double, double* %y.addr, align 8
  %60 = load double, double* %z.addr, align 8
  %sub55 = fsub double %60, 1.000000e+00
  %call56 = call double @grad(i32 %57, double %58, double %59, double %sub55)
  %61 = load i32, i32* %BA, align 4
  %add57 = add nsw i32 %61, 1
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %idxprom58
  %62 = load i32, i32* %arrayidx59, align 4
  %63 = load double, double* %x.addr, align 8
  %sub60 = fsub double %63, 1.000000e+00
  %64 = load double, double* %y.addr, align 8
  %65 = load double, double* %z.addr, align 8
  %sub61 = fsub double %65, 1.000000e+00
  %call62 = call double @grad(i32 %62, double %sub60, double %64, double %sub61)
  %call63 = call double @lerp(double %55, double %call56, double %call62)
  %66 = load double, double* %u, align 8
  %67 = load i32, i32* %AB, align 4
  %add64 = add nsw i32 %67, 1
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %idxprom65
  %68 = load i32, i32* %arrayidx66, align 4
  %69 = load double, double* %x.addr, align 8
  %70 = load double, double* %y.addr, align 8
  %sub67 = fsub double %70, 1.000000e+00
  %71 = load double, double* %z.addr, align 8
  %sub68 = fsub double %71, 1.000000e+00
  %call69 = call double @grad(i32 %68, double %69, double %sub67, double %sub68)
  %72 = load i32, i32* %BB, align 4
  %add70 = add nsw i32 %72, 1
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds [512 x i32], [512 x i32]* @p, i64 0, i64 %idxprom71
  %73 = load i32, i32* %arrayidx72, align 4
  %74 = load double, double* %x.addr, align 8
  %sub73 = fsub double %74, 1.000000e+00
  %75 = load double, double* %y.addr, align 8
  %sub74 = fsub double %75, 1.000000e+00
  %76 = load double, double* %z.addr, align 8
  %sub75 = fsub double %76, 1.000000e+00
  %call76 = call double @grad(i32 %73, double %sub73, double %sub74, double %sub75)
  %call77 = call double @lerp(double %66, double %call69, double %call76)
  %call78 = call double @lerp(double %54, double %call63, double %call77)
  %call79 = call double @lerp(double %30, double %call51, double %call78)
  ret double %call79
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: noinline nounwind uwtable
define internal double @fade(double %t) #0 {
entry:
  %t.addr = alloca double, align 8
  store double %t, double* %t.addr, align 8
  %0 = load double, double* %t.addr, align 8
  %1 = load double, double* %t.addr, align 8
  %mul = fmul double %0, %1
  %2 = load double, double* %t.addr, align 8
  %mul1 = fmul double %mul, %2
  %3 = load double, double* %t.addr, align 8
  %4 = load double, double* %t.addr, align 8
  %mul2 = fmul double %4, 6.000000e+00
  %sub = fsub double %mul2, 1.500000e+01
  %mul3 = fmul double %3, %sub
  %add = fadd double %mul3, 1.000000e+01
  %mul4 = fmul double %mul1, %add
  ret double %mul4
}

; Function Attrs: noinline nounwind uwtable
define internal double @grad(i32 %hash, double %x, double %y, double %z) #0 {
entry:
  %hash.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %z.addr = alloca double, align 8
  %h = alloca i32, align 4
  %u = alloca double, align 8
  %v = alloca double, align 8
  store i32 %hash, i32* %hash.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %z, double* %z.addr, align 8
  %0 = load i32, i32* %hash.addr, align 4
  %and = and i32 %0, 15
  store i32 %and, i32* %h, align 4
  %1 = load i32, i32* %h, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load double, double* %x.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load double, double* %y.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %2, %cond.true ], [ %3, %cond.false ]
  store double %cond, double* %u, align 8
  %4 = load i32, i32* %h, align 4
  %cmp1 = icmp slt i32 %4, 4
  br i1 %cmp1, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.end
  %5 = load double, double* %y.addr, align 8
  br label %cond.end10

cond.false3:                                      ; preds = %cond.end
  %6 = load i32, i32* %h, align 4
  %cmp4 = icmp eq i32 %6, 12
  br i1 %cmp4, label %cond.true6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false3
  %7 = load i32, i32* %h, align 4
  %cmp5 = icmp eq i32 %7, 14
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %lor.lhs.false, %cond.false3
  %8 = load double, double* %x.addr, align 8
  br label %cond.end8

cond.false7:                                      ; preds = %lor.lhs.false
  %9 = load double, double* %z.addr, align 8
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi double [ %8, %cond.true6 ], [ %9, %cond.false7 ]
  br label %cond.end10

cond.end10:                                       ; preds = %cond.end8, %cond.true2
  %cond11 = phi double [ %5, %cond.true2 ], [ %cond9, %cond.end8 ]
  store double %cond11, double* %v, align 8
  %10 = load i32, i32* %h, align 4
  %and12 = and i32 %10, 1
  %cmp13 = icmp eq i32 %and12, 0
  br i1 %cmp13, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %cond.end10
  %11 = load double, double* %u, align 8
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end10
  %12 = load double, double* %u, align 8
  %sub = fsub double -0.000000e+00, %12
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %cond.true14
  %cond17 = phi double [ %11, %cond.true14 ], [ %sub, %cond.false15 ]
  %13 = load i32, i32* %h, align 4
  %and18 = and i32 %13, 2
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %cond.true20, label %cond.false21

cond.true20:                                      ; preds = %cond.end16
  %14 = load double, double* %v, align 8
  br label %cond.end23

cond.false21:                                     ; preds = %cond.end16
  %15 = load double, double* %v, align 8
  %sub22 = fsub double -0.000000e+00, %15
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false21, %cond.true20
  %cond24 = phi double [ %14, %cond.true20 ], [ %sub22, %cond.false21 ]
  %add = fadd double %cond17, %cond24
  ret double %add
}

; Function Attrs: noinline nounwind uwtable
define internal double @lerp(double %t, double %a, double %b) #0 {
entry:
  %t.addr = alloca double, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %t, double* %t.addr, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8
  %1 = load double, double* %t.addr, align 8
  %2 = load double, double* %b.addr, align 8
  %3 = load double, double* %a.addr, align 8
  %sub = fsub double %2, %3
  %mul = fmul double %1, %sub
  %add = fadd double %0, %mul
  ret double %add
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
