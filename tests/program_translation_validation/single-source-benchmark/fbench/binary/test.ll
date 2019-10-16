; ModuleID = '/home/ubuntu/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/bc-seeds/fbench/fbench.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@niter = global i32 1000, align 4
@itercount = common global i32 0, align 4
@spectral_line = internal global [9 x double] zeroinitializer, align 16
@clear_aperture = internal global double 0.000000e+00, align 8
@current_surfaces = internal global i16 0, align 2
@testcase = internal global [4 x [4 x double]] [[4 x double] [double 2.705000e+01, double 1.513700e+00, double 6.360000e+01, double 5.200000e-01], [4 x double] [double -1.668000e+01, double 1.000000e+00, double 0.000000e+00, double 1.380000e-01], [4 x double] [double -1.668000e+01, double 1.616400e+00, double 3.670000e+01, double 3.800000e-01], [4 x double] [double -7.810000e+01, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00]], align 16
@s = internal global [10 x [5 x double]] zeroinitializer, align 16
@.str = private unnamed_addr constant [54 x i8] c"Ready to begin John Walker's floating point accuracy\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"and performance benchmark.  %d iterations will be made.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"\0AMeasured run time in seconds should be divided by %.f\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"to normalise for reporting results.  For archival results,\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"adjust iteration count so the benchmark runs about five minutes.\0A\0A\00", align 1
@paraxial = internal global i16 0, align 2
@object_distance = internal global double 0.000000e+00, align 8
@od_sa = internal global [2 x [2 x double]] zeroinitializer, align 16
@axis_slope_angle = internal global double 0.000000e+00, align 8
@aberr_lspher = internal global double 0.000000e+00, align 8
@aberr_osc = internal global double 0.000000e+00, align 8
@aberr_lchrom = internal global double 0.000000e+00, align 8
@max_lspher = internal global double 0.000000e+00, align 8
@max_osc = internal global double 0.000000e+00, align 8
@max_lchrom = internal global double 0.000000e+00, align 8
@outarr = internal global [8 x [80 x i8]] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [24 x i8] c"%15s   %21.11f  %14.11f\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Marginal ray\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Paraxial ray\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Longitudinal spherical aberration:      %16.11f\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"    (Maximum permissible):              %16.11f\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Offense against sine condition (coma):  %16.11f\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Axial chromatic aberration:             %16.11f\00", align 1
@refarr = internal global [8 x i8*] [i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.25, i32 0, i32 0)], align 16
@.str.12 = private unnamed_addr constant [33 x i8] c"\0AError in results on line %d...\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Expected:  \22%s\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Received:  \22%s\22\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"(Errors)    \00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"\0A%d error%s in results.  This is VERY SERIOUS.\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"\0ANo errors in results.\0A\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"   Marginal ray          47.09479120920   0.04178472683\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"   Paraxial ray          47.08372160249   0.04177864821\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"Longitudinal spherical aberration:        -0.01106960671\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"    (Maximum permissible):                 0.05306749907\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"Offense against sine condition (coma):     0.00008954761\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"    (Maximum permissible):                 0.00250000000\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c"Axial chromatic aberration:                0.00448229032\00", align 1
@ray_height = internal global double 0.000000e+00, align 8
@from_index = internal global double 0.000000e+00, align 8
@radius_of_curvature = internal global double 0.000000e+00, align 8
@to_index = internal global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %errors = alloca i32, align 4
  %od_fline = alloca double, align 8
  %od_cline = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store double 7.621000e+03, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 1), align 8
  store double 6.869955e+03, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 2), align 16
  store double 6.562816e+03, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 3), align 8
  store double 5.895944e+03, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 4), align 16
  store double 5.269557e+03, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 5), align 8
  store double 4.861344e+03, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 6), align 16
  store double 4.340477e+03, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 7), align 8
  store double 3.968494e+03, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 8), align 16
  store i32 1000000, i32* @niter, align 4
  store double 4.000000e+00, double* @clear_aperture, align 8
  store i16 4, i16* @current_surfaces, align 2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i16, i16* @current_surfaces, align 2
  %conv = sext i16 %1 to i32
  %cmp = icmp slt i32 %0, %conv
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %2, 4
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @testcase, i64 0, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i64 0, i64 %idxprom6
  %5 = load double, double* %arrayidx7, align 8
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds [10 x [5 x double]], [10 x [5 x double]]* @s, i64 0, i64 %idxprom8
  %7 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %7, 1
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds [5 x double], [5 x double]* %arrayidx9, i64 0, i64 %idxprom11
  store double %5, double* %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %9 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %9, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end15:                                        ; preds = %for.cond
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i32 0, i32 0))
  %10 = load i32, i32* @niter, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i32 %10)
  %11 = load i32, i32* @niter, align 4
  %conv17 = sitofp i32 %11 to double
  %div = fdiv double %conv17, 1.000000e+03
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0), double %div)
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i32 0, i32 0))
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* @itercount, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc53, %for.end15
  %12 = load i32, i32* @itercount, align 4
  %13 = load i32, i32* @niter, align 4
  %cmp22 = icmp slt i32 %12, %13
  br i1 %cmp22, label %for.body24, label %for.end55

