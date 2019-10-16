; ModuleID = 'almabench/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@a = internal constant [8 x [3 x double]] [[3 x double] [double 0x3FD8C637FD3B6253, double 0.000000e+00, double 0.000000e+00], [3 x double] [double 0x3FE725849423E3E0, double 0.000000e+00, double 0.000000e+00], [3 x double] [double 0x3FF000011136AEF5, double 0.000000e+00, double 0.000000e+00], [3 x double] [double 0x3FF860FD96F0D223, double 3.000000e-10, double 0.000000e+00], [3 x double] [double 0x4014CF7737365089, double 1.913200e-06, double -3.900000e-09], [3 x double] [double 0x40231C1D0EBB7C0F, double -2.138960e-05, double 4.440000e-08], [3 x double] [double 0x403337EC14C35EFA, double -3.716000e-07, double 9.790000e-08], [3 x double] [double 0x403E1C425059FB17, double -1.663500e-06, double 6.860000e-08]], align 16
@dlm = internal constant [8 x [3 x double]] [[3 x double] [double 0x406F88076B035926, double 0x41F40BBCADEE3CB4, double -1.927890e+00], [3 x double] [double 0x4066BF5A874FEAFA, double 0x41DF6432F5157881, double 5.938100e-01], [3 x double] [double 0x40591DDA6DBF7622, double 0x41D34FC2F3B56502, double -2.044110e+00], [3 x double] [double 0x407636ED90F7B482, double 0x41C4890A4B784DFD, double 9.426400e-01], [3 x double] [double 0x40412CFE90EA1D96, double 0x419A0C7E6F1EA0BA, double -3.060378e+01], [3 x double] [double 0x404909E9B1DFE17D, double 0x4184FA9E14756430, double 7.561614e+01], [3 x double] [double 0x4073A0E14D09C902, double 0x416D6BA57E0EFDCA, double -1.750830e+00], [3 x double] [double 0x4073059422411D82, double 0x415E0127CD46B26C, double 2.110300e-01]], align 16
@e = internal constant [8 x [3 x double]] [[3 x double] [double 0x3FCA52242A37D430, double 2.040653e-04, double -2.834900e-06], [3 x double] [double 0x3F7BBCDE77820827, double -4.776521e-04, double 9.812700e-06], [3 x double] [double 0x3F911C1175CC9F7B, double -4.203654e-04, double -1.267340e-05], [3 x double] [double 0x3FB7E91AD74BF5B0, double 9.048438e-04, double -8.064100e-06], [3 x double] [double 0x3FA8D4B857E48742, double 0x3F5ABE2B9A18B7B5, double -4.713660e-05], [3 x double] [double 0x3FAC70CE5FA41E66, double 0xBF6C6594A86FD58E, double -6.436390e-05], [3 x double] [double 0x3FA7BF479022D287, double -2.729293e-04, double 7.891300e-06], [3 x double] [double 9.455747e-03, double 6.032630e-05, double 0.000000e+00]], align 16
@pi = internal constant [8 x [3 x double]] [[3 x double] [double 0x40535D310DE9F882, double 0x40B6571DAB9F559B, double -4.830160e+00], [3 x double] [double 0x40607209DADFB507, double 1.754864e+02, double 0xC07F27B59DDC1E79], [3 x double] [double 0x4059BBFD82CD2461, double 0x40C6AE2D2BD3C361, double 5.327577e+01], [3 x double] [double 0x407500F6B7DFD5BE, double 0x40CF363AC3222920, double -6.232800e+01], [3 x double] [double 0x402CA993F265B897, double 0x40BE4EC06AD2DCB1, double 0x40703F599ED7C6FC], [3 x double] [double 0x405743A9C7642D26, double 0x40D3EADFA415F45E, double 0x4067C84DFCE3150E], [3 x double] [double 0x4065A02B58283528, double 0x40A91F1FF04577D9, double -3.409288e+01], [3 x double] [double 0x40480F65305B6785, double 0x40906AE060FE4799, double 2.739717e+01]], align 16
@dinc = internal constant [8 x [3 x double]] [[3 x double] [double 0x401C051B1D92B7FE, double 0xC06AC83387160957, double 2.897700e-01], [3 x double] [double 0x400B28447E34386C, double -3.084437e+01, double -1.167836e+01], [3 x double] [double 0.000000e+00, double 0x407D5F90F51AC9B0, double -3.350530e+00], [3 x double] [double 0x3FFD987ACB2252BB, double 0xC072551355475A32, double -8.118300e+00], [3 x double] [double 0x3FF4DA2E7A10E830, double -7.155890e+01, double 1.195297e+01], [3 x double] [double 0x4003E939471E778F, double 9.185195e+01, double -1.766225e+01], [3 x double] [double 0x3FE8BE07677D67B5, double -6.072723e+01, double 1.257590e+00], [3 x double] [double 0x3FFC51B9CE9853F4, double 8.123330e+00, double 8.135000e-02]], align 16
@omega = internal constant [8 x [3 x double]] [[3 x double] [double 0x40482A5AB400A313, double 0xC0B1A3379F01B867, double -3.179892e+01], [3 x double] [double 0x40532B83CFF8FC2B, double 0xC0C38C3DA31A4BDC, double -5.132614e+01], [3 x double] [double 0x4065DBF10E4FF9E8, double 0xC0C0F3A29A804966, double 1.534191e+01], [3 x double] [double 0x4048C76F992A88EB, double 0xC0C4BE7350092CCF, double 0xC06CD25F84CAD57C], [3 x double] [double 0x40591DB8D838BBB3, double 0x40B8DA091DBCA969, double 0x4074685935FC3B4F], [3 x double] [double 0x405C6A9797E1B38F, double 0xC0C20C1986983516, double -6.623743e+01], [3 x double] [double 0x405280619982C872, double 0x40A4DA4CF80DC337, double 0x40623E1187E7C06E], [3 x double] [double 0x40607916FEBF632D, double 0xC06BBE2EDBB59DDC, double -7.872800e-01]], align 16
@kp = internal constant [8 x [9 x double]] [[9 x double] [double 6.961300e+04, double 7.564500e+04, double 8.830600e+04, double 5.989900e+04, double 1.574600e+04, double 7.108700e+04, double 1.421730e+05, double 3.086000e+03, double 0.000000e+00], [9 x double] [double 2.186300e+04, double 3.279400e+04, double 2.693400e+04, double 1.093100e+04, double 2.625000e+04, double 4.372500e+04, double 5.386700e+04, double 2.893900e+04, double 0.000000e+00], [9 x double] [double 1.600200e+04, double 2.186300e+04, double 3.200400e+04, double 1.093100e+04, double 1.452900e+04, double 1.636800e+04, double 1.531800e+04, double 3.279400e+04, double 0.000000e+00], [9 x double] [double 6.345000e+03, double 7.818000e+03, double 1.563600e+04, double 7.077000e+03, double 8.184000e+03, double 1.416300e+04, double 1.107000e+03, double 4.872000e+03, double 0.000000e+00], [9 x double] [double 1.760000e+03, double 1.454000e+03, double 1.167000e+03, double 8.800000e+02, double 2.870000e+02, double 2.640000e+03, double 1.900000e+01, double 2.047000e+03, double 1.454000e+03], [9 x double] [double 5.740000e+02, double 0.000000e+00, double 8.800000e+02, double 2.870000e+02, double 1.900000e+01, double 1.760000e+03, double 1.167000e+03, double 3.060000e+02, double 5.740000e+02], [9 x double] [double 2.040000e+02, double 0.000000e+00, double 1.770000e+02, double 1.265000e+03, double 4.000000e+00, double 3.850000e+02, double 2.000000e+02, double 2.080000e+02, double 2.040000e+02], [9 x double] [double 0.000000e+00, double 1.020000e+02, double 1.060000e+02, double 4.000000e+00, double 9.800000e+01, double 1.367000e+03, double 4.870000e+02, double 2.040000e+02, double 0.000000e+00]], align 16
@kq = internal constant [8 x [10 x double]] [[10 x double] [double 3.086000e+03, double 1.574600e+04, double 6.961300e+04, double 5.989900e+04, double 7.564500e+04, double 8.830600e+04, double 1.266100e+04, double 2.658000e+03, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 2.186300e+04, double 3.279400e+04, double 1.093100e+04, double 7.300000e+01, double 4.387000e+03, double 2.693400e+04, double 1.473000e+03, double 2.157000e+03, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 1.000000e+01, double 1.600200e+04, double 2.186300e+04, double 1.093100e+04, double 1.473000e+03, double 3.200400e+04, double 4.387000e+03, double 7.300000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 1.000000e+01, double 6.345000e+03, double 7.818000e+03, double 1.107000e+03, double 1.563600e+04, double 7.077000e+03, double 8.184000e+03, double 5.320000e+02, double 1.000000e+01, double 0.000000e+00], [10 x double] [double 1.900000e+01, double 1.760000e+03, double 1.454000e+03, double 2.870000e+02, double 1.167000e+03, double 8.800000e+02, double 5.740000e+02, double 2.640000e+03, double 1.900000e+01, double 1.454000e+03], [10 x double] [double 1.900000e+01, double 5.740000e+02, double 2.870000e+02, double 3.060000e+02, double 1.760000e+03, double 1.200000e+01, double 3.100000e+01, double 3.800000e+01, double 1.900000e+01, double 5.740000e+02], [10 x double] [double 4.000000e+00, double 2.040000e+02, double 1.770000e+02, double 8.000000e+00, double 3.100000e+01, double 2.000000e+02, double 1.265000e+03, double 1.020000e+02, double 4.000000e+00, double 2.040000e+02], [10 x double] [double 4.000000e+00, double 1.020000e+02, double 1.060000e+02, double 8.000000e+00, double 9.800000e+01, double 1.367000e+03, double 4.870000e+02, double 2.040000e+02, double 4.000000e+00, double 1.020000e+02]], align 16
@ca = internal constant [8 x [9 x double]] [[9 x double] [double 4.000000e+00, double -1.300000e+01, double 1.100000e+01, double -9.000000e+00, double -9.000000e+00, double -3.000000e+00, double -1.000000e+00, double 4.000000e+00, double 0.000000e+00], [9 x double] [double -1.560000e+02, double 5.900000e+01, double -4.200000e+01, double 6.000000e+00, double 1.900000e+01, double -2.000000e+01, double -1.000000e+01, double -1.200000e+01, double 0.000000e+00], [9 x double] [double 6.400000e+01, double -1.520000e+02, double 6.200000e+01, double -8.000000e+00, double 3.200000e+01, double -4.100000e+01, double 1.900000e+01, double -1.100000e+01, double 0.000000e+00], [9 x double] [double 1.240000e+02, double 6.210000e+02, double -1.450000e+02, double 2.080000e+02, double 5.400000e+01, double -5.700000e+01, double 3.000000e+01, double 1.500000e+01, double 0.000000e+00], [9 x double] [double -2.343700e+04, double -2.634000e+03, double 6.601000e+03, double 6.259000e+03, double -1.507000e+03, double -1.821000e+03, double 2.620000e+03, double -2.115000e+03, double -1.489000e+03], [9 x double] [double 6.291100e+04, double -1.199190e+05, double 7.933600e+04, double 1.781400e+04, double -2.424100e+04, double 1.206800e+04, double 8.306000e+03, double -4.893000e+03, double 8.902000e+03], [9 x double] [double 3.890610e+05, double -2.621250e+05, double -4.408800e+04, double 8.387000e+03, double -2.297600e+04, double -2.093000e+03, double -6.150000e+02, double -9.720000e+03, double 6.633000e+03], [9 x double] [double -4.122350e+05, double -1.570460e+05, double -3.143000e+04, double 3.781700e+04, double -9.740000e+03, double -1.300000e+01, double -7.449000e+03, double 9.644000e+03, double 0.000000e+00]], align 16
@sa = internal constant [8 x [9 x double]] [[9 x double] [double -2.900000e+01, double -1.000000e+00, double 9.000000e+00, double 6.000000e+00, double -6.000000e+00, double 5.000000e+00, double 4.000000e+00, double 0.000000e+00, double 0.000000e+00], [9 x double] [double -4.800000e+01, double -1.250000e+02, double -2.600000e+01, double -3.700000e+01, double 1.800000e+01, double -1.300000e+01, double -2.000000e+01, double -2.000000e+00, double 0.000000e+00], [9 x double] [double -1.500000e+02, double -4.600000e+01, double 6.800000e+01, double 5.400000e+01, double 1.400000e+01, double 2.400000e+01, double -2.800000e+01, double 2.200000e+01, double 0.000000e+00], [9 x double] [double -6.210000e+02, double 5.320000e+02, double -6.940000e+02, double -2.000000e+01, double 1.920000e+02, double -9.400000e+01, double 7.100000e+01, double -7.300000e+01, double 0.000000e+00], [9 x double] [double -1.461400e+04, double -1.982800e+04, double -5.869000e+03, double 1.881000e+03, double -4.372000e+03, double -2.255000e+03, double 7.820000e+02, double 9.300000e+02, double 9.130000e+02], [9 x double] [double 1.397370e+05, double 0.000000e+00, double 2.466700e+04, double 5.112300e+04, double -5.102000e+03, double 7.429000e+03, double -4.095000e+03, double -1.976000e+03, double -9.566000e+03], [9 x double] [double -1.380810e+05, double 0.000000e+00, double 3.720500e+04, double -4.903900e+04, double -4.190100e+04, double -3.387200e+04, double -2.703700e+04, double -1.247400e+04, double 1.879700e+04], [9 x double] [double 0.000000e+00, double 2.849200e+04, double 1.332360e+05, double 6.965400e+04, double 5.232200e+04, double -4.957700e+04, double -2.643000e+04, double -3.593000e+03, double 0.000000e+00]], align 16
@cl = internal constant [8 x [10 x double]] [[10 x double] [double 2.100000e+01, double -9.500000e+01, double -1.570000e+02, double 4.100000e+01, double -5.000000e+00, double 4.200000e+01, double 2.300000e+01, double 3.000000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double -1.600000e+02, double -3.130000e+02, double -2.350000e+02, double 6.000000e+01, double -7.400000e+01, double -7.600000e+01, double -2.700000e+01, double 3.400000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double -3.250000e+02, double -3.220000e+02, double -7.900000e+01, double 2.320000e+02, double -5.200000e+01, double 9.700000e+01, double 5.500000e+01, double -4.100000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 2.268000e+03, double -9.790000e+02, double 8.020000e+02, double 6.020000e+02, double -6.680000e+02, double -3.300000e+01, double 3.450000e+02, double 2.010000e+02, double -5.500000e+01, double 0.000000e+00], [10 x double] [double 7.610000e+03, double -4.997000e+03, double -7.689000e+03, double -5.841000e+03, double -2.617000e+03, double 1.115000e+03, double -7.480000e+02, double -6.070000e+02, double 6.074000e+03, double 3.540000e+02], [10 x double] [double -1.854900e+04, double 3.012500e+04, double 2.001200e+04, double -7.300000e+02, double 8.240000e+02, double 2.300000e+01, double 1.289000e+03, double -3.520000e+02, double -1.476700e+04, double -2.062000e+03], [10 x double] [double -1.352450e+05, double -1.459400e+04, double 4.197000e+03, double -4.030000e+03, double -5.630000e+03, double -2.898000e+03, double 2.540000e+03, double -3.060000e+02, double 2.939000e+03, double 1.986000e+03], [10 x double] [double 8.994800e+04, double 2.103000e+03, double 8.963000e+03, double 2.695000e+03, double 3.682000e+03, double 1.648000e+03, double 8.660000e+02, double -1.540000e+02, double -1.963000e+03, double -2.830000e+02]], align 16
@sl = internal constant [8 x [10 x double]] [[10 x double] [double -3.420000e+02, double 1.360000e+02, double -2.300000e+01, double 6.200000e+01, double 6.600000e+01, double -5.200000e+01, double -3.300000e+01, double 1.700000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 5.240000e+02, double -1.490000e+02, double -3.500000e+01, double 1.170000e+02, double 1.510000e+02, double 1.220000e+02, double -7.100000e+01, double -6.200000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double -1.050000e+02, double -1.370000e+02, double 2.580000e+02, double 3.500000e+01, double -1.160000e+02, double -8.800000e+01, double -1.120000e+02, double -8.000000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 8.540000e+02, double -2.050000e+02, double -9.360000e+02, double -2.400000e+02, double 1.400000e+02, double -3.410000e+02, double -9.700000e+01, double -2.320000e+02, double 5.360000e+02, double 0.000000e+00], [10 x double] [double -5.698000e+04, double 8.016000e+03, double 1.012000e+03, double 1.448000e+03, double -3.024000e+03, double -3.710000e+03, double 3.180000e+02, double 5.030000e+02, double 3.767000e+03, double 5.770000e+02], [10 x double] [double 1.386060e+05, double -1.347800e+04, double -4.964000e+03, double 1.441000e+03, double -1.319000e+03, double -1.482000e+03, double 4.270000e+02, double 1.236000e+03, double -9.167000e+03, double -1.918000e+03], [10 x double] [double 7.123400e+04, double -4.111600e+04, double 5.334000e+03, double -4.935000e+03, double -1.848000e+03, double 6.600000e+01, double 4.340000e+02, double -1.748000e+03, double 3.780000e+03, double -7.010000e+02], [10 x double] [double -4.764500e+04, double 1.164700e+04, double 2.166000e+03, double 3.194000e+03, double 6.790000e+02, double 0.000000e+00, double -2.440000e+02, double -4.190000e+02, double -2.531000e+03, double 4.800000e+01]], align 16
@amas = internal constant [8 x double] [double 6.023600e+06, double 4.085235e+05, double 3.289005e+05, double 3.098710e+06, double 1.047355e+03, double 3.498500e+03, double 2.286900e+04, double 1.931400e+04], align 16
@.str = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define double @anpm(double %a) #0 {
entry:
  %a.addr = alloca double, align 8
  %w = alloca double, align 8
  store double %a, double* %a.addr, align 8
  %0 = load double, double* %a.addr, align 8
  %call = call double @fmod(double %0, double 0x401921FB54442D18) #5
  store double %call, double* %w, align 8
  %1 = load double, double* %w, align 8
  %call1 = call double @fabs(double %1) #6
  %cmp = fcmp oge double %call1, 0x400921FB54442D18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load double, double* %w, align 8
  %3 = load double, double* %a.addr, align 8
  %cmp2 = fcmp olt double %3, 0.000000e+00
  %cond = select i1 %cmp2, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %sub = fsub double %2, %cond
  store double %sub, double* %w, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load double, double* %w, align 8
  ret double %4
}

