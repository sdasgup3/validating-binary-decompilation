; ModuleID = 'oopack_v1p8/oopack_v1p8.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.Benchmark = type { i32 (...)** }
%class.MaxBenchmark = type { %class.Benchmark }
%class.Complex = type { double, double }
%class.Matrix = type { double*, i32, i32 }
%class.Iterator = type { i32, i32, double* }

$_ZNK12MaxBenchmark4nameEv = comdat any

$_Z7Greaterdd = comdat any

$_ZNK15MatrixBenchmark4nameEv = comdat any

$_ZN6MatrixC2EiiPd = comdat any

$_ZN6MatrixclEii = comdat any

$_ZNK17IteratorBenchmark4nameEv = comdat any

$_ZN8IteratorC2EPdi = comdat any

$_ZN8Iterator4doneEv = comdat any

$_ZN8Iterator4lookEv = comdat any

$_ZN8Iterator4nextEv = comdat any

$_ZNK16ComplexBenchmark4nameEv = comdat any

$_ZN7ComplexC2Edd = comdat any

$_Zml7ComplexS_ = comdat any

$_Zpl7ComplexS_ = comdat any

$_ZN7ComplexC2Ev = comdat any

$_ZN16ComplexBenchmarkC2Ev = comdat any

$_ZN9BenchmarkC2Ev = comdat any

$_ZN17IteratorBenchmarkC2Ev = comdat any

$_ZN15MatrixBenchmarkC2Ev = comdat any

$_ZN12MaxBenchmarkC2Ev = comdat any

$_ZTI9Benchmark = comdat any

$_ZTS9Benchmark = comdat any

$_ZTV9Benchmark = comdat any

@_ZN9Benchmark5countE = global i32 0, align 4
@_ZN9Benchmark4listE = global [4 x %class.Benchmark*] zeroinitializer, align 16
@U = global [1000 x double] zeroinitializer, align 16
@MaxResult = global double 0.000000e+00, align 8
@TheMaxBenchmark = global %class.MaxBenchmark zeroinitializer, align 8
@C = global [2500 x double] zeroinitializer, align 16
@D = global [2500 x double] zeroinitializer, align 16
@E = global [2500 x double] zeroinitializer, align 16
@TheMatrixBenchmark = global %class.MaxBenchmark zeroinitializer, align 8
@A = global [1000 x double] zeroinitializer, align 16
@B = global [1000 x double] zeroinitializer, align 16
@IteratorResult = global double 0.000000e+00, align 8
@TheIteratorBenchmark = global %class.MaxBenchmark zeroinitializer, align 8
@TheComplexBenchmark = global %class.MaxBenchmark zeroinitializer, align 8
@X = global [1000 x %class.Complex] zeroinitializer, align 16
@Y = global [1000 x %class.Complex] zeroinitializer, align 16
@C_Seconds = global double 1.000000e+00, align 8
@Version = global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"Version 1.7\00", align 1
@_ZTV12MaxBenchmark = unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI12MaxBenchmark to i8*), i8* bitcast (i8* (%class.MaxBenchmark*)* @_ZNK12MaxBenchmark4nameEv to i8*), i8* bitcast (void (%class.MaxBenchmark*)* @_ZNK12MaxBenchmark4initEv to i8*), i8* bitcast (void (%class.MaxBenchmark*)* @_ZNK12MaxBenchmark7c_styleEv to i8*), i8* bitcast (void (%class.MaxBenchmark*)* @_ZNK12MaxBenchmark9oop_styleEv to i8*), i8* bitcast (void (%class.MaxBenchmark*, i32, double*, double*)* @_ZNK12MaxBenchmark5checkEiRdS0_ to i8*)] }, align 8
@_ZTI12MaxBenchmark = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @_ZTS12MaxBenchmark, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI9Benchmark to i8*) }
@.str.28 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS12MaxBenchmark = constant [15 x i8] c"12MaxBenchmark\00"
@_ZTI9Benchmark = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @_ZTS9Benchmark, i32 0, i32 0) }, comdat
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS9Benchmark = linkonce_odr constant [11 x i8] c"9Benchmark\00", comdat
@_ZTV15MatrixBenchmark = unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI15MatrixBenchmark to i8*), i8* bitcast (i8* (%class.MaxBenchmark*)* @_ZNK15MatrixBenchmark4nameEv to i8*), i8* bitcast (void (%class.MaxBenchmark*)* @_ZNK15MatrixBenchmark4initEv to i8*), i8* bitcast (void (%class.MaxBenchmark*)* @_ZNK15MatrixBenchmark7c_styleEv to i8*), i8* bitcast (void (%class.MaxBenchmark*)* @_ZNK15MatrixBenchmark9oop_styleEv to i8*), i8* bitcast (void (%class.MaxBenchmark*, i32, double*, double*)* @_ZNK15MatrixBenchmark5checkEiRdS0_ to i8*)] }, align 8
@_ZTI15MatrixBenchmark = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @_ZTS15MatrixBenchmark, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI9Benchmark to i8*) }
@.str.29 = private unnamed_addr constant [7 x i8] c"Matrix\00", align 1
@_ZTS15MatrixBenchmark = constant [18 x i8] c"15MatrixBenchmark\00"
@_ZTV17IteratorBenchmark = unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI17IteratorBenchmark to i8*), i8* bitcast (i8* (%class.MaxBenchmark*)* @_ZNK17IteratorBenchmark4nameEv to i8*), i8* bitcast (void (%class.MaxBenchmark*)* @_ZNK17IteratorBenchmark4initEv to i8*), i8* bitcast (void (%class.MaxBenchmark*)* @_ZNK17IteratorBenchmark7c_styleEv to i8*), i8* bitcast (void (%class.MaxBenchmark*)* @_ZNK17IteratorBenchmark9oop_styleEv to i8*), i8* bitcast (void (%class.MaxBenchmark*, i32, double*, double*)* @_ZNK17IteratorBenchmark5checkEiRdS0_ to i8*)] }, align 8
@_ZTI17IteratorBenchmark = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_ZTS17IteratorBenchmark, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI9Benchmark to i8*) }
@.str.30 = private unnamed_addr constant [9 x i8] c"Iterator\00", align 1
@_ZTS17IteratorBenchmark = constant [20 x i8] c"17IteratorBenchmark\00"
@_ZTV16ComplexBenchmark = unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI16ComplexBenchmark to i8*), i8* bitcast (i8* (%class.MaxBenchmark*)* @_ZNK16ComplexBenchmark4nameEv to i8*), i8* bitcast (void (%class.MaxBenchmark*)* @_ZNK16ComplexBenchmark4initEv to i8*), i8* bitcast (void (%class.MaxBenchmark*)* @_ZNK16ComplexBenchmark7c_styleEv to i8*), i8* bitcast (void (%class.MaxBenchmark*)* @_ZNK16ComplexBenchmark9oop_styleEv to i8*), i8* bitcast (void (%class.MaxBenchmark*, i32, double*, double*)* @_ZNK16ComplexBenchmark5checkEiRdS0_ to i8*)] }, align 8
@_ZTI16ComplexBenchmark = constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @_ZTS16ComplexBenchmark, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI9Benchmark to i8*) }
@.str.31 = private unnamed_addr constant [8 x i8] c"Complex\00", align 1
@_ZTS16ComplexBenchmark = constant [19 x i8] c"16ComplexBenchmark\00"
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_oopack_v1p8.cpp, i8* null }]
@_ZTV9Benchmark = linkonce_odr unnamed_addr constant { [7 x i8*] } { [7 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI9Benchmark to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 8
@.str = private unnamed_addr constant [75 x i8] c"%-10s: warning: relative checksum error of %g between C (%g) and oop (%g)\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%-10s %10d\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Usage:\09%s test1=iterations1 test2=iterations2 ...\0A\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"E.g.:\09a.out  Max=5000 Matrix=50 Complex=2000  Iterator=5000\0A\00", align 1
@_ZZ4mainE4str1 = private unnamed_addr constant [6 x i8] c"a.out\00", align 1
@_ZZ4mainE4str2 = private unnamed_addr constant [10 x i8] c"Max=15000\00", align 1
@_ZZ4mainE4str3 = private unnamed_addr constant [11 x i8] c"Matrix=200\00", align 1
@_ZZ4mainE4str4 = private unnamed_addr constant [13 x i8] c"Complex=2000\00", align 1
@_ZZ4mainE4str5 = private unnamed_addr constant [15 x i8] c"Iterator=20000\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"%-10s %10s  %11s  %11s  %5s\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Seconds  \00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Mflops  \00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"%-10s %10s  %5s %5s  %5s %5s  %5s\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Iterations\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" C \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"OOP\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Ratio\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"----\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"----------\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"-----------\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"-----\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"missing iteration count for test '%s'\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"skipping non-existent test = '%s'\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"\0ADONE!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i8* @_ZNK12MaxBenchmark4nameEv(%class.MaxBenchmark* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  ret i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0)
}

; Function Attrs: noinline nounwind uwtable
define void @_ZNK12MaxBenchmark4initEv(%class.MaxBenchmark* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  %k = alloca i32, align 4
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %2 = load i32, i32* %k, align 4
  %sub = sub nsw i32 0, %2
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %3 = load i32, i32* %k, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %3, %cond.false ]
  %conv = sitofp i32 %cond to double
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1000 x double], [1000 x double]* @U, i64 0, i64 %idxprom
  store double %conv, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %5 = load i32, i32* %k, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @_ZNK12MaxBenchmark7c_styleEv(%class.MaxBenchmark* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  %max = alloca double, align 8
  %k = alloca i32, align 4
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  %0 = load double, double* getelementptr inbounds ([1000 x double], [1000 x double]* @U, i64 0, i64 0), align 16
  store double %0, double* %max, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %1, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1000 x double], [1000 x double]* @U, i64 0, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8
  %4 = load double, double* %max, align 8
  %cmp2 = fcmp ogt double %3, %4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [1000 x double], [1000 x double]* @U, i64 0, i64 %idxprom3
  %6 = load double, double* %arrayidx4, align 8
  store double %6, double* %max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %k, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load double, double* %max, align 8
  store double %8, double* @MaxResult, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZNK12MaxBenchmark9oop_styleEv(%class.MaxBenchmark* %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  %max = alloca double, align 8
  %k = alloca i32, align 4
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  %0 = load double, double* getelementptr inbounds ([1000 x double], [1000 x double]* @U, i64 0, i64 0), align 16
  store double %0, double* %max, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %1, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1000 x double], [1000 x double]* @U, i64 0, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8
  %4 = load double, double* %max, align 8
  %call = call i32 @_Z7Greaterdd(double %3, double %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [1000 x double], [1000 x double]* @U, i64 0, i64 %idxprom2
  %6 = load double, double* %arrayidx3, align 8
  store double %6, double* %max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %k, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load double, double* %max, align 8
  store double %8, double* @MaxResult, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @_ZNK12MaxBenchmark5checkEiRdS0_(%class.MaxBenchmark* %this, i32 %iterations, double* dereferenceable(8) %flops, double* dereferenceable(8) %checksum) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  %iterations.addr = alloca i32, align 4
  %flops.addr = alloca double*, align 8
  %checksum.addr = alloca double*, align 8
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  store i32 %iterations, i32* %iterations.addr, align 4
  store double* %flops, double** %flops.addr, align 8
  store double* %checksum, double** %checksum.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  %0 = load i32, i32* %iterations.addr, align 4
  %conv = sitofp i32 %0 to double
  %mul = fmul double 1.000000e+03, %conv
  %1 = load double*, double** %flops.addr, align 8
  store double %mul, double* %1, align 8
  %2 = load double, double* @MaxResult, align 8
  %3 = load double*, double** %checksum.addr, align 8
  store double %2, double* %3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z7Greaterdd(double %i, double %j) #0 comdat {
entry:
  %i.addr = alloca double, align 8
  %j.addr = alloca double, align 8
  store double %i, double* %i.addr, align 8
  store double %j, double* %j.addr, align 8
  %0 = load double, double* %i.addr, align 8
  %1 = load double, double* %j.addr, align 8
  %cmp = fcmp ogt double %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i8* @_ZNK15MatrixBenchmark4nameEv(%class.MaxBenchmark* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0)
}