for.body24:                                       ; preds = %for.cond21
  store i16 0, i16* @paraxial, align 2
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc38, %for.body24
  %14 = load i16, i16* @paraxial, align 2
  %conv26 = sext i16 %14 to i32
  %cmp27 = icmp sle i32 %conv26, 1
  br i1 %cmp27, label %for.body29, label %for.end40

for.body29:                                       ; preds = %for.cond25
  %15 = load double, double* @clear_aperture, align 8
  %div30 = fdiv double %15, 2.000000e+00
  %call31 = call i32 @trace_line(i32 4, double %div30)
  %16 = load double, double* @object_distance, align 8
  %17 = load i16, i16* @paraxial, align 2
  %idxprom32 = sext i16 %17 to i64
  %arrayidx33 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx33, i64 0, i64 0
  store double %16, double* %arrayidx34, align 16
  %18 = load double, double* @axis_slope_angle, align 8
  %19 = load i16, i16* @paraxial, align 2
  %idxprom35 = sext i16 %19 to i64
  %arrayidx36 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx36, i64 0, i64 1
  store double %18, double* %arrayidx37, align 8
  br label %for.inc38

for.inc38:                                        ; preds = %for.body29
  %20 = load i16, i16* @paraxial, align 2
  %inc39 = add i16 %20, 1
  store i16 %inc39, i16* @paraxial, align 2
  br label %for.cond25

for.end40:                                        ; preds = %for.cond25
  store i16 0, i16* @paraxial, align 2
  %21 = load double, double* @clear_aperture, align 8
  %div41 = fdiv double %21, 2.000000e+00
  %call42 = call i32 @trace_line(i32 3, double %div41)
  %22 = load double, double* @object_distance, align 8
  store double %22, double* %od_cline, align 8
  %23 = load double, double* @clear_aperture, align 8
  %div43 = fdiv double %23, 2.000000e+00
  %call44 = call i32 @trace_line(i32 6, double %div43)
  %24 = load double, double* @object_distance, align 8
  store double %24, double* %od_fline, align 8
  %25 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 1, i64 0), align 16
  %26 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 0, i64 0), align 16
  %sub = fsub double %25, %26
  store double %sub, double* @aberr_lspher, align 8
  %27 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 1, i64 0), align 16
  %28 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 1, i64 1), align 8
  %mul = fmul double %27, %28
  %29 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 0, i64 1), align 8
  %call45 = call double @sin(double %29) #4
  %30 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 0, i64 0), align 16
  %mul46 = fmul double %call45, %30
  %div47 = fdiv double %mul, %mul46
  %sub48 = fsub double 1.000000e+00, %div47
  store double %sub48, double* @aberr_osc, align 8
  %31 = load double, double* %od_fline, align 8
  %32 = load double, double* %od_cline, align 8
  %sub49 = fsub double %31, %32
  store double %sub49, double* @aberr_lchrom, align 8
  %33 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 0, i64 1), align 8
  %call50 = call double @sin(double %33) #4
  store double %call50, double* @max_lspher, align 8
  %34 = load double, double* @max_lspher, align 8
  %35 = load double, double* @max_lspher, align 8
  %mul51 = fmul double %34, %35
  %div52 = fdiv double 9.260000e-05, %mul51
  store double %div52, double* @max_lspher, align 8
  store double 2.500000e-03, double* @max_osc, align 8
  %36 = load double, double* @max_lspher, align 8
  store double %36, double* @max_lchrom, align 8
  br label %for.inc53