; Function Attrs: nounwind
declare double @fmod(double, double) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: noinline nounwind uwtable
define void @planetpv(double* %epoch, i32 %np, [3 x double]* %pv) #0 {
entry:
  %epoch.addr = alloca double*, align 8
  %np.addr = alloca i32, align 4
  %pv.addr = alloca [3 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca double, align 8
  %da = alloca double, align 8
  %dl = alloca double, align 8
  %de = alloca double, align 8
  %dp = alloca double, align 8
  %di = alloca double, align 8
  %doh = alloca double, align 8
  %dmu = alloca double, align 8
  %arga = alloca double, align 8
  %argl = alloca double, align 8
  %am = alloca double, align 8
  %ae = alloca double, align 8
  %dae = alloca double, align 8
  %ae2 = alloca double, align 8
  %at = alloca double, align 8
  %r = alloca double, align 8
  %v = alloca double, align 8
  %si2 = alloca double, align 8
  %xq = alloca double, align 8
  %xp = alloca double, align 8
  %tl = alloca double, align 8
  %xsw = alloca double, align 8
  %xcw = alloca double, align 8
  %xm2 = alloca double, align 8
  %xf = alloca double, align 8
  %ci2 = alloca double, align 8
  %xms = alloca double, align 8
  %xmc = alloca double, align 8
  %xpxq2 = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  store double* %epoch, double** %epoch.addr, align 8
  store i32 %np, i32* %np.addr, align 4
  store [3 x double]* %pv, [3 x double]** %pv.addr, align 8
  %0 = load double*, double** %epoch.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %sub = fsub double %1, 2.451545e+06
  %2 = load double*, double** %epoch.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 1
  %3 = load double, double* %arrayidx1, align 8
  %add = fadd double %sub, %3
  %div = fdiv double %add, 3.652500e+05
  store double %div, double* %t, align 8
  %4 = load i32, i32* %np.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @a, i64 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx2, i64 0, i64 0
  %5 = load double, double* %arrayidx3, align 8
  %6 = load i32, i32* %np.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @a, i64 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx5, i64 0, i64 1
  %7 = load double, double* %arrayidx6, align 8
  %8 = load i32, i32* %np.addr, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @a, i64 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx8, i64 0, i64 2
  %9 = load double, double* %arrayidx9, align 8
  %10 = load double, double* %t, align 8
  %mul = fmul double %9, %10
  %add10 = fadd double %7, %mul
  %11 = load double, double* %t, align 8
  %mul11 = fmul double %add10, %11
  %add12 = fadd double %5, %mul11
  store double %add12, double* %da, align 8
  %12 = load i32, i32* %np.addr, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @dlm, i64 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx14, i64 0, i64 0
  %13 = load double, double* %arrayidx15, align 8
  %mul16 = fmul double 3.600000e+03, %13
  %14 = load i32, i32* %np.addr, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @dlm, i64 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx18, i64 0, i64 1
  %15 = load double, double* %arrayidx19, align 8
  %16 = load i32, i32* %np.addr, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @dlm, i64 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx21, i64 0, i64 2
  %17 = load double, double* %arrayidx22, align 8
  %18 = load double, double* %t, align 8
  %mul23 = fmul double %17, %18
  %add24 = fadd double %15, %mul23
  %19 = load double, double* %t, align 8
  %mul25 = fmul double %add24, %19
  %add26 = fadd double %mul16, %mul25
  %mul27 = fmul double %add26, 0x3ED455A5B2FF8F9D
  store double %mul27, double* %dl, align 8
  %20 = load i32, i32* %np.addr, align 4
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @e, i64 0, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx29, i64 0, i64 0
  %21 = load double, double* %arrayidx30, align 8
  %22 = load i32, i32* %np.addr, align 4
  %idxprom31 = sext i32 %22 to i64
  %arrayidx32 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @e, i64 0, i64 %idxprom31
  %arrayidx33 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx32, i64 0, i64 1
  %23 = load double, double* %arrayidx33, align 8
  %24 = load i32, i32* %np.addr, align 4
  %idxprom34 = sext i32 %24 to i64
  %arrayidx35 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @e, i64 0, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx35, i64 0, i64 2
  %25 = load double, double* %arrayidx36, align 8
  %26 = load double, double* %t, align 8
  %mul37 = fmul double %25, %26
  %add38 = fadd double %23, %mul37
  %27 = load double, double* %t, align 8
  %mul39 = fmul double %add38, %27
  %add40 = fadd double %21, %mul39
  store double %add40, double* %de, align 8
  %28 = load i32, i32* %np.addr, align 4
  %idxprom41 = sext i32 %28 to i64
  %arrayidx42 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @pi, i64 0, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx42, i64 0, i64 0
  %29 = load double, double* %arrayidx43, align 8
  %mul44 = fmul double 3.600000e+03, %29
  %30 = load i32, i32* %np.addr, align 4
  %idxprom45 = sext i32 %30 to i64
  %arrayidx46 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @pi, i64 0, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx46, i64 0, i64 1
  %31 = load double, double* %arrayidx47, align 8
  %32 = load i32, i32* %np.addr, align 4
  %idxprom48 = sext i32 %32 to i64
  %arrayidx49 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @pi, i64 0, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx49, i64 0, i64 2
  %33 = load double, double* %arrayidx50, align 8
  %34 = load double, double* %t, align 8
  %mul51 = fmul double %33, %34
  %add52 = fadd double %31, %mul51
  %35 = load double, double* %t, align 8
  %mul53 = fmul double %add52, %35
  %add54 = fadd double %mul44, %mul53
  %mul55 = fmul double %add54, 0x3ED455A5B2FF8F9D
  %call = call double @anpm(double %mul55)
  store double %call, double* %dp, align 8
  %36 = load i32, i32* %np.addr, align 4
  %idxprom56 = sext i32 %36 to i64
  %arrayidx57 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @dinc, i64 0, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx57, i64 0, i64 0
  %37 = load double, double* %arrayidx58, align 8
  %mul59 = fmul double 3.600000e+03, %37
  %38 = load i32, i32* %np.addr, align 4
  %idxprom60 = sext i32 %38 to i64
  %arrayidx61 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @dinc, i64 0, i64 %idxprom60
  %arrayidx62 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx61, i64 0, i64 1
  %39 = load double, double* %arrayidx62, align 8
  %40 = load i32, i32* %np.addr, align 4
  %idxprom63 = sext i32 %40 to i64
  %arrayidx64 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @dinc, i64 0, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx64, i64 0, i64 2
  %41 = load double, double* %arrayidx65, align 8
  %42 = load double, double* %t, align 8
  %mul66 = fmul double %41, %42
  %add67 = fadd double %39, %mul66
  %43 = load double, double* %t, align 8
  %mul68 = fmul double %add67, %43
  %add69 = fadd double %mul59, %mul68
  %mul70 = fmul double %add69, 0x3ED455A5B2FF8F9D
  store double %mul70, double* %di, align 8
  %44 = load i32, i32* %np.addr, align 4
  %idxprom71 = sext i32 %44 to i64
  %arrayidx72 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @omega, i64 0, i64 %idxprom71
  %arrayidx73 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx72, i64 0, i64 0
  %45 = load double, double* %arrayidx73, align 8
  %mul74 = fmul double 3.600000e+03, %45
  %46 = load i32, i32* %np.addr, align 4
  %idxprom75 = sext i32 %46 to i64
  %arrayidx76 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @omega, i64 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx76, i64 0, i64 1
  %47 = load double, double* %arrayidx77, align 8
  %48 = load i32, i32* %np.addr, align 4
  %idxprom78 = sext i32 %48 to i64
  %arrayidx79 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @omega, i64 0, i64 %idxprom78
  %arrayidx80 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx79, i64 0, i64 2
  %49 = load double, double* %arrayidx80, align 8
  %50 = load double, double* %t, align 8
  %mul81 = fmul double %49, %50
  %add82 = fadd double %47, %mul81
  %51 = load double, double* %t, align 8
  %mul83 = fmul double %add82, %51
  %add84 = fadd double %mul74, %mul83
  %mul85 = fmul double %add84, 0x3ED455A5B2FF8F9D
  %call86 = call double @anpm(double %mul85)
  store double %call86, double* %doh, align 8
  %52 = load double, double* %t, align 8
  %mul87 = fmul double 3.595362e-01, %52
  store double %mul87, double* %dmu, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %53 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %53, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %np.addr, align 4
  %idxprom88 = sext i32 %54 to i64
  %arrayidx89 = getelementptr inbounds [8 x [9 x double]], [8 x [9 x double]]* @kp, i64 0, i64 %idxprom88
  %55 = load i32, i32* %k, align 4
  %idxprom90 = sext i32 %55 to i64
  %arrayidx91 = getelementptr inbounds [9 x double], [9 x double]* %arrayidx89, i64 0, i64 %idxprom90
  %56 = load double, double* %arrayidx91, align 8
  %57 = load double, double* %dmu, align 8
  %mul92 = fmul double %56, %57
  store double %mul92, double* %arga, align 8
  %58 = load i32, i32* %np.addr, align 4
  %idxprom93 = sext i32 %58 to i64
  %arrayidx94 = getelementptr inbounds [8 x [10 x double]], [8 x [10 x double]]* @kq, i64 0, i64 %idxprom93
  %59 = load i32, i32* %k, align 4
  %idxprom95 = sext i32 %59 to i64
  %arrayidx96 = getelementptr inbounds [10 x double], [10 x double]* %arrayidx94, i64 0, i64 %idxprom95
  %60 = load double, double* %arrayidx96, align 8
  %61 = load double, double* %dmu, align 8
  %mul97 = fmul double %60, %61
  store double %mul97, double* %argl, align 8
  %62 = load double, double* %da, align 8
  %63 = load i32, i32* %np.addr, align 4
  %idxprom98 = sext i32 %63 to i64
  %arrayidx99 = getelementptr inbounds [8 x [9 x double]], [8 x [9 x double]]* @ca, i64 0, i64 %idxprom98
  %64 = load i32, i32* %k, align 4
  %idxprom100 = sext i32 %64 to i64
  %arrayidx101 = getelementptr inbounds [9 x double], [9 x double]* %arrayidx99, i64 0, i64 %idxprom100
  %65 = load double, double* %arrayidx101, align 8
  %66 = load double, double* %arga, align 8
  %call102 = call double @cos(double %66) #5
  %mul103 = fmul double %65, %call102
  %67 = load i32, i32* %np.addr, align 4
  %idxprom104 = sext i32 %67 to i64
  %arrayidx105 = getelementptr inbounds [8 x [9 x double]], [8 x [9 x double]]* @sa, i64 0, i64 %idxprom104
  %68 = load i32, i32* %k, align 4
  %idxprom106 = sext i32 %68 to i64
  %arrayidx107 = getelementptr inbounds [9 x double], [9 x double]* %arrayidx105, i64 0, i64 %idxprom106
  %69 = load double, double* %arrayidx107, align 8
  %70 = load double, double* %arga, align 8
  %call108 = call double @sin(double %70) #5
  %mul109 = fmul double %69, %call108
  %add110 = fadd double %mul103, %mul109
  %mul111 = fmul double %add110, 1.000000e-07
  %add112 = fadd double %62, %mul111
  store double %add112, double* %da, align 8
  %71 = load double, double* %dl, align 8
  %72 = load i32, i32* %np.addr, align 4
  %idxprom113 = sext i32 %72 to i64
  %arrayidx114 = getelementptr inbounds [8 x [10 x double]], [8 x [10 x double]]* @cl, i64 0, i64 %idxprom113
  %73 = load i32, i32* %k, align 4
  %idxprom115 = sext i32 %73 to i64
  %arrayidx116 = getelementptr inbounds [10 x double], [10 x double]* %arrayidx114, i64 0, i64 %idxprom115
  %74 = load double, double* %arrayidx116, align 8
  %75 = load double, double* %argl, align 8
  %call117 = call double @cos(double %75) #5
  %mul118 = fmul double %74, %call117
  %76 = load i32, i32* %np.addr, align 4
  %idxprom119 = sext i32 %76 to i64
  %arrayidx120 = getelementptr inbounds [8 x [10 x double]], [8 x [10 x double]]* @sl, i64 0, i64 %idxprom119
  %77 = load i32, i32* %k, align 4
  %idxprom121 = sext i32 %77 to i64
  %arrayidx122 = getelementptr inbounds [10 x double], [10 x double]* %arrayidx120, i64 0, i64 %idxprom121
  %78 = load double, double* %arrayidx122, align 8
  %79 = load double, double* %argl, align 8
  %call123 = call double @sin(double %79) #5
  %mul124 = fmul double %78, %call123
  %add125 = fadd double %mul118, %mul124
  %mul126 = fmul double %add125, 1.000000e-07
  %add127 = fadd double %71, %mul126
  store double %add127, double* %dl, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %80 = load i32, i32* %k, align 4
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %81 = load i32, i32* %np.addr, align 4
  %idxprom128 = sext i32 %81 to i64
  %arrayidx129 = getelementptr inbounds [8 x [9 x double]], [8 x [9 x double]]* @kp, i64 0, i64 %idxprom128
  %arrayidx130 = getelementptr inbounds [9 x double], [9 x double]* %arrayidx129, i64 0, i64 8
  %82 = load double, double* %arrayidx130, align 8
  %83 = load double, double* %dmu, align 8
  %mul131 = fmul double %82, %83
  store double %mul131, double* %arga, align 8
  %84 = load double, double* %da, align 8
  %85 = load double, double* %t, align 8
  %86 = load i32, i32* %np.addr, align 4
  %idxprom132 = sext i32 %86 to i64
  %arrayidx133 = getelementptr inbounds [8 x [9 x double]], [8 x [9 x double]]* @ca, i64 0, i64 %idxprom132
  %arrayidx134 = getelementptr inbounds [9 x double], [9 x double]* %arrayidx133, i64 0, i64 8
  %87 = load double, double* %arrayidx134, align 8
  %88 = load double, double* %arga, align 8
  %call135 = call double @cos(double %88) #5
  %mul136 = fmul double %87, %call135
  %89 = load i32, i32* %np.addr, align 4
  %idxprom137 = sext i32 %89 to i64
  %arrayidx138 = getelementptr inbounds [8 x [9 x double]], [8 x [9 x double]]* @sa, i64 0, i64 %idxprom137
  %arrayidx139 = getelementptr inbounds [9 x double], [9 x double]* %arrayidx138, i64 0, i64 8
  %90 = load double, double* %arrayidx139, align 8
  %91 = load double, double* %arga, align 8
  %call140 = call double @sin(double %91) #5
  %mul141 = fmul double %90, %call140
  %add142 = fadd double %mul136, %mul141
  %mul143 = fmul double %85, %add142
  %mul144 = fmul double %mul143, 1.000000e-07
  %add145 = fadd double %84, %mul144
  store double %add145, double* %da, align 8
  store i32 8, i32* %k, align 4
  br label %for.cond146

for.cond146:                                      ; preds = %for.inc170, %for.end
  %92 = load i32, i32* %k, align 4
  %cmp147 = icmp sle i32 %92, 9
  br i1 %cmp147, label %for.body148, label %for.end172

for.body148:                                      ; preds = %for.cond146
  %93 = load i32, i32* %np.addr, align 4
  %idxprom149 = sext i32 %93 to i64
  %arrayidx150 = getelementptr inbounds [8 x [10 x double]], [8 x [10 x double]]* @kq, i64 0, i64 %idxprom149
  %94 = load i32, i32* %k, align 4
  %idxprom151 = sext i32 %94 to i64
  %arrayidx152 = getelementptr inbounds [10 x double], [10 x double]* %arrayidx150, i64 0, i64 %idxprom151
  %95 = load double, double* %arrayidx152, align 8
  %96 = load double, double* %dmu, align 8
  %mul153 = fmul double %95, %96
  store double %mul153, double* %argl, align 8
  %97 = load double, double* %dl, align 8
  %98 = load double, double* %t, align 8
  %99 = load i32, i32* %np.addr, align 4
  %idxprom154 = sext i32 %99 to i64
  %arrayidx155 = getelementptr inbounds [8 x [10 x double]], [8 x [10 x double]]* @cl, i64 0, i64 %idxprom154
  %100 = load i32, i32* %k, align 4
  %idxprom156 = sext i32 %100 to i64
  %arrayidx157 = getelementptr inbounds [10 x double], [10 x double]* %arrayidx155, i64 0, i64 %idxprom156
  %101 = load double, double* %arrayidx157, align 8
  %102 = load double, double* %argl, align 8
  %call158 = call double @cos(double %102) #5
  %mul159 = fmul double %101, %call158
  %103 = load i32, i32* %np.addr, align 4
  %idxprom160 = sext i32 %103 to i64
  %arrayidx161 = getelementptr inbounds [8 x [10 x double]], [8 x [10 x double]]* @sl, i64 0, i64 %idxprom160
  %104 = load i32, i32* %k, align 4
  %idxprom162 = sext i32 %104 to i64
  %arrayidx163 = getelementptr inbounds [10 x double], [10 x double]* %arrayidx161, i64 0, i64 %idxprom162
  %105 = load double, double* %arrayidx163, align 8
  %106 = load double, double* %argl, align 8
  %call164 = call double @sin(double %106) #5
  %mul165 = fmul double %105, %call164
  %add166 = fadd double %mul159, %mul165
  %mul167 = fmul double %98, %add166
  %mul168 = fmul double %mul167, 1.000000e-07
  %add169 = fadd double %97, %mul168
  store double %add169, double* %dl, align 8
  br label %for.inc170

for.inc170:                                       ; preds = %for.body148
  %107 = load i32, i32* %k, align 4
  %inc171 = add nsw i32 %107, 1
  store i32 %inc171, i32* %k, align 4
  br label %for.cond146

for.end172:                                       ; preds = %for.cond146
  %108 = load double, double* %dl, align 8
  %call173 = call double @fmod(double %108, double 0x401921FB54442D18) #5
  store double %call173, double* %dl, align 8
  %109 = load double, double* %dl, align 8
  %110 = load double, double* %dp, align 8
  %sub174 = fsub double %109, %110
  store double %sub174, double* %am, align 8
  %111 = load double, double* %am, align 8
  %112 = load double, double* %de, align 8
  %113 = load double, double* %am, align 8
  %call175 = call double @sin(double %113) #5
  %mul176 = fmul double %112, %call175
  %add177 = fadd double %111, %mul176
  store double %add177, double* %ae, align 8
  store i32 0, i32* %k, align 4
  br label %while.body

while.body:                                       ; preds = %for.end172, %if.end
  %114 = load double, double* %am, align 8
  %115 = load double, double* %ae, align 8
  %sub178 = fsub double %114, %115
  %116 = load double, double* %de, align 8
  %117 = load double, double* %ae, align 8
  %call179 = call double @sin(double %117) #5
  %mul180 = fmul double %116, %call179
  %add181 = fadd double %sub178, %mul180
  %118 = load double, double* %de, align 8
  %119 = load double, double* %ae, align 8
  %call182 = call double @cos(double %119) #5
  %mul183 = fmul double %118, %call182
  %sub184 = fsub double 1.000000e+00, %mul183
  %div185 = fdiv double %add181, %sub184
  store double %div185, double* %dae, align 8
  %120 = load double, double* %ae, align 8
  %121 = load double, double* %dae, align 8
  %add186 = fadd double %120, %121
  store double %add186, double* %ae, align 8
  %122 = load i32, i32* %k, align 4
  %add187 = add nsw i32 %122, 1
  store i32 %add187, i32* %k, align 4
  %123 = load i32, i32* %k, align 4
  %cmp188 = icmp sge i32 %123, 10
  br i1 %cmp188, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %124 = load double, double* %dae, align 8
  %call189 = call double @fabs(double %124) #6
  %cmp190 = fcmp olt double %call189, 1.000000e-12
  br i1 %cmp190, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  br label %while.body

while.end:                                        ; preds = %if.then
  %125 = load double, double* %ae, align 8
  %div191 = fdiv double %125, 2.000000e+00
  store double %div191, double* %ae2, align 8
  %126 = load double, double* %de, align 8
  %add192 = fadd double 1.000000e+00, %126
  %127 = load double, double* %de, align 8
  %sub193 = fsub double 1.000000e+00, %127
  %div194 = fdiv double %add192, %sub193
  %call195 = call double @sqrt(double %div194) #5
  %128 = load double, double* %ae2, align 8
  %call196 = call double @sin(double %128) #5
  %mul197 = fmul double %call195, %call196
  %129 = load double, double* %ae2, align 8
  %call198 = call double @cos(double %129) #5
  %call199 = call double @atan2(double %mul197, double %call198) #5
  %mul200 = fmul double 2.000000e+00, %call199
  store double %mul200, double* %at, align 8
  %130 = load double, double* %da, align 8
  %131 = load double, double* %de, align 8
  %132 = load double, double* %ae, align 8
  %call201 = call double @cos(double %132) #5
  %mul202 = fmul double %131, %call201
  %sub203 = fsub double 1.000000e+00, %mul202
  %mul204 = fmul double %130, %sub203
  store double %mul204, double* %r, align 8
  %133 = load i32, i32* %np.addr, align 4
  %idxprom205 = sext i32 %133 to i64
  %arrayidx206 = getelementptr inbounds [8 x double], [8 x double]* @amas, i64 0, i64 %idxprom205
  %134 = load double, double* %arrayidx206, align 8
  %div207 = fdiv double 1.000000e+00, %134
  %add208 = fadd double 1.000000e+00, %div207
  %135 = load double, double* %da, align 8
  %136 = load double, double* %da, align 8
  %mul209 = fmul double %135, %136
  %137 = load double, double* %da, align 8
  %mul210 = fmul double %mul209, %137
  %div211 = fdiv double %add208, %mul210
  %call212 = call double @sqrt(double %div211) #5
  %mul213 = fmul double 0x3F919D6D51A6B69A, %call212
  store double %mul213, double* %v, align 8
  %138 = load double, double* %di, align 8
  %div214 = fdiv double %138, 2.000000e+00
  %call215 = call double @sin(double %div214) #5
  store double %call215, double* %si2, align 8
  %139 = load double, double* %si2, align 8
  %140 = load double, double* %doh, align 8
  %call216 = call double @cos(double %140) #5
  %mul217 = fmul double %139, %call216
  store double %mul217, double* %xq, align 8
  %141 = load double, double* %si2, align 8
  %142 = load double, double* %doh, align 8
  %call218 = call double @sin(double %142) #5
  %mul219 = fmul double %141, %call218
  store double %mul219, double* %xp, align 8
  %143 = load double, double* %at, align 8
  %144 = load double, double* %dp, align 8
  %add220 = fadd double %143, %144
  store double %add220, double* %tl, align 8
  %145 = load double, double* %tl, align 8
  %call221 = call double @sin(double %145) #5
  store double %call221, double* %xsw, align 8
  %146 = load double, double* %tl, align 8
  %call222 = call double @cos(double %146) #5
  store double %call222, double* %xcw, align 8
  %147 = load double, double* %xp, align 8
  %148 = load double, double* %xcw, align 8
  %mul223 = fmul double %147, %148
  %149 = load double, double* %xq, align 8
  %150 = load double, double* %xsw, align 8
  %mul224 = fmul double %149, %150
  %sub225 = fsub double %mul223, %mul224
  %mul226 = fmul double 2.000000e+00, %sub225
  store double %mul226, double* %xm2, align 8
  %151 = load double, double* %da, align 8
  %152 = load double, double* %de, align 8
  %153 = load double, double* %de, align 8
  %mul227 = fmul double %152, %153
  %sub228 = fsub double 1.000000e+00, %mul227
  %call229 = call double @sqrt(double %sub228) #5
  %div230 = fdiv double %151, %call229
  store double %div230, double* %xf, align 8
  %154 = load double, double* %di, align 8
  %div231 = fdiv double %154, 2.000000e+00
  %call232 = call double @cos(double %div231) #5
  store double %call232, double* %ci2, align 8
  %155 = load double, double* %de, align 8
  %156 = load double, double* %dp, align 8
  %call233 = call double @sin(double %156) #5
  %mul234 = fmul double %155, %call233
  %157 = load double, double* %xsw, align 8
  %add235 = fadd double %mul234, %157
  %158 = load double, double* %xf, align 8
  %mul236 = fmul double %add235, %158
  store double %mul236, double* %xms, align 8
  %159 = load double, double* %de, align 8
  %160 = load double, double* %dp, align 8
  %call237 = call double @cos(double %160) #5
  %mul238 = fmul double %159, %call237
  %161 = load double, double* %xcw, align 8
  %add239 = fadd double %mul238, %161
  %162 = load double, double* %xf, align 8
  %mul240 = fmul double %add239, %162
  store double %mul240, double* %xmc, align 8
  %163 = load double, double* %xp, align 8
  %mul241 = fmul double 2.000000e+00, %163
  %164 = load double, double* %xq, align 8
  %mul242 = fmul double %mul241, %164
  store double %mul242, double* %xpxq2, align 8
  %165 = load double, double* %r, align 8
  %166 = load double, double* %xcw, align 8
  %167 = load double, double* %xm2, align 8
  %168 = load double, double* %xp, align 8
  %mul243 = fmul double %167, %168
  %sub244 = fsub double %166, %mul243
  %mul245 = fmul double %165, %sub244
  store double %mul245, double* %x, align 8
  %169 = load double, double* %r, align 8
  %170 = load double, double* %xsw, align 8
  %171 = load double, double* %xm2, align 8
  %172 = load double, double* %xq, align 8
  %mul246 = fmul double %171, %172
  %add247 = fadd double %170, %mul246
  %mul248 = fmul double %169, %add247
  store double %mul248, double* %y, align 8
  %173 = load double, double* %r, align 8
  %174 = load double, double* %xm2, align 8
  %sub249 = fsub double -0.000000e+00, %174
  %175 = load double, double* %ci2, align 8
  %mul250 = fmul double %sub249, %175
  %mul251 = fmul double %173, %mul250
  store double %mul251, double* %z, align 8
  %176 = load double, double* %x, align 8
  %177 = load [3 x double]*, [3 x double]** %pv.addr, align 8
  %arrayidx252 = getelementptr inbounds [3 x double], [3 x double]* %177, i64 0
  %arrayidx253 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx252, i64 0, i64 0
  store double %176, double* %arrayidx253, align 8
  %178 = load double, double* %y, align 8
  %mul254 = fmul double %178, 0x3FED5C0357681EF3
  %179 = load double, double* %z, align 8
  %mul255 = fmul double %179, 0x3FD9752E50F4B399
  %sub256 = fsub double %mul254, %mul255
  %180 = load [3 x double]*, [3 x double]** %pv.addr, align 8
  %arrayidx257 = getelementptr inbounds [3 x double], [3 x double]* %180, i64 0
  %arrayidx258 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx257, i64 0, i64 1
  store double %sub256, double* %arrayidx258, align 8
  %181 = load double, double* %y, align 8
  %mul259 = fmul double %181, 0x3FD9752E50F4B399
  %182 = load double, double* %z, align 8
  %mul260 = fmul double %182, 0x3FED5C0357681EF3
  %add261 = fadd double %mul259, %mul260
  %183 = load [3 x double]*, [3 x double]** %pv.addr, align 8
  %arrayidx262 = getelementptr inbounds [3 x double], [3 x double]* %183, i64 0
  %arrayidx263 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx262, i64 0, i64 2
  store double %add261, double* %arrayidx263, align 8
  %184 = load double, double* %v, align 8
  %185 = load double, double* %xp, align 8
  %mul264 = fmul double 2.000000e+00, %185
  %186 = load double, double* %xp, align 8
  %mul265 = fmul double %mul264, %186
  %add266 = fadd double -1.000000e+00, %mul265
  %187 = load double, double* %xms, align 8
  %mul267 = fmul double %add266, %187
  %188 = load double, double* %xpxq2, align 8
  %189 = load double, double* %xmc, align 8
  %mul268 = fmul double %188, %189
  %add269 = fadd double %mul267, %mul268
  %mul270 = fmul double %184, %add269
  store double %mul270, double* %x, align 8
  %190 = load double, double* %v, align 8
  %191 = load double, double* %xq, align 8
  %mul271 = fmul double 2.000000e+00, %191
  %192 = load double, double* %xq, align 8
  %mul272 = fmul double %mul271, %192
  %sub273 = fsub double 1.000000e+00, %mul272
  %193 = load double, double* %xmc, align 8
  %mul274 = fmul double %sub273, %193
  %194 = load double, double* %xpxq2, align 8
  %195 = load double, double* %xms, align 8
  %mul275 = fmul double %194, %195
  %sub276 = fsub double %mul274, %mul275
  %mul277 = fmul double %190, %sub276
  store double %mul277, double* %y, align 8
  %196 = load double, double* %v, align 8
  %197 = load double, double* %ci2, align 8
  %mul278 = fmul double 2.000000e+00, %197
  %198 = load double, double* %xp, align 8
  %199 = load double, double* %xms, align 8
  %mul279 = fmul double %198, %199
  %200 = load double, double* %xq, align 8
  %201 = load double, double* %xmc, align 8
  %mul280 = fmul double %200, %201
  %add281 = fadd double %mul279, %mul280
  %mul282 = fmul double %mul278, %add281
  %mul283 = fmul double %196, %mul282
  store double %mul283, double* %z, align 8
  %202 = load double, double* %x, align 8
  %203 = load [3 x double]*, [3 x double]** %pv.addr, align 8
  %arrayidx284 = getelementptr inbounds [3 x double], [3 x double]* %203, i64 1
  %arrayidx285 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx284, i64 0, i64 0
  store double %202, double* %arrayidx285, align 8
  %204 = load double, double* %y, align 8
  %mul286 = fmul double %204, 0x3FED5C0357681EF3
  %205 = load double, double* %z, align 8
  %mul287 = fmul double %205, 0x3FD9752E50F4B399
  %sub288 = fsub double %mul286, %mul287
  %206 = load [3 x double]*, [3 x double]** %pv.addr, align 8
  %arrayidx289 = getelementptr inbounds [3 x double], [3 x double]* %206, i64 1
  %arrayidx290 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx289, i64 0, i64 1
  store double %sub288, double* %arrayidx290, align 8
  %207 = load double, double* %y, align 8
  %mul291 = fmul double %207, 0x3FD9752E50F4B399
  %208 = load double, double* %z, align 8
  %mul292 = fmul double %208, 0x3FED5C0357681EF3
  %add293 = fadd double %mul291, %mul292
  %209 = load [3 x double]*, [3 x double]** %pv.addr, align 8
  %arrayidx294 = getelementptr inbounds [3 x double], [3 x double]* %209, i64 1
  %arrayidx295 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx294, i64 0, i64 2
  store double %add293, double* %arrayidx295, align 8
  ret void
}

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @atan2(double, double) #1

