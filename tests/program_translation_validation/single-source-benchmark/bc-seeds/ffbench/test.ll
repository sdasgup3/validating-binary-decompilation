; ModuleID = 'ffbench/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@main.nsize = internal global [3 x i32] zeroinitializer, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [28 x i8] c"Can't allocate data array.\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Wrong answer at (%d,%d)!  Expected %d, got %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%d passes.  No errors in results.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%d passes.  %d errors in results.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %npasses = alloca i32, align 4
  %faedge = alloca i32, align 4
  %fdata = alloca double*, align 8
  %fanum = alloca i64, align 8
  %fasize = alloca i64, align 8
  %mapbase = alloca double, align 8
  %mapscale = alloca double, align 8
  %rmin = alloca double, align 8
  %rmax = alloca double, align 8
  %imin = alloca double, align 8
  %imax = alloca double, align 8
  %r = alloca double, align 8
  %ij = alloca double, align 8
  %ar = alloca double, align 8
  %ai = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 63, i32* %npasses, align 4
  store i32 256, i32* %faedge, align 4
  %0 = load i32, i32* %faedge, align 4
  %1 = load i32, i32* %faedge, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  store i64 %conv, i64* %fanum, align 8
  %2 = load i64, i64* %fanum, align 8
  %add = add nsw i64 %2, 1
  %mul1 = mul nsw i64 %add, 2
  %mul2 = mul i64 %mul1, 8
  store i64 %mul2, i64* %fasize, align 8
  %3 = load i32, i32* %faedge, align 4
  store i32 %3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @main.nsize, i64 0, i64 2), align 4
  store i32 %3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @main.nsize, i64 0, i64 1), align 4
  %4 = load i64, i64* %fasize, align 8
  %call = call noalias i8* @malloc(i64 %4) #5
  %5 = bitcast i8* %call to double*
  store double* %5, double** %fdata, align 8
  %6 = load double*, double** %fdata, align 8
  %cmp = icmp eq double* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %8 = load double*, double** %fdata, align 8
  %9 = bitcast double* %8 to i8*
  %10 = load i64, i64* %fasize, align 8
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 %10, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %faedge, align 4
  %cmp5 = icmp slt i32 %11, %12
  br i1 %cmp5, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %faedge, align 4
  %cmp8 = icmp slt i32 %13, %14
  br i1 %cmp8, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond7
  %15 = load i32, i32* %i, align 4
  %and = and i32 %15, 15
  %cmp11 = icmp eq i32 %and, 8
  br i1 %cmp11, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body10
  %16 = load i32, i32* %j, align 4
  %and13 = and i32 %16, 15
  %cmp14 = icmp eq i32 %and13, 8
  br i1 %cmp14, label %if.then16, label %if.end21

if.then16:                                        ; preds = %lor.lhs.false, %for.body10
  %17 = load double*, double** %fdata, align 8
  %18 = load i32, i32* %faedge, align 4
  %19 = load i32, i32* %i, align 4
  %mul17 = mul nsw i32 %18, %19
  %20 = load i32, i32* %j, align 4
  %add18 = add nsw i32 %mul17, %20
  %mul19 = mul nsw i32 %add18, 2
  %add20 = add nsw i32 1, %mul19
  %idxprom = sext i32 %add20 to i64
  %arrayidx = getelementptr inbounds double, double* %17, i64 %idxprom
  store double 1.280000e+02, double* %arrayidx, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond7

for.end:                                          ; preds = %for.cond7
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %22, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end24:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc29, %for.end24
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %npasses, align 4
  %cmp26 = icmp slt i32 %23, %24
  br i1 %cmp26, label %for.body28, label %for.end31

for.body28:                                       ; preds = %for.cond25
  %25 = load double*, double** %fdata, align 8
  call void @fourn(double* %25, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @main.nsize, i32 0, i32 0), i32 2, i32 1)
  %26 = load double*, double** %fdata, align 8
  call void @fourn(double* %26, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @main.nsize, i32 0, i32 0), i32 2, i32 -1)
  br label %for.inc29

