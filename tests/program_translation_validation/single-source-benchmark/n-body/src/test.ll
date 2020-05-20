; ModuleID = '/home/sdasgup3/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/n-body/n-body.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.planet = type { double, double, double, double, double, double, double }

@bodies = global [5 x %struct.planet] [%struct.planet { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0x4043BD3CC9BE45DE }, %struct.planet { double 0x40135DA0343CD92C, double 0xBFF290ABC01FDB7C, double 0xBFBA86F96C25EBF0, double 0x3FE367069B93CCBC, double 0x40067EF2F57D949B, double 0xBF99D2D79A5A0715, double 0x3FA34C95D9AB33D8 }, %struct.planet { double 0x4020AFCDC332CA67, double 0x40107FCB31DE01B0, double 0xBFD9D353E1EB467C, double 0xBFF02C21B8879442, double 0x3FFD35E9BF1F8F13, double 0x3F813C485F1123B4, double 0x3F871D490D07C637 }, %struct.planet { double 0x4029C9EACEA7D9CF, double 0xC02E38E8D626667E, double 0xBFCC9557BE257DA0, double 0x3FF1531CA9911BEF, double 0x3FEBCC7F3E54BBC5, double 0xBF862F6BFAF23E7C, double 0x3F5C3DD29CF41EB3 }, %struct.planet { double 0x402EC267A905572A, double 0xC039EB5833C8A220, double 0x3FC6F1F393ABE540, double 0x3FEF54B61659BC4A, double 0x3FE307C631C4FBA3, double 0xBFA1CB88587665F6, double 0x3F60A8F3531799AC }], align 16
@.str = private unnamed_addr constant [6 x i8] c"%.9f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @advance(i32 %nbodies, %struct.planet* %bodies, double %dt) #0 {
entry:
  %nbodies.addr = alloca i32, align 4
  %bodies.addr = alloca %struct.planet*, align 8
  %dt.addr = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca %struct.planet*, align 8
  %b2 = alloca %struct.planet*, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %dz = alloca double, align 8
  %distance = alloca double, align 8
  %mag = alloca double, align 8
  %b49 = alloca %struct.planet*, align 8
  store i32 %nbodies, i32* %nbodies.addr, align 4
  store %struct.planet* %bodies, %struct.planet** %bodies.addr, align 8
  store double %dt, double* %dt.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc43, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nbodies.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end45