; Function Attrs: noinline nounwind uwtable
define void @radecdist([3 x double]* %state, double* %rdd) #0 {
entry:
  %state.addr = alloca [3 x double]*, align 8
  %rdd.addr = alloca double*, align 8
  store [3 x double]* %state, [3 x double]** %state.addr, align 8
  store double* %rdd, double** %rdd.addr, align 8
  %0 = load [3 x double]*, [3 x double]** %state.addr, align 8
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i64 0, i64 0
  %1 = load double, double* %arrayidx1, align 8
  %2 = load [3 x double]*, [3 x double]** %state.addr, align 8
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 0
  %arrayidx3 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx2, i64 0, i64 0
  %3 = load double, double* %arrayidx3, align 8
  %mul = fmul double %1, %3
  %4 = load [3 x double]*, [3 x double]** %state.addr, align 8
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx4, i64 0, i64 1
  %5 = load double, double* %arrayidx5, align 8
  %6 = load [3 x double]*, [3 x double]** %state.addr, align 8
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx6, i64 0, i64 1
  %7 = load double, double* %arrayidx7, align 8
  %mul8 = fmul double %5, %7
  %add = fadd double %mul, %mul8
  %8 = load [3 x double]*, [3 x double]** %state.addr, align 8
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx9, i64 0, i64 2
  %9 = load double, double* %arrayidx10, align 8
  %10 = load [3 x double]*, [3 x double]** %state.addr, align 8
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0
  %arrayidx12 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx11, i64 0, i64 2
  %11 = load double, double* %arrayidx12, align 8
  %mul13 = fmul double %9, %11
  %add14 = fadd double %add, %mul13
  %call = call double @sqrt(double %add14) #5
  %12 = load double*, double** %rdd.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %12, i64 2
  store double %call, double* %arrayidx15, align 8
  %13 = load [3 x double]*, [3 x double]** %state.addr, align 8
  %arrayidx16 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx16, i64 0, i64 1
  %14 = load double, double* %arrayidx17, align 8
  %15 = load [3 x double]*, [3 x double]** %state.addr, align 8
  %arrayidx18 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0
  %arrayidx19 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx18, i64 0, i64 0
  %16 = load double, double* %arrayidx19, align 8
  %call20 = call double @atan2(double %14, double %16) #5
  %mul21 = fmul double %call20, 0x400E8EC8A4AEACC4
  %17 = load double*, double** %rdd.addr, align 8
  %arrayidx22 = getelementptr inbounds double, double* %17, i64 0
  store double %mul21, double* %arrayidx22, align 8
  %18 = load double*, double** %rdd.addr, align 8
  %arrayidx23 = getelementptr inbounds double, double* %18, i64 0
  %19 = load double, double* %arrayidx23, align 8
  %cmp = fcmp olt double %19, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load double*, double** %rdd.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %20, i64 0
  %21 = load double, double* %arrayidx24, align 8
  %add25 = fadd double %21, 2.400000e+01
  store double %add25, double* %arrayidx24, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load [3 x double]*, [3 x double]** %state.addr, align 8
  %arrayidx26 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0
  %arrayidx27 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx26, i64 0, i64 2
  %23 = load double, double* %arrayidx27, align 8
  %24 = load double*, double** %rdd.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %24, i64 2
  %25 = load double, double* %arrayidx28, align 8
  %div = fdiv double %23, %25
  %call29 = call double @asin(double %div) #5
  %mul30 = fmul double %call29, 0x404CA5DC1A63C1F8
  %26 = load double*, double** %rdd.addr, align 8
  %arrayidx31 = getelementptr inbounds double, double* %26, i64 1
  store double %mul30, double* %arrayidx31, align 8
  ret void
}