for.inc29:                                        ; preds = %for.body28
  %27 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %27, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond25

for.end31:                                        ; preds = %for.cond25
  store double 1.000000e+10, double* %rmin, align 8
  store double -1.000000e+10, double* %rmax, align 8
  store double 1.000000e+10, double* %imin, align 8
  store double -1.000000e+10, double* %imax, align 8
  store double 0.000000e+00, double* %ar, align 8
  store double 0.000000e+00, double* %ai, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc64, %for.end31
  %28 = load i32, i32* %i, align 4
  %conv33 = sext i32 %28 to i64
  %29 = load i64, i64* %fanum, align 8
  %cmp34 = icmp sle i64 %conv33, %29
  br i1 %cmp34, label %for.body36, label %for.end66

for.body36:                                       ; preds = %for.cond32
  %30 = load double*, double** %fdata, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %31 to i64
  %arrayidx38 = getelementptr inbounds double, double* %30, i64 %idxprom37
  %32 = load double, double* %arrayidx38, align 8
  store double %32, double* %r, align 8
  %33 = load double*, double** %fdata, align 8
  %34 = load i32, i32* %i, align 4
  %add39 = add nsw i32 %34, 1
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds double, double* %33, i64 %idxprom40
  %35 = load double, double* %arrayidx41, align 8
  store double %35, double* %ij, align 8
  %36 = load double, double* %r, align 8
  %37 = load double, double* %ar, align 8
  %add42 = fadd double %37, %36
  store double %add42, double* %ar, align 8
  %38 = load double, double* %ij, align 8
  %39 = load double, double* %ai, align 8
  %add43 = fadd double %39, %38
  store double %add43, double* %ai, align 8
  %40 = load double, double* %r, align 8
  %41 = load double, double* %rmin, align 8
  %cmp44 = fcmp ole double %40, %41
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body36
  %42 = load double, double* %r, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body36
  %43 = load double, double* %rmin, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %42, %cond.true ], [ %43, %cond.false ]
  store double %cond, double* %rmin, align 8
  %44 = load double, double* %r, align 8
  %45 = load double, double* %rmax, align 8
  %cmp46 = fcmp ogt double %44, %45
  br i1 %cmp46, label %cond.true48, label %cond.false49

cond.true48:                                      ; preds = %cond.end
  %46 = load double, double* %r, align 8
  br label %cond.end50

cond.false49:                                     ; preds = %cond.end
  %47 = load double, double* %rmax, align 8
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false49, %cond.true48
  %cond51 = phi double [ %46, %cond.true48 ], [ %47, %cond.false49 ]
  store double %cond51, double* %rmax, align 8
  %48 = load double, double* %ij, align 8
  %49 = load double, double* %imin, align 8
  %cmp52 = fcmp ole double %48, %49
  br i1 %cmp52, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %cond.end50
  %50 = load double, double* %ij, align 8
  br label %cond.end56

cond.false55:                                     ; preds = %cond.end50
  %51 = load double, double* %imin, align 8
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %cond.true54
  %cond57 = phi double [ %50, %cond.true54 ], [ %51, %cond.false55 ]
  store double %cond57, double* %imin, align 8
  %52 = load double, double* %ij, align 8
  %53 = load double, double* %imax, align 8
  %cmp58 = fcmp ogt double %52, %53
  br i1 %cmp58, label %cond.true60, label %cond.false61

cond.true60:                                      ; preds = %cond.end56
  %54 = load double, double* %ij, align 8
  br label %cond.end62

cond.false61:                                     ; preds = %cond.end56
  %55 = load double, double* %imax, align 8
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false61, %cond.true60
  %cond63 = phi double [ %54, %cond.true60 ], [ %55, %cond.false61 ]
  store double %cond63, double* %imax, align 8
  br label %for.inc64