for.inc53:                                        ; preds = %for.end40
  %37 = load i32, i32* @itercount, align 4
  %inc54 = add nsw i32 %37, 1
  store i32 %inc54, i32* @itercount, align 4
  br label %for.cond21

for.end55:                                        ; preds = %for.cond21
  %38 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 0, i64 0), align 16
  %39 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 0, i64 1), align 8
  %call56 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), double %38, double %39) #4
  %40 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 1, i64 0), align 16
  %41 = load double, double* getelementptr inbounds ([2 x [2 x double]], [2 x [2 x double]]* @od_sa, i64 0, i64 1, i64 1), align 8
  %call57 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 1, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), double %40, double %41) #4
  %42 = load double, double* @aberr_lspher, align 8
  %call58 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 2, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i32 0, i32 0), double %42) #4
  %43 = load double, double* @max_lspher, align 8
  %call59 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 3, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0), double %43) #4
  %44 = load double, double* @aberr_osc, align 8
  %call60 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 4, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i32 0, i32 0), double %44) #4
  %45 = load double, double* @max_osc, align 8
  %call61 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 5, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0), double %45) #4
  %46 = load double, double* @aberr_lchrom, align 8
  %call62 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 6, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0), double %46) #4
  %47 = load double, double* @max_lchrom, align 8
  %call63 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 7, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0), double %47) #4
  store i32 0, i32* %errors, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc125, %for.end55
  %48 = load i32, i32* %i, align 4
  %cmp65 = icmp slt i32 %48, 8
  br i1 %cmp65, label %for.body67, label %for.end127

for.body67:                                       ; preds = %for.cond64
  %49 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %49 to i64
  %arrayidx69 = getelementptr inbounds [8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 %idxprom68
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %arrayidx69, i32 0, i32 0
  %50 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %50 to i64
  %arrayidx71 = getelementptr inbounds [8 x i8*], [8 x i8*]* @refarr, i64 0, i64 %idxprom70
  %51 = load i8*, i8** %arrayidx71, align 8
  %call72 = call i32 @strcmp(i8* %arraydecay, i8* %51) #5
  %cmp73 = icmp ne i32 %call72, 0
  br i1 %cmp73, label %if.then, label %if.end124

if.then:                                          ; preds = %for.body67
  %52 = load i32, i32* %i, align 4
  %add75 = add nsw i32 %52, 1
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0), i32 %add75)
  %53 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %53 to i64
  %arrayidx78 = getelementptr inbounds [8 x i8*], [8 x i8*]* @refarr, i64 0, i64 %idxprom77
  %54 = load i8*, i8** %arrayidx78, align 8
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* %54)
  %55 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %55 to i64
  %arrayidx81 = getelementptr inbounds [8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 %idxprom80
  %arraydecay82 = getelementptr inbounds [80 x i8], [80 x i8]* %arrayidx81, i32 0, i32 0
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay82)
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0))
  %56 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %56 to i64
  %arrayidx86 = getelementptr inbounds [8 x i8*], [8 x i8*]* @refarr, i64 0, i64 %idxprom85
  %57 = load i8*, i8** %arrayidx86, align 8
  %call87 = call i64 @strlen(i8* %57) #5
  %conv88 = trunc i64 %call87 to i32
  store i32 %conv88, i32* %k, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc120, %if.then
  %58 = load i32, i32* %j, align 4
  %59 = load i32, i32* %k, align 4
  %cmp90 = icmp slt i32 %58, %59
  br i1 %cmp90, label %for.body92, label %for.end122