; Function Attrs: nounwind
declare double @asin(double) #1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca i32, align 4
  %jd = alloca [2 x double], align 16
  %pv = alloca [2 x [3 x double]], align 16
  %position = alloca [8 x [3 x double]], align 16
  %ga_testing = alloca i8, align 1
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
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #7
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
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc26, %if.end3
  %6 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %6, 20
  br i1 %cmp5, label %for.body6, label %for.end28

for.body6:                                        ; preds = %for.cond4
  %arrayidx7 = getelementptr inbounds [2 x double], [2 x double]* %jd, i64 0, i64 0
  store double 2.451545e+06, double* %arrayidx7, align 16
  %arrayidx8 = getelementptr inbounds [2 x double], [2 x double]* %jd, i64 0, i64 1
  store double 0.000000e+00, double* %arrayidx8, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc23, %for.body6
  %7 = load i32, i32* %n, align 4
  %cmp10 = icmp slt i32 %7, 36525
  br i1 %cmp10, label %for.body11, label %for.end25

for.body11:                                       ; preds = %for.cond9
  %arrayidx12 = getelementptr inbounds [2 x double], [2 x double]* %jd, i64 0, i64 0
  %8 = load double, double* %arrayidx12, align 16
  %add = fadd double %8, 1.000000e+00
  store double %add, double* %arrayidx12, align 16
  store i32 0, i32* %p, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc20, %for.body11
  %9 = load i32, i32* %p, align 4
  %cmp14 = icmp slt i32 %9, 8
  br i1 %cmp14, label %for.body15, label %for.end22