for.inc64:                                        ; preds = %cond.end62
  %56 = load i32, i32* %i, align 4
  %add65 = add nsw i32 %56, 2
  store i32 %add65, i32* %i, align 4
  br label %for.cond32

for.end66:                                        ; preds = %for.cond32
  %57 = load double, double* %rmin, align 8
  store double %57, double* %mapbase, align 8
  %58 = load double, double* %rmax, align 8
  %59 = load double, double* %rmin, align 8
  %sub = fsub double %58, %59
  %div = fdiv double 2.550000e+02, %sub
  store double %div, double* %mapscale, align 8
  store i32 0, i32* %m, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc100, %for.end66
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %faedge, align 4
  %cmp68 = icmp slt i32 %60, %61
  br i1 %cmp68, label %for.body70, label %for.end102

for.body70:                                       ; preds = %for.cond67
  store i32 0, i32* %j, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc97, %for.body70
  %62 = load i32, i32* %j, align 4
  %63 = load i32, i32* %faedge, align 4
  %cmp72 = icmp slt i32 %62, %63
  br i1 %cmp72, label %for.body74, label %for.end99

for.body74:                                       ; preds = %for.cond71
  %64 = load double*, double** %fdata, align 8
  %65 = load i32, i32* %faedge, align 4
  %66 = load i32, i32* %i, align 4
  %mul75 = mul nsw i32 %65, %66
  %67 = load i32, i32* %j, align 4
  %add76 = add nsw i32 %mul75, %67
  %mul77 = mul nsw i32 %add76, 2
  %add78 = add nsw i32 1, %mul77
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds double, double* %64, i64 %idxprom79
  %68 = load double, double* %arrayidx80, align 8
  %69 = load double, double* %mapbase, align 8
  %sub81 = fsub double %68, %69
  %70 = load double, double* %mapscale, align 8
  %mul82 = fmul double %sub81, %70
  %conv83 = fptosi double %mul82 to i32
  store i32 %conv83, i32* %k, align 4
  %71 = load i32, i32* %i, align 4
  %and84 = and i32 %71, 15
  %cmp85 = icmp eq i32 %and84, 8
  br i1 %cmp85, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body74
  %72 = load i32, i32* %j, align 4
  %and87 = and i32 %72, 15
  %cmp88 = icmp eq i32 %and87, 8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body74
  %73 = phi i1 [ true, %for.body74 ], [ %cmp88, %lor.rhs ]
  %cond90 = select i1 %73, i32 255, i32 0
  store i32 %cond90, i32* %l, align 4
  %74 = load i32, i32* %k, align 4
  %75 = load i32, i32* %l, align 4
  %cmp91 = icmp ne i32 %74, %75
  br i1 %cmp91, label %if.then93, label %if.end96

if.then93:                                        ; preds = %lor.end
  %76 = load i32, i32* %m, align 4
  %inc94 = add nsw i32 %76, 1
  store i32 %inc94, i32* %m, align 4
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %j, align 4
  %80 = load i32, i32* %l, align 4
  %81 = load i32, i32* %k, align 4
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0), i32 %78, i32 %79, i32 %80, i32 %81)
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %lor.end
  br label %for.inc97

for.inc97:                                        ; preds = %if.end96
  %82 = load i32, i32* %j, align 4
  %inc98 = add nsw i32 %82, 1
  store i32 %inc98, i32* %j, align 4
  br label %for.cond71

for.end99:                                        ; preds = %for.cond71
  br label %for.inc100

for.inc100:                                       ; preds = %for.end99
  %83 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %83, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond67

for.end102:                                       ; preds = %for.cond67
  %84 = load i32, i32* %m, align 4
  %cmp103 = icmp eq i32 %84, 0
  br i1 %cmp103, label %if.then105, label %if.else

if.then105:                                       ; preds = %for.end102
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %86 = load i32, i32* %npasses, align 4
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i32 %86)
  br label %if.end108