for.body:                                         ; preds = %for.cond
  %2 = load %struct.planet*, %struct.planet** %bodies.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.planet, %struct.planet* %2, i64 %idxprom
  store %struct.planet* %arrayidx, %struct.planet** %b, align 8
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %nbodies.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %7 = load %struct.planet*, %struct.planet** %bodies.addr, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds %struct.planet, %struct.planet* %7, i64 %idxprom4
  store %struct.planet* %arrayidx5, %struct.planet** %b2, align 8
  %9 = load %struct.planet*, %struct.planet** %b, align 8
  %x = getelementptr inbounds %struct.planet, %struct.planet* %9, i32 0, i32 0
  %10 = load double, double* %x, align 8
  %11 = load %struct.planet*, %struct.planet** %b2, align 8
  %x6 = getelementptr inbounds %struct.planet, %struct.planet* %11, i32 0, i32 0
  %12 = load double, double* %x6, align 8
  %sub = fsub double %10, %12
  store double %sub, double* %dx, align 8
  %13 = load %struct.planet*, %struct.planet** %b, align 8
  %y = getelementptr inbounds %struct.planet, %struct.planet* %13, i32 0, i32 1
  %14 = load double, double* %y, align 8
  %15 = load %struct.planet*, %struct.planet** %b2, align 8
  %y7 = getelementptr inbounds %struct.planet, %struct.planet* %15, i32 0, i32 1
  %16 = load double, double* %y7, align 8
  %sub8 = fsub double %14, %16
  store double %sub8, double* %dy, align 8
  %17 = load %struct.planet*, %struct.planet** %b, align 8
  %z = getelementptr inbounds %struct.planet, %struct.planet* %17, i32 0, i32 2
  %18 = load double, double* %z, align 8
  %19 = load %struct.planet*, %struct.planet** %b2, align 8
  %z9 = getelementptr inbounds %struct.planet, %struct.planet* %19, i32 0, i32 2
  %20 = load double, double* %z9, align 8
  %sub10 = fsub double %18, %20
  store double %sub10, double* %dz, align 8
  %21 = load double, double* %dx, align 8
  %22 = load double, double* %dx, align 8
  %mul = fmul double %21, %22
  %23 = load double, double* %dy, align 8
  %24 = load double, double* %dy, align 8
  %mul11 = fmul double %23, %24
  %add12 = fadd double %mul, %mul11
  %25 = load double, double* %dz, align 8
  %26 = load double, double* %dz, align 8
  %mul13 = fmul double %25, %26
  %add14 = fadd double %add12, %mul13
  %call = call double @sqrt(double %add14) #3
  store double %call, double* %distance, align 8
  %27 = load double, double* %dt.addr, align 8
  %28 = load double, double* %distance, align 8
  %29 = load double, double* %distance, align 8
  %mul15 = fmul double %28, %29
  %30 = load double, double* %distance, align 8
  %mul16 = fmul double %mul15, %30
  %div = fdiv double %27, %mul16
  store double %div, double* %mag, align 8
  %31 = load double, double* %dx, align 8
  %32 = load %struct.planet*, %struct.planet** %b2, align 8
  %mass = getelementptr inbounds %struct.planet, %struct.planet* %32, i32 0, i32 6
  %33 = load double, double* %mass, align 8
  %mul17 = fmul double %31, %33
  %34 = load double, double* %mag, align 8
  %mul18 = fmul double %mul17, %34
  %35 = load %struct.planet*, %struct.planet** %b, align 8
  %vx = getelementptr inbounds %struct.planet, %struct.planet* %35, i32 0, i32 3
  %36 = load double, double* %vx, align 8
  %sub19 = fsub double %36, %mul18
  store double %sub19, double* %vx, align 8
  %37 = load double, double* %dy, align 8
  %38 = load %struct.planet*, %struct.planet** %b2, align 8
  %mass20 = getelementptr inbounds %struct.planet, %struct.planet* %38, i32 0, i32 6
  %39 = load double, double* %mass20, align 8
  %mul21 = fmul double %37, %39
  %40 = load double, double* %mag, align 8
  %mul22 = fmul double %mul21, %40
  %41 = load %struct.planet*, %struct.planet** %b, align 8
  %vy = getelementptr inbounds %struct.planet, %struct.planet* %41, i32 0, i32 4
  %42 = load double, double* %vy, align 8
  %sub23 = fsub double %42, %mul22
  store double %sub23, double* %vy, align 8
  %43 = load double, double* %dz, align 8
  %44 = load %struct.planet*, %struct.planet** %b2, align 8
  %mass24 = getelementptr inbounds %struct.planet, %struct.planet* %44, i32 0, i32 6
  %45 = load double, double* %mass24, align 8
  %mul25 = fmul double %43, %45
  %46 = load double, double* %mag, align 8
  %mul26 = fmul double %mul25, %46
  %47 = load %struct.planet*, %struct.planet** %b, align 8
  %vz = getelementptr inbounds %struct.planet, %struct.planet* %47, i32 0, i32 5
  %48 = load double, double* %vz, align 8
  %sub27 = fsub double %48, %mul26
  store double %sub27, double* %vz, align 8
  %49 = load double, double* %dx, align 8
  %50 = load %struct.planet*, %struct.planet** %b, align 8
  %mass28 = getelementptr inbounds %struct.planet, %struct.planet* %50, i32 0, i32 6
  %51 = load double, double* %mass28, align 8
  %mul29 = fmul double %49, %51
  %52 = load double, double* %mag, align 8
  %mul30 = fmul double %mul29, %52
  %53 = load %struct.planet*, %struct.planet** %b2, align 8
  %vx31 = getelementptr inbounds %struct.planet, %struct.planet* %53, i32 0, i32 3
  %54 = load double, double* %vx31, align 8
  %add32 = fadd double %54, %mul30
  store double %add32, double* %vx31, align 8
  %55 = load double, double* %dy, align 8
  %56 = load %struct.planet*, %struct.planet** %b, align 8
  %mass33 = getelementptr inbounds %struct.planet, %struct.planet* %56, i32 0, i32 6
  %57 = load double, double* %mass33, align 8
  %mul34 = fmul double %55, %57
  %58 = load double, double* %mag, align 8
  %mul35 = fmul double %mul34, %58
  %59 = load %struct.planet*, %struct.planet** %b2, align 8
  %vy36 = getelementptr inbounds %struct.planet, %struct.planet* %59, i32 0, i32 4
  %60 = load double, double* %vy36, align 8
  %add37 = fadd double %60, %mul35
  store double %add37, double* %vy36, align 8
  %61 = load double, double* %dz, align 8
  %62 = load %struct.planet*, %struct.planet** %b, align 8
  %mass38 = getelementptr inbounds %struct.planet, %struct.planet* %62, i32 0, i32 6
  %63 = load double, double* %mass38, align 8
  %mul39 = fmul double %61, %63
  %64 = load double, double* %mag, align 8
  %mul40 = fmul double %mul39, %64
  %65 = load %struct.planet*, %struct.planet** %b2, align 8
  %vz41 = getelementptr inbounds %struct.planet, %struct.planet* %65, i32 0, i32 5
  %66 = load double, double* %vz41, align 8
  %add42 = fadd double %66, %mul40
  store double %add42, double* %vz41, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %67 = load i32, i32* %j, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc43