for.body15:                                       ; preds = %for.cond13
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %jd, i32 0, i32 0
  %10 = load i32, i32* %p, align 4
  %arraydecay16 = getelementptr inbounds [2 x [3 x double]], [2 x [3 x double]]* %pv, i32 0, i32 0
  call void @planetpv(double* %arraydecay, i32 %10, [3 x double]* %arraydecay16)
  %arraydecay17 = getelementptr inbounds [2 x [3 x double]], [2 x [3 x double]]* %pv, i32 0, i32 0
  %11 = load i32, i32* %p, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* %position, i64 0, i64 %idxprom
  %arraydecay19 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx18, i32 0, i32 0
  call void @radecdist([3 x double]* %arraydecay17, double* %arraydecay19)
  br label %for.inc20

for.inc20:                                        ; preds = %for.body15
  %12 = load i32, i32* %p, align 4
  %inc21 = add nsw i32 %12, 1
  store i32 %inc21, i32* %p, align 4
  br label %for.cond13

for.end22:                                        ; preds = %for.cond13
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %13 = load i32, i32* %n, align 4
  %inc24 = add nsw i32 %13, 1
  store i32 %inc24, i32* %n, align 4
  br label %for.cond9

for.end25:                                        ; preds = %for.cond9
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %14 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %14, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond4