if.else:                                          ; preds = %for.end102
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %88 = load i32, i32* %npasses, align 4
  %89 = load i32, i32* %m, align 4
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i32 %88, i32 %89)
  br label %if.end108

if.end108:                                        ; preds = %if.else, %if.then105
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: noinline nounwind uwtable
define internal void @fourn(double* %data, i32* %nn, i32 %ndim, i32 %isign) #0 {
entry:
  %data.addr = alloca double*, align 8
  %nn.addr = alloca i32*, align 8
  %ndim.addr = alloca i32, align 4
  %isign.addr = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i2rev = alloca i32, align 4
  %i3rev = alloca i32, align 4
  %ip1 = alloca i32, align 4
  %ip2 = alloca i32, align 4
  %ip3 = alloca i32, align 4
  %ifp1 = alloca i32, align 4
  %ifp2 = alloca i32, align 4
  %ibit = alloca i32, align 4
  %idim = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %n = alloca i32, align 4
  %nprev = alloca i32, align 4
  %nrem = alloca i32, align 4
  %ntot = alloca i32, align 4
  %tempi = alloca double, align 8
  %tempr = alloca double, align 8
  %theta = alloca double, align 8
  %wi = alloca double, align 8
  %wpi = alloca double, align 8
  %wpr = alloca double, align 8
  %wr = alloca double, align 8
  %wtemp = alloca double, align 8
  store double* %data, double** %data.addr, align 8
  store i32* %nn, i32** %nn.addr, align 8
  store i32 %ndim, i32* %ndim.addr, align 4
  store i32 %isign, i32* %isign.addr, align 4
  store i32 1, i32* %ntot, align 4
  store i32 1, i32* %idim, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %idim, align 4
  %1 = load i32, i32* %ndim.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %nn.addr, align 8
  %3 = load i32, i32* %idim, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %ntot, align 4
  %mul = mul nsw i32 %5, %4
  store i32 %mul, i32* %ntot, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %idim, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %idim, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %nprev, align 4
  %7 = load i32, i32* %ndim.addr, align 4
  store i32 %7, i32* %idim, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc136, %for.end
  %8 = load i32, i32* %idim, align 4
  %cmp2 = icmp sge i32 %8, 1
  br i1 %cmp2, label %for.body3, label %for.end137

for.body3:                                        ; preds = %for.cond1
  %9 = load i32*, i32** %nn.addr, align 8
  %10 = load i32, i32* %idim, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %idxprom4
  %11 = load i32, i32* %arrayidx5, align 4
  store i32 %11, i32* %n, align 4
  %12 = load i32, i32* %ntot, align 4
  %13 = load i32, i32* %n, align 4
  %14 = load i32, i32* %nprev, align 4
  %mul6 = mul nsw i32 %13, %14
  %div = sdiv i32 %12, %mul6
  store i32 %div, i32* %nrem, align 4
  %15 = load i32, i32* %nprev, align 4
  %shl = shl i32 %15, 1
  store i32 %shl, i32* %ip1, align 4
  %16 = load i32, i32* %ip1, align 4
  %17 = load i32, i32* %n, align 4
  %mul7 = mul nsw i32 %16, %17
  store i32 %mul7, i32* %ip2, align 4
  %18 = load i32, i32* %ip2, align 4
  %19 = load i32, i32* %nrem, align 4
  %mul8 = mul nsw i32 %18, %19
  store i32 %mul8, i32* %ip3, align 4
  store i32 1, i32* %i2rev, align 4
  store i32 1, i32* %i2, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc52, %for.body3
  %20 = load i32, i32* %i2, align 4
  %21 = load i32, i32* %ip2, align 4
  %cmp10 = icmp sle i32 %20, %21
  br i1 %cmp10, label %for.body11, label %for.end54