for.body92:                                       ; preds = %for.cond89
  %60 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %60 to i64
  %arrayidx94 = getelementptr inbounds [8 x i8*], [8 x i8*]* @refarr, i64 0, i64 %idxprom93
  %61 = load i8*, i8** %arrayidx94, align 8
  %62 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %62 to i64
  %arrayidx96 = getelementptr inbounds i8, i8* %61, i64 %idxprom95
  %63 = load i8, i8* %arrayidx96, align 1
  %conv97 = sext i8 %63 to i32
  %64 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %64 to i64
  %arrayidx99 = getelementptr inbounds [8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 %idxprom98
  %65 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %65 to i64
  %arrayidx101 = getelementptr inbounds [80 x i8], [80 x i8]* %arrayidx99, i64 0, i64 %idxprom100
  %66 = load i8, i8* %arrayidx101, align 1
  %conv102 = sext i8 %66 to i32
  %cmp103 = icmp eq i32 %conv97, %conv102
  %cond = select i1 %cmp103, i32 32, i32 94
  %call105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i32 %cond)
  %67 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %67 to i64
  %arrayidx107 = getelementptr inbounds [8 x i8*], [8 x i8*]* @refarr, i64 0, i64 %idxprom106
  %68 = load i8*, i8** %arrayidx107, align 8
  %69 = load i32, i32* %j, align 4
  %idxprom108 = sext i32 %69 to i64
  %arrayidx109 = getelementptr inbounds i8, i8* %68, i64 %idxprom108
  %70 = load i8, i8* %arrayidx109, align 1
  %conv110 = sext i8 %70 to i32
  %71 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %71 to i64
  %arrayidx112 = getelementptr inbounds [8 x [80 x i8]], [8 x [80 x i8]]* @outarr, i64 0, i64 %idxprom111
  %72 = load i32, i32* %j, align 4
  %idxprom113 = sext i32 %72 to i64
  %arrayidx114 = getelementptr inbounds [80 x i8], [80 x i8]* %arrayidx112, i64 0, i64 %idxprom113
  %73 = load i8, i8* %arrayidx114, align 1
  %conv115 = sext i8 %73 to i32
  %cmp116 = icmp ne i32 %conv110, %conv115
  br i1 %cmp116, label %if.then118, label %if.end

if.then118:                                       ; preds = %for.body92
  %74 = load i32, i32* %errors, align 4
  %inc119 = add nsw i32 %74, 1
  store i32 %inc119, i32* %errors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then118, %for.body92
  br label %for.inc120

for.inc120:                                       ; preds = %if.end
  %75 = load i32, i32* %j, align 4
  %inc121 = add nsw i32 %75, 1
  store i32 %inc121, i32* %j, align 4
  br label %for.cond89

for.end122:                                       ; preds = %for.cond89
  %call123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end124

if.end124:                                        ; preds = %for.end122, %for.body67
  br label %for.inc125

for.inc125:                                       ; preds = %if.end124
  %76 = load i32, i32* %i, align 4
  %inc126 = add nsw i32 %76, 1
  store i32 %inc126, i32* %i, align 4
  br label %for.cond64

for.end127:                                       ; preds = %for.cond64
  %77 = load i32, i32* %errors, align 4
  %cmp128 = icmp sgt i32 %77, 0
  br i1 %cmp128, label %if.then130, label %if.else

if.then130:                                       ; preds = %for.end127
  %78 = load i32, i32* %errors, align 4
  %79 = load i32, i32* %errors, align 4
  %cmp131 = icmp sgt i32 %79, 1
  %cond133 = select i1 %cmp131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0)
  %call134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i32 0, i32 0), i32 %78, i8* %cond133)
  br label %if.end136

if.else:                                          ; preds = %for.end127
  %call135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end136