; Function Attrs: noinline nounwind uwtable
define void @_ZNK15MatrixBenchmark4initEv(%class.MaxBenchmark* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  %j = alloca i32, align 4
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 2500
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4
  %add = add nsw i32 %1, 1
  %conv = sitofp i32 %add to double
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2500 x double], [2500 x double]* @C, i64 0, i64 %idxprom
  store double %conv, double* %arrayidx, align 8
  %3 = load i32, i32* %j, align 4
  %add2 = add nsw i32 %3, 1
  %conv3 = sitofp i32 %add2 to double
  %div = fdiv double 1.000000e+00, %conv3
  %4 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [2500 x double], [2500 x double]* @D, i64 0, i64 %idxprom4
  store double %div, double* %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @_ZNK15MatrixBenchmark7c_styleEv(%class.MaxBenchmark* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca double, align 8
  %k = alloca i32, align 4
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 50
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc18, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %1, 50
  br i1 %cmp3, label %for.body4, label %for.end20

for.body4:                                        ; preds = %for.cond2
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %2 = load i32, i32* %k, align 4
  %cmp6 = icmp slt i32 %2, 50
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 50, %3
  %4 = load i32, i32* %k, align 4
  %add = add nsw i32 %mul, %4
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [2500 x double], [2500 x double]* @C, i64 0, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %6 = load i32, i32* %k, align 4
  %mul8 = mul nsw i32 50, %6
  %7 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %mul8, %7
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [2500 x double], [2500 x double]* @D, i64 0, i64 %idxprom10
  %8 = load double, double* %arrayidx11, align 8
  %mul12 = fmul double %5, %8
  %9 = load double, double* %sum, align 8
  %add13 = fadd double %9, %mul12
  store double %add13, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %10 = load i32, i32* %k, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond5

for.end:                                          ; preds = %for.cond5
  %11 = load double, double* %sum, align 8
  %12 = load i32, i32* %i, align 4
  %mul14 = mul nsw i32 50, %12
  %13 = load i32, i32* %j, align 4
  %add15 = add nsw i32 %mul14, %13
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds [2500 x double], [2500 x double]* @E, i64 0, i64 %idxprom16
  store double %11, double* %arrayidx17, align 8
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %14 = load i32, i32* %j, align 4
  %inc19 = add nsw i32 %14, 1
  store i32 %inc19, i32* %j, align 4
  br label %for.cond2

for.end20:                                        ; preds = %for.cond2
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %15 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %15, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond

for.end23:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZNK15MatrixBenchmark9oop_styleEv(%class.MaxBenchmark* %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  %c = alloca %class.Matrix, align 8
  %d = alloca %class.Matrix, align 8
  %e = alloca %class.Matrix, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca double, align 8
  %k = alloca i32, align 4
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  call void @_ZN6MatrixC2EiiPd(%class.Matrix* %c, i32 50, i32 50, double* getelementptr inbounds ([2500 x double], [2500 x double]* @C, i32 0, i32 0))
  call void @_ZN6MatrixC2EiiPd(%class.Matrix* %d, i32 50, i32 50, double* getelementptr inbounds ([2500 x double], [2500 x double]* @D, i32 0, i32 0))
  call void @_ZN6MatrixC2EiiPd(%class.Matrix* %e, i32 50, i32 50, double* getelementptr inbounds ([2500 x double], [2500 x double]* @E, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i32, i32* %i, align 4
  %rows = getelementptr inbounds %class.Matrix, %class.Matrix* %e, i32 0, i32 1
  %1 = load i32, i32* %rows, align 8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc11, %for.body
  %2 = load i32, i32* %j, align 4
  %cols = getelementptr inbounds %class.Matrix, %class.Matrix* %e, i32 0, i32 2
  %3 = load i32, i32* %cols, align 4
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body4, label %for.end13

for.body4:                                        ; preds = %for.cond2
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %4 = load i32, i32* %k, align 4
  %cols6 = getelementptr inbounds %class.Matrix, %class.Matrix* %e, i32 0, i32 2
  %5 = load i32, i32* %cols6, align 4
  %cmp7 = icmp slt i32 %4, %5
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %k, align 4
  %call = call dereferenceable(8) double* @_ZN6MatrixclEii(%class.Matrix* %c, i32 %6, i32 %7)
  %8 = load double, double* %call, align 8
  %9 = load i32, i32* %k, align 4
  %10 = load i32, i32* %j, align 4
  %call9 = call dereferenceable(8) double* @_ZN6MatrixclEii(%class.Matrix* %d, i32 %9, i32 %10)
  %11 = load double, double* %call9, align 8
  %mul = fmul double %8, %11
  %12 = load double, double* %sum, align 8
  %add = fadd double %12, %mul
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %13 = load i32, i32* %k, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond5

for.end:                                          ; preds = %for.cond5
  %14 = load double, double* %sum, align 8
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %j, align 4
  %call10 = call dereferenceable(8) double* @_ZN6MatrixclEii(%class.Matrix* %e, i32 %15, i32 %16)
  store double %14, double* %call10, align 8
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %17 = load i32, i32* %j, align 4
  %inc12 = add nsw i32 %17, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.cond2

for.end13:                                        ; preds = %for.cond2
  br label %for.inc14

for.inc14:                                        ; preds = %for.end13
  %18 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %18, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end16:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @_ZNK15MatrixBenchmark5checkEiRdS0_(%class.MaxBenchmark* %this, i32 %iterations, double* dereferenceable(8) %flops, double* dereferenceable(8) %checksum) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  %iterations.addr = alloca i32, align 4
  %flops.addr = alloca double*, align 8
  %checksum.addr = alloca double*, align 8
  %sum = alloca double, align 8
  %k = alloca i32, align 4
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  store i32 %iterations, i32* %iterations.addr, align 4
  store double* %flops, double** %flops.addr, align 8
  store double* %checksum, double** %checksum.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 2500
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2500 x double], [2500 x double]* @E, i64 0, i64 %idxprom
  %2 = load double, double* %arrayidx, align 8
  %3 = load double, double* %sum, align 8
  %add = fadd double %3, %2
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %k, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load double, double* %sum, align 8
  %6 = load double*, double** %checksum.addr, align 8
  store double %5, double* %6, align 8
  %7 = load i32, i32* %iterations.addr, align 4
  %conv = sitofp i32 %7 to double
  %mul = fmul double 2.500000e+05, %conv
  %8 = load double*, double** %flops.addr, align 8
  store double %mul, double* %8, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6MatrixC2EiiPd(%class.Matrix* %this, i32 %rows_, i32 %cols_, double* %data_) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.Matrix*, align 8
  %rows_.addr = alloca i32, align 4
  %cols_.addr = alloca i32, align 4
  %data_.addr = alloca double*, align 8
  store %class.Matrix* %this, %class.Matrix** %this.addr, align 8
  store i32 %rows_, i32* %rows_.addr, align 4
  store i32 %cols_, i32* %cols_.addr, align 4
  store double* %data_, double** %data_.addr, align 8
  %this1 = load %class.Matrix*, %class.Matrix** %this.addr, align 8
  %data = getelementptr inbounds %class.Matrix, %class.Matrix* %this1, i32 0, i32 0
  %0 = load double*, double** %data_.addr, align 8
  store double* %0, double** %data, align 8
  %rows = getelementptr inbounds %class.Matrix, %class.Matrix* %this1, i32 0, i32 1
  %1 = load i32, i32* %rows_.addr, align 4
  store i32 %1, i32* %rows, align 8
  %cols = getelementptr inbounds %class.Matrix, %class.Matrix* %this1, i32 0, i32 2
  %2 = load i32, i32* %cols_.addr, align 4
  store i32 %2, i32* %cols, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZN6MatrixclEii(%class.Matrix* %this, i32 %i, i32 %j) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.Matrix*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store %class.Matrix* %this, %class.Matrix** %this.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %this1 = load %class.Matrix*, %class.Matrix** %this.addr, align 8
  %data = getelementptr inbounds %class.Matrix, %class.Matrix* %this1, i32 0, i32 0
  %0 = load double*, double** %data, align 8
  %cols = getelementptr inbounds %class.Matrix, %class.Matrix* %this1, i32 0, i32 2
  %1 = load i32, i32* %cols, align 4
  %2 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %1, %2
  %3 = load i32, i32* %j.addr, align 4
  %add = add nsw i32 %mul, %3
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i8* @_ZNK17IteratorBenchmark4nameEv(%class.MaxBenchmark* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  ret i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0)
}

; Function Attrs: noinline nounwind uwtable
define void @_ZNK17IteratorBenchmark4initEv(%class.MaxBenchmark* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  %i = alloca i32, align 4
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %add = add nsw i32 %1, 1
  %conv = sitofp i32 %add to double
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1000 x double], [1000 x double]* @A, i64 0, i64 %idxprom
  store double %conv, double* %arrayidx, align 8
  %3 = load i32, i32* %i, align 4
  %add2 = add nsw i32 %3, 1
  %conv3 = sitofp i32 %add2 to double
  %div = fdiv double 1.000000e+00, %conv3
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [1000 x double], [1000 x double]* @B, i64 0, i64 %idxprom4
  store double %div, double* %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @_ZNK17IteratorBenchmark7c_styleEv(%class.MaxBenchmark* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  %sum = alloca double, align 8
  %i = alloca i32, align 4
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1000 x double], [1000 x double]* @A, i64 0, i64 %idxprom
  %2 = load double, double* %arrayidx, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [1000 x double], [1000 x double]* @B, i64 0, i64 %idxprom2
  %4 = load double, double* %arrayidx3, align 8
  %mul = fmul double %2, %4
  %5 = load double, double* %sum, align 8
  %add = fadd double %5, %mul
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load double, double* %sum, align 8
  store double %7, double* @IteratorResult, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZNK17IteratorBenchmark9oop_styleEv(%class.MaxBenchmark* %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  %sum = alloca double, align 8
  %ai = alloca %class.Iterator, align 8
  %bi = alloca %class.Iterator, align 8
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  store double 0.000000e+00, double* %sum, align 8
  call void @_ZN8IteratorC2EPdi(%class.Iterator* %ai, double* getelementptr inbounds ([1000 x double], [1000 x double]* @A, i32 0, i32 0), i32 1000)
  call void @_ZN8IteratorC2EPdi(%class.Iterator* %bi, double* getelementptr inbounds ([1000 x double], [1000 x double]* @B, i32 0, i32 0), i32 1000)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call i32 @_ZN8Iterator4doneEv(%class.Iterator* %ai)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call double @_ZN8Iterator4lookEv(%class.Iterator* %ai)
  %call3 = call double @_ZN8Iterator4lookEv(%class.Iterator* %bi)
  %mul = fmul double %call2, %call3
  %0 = load double, double* %sum, align 8
  %add = fadd double %0, %mul
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  call void @_ZN8Iterator4nextEv(%class.Iterator* %ai)
  call void @_ZN8Iterator4nextEv(%class.Iterator* %bi)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %1 = load double, double* %sum, align 8
  store double %1, double* @IteratorResult, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @_ZNK17IteratorBenchmark5checkEiRdS0_(%class.MaxBenchmark* %this, i32 %iterations, double* dereferenceable(8) %flops, double* dereferenceable(8) %checksum) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  %iterations.addr = alloca i32, align 4
  %flops.addr = alloca double*, align 8
  %checksum.addr = alloca double*, align 8
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  store i32 %iterations, i32* %iterations.addr, align 4
  store double* %flops, double** %flops.addr, align 8
  store double* %checksum, double** %checksum.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  %0 = load i32, i32* %iterations.addr, align 4
  %mul = mul nsw i32 2000, %0
  %conv = sitofp i32 %mul to double
  %1 = load double*, double** %flops.addr, align 8
  store double %conv, double* %1, align 8
  %2 = load double, double* @IteratorResult, align 8
  %3 = load double*, double** %checksum.addr, align 8
  store double %2, double* %3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN8IteratorC2EPdi(%class.Iterator* %this, double* %array1, i32 %limit1) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.Iterator*, align 8
  %array1.addr = alloca double*, align 8
  %limit1.addr = alloca i32, align 4
  store %class.Iterator* %this, %class.Iterator** %this.addr, align 8
  store double* %array1, double** %array1.addr, align 8
  store i32 %limit1, i32* %limit1.addr, align 4
  %this1 = load %class.Iterator*, %class.Iterator** %this.addr, align 8
  %index = getelementptr inbounds %class.Iterator, %class.Iterator* %this1, i32 0, i32 0
  store i32 0, i32* %index, align 8
  %limit = getelementptr inbounds %class.Iterator, %class.Iterator* %this1, i32 0, i32 1
  %0 = load i32, i32* %limit1.addr, align 4
  store i32 %0, i32* %limit, align 4
  %array = getelementptr inbounds %class.Iterator, %class.Iterator* %this1, i32 0, i32 2
  %1 = load double*, double** %array1.addr, align 8
  store double* %1, double** %array, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZN8Iterator4doneEv(%class.Iterator* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.Iterator*, align 8
  store %class.Iterator* %this, %class.Iterator** %this.addr, align 8
  %this1 = load %class.Iterator*, %class.Iterator** %this.addr, align 8
  %index = getelementptr inbounds %class.Iterator, %class.Iterator* %this1, i32 0, i32 0
  %0 = load i32, i32* %index, align 8
  %limit = getelementptr inbounds %class.Iterator, %class.Iterator* %this1, i32 0, i32 1
  %1 = load i32, i32* %limit, align 4
  %cmp = icmp sge i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double @_ZN8Iterator4lookEv(%class.Iterator* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.Iterator*, align 8
  store %class.Iterator* %this, %class.Iterator** %this.addr, align 8
  %this1 = load %class.Iterator*, %class.Iterator** %this.addr, align 8
  %array = getelementptr inbounds %class.Iterator, %class.Iterator* %this1, i32 0, i32 2
  %0 = load double*, double** %array, align 8
  %index = getelementptr inbounds %class.Iterator, %class.Iterator* %this1, i32 0, i32 0
  %1 = load i32, i32* %index, align 8
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  %2 = load double, double* %arrayidx, align 8
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN8Iterator4nextEv(%class.Iterator* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.Iterator*, align 8
  store %class.Iterator* %this, %class.Iterator** %this.addr, align 8
  %this1 = load %class.Iterator*, %class.Iterator** %this.addr, align 8
  %index = getelementptr inbounds %class.Iterator, %class.Iterator* %this1, i32 0, i32 0
  %0 = load i32, i32* %index, align 8
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %index, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i8* @_ZNK16ComplexBenchmark4nameEv(%class.MaxBenchmark* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  ret i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0)
}

; Function Attrs: noinline uwtable
define void @_ZNK16ComplexBenchmark4initEv(%class.MaxBenchmark* %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  %k = alloca i32, align 4
  %ref.tmp = alloca %class.Complex, align 8
  %ref.tmp4 = alloca %class.Complex, align 8
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %add = add nsw i32 %1, 1
  %conv = sitofp i32 %add to double
  %2 = load i32, i32* %k, align 4
  %add2 = add nsw i32 %2, 1
  %conv3 = sitofp i32 %add2 to double
  %div = fdiv double 1.000000e+00, %conv3
  call void @_ZN7ComplexC2Edd(%class.Complex* %ref.tmp, double %conv, double %div)
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1000 x %class.Complex], [1000 x %class.Complex]* @X, i64 0, i64 %idxprom
  %4 = bitcast %class.Complex* %arrayidx to i8*
  %5 = bitcast %class.Complex* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false)
  call void @_ZN7ComplexC2Edd(%class.Complex* %ref.tmp4, double 0.000000e+00, double 0.000000e+00)
  %6 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [1000 x %class.Complex], [1000 x %class.Complex]* @Y, i64 0, i64 %idxprom5
  %7 = bitcast %class.Complex* %arrayidx6 to i8*
  %8 = bitcast %class.Complex* %ref.tmp4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %k, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @_ZNK16ComplexBenchmark7c_styleEv(%class.MaxBenchmark* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  %factor_re = alloca double, align 8
  %factor_im = alloca double, align 8
  %k = alloca i32, align 4
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  store double 5.000000e-01, double* %factor_re, align 8
  store double 0x3FEBB67AE8584CAA, double* %factor_im, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1000 x %class.Complex], [1000 x %class.Complex]* @Y, i64 0, i64 %idxprom
  %re = getelementptr inbounds %class.Complex, %class.Complex* %arrayidx, i32 0, i32 0
  %2 = load double, double* %re, align 16
  %3 = load double, double* %factor_re, align 8
  %4 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [1000 x %class.Complex], [1000 x %class.Complex]* @X, i64 0, i64 %idxprom2
  %re4 = getelementptr inbounds %class.Complex, %class.Complex* %arrayidx3, i32 0, i32 0
  %5 = load double, double* %re4, align 16
  %mul = fmul double %3, %5
  %add = fadd double %2, %mul
  %6 = load double, double* %factor_im, align 8
  %7 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [1000 x %class.Complex], [1000 x %class.Complex]* @X, i64 0, i64 %idxprom5
  %im = getelementptr inbounds %class.Complex, %class.Complex* %arrayidx6, i32 0, i32 1
  %8 = load double, double* %im, align 8
  %mul7 = fmul double %6, %8
  %sub = fsub double %add, %mul7
  %9 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [1000 x %class.Complex], [1000 x %class.Complex]* @Y, i64 0, i64 %idxprom8
  %re10 = getelementptr inbounds %class.Complex, %class.Complex* %arrayidx9, i32 0, i32 0
  store double %sub, double* %re10, align 16
  %10 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [1000 x %class.Complex], [1000 x %class.Complex]* @Y, i64 0, i64 %idxprom11
  %im13 = getelementptr inbounds %class.Complex, %class.Complex* %arrayidx12, i32 0, i32 1
  %11 = load double, double* %im13, align 8
  %12 = load double, double* %factor_re, align 8
  %13 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [1000 x %class.Complex], [1000 x %class.Complex]* @X, i64 0, i64 %idxprom14
  %im16 = getelementptr inbounds %class.Complex, %class.Complex* %arrayidx15, i32 0, i32 1
  %14 = load double, double* %im16, align 8
  %mul17 = fmul double %12, %14
  %add18 = fadd double %11, %mul17
  %15 = load double, double* %factor_im, align 8
  %16 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [1000 x %class.Complex], [1000 x %class.Complex]* @X, i64 0, i64 %idxprom19
  %re21 = getelementptr inbounds %class.Complex, %class.Complex* %arrayidx20, i32 0, i32 0
  %17 = load double, double* %re21, align 16
  %mul22 = fmul double %15, %17
  %add23 = fadd double %add18, %mul22
  %18 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds [1000 x %class.Complex], [1000 x %class.Complex]* @Y, i64 0, i64 %idxprom24
  %im26 = getelementptr inbounds %class.Complex, %class.Complex* %arrayidx25, i32 0, i32 1
  store double %add23, double* %im26, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZNK16ComplexBenchmark9oop_styleEv(%class.MaxBenchmark* %this) unnamed_addr #1 align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  %factor = alloca %class.Complex, align 8
  %k = alloca i32, align 4
  %ref.tmp = alloca %class.Complex, align 8
  %agg.tmp = alloca %class.Complex, align 8
  %agg.tmp2 = alloca %class.Complex, align 8
  %agg.tmp3 = alloca %class.Complex, align 8
  %agg.tmp4 = alloca %class.Complex, align 8
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  call void @_ZN7ComplexC2Edd(%class.Complex* %factor, double 5.000000e-01, double 0x3FEBB67AE8584CAA)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1000 x %class.Complex], [1000 x %class.Complex]* @Y, i64 0, i64 %idxprom
  %2 = bitcast %class.Complex* %agg.tmp to i8*
  %3 = bitcast %class.Complex* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  %4 = bitcast %class.Complex* %agg.tmp3 to i8*
  %5 = bitcast %class.Complex* %factor to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 16, i32 8, i1 false)
  %6 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [1000 x %class.Complex], [1000 x %class.Complex]* @X, i64 0, i64 %idxprom5
  %7 = bitcast %class.Complex* %agg.tmp4 to i8*
  %8 = bitcast %class.Complex* %arrayidx6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %9 = bitcast %class.Complex* %agg.tmp3 to { double, double }*
  %10 = getelementptr inbounds { double, double }, { double, double }* %9, i32 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %9, i32 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = bitcast %class.Complex* %agg.tmp4 to { double, double }*
  %15 = getelementptr inbounds { double, double }, { double, double }* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds { double, double }, { double, double }* %14, i32 0, i32 1
  %18 = load double, double* %17, align 8
  %call = call { double, double } @_Zml7ComplexS_(double %11, double %13, double %16, double %18)
  %19 = bitcast %class.Complex* %agg.tmp2 to { double, double }*
  %20 = getelementptr inbounds { double, double }, { double, double }* %19, i32 0, i32 0
  %21 = extractvalue { double, double } %call, 0
  store double %21, double* %20, align 8
  %22 = getelementptr inbounds { double, double }, { double, double }* %19, i32 0, i32 1
  %23 = extractvalue { double, double } %call, 1
  store double %23, double* %22, align 8
  %24 = bitcast %class.Complex* %agg.tmp to { double, double }*
  %25 = getelementptr inbounds { double, double }, { double, double }* %24, i32 0, i32 0
  %26 = load double, double* %25, align 8
  %27 = getelementptr inbounds { double, double }, { double, double }* %24, i32 0, i32 1
  %28 = load double, double* %27, align 8
  %29 = bitcast %class.Complex* %agg.tmp2 to { double, double }*
  %30 = getelementptr inbounds { double, double }, { double, double }* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = getelementptr inbounds { double, double }, { double, double }* %29, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %call7 = call { double, double } @_Zpl7ComplexS_(double %26, double %28, double %31, double %33)
  %34 = bitcast %class.Complex* %ref.tmp to { double, double }*
  %35 = getelementptr inbounds { double, double }, { double, double }* %34, i32 0, i32 0
  %36 = extractvalue { double, double } %call7, 0
  store double %36, double* %35, align 8
  %37 = getelementptr inbounds { double, double }, { double, double }* %34, i32 0, i32 1
  %38 = extractvalue { double, double } %call7, 1
  store double %38, double* %37, align 8
  %39 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %39 to i64
  %arrayidx9 = getelementptr inbounds [1000 x %class.Complex], [1000 x %class.Complex]* @Y, i64 0, i64 %idxprom8
  %40 = bitcast %class.Complex* %arrayidx9 to i8*
  %41 = bitcast %class.Complex* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %k, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @_ZNK16ComplexBenchmark5checkEiRdS0_(%class.MaxBenchmark* %this, i32 %iterations, double* dereferenceable(8) %flops, double* dereferenceable(8) %checksum) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  %iterations.addr = alloca i32, align 4
  %flops.addr = alloca double*, align 8
  %checksum.addr = alloca double*, align 8
  %sum = alloca double, align 8
  %k = alloca i32, align 4
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  store i32 %iterations, i32* %iterations.addr, align 4
  store double* %flops, double** %flops.addr, align 8
  store double* %checksum, double** %checksum.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %k, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1000 x %class.Complex], [1000 x %class.Complex]* @Y, i64 0, i64 %idxprom
  %re = getelementptr inbounds %class.Complex, %class.Complex* %arrayidx, i32 0, i32 0
  %2 = load double, double* %re, align 16
  %3 = load i32, i32* %k, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [1000 x %class.Complex], [1000 x %class.Complex]* @Y, i64 0, i64 %idxprom2
  %im = getelementptr inbounds %class.Complex, %class.Complex* %arrayidx3, i32 0, i32 1
  %4 = load double, double* %im, align 8
  %add = fadd double %2, %4
  %5 = load double, double* %sum, align 8
  %add4 = fadd double %5, %add
  store double %add4, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %k, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load double, double* %sum, align 8
  %8 = load double*, double** %checksum.addr, align 8
  store double %7, double* %8, align 8
  %9 = load i32, i32* %iterations.addr, align 4
  %mul = mul nsw i32 8000, %9
  %conv = sitofp i32 %mul to double
  %10 = load double*, double** %flops.addr, align 8
  store double %conv, double* %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN7ComplexC2Edd(%class.Complex* %this, double %r, double %i) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.Complex*, align 8
  %r.addr = alloca double, align 8
  %i.addr = alloca double, align 8
  store %class.Complex* %this, %class.Complex** %this.addr, align 8
  store double %r, double* %r.addr, align 8
  store double %i, double* %i.addr, align 8
  %this1 = load %class.Complex*, %class.Complex** %this.addr, align 8
  %re = getelementptr inbounds %class.Complex, %class.Complex* %this1, i32 0, i32 0
  %0 = load double, double* %r.addr, align 8
  store double %0, double* %re, align 8
  %im = getelementptr inbounds %class.Complex, %class.Complex* %this1, i32 0, i32 1
  %1 = load double, double* %i.addr, align 8
  store double %1, double* %im, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline uwtable
define linkonce_odr { double, double } @_Zml7ComplexS_(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #1 comdat {
entry:
  %retval = alloca %class.Complex, align 8
  %a = alloca %class.Complex, align 8
  %b = alloca %class.Complex, align 8
  %0 = bitcast %class.Complex* %a to { double, double }*
  %1 = getelementptr inbounds { double, double }, { double, double }* %0, i32 0, i32 0
  store double %a.coerce0, double* %1, align 8
  %2 = getelementptr inbounds { double, double }, { double, double }* %0, i32 0, i32 1
  store double %a.coerce1, double* %2, align 8
  %3 = bitcast %class.Complex* %b to { double, double }*
  %4 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  store double %b.coerce0, double* %4, align 8
  %5 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double %b.coerce1, double* %5, align 8
  %re = getelementptr inbounds %class.Complex, %class.Complex* %a, i32 0, i32 0
  %6 = load double, double* %re, align 8
  %re1 = getelementptr inbounds %class.Complex, %class.Complex* %b, i32 0, i32 0
  %7 = load double, double* %re1, align 8
  %mul = fmul double %6, %7
  %im = getelementptr inbounds %class.Complex, %class.Complex* %a, i32 0, i32 1
  %8 = load double, double* %im, align 8
  %im2 = getelementptr inbounds %class.Complex, %class.Complex* %b, i32 0, i32 1
  %9 = load double, double* %im2, align 8
  %mul3 = fmul double %8, %9
  %sub = fsub double %mul, %mul3
  %re4 = getelementptr inbounds %class.Complex, %class.Complex* %a, i32 0, i32 0
  %10 = load double, double* %re4, align 8
  %im5 = getelementptr inbounds %class.Complex, %class.Complex* %b, i32 0, i32 1
  %11 = load double, double* %im5, align 8
  %mul6 = fmul double %10, %11
  %im7 = getelementptr inbounds %class.Complex, %class.Complex* %a, i32 0, i32 1
  %12 = load double, double* %im7, align 8
  %re8 = getelementptr inbounds %class.Complex, %class.Complex* %b, i32 0, i32 0
  %13 = load double, double* %re8, align 8
  %mul9 = fmul double %12, %13
  %add = fadd double %mul6, %mul9
  call void @_ZN7ComplexC2Edd(%class.Complex* %retval, double %sub, double %add)
  %14 = bitcast %class.Complex* %retval to { double, double }*
  %15 = load { double, double }, { double, double }* %14, align 8
  ret { double, double } %15
}

; Function Attrs: noinline uwtable
define linkonce_odr { double, double } @_Zpl7ComplexS_(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #1 comdat {
entry:
  %retval = alloca %class.Complex, align 8
  %a = alloca %class.Complex, align 8
  %b = alloca %class.Complex, align 8
  %0 = bitcast %class.Complex* %a to { double, double }*
  %1 = getelementptr inbounds { double, double }, { double, double }* %0, i32 0, i32 0
  store double %a.coerce0, double* %1, align 8
  %2 = getelementptr inbounds { double, double }, { double, double }* %0, i32 0, i32 1
  store double %a.coerce1, double* %2, align 8
  %3 = bitcast %class.Complex* %b to { double, double }*
  %4 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  store double %b.coerce0, double* %4, align 8
  %5 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double %b.coerce1, double* %5, align 8
  %re = getelementptr inbounds %class.Complex, %class.Complex* %a, i32 0, i32 0
  %6 = load double, double* %re, align 8
  %re1 = getelementptr inbounds %class.Complex, %class.Complex* %b, i32 0, i32 0
  %7 = load double, double* %re1, align 8
  %add = fadd double %6, %7
  %im = getelementptr inbounds %class.Complex, %class.Complex* %a, i32 0, i32 1
  %8 = load double, double* %im, align 8
  %im2 = getelementptr inbounds %class.Complex, %class.Complex* %b, i32 0, i32 1
  %9 = load double, double* %im2, align 8
  %add3 = fadd double %8, %9
  call void @_ZN7ComplexC2Edd(%class.Complex* %retval, double %add, double %add3)
  %10 = bitcast %class.Complex* %retval to { double, double }*
  %11 = load { double, double }, { double, double }* %10, align 8
  ret { double, double } %11
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_oopack_v1p8.cpp() #1 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.1()
  call void @__cxx_global_var_init.2()
  call void @__cxx_global_var_init.3()
  call void @__cxx_global_var_init.4()
  call void @__cxx_global_var_init.5()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #1 section ".text.startup" {
entry:
  call void @_ZN12MaxBenchmarkC2Ev(%class.MaxBenchmark* @TheMaxBenchmark)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #1 section ".text.startup" {
entry:
  call void @_ZN15MatrixBenchmarkC2Ev(%class.MaxBenchmark* @TheMatrixBenchmark)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.2() #1 section ".text.startup" {
entry:
  call void @_ZN17IteratorBenchmarkC2Ev(%class.MaxBenchmark* @TheIteratorBenchmark)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.3() #1 section ".text.startup" {
entry:
  call void @_ZN16ComplexBenchmarkC2Ev(%class.MaxBenchmark* @TheComplexBenchmark)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.4() #1 section ".text.startup" {
entry:
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %arrayctor.loop, %entry
  %arrayctor.cur = phi %class.Complex* [ getelementptr inbounds ([1000 x %class.Complex], [1000 x %class.Complex]* @X, i32 0, i32 0), %entry ], [ %arrayctor.next, %arrayctor.loop ]
  call void @_ZN7ComplexC2Ev(%class.Complex* %arrayctor.cur)
  %arrayctor.next = getelementptr inbounds %class.Complex, %class.Complex* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %class.Complex* %arrayctor.next, getelementptr inbounds (%class.Complex, %class.Complex* getelementptr inbounds ([1000 x %class.Complex], [1000 x %class.Complex]* @X, i32 0, i32 0), i64 1000)
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %arrayctor.loop
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.5() #1 section ".text.startup" {
entry:
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %arrayctor.loop, %entry
  %arrayctor.cur = phi %class.Complex* [ getelementptr inbounds ([1000 x %class.Complex], [1000 x %class.Complex]* @Y, i32 0, i32 0), %entry ], [ %arrayctor.next, %arrayctor.loop ]
  call void @_ZN7ComplexC2Ev(%class.Complex* %arrayctor.cur)
  %arrayctor.next = getelementptr inbounds %class.Complex, %class.Complex* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %class.Complex* %arrayctor.next, getelementptr inbounds (%class.Complex, %class.Complex* getelementptr inbounds ([1000 x %class.Complex], [1000 x %class.Complex]* @Y, i32 0, i32 0), i64 1000)
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %arrayctor.loop
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN7ComplexC2Ev(%class.Complex* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.Complex*, align 8
  store %class.Complex* %this, %class.Complex** %this.addr, align 8
  %this1 = load %class.Complex*, %class.Complex** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN16ComplexBenchmarkC2Ev(%class.MaxBenchmark* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  %0 = bitcast %class.MaxBenchmark* %this1 to %class.Benchmark*
  call void @_ZN9BenchmarkC2Ev(%class.Benchmark* %0)
  %1 = bitcast %class.MaxBenchmark* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV16ComplexBenchmark, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9BenchmarkC2Ev(%class.Benchmark* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.Benchmark*, align 8
  store %class.Benchmark* %this, %class.Benchmark** %this.addr, align 8
  %this1 = load %class.Benchmark*, %class.Benchmark** %this.addr, align 8
  %0 = bitcast %class.Benchmark* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV9Benchmark, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  %1 = load i32, i32* @_ZN9Benchmark5countE, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @_ZN9Benchmark5countE, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x %class.Benchmark*], [4 x %class.Benchmark*]* @_ZN9Benchmark4listE, i64 0, i64 %idxprom
  store %class.Benchmark* %this1, %class.Benchmark** %arrayidx, align 8
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN17IteratorBenchmarkC2Ev(%class.MaxBenchmark* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  %0 = bitcast %class.MaxBenchmark* %this1 to %class.Benchmark*
  call void @_ZN9BenchmarkC2Ev(%class.Benchmark* %0)
  %1 = bitcast %class.MaxBenchmark* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV17IteratorBenchmark, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN15MatrixBenchmarkC2Ev(%class.MaxBenchmark* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  %0 = bitcast %class.MaxBenchmark* %this1 to %class.Benchmark*
  call void @_ZN9BenchmarkC2Ev(%class.Benchmark* %0)
  %1 = bitcast %class.MaxBenchmark* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV15MatrixBenchmark, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN12MaxBenchmarkC2Ev(%class.MaxBenchmark* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %class.MaxBenchmark*, align 8
  store %class.MaxBenchmark* %this, %class.MaxBenchmark** %this.addr, align 8
  %this1 = load %class.MaxBenchmark*, %class.MaxBenchmark** %this.addr, align 8
  %0 = bitcast %class.MaxBenchmark* %this1 to %class.Benchmark*
  call void @_ZN9BenchmarkC2Ev(%class.Benchmark* %0)
  %1 = bitcast %class.MaxBenchmark* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [7 x i8*] }, { [7 x i8*] }* @_ZTV12MaxBenchmark, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZNK9Benchmark8time_oneEMS_KFvvEiRdS2_S2_(%class.Benchmark* %this, i64 %function.coerce0, i64 %function.coerce1, i32 %iterations, double* dereferenceable(8) %sec, double* dereferenceable(8) %Mflop, double* dereferenceable(8) %checksum) #1 align 2 {
entry:
  %function = alloca { i64, i64 }, align 8
  %this.addr = alloca %class.Benchmark*, align 8
  %function.addr = alloca { i64, i64 }, align 8
  %iterations.addr = alloca i32, align 4
  %sec.addr = alloca double*, align 8
  %Mflop.addr = alloca double*, align 8
  %checksum.addr = alloca double*, align 8
  %t0 = alloca i64, align 8
  %k = alloca i32, align 4
  %t1 = alloca i64, align 8
  %flops = alloca double, align 8
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %function, i32 0, i32 0
  store i64 %function.coerce0, i64* %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %function, i32 0, i32 1
  store i64 %function.coerce1, i64* %1, align 8
  %function1 = load { i64, i64 }, { i64, i64 }* %function, align 8
  store %class.Benchmark* %this, %class.Benchmark** %this.addr, align 8
  store { i64, i64 } %function1, { i64, i64 }* %function.addr, align 8
  store i32 %iterations, i32* %iterations.addr, align 4
  store double* %sec, double** %sec.addr, align 8
  store double* %Mflop, double** %Mflop.addr, align 8
  store double* %checksum, double** %checksum.addr, align 8
  %this2 = load %class.Benchmark*, %class.Benchmark** %this.addr, align 8
  %2 = bitcast %class.Benchmark* %this2 to void (%class.Benchmark*)***
  %vtable = load void (%class.Benchmark*)**, void (%class.Benchmark*)*** %2, align 8
  %vfn = getelementptr inbounds void (%class.Benchmark*)*, void (%class.Benchmark*)** %vtable, i64 1
  %3 = load void (%class.Benchmark*)*, void (%class.Benchmark*)** %vfn, align 8
  call void %3(%class.Benchmark* %this2)
  %4 = load { i64, i64 }, { i64, i64 }* %function.addr, align 8
  %memptr.adj = extractvalue { i64, i64 } %4, 1
  %5 = bitcast %class.Benchmark* %this2 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 %memptr.adj
  %this.adjusted = bitcast i8* %6 to %class.Benchmark*
  %memptr.ptr = extractvalue { i64, i64 } %4, 0
  %7 = and i64 %memptr.ptr, 1
  %memptr.isvirtual = icmp ne i64 %7, 0
  br i1 %memptr.isvirtual, label %memptr.virtual, label %memptr.nonvirtual

memptr.virtual:                                   ; preds = %entry
  %8 = bitcast %class.Benchmark* %this.adjusted to i8**
  %vtable3 = load i8*, i8** %8, align 8
  %9 = sub i64 %memptr.ptr, 1
  %10 = getelementptr i8, i8* %vtable3, i64 %9
  %11 = bitcast i8* %10 to void (%class.Benchmark*)**
  %memptr.virtualfn = load void (%class.Benchmark*)*, void (%class.Benchmark*)** %11, align 8
  br label %memptr.end

memptr.nonvirtual:                                ; preds = %entry
  %memptr.nonvirtualfn = inttoptr i64 %memptr.ptr to void (%class.Benchmark*)*
  br label %memptr.end

memptr.end:                                       ; preds = %memptr.nonvirtual, %memptr.virtual
  %12 = phi void (%class.Benchmark*)* [ %memptr.virtualfn, %memptr.virtual ], [ %memptr.nonvirtualfn, %memptr.nonvirtual ]
  call void %12(%class.Benchmark* %this.adjusted)
  %13 = bitcast %class.Benchmark* %this2 to void (%class.Benchmark*)***
  %vtable4 = load void (%class.Benchmark*)**, void (%class.Benchmark*)*** %13, align 8
  %vfn5 = getelementptr inbounds void (%class.Benchmark*)*, void (%class.Benchmark*)** %vtable4, i64 1
  %14 = load void (%class.Benchmark*)*, void (%class.Benchmark*)** %vfn5, align 8
  call void %14(%class.Benchmark* %this2)
  %call = call i64 @clock() #8
  store i64 %call, i64* %t0, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %memptr.end
  %15 = load i32, i32* %k, align 4
  %16 = load i32, i32* %iterations.addr, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load { i64, i64 }, { i64, i64 }* %function.addr, align 8
  %memptr.adj6 = extractvalue { i64, i64 } %17, 1
  %18 = bitcast %class.Benchmark* %this2 to i8*
  %19 = getelementptr inbounds i8, i8* %18, i64 %memptr.adj6
  %this.adjusted7 = bitcast i8* %19 to %class.Benchmark*
  %memptr.ptr8 = extractvalue { i64, i64 } %17, 0
  %20 = and i64 %memptr.ptr8, 1
  %memptr.isvirtual9 = icmp ne i64 %20, 0
  br i1 %memptr.isvirtual9, label %memptr.virtual10, label %memptr.nonvirtual13

memptr.virtual10:                                 ; preds = %for.body
  %21 = bitcast %class.Benchmark* %this.adjusted7 to i8**
  %vtable11 = load i8*, i8** %21, align 8
  %22 = sub i64 %memptr.ptr8, 1
  %23 = getelementptr i8, i8* %vtable11, i64 %22
  %24 = bitcast i8* %23 to void (%class.Benchmark*)**
  %memptr.virtualfn12 = load void (%class.Benchmark*)*, void (%class.Benchmark*)** %24, align 8
  br label %memptr.end15

memptr.nonvirtual13:                              ; preds = %for.body
  %memptr.nonvirtualfn14 = inttoptr i64 %memptr.ptr8 to void (%class.Benchmark*)*
  br label %memptr.end15

memptr.end15:                                     ; preds = %memptr.nonvirtual13, %memptr.virtual10
  %25 = phi void (%class.Benchmark*)* [ %memptr.virtualfn12, %memptr.virtual10 ], [ %memptr.nonvirtualfn14, %memptr.nonvirtual13 ]
  call void %25(%class.Benchmark* %this.adjusted7)
  br label %for.inc

for.inc:                                          ; preds = %memptr.end15
  %26 = load i32, i32* %k, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call16 = call i64 @clock() #8
  store i64 %call16, i64* %t1, align 8
  %27 = bitcast %class.Benchmark* %this2 to void (%class.Benchmark*, i32, double*, double*)***
  %vtable17 = load void (%class.Benchmark*, i32, double*, double*)**, void (%class.Benchmark*, i32, double*, double*)*** %27, align 8
  %vfn18 = getelementptr inbounds void (%class.Benchmark*, i32, double*, double*)*, void (%class.Benchmark*, i32, double*, double*)** %vtable17, i64 4
  %28 = load void (%class.Benchmark*, i32, double*, double*)*, void (%class.Benchmark*, i32, double*, double*)** %vfn18, align 8
  %29 = load i32, i32* %iterations.addr, align 4
  %30 = load double*, double** %checksum.addr, align 8
  call void %28(%class.Benchmark* %this2, i32 %29, double* dereferenceable(8) %flops, double* dereferenceable(8) %30)
  %31 = load i64, i64* %t1, align 8
  %32 = load i64, i64* %t0, align 8
  %sub = sub nsw i64 %31, %32
  %conv = sitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  %33 = load double*, double** %sec.addr, align 8
  store double %div, double* %33, align 8
  %34 = load double, double* %flops, align 8
  %35 = load double*, double** %sec.addr, align 8
  %36 = load double, double* %35, align 8
  %div19 = fdiv double %34, %36
  %mul = fmul double %div19, 1.000000e-06
  %37 = load double*, double** %Mflop.addr, align 8
  store double %mul, double* %37, align 8
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() #3

; Function Attrs: noinline uwtable
define %class.Benchmark* @_ZN9Benchmark4findEPKc(i8* %name) #1 align 2 {
entry:
  %retval = alloca %class.Benchmark*, align 8
  %name.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @_ZN9Benchmark5countE, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x %class.Benchmark*], [4 x %class.Benchmark*]* @_ZN9Benchmark4listE, i64 0, i64 %idxprom
  %4 = load %class.Benchmark*, %class.Benchmark** %arrayidx, align 8
  %5 = bitcast %class.Benchmark* %4 to i8* (%class.Benchmark*)***
  %vtable = load i8* (%class.Benchmark*)**, i8* (%class.Benchmark*)*** %5, align 8
  %vfn = getelementptr inbounds i8* (%class.Benchmark*)*, i8* (%class.Benchmark*)** %vtable, i64 0
  %6 = load i8* (%class.Benchmark*)*, i8* (%class.Benchmark*)** %vfn, align 8
  %call = call i8* %6(%class.Benchmark* %4)
  %call1 = call i32 @strcmp(i8* %2, i8* %call) #9
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [4 x %class.Benchmark*], [4 x %class.Benchmark*]* @_ZN9Benchmark4listE, i64 0, i64 %idxprom3
  %8 = load %class.Benchmark*, %class.Benchmark** %arrayidx4, align 8
  store %class.Benchmark* %8, %class.Benchmark** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %class.Benchmark* null, %class.Benchmark** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load %class.Benchmark*, %class.Benchmark** %retval, align 8
  ret %class.Benchmark* %10
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: noinline uwtable
define void @_ZNK9Benchmark9time_bothEi(%class.Benchmark* %this, i32 %iterations) #1 align 2 {
entry:
  %this.addr = alloca %class.Benchmark*, align 8
  %iterations.addr = alloca i32, align 4
  %c_sec = alloca double, align 8
  %c_Mflop = alloca double, align 8
  %c_checksum = alloca double, align 8
  %coerce = alloca { i64, i64 }, align 8
  %oop_sec = alloca double, align 8
  %oop_Mflop = alloca double, align 8
  %oop_checksum = alloca double, align 8
  %coerce2 = alloca { i64, i64 }, align 8
  %ratio = alloca double, align 8
  %diff = alloca double, align 8
  %min = alloca double, align 8
  %rel = alloca double, align 8
  store %class.Benchmark* %this, %class.Benchmark** %this.addr, align 8
  store i32 %iterations, i32* %iterations.addr, align 4
  %this1 = load %class.Benchmark*, %class.Benchmark** %this.addr, align 8
  %0 = load i32, i32* %iterations.addr, align 4
  store { i64, i64 } { i64 17, i64 0 }, { i64, i64 }* %coerce, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %coerce, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %coerce, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  call void @_ZNK9Benchmark8time_oneEMS_KFvvEiRdS2_S2_(%class.Benchmark* %this1, i64 %2, i64 %4, i32 %0, double* dereferenceable(8) %c_sec, double* dereferenceable(8) %c_Mflop, double* dereferenceable(8) %c_checksum)
  %5 = load i32, i32* %iterations.addr, align 4
  store { i64, i64 } { i64 25, i64 0 }, { i64, i64 }* %coerce2, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %coerce2, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %coerce2, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  call void @_ZNK9Benchmark8time_oneEMS_KFvvEiRdS2_S2_(%class.Benchmark* %this1, i64 %7, i64 %9, i32 %5, double* dereferenceable(8) %oop_sec, double* dereferenceable(8) %oop_Mflop, double* dereferenceable(8) %oop_checksum)
  %10 = load double, double* %oop_sec, align 8
  %11 = load double, double* %c_sec, align 8
  %div = fdiv double %10, %11
  store double %div, double* %ratio, align 8
  %12 = load double, double* %c_checksum, align 8
  %13 = load double, double* %oop_checksum, align 8
  %sub = fsub double %12, %13
  store double %sub, double* %diff, align 8
  %14 = load double, double* %c_checksum, align 8
  %15 = load double, double* %oop_checksum, align 8
  %cmp = fcmp olt double %14, %15
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %16 = load double, double* %c_checksum, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %17 = load double, double* %oop_checksum, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %16, %cond.true ], [ %17, %cond.false ]
  store double %cond, double* %min, align 8
  %18 = load double, double* %diff, align 8
  %19 = load double, double* %min, align 8
  %div3 = fdiv double %18, %19
  store double %div3, double* %rel, align 8
  %20 = load double, double* %rel, align 8
  %cmp4 = fcmp ogt double %20, 0x3D10000000000000
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %21 = load double, double* %rel, align 8
  %cmp5 = fcmp olt double %21, 0xBD10000000000000
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %22 = bitcast %class.Benchmark* %this1 to i8* (%class.Benchmark*)***
  %vtable = load i8* (%class.Benchmark*)**, i8* (%class.Benchmark*)*** %22, align 8
  %vfn = getelementptr inbounds i8* (%class.Benchmark*)*, i8* (%class.Benchmark*)** %vtable, i64 0
  %23 = load i8* (%class.Benchmark*)*, i8* (%class.Benchmark*)** %vfn, align 8
  %call = call i8* %23(%class.Benchmark* %this1)
  %24 = load double, double* %rel, align 8
  %25 = load double, double* %c_checksum, align 8
  %26 = load double, double* %oop_checksum, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i32 0, i32 0), i8* %call, double %24, double %25, double %26)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %27 = bitcast %class.Benchmark* %this1 to i8* (%class.Benchmark*)***
  %vtable7 = load i8* (%class.Benchmark*)**, i8* (%class.Benchmark*)*** %27, align 8
  %vfn8 = getelementptr inbounds i8* (%class.Benchmark*)*, i8* (%class.Benchmark*)** %vtable7, i64 0
  %28 = load i8* (%class.Benchmark*)*, i8* (%class.Benchmark*)** %vfn8, align 8
  %call9 = call i8* %28(%class.Benchmark* %this1)
  %29 = load i32, i32* %iterations.addr, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* %call9, i32 %29)
  ret void
}