for.inc43:                                        ; preds = %for.end
  %68 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %68, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond

for.end45:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc64, %for.end45
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %nbodies.addr, align 4
  %cmp47 = icmp slt i32 %69, %70
  br i1 %cmp47, label %for.body48, label %for.end66

for.body48:                                       ; preds = %for.cond46
  %71 = load %struct.planet*, %struct.planet** %bodies.addr, align 8
  %72 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %72 to i64
  %arrayidx51 = getelementptr inbounds %struct.planet, %struct.planet* %71, i64 %idxprom50
  store %struct.planet* %arrayidx51, %struct.planet** %b49, align 8
  %73 = load double, double* %dt.addr, align 8
  %74 = load %struct.planet*, %struct.planet** %b49, align 8
  %vx52 = getelementptr inbounds %struct.planet, %struct.planet* %74, i32 0, i32 3
  %75 = load double, double* %vx52, align 8
  %mul53 = fmul double %73, %75
  %76 = load %struct.planet*, %struct.planet** %b49, align 8
  %x54 = getelementptr inbounds %struct.planet, %struct.planet* %76, i32 0, i32 0
  %77 = load double, double* %x54, align 8
  %add55 = fadd double %77, %mul53
  store double %add55, double* %x54, align 8
  %78 = load double, double* %dt.addr, align 8
  %79 = load %struct.planet*, %struct.planet** %b49, align 8
  %vy56 = getelementptr inbounds %struct.planet, %struct.planet* %79, i32 0, i32 4
  %80 = load double, double* %vy56, align 8
  %mul57 = fmul double %78, %80
  %81 = load %struct.planet*, %struct.planet** %b49, align 8
  %y58 = getelementptr inbounds %struct.planet, %struct.planet* %81, i32 0, i32 1
  %82 = load double, double* %y58, align 8
  %add59 = fadd double %82, %mul57
  store double %add59, double* %y58, align 8
  %83 = load double, double* %dt.addr, align 8
  %84 = load %struct.planet*, %struct.planet** %b49, align 8
  %vz60 = getelementptr inbounds %struct.planet, %struct.planet* %84, i32 0, i32 5
  %85 = load double, double* %vz60, align 8
  %mul61 = fmul double %83, %85
  %86 = load %struct.planet*, %struct.planet** %b49, align 8
  %z62 = getelementptr inbounds %struct.planet, %struct.planet* %86, i32 0, i32 2
  %87 = load double, double* %z62, align 8
  %add63 = fadd double %87, %mul61
  store double %add63, double* %z62, align 8
  br label %for.inc64