if.end136:                                        ; preds = %if.else, %if.then130
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @trace_line(i32 %line, double %ray_h) #0 {
entry:
  %retval = alloca i32, align 4
  %line.addr = alloca i32, align 4
  %ray_h.addr = alloca double, align 8
  %i = alloca i32, align 4
  store i32 %line, i32* %line.addr, align 4
  store double %ray_h, double* %ray_h.addr, align 8
  store double 0.000000e+00, double* @object_distance, align 8
  %0 = load double, double* %ray_h.addr, align 8
  store double %0, double* @ray_height, align 8
  store double 1.000000e+00, double* @from_index, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i16, i16* @current_surfaces, align 2
  %conv = sext i16 %2 to i32
  %cmp = icmp sle i32 %1, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x [5 x double]], [10 x [5 x double]]* @s, i64 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [5 x double], [5 x double]* %arrayidx, i64 0, i64 1
  %4 = load double, double* %arrayidx2, align 8
  store double %4, double* @radius_of_curvature, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [10 x [5 x double]], [10 x [5 x double]]* @s, i64 0, i64 %idxprom3
  %arrayidx5 = getelementptr inbounds [5 x double], [5 x double]* %arrayidx4, i64 0, i64 2
  %6 = load double, double* %arrayidx5, align 8
  store double %6, double* @to_index, align 8
  %7 = load double, double* @to_index, align 8
  %cmp6 = fcmp ogt double %7, 1.000000e+00
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load double, double* @to_index, align 8
  %9 = load double, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 4), align 16
  %10 = load i32, i32* %line.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [9 x double], [9 x double]* @spectral_line, i64 0, i64 %idxprom8
  %11 = load double, double* %arrayidx9, align 8
  %sub = fsub double %9, %11
  %12 = load double, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 3), align 8
  %13 = load double, double* getelementptr inbounds ([9 x double], [9 x double]* @spectral_line, i64 0, i64 6), align 16
  %sub10 = fsub double %12, %13
  %div = fdiv double %sub, %sub10
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [10 x [5 x double]], [10 x [5 x double]]* @s, i64 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [5 x double], [5 x double]* %arrayidx12, i64 0, i64 2
  %15 = load double, double* %arrayidx13, align 8
  %sub14 = fsub double %15, 1.000000e+00
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [10 x [5 x double]], [10 x [5 x double]]* @s, i64 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [5 x double], [5 x double]* %arrayidx16, i64 0, i64 3
  %17 = load double, double* %arrayidx17, align 8
  %div18 = fdiv double %sub14, %17
  %mul = fmul double %div, %div18
  %add = fadd double %8, %mul
  store double %add, double* @to_index, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  call void @transit_surface()
  %18 = load double, double* @to_index, align 8
  store double %18, double* @from_index, align 8
  %19 = load i32, i32* %i, align 4
  %20 = load i16, i16* @current_surfaces, align 2
  %conv19 = sext i16 %20 to i32
  %cmp20 = icmp slt i32 %19, %conv19
  br i1 %cmp20, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end
  %21 = load double, double* @object_distance, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %22 to i64
  %arrayidx24 = getelementptr inbounds [10 x [5 x double]], [10 x [5 x double]]* @s, i64 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [5 x double], [5 x double]* %arrayidx24, i64 0, i64 4
  %23 = load double, double* %arrayidx25, align 8
  %sub26 = fsub double %21, %23
  store double %sub26, double* @object_distance, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: noinline nounwind uwtable
define internal void @transit_surface() #0 {
entry:
  %iang = alloca double, align 8
  %rang = alloca double, align 8
  %iang_sin = alloca double, align 8
  %rang_sin = alloca double, align 8
  %old_axis_slope_angle = alloca double, align 8
  %sagitta = alloca double, align 8
  %0 = load i16, i16* @paraxial, align 2
  %tobool = icmp ne i16 %0, 0
  br i1 %tobool, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %1 = load double, double* @radius_of_curvature, align 8
  %cmp = fcmp une double %1, 0.000000e+00
  br i1 %cmp, label %if.then1, label %if.end13