for.body11:                                       ; preds = %for.cond9
  %22 = load i32, i32* %i2, align 4
  %23 = load i32, i32* %i2rev, align 4
  %cmp12 = icmp slt i32 %22, %23
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body11
  %24 = load i32, i32* %i2, align 4
  store i32 %24, i32* %i1, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc44, %if.then
  %25 = load i32, i32* %i1, align 4
  %26 = load i32, i32* %i2, align 4
  %27 = load i32, i32* %ip1, align 4
  %add = add nsw i32 %26, %27
  %sub = sub nsw i32 %add, 2
  %cmp14 = icmp sle i32 %25, %sub
  br i1 %cmp14, label %for.body15, label %for.end46

for.body15:                                       ; preds = %for.cond13
  %28 = load i32, i32* %i1, align 4
  store i32 %28, i32* %i3, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc41, %for.body15
  %29 = load i32, i32* %i3, align 4
  %30 = load i32, i32* %ip3, align 4
  %cmp17 = icmp sle i32 %29, %30
  br i1 %cmp17, label %for.body18, label %for.end43

for.body18:                                       ; preds = %for.cond16
  %31 = load i32, i32* %i2rev, align 4
  %32 = load i32, i32* %i3, align 4
  %add19 = add nsw i32 %31, %32
  %33 = load i32, i32* %i2, align 4
  %sub20 = sub nsw i32 %add19, %33
  store i32 %sub20, i32* %i3rev, align 4
  %34 = load double*, double** %data.addr, align 8
  %35 = load i32, i32* %i3, align 4
  %idxprom21 = sext i32 %35 to i64
  %arrayidx22 = getelementptr inbounds double, double* %34, i64 %idxprom21
  %36 = load double, double* %arrayidx22, align 8
  store double %36, double* %tempr, align 8
  %37 = load double*, double** %data.addr, align 8
  %38 = load i32, i32* %i3rev, align 4
  %idxprom23 = sext i32 %38 to i64
  %arrayidx24 = getelementptr inbounds double, double* %37, i64 %idxprom23
  %39 = load double, double* %arrayidx24, align 8
  %40 = load double*, double** %data.addr, align 8
  %41 = load i32, i32* %i3, align 4
  %idxprom25 = sext i32 %41 to i64
  %arrayidx26 = getelementptr inbounds double, double* %40, i64 %idxprom25
  store double %39, double* %arrayidx26, align 8
  %42 = load double, double* %tempr, align 8
  %43 = load double*, double** %data.addr, align 8
  %44 = load i32, i32* %i3rev, align 4
  %idxprom27 = sext i32 %44 to i64
  %arrayidx28 = getelementptr inbounds double, double* %43, i64 %idxprom27
  store double %42, double* %arrayidx28, align 8
  %45 = load double*, double** %data.addr, align 8
  %46 = load i32, i32* %i3, align 4
  %add29 = add nsw i32 %46, 1
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds double, double* %45, i64 %idxprom30
  %47 = load double, double* %arrayidx31, align 8
  store double %47, double* %tempr, align 8
  %48 = load double*, double** %data.addr, align 8
  %49 = load i32, i32* %i3rev, align 4
  %add32 = add nsw i32 %49, 1
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds double, double* %48, i64 %idxprom33
  %50 = load double, double* %arrayidx34, align 8
  %51 = load double*, double** %data.addr, align 8
  %52 = load i32, i32* %i3, align 4
  %add35 = add nsw i32 %52, 1
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds double, double* %51, i64 %idxprom36
  store double %50, double* %arrayidx37, align 8
  %53 = load double, double* %tempr, align 8
  %54 = load double*, double** %data.addr, align 8
  %55 = load i32, i32* %i3rev, align 4
  %add38 = add nsw i32 %55, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds double, double* %54, i64 %idxprom39
  store double %53, double* %arrayidx40, align 8
  br label %for.inc41

for.inc41:                                        ; preds = %for.body18
  %56 = load i32, i32* %ip2, align 4
  %57 = load i32, i32* %i3, align 4
  %add42 = add nsw i32 %57, %56
  store i32 %add42, i32* %i3, align 4
  br label %for.cond16