for.inc64:                                        ; preds = %for.body48
  %88 = load i32, i32* %i, align 4
  %inc65 = add nsw i32 %88, 1
  store i32 %inc65, i32* %i, align 4
  br label %for.cond46

for.end66:                                        ; preds = %for.cond46
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: noinline nounwind uwtable
define double @energy(i32 %nbodies, %struct.planet* %bodies) #0 {
entry:
  %nbodies.addr = alloca i32, align 4
  %bodies.addr = alloca %struct.planet*, align 8
  %e = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %b = alloca %struct.planet*, align 8
  %b2 = alloca %struct.planet*, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %dz = alloca double, align 8
  %distance = alloca double, align 8
  store i32 %nbodies, i32* %nbodies.addr, align 4
  store %struct.planet* %bodies, %struct.planet** %bodies.addr, align 8
  store double 0.000000e+00, double* %e, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nbodies.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  %2 = load %struct.planet*, %struct.planet** %bodies.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.planet, %struct.planet* %2, i64 %idxprom
  store %struct.planet* %arrayidx, %struct.planet** %b, align 8
  %4 = load %struct.planet*, %struct.planet** %b, align 8
  %mass = getelementptr inbounds %struct.planet, %struct.planet* %4, i32 0, i32 6
  %5 = load double, double* %mass, align 8
  %mul = fmul double 5.000000e-01, %5
  %6 = load %struct.planet*, %struct.planet** %b, align 8
  %vx = getelementptr inbounds %struct.planet, %struct.planet* %6, i32 0, i32 3
  %7 = load double, double* %vx, align 8
  %8 = load %struct.planet*, %struct.planet** %b, align 8
  %vx1 = getelementptr inbounds %struct.planet, %struct.planet* %8, i32 0, i32 3
  %9 = load double, double* %vx1, align 8
  %mul2 = fmul double %7, %9
  %10 = load %struct.planet*, %struct.planet** %b, align 8
  %vy = getelementptr inbounds %struct.planet, %struct.planet* %10, i32 0, i32 4
  %11 = load double, double* %vy, align 8
  %12 = load %struct.planet*, %struct.planet** %b, align 8
  %vy3 = getelementptr inbounds %struct.planet, %struct.planet* %12, i32 0, i32 4
  %13 = load double, double* %vy3, align 8
  %mul4 = fmul double %11, %13
  %add = fadd double %mul2, %mul4
  %14 = load %struct.planet*, %struct.planet** %b, align 8
  %vz = getelementptr inbounds %struct.planet, %struct.planet* %14, i32 0, i32 5
  %15 = load double, double* %vz, align 8
  %16 = load %struct.planet*, %struct.planet** %b, align 8
  %vz5 = getelementptr inbounds %struct.planet, %struct.planet* %16, i32 0, i32 5
  %17 = load double, double* %vz5, align 8
  %mul6 = fmul double %15, %17
  %add7 = fadd double %add, %mul6
  %mul8 = fmul double %mul, %add7
  %18 = load double, double* %e, align 8
  %add9 = fadd double %18, %mul8
  store double %add9, double* %e, align 8
  %19 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %19, 1
  store i32 %add10, i32* %j, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %nbodies.addr, align 4
  %cmp12 = icmp slt i32 %20, %21
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %22 = load %struct.planet*, %struct.planet** %bodies.addr, align 8
  %23 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds %struct.planet, %struct.planet* %22, i64 %idxprom14
  store %struct.planet* %arrayidx15, %struct.planet** %b2, align 8
  %24 = load %struct.planet*, %struct.planet** %b, align 8
  %x = getelementptr inbounds %struct.planet, %struct.planet* %24, i32 0, i32 0
  %25 = load double, double* %x, align 8
  %26 = load %struct.planet*, %struct.planet** %b2, align 8
  %x16 = getelementptr inbounds %struct.planet, %struct.planet* %26, i32 0, i32 0
  %27 = load double, double* %x16, align 8
  %sub = fsub double %25, %27
  store double %sub, double* %dx, align 8
  %28 = load %struct.planet*, %struct.planet** %b, align 8
  %y = getelementptr inbounds %struct.planet, %struct.planet* %28, i32 0, i32 1
  %29 = load double, double* %y, align 8
  %30 = load %struct.planet*, %struct.planet** %b2, align 8
  %y17 = getelementptr inbounds %struct.planet, %struct.planet* %30, i32 0, i32 1
  %31 = load double, double* %y17, align 8
  %sub18 = fsub double %29, %31
  store double %sub18, double* %dy, align 8
  %32 = load %struct.planet*, %struct.planet** %b, align 8
  %z = getelementptr inbounds %struct.planet, %struct.planet* %32, i32 0, i32 2
  %33 = load double, double* %z, align 8
  %34 = load %struct.planet*, %struct.planet** %b2, align 8
  %z19 = getelementptr inbounds %struct.planet, %struct.planet* %34, i32 0, i32 2
  %35 = load double, double* %z19, align 8
  %sub20 = fsub double %33, %35
  store double %sub20, double* %dz, align 8
  %36 = load double, double* %dx, align 8
  %37 = load double, double* %dx, align 8
  %mul21 = fmul double %36, %37
  %38 = load double, double* %dy, align 8
  %39 = load double, double* %dy, align 8
  %mul22 = fmul double %38, %39
  %add23 = fadd double %mul21, %mul22
  %40 = load double, double* %dz, align 8
  %41 = load double, double* %dz, align 8
  %mul24 = fmul double %40, %41
  %add25 = fadd double %add23, %mul24
  %call = call double @sqrt(double %add25) #3
  store double %call, double* %distance, align 8
  %42 = load %struct.planet*, %struct.planet** %b, align 8
  %mass26 = getelementptr inbounds %struct.planet, %struct.planet* %42, i32 0, i32 6
  %43 = load double, double* %mass26, align 8
  %44 = load %struct.planet*, %struct.planet** %b2, align 8
  %mass27 = getelementptr inbounds %struct.planet, %struct.planet* %44, i32 0, i32 6
  %45 = load double, double* %mass27, align 8
  %mul28 = fmul double %43, %45
  %46 = load double, double* %distance, align 8
  %div = fdiv double %mul28, %46
  %47 = load double, double* %e, align 8
  %sub29 = fsub double %47, %div
  store double %sub29, double* %e, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %48 = load i32, i32* %j, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond11