if.then1:                                         ; preds = %if.then
  %2 = load double, double* @object_distance, align 8
  %cmp2 = fcmp oeq double %2, 0.000000e+00
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then1
  store double 0.000000e+00, double* @axis_slope_angle, align 8
  %3 = load double, double* @ray_height, align 8
  %4 = load double, double* @radius_of_curvature, align 8
  %div = fdiv double %3, %4
  store double %div, double* %iang_sin, align 8
  br label %if.end

if.else:                                          ; preds = %if.then1
  %5 = load double, double* @object_distance, align 8
  %6 = load double, double* @radius_of_curvature, align 8
  %sub = fsub double %5, %6
  %7 = load double, double* @radius_of_curvature, align 8
  %div4 = fdiv double %sub, %7
  %8 = load double, double* @axis_slope_angle, align 8
  %mul = fmul double %div4, %8
  store double %mul, double* %iang_sin, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %9 = load double, double* @from_index, align 8
  %10 = load double, double* @to_index, align 8
  %div5 = fdiv double %9, %10
  %11 = load double, double* %iang_sin, align 8
  %mul6 = fmul double %div5, %11
  store double %mul6, double* %rang_sin, align 8
  %12 = load double, double* @axis_slope_angle, align 8
  store double %12, double* %old_axis_slope_angle, align 8
  %13 = load double, double* @axis_slope_angle, align 8
  %14 = load double, double* %iang_sin, align 8
  %add = fadd double %13, %14
  %15 = load double, double* %rang_sin, align 8
  %sub7 = fsub double %add, %15
  store double %sub7, double* @axis_slope_angle, align 8
  %16 = load double, double* @object_distance, align 8
  %cmp8 = fcmp une double %16, 0.000000e+00
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %17 = load double, double* @object_distance, align 8
  %18 = load double, double* %old_axis_slope_angle, align 8
  %mul10 = fmul double %17, %18
  store double %mul10, double* @ray_height, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  %19 = load double, double* @ray_height, align 8
  %20 = load double, double* @axis_slope_angle, align 8
  %div12 = fdiv double %19, %20
  store double %div12, double* @object_distance, align 8
  br label %return

if.end13:                                         ; preds = %if.then
  %21 = load double, double* @object_distance, align 8
  %22 = load double, double* @to_index, align 8
  %23 = load double, double* @from_index, align 8
  %div14 = fdiv double %22, %23
  %mul15 = fmul double %21, %div14
  store double %mul15, double* @object_distance, align 8
  %24 = load double, double* @axis_slope_angle, align 8
  %25 = load double, double* @from_index, align 8
  %26 = load double, double* @to_index, align 8
  %div16 = fdiv double %25, %26
  %mul17 = fmul double %24, %div16
  store double %mul17, double* @axis_slope_angle, align 8
  br label %return

if.end18:                                         ; preds = %entry
  %27 = load double, double* @radius_of_curvature, align 8
  %cmp19 = fcmp une double %27, 0.000000e+00
  br i1 %cmp19, label %if.then20, label %if.end48

if.then20:                                        ; preds = %if.end18
  %28 = load double, double* @object_distance, align 8
  %cmp21 = fcmp oeq double %28, 0.000000e+00
  br i1 %cmp21, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.then20
  store double 0.000000e+00, double* @axis_slope_angle, align 8
  %29 = load double, double* @ray_height, align 8
  %30 = load double, double* @radius_of_curvature, align 8
  %div23 = fdiv double %29, %30
  store double %div23, double* %iang_sin, align 8
  br label %if.end28