for.end43:                                        ; preds = %for.cond16
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %58 = load i32, i32* %i1, align 4
  %add45 = add nsw i32 %58, 2
  store i32 %add45, i32* %i1, align 4
  br label %for.cond13

for.end46:                                        ; preds = %for.cond13
  br label %if.end

if.end:                                           ; preds = %for.end46, %for.body11
  %59 = load i32, i32* %ip2, align 4
  %shr = ashr i32 %59, 1
  store i32 %shr, i32* %ibit, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %60 = load i32, i32* %ibit, align 4
  %61 = load i32, i32* %ip1, align 4
  %cmp47 = icmp sge i32 %60, %61
  br i1 %cmp47, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %62 = load i32, i32* %i2rev, align 4
  %63 = load i32, i32* %ibit, align 4
  %cmp48 = icmp sgt i32 %62, %63
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %64 = phi i1 [ false, %while.cond ], [ %cmp48, %land.rhs ]
  br i1 %64, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %65 = load i32, i32* %ibit, align 4
  %66 = load i32, i32* %i2rev, align 4
  %sub49 = sub nsw i32 %66, %65
  store i32 %sub49, i32* %i2rev, align 4
  %67 = load i32, i32* %ibit, align 4
  %shr50 = ashr i32 %67, 1
  store i32 %shr50, i32* %ibit, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %68 = load i32, i32* %ibit, align 4
  %69 = load i32, i32* %i2rev, align 4
  %add51 = add nsw i32 %69, %68
  store i32 %add51, i32* %i2rev, align 4
  br label %for.inc52

for.inc52:                                        ; preds = %while.end
  %70 = load i32, i32* %ip1, align 4
  %71 = load i32, i32* %i2, align 4
  %add53 = add nsw i32 %71, %70
  store i32 %add53, i32* %i2, align 4
  br label %for.cond9

for.end54:                                        ; preds = %for.cond9
  %72 = load i32, i32* %ip1, align 4
  store i32 %72, i32* %ifp1, align 4
  br label %while.cond55

while.cond55:                                     ; preds = %for.end133, %for.end54
  %73 = load i32, i32* %ifp1, align 4
  %74 = load i32, i32* %ip2, align 4
  %cmp56 = icmp slt i32 %73, %74
  br i1 %cmp56, label %while.body57, label %while.end134

while.body57:                                     ; preds = %while.cond55
  %75 = load i32, i32* %ifp1, align 4
  %shl58 = shl i32 %75, 1
  store i32 %shl58, i32* %ifp2, align 4
  %76 = load i32, i32* %isign.addr, align 4
  %conv = sitofp i32 %76 to double
  %mul59 = fmul double %conv, 0x401921FB54442D1C
  %77 = load i32, i32* %ifp2, align 4
  %78 = load i32, i32* %ip1, align 4
  %div60 = sdiv i32 %77, %78
  %conv61 = sitofp i32 %div60 to double
  %div62 = fdiv double %mul59, %conv61
  store double %div62, double* %theta, align 8
  %79 = load double, double* %theta, align 8
  %mul63 = fmul double 5.000000e-01, %79
  %call = call double @sin(double %mul63) #5
  store double %call, double* %wtemp, align 8
  %80 = load double, double* %wtemp, align 8
  %mul64 = fmul double -2.000000e+00, %80
  %81 = load double, double* %wtemp, align 8
  %mul65 = fmul double %mul64, %81
  store double %mul65, double* %wpr, align 8
  %82 = load double, double* %theta, align 8
  %call66 = call double @sin(double %82) #5
  store double %call66, double* %wpi, align 8
  store double 1.000000e+00, double* %wr, align 8
  store double 0.000000e+00, double* %wi, align 8
  store i32 1, i32* %i3, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc131, %while.body57
  %83 = load i32, i32* %i3, align 4
  %84 = load i32, i32* %ifp1, align 4
  %cmp68 = icmp sle i32 %83, %84
  br i1 %cmp68, label %for.body70, label %for.end133