for.end:                                          ; preds = %for.cond11
  br label %for.inc30

for.inc30:                                        ; preds = %for.end
  %49 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %49, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond

for.end32:                                        ; preds = %for.cond
  %50 = load double, double* %e, align 8
  ret double %50
}

; Function Attrs: noinline nounwind uwtable
define void @offset_momentum(i32 %nbodies, %struct.planet* %bodies) #0 {
entry:
  %nbodies.addr = alloca i32, align 4
  %bodies.addr = alloca %struct.planet*, align 8
  %px = alloca double, align 8
  %py = alloca double, align 8
  %pz = alloca double, align 8
  %i = alloca i32, align 4
  store i32 %nbodies, i32* %nbodies.addr, align 4
  store %struct.planet* %bodies, %struct.planet** %bodies.addr, align 8
  store double 0.000000e+00, double* %px, align 8
  store double 0.000000e+00, double* %py, align 8
  store double 0.000000e+00, double* %pz, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nbodies.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.planet*, %struct.planet** %bodies.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.planet, %struct.planet* %2, i64 %idxprom
  %vx = getelementptr inbounds %struct.planet, %struct.planet* %arrayidx, i32 0, i32 3
  %4 = load double, double* %vx, align 8
  %5 = load %struct.planet*, %struct.planet** %bodies.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds %struct.planet, %struct.planet* %5, i64 %idxprom1
  %mass = getelementptr inbounds %struct.planet, %struct.planet* %arrayidx2, i32 0, i32 6
  %7 = load double, double* %mass, align 8
  %mul = fmul double %4, %7
  %8 = load double, double* %px, align 8
  %add = fadd double %8, %mul
  store double %add, double* %px, align 8
  %9 = load %struct.planet*, %struct.planet** %bodies.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds %struct.planet, %struct.planet* %9, i64 %idxprom3
  %vy = getelementptr inbounds %struct.planet, %struct.planet* %arrayidx4, i32 0, i32 4
  %11 = load double, double* %vy, align 8
  %12 = load %struct.planet*, %struct.planet** %bodies.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds %struct.planet, %struct.planet* %12, i64 %idxprom5
  %mass7 = getelementptr inbounds %struct.planet, %struct.planet* %arrayidx6, i32 0, i32 6
  %14 = load double, double* %mass7, align 8
  %mul8 = fmul double %11, %14
  %15 = load double, double* %py, align 8
  %add9 = fadd double %15, %mul8
  store double %add9, double* %py, align 8
  %16 = load %struct.planet*, %struct.planet** %bodies.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds %struct.planet, %struct.planet* %16, i64 %idxprom10
  %vz = getelementptr inbounds %struct.planet, %struct.planet* %arrayidx11, i32 0, i32 5
  %18 = load double, double* %vz, align 8
  %19 = load %struct.planet*, %struct.planet** %bodies.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds %struct.planet, %struct.planet* %19, i64 %idxprom12
  %mass14 = getelementptr inbounds %struct.planet, %struct.planet* %arrayidx13, i32 0, i32 6
  %21 = load double, double* %mass14, align 8
  %mul15 = fmul double %18, %21
  %22 = load double, double* %pz, align 8
  %add16 = fadd double %22, %mul15
  store double %add16, double* %pz, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load double, double* %px, align 8
  %sub = fsub double -0.000000e+00, %24
  %div = fdiv double %sub, 0x4043BD3CC9BE45DE
  %25 = load %struct.planet*, %struct.planet** %bodies.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.planet, %struct.planet* %25, i64 0
  %vx18 = getelementptr inbounds %struct.planet, %struct.planet* %arrayidx17, i32 0, i32 3
  store double %div, double* %vx18, align 8
  %26 = load double, double* %py, align 8
  %sub19 = fsub double -0.000000e+00, %26
  %div20 = fdiv double %sub19, 0x4043BD3CC9BE45DE
  %27 = load %struct.planet*, %struct.planet** %bodies.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.planet, %struct.planet* %27, i64 0
  %vy22 = getelementptr inbounds %struct.planet, %struct.planet* %arrayidx21, i32 0, i32 4
  store double %div20, double* %vy22, align 8
  %28 = load double, double* %pz, align 8
  %sub23 = fsub double -0.000000e+00, %28
  %div24 = fdiv double %sub23, 0x4043BD3CC9BE45DE
  %29 = load %struct.planet*, %struct.planet** %bodies.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct.planet, %struct.planet* %29, i64 0
  %vz26 = getelementptr inbounds %struct.planet, %struct.planet* %arrayidx25, i32 0, i32 5
  store double %div24, double* %vz26, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 5000000, i32* %n, align 4
  call void @offset_momentum(i32 5, %struct.planet* getelementptr inbounds ([5 x %struct.planet], [5 x %struct.planet]* @bodies, i32 0, i32 0))
  %call = call double @energy(i32 5, %struct.planet* getelementptr inbounds ([5 x %struct.planet], [5 x %struct.planet]* @bodies, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), double %call)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @advance(i32 5, %struct.planet* getelementptr inbounds ([5 x %struct.planet], [5 x %struct.planet]* @bodies, i32 0, i32 0), double 1.000000e-02)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2 = call double @energy(i32 5, %struct.planet* getelementptr inbounds ([5 x %struct.planet], [5 x %struct.planet]* @bodies, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), double %call2)
  ret i32 0
}

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