if.else24:                                        ; preds = %if.then20
  %31 = load double, double* @object_distance, align 8
  %32 = load double, double* @radius_of_curvature, align 8
  %sub25 = fsub double %31, %32
  %33 = load double, double* @radius_of_curvature, align 8
  %div26 = fdiv double %sub25, %33
  %34 = load double, double* @axis_slope_angle, align 8
  %call = call double @sin(double %34) #4
  %mul27 = fmul double %div26, %call
  store double %mul27, double* %iang_sin, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %if.then22
  %35 = load double, double* %iang_sin, align 8
  %call29 = call double @asin(double %35) #4
  store double %call29, double* %iang, align 8
  %36 = load double, double* @from_index, align 8
  %37 = load double, double* @to_index, align 8
  %div30 = fdiv double %36, %37
  %38 = load double, double* %iang_sin, align 8
  %mul31 = fmul double %div30, %38
  store double %mul31, double* %rang_sin, align 8
  %39 = load double, double* @axis_slope_angle, align 8
  store double %39, double* %old_axis_slope_angle, align 8
  %40 = load double, double* @axis_slope_angle, align 8
  %41 = load double, double* %iang, align 8
  %add32 = fadd double %40, %41
  %42 = load double, double* %rang_sin, align 8
  %call33 = call double @asin(double %42) #4
  %sub34 = fsub double %add32, %call33
  store double %sub34, double* @axis_slope_angle, align 8
  %43 = load double, double* %old_axis_slope_angle, align 8
  %44 = load double, double* %iang, align 8
  %add35 = fadd double %43, %44
  %div36 = fdiv double %add35, 2.000000e+00
  %call37 = call double @sin(double %div36) #4
  store double %call37, double* %sagitta, align 8
  %45 = load double, double* @radius_of_curvature, align 8
  %mul38 = fmul double 2.000000e+00, %45
  %46 = load double, double* %sagitta, align 8
  %mul39 = fmul double %mul38, %46
  %47 = load double, double* %sagitta, align 8
  %mul40 = fmul double %mul39, %47
  store double %mul40, double* %sagitta, align 8
  %48 = load double, double* @radius_of_curvature, align 8
  %49 = load double, double* %old_axis_slope_angle, align 8
  %50 = load double, double* %iang, align 8
  %add41 = fadd double %49, %50
  %call42 = call double @sin(double %add41) #4
  %mul43 = fmul double %48, %call42
  %51 = load double, double* @axis_slope_angle, align 8
  %call44 = call double @tan(double %51) #4
  %div45 = fdiv double 1.000000e+00, %call44
  %mul46 = fmul double %mul43, %div45
  %52 = load double, double* %sagitta, align 8
  %add47 = fadd double %mul46, %52
  store double %add47, double* @object_distance, align 8
  br label %return

if.end48:                                         ; preds = %if.end18
  %53 = load double, double* @from_index, align 8
  %54 = load double, double* @to_index, align 8
  %div49 = fdiv double %53, %54
  %55 = load double, double* @axis_slope_angle, align 8
  %call50 = call double @sin(double %55) #4
  %mul51 = fmul double %div49, %call50
  %call52 = call double @asin(double %mul51) #4
  %sub53 = fsub double -0.000000e+00, %call52
  store double %sub53, double* %rang, align 8
  %56 = load double, double* @object_distance, align 8
  %57 = load double, double* @to_index, align 8
  %58 = load double, double* %rang, align 8
  %sub54 = fsub double -0.000000e+00, %58
  %call55 = call double @cos(double %sub54) #4
  %mul56 = fmul double %57, %call55
  %59 = load double, double* @from_index, align 8
  %60 = load double, double* @axis_slope_angle, align 8
  %call57 = call double @cos(double %60) #4
  %mul58 = fmul double %59, %call57
  %div59 = fdiv double %mul56, %mul58
  %mul60 = fmul double %56, %div59
  store double %mul60, double* @object_distance, align 8
  %61 = load double, double* %rang, align 8
  %sub61 = fsub double -0.000000e+00, %61
  store double %sub61, double* @axis_slope_angle, align 8
  br label %return

return:                                           ; preds = %if.end48, %if.end28, %if.end13, %if.end11
  ret void
}

; Function Attrs: nounwind
declare double @asin(double) #2

; Function Attrs: nounwind
declare double @tan(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