for.body70:                                       ; preds = %for.cond67
  %85 = load i32, i32* %i3, align 4
  store i32 %85, i32* %i1, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc120, %for.body70
  %86 = load i32, i32* %i1, align 4
  %87 = load i32, i32* %i3, align 4
  %88 = load i32, i32* %ip1, align 4
  %add72 = add nsw i32 %87, %88
  %sub73 = sub nsw i32 %add72, 2
  %cmp74 = icmp sle i32 %86, %sub73
  br i1 %cmp74, label %for.body76, label %for.end122

for.body76:                                       ; preds = %for.cond71
  %89 = load i32, i32* %i1, align 4
  store i32 %89, i32* %i2, align 4
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc117, %for.body76
  %90 = load i32, i32* %i2, align 4
  %91 = load i32, i32* %ip3, align 4
  %cmp78 = icmp sle i32 %90, %91
  br i1 %cmp78, label %for.body80, label %for.end119

for.body80:                                       ; preds = %for.cond77
  %92 = load i32, i32* %i2, align 4
  store i32 %92, i32* %k1, align 4
  %93 = load i32, i32* %k1, align 4
  %94 = load i32, i32* %ifp1, align 4
  %add81 = add nsw i32 %93, %94
  store i32 %add81, i32* %k2, align 4
  %95 = load double, double* %wr, align 8
  %96 = load double*, double** %data.addr, align 8
  %97 = load i32, i32* %k2, align 4
  %idxprom82 = sext i32 %97 to i64
  %arrayidx83 = getelementptr inbounds double, double* %96, i64 %idxprom82
  %98 = load double, double* %arrayidx83, align 8
  %mul84 = fmul double %95, %98
  %99 = load double, double* %wi, align 8
  %100 = load double*, double** %data.addr, align 8
  %101 = load i32, i32* %k2, align 4
  %add85 = add nsw i32 %101, 1
  %idxprom86 = sext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds double, double* %100, i64 %idxprom86
  %102 = load double, double* %arrayidx87, align 8
  %mul88 = fmul double %99, %102
  %sub89 = fsub double %mul84, %mul88
  store double %sub89, double* %tempr, align 8
  %103 = load double, double* %wr, align 8
  %104 = load double*, double** %data.addr, align 8
  %105 = load i32, i32* %k2, align 4
  %add90 = add nsw i32 %105, 1
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds double, double* %104, i64 %idxprom91
  %106 = load double, double* %arrayidx92, align 8
  %mul93 = fmul double %103, %106
  %107 = load double, double* %wi, align 8
  %108 = load double*, double** %data.addr, align 8
  %109 = load i32, i32* %k2, align 4
  %idxprom94 = sext i32 %109 to i64
  %arrayidx95 = getelementptr inbounds double, double* %108, i64 %idxprom94
  %110 = load double, double* %arrayidx95, align 8
  %mul96 = fmul double %107, %110
  %add97 = fadd double %mul93, %mul96
  store double %add97, double* %tempi, align 8
  %111 = load double*, double** %data.addr, align 8
  %112 = load i32, i32* %k1, align 4
  %idxprom98 = sext i32 %112 to i64
  %arrayidx99 = getelementptr inbounds double, double* %111, i64 %idxprom98
  %113 = load double, double* %arrayidx99, align 8
  %114 = load double, double* %tempr, align 8
  %sub100 = fsub double %113, %114
  %115 = load double*, double** %data.addr, align 8
  %116 = load i32, i32* %k2, align 4
  %idxprom101 = sext i32 %116 to i64
  %arrayidx102 = getelementptr inbounds double, double* %115, i64 %idxprom101
  store double %sub100, double* %arrayidx102, align 8
  %117 = load double*, double** %data.addr, align 8
  %118 = load i32, i32* %k1, align 4
  %add103 = add nsw i32 %118, 1
  %idxprom104 = sext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds double, double* %117, i64 %idxprom104
  %119 = load double, double* %arrayidx105, align 8
  %120 = load double, double* %tempi, align 8
  %sub106 = fsub double %119, %120
  %121 = load double*, double** %data.addr, align 8
  %122 = load i32, i32* %k2, align 4
  %add107 = add nsw i32 %122, 1
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds double, double* %121, i64 %idxprom108
  store double %sub106, double* %arrayidx109, align 8
  %123 = load double, double* %tempr, align 8
  %124 = load double*, double** %data.addr, align 8
  %125 = load i32, i32* %k1, align 4
  %idxprom110 = sext i32 %125 to i64
  %arrayidx111 = getelementptr inbounds double, double* %124, i64 %idxprom110
  %126 = load double, double* %arrayidx111, align 8
  %add112 = fadd double %126, %123
  store double %add112, double* %arrayidx111, align 8
  %127 = load double, double* %tempi, align 8
  %128 = load double*, double** %data.addr, align 8
  %129 = load i32, i32* %k1, align 4
  %add113 = add nsw i32 %129, 1
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds double, double* %128, i64 %idxprom114
  %130 = load double, double* %arrayidx115, align 8
  %add116 = fadd double %130, %127
  store double %add116, double* %arrayidx115, align 8
  br label %for.inc117