for.end28:                                        ; preds = %for.cond4
  store i32 0, i32* %p, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc42, %for.end28
  %15 = load i32, i32* %p, align 4
  %cmp30 = icmp slt i32 %15, 8
  br i1 %cmp30, label %for.body31, label %for.end44

for.body31:                                       ; preds = %for.cond29
  %16 = load i32, i32* %p, align 4
  %idxprom32 = sext i32 %16 to i64
  %arrayidx33 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* %position, i64 0, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx33, i64 0, i64 0
  %17 = load double, double* %arrayidx34, align 8
  %18 = load i32, i32* %p, align 4
  %idxprom35 = sext i32 %18 to i64
  %arrayidx36 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* %position, i64 0, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx36, i64 0, i64 1
  %19 = load double, double* %arrayidx37, align 8
  %20 = load i32, i32* %p, align 4
  %idxprom38 = sext i32 %20 to i64
  %arrayidx39 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* %position, i64 0, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx39, i64 0, i64 2
  %21 = load double, double* %arrayidx40, align 8
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), double %17, double %19, double %21)
  br label %for.inc42

for.inc42:                                        ; preds = %for.body31
  %22 = load i32, i32* %p, align 4
  %inc43 = add nsw i32 %22, 1
  store i32 %inc43, i32* %p, align 4
  br label %for.cond29

for.end44:                                        ; preds = %for.cond29
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call45 = call i32 @fflush(%struct._IO_FILE* %23)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @printf(i8*, ...) #4

declare i32 @fflush(%struct._IO_FILE*) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