declare i32 @printf(i8*, ...) #5

; Function Attrs: noinline uwtable
define void @_Z5UsageiPPc(i32, i8** %argv) #1 {
entry:
  %.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 %0, i32* %.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0), i8* %2)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i32 0, i32 0))
  call void @exit(i32 1) #10
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: noinline norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %str1 = alloca [6 x i8], align 1
  %str2 = alloca [10 x i8], align 1
  %str3 = alloca [11 x i8], align 1
  %str4 = alloca [13 x i8], align 1
  %str5 = alloca [15 x i8], align 1
  %ActualArgs = alloca [6 x i8*], align 16
  %i = alloca i32, align 4
  %test_name = alloca i8*, align 8
  %rhs = alloca i8*, align 8
  %test_count = alloca i32, align 4
  %b = alloca %class.Benchmark*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [6 x i8]* %str1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_ZZ4mainE4str1, i32 0, i32 0), i64 6, i32 1, i1 false)
  %1 = bitcast [10 x i8]* %str2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_ZZ4mainE4str2, i32 0, i32 0), i64 10, i32 1, i1 false)
  %2 = bitcast [11 x i8]* %str3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @_ZZ4mainE4str3, i32 0, i32 0), i64 11, i32 1, i1 false)
  %3 = bitcast [13 x i8]* %str4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_ZZ4mainE4str4, i32 0, i32 0), i64 13, i32 1, i1 false)
  %4 = bitcast [15 x i8]* %str5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @_ZZ4mainE4str5, i32 0, i32 0), i64 15, i32 1, i1 false)
  %arrayinit.begin = getelementptr inbounds [6 x i8*], [6 x i8*]* %ActualArgs, i64 0, i64 0
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %str1, i32 0, i32 0
  store i8* %arraydecay, i8** %arrayinit.begin, align 8
  %arrayinit.element = getelementptr inbounds i8*, i8** %arrayinit.begin, i64 1
  %arraydecay1 = getelementptr inbounds [10 x i8], [10 x i8]* %str2, i32 0, i32 0
  store i8* %arraydecay1, i8** %arrayinit.element, align 8
  %arrayinit.element2 = getelementptr inbounds i8*, i8** %arrayinit.element, i64 1
  %arraydecay3 = getelementptr inbounds [11 x i8], [11 x i8]* %str3, i32 0, i32 0
  store i8* %arraydecay3, i8** %arrayinit.element2, align 8
  %arrayinit.element4 = getelementptr inbounds i8*, i8** %arrayinit.element2, i64 1
  %arraydecay5 = getelementptr inbounds [13 x i8], [13 x i8]* %str4, i32 0, i32 0
  store i8* %arraydecay5, i8** %arrayinit.element4, align 8
  %arrayinit.element6 = getelementptr inbounds i8*, i8** %arrayinit.element4, i64 1
  %arraydecay7 = getelementptr inbounds [15 x i8], [15 x i8]* %str5, i32 0, i32 0
  store i8* %arraydecay7, i8** %arrayinit.element6, align 8
  %arrayinit.element8 = getelementptr inbounds i8*, i8** %arrayinit.element6, i64 1
  store i8* null, i8** %arrayinit.element8, align 8
  %arraydecay9 = getelementptr inbounds [6 x i8*], [6 x i8*]* %ActualArgs, i32 0, i32 0
  store i8** %arraydecay9, i8*** %argv.addr, align 8
  store i32 5, i32* %argc.addr, align 4
  %5 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %argc.addr, align 4
  %7 = load i8**, i8*** %argv.addr, align 8
  call void @_Z5UsageiPPc(i32 %6, i8** %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %argc.addr, align 4
  %cmp10 = icmp slt i32 %8, %9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8**, i8*** %argv.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %12 = load i8*, i8** %arrayidx, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx11, align 1
  %conv = sext i8 %13 to i32
  %call = call i32 @isalpha(i32 %conv) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end13, label %if.then12

if.then12:                                        ; preds = %for.body
  %14 = load i32, i32* %argc.addr, align 4
  %15 = load i8**, i8*** %argv.addr, align 8
  call void @_Z5UsageiPPc(i32 %14, i8** %15)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0))
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0))
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0))
  store i32 1, i32* %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc36, %for.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %argc.addr, align 4
  %cmp18 = icmp slt i32 %17, %18
  br i1 %cmp18, label %for.body19, label %for.end38