for.inc117:                                       ; preds = %for.body80
  %131 = load i32, i32* %ifp2, align 4
  %132 = load i32, i32* %i2, align 4
  %add118 = add nsw i32 %132, %131
  store i32 %add118, i32* %i2, align 4
  br label %for.cond77

for.end119:                                       ; preds = %for.cond77
  br label %for.inc120

for.inc120:                                       ; preds = %for.end119
  %133 = load i32, i32* %i1, align 4
  %add121 = add nsw i32 %133, 2
  store i32 %add121, i32* %i1, align 4
  br label %for.cond71

for.end122:                                       ; preds = %for.cond71
  %134 = load double, double* %wr, align 8
  store double %134, double* %wtemp, align 8
  %135 = load double, double* %wpr, align 8
  %mul123 = fmul double %134, %135
  %136 = load double, double* %wi, align 8
  %137 = load double, double* %wpi, align 8
  %mul124 = fmul double %136, %137
  %sub125 = fsub double %mul123, %mul124
  %138 = load double, double* %wr, align 8
  %add126 = fadd double %sub125, %138
  store double %add126, double* %wr, align 8
  %139 = load double, double* %wi, align 8
  %140 = load double, double* %wpr, align 8
  %mul127 = fmul double %139, %140
  %141 = load double, double* %wtemp, align 8
  %142 = load double, double* %wpi, align 8
  %mul128 = fmul double %141, %142
  %add129 = fadd double %mul127, %mul128
  %143 = load double, double* %wi, align 8
  %add130 = fadd double %add129, %143
  store double %add130, double* %wi, align 8
  br label %for.inc131

for.inc131:                                       ; preds = %for.end122
  %144 = load i32, i32* %ip1, align 4
  %145 = load i32, i32* %i3, align 4
  %add132 = add nsw i32 %145, %144
  store i32 %add132, i32* %i3, align 4
  br label %for.cond67

for.end133:                                       ; preds = %for.cond67
  %146 = load i32, i32* %ifp2, align 4
  store i32 %146, i32* %ifp1, align 4
  br label %while.cond55

while.end134:                                     ; preds = %while.cond55
  %147 = load i32, i32* %n, align 4
  %148 = load i32, i32* %nprev, align 4
  %mul135 = mul nsw i32 %148, %147
  store i32 %mul135, i32* %nprev, align 4
  br label %for.inc136

for.inc136:                                       ; preds = %while.end134
  %149 = load i32, i32* %idim, align 4
  %dec = add nsw i32 %149, -1
  store i32 %dec, i32* %idim, align 4
  br label %for.cond1

for.end137:                                       ; preds = %for.cond1
  ret void
}

; Function Attrs: nounwind
declare double @sin(double) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