for.body19:                                       ; preds = %for.cond17
  %19 = load i8**, i8*** %argv.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds i8*, i8** %19, i64 %idxprom20
  %21 = load i8*, i8** %arrayidx21, align 8
  %call22 = call i8* @strtok(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0)) #8
  store i8* %call22, i8** %test_name, align 8
  %call23 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0)) #8
  store i8* %call23, i8** %rhs, align 8
  %22 = load i8*, i8** %rhs, align 8
  %cmp24 = icmp eq i8* %22, null
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %for.body19
  %23 = load i8*, i8** %test_name, align 8
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i32 0, i32 0), i8* %23)
  br label %if.end35

if.else:                                          ; preds = %for.body19
  %24 = load i8*, i8** %rhs, align 8
  %call27 = call i64 @strtol(i8* %24, i8** null, i32 0) #8
  %conv28 = trunc i64 %call27 to i32
  store i32 %conv28, i32* %test_count, align 4
  %25 = load i8*, i8** %test_name, align 8
  %call29 = call %class.Benchmark* @_ZN9Benchmark4findEPKc(i8* %25)
  store %class.Benchmark* %call29, %class.Benchmark** %b, align 8
  %26 = load %class.Benchmark*, %class.Benchmark** %b, align 8
  %cmp30 = icmp eq %class.Benchmark* %26, null
  br i1 %cmp30, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.else
  %27 = load i8*, i8** %test_name, align 8
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0), i8* %27)
  call void @abort() #10
  unreachable

if.else33:                                        ; preds = %if.else
  %28 = load %class.Benchmark*, %class.Benchmark** %b, align 8
  %29 = load i32, i32* %test_count, align 4
  call void @_ZNK9Benchmark9time_bothEi(%class.Benchmark* %28, i32 %29)
  br label %if.end34

if.end34:                                         ; preds = %if.else33
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then25
  br label %for.inc36

for.inc36:                                        ; preds = %if.end35
  %30 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %30, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond17

for.end38:                                        ; preds = %for.cond17
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #4

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

; Function Attrs: noreturn nounwind
declare void @abort() #6

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
