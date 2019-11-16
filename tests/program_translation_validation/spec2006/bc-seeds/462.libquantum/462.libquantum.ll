; ModuleID = '462.libquantum/462.libquantum.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.quantum_reg_struct = type { i32, i32, i32, %struct.quantum_reg_node_struct*, i32* }
%struct.quantum_reg_node_struct = type { { float, float }, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.quantum_matrix_struct = type { i32, i32, { float, float }* }

@status = global i32 0, align 4
@lambda = global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [48 x i8] c"Not enough memory for %i-sized array of float!\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Error allocating %i-element int array!\0A\00", align 1
@.str.1.4 = private unnamed_addr constant [29 x i8] c"Matrix is not a 2x2 matrix!\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i-sized qubit!\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i bytes array!\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Matrix is not a 4x4 matrix!\0A\00", align 1
@quantum_gate_counter.counter = internal global i32 0, align 4
@quantum_memman.mem = internal global i64 0, align 8
@quantum_memman.max = internal global i64 0, align 8
@.str.14 = private unnamed_addr constant [35 x i8] c"Not enogh memory for %ix%i-Matrix!\00", align 1
@.str.1.19 = private unnamed_addr constant [10 x i8] c"% f %+fi\09\00", align 1
@.str.2.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i-sized qubit!\0A\00", align 1
@opstatus = global i32 0, align 4
@objcode = global i8* null, align 8
@position = global i64 0, align 8
@allocated = global i64 0, align 8
@globalfile = common global i8* null, align 8
@.str.27 = private unnamed_addr constant [43 x i8] c"Error allocating memory for objcode data!\0A\00", align 1
@.str.1.30 = private unnamed_addr constant [24 x i8] c"Unknown opcode 0x(%X)!\0A\00", align 1
@.str.2.31 = private unnamed_addr constant [45 x i8] c"Error reallocating memory for objcode data!\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.3.32 = private unnamed_addr constant [74 x i8] c"Object code generation not active! Forgot to call quantum_objcode_start?\0A\00", align 1
@.str.4.33 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"quantum_objcode_run: Could not open %s: \00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"%i: Unknown opcode 0x(%X)!\0A\00", align 1
@type = global i32 0, align 4
@width = global i32 0, align 4
@quantum_qec_counter.counter = internal global i32 0, align 4
@quantum_qec_counter.freq = internal global i32 1073741824, align 4
@.str.44 = private unnamed_addr constant [51 x i8] c"Error! Cannot convert a multi-column-matrix (%i)!\0A\00", align 1
@.str.1.45 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i-sized qubit!\0A\00", align 1
@.str.2.46 = private unnamed_addr constant [38 x i8] c"Not enough memory for %i-sized hash!\0A\00", align 1
@.str.3.49 = private unnamed_addr constant [9 x i8] c"QUOBFILE\00", align 1
@.str.4.55 = private unnamed_addr constant [23 x i8] c"% f %+fi|%lli> (%e) (|\00", align 1
@.str.5.56 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6.57 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.7.58 = private unnamed_addr constant [4 x i8] c">)\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%i: %lli\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"%i: %i %llu\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Not enough memory for %i-sized quantum register!\0A\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"Usage: shor [number]\0A\0A\00", align 1
@.str.1.65 = private unnamed_addr constant [17 x i8] c"Invalid number\0A\0A\00", align 1
@.str.2.66 = private unnamed_addr constant [28 x i8] c"N = %i, %i qubits required\0A\00", align 1
@.str.3.67 = private unnamed_addr constant [17 x i8] c"Random seed: %i\0A\00", align 1
@.str.4.68 = private unnamed_addr constant [25 x i8] c"Impossible Measurement!\0A\00", align 1
@.str.5.69 = private unnamed_addr constant [27 x i8] c"Measured zero, try again.\0A\00", align 1
@.str.6.70 = private unnamed_addr constant [19 x i8] c"Measured %i (%f), \00", align 1
@.str.7.71 = private unnamed_addr constant [36 x i8] c"fractional approximation is %i/%i.\0A\00", align 1
@.str.8.72 = private unnamed_addr constant [41 x i8] c"Odd denominator, trying to expand by 2.\0A\00", align 1
@.str.9.73 = private unnamed_addr constant [24 x i8] c"Odd period, try again.\0A\00", align 1
@.str.10.74 = private unnamed_addr constant [24 x i8] c"Possible period is %i.\0A\00", align 1
@.str.11.75 = private unnamed_addr constant [14 x i8] c"%i = %i * %i\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Unable to determine factors, try again.\0A\00", align 1
@seedi = internal global i32 0, align 4
@.str.80 = private unnamed_addr constant [6 x i8] c"0.2.4\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @quantum_ipow(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 1, i32* %r, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %a.addr, align 4
  %3 = load i32, i32* %r, align 4
  %mul = mul nsw i32 %3, %2
  store i32 %mul, i32* %r, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %r, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define i32 @quantum_gcd(i32 %u, i32 %v) #0 {
entry:
  %u.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %u, i32* %u.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %v.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %u.addr, align 4
  %2 = load i32, i32* %v.addr, align 4
  %rem = srem i32 %1, %2
  store i32 %rem, i32* %r, align 4
  %3 = load i32, i32* %v.addr, align 4
  store i32 %3, i32* %u.addr, align 4
  %4 = load i32, i32* %r, align 4
  store i32 %4, i32* %v.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %u.addr, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_frac_approx(i32* %a, i32* %b, i32 %width) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %width.addr = alloca i32, align 4
  %f = alloca float, align 4
  %g = alloca float, align 4
  %i = alloca i32, align 4
  %num2 = alloca i32, align 4
  %den2 = alloca i32, align 4
  %num1 = alloca i32, align 4
  %den1 = alloca i32, align 4
  %num = alloca i32, align 4
  %den = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32, i32* %0, align 4
  %conv = sitofp i32 %1 to float
  %2 = load i32*, i32** %b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %conv1 = sitofp i32 %3 to float
  %div = fdiv float %conv, %conv1
  store float %div, float* %f, align 4
  %4 = load float, float* %f, align 4
  store float %4, float* %g, align 4
  store i32 0, i32* %num2, align 4
  store i32 1, i32* %den2, align 4
  store i32 1, i32* %num1, align 4
  store i32 0, i32* %den1, align 4
  store i32 0, i32* %num, align 4
  store i32 0, i32* %den, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %5 = load float, float* %g, align 4
  %conv2 = fpext float %5 to double
  %add = fadd double %conv2, 5.000000e-06
  %conv3 = fptosi double %add to i32
  store i32 %conv3, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  %conv4 = sitofp i32 %6 to double
  %sub = fsub double %conv4, 5.000000e-06
  %7 = load float, float* %g, align 4
  %conv5 = fpext float %7 to double
  %sub6 = fsub double %conv5, %sub
  %conv7 = fptrunc double %sub6 to float
  store float %conv7, float* %g, align 4
  %8 = load float, float* %g, align 4
  %conv8 = fpext float %8 to double
  %div9 = fdiv double 1.000000e+00, %conv8
  %conv10 = fptrunc double %div9 to float
  store float %conv10, float* %g, align 4
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %den1, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i32, i32* %den2, align 4
  %add11 = add nsw i32 %mul, %11
  %12 = load i32, i32* %width.addr, align 4
  %shl = shl i32 1, %12
  %cmp = icmp sgt i32 %add11, %shl
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %do.end

if.end:                                           ; preds = %do.body
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %num1, align 4
  %mul13 = mul nsw i32 %13, %14
  %15 = load i32, i32* %num2, align 4
  %add14 = add nsw i32 %mul13, %15
  store i32 %add14, i32* %num, align 4
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %den1, align 4
  %mul15 = mul nsw i32 %16, %17
  %18 = load i32, i32* %den2, align 4
  %add16 = add nsw i32 %mul15, %18
  store i32 %add16, i32* %den, align 4
  %19 = load i32, i32* %num1, align 4
  store i32 %19, i32* %num2, align 4
  %20 = load i32, i32* %den1, align 4
  store i32 %20, i32* %den2, align 4
  %21 = load i32, i32* %num, align 4
  store i32 %21, i32* %num1, align 4
  %22 = load i32, i32* %den, align 4
  store i32 %22, i32* %den1, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %23 = load i32, i32* %num, align 4
  %conv17 = sitofp i32 %23 to float
  %24 = load i32, i32* %den, align 4
  %conv18 = sitofp i32 %24 to float
  %div19 = fdiv float %conv17, %conv18
  %25 = load float, float* %f, align 4
  %sub20 = fsub float %div19, %25
  %call = call float @fabsf(float %sub20) #8
  %conv21 = fpext float %call to double
  %26 = load i32, i32* %width.addr, align 4
  %shl22 = shl i32 1, %26
  %mul23 = mul nsw i32 2, %shl22
  %conv24 = sitofp i32 %mul23 to double
  %div25 = fdiv double 1.000000e+00, %conv24
  %cmp26 = fcmp ogt double %conv21, %div25
  br i1 %cmp26, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %27 = load i32, i32* %num, align 4
  %28 = load i32*, i32** %a.addr, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %den, align 4
  %30 = load i32*, i32** %b.addr, align 8
  store i32 %29, i32* %30, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare float @fabsf(float) #1

; Function Attrs: noinline nounwind uwtable
define i32 @quantum_getwidth(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %shl = shl i32 1, %0
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %shl, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define i32 @quantum_inverse_mod(i32 %n, i32 %c) #0 {
entry:
  %n.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %c.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %mul, %2
  %cmp = icmp ne i32 %rem, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define <2 x float> @quantum_conj(<2 x float> %a.coerce) #0 {
entry:
  %retval = alloca { float, float }, align 4
  %a = alloca { float, float }, align 4
  %r = alloca float, align 4
  %i = alloca float, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 4
  %a.realp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real = load float, float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag = load float, float* %a.imagp, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %a.real, float* %coerce.realp, align 4
  store float %a.imag, float* %coerce.imagp, align 4
  %1 = bitcast { float, float }* %coerce to <2 x float>*
  %2 = load <2 x float>, <2 x float>* %1, align 4
  %call = call float @quantum_real(<2 x float> %2)
  store float %call, float* %r, align 4
  %a.realp1 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real2 = load float, float* %a.realp1, align 4
  %a.imagp3 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag4 = load float, float* %a.imagp3, align 4
  %coerce5.realp = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 0
  %coerce5.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 1
  store float %a.real2, float* %coerce5.realp, align 4
  store float %a.imag4, float* %coerce5.imagp, align 4
  %3 = bitcast { float, float }* %coerce5 to <2 x float>*
  %4 = load <2 x float>, <2 x float>* %3, align 4
  %call6 = call float @quantum_imag(<2 x float> %4)
  store float %call6, float* %i, align 4
  %5 = load float, float* %r, align 4
  %6 = load float, float* %i, align 4
  %mul.rl = fmul float 0.000000e+00, %6
  %mul.il = fmul float 1.000000e+00, %6
  %sub.r = fsub float %5, %mul.rl
  %sub.i = fsub float -0.000000e+00, %mul.il
  %retval.realp = getelementptr inbounds { float, float }, { float, float }* %retval, i32 0, i32 0
  %retval.imagp = getelementptr inbounds { float, float }, { float, float }* %retval, i32 0, i32 1
  store float %sub.r, float* %retval.realp, align 4
  store float %sub.i, float* %retval.imagp, align 4
  %7 = bitcast { float, float }* %retval to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 4
  ret <2 x float> %8
}

; Function Attrs: noinline nounwind uwtable
define internal float @quantum_real(<2 x float> %a.coerce) #0 {
entry:
  %a = alloca { float, float }, align 4
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 4
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float*, float** %p, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 0
  %3 = load float, float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: noinline nounwind uwtable
define internal float @quantum_imag(<2 x float> %a.coerce) #0 {
entry:
  %a = alloca { float, float }, align 4
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 4
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float*, float** %p, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 1
  %3 = load float, float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: noinline nounwind uwtable
define float @quantum_prob(<2 x float> %a.coerce) #0 {
entry:
  %a = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 4
  %a.realp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real = load float, float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag = load float, float* %a.imagp, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %a.real, float* %coerce.realp, align 4
  store float %a.imag, float* %coerce.imagp, align 4
  %1 = bitcast { float, float }* %coerce to <2 x float>*
  %2 = load <2 x float>, <2 x float>* %1, align 4
  %call = call float @quantum_prob_inline(<2 x float> %2)
  ret float %call
}

; Function Attrs: noinline nounwind uwtable
define internal float @quantum_prob_inline(<2 x float> %a.coerce) #0 {
entry:
  %a = alloca { float, float }, align 4
  %r = alloca float, align 4
  %i = alloca float, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 4
  %a.realp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real = load float, float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag = load float, float* %a.imagp, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %a.real, float* %coerce.realp, align 4
  store float %a.imag, float* %coerce.imagp, align 4
  %1 = bitcast { float, float }* %coerce to <2 x float>*
  %2 = load <2 x float>, <2 x float>* %1, align 4
  %call = call float @quantum_real(<2 x float> %2)
  store float %call, float* %r, align 4
  %a.realp1 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real2 = load float, float* %a.realp1, align 4
  %a.imagp3 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag4 = load float, float* %a.imagp3, align 4
  %coerce5.realp = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 0
  %coerce5.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 1
  store float %a.real2, float* %coerce5.realp, align 4
  store float %a.imag4, float* %coerce5.imagp, align 4
  %3 = bitcast { float, float }* %coerce5 to <2 x float>*
  %4 = load <2 x float>, <2 x float>* %3, align 4
  %call6 = call float @quantum_imag(<2 x float> %4)
  store float %call6, float* %i, align 4
  %5 = load float, float* %r, align 4
  %6 = load float, float* %r, align 4
  %mul = fmul float %5, %6
  %7 = load float, float* %i, align 4
  %8 = load float, float* %i, align 4
  %mul7 = fmul float %7, %8
  %add = fadd float %mul, %mul7
  ret float %add
}

; Function Attrs: noinline nounwind uwtable
define <2 x float> @quantum_cexp(float %phi) #0 {
entry:
  %retval = alloca { float, float }, align 4
  %phi.addr = alloca float, align 4
  store float %phi, float* %phi.addr, align 4
  %0 = load float, float* %phi.addr, align 4
  %conv = fpext float %0 to double
  %call = call double @cos(double %conv) #5
  %1 = load float, float* %phi.addr, align 4
  %conv1 = fpext float %1 to double
  %call2 = call double @sin(double %conv1) #5
  %mul.rl = fmul double 0.000000e+00, %call2
  %mul.il = fmul double 1.000000e+00, %call2
  %add.r = fadd double %call, %mul.rl
  %conv3 = fptrunc double %add.r to float
  %conv4 = fptrunc double %mul.il to float
  %retval.realp = getelementptr inbounds { float, float }, { float, float }* %retval, i32 0, i32 0
  %retval.imagp = getelementptr inbounds { float, float }, { float, float }* %retval, i32 0, i32 1
  store float %conv3, float* %retval.realp, align 4
  store float %conv4, float* %retval.imagp, align 4
  %2 = bitcast { float, float }* %retval to <2 x float>*
  %3 = load <2 x float>, <2 x float>* %2, align 4
  ret <2 x float> %3
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: noinline nounwind uwtable
define float @quantum_get_decoherence() #0 {
entry:
  %0 = load float, float* @lambda, align 4
  ret float %0
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_set_decoherence(float %l) #0 {
entry:
  %l.addr = alloca float, align 4
  store float %l, float* %l.addr, align 4
  %0 = load float, float* %l.addr, align 4
  %tobool = fcmp une float %0, 0.000000e+00
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* @status, align 4
  %1 = load float, float* %l.addr, align 4
  store float %1, float* @lambda, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* @status, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_decohere(%struct.quantum_reg_struct* %reg) #0 {
entry:
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %u = alloca float, align 4
  %v = alloca float, align 4
  %s = alloca float, align 4
  %x = alloca float, align 4
  %nrands = alloca float*, align 8
  %angle = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %coerce66 = alloca { float, float }, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %call = call i32 @quantum_gate_counter(i32 1)
  %0 = load i32, i32* @status, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end77

if.then:                                          ; preds = %entry
  %1 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 8
  %conv = sext i32 %2 to i64
  %call1 = call noalias i8* @calloc(i64 %conv, i64 4) #5
  %3 = bitcast i8* %call1 to float*
  store float* %3, float** %nrands, align 8
  %4 = load float*, float** %nrands, align 8
  %tobool2 = icmp ne float* %4, null
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width4 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 0
  %6 = load i32, i32* %width4, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0), i32 %6)
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %if.then
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width6 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %7, i32 0, i32 0
  %8 = load i32, i32* %width6, align 8
  %conv7 = sext i32 %8 to i64
  %mul = mul i64 %conv7, 4
  %call8 = call i64 @quantum_memman(i64 %mul)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width9 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %10, i32 0, i32 0
  %11 = load i32, i32* %width9, align 8
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %call11 = call double (...) bitcast (double ()* @quantum_frand to double (...)*)()
  %mul12 = fmul double 2.000000e+00, %call11
  %sub = fsub double %mul12, 1.000000e+00
  %conv13 = fptrunc double %sub to float
  store float %conv13, float* %u, align 4
  %call14 = call double (...) bitcast (double ()* @quantum_frand to double (...)*)()
  %mul15 = fmul double 2.000000e+00, %call14
  %sub16 = fsub double %mul15, 1.000000e+00
  %conv17 = fptrunc double %sub16 to float
  store float %conv17, float* %v, align 4
  %12 = load float, float* %u, align 4
  %13 = load float, float* %u, align 4
  %mul18 = fmul float %12, %13
  %14 = load float, float* %v, align 4
  %15 = load float, float* %v, align 4
  %mul19 = fmul float %14, %15
  %add = fadd float %mul18, %mul19
  store float %add, float* %s, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %16 = load float, float* %s, align 4
  %cmp20 = fcmp oge float %16, 1.000000e+00
  br i1 %cmp20, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load float, float* %u, align 4
  %conv22 = fpext float %17 to double
  %18 = load float, float* %s, align 4
  %conv23 = fpext float %18 to double
  %call24 = call double @log(double %conv23) #5
  %mul25 = fmul double -2.000000e+00, %call24
  %19 = load float, float* %s, align 4
  %conv26 = fpext float %19 to double
  %div = fdiv double %mul25, %conv26
  %call27 = call double @sqrt(double %div) #5
  %mul28 = fmul double %conv22, %call27
  %conv29 = fptrunc double %mul28 to float
  store float %conv29, float* %x, align 4
  %20 = load float, float* @lambda, align 4
  %mul30 = fmul float 2.000000e+00, %20
  %conv31 = fpext float %mul30 to double
  %call32 = call double @sqrt(double %conv31) #5
  %21 = load float, float* %x, align 4
  %conv33 = fpext float %21 to double
  %mul34 = fmul double %conv33, %call32
  %conv35 = fptrunc double %mul34 to float
  store float %conv35, float* %x, align 4
  %22 = load float, float* %x, align 4
  %div36 = fdiv float %22, 2.000000e+00
  %23 = load float*, float** %nrands, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds float, float* %23, i64 %idxprom
  store float %div36, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc69, %for.end
  %26 = load i32, i32* %i, align 4
  %27 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %27, i32 0, i32 1
  %28 = load i32, i32* %size, align 4
  %cmp38 = icmp slt i32 %26, %28
  br i1 %cmp38, label %for.body40, label %for.end71

for.body40:                                       ; preds = %for.cond37
  store float 0.000000e+00, float* %angle, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc57, %for.body40
  %29 = load i32, i32* %j, align 4
  %30 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width42 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %30, i32 0, i32 0
  %31 = load i32, i32* %width42, align 8
  %cmp43 = icmp slt i32 %29, %31
  br i1 %cmp43, label %for.body45, label %for.end59

for.body45:                                       ; preds = %for.cond41
  %32 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %32, i32 0, i32 3
  %33 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %34 to i64
  %arrayidx47 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %33, i64 %idxprom46
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx47, i32 0, i32 1
  %35 = load i64, i64* %state, align 8
  %36 = load i32, i32* %j, align 4
  %sh_prom = zext i32 %36 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %35, %shl
  %tobool48 = icmp ne i64 %and, 0
  br i1 %tobool48, label %if.then49, label %if.else

if.then49:                                        ; preds = %for.body45
  %37 = load float*, float** %nrands, align 8
  %38 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %38 to i64
  %arrayidx51 = getelementptr inbounds float, float* %37, i64 %idxprom50
  %39 = load float, float* %arrayidx51, align 4
  %40 = load float, float* %angle, align 4
  %add52 = fadd float %40, %39
  store float %add52, float* %angle, align 4
  br label %if.end56

if.else:                                          ; preds = %for.body45
  %41 = load float*, float** %nrands, align 8
  %42 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %42 to i64
  %arrayidx54 = getelementptr inbounds float, float* %41, i64 %idxprom53
  %43 = load float, float* %arrayidx54, align 4
  %44 = load float, float* %angle, align 4
  %sub55 = fsub float %44, %43
  store float %sub55, float* %angle, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then49
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %45 = load i32, i32* %j, align 4
  %inc58 = add nsw i32 %45, 1
  store i32 %inc58, i32* %j, align 4
  br label %for.cond41

for.end59:                                        ; preds = %for.cond41
  %46 = load float, float* %angle, align 4
  %call60 = call <2 x float> @quantum_cexp(float %46)
  %47 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call60, <2 x float>* %47, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  %48 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node61 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %48, i32 0, i32 3
  %49 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node61, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %50 to i64
  %arrayidx63 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %49, i64 %idxprom62
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx63, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 8
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, %coerce.real
  %mul_bd = fmul float %amplitude.imag, %coerce.imag
  %mul_ad = fmul float %amplitude.real, %coerce.imag
  %mul_bc = fmul float %amplitude.imag, %coerce.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %for.end59
  %isnan_cmp64 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp64, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call65 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float %coerce.real, float %coerce.imag) #5
  %51 = bitcast { float, float }* %coerce66 to <2 x float>*
  store <2 x float> %call65, <2 x float>* %51, align 4
  %coerce66.realp = getelementptr inbounds { float, float }, { float, float }* %coerce66, i32 0, i32 0
  %coerce66.real = load float, float* %coerce66.realp, align 4
  %coerce66.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce66, i32 0, i32 1
  %coerce66.imag = load float, float* %coerce66.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.end59
  %real_mul_phi = phi float [ %mul_r, %for.end59 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce66.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %for.end59 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce66.imag, %complex_mul_libcall ]
  %amplitude.realp67 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.imagp68 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %amplitude.realp67, align 8
  store float %imag_mul_phi, float* %amplitude.imagp68, align 4
  br label %for.inc69

for.inc69:                                        ; preds = %complex_mul_cont
  %52 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %52, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond37

for.end71:                                        ; preds = %for.cond37
  %53 = load float*, float** %nrands, align 8
  %54 = bitcast float* %53 to i8*
  call void @free(i8* %54) #5
  %55 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width72 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %55, i32 0, i32 0
  %56 = load i32, i32* %width72, align 8
  %sub73 = sub nsw i32 0, %56
  %conv74 = sext i32 %sub73 to i64
  %mul75 = mul i64 %conv74, 4
  %call76 = call i64 @quantum_memman(i64 %mul75)
  br label %if.end77

if.end77:                                         ; preds = %for.end71, %entry
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare <2 x float> @__mulsc3(float, float, float, float)

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define void @quantum_exp_mod_n(i32 %N, i32 %x, i32 %width_input, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %width_input.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %width_input, i32* %width_input.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 2
  %1 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add, %struct.quantum_reg_struct* %1)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %width_input.addr, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %N.addr, align 4
  %rem = srem i32 %4, %5
  store i32 %rem, i32* %f, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %8 = load i32, i32* %f, align 4
  %9 = load i32, i32* %f, align 4
  %mul4 = mul nsw i32 %9, %8
  store i32 %mul4, i32* %f, align 4
  %10 = load i32, i32* %f, align 4
  %11 = load i32, i32* %N.addr, align 4
  %rem5 = srem i32 %10, %11
  store i32 %rem5, i32* %f, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %13 = load i32, i32* %N.addr, align 4
  %14 = load i32, i32* %f, align 4
  %15 = load i32, i32* %width.addr, align 4
  %mul6 = mul nsw i32 3, %15
  %add7 = add nsw i32 %mul6, 1
  %16 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %add7, %16
  %17 = load i32, i32* %width.addr, align 4
  %18 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @mul_mod_n(i32 %13, i32 %14, i32 %add8, i32 %17, %struct.quantum_reg_struct* %18)
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %19, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end11:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_cnot(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %qec = alloca i32, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_get_status(i32* %qec, i32* null)
  %0 = load i32, i32* %qec, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %control.addr, align 4
  %2 = load i32, i32* %target.addr, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot_ft(i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  br label %if.end12

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %control.addr, align 4
  %5 = load i32, i32* %target.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 1, i32 %4, i32 %5)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  br label %if.end12

if.end:                                           ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %7, i32 0, i32 1
  %8 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %10, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %12 = load i64, i64* %state, align 8
  %13 = load i32, i32* %control.addr, align 4
  %sh_prom = zext i32 %13 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %12, %shl
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.then4, label %if.end11

if.then4:                                         ; preds = %for.body
  %14 = load i32, i32* %target.addr, align 4
  %sh_prom5 = zext i32 %14 to i64
  %shl6 = shl i64 1, %sh_prom5
  %15 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node7 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %15, i32 0, i32 3
  %16 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node7, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %16, i64 %idxprom8
  %state10 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx9, i32 0, i32 1
  %18 = load i64, i64* %state10, align 8
  %xor = xor i64 %18, %shl6
  store i64 %xor, i64* %state10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %20)
  br label %if.end12

if.end12:                                         ; preds = %if.then2, %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_toffoli(i32 %control1, i32 %control2, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control1.addr = alloca i32, align 4
  %control2.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %qec = alloca i32, align 4
  store i32 %control1, i32* %control1.addr, align 4
  store i32 %control2, i32* %control2.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_get_status(i32* %qec, i32* null)
  %0 = load i32, i32* %qec, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %control1.addr, align 4
  %2 = load i32, i32* %control2.addr, align 4
  %3 = load i32, i32* %target.addr, align 4
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli_ft(i32 %1, i32 %2, i32 %3, %struct.quantum_reg_struct* %4)
  br label %if.end22

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %control1.addr, align 4
  %6 = load i32, i32* %control2.addr, align 4
  %7 = load i32, i32* %target.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 2, i32 %5, i32 %6, i32 %7)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  br label %if.end22

if.end:                                           ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 1
  %10 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %11, i32 0, i32 3
  %12 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %12, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %14 = load i64, i64* %state, align 8
  %15 = load i32, i32* %control1.addr, align 4
  %sh_prom = zext i32 %15 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %14, %shl
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.then4, label %if.end21

if.then4:                                         ; preds = %for.body
  %16 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node5 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %16, i32 0, i32 3
  %17 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node5, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %18 to i64
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %17, i64 %idxprom6
  %state8 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 1
  %19 = load i64, i64* %state8, align 8
  %20 = load i32, i32* %control2.addr, align 4
  %sh_prom9 = zext i32 %20 to i64
  %shl10 = shl i64 1, %sh_prom9
  %and11 = and i64 %19, %shl10
  %tobool12 = icmp ne i64 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.then4
  %21 = load i32, i32* %target.addr, align 4
  %sh_prom14 = zext i32 %21 to i64
  %shl15 = shl i64 1, %sh_prom14
  %22 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node16 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %22, i32 0, i32 3
  %23 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node16, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %23, i64 %idxprom17
  %state19 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx18, i32 0, i32 1
  %25 = load i64, i64* %state19, align 8
  %xor = xor i64 %25, %shl15
  store i64 %xor, i64* %state19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.then4
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %27)
  br label %if.end22

if.end22:                                         ; preds = %if.then2, %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_unbounded_toffoli(i32 %controlling, %struct.quantum_reg_struct* %reg, ...) #0 {
entry:
  %controlling.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %bits = alloca [1 x %struct.__va_list_tag], align 16
  %target = alloca i32, align 4
  %controls = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %controlling, i32* %controlling.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %controlling.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #5
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %controls, align 8
  %2 = load i32*, i32** %controls, align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %controlling.addr, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i32 %3)
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %controlling.addr, align 4
  %conv2 = sext i32 %4 to i64
  %mul3 = mul i64 %conv2, 4
  %call4 = call i64 @quantum_memman(i64 %mul3)
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %bits, i32 0, i32 0
  %arraydecay5 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay5)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %controlling.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %bits, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 3
  %reg_save_area = load i8*, i8** %7, align 16
  %8 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %9 = bitcast i8* %8 to i32*
  %10 = add i32 %gp_offset, 8
  store i32 %10, i32* %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay7, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %11 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %9, %vaarg.in_reg ], [ %11, %vaarg.in_mem ]
  %12 = load i32, i32* %vaarg.addr, align 4
  %13 = load i32*, i32** %controls, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  store i32 %12, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %bits, i32 0, i32 0
  %gp_offset_p9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay8, i32 0, i32 0
  %gp_offset10 = load i32, i32* %gp_offset_p9, align 16
  %fits_in_gp11 = icmp ule i32 %gp_offset10, 40
  br i1 %fits_in_gp11, label %vaarg.in_reg12, label %vaarg.in_mem14

vaarg.in_reg12:                                   ; preds = %for.end
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay8, i32 0, i32 3
  %reg_save_area13 = load i8*, i8** %16, align 16
  %17 = getelementptr i8, i8* %reg_save_area13, i32 %gp_offset10
  %18 = bitcast i8* %17 to i32*
  %19 = add i32 %gp_offset10, 8
  store i32 %19, i32* %gp_offset_p9, align 16
  br label %vaarg.end18

vaarg.in_mem14:                                   ; preds = %for.end
  %overflow_arg_area_p15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay8, i32 0, i32 2
  %overflow_arg_area16 = load i8*, i8** %overflow_arg_area_p15, align 8
  %20 = bitcast i8* %overflow_arg_area16 to i32*
  %overflow_arg_area.next17 = getelementptr i8, i8* %overflow_arg_area16, i32 8
  store i8* %overflow_arg_area.next17, i8** %overflow_arg_area_p15, align 8
  br label %vaarg.end18

vaarg.end18:                                      ; preds = %vaarg.in_mem14, %vaarg.in_reg12
  %vaarg.addr19 = phi i32* [ %18, %vaarg.in_reg12 ], [ %20, %vaarg.in_mem14 ]
  %21 = load i32, i32* %vaarg.addr19, align 4
  store i32 %21, i32* %target, align 4
  %arraydecay20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %bits, i32 0, i32 0
  %arraydecay2021 = bitcast %struct.__va_list_tag* %arraydecay20 to i8*
  call void @llvm.va_end(i8* %arraydecay2021)
  store i32 0, i32* %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc48, %vaarg.end18
  %22 = load i32, i32* %i, align 4
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %23, i32 0, i32 1
  %24 = load i32, i32* %size, align 4
  %cmp23 = icmp slt i32 %22, %24
  br i1 %cmp23, label %for.body25, label %for.end50

for.body25:                                       ; preds = %for.cond22
  store i32 0, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc35, %for.body25
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %controlling.addr, align 4
  %cmp27 = icmp slt i32 %25, %26
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond26
  %27 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %27, i32 0, i32 3
  %28 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %29 to i64
  %arrayidx30 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %28, i64 %idxprom29
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx30, i32 0, i32 1
  %30 = load i64, i64* %state, align 8
  %31 = load i32*, i32** %controls, align 8
  %32 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %32 to i64
  %arrayidx32 = getelementptr inbounds i32, i32* %31, i64 %idxprom31
  %33 = load i32, i32* %arrayidx32, align 4
  %sh_prom = zext i32 %33 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %30, %shl
  %tobool33 = icmp ne i64 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond26
  %34 = phi i1 [ false, %for.cond26 ], [ %tobool33, %land.rhs ]
  br i1 %34, label %for.body34, label %for.end37

for.body34:                                       ; preds = %land.end
  br label %for.inc35

for.inc35:                                        ; preds = %for.body34
  %35 = load i32, i32* %j, align 4
  %inc36 = add nsw i32 %35, 1
  store i32 %inc36, i32* %j, align 4
  br label %for.cond26

for.end37:                                        ; preds = %land.end
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %controlling.addr, align 4
  %cmp38 = icmp eq i32 %36, %37
  br i1 %cmp38, label %if.then40, label %if.end47

if.then40:                                        ; preds = %for.end37
  %38 = load i32, i32* %target, align 4
  %sh_prom41 = zext i32 %38 to i64
  %shl42 = shl i64 1, %sh_prom41
  %39 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node43 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %39, i32 0, i32 3
  %40 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node43, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %41 to i64
  %arrayidx45 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %40, i64 %idxprom44
  %state46 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx45, i32 0, i32 1
  %42 = load i64, i64* %state46, align 8
  %xor = xor i64 %42, %shl42
  store i64 %xor, i64* %state46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then40, %for.end37
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %43 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %43, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond22

for.end50:                                        ; preds = %for.cond22
  %44 = load i32*, i32** %controls, align 8
  %45 = bitcast i32* %44 to i8*
  call void @free(i8* %45) #5
  %46 = load i32, i32* %controlling.addr, align 4
  %sub = sub nsw i32 0, %46
  %conv51 = sext i32 %sub to i64
  %mul52 = mul i64 %conv51, 4
  %call53 = call i64 @quantum_memman(i64 %mul52)
  %47 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %47)
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noinline nounwind uwtable
define void @quantum_sigma_x(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %qec = alloca i32, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_get_status(i32* %qec, i32* null)
  %0 = load i32, i32* %qec, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %target.addr, align 4
  %2 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x_ft(i32 %1, %struct.quantum_reg_struct* %2)
  br label %if.end3

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %target.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 3, i32 %3)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  br label %if.end3

if.end:                                           ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %target.addr, align 4
  %sh_prom = zext i32 %7 to i64
  %shl = shl i64 1, %sh_prom
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %8, i32 0, i32 3
  %9 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %9, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %11 = load i64, i64* %state, align 8
  %xor = xor i64 %11, %shl
  store i64 %xor, i64* %state, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %13)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_sigma_y(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %coerce31 = alloca { float, float }, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 4, i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %target.addr, align 4
  %sh_prom = zext i32 %4 to i64
  %shl = shl i64 1, %sh_prom
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 3
  %6 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %6, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %8 = load i64, i64* %state, align 8
  %xor = xor i64 %8, %shl
  store i64 %xor, i64* %state, align 8
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node1, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %10, i64 %idxprom2
  %state4 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx3, i32 0, i32 1
  %12 = load i64, i64* %state4, align 8
  %13 = load i32, i32* %target.addr, align 4
  %sh_prom5 = zext i32 %13 to i64
  %shl6 = shl i64 1, %sh_prom5
  %and = and i64 %12, %shl6
  %tobool7 = icmp ne i64 %and, 0
  br i1 %tobool7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  %14 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node9 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %14, i32 0, i32 3
  %15 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node9, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %15, i64 %idxprom10
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx11, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 8
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, 0.000000e+00
  %mul_bd = fmul float %amplitude.imag, 1.000000e+00
  %mul_ad = fmul float %amplitude.real, 1.000000e+00
  %mul_bc = fmul float %amplitude.imag, 0.000000e+00
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then8
  %isnan_cmp12 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp12, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call13 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float 0.000000e+00, float 1.000000e+00) #5
  %17 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call13, <2 x float>* %17, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then8
  %real_mul_phi = phi float [ %mul_r, %if.then8 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then8 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce.imag, %complex_mul_libcall ]
  %amplitude.realp14 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.imagp15 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %amplitude.realp14, align 8
  store float %imag_mul_phi, float* %amplitude.imagp15, align 4
  br label %if.end37

if.else:                                          ; preds = %for.body
  %18 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node16 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %18, i32 0, i32 3
  %19 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node16, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %19, i64 %idxprom17
  %amplitude19 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx18, i32 0, i32 0
  %amplitude19.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude19, i32 0, i32 0
  %amplitude19.real = load float, float* %amplitude19.realp, align 8
  %amplitude19.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude19, i32 0, i32 1
  %amplitude19.imag = load float, float* %amplitude19.imagp, align 4
  %mul_ac20 = fmul float %amplitude19.real, -0.000000e+00
  %mul_bd21 = fmul float %amplitude19.imag, -1.000000e+00
  %mul_ad22 = fmul float %amplitude19.real, -1.000000e+00
  %mul_bc23 = fmul float %amplitude19.imag, -0.000000e+00
  %mul_r24 = fsub float %mul_ac20, %mul_bd21
  %mul_i25 = fadd float %mul_ad22, %mul_bc23
  %isnan_cmp26 = fcmp uno float %mul_r24, %mul_r24
  br i1 %isnan_cmp26, label %complex_mul_imag_nan27, label %complex_mul_cont32, !prof !1

complex_mul_imag_nan27:                           ; preds = %if.else
  %isnan_cmp28 = fcmp uno float %mul_i25, %mul_i25
  br i1 %isnan_cmp28, label %complex_mul_libcall29, label %complex_mul_cont32, !prof !1

complex_mul_libcall29:                            ; preds = %complex_mul_imag_nan27
  %call30 = call <2 x float> @__mulsc3(float %amplitude19.real, float %amplitude19.imag, float -0.000000e+00, float -1.000000e+00) #5
  %21 = bitcast { float, float }* %coerce31 to <2 x float>*
  store <2 x float> %call30, <2 x float>* %21, align 4
  %coerce31.realp = getelementptr inbounds { float, float }, { float, float }* %coerce31, i32 0, i32 0
  %coerce31.real = load float, float* %coerce31.realp, align 4
  %coerce31.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce31, i32 0, i32 1
  %coerce31.imag = load float, float* %coerce31.imagp, align 4
  br label %complex_mul_cont32

complex_mul_cont32:                               ; preds = %complex_mul_libcall29, %complex_mul_imag_nan27, %if.else
  %real_mul_phi33 = phi float [ %mul_r24, %if.else ], [ %mul_r24, %complex_mul_imag_nan27 ], [ %coerce31.real, %complex_mul_libcall29 ]
  %imag_mul_phi34 = phi float [ %mul_i25, %if.else ], [ %mul_i25, %complex_mul_imag_nan27 ], [ %coerce31.imag, %complex_mul_libcall29 ]
  %amplitude19.realp35 = getelementptr inbounds { float, float }, { float, float }* %amplitude19, i32 0, i32 0
  %amplitude19.imagp36 = getelementptr inbounds { float, float }, { float, float }* %amplitude19, i32 0, i32 1
  store float %real_mul_phi33, float* %amplitude19.realp35, align 8
  store float %imag_mul_phi34, float* %amplitude19.imagp36, align 4
  br label %if.end37

if.end37:                                         ; preds = %complex_mul_cont32, %complex_mul_cont
  br label %for.inc

for.inc:                                          ; preds = %if.end37
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %23)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_sigma_z(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 5, i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %4, i32 0, i32 3
  %5 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %5, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %7 = load i64, i64* %state, align 8
  %8 = load i32, i32* %target.addr, align 4
  %sh_prom = zext i32 %8 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %7, %shl
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %for.body
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node3 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node3, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %10, i64 %idxprom4
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 8
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, -1.000000e+00
  %mul_bd = fmul float %amplitude.imag, 0.000000e+00
  %mul_ad = fmul float %amplitude.real, 0.000000e+00
  %mul_bc = fmul float %amplitude.imag, -1.000000e+00
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then2
  %isnan_cmp6 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp6, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call7 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float -1.000000e+00, float 0.000000e+00) #5
  %12 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call7, <2 x float>* %12, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then2
  %real_mul_phi = phi float [ %mul_r, %if.then2 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then2 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce.imag, %complex_mul_libcall ]
  %amplitude.realp8 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.imagp9 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %amplitude.realp8, align 8
  store float %imag_mul_phi, float* %amplitude.imagp9, align 4
  br label %if.end10

if.end10:                                         ; preds = %complex_mul_cont, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %14)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_swaptheleads(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pat1 = alloca i32, align 4
  %pat2 = alloca i32, align 4
  %qec = alloca i32, align 4
  %l = alloca i64, align 8
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_get_status(i32* %qec, i32* null)
  %0 = load i32, i32* %qec, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %width.addr, align 4
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, %5
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %3, i32 %add, %struct.quantum_reg_struct* %6)
  %7 = load i32, i32* %width.addr, align 4
  %8 = load i32, i32* %i, align 4
  %add1 = add nsw i32 %7, %8
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add1, i32 %9, %struct.quantum_reg_struct* %10)
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %width.addr, align 4
  %13 = load i32, i32* %i, align 4
  %add2 = add nsw i32 %12, %13
  %14 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %11, i32 %add2, %struct.quantum_reg_struct* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end43

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc40, %if.else
  %16 = load i32, i32* %i, align 4
  %17 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %17, i32 0, i32 1
  %18 = load i32, i32* %size, align 4
  %cmp4 = icmp slt i32 %16, %18
  br i1 %cmp4, label %for.body5, label %for.end42

for.body5:                                        ; preds = %for.cond3
  %19 = load i32, i32* %width.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 14, i32 %19)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %for.body5
  br label %if.end43

if.end:                                           ; preds = %for.body5
  %20 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %20, i32 0, i32 3
  %21 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %21, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %23 = load i64, i64* %state, align 8
  %24 = load i32, i32* %width.addr, align 4
  %sh_prom = zext i32 %24 to i64
  %shl = shl i64 1, %sh_prom
  %rem = urem i64 %23, %shl
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %pat1, align 4
  store i32 0, i32* %pat2, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc22, %if.end
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %width.addr, align 4
  %cmp9 = icmp slt i32 %25, %26
  br i1 %cmp9, label %for.body11, label %for.end24

for.body11:                                       ; preds = %for.cond8
  %27 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node12 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %27, i32 0, i32 3
  %28 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node12, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %29 to i64
  %arrayidx14 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %28, i64 %idxprom13
  %state15 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx14, i32 0, i32 1
  %30 = load i64, i64* %state15, align 8
  %31 = load i32, i32* %width.addr, align 4
  %32 = load i32, i32* %j, align 4
  %add16 = add nsw i32 %31, %32
  %sh_prom17 = zext i32 %add16 to i64
  %shl18 = shl i64 1, %sh_prom17
  %and = and i64 %30, %shl18
  %33 = load i32, i32* %pat2, align 4
  %conv19 = sext i32 %33 to i64
  %add20 = add i64 %conv19, %and
  %conv21 = trunc i64 %add20 to i32
  store i32 %conv21, i32* %pat2, align 4
  br label %for.inc22

for.inc22:                                        ; preds = %for.body11
  %34 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %34, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond8

for.end24:                                        ; preds = %for.cond8
  %35 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node25 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %35, i32 0, i32 3
  %36 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node25, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %37 to i64
  %arrayidx27 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %36, i64 %idxprom26
  %state28 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx27, i32 0, i32 1
  %38 = load i64, i64* %state28, align 8
  %39 = load i32, i32* %pat1, align 4
  %40 = load i32, i32* %pat2, align 4
  %add29 = add nsw i32 %39, %40
  %conv30 = sext i32 %add29 to i64
  %sub = sub i64 %38, %conv30
  store i64 %sub, i64* %l, align 8
  %41 = load i32, i32* %pat1, align 4
  %42 = load i32, i32* %width.addr, align 4
  %shl31 = shl i32 %41, %42
  %conv32 = sext i32 %shl31 to i64
  %43 = load i64, i64* %l, align 8
  %add33 = add i64 %43, %conv32
  store i64 %add33, i64* %l, align 8
  %44 = load i32, i32* %pat2, align 4
  %45 = load i32, i32* %width.addr, align 4
  %shr = ashr i32 %44, %45
  %conv34 = sext i32 %shr to i64
  %46 = load i64, i64* %l, align 8
  %add35 = add i64 %46, %conv34
  store i64 %add35, i64* %l, align 8
  %47 = load i64, i64* %l, align 8
  %48 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node36 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %48, i32 0, i32 3
  %49 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node36, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %50 to i64
  %arrayidx38 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %49, i64 %idxprom37
  %state39 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx38, i32 0, i32 1
  store i64 %47, i64* %state39, align 8
  br label %for.inc40

for.inc40:                                        ; preds = %for.end24
  %51 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %51, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond3

for.end42:                                        ; preds = %for.cond3
  br label %if.end43

if.end43:                                         ; preds = %if.then7, %for.end42, %for.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_swaptheleads_omuln_controlled(i32 %control, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %control.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %3, %4
  %5 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 2, %5
  %6 = load i32, i32* %i, align 4
  %add1 = add nsw i32 %mul, %6
  %add2 = add nsw i32 %add1, 2
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %2, i32 %add, i32 %add2, %struct.quantum_reg_struct* %7)
  %8 = load i32, i32* %control.addr, align 4
  %9 = load i32, i32* %width.addr, align 4
  %mul3 = mul nsw i32 2, %9
  %10 = load i32, i32* %i, align 4
  %add4 = add nsw i32 %mul3, %10
  %add5 = add nsw i32 %add4, 2
  %11 = load i32, i32* %width.addr, align 4
  %12 = load i32, i32* %i, align 4
  %add6 = add nsw i32 %11, %12
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %8, i32 %add5, i32 %add6, %struct.quantum_reg_struct* %13)
  %14 = load i32, i32* %control.addr, align 4
  %15 = load i32, i32* %width.addr, align 4
  %16 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %15, %16
  %17 = load i32, i32* %width.addr, align 4
  %mul8 = mul nsw i32 2, %17
  %18 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %mul8, %18
  %add10 = add nsw i32 %add9, 2
  %19 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %14, i32 %add7, i32 %add10, %struct.quantum_reg_struct* %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_gate1(i32 %target, i64 %m.coerce0, { float, float }* %m.coerce1, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %m = alloca %struct.quantum_matrix_struct, align 8
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %iset = alloca i32, align 4
  %addsize = alloca i32, align 4
  %decsize = alloca i32, align 4
  %t = alloca { float, float }, align 4
  %tnot = alloca { float, float }, align 4
  %limit = alloca float, align 4
  %done = alloca i8*, align 8
  %coerce = alloca { float, float }, align 4
  %coerce39 = alloca { float, float }, align 4
  %coerce166 = alloca { float, float }, align 4
  %coerce182 = alloca { float, float }, align 4
  %coerce207 = alloca { float, float }, align 4
  %coerce228 = alloca { float, float }, align 4
  %coerce261 = alloca { float, float }, align 4
  %coerce282 = alloca { float, float }, align 4
  %coerce310 = alloca { float, float }, align 4
  %coerce331 = alloca { float, float }, align 4
  %coerce345 = alloca { float, float }, align 4
  %coerce356 = alloca { float, float }, align 4
  %coerce395 = alloca { float, float }, align 4
  %coerce421 = alloca { float, float }, align 4
  %coerce457 = alloca { float, float }, align 4
  %0 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %1 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %0, i32 0, i32 0
  store i64 %m.coerce0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %0, i32 0, i32 1
  store { float, float }* %m.coerce1, { float, float }** %2, align 8
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %addsize, align 4
  store i32 0, i32* %decsize, align 4
  %tnot.realp = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.imagp = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  store float 0.000000e+00, float* %tnot.realp, align 4
  store float 0.000000e+00, float* %tnot.imagp, align 4
  %cols = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 1
  %3 = load i32, i32* %cols, align 4
  %cmp = icmp ne i32 %3, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %rows = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 0
  %4 = load i32, i32* %rows, align 8
  %cmp1 = icmp ne i32 %4, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.4, i32 0, i32 0))
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 2
  %7 = load i32, i32* %hashw, align 8
  %shl = shl i32 1, %7
  %cmp2 = icmp slt i32 %5, %shl
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %8, i32 0, i32 4
  %9 = load i32*, i32** %hash, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc8, %for.end
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %size, align 4
  %cmp4 = icmp slt i32 %12, %14
  br i1 %cmp4, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond3
  %15 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %15, i32 0, i32 3
  %16 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %17 to i64
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %16, i64 %idxprom6
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 1
  %18 = load i64, i64* %state, align 8
  %19 = load i32, i32* %i, align 4
  %20 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_add_hash(i64 %18, i32 %19, %struct.quantum_reg_struct* %20)
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %21 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %21, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond3

for.end10:                                        ; preds = %for.cond3
  store i32 0, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc57, %for.end10
  %22 = load i32, i32* %i, align 4
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size12 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %23, i32 0, i32 1
  %24 = load i32, i32* %size12, align 4
  %cmp13 = icmp slt i32 %22, %24
  br i1 %cmp13, label %for.body14, label %for.end59

for.body14:                                       ; preds = %for.cond11
  %25 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node15 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %25, i32 0, i32 3
  %26 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node15, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %27 to i64
  %arrayidx17 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %26, i64 %idxprom16
  %state18 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx17, i32 0, i32 1
  %28 = load i64, i64* %state18, align 8
  %29 = load i32, i32* %target.addr, align 4
  %sh_prom = zext i32 %29 to i64
  %shl19 = shl i64 1, %sh_prom
  %xor = xor i64 %28, %shl19
  %30 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call20 = call i32 @quantum_get_state(i64 %xor, %struct.quantum_reg_struct* byval align 8 %30)
  store i32 %call20, i32* %j, align 4
  %31 = load i32, i32* %j, align 4
  %cmp21 = icmp eq i32 %31, -1
  br i1 %cmp21, label %if.then22, label %if.end56

if.then22:                                        ; preds = %for.body14
  %t23 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %32 = load { float, float }*, { float, float }** %t23, align 8
  %arrayidx24 = getelementptr inbounds { float, float }, { float, float }* %32, i64 1
  %arrayidx24.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx24, i32 0, i32 0
  %arrayidx24.real = load float, float* %arrayidx24.realp, align 4
  %arrayidx24.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx24, i32 0, i32 1
  %arrayidx24.imag = load float, float* %arrayidx24.imagp, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %arrayidx24.real, float* %coerce.realp, align 4
  store float %arrayidx24.imag, float* %coerce.imagp, align 4
  %33 = bitcast { float, float }* %coerce to <2 x float>*
  %34 = load <2 x float>, <2 x float>* %33, align 4
  %call25 = call float @quantum_prob_inline.5(<2 x float> %34)
  %conv = fpext float %call25 to double
  %cmp26 = fcmp ogt double %conv, 1.000000e-09
  br i1 %cmp26, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %if.then22
  %35 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node28 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %35, i32 0, i32 3
  %36 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node28, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %37 to i64
  %arrayidx30 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %36, i64 %idxprom29
  %state31 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx30, i32 0, i32 1
  %38 = load i64, i64* %state31, align 8
  %39 = load i32, i32* %target.addr, align 4
  %sh_prom32 = zext i32 %39 to i64
  %shl33 = shl i64 1, %sh_prom32
  %and = and i64 %38, %shl33
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then34, label %if.end36

if.then34:                                        ; preds = %land.lhs.true
  %40 = load i32, i32* %addsize, align 4
  %inc35 = add nsw i32 %40, 1
  store i32 %inc35, i32* %addsize, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %land.lhs.true, %if.then22
  %t37 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %41 = load { float, float }*, { float, float }** %t37, align 8
  %arrayidx38 = getelementptr inbounds { float, float }, { float, float }* %41, i64 2
  %arrayidx38.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx38, i32 0, i32 0
  %arrayidx38.real = load float, float* %arrayidx38.realp, align 4
  %arrayidx38.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx38, i32 0, i32 1
  %arrayidx38.imag = load float, float* %arrayidx38.imagp, align 4
  %coerce39.realp = getelementptr inbounds { float, float }, { float, float }* %coerce39, i32 0, i32 0
  %coerce39.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce39, i32 0, i32 1
  store float %arrayidx38.real, float* %coerce39.realp, align 4
  store float %arrayidx38.imag, float* %coerce39.imagp, align 4
  %42 = bitcast { float, float }* %coerce39 to <2 x float>*
  %43 = load <2 x float>, <2 x float>* %42, align 4
  %call40 = call float @quantum_prob_inline.5(<2 x float> %43)
  %conv41 = fpext float %call40 to double
  %cmp42 = fcmp ogt double %conv41, 1.000000e-09
  br i1 %cmp42, label %land.lhs.true44, label %if.end55

land.lhs.true44:                                  ; preds = %if.end36
  %44 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node45 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %44, i32 0, i32 3
  %45 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node45, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %46 to i64
  %arrayidx47 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %45, i64 %idxprom46
  %state48 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx47, i32 0, i32 1
  %47 = load i64, i64* %state48, align 8
  %48 = load i32, i32* %target.addr, align 4
  %sh_prom49 = zext i32 %48 to i64
  %shl50 = shl i64 1, %sh_prom49
  %and51 = and i64 %47, %shl50
  %tobool52 = icmp ne i64 %and51, 0
  br i1 %tobool52, label %if.end55, label %if.then53

if.then53:                                        ; preds = %land.lhs.true44
  %49 = load i32, i32* %addsize, align 4
  %inc54 = add nsw i32 %49, 1
  store i32 %inc54, i32* %addsize, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %land.lhs.true44, %if.end36
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %for.body14
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %50 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %50, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond11

for.end59:                                        ; preds = %for.cond11
  %51 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node60 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %51, i32 0, i32 3
  %52 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node60, align 8
  %53 = bitcast %struct.quantum_reg_node_struct* %52 to i8*
  %54 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size61 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %54, i32 0, i32 1
  %55 = load i32, i32* %size61, align 4
  %56 = load i32, i32* %addsize, align 4
  %add = add nsw i32 %55, %56
  %conv62 = sext i32 %add to i64
  %mul = mul i64 %conv62, 16
  %call63 = call i8* @realloc(i8* %53, i64 %mul) #5
  %57 = bitcast i8* %call63 to %struct.quantum_reg_node_struct*
  %58 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node64 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %58, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %57, %struct.quantum_reg_node_struct** %node64, align 8
  %59 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node65 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %59, i32 0, i32 3
  %60 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node65, align 8
  %tobool66 = icmp ne %struct.quantum_reg_node_struct* %60, null
  br i1 %tobool66, label %if.end71, label %if.then67

if.then67:                                        ; preds = %for.end59
  %61 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size68 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %61, i32 0, i32 1
  %62 = load i32, i32* %size68, align 4
  %63 = load i32, i32* %addsize, align 4
  %add69 = add nsw i32 %62, %63
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i32 %add69)
  call void @exit(i32 1) #9
  unreachable

if.end71:                                         ; preds = %for.end59
  %64 = load i32, i32* %addsize, align 4
  %conv72 = sext i32 %64 to i64
  %mul73 = mul i64 %conv72, 16
  %call74 = call i64 @quantum_memman(i64 %mul73)
  store i32 0, i32* %i, align 4
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc90, %if.end71
  %65 = load i32, i32* %i, align 4
  %66 = load i32, i32* %addsize, align 4
  %cmp76 = icmp slt i32 %65, %66
  br i1 %cmp76, label %for.body78, label %for.end92

for.body78:                                       ; preds = %for.cond75
  %67 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node79 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %67, i32 0, i32 3
  %68 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node79, align 8
  %69 = load i32, i32* %i, align 4
  %70 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size80 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %70, i32 0, i32 1
  %71 = load i32, i32* %size80, align 4
  %add81 = add nsw i32 %69, %71
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %68, i64 %idxprom82
  %state84 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx83, i32 0, i32 1
  store i64 0, i64* %state84, align 8
  %72 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node85 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %72, i32 0, i32 3
  %73 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node85, align 8
  %74 = load i32, i32* %i, align 4
  %75 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size86 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %75, i32 0, i32 1
  %76 = load i32, i32* %size86, align 4
  %add87 = add nsw i32 %74, %76
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %73, i64 %idxprom88
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx89, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float 0.000000e+00, float* %amplitude.realp, align 8
  store float 0.000000e+00, float* %amplitude.imagp, align 4
  br label %for.inc90

for.inc90:                                        ; preds = %for.body78
  %77 = load i32, i32* %i, align 4
  %inc91 = add nsw i32 %77, 1
  store i32 %inc91, i32* %i, align 4
  br label %for.cond75

for.end92:                                        ; preds = %for.cond75
  %78 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size93 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %78, i32 0, i32 1
  %79 = load i32, i32* %size93, align 4
  %80 = load i32, i32* %addsize, align 4
  %add94 = add nsw i32 %79, %80
  %conv95 = sext i32 %add94 to i64
  %call96 = call noalias i8* @calloc(i64 %conv95, i64 1) #5
  store i8* %call96, i8** %done, align 8
  %81 = load i8*, i8** %done, align 8
  %tobool97 = icmp ne i8* %81, null
  br i1 %tobool97, label %if.end104, label %if.then98

if.then98:                                        ; preds = %for.end92
  %82 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size99 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %82, i32 0, i32 1
  %83 = load i32, i32* %size99, align 4
  %84 = load i32, i32* %addsize, align 4
  %add100 = add nsw i32 %83, %84
  %conv101 = sext i32 %add100 to i64
  %mul102 = mul i64 %conv101, 1
  %call103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0), i64 %mul102)
  call void @exit(i32 1) #9
  unreachable

if.end104:                                        ; preds = %for.end92
  %85 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size105 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %85, i32 0, i32 1
  %86 = load i32, i32* %size105, align 4
  %conv106 = sext i32 %86 to i64
  %87 = load i32, i32* %addsize, align 4
  %conv107 = sext i32 %87 to i64
  %mul108 = mul i64 %conv107, 1
  %add109 = add i64 %conv106, %mul108
  %call110 = call i64 @quantum_memman(i64 %add109)
  %88 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size111 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %88, i32 0, i32 1
  %89 = load i32, i32* %size111, align 4
  store i32 %89, i32* %k, align 4
  %90 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %90, i32 0, i32 0
  %91 = load i32, i32* %width, align 8
  %sh_prom112 = zext i32 %91 to i64
  %shl113 = shl i64 1, %sh_prom112
  %conv114 = uitofp i64 %shl113 to double
  %div = fdiv double 1.000000e+00, %conv114
  %div115 = fdiv double %div, 1.000000e+06
  %conv116 = fptrunc double %div115 to float
  store float %conv116, float* %limit, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc439, %if.end104
  %92 = load i32, i32* %i, align 4
  %93 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size118 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %93, i32 0, i32 1
  %94 = load i32, i32* %size118, align 4
  %cmp119 = icmp slt i32 %92, %94
  br i1 %cmp119, label %for.body121, label %for.end441

for.body121:                                      ; preds = %for.cond117
  %95 = load i8*, i8** %done, align 8
  %96 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %96 to i64
  %arrayidx123 = getelementptr inbounds i8, i8* %95, i64 %idxprom122
  %97 = load i8, i8* %arrayidx123, align 1
  %tobool124 = icmp ne i8 %97, 0
  br i1 %tobool124, label %if.end438, label %if.then125

if.then125:                                       ; preds = %for.body121
  %98 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node126 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %98, i32 0, i32 3
  %99 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node126, align 8
  %100 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %100 to i64
  %arrayidx128 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %99, i64 %idxprom127
  %state129 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx128, i32 0, i32 1
  %101 = load i64, i64* %state129, align 8
  %102 = load i32, i32* %target.addr, align 4
  %sh_prom130 = zext i32 %102 to i64
  %shl131 = shl i64 1, %sh_prom130
  %and132 = and i64 %101, %shl131
  %conv133 = trunc i64 %and132 to i32
  store i32 %conv133, i32* %iset, align 4
  %tnot.realp134 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.imagp135 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  store float 0.000000e+00, float* %tnot.realp134, align 4
  store float 0.000000e+00, float* %tnot.imagp135, align 4
  %103 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node136 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %103, i32 0, i32 3
  %104 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node136, align 8
  %105 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %105 to i64
  %arrayidx138 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %104, i64 %idxprom137
  %state139 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx138, i32 0, i32 1
  %106 = load i64, i64* %state139, align 8
  %107 = load i32, i32* %target.addr, align 4
  %sh_prom140 = zext i32 %107 to i64
  %shl141 = shl i64 1, %sh_prom140
  %xor142 = xor i64 %106, %shl141
  %108 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call143 = call i32 @quantum_get_state(i64 %xor142, %struct.quantum_reg_struct* byval align 8 %108)
  store i32 %call143, i32* %j, align 4
  %109 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node144 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %109, i32 0, i32 3
  %110 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node144, align 8
  %111 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %111 to i64
  %arrayidx146 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %110, i64 %idxprom145
  %amplitude147 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx146, i32 0, i32 0
  %amplitude147.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude147, i32 0, i32 0
  %amplitude147.real = load float, float* %amplitude147.realp, align 8
  %amplitude147.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude147, i32 0, i32 1
  %amplitude147.imag = load float, float* %amplitude147.imagp, align 4
  %t.realp = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.imagp = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  store float %amplitude147.real, float* %t.realp, align 4
  store float %amplitude147.imag, float* %t.imagp, align 4
  %112 = load i32, i32* %j, align 4
  %cmp148 = icmp sge i32 %112, 0
  br i1 %cmp148, label %if.then150, label %if.end157

if.then150:                                       ; preds = %if.then125
  %113 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node151 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %113, i32 0, i32 3
  %114 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node151, align 8
  %115 = load i32, i32* %j, align 4
  %idxprom152 = sext i32 %115 to i64
  %arrayidx153 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %114, i64 %idxprom152
  %amplitude154 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx153, i32 0, i32 0
  %amplitude154.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude154, i32 0, i32 0
  %amplitude154.real = load float, float* %amplitude154.realp, align 8
  %amplitude154.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude154, i32 0, i32 1
  %amplitude154.imag = load float, float* %amplitude154.imagp, align 4
  %tnot.realp155 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.imagp156 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  store float %amplitude154.real, float* %tnot.realp155, align 4
  store float %amplitude154.imag, float* %tnot.imagp156, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then150, %if.then125
  %116 = load i32, i32* %iset, align 4
  %tobool158 = icmp ne i32 %116, 0
  br i1 %tobool158, label %if.then159, label %if.else

if.then159:                                       ; preds = %if.end157
  %t160 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %117 = load { float, float }*, { float, float }** %t160, align 8
  %arrayidx161 = getelementptr inbounds { float, float }, { float, float }* %117, i64 2
  %arrayidx161.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx161, i32 0, i32 0
  %arrayidx161.real = load float, float* %arrayidx161.realp, align 4
  %arrayidx161.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx161, i32 0, i32 1
  %arrayidx161.imag = load float, float* %arrayidx161.imagp, align 4
  %tnot.realp162 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.real = load float, float* %tnot.realp162, align 4
  %tnot.imagp163 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  %tnot.imag = load float, float* %tnot.imagp163, align 4
  %mul_ac = fmul float %arrayidx161.real, %tnot.real
  %mul_bd = fmul float %arrayidx161.imag, %tnot.imag
  %mul_ad = fmul float %arrayidx161.real, %tnot.imag
  %mul_bc = fmul float %arrayidx161.imag, %tnot.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then159
  %isnan_cmp164 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp164, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call165 = call <2 x float> @__mulsc3(float %arrayidx161.real, float %arrayidx161.imag, float %tnot.real, float %tnot.imag) #5
  %118 = bitcast { float, float }* %coerce166 to <2 x float>*
  store <2 x float> %call165, <2 x float>* %118, align 4
  %coerce166.realp = getelementptr inbounds { float, float }, { float, float }* %coerce166, i32 0, i32 0
  %coerce166.real = load float, float* %coerce166.realp, align 4
  %coerce166.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce166, i32 0, i32 1
  %coerce166.imag = load float, float* %coerce166.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then159
  %real_mul_phi = phi float [ %mul_r, %if.then159 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce166.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then159 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce166.imag, %complex_mul_libcall ]
  %t167 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %119 = load { float, float }*, { float, float }** %t167, align 8
  %arrayidx168 = getelementptr inbounds { float, float }, { float, float }* %119, i64 3
  %arrayidx168.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx168, i32 0, i32 0
  %arrayidx168.real = load float, float* %arrayidx168.realp, align 4
  %arrayidx168.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx168, i32 0, i32 1
  %arrayidx168.imag = load float, float* %arrayidx168.imagp, align 4
  %t.realp169 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real = load float, float* %t.realp169, align 4
  %t.imagp170 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag = load float, float* %t.imagp170, align 4
  %mul_ac171 = fmul float %arrayidx168.real, %t.real
  %mul_bd172 = fmul float %arrayidx168.imag, %t.imag
  %mul_ad173 = fmul float %arrayidx168.real, %t.imag
  %mul_bc174 = fmul float %arrayidx168.imag, %t.real
  %mul_r175 = fsub float %mul_ac171, %mul_bd172
  %mul_i176 = fadd float %mul_ad173, %mul_bc174
  %isnan_cmp177 = fcmp uno float %mul_r175, %mul_r175
  br i1 %isnan_cmp177, label %complex_mul_imag_nan178, label %complex_mul_cont183, !prof !1

complex_mul_imag_nan178:                          ; preds = %complex_mul_cont
  %isnan_cmp179 = fcmp uno float %mul_i176, %mul_i176
  br i1 %isnan_cmp179, label %complex_mul_libcall180, label %complex_mul_cont183, !prof !1

complex_mul_libcall180:                           ; preds = %complex_mul_imag_nan178
  %call181 = call <2 x float> @__mulsc3(float %arrayidx168.real, float %arrayidx168.imag, float %t.real, float %t.imag) #5
  %120 = bitcast { float, float }* %coerce182 to <2 x float>*
  store <2 x float> %call181, <2 x float>* %120, align 4
  %coerce182.realp = getelementptr inbounds { float, float }, { float, float }* %coerce182, i32 0, i32 0
  %coerce182.real = load float, float* %coerce182.realp, align 4
  %coerce182.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce182, i32 0, i32 1
  %coerce182.imag = load float, float* %coerce182.imagp, align 4
  br label %complex_mul_cont183

complex_mul_cont183:                              ; preds = %complex_mul_libcall180, %complex_mul_imag_nan178, %complex_mul_cont
  %real_mul_phi184 = phi float [ %mul_r175, %complex_mul_cont ], [ %mul_r175, %complex_mul_imag_nan178 ], [ %coerce182.real, %complex_mul_libcall180 ]
  %imag_mul_phi185 = phi float [ %mul_i176, %complex_mul_cont ], [ %mul_i176, %complex_mul_imag_nan178 ], [ %coerce182.imag, %complex_mul_libcall180 ]
  %add.r = fadd float %real_mul_phi, %real_mul_phi184
  %add.i = fadd float %imag_mul_phi, %imag_mul_phi185
  %121 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node186 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %121, i32 0, i32 3
  %122 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node186, align 8
  %123 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %123 to i64
  %arrayidx188 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %122, i64 %idxprom187
  %amplitude189 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx188, i32 0, i32 0
  %amplitude189.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude189, i32 0, i32 0
  %amplitude189.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude189, i32 0, i32 1
  store float %add.r, float* %amplitude189.realp, align 8
  store float %add.i, float* %amplitude189.imagp, align 4
  br label %if.end238

if.else:                                          ; preds = %if.end157
  %t190 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %124 = load { float, float }*, { float, float }** %t190, align 8
  %arrayidx191 = getelementptr inbounds { float, float }, { float, float }* %124, i64 0
  %arrayidx191.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx191, i32 0, i32 0
  %arrayidx191.real = load float, float* %arrayidx191.realp, align 4
  %arrayidx191.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx191, i32 0, i32 1
  %arrayidx191.imag = load float, float* %arrayidx191.imagp, align 4
  %t.realp192 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real193 = load float, float* %t.realp192, align 4
  %t.imagp194 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag195 = load float, float* %t.imagp194, align 4
  %mul_ac196 = fmul float %arrayidx191.real, %t.real193
  %mul_bd197 = fmul float %arrayidx191.imag, %t.imag195
  %mul_ad198 = fmul float %arrayidx191.real, %t.imag195
  %mul_bc199 = fmul float %arrayidx191.imag, %t.real193
  %mul_r200 = fsub float %mul_ac196, %mul_bd197
  %mul_i201 = fadd float %mul_ad198, %mul_bc199
  %isnan_cmp202 = fcmp uno float %mul_r200, %mul_r200
  br i1 %isnan_cmp202, label %complex_mul_imag_nan203, label %complex_mul_cont208, !prof !1

complex_mul_imag_nan203:                          ; preds = %if.else
  %isnan_cmp204 = fcmp uno float %mul_i201, %mul_i201
  br i1 %isnan_cmp204, label %complex_mul_libcall205, label %complex_mul_cont208, !prof !1

complex_mul_libcall205:                           ; preds = %complex_mul_imag_nan203
  %call206 = call <2 x float> @__mulsc3(float %arrayidx191.real, float %arrayidx191.imag, float %t.real193, float %t.imag195) #5
  %125 = bitcast { float, float }* %coerce207 to <2 x float>*
  store <2 x float> %call206, <2 x float>* %125, align 4
  %coerce207.realp = getelementptr inbounds { float, float }, { float, float }* %coerce207, i32 0, i32 0
  %coerce207.real = load float, float* %coerce207.realp, align 4
  %coerce207.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce207, i32 0, i32 1
  %coerce207.imag = load float, float* %coerce207.imagp, align 4
  br label %complex_mul_cont208

complex_mul_cont208:                              ; preds = %complex_mul_libcall205, %complex_mul_imag_nan203, %if.else
  %real_mul_phi209 = phi float [ %mul_r200, %if.else ], [ %mul_r200, %complex_mul_imag_nan203 ], [ %coerce207.real, %complex_mul_libcall205 ]
  %imag_mul_phi210 = phi float [ %mul_i201, %if.else ], [ %mul_i201, %complex_mul_imag_nan203 ], [ %coerce207.imag, %complex_mul_libcall205 ]
  %t211 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %126 = load { float, float }*, { float, float }** %t211, align 8
  %arrayidx212 = getelementptr inbounds { float, float }, { float, float }* %126, i64 1
  %arrayidx212.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx212, i32 0, i32 0
  %arrayidx212.real = load float, float* %arrayidx212.realp, align 4
  %arrayidx212.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx212, i32 0, i32 1
  %arrayidx212.imag = load float, float* %arrayidx212.imagp, align 4
  %tnot.realp213 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.real214 = load float, float* %tnot.realp213, align 4
  %tnot.imagp215 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  %tnot.imag216 = load float, float* %tnot.imagp215, align 4
  %mul_ac217 = fmul float %arrayidx212.real, %tnot.real214
  %mul_bd218 = fmul float %arrayidx212.imag, %tnot.imag216
  %mul_ad219 = fmul float %arrayidx212.real, %tnot.imag216
  %mul_bc220 = fmul float %arrayidx212.imag, %tnot.real214
  %mul_r221 = fsub float %mul_ac217, %mul_bd218
  %mul_i222 = fadd float %mul_ad219, %mul_bc220
  %isnan_cmp223 = fcmp uno float %mul_r221, %mul_r221
  br i1 %isnan_cmp223, label %complex_mul_imag_nan224, label %complex_mul_cont229, !prof !1

complex_mul_imag_nan224:                          ; preds = %complex_mul_cont208
  %isnan_cmp225 = fcmp uno float %mul_i222, %mul_i222
  br i1 %isnan_cmp225, label %complex_mul_libcall226, label %complex_mul_cont229, !prof !1

complex_mul_libcall226:                           ; preds = %complex_mul_imag_nan224
  %call227 = call <2 x float> @__mulsc3(float %arrayidx212.real, float %arrayidx212.imag, float %tnot.real214, float %tnot.imag216) #5
  %127 = bitcast { float, float }* %coerce228 to <2 x float>*
  store <2 x float> %call227, <2 x float>* %127, align 4
  %coerce228.realp = getelementptr inbounds { float, float }, { float, float }* %coerce228, i32 0, i32 0
  %coerce228.real = load float, float* %coerce228.realp, align 4
  %coerce228.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce228, i32 0, i32 1
  %coerce228.imag = load float, float* %coerce228.imagp, align 4
  br label %complex_mul_cont229

complex_mul_cont229:                              ; preds = %complex_mul_libcall226, %complex_mul_imag_nan224, %complex_mul_cont208
  %real_mul_phi230 = phi float [ %mul_r221, %complex_mul_cont208 ], [ %mul_r221, %complex_mul_imag_nan224 ], [ %coerce228.real, %complex_mul_libcall226 ]
  %imag_mul_phi231 = phi float [ %mul_i222, %complex_mul_cont208 ], [ %mul_i222, %complex_mul_imag_nan224 ], [ %coerce228.imag, %complex_mul_libcall226 ]
  %add.r232 = fadd float %real_mul_phi209, %real_mul_phi230
  %add.i233 = fadd float %imag_mul_phi210, %imag_mul_phi231
  %128 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node234 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %128, i32 0, i32 3
  %129 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node234, align 8
  %130 = load i32, i32* %i, align 4
  %idxprom235 = sext i32 %130 to i64
  %arrayidx236 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %129, i64 %idxprom235
  %amplitude237 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx236, i32 0, i32 0
  %amplitude237.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude237, i32 0, i32 0
  %amplitude237.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude237, i32 0, i32 1
  store float %add.r232, float* %amplitude237.realp, align 8
  store float %add.i233, float* %amplitude237.imagp, align 4
  br label %if.end238

if.end238:                                        ; preds = %complex_mul_cont229, %complex_mul_cont183
  %131 = load i32, i32* %j, align 4
  %cmp239 = icmp sge i32 %131, 0
  br i1 %cmp239, label %if.then241, label %if.else342

if.then241:                                       ; preds = %if.end238
  %132 = load i32, i32* %iset, align 4
  %tobool242 = icmp ne i32 %132, 0
  br i1 %tobool242, label %if.then243, label %if.else292

if.then243:                                       ; preds = %if.then241
  %t244 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %133 = load { float, float }*, { float, float }** %t244, align 8
  %arrayidx245 = getelementptr inbounds { float, float }, { float, float }* %133, i64 0
  %arrayidx245.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx245, i32 0, i32 0
  %arrayidx245.real = load float, float* %arrayidx245.realp, align 4
  %arrayidx245.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx245, i32 0, i32 1
  %arrayidx245.imag = load float, float* %arrayidx245.imagp, align 4
  %tnot.realp246 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.real247 = load float, float* %tnot.realp246, align 4
  %tnot.imagp248 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  %tnot.imag249 = load float, float* %tnot.imagp248, align 4
  %mul_ac250 = fmul float %arrayidx245.real, %tnot.real247
  %mul_bd251 = fmul float %arrayidx245.imag, %tnot.imag249
  %mul_ad252 = fmul float %arrayidx245.real, %tnot.imag249
  %mul_bc253 = fmul float %arrayidx245.imag, %tnot.real247
  %mul_r254 = fsub float %mul_ac250, %mul_bd251
  %mul_i255 = fadd float %mul_ad252, %mul_bc253
  %isnan_cmp256 = fcmp uno float %mul_r254, %mul_r254
  br i1 %isnan_cmp256, label %complex_mul_imag_nan257, label %complex_mul_cont262, !prof !1

complex_mul_imag_nan257:                          ; preds = %if.then243
  %isnan_cmp258 = fcmp uno float %mul_i255, %mul_i255
  br i1 %isnan_cmp258, label %complex_mul_libcall259, label %complex_mul_cont262, !prof !1

complex_mul_libcall259:                           ; preds = %complex_mul_imag_nan257
  %call260 = call <2 x float> @__mulsc3(float %arrayidx245.real, float %arrayidx245.imag, float %tnot.real247, float %tnot.imag249) #5
  %134 = bitcast { float, float }* %coerce261 to <2 x float>*
  store <2 x float> %call260, <2 x float>* %134, align 4
  %coerce261.realp = getelementptr inbounds { float, float }, { float, float }* %coerce261, i32 0, i32 0
  %coerce261.real = load float, float* %coerce261.realp, align 4
  %coerce261.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce261, i32 0, i32 1
  %coerce261.imag = load float, float* %coerce261.imagp, align 4
  br label %complex_mul_cont262

complex_mul_cont262:                              ; preds = %complex_mul_libcall259, %complex_mul_imag_nan257, %if.then243
  %real_mul_phi263 = phi float [ %mul_r254, %if.then243 ], [ %mul_r254, %complex_mul_imag_nan257 ], [ %coerce261.real, %complex_mul_libcall259 ]
  %imag_mul_phi264 = phi float [ %mul_i255, %if.then243 ], [ %mul_i255, %complex_mul_imag_nan257 ], [ %coerce261.imag, %complex_mul_libcall259 ]
  %t265 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %135 = load { float, float }*, { float, float }** %t265, align 8
  %arrayidx266 = getelementptr inbounds { float, float }, { float, float }* %135, i64 1
  %arrayidx266.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx266, i32 0, i32 0
  %arrayidx266.real = load float, float* %arrayidx266.realp, align 4
  %arrayidx266.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx266, i32 0, i32 1
  %arrayidx266.imag = load float, float* %arrayidx266.imagp, align 4
  %t.realp267 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real268 = load float, float* %t.realp267, align 4
  %t.imagp269 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag270 = load float, float* %t.imagp269, align 4
  %mul_ac271 = fmul float %arrayidx266.real, %t.real268
  %mul_bd272 = fmul float %arrayidx266.imag, %t.imag270
  %mul_ad273 = fmul float %arrayidx266.real, %t.imag270
  %mul_bc274 = fmul float %arrayidx266.imag, %t.real268
  %mul_r275 = fsub float %mul_ac271, %mul_bd272
  %mul_i276 = fadd float %mul_ad273, %mul_bc274
  %isnan_cmp277 = fcmp uno float %mul_r275, %mul_r275
  br i1 %isnan_cmp277, label %complex_mul_imag_nan278, label %complex_mul_cont283, !prof !1

complex_mul_imag_nan278:                          ; preds = %complex_mul_cont262
  %isnan_cmp279 = fcmp uno float %mul_i276, %mul_i276
  br i1 %isnan_cmp279, label %complex_mul_libcall280, label %complex_mul_cont283, !prof !1

complex_mul_libcall280:                           ; preds = %complex_mul_imag_nan278
  %call281 = call <2 x float> @__mulsc3(float %arrayidx266.real, float %arrayidx266.imag, float %t.real268, float %t.imag270) #5
  %136 = bitcast { float, float }* %coerce282 to <2 x float>*
  store <2 x float> %call281, <2 x float>* %136, align 4
  %coerce282.realp = getelementptr inbounds { float, float }, { float, float }* %coerce282, i32 0, i32 0
  %coerce282.real = load float, float* %coerce282.realp, align 4
  %coerce282.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce282, i32 0, i32 1
  %coerce282.imag = load float, float* %coerce282.imagp, align 4
  br label %complex_mul_cont283

complex_mul_cont283:                              ; preds = %complex_mul_libcall280, %complex_mul_imag_nan278, %complex_mul_cont262
  %real_mul_phi284 = phi float [ %mul_r275, %complex_mul_cont262 ], [ %mul_r275, %complex_mul_imag_nan278 ], [ %coerce282.real, %complex_mul_libcall280 ]
  %imag_mul_phi285 = phi float [ %mul_i276, %complex_mul_cont262 ], [ %mul_i276, %complex_mul_imag_nan278 ], [ %coerce282.imag, %complex_mul_libcall280 ]
  %add.r286 = fadd float %real_mul_phi263, %real_mul_phi284
  %add.i287 = fadd float %imag_mul_phi264, %imag_mul_phi285
  %137 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node288 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %137, i32 0, i32 3
  %138 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node288, align 8
  %139 = load i32, i32* %j, align 4
  %idxprom289 = sext i32 %139 to i64
  %arrayidx290 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %138, i64 %idxprom289
  %amplitude291 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx290, i32 0, i32 0
  %amplitude291.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude291, i32 0, i32 0
  %amplitude291.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude291, i32 0, i32 1
  store float %add.r286, float* %amplitude291.realp, align 8
  store float %add.i287, float* %amplitude291.imagp, align 4
  br label %if.end341

if.else292:                                       ; preds = %if.then241
  %t293 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %140 = load { float, float }*, { float, float }** %t293, align 8
  %arrayidx294 = getelementptr inbounds { float, float }, { float, float }* %140, i64 2
  %arrayidx294.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx294, i32 0, i32 0
  %arrayidx294.real = load float, float* %arrayidx294.realp, align 4
  %arrayidx294.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx294, i32 0, i32 1
  %arrayidx294.imag = load float, float* %arrayidx294.imagp, align 4
  %t.realp295 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real296 = load float, float* %t.realp295, align 4
  %t.imagp297 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag298 = load float, float* %t.imagp297, align 4
  %mul_ac299 = fmul float %arrayidx294.real, %t.real296
  %mul_bd300 = fmul float %arrayidx294.imag, %t.imag298
  %mul_ad301 = fmul float %arrayidx294.real, %t.imag298
  %mul_bc302 = fmul float %arrayidx294.imag, %t.real296
  %mul_r303 = fsub float %mul_ac299, %mul_bd300
  %mul_i304 = fadd float %mul_ad301, %mul_bc302
  %isnan_cmp305 = fcmp uno float %mul_r303, %mul_r303
  br i1 %isnan_cmp305, label %complex_mul_imag_nan306, label %complex_mul_cont311, !prof !1

complex_mul_imag_nan306:                          ; preds = %if.else292
  %isnan_cmp307 = fcmp uno float %mul_i304, %mul_i304
  br i1 %isnan_cmp307, label %complex_mul_libcall308, label %complex_mul_cont311, !prof !1

complex_mul_libcall308:                           ; preds = %complex_mul_imag_nan306
  %call309 = call <2 x float> @__mulsc3(float %arrayidx294.real, float %arrayidx294.imag, float %t.real296, float %t.imag298) #5
  %141 = bitcast { float, float }* %coerce310 to <2 x float>*
  store <2 x float> %call309, <2 x float>* %141, align 4
  %coerce310.realp = getelementptr inbounds { float, float }, { float, float }* %coerce310, i32 0, i32 0
  %coerce310.real = load float, float* %coerce310.realp, align 4
  %coerce310.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce310, i32 0, i32 1
  %coerce310.imag = load float, float* %coerce310.imagp, align 4
  br label %complex_mul_cont311

complex_mul_cont311:                              ; preds = %complex_mul_libcall308, %complex_mul_imag_nan306, %if.else292
  %real_mul_phi312 = phi float [ %mul_r303, %if.else292 ], [ %mul_r303, %complex_mul_imag_nan306 ], [ %coerce310.real, %complex_mul_libcall308 ]
  %imag_mul_phi313 = phi float [ %mul_i304, %if.else292 ], [ %mul_i304, %complex_mul_imag_nan306 ], [ %coerce310.imag, %complex_mul_libcall308 ]
  %t314 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %142 = load { float, float }*, { float, float }** %t314, align 8
  %arrayidx315 = getelementptr inbounds { float, float }, { float, float }* %142, i64 3
  %arrayidx315.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx315, i32 0, i32 0
  %arrayidx315.real = load float, float* %arrayidx315.realp, align 4
  %arrayidx315.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx315, i32 0, i32 1
  %arrayidx315.imag = load float, float* %arrayidx315.imagp, align 4
  %tnot.realp316 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.real317 = load float, float* %tnot.realp316, align 4
  %tnot.imagp318 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  %tnot.imag319 = load float, float* %tnot.imagp318, align 4
  %mul_ac320 = fmul float %arrayidx315.real, %tnot.real317
  %mul_bd321 = fmul float %arrayidx315.imag, %tnot.imag319
  %mul_ad322 = fmul float %arrayidx315.real, %tnot.imag319
  %mul_bc323 = fmul float %arrayidx315.imag, %tnot.real317
  %mul_r324 = fsub float %mul_ac320, %mul_bd321
  %mul_i325 = fadd float %mul_ad322, %mul_bc323
  %isnan_cmp326 = fcmp uno float %mul_r324, %mul_r324
  br i1 %isnan_cmp326, label %complex_mul_imag_nan327, label %complex_mul_cont332, !prof !1

complex_mul_imag_nan327:                          ; preds = %complex_mul_cont311
  %isnan_cmp328 = fcmp uno float %mul_i325, %mul_i325
  br i1 %isnan_cmp328, label %complex_mul_libcall329, label %complex_mul_cont332, !prof !1

complex_mul_libcall329:                           ; preds = %complex_mul_imag_nan327
  %call330 = call <2 x float> @__mulsc3(float %arrayidx315.real, float %arrayidx315.imag, float %tnot.real317, float %tnot.imag319) #5
  %143 = bitcast { float, float }* %coerce331 to <2 x float>*
  store <2 x float> %call330, <2 x float>* %143, align 4
  %coerce331.realp = getelementptr inbounds { float, float }, { float, float }* %coerce331, i32 0, i32 0
  %coerce331.real = load float, float* %coerce331.realp, align 4
  %coerce331.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce331, i32 0, i32 1
  %coerce331.imag = load float, float* %coerce331.imagp, align 4
  br label %complex_mul_cont332

complex_mul_cont332:                              ; preds = %complex_mul_libcall329, %complex_mul_imag_nan327, %complex_mul_cont311
  %real_mul_phi333 = phi float [ %mul_r324, %complex_mul_cont311 ], [ %mul_r324, %complex_mul_imag_nan327 ], [ %coerce331.real, %complex_mul_libcall329 ]
  %imag_mul_phi334 = phi float [ %mul_i325, %complex_mul_cont311 ], [ %mul_i325, %complex_mul_imag_nan327 ], [ %coerce331.imag, %complex_mul_libcall329 ]
  %add.r335 = fadd float %real_mul_phi312, %real_mul_phi333
  %add.i336 = fadd float %imag_mul_phi313, %imag_mul_phi334
  %144 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node337 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %144, i32 0, i32 3
  %145 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node337, align 8
  %146 = load i32, i32* %j, align 4
  %idxprom338 = sext i32 %146 to i64
  %arrayidx339 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %145, i64 %idxprom338
  %amplitude340 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx339, i32 0, i32 0
  %amplitude340.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude340, i32 0, i32 0
  %amplitude340.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude340, i32 0, i32 1
  store float %add.r335, float* %amplitude340.realp, align 8
  store float %add.i336, float* %amplitude340.imagp, align 4
  br label %if.end341

if.end341:                                        ; preds = %complex_mul_cont332, %complex_mul_cont283
  br label %if.end431

if.else342:                                       ; preds = %if.end238
  %t343 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %147 = load { float, float }*, { float, float }** %t343, align 8
  %arrayidx344 = getelementptr inbounds { float, float }, { float, float }* %147, i64 1
  %arrayidx344.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx344, i32 0, i32 0
  %arrayidx344.real = load float, float* %arrayidx344.realp, align 4
  %arrayidx344.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx344, i32 0, i32 1
  %arrayidx344.imag = load float, float* %arrayidx344.imagp, align 4
  %coerce345.realp = getelementptr inbounds { float, float }, { float, float }* %coerce345, i32 0, i32 0
  %coerce345.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce345, i32 0, i32 1
  store float %arrayidx344.real, float* %coerce345.realp, align 4
  store float %arrayidx344.imag, float* %coerce345.imagp, align 4
  %148 = bitcast { float, float }* %coerce345 to <2 x float>*
  %149 = load <2 x float>, <2 x float>* %148, align 4
  %call346 = call float @quantum_prob_inline.5(<2 x float> %149)
  %conv347 = fpext float %call346 to double
  %cmp348 = fcmp olt double %conv347, 1.000000e-09
  br i1 %cmp348, label %land.lhs.true350, label %if.end353

land.lhs.true350:                                 ; preds = %if.else342
  %150 = load i32, i32* %iset, align 4
  %tobool351 = icmp ne i32 %150, 0
  br i1 %tobool351, label %if.then352, label %if.end353

if.then352:                                       ; preds = %land.lhs.true350
  br label %for.end441

if.end353:                                        ; preds = %land.lhs.true350, %if.else342
  %t354 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %151 = load { float, float }*, { float, float }** %t354, align 8
  %arrayidx355 = getelementptr inbounds { float, float }, { float, float }* %151, i64 2
  %arrayidx355.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx355, i32 0, i32 0
  %arrayidx355.real = load float, float* %arrayidx355.realp, align 4
  %arrayidx355.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx355, i32 0, i32 1
  %arrayidx355.imag = load float, float* %arrayidx355.imagp, align 4
  %coerce356.realp = getelementptr inbounds { float, float }, { float, float }* %coerce356, i32 0, i32 0
  %coerce356.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce356, i32 0, i32 1
  store float %arrayidx355.real, float* %coerce356.realp, align 4
  store float %arrayidx355.imag, float* %coerce356.imagp, align 4
  %152 = bitcast { float, float }* %coerce356 to <2 x float>*
  %153 = load <2 x float>, <2 x float>* %152, align 4
  %call357 = call float @quantum_prob_inline.5(<2 x float> %153)
  %conv358 = fpext float %call357 to double
  %cmp359 = fcmp olt double %conv358, 1.000000e-09
  br i1 %cmp359, label %land.lhs.true361, label %if.end364

land.lhs.true361:                                 ; preds = %if.end353
  %154 = load i32, i32* %iset, align 4
  %tobool362 = icmp ne i32 %154, 0
  br i1 %tobool362, label %if.end364, label %if.then363

if.then363:                                       ; preds = %land.lhs.true361
  br label %for.end441

if.end364:                                        ; preds = %land.lhs.true361, %if.end353
  %155 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node365 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %155, i32 0, i32 3
  %156 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node365, align 8
  %157 = load i32, i32* %i, align 4
  %idxprom366 = sext i32 %157 to i64
  %arrayidx367 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %156, i64 %idxprom366
  %state368 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx367, i32 0, i32 1
  %158 = load i64, i64* %state368, align 8
  %159 = load i32, i32* %target.addr, align 4
  %sh_prom369 = zext i32 %159 to i64
  %shl370 = shl i64 1, %sh_prom369
  %xor371 = xor i64 %158, %shl370
  %160 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node372 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %160, i32 0, i32 3
  %161 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node372, align 8
  %162 = load i32, i32* %k, align 4
  %idxprom373 = sext i32 %162 to i64
  %arrayidx374 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %161, i64 %idxprom373
  %state375 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx374, i32 0, i32 1
  store i64 %xor371, i64* %state375, align 8
  %163 = load i32, i32* %iset, align 4
  %tobool376 = icmp ne i32 %163, 0
  br i1 %tobool376, label %if.then377, label %if.else403

if.then377:                                       ; preds = %if.end364
  %t378 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %164 = load { float, float }*, { float, float }** %t378, align 8
  %arrayidx379 = getelementptr inbounds { float, float }, { float, float }* %164, i64 1
  %arrayidx379.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx379, i32 0, i32 0
  %arrayidx379.real = load float, float* %arrayidx379.realp, align 4
  %arrayidx379.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx379, i32 0, i32 1
  %arrayidx379.imag = load float, float* %arrayidx379.imagp, align 4
  %t.realp380 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real381 = load float, float* %t.realp380, align 4
  %t.imagp382 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag383 = load float, float* %t.imagp382, align 4
  %mul_ac384 = fmul float %arrayidx379.real, %t.real381
  %mul_bd385 = fmul float %arrayidx379.imag, %t.imag383
  %mul_ad386 = fmul float %arrayidx379.real, %t.imag383
  %mul_bc387 = fmul float %arrayidx379.imag, %t.real381
  %mul_r388 = fsub float %mul_ac384, %mul_bd385
  %mul_i389 = fadd float %mul_ad386, %mul_bc387
  %isnan_cmp390 = fcmp uno float %mul_r388, %mul_r388
  br i1 %isnan_cmp390, label %complex_mul_imag_nan391, label %complex_mul_cont396, !prof !1

complex_mul_imag_nan391:                          ; preds = %if.then377
  %isnan_cmp392 = fcmp uno float %mul_i389, %mul_i389
  br i1 %isnan_cmp392, label %complex_mul_libcall393, label %complex_mul_cont396, !prof !1

complex_mul_libcall393:                           ; preds = %complex_mul_imag_nan391
  %call394 = call <2 x float> @__mulsc3(float %arrayidx379.real, float %arrayidx379.imag, float %t.real381, float %t.imag383) #5
  %165 = bitcast { float, float }* %coerce395 to <2 x float>*
  store <2 x float> %call394, <2 x float>* %165, align 4
  %coerce395.realp = getelementptr inbounds { float, float }, { float, float }* %coerce395, i32 0, i32 0
  %coerce395.real = load float, float* %coerce395.realp, align 4
  %coerce395.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce395, i32 0, i32 1
  %coerce395.imag = load float, float* %coerce395.imagp, align 4
  br label %complex_mul_cont396

complex_mul_cont396:                              ; preds = %complex_mul_libcall393, %complex_mul_imag_nan391, %if.then377
  %real_mul_phi397 = phi float [ %mul_r388, %if.then377 ], [ %mul_r388, %complex_mul_imag_nan391 ], [ %coerce395.real, %complex_mul_libcall393 ]
  %imag_mul_phi398 = phi float [ %mul_i389, %if.then377 ], [ %mul_i389, %complex_mul_imag_nan391 ], [ %coerce395.imag, %complex_mul_libcall393 ]
  %166 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node399 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %166, i32 0, i32 3
  %167 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node399, align 8
  %168 = load i32, i32* %k, align 4
  %idxprom400 = sext i32 %168 to i64
  %arrayidx401 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %167, i64 %idxprom400
  %amplitude402 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx401, i32 0, i32 0
  %amplitude402.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude402, i32 0, i32 0
  %amplitude402.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude402, i32 0, i32 1
  store float %real_mul_phi397, float* %amplitude402.realp, align 8
  store float %imag_mul_phi398, float* %amplitude402.imagp, align 4
  br label %if.end429

if.else403:                                       ; preds = %if.end364
  %t404 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %169 = load { float, float }*, { float, float }** %t404, align 8
  %arrayidx405 = getelementptr inbounds { float, float }, { float, float }* %169, i64 2
  %arrayidx405.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx405, i32 0, i32 0
  %arrayidx405.real = load float, float* %arrayidx405.realp, align 4
  %arrayidx405.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx405, i32 0, i32 1
  %arrayidx405.imag = load float, float* %arrayidx405.imagp, align 4
  %t.realp406 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real407 = load float, float* %t.realp406, align 4
  %t.imagp408 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag409 = load float, float* %t.imagp408, align 4
  %mul_ac410 = fmul float %arrayidx405.real, %t.real407
  %mul_bd411 = fmul float %arrayidx405.imag, %t.imag409
  %mul_ad412 = fmul float %arrayidx405.real, %t.imag409
  %mul_bc413 = fmul float %arrayidx405.imag, %t.real407
  %mul_r414 = fsub float %mul_ac410, %mul_bd411
  %mul_i415 = fadd float %mul_ad412, %mul_bc413
  %isnan_cmp416 = fcmp uno float %mul_r414, %mul_r414
  br i1 %isnan_cmp416, label %complex_mul_imag_nan417, label %complex_mul_cont422, !prof !1

complex_mul_imag_nan417:                          ; preds = %if.else403
  %isnan_cmp418 = fcmp uno float %mul_i415, %mul_i415
  br i1 %isnan_cmp418, label %complex_mul_libcall419, label %complex_mul_cont422, !prof !1

complex_mul_libcall419:                           ; preds = %complex_mul_imag_nan417
  %call420 = call <2 x float> @__mulsc3(float %arrayidx405.real, float %arrayidx405.imag, float %t.real407, float %t.imag409) #5
  %170 = bitcast { float, float }* %coerce421 to <2 x float>*
  store <2 x float> %call420, <2 x float>* %170, align 4
  %coerce421.realp = getelementptr inbounds { float, float }, { float, float }* %coerce421, i32 0, i32 0
  %coerce421.real = load float, float* %coerce421.realp, align 4
  %coerce421.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce421, i32 0, i32 1
  %coerce421.imag = load float, float* %coerce421.imagp, align 4
  br label %complex_mul_cont422

complex_mul_cont422:                              ; preds = %complex_mul_libcall419, %complex_mul_imag_nan417, %if.else403
  %real_mul_phi423 = phi float [ %mul_r414, %if.else403 ], [ %mul_r414, %complex_mul_imag_nan417 ], [ %coerce421.real, %complex_mul_libcall419 ]
  %imag_mul_phi424 = phi float [ %mul_i415, %if.else403 ], [ %mul_i415, %complex_mul_imag_nan417 ], [ %coerce421.imag, %complex_mul_libcall419 ]
  %171 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node425 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %171, i32 0, i32 3
  %172 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node425, align 8
  %173 = load i32, i32* %k, align 4
  %idxprom426 = sext i32 %173 to i64
  %arrayidx427 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %172, i64 %idxprom426
  %amplitude428 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx427, i32 0, i32 0
  %amplitude428.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude428, i32 0, i32 0
  %amplitude428.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude428, i32 0, i32 1
  store float %real_mul_phi423, float* %amplitude428.realp, align 8
  store float %imag_mul_phi424, float* %amplitude428.imagp, align 4
  br label %if.end429

if.end429:                                        ; preds = %complex_mul_cont422, %complex_mul_cont396
  %174 = load i32, i32* %k, align 4
  %inc430 = add nsw i32 %174, 1
  store i32 %inc430, i32* %k, align 4
  br label %if.end431

if.end431:                                        ; preds = %if.end429, %if.end341
  %175 = load i32, i32* %j, align 4
  %cmp432 = icmp sge i32 %175, 0
  br i1 %cmp432, label %if.then434, label %if.end437

if.then434:                                       ; preds = %if.end431
  %176 = load i8*, i8** %done, align 8
  %177 = load i32, i32* %j, align 4
  %idxprom435 = sext i32 %177 to i64
  %arrayidx436 = getelementptr inbounds i8, i8* %176, i64 %idxprom435
  store i8 1, i8* %arrayidx436, align 1
  br label %if.end437

if.end437:                                        ; preds = %if.then434, %if.end431
  br label %if.end438

if.end438:                                        ; preds = %if.end437, %for.body121
  br label %for.inc439

for.inc439:                                       ; preds = %if.end438
  %178 = load i32, i32* %i, align 4
  %inc440 = add nsw i32 %178, 1
  store i32 %inc440, i32* %i, align 4
  br label %for.cond117

for.end441:                                       ; preds = %if.then363, %if.then352, %for.cond117
  %179 = load i32, i32* %addsize, align 4
  %180 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size442 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %180, i32 0, i32 1
  %181 = load i32, i32* %size442, align 4
  %add443 = add nsw i32 %181, %179
  store i32 %add443, i32* %size442, align 4
  %182 = load i8*, i8** %done, align 8
  call void @free(i8* %182) #5
  %183 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size444 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %183, i32 0, i32 1
  %184 = load i32, i32* %size444, align 4
  %sub = sub nsw i32 0, %184
  %conv445 = sext i32 %sub to i64
  %mul446 = mul i64 %conv445, 1
  %call447 = call i64 @quantum_memman(i64 %mul446)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond448

for.cond448:                                      ; preds = %for.inc487, %for.end441
  %185 = load i32, i32* %i, align 4
  %186 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size449 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %186, i32 0, i32 1
  %187 = load i32, i32* %size449, align 4
  %cmp450 = icmp slt i32 %185, %187
  br i1 %cmp450, label %for.body452, label %for.end489

for.body452:                                      ; preds = %for.cond448
  %188 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node453 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %188, i32 0, i32 3
  %189 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node453, align 8
  %190 = load i32, i32* %i, align 4
  %idxprom454 = sext i32 %190 to i64
  %arrayidx455 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %189, i64 %idxprom454
  %amplitude456 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx455, i32 0, i32 0
  %amplitude456.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude456, i32 0, i32 0
  %amplitude456.real = load float, float* %amplitude456.realp, align 8
  %amplitude456.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude456, i32 0, i32 1
  %amplitude456.imag = load float, float* %amplitude456.imagp, align 4
  %coerce457.realp = getelementptr inbounds { float, float }, { float, float }* %coerce457, i32 0, i32 0
  %coerce457.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce457, i32 0, i32 1
  store float %amplitude456.real, float* %coerce457.realp, align 4
  store float %amplitude456.imag, float* %coerce457.imagp, align 4
  %191 = bitcast { float, float }* %coerce457 to <2 x float>*
  %192 = load <2 x float>, <2 x float>* %191, align 4
  %call458 = call float @quantum_prob_inline.5(<2 x float> %192)
  %193 = load float, float* %limit, align 4
  %cmp459 = fcmp olt float %call458, %193
  br i1 %cmp459, label %if.then461, label %if.else464

if.then461:                                       ; preds = %for.body452
  %194 = load i32, i32* %j, align 4
  %inc462 = add nsw i32 %194, 1
  store i32 %inc462, i32* %j, align 4
  %195 = load i32, i32* %decsize, align 4
  %inc463 = add nsw i32 %195, 1
  store i32 %inc463, i32* %decsize, align 4
  br label %if.end486

if.else464:                                       ; preds = %for.body452
  %196 = load i32, i32* %j, align 4
  %tobool465 = icmp ne i32 %196, 0
  br i1 %tobool465, label %if.then466, label %if.end485

if.then466:                                       ; preds = %if.else464
  %197 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node467 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %197, i32 0, i32 3
  %198 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node467, align 8
  %199 = load i32, i32* %i, align 4
  %idxprom468 = sext i32 %199 to i64
  %arrayidx469 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %198, i64 %idxprom468
  %state470 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx469, i32 0, i32 1
  %200 = load i64, i64* %state470, align 8
  %201 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node471 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %201, i32 0, i32 3
  %202 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node471, align 8
  %203 = load i32, i32* %i, align 4
  %204 = load i32, i32* %j, align 4
  %sub472 = sub nsw i32 %203, %204
  %idxprom473 = sext i32 %sub472 to i64
  %arrayidx474 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %202, i64 %idxprom473
  %state475 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx474, i32 0, i32 1
  store i64 %200, i64* %state475, align 8
  %205 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node476 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %205, i32 0, i32 3
  %206 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node476, align 8
  %207 = load i32, i32* %i, align 4
  %idxprom477 = sext i32 %207 to i64
  %arrayidx478 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %206, i64 %idxprom477
  %amplitude479 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx478, i32 0, i32 0
  %amplitude479.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude479, i32 0, i32 0
  %amplitude479.real = load float, float* %amplitude479.realp, align 8
  %amplitude479.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude479, i32 0, i32 1
  %amplitude479.imag = load float, float* %amplitude479.imagp, align 4
  %208 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node480 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %208, i32 0, i32 3
  %209 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node480, align 8
  %210 = load i32, i32* %i, align 4
  %211 = load i32, i32* %j, align 4
  %sub481 = sub nsw i32 %210, %211
  %idxprom482 = sext i32 %sub481 to i64
  %arrayidx483 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %209, i64 %idxprom482
  %amplitude484 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx483, i32 0, i32 0
  %amplitude484.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude484, i32 0, i32 0
  %amplitude484.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude484, i32 0, i32 1
  store float %amplitude479.real, float* %amplitude484.realp, align 8
  store float %amplitude479.imag, float* %amplitude484.imagp, align 4
  br label %if.end485

if.end485:                                        ; preds = %if.then466, %if.else464
  br label %if.end486

if.end486:                                        ; preds = %if.end485, %if.then461
  br label %for.inc487

for.inc487:                                       ; preds = %if.end486
  %212 = load i32, i32* %i, align 4
  %inc488 = add nsw i32 %212, 1
  store i32 %inc488, i32* %i, align 4
  br label %for.cond448

for.end489:                                       ; preds = %for.cond448
  %213 = load i32, i32* %decsize, align 4
  %tobool490 = icmp ne i32 %213, 0
  br i1 %tobool490, label %if.then491, label %if.end511

if.then491:                                       ; preds = %for.end489
  %214 = load i32, i32* %decsize, align 4
  %215 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size492 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %215, i32 0, i32 1
  %216 = load i32, i32* %size492, align 4
  %sub493 = sub nsw i32 %216, %214
  store i32 %sub493, i32* %size492, align 4
  %217 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node494 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %217, i32 0, i32 3
  %218 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node494, align 8
  %219 = bitcast %struct.quantum_reg_node_struct* %218 to i8*
  %220 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size495 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %220, i32 0, i32 1
  %221 = load i32, i32* %size495, align 4
  %conv496 = sext i32 %221 to i64
  %mul497 = mul i64 %conv496, 16
  %call498 = call i8* @realloc(i8* %219, i64 %mul497) #5
  %222 = bitcast i8* %call498 to %struct.quantum_reg_node_struct*
  %223 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node499 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %223, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %222, %struct.quantum_reg_node_struct** %node499, align 8
  %224 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node500 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %224, i32 0, i32 3
  %225 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node500, align 8
  %tobool501 = icmp ne %struct.quantum_reg_node_struct* %225, null
  br i1 %tobool501, label %if.end506, label %if.then502

if.then502:                                       ; preds = %if.then491
  %226 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size503 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %226, i32 0, i32 1
  %227 = load i32, i32* %size503, align 4
  %228 = load i32, i32* %addsize, align 4
  %add504 = add nsw i32 %227, %228
  %call505 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i32 %add504)
  call void @exit(i32 1) #9
  unreachable

if.end506:                                        ; preds = %if.then491
  %229 = load i32, i32* %decsize, align 4
  %sub507 = sub nsw i32 0, %229
  %conv508 = sext i32 %sub507 to i64
  %mul509 = mul i64 %conv508, 16
  %call510 = call i64 @quantum_memman(i64 %mul509)
  br label %if.end511

if.end511:                                        ; preds = %if.end506, %for.end489
  %230 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %230)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @quantum_add_hash(i64 %a, i32 %pos, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i64, align 8
  %pos.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %1, i32 0, i32 2
  %2 = load i32, i32* %hashw, align 8
  %call = call i32 @quantum_hash64(i64 %0, i32 %2)
  store i32 %call, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %3, i32 0, i32 4
  %4 = load i32*, i32** %hash, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 2
  %10 = load i32, i32* %hashw1, align 8
  %shl = shl i32 1, %10
  %cmp = icmp eq i32 %8, %shl
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %11, 1
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %12, i32 0, i32 4
  %13 = load i32*, i32** %hash2, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %13, i64 %idxprom3
  store i32 %add, i32* %arrayidx4, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @quantum_get_state(i64 %a, %struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %1 = load i32, i32* %hashw, align 8
  %call = call i32 @quantum_hash64(i64 %0, i32 %1)
  store i32 %call, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %2 = load i32*, i32** %hash, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %5 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %hash1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %6 = load i32*, i32** %hash1, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %sub = sub nsw i32 %8, 1
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %5, i64 %idxprom4
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 1
  %9 = load i64, i64* %state, align 8
  %10 = load i64, i64* %a.addr, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %hash6 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %11 = load i32*, i32** %hash6, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %11, i64 %idxprom7
  %13 = load i32, i32* %arrayidx8, align 4
  %sub9 = sub nsw i32 %13, 1
  store i32 %sub9, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  %15 = load i32, i32* %i, align 4
  %hashw10 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %16 = load i32, i32* %hashw10, align 8
  %shl = shl i32 1, %16
  %cmp11 = icmp eq i32 %15, %shl
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define internal float @quantum_prob_inline.5(<2 x float> %a.coerce) #0 {
entry:
  %a = alloca { float, float }, align 4
  %r = alloca float, align 4
  %i = alloca float, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 4
  %a.realp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real = load float, float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag = load float, float* %a.imagp, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %a.real, float* %coerce.realp, align 4
  store float %a.imag, float* %coerce.imagp, align 4
  %1 = bitcast { float, float }* %coerce to <2 x float>*
  %2 = load <2 x float>, <2 x float>* %1, align 4
  %call = call float @quantum_real.6(<2 x float> %2)
  store float %call, float* %r, align 4
  %a.realp1 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real2 = load float, float* %a.realp1, align 4
  %a.imagp3 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag4 = load float, float* %a.imagp3, align 4
  %coerce5.realp = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 0
  %coerce5.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 1
  store float %a.real2, float* %coerce5.realp, align 4
  store float %a.imag4, float* %coerce5.imagp, align 4
  %3 = bitcast { float, float }* %coerce5 to <2 x float>*
  %4 = load <2 x float>, <2 x float>* %3, align 4
  %call6 = call float @quantum_imag.7(<2 x float> %4)
  store float %call6, float* %i, align 4
  %5 = load float, float* %r, align 4
  %6 = load float, float* %r, align 4
  %mul = fmul float %5, %6
  %7 = load float, float* %i, align 4
  %8 = load float, float* %i, align 4
  %mul7 = fmul float %7, %8
  %add = fadd float %mul, %mul7
  ret float %add
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define internal float @quantum_real.6(<2 x float> %a.coerce) #0 {
entry:
  %a = alloca { float, float }, align 4
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 4
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float*, float** %p, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 0
  %3 = load float, float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: noinline nounwind uwtable
define internal float @quantum_imag.7(<2 x float> %a.coerce) #0 {
entry:
  %a = alloca { float, float }, align 4
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 4
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float*, float** %p, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 1
  %3 = load float, float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @quantum_hash64(i64 %key, i32 %width) #0 {
entry:
  %key.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %k32 = alloca i32, align 4
  store i64 %key, i64* %key.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load i64, i64* %key.addr, align 8
  %and = and i64 %0, 4294967295
  %1 = load i64, i64* %key.addr, align 8
  %shr = lshr i64 %1, 32
  %xor = xor i64 %and, %shr
  %conv = trunc i64 %xor to i32
  store i32 %conv, i32* %k32, align 4
  %2 = load i32, i32* %k32, align 4
  %conv1 = zext i32 %2 to i64
  %mul = mul i64 %conv1, 2654404609
  %conv2 = trunc i64 %mul to i32
  store i32 %conv2, i32* %k32, align 4
  %3 = load i32, i32* %k32, align 4
  %4 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 32, %4
  %shr3 = lshr i32 %3, %sub
  store i32 %shr3, i32* %k32, align 4
  %5 = load i32, i32* %k32, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_gate2(i32 %control, i32 %target, i64 %m.coerce0, { float, float }* %m.coerce1, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %m = alloca %struct.quantum_matrix_struct, align 8
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %iset = alloca i32, align 4
  %addsize = alloca i32, align 4
  %decsize = alloca i32, align 4
  %t = alloca { float, float }, align 4
  %tnot = alloca { float, float }, align 4
  %limit = alloca float, align 4
  %done = alloca i8*, align 8
  %coerce = alloca { float, float }, align 4
  %coerce175 = alloca { float, float }, align 4
  %coerce200 = alloca { float, float }, align 4
  %coerce221 = alloca { float, float }, align 4
  %coerce254 = alloca { float, float }, align 4
  %coerce275 = alloca { float, float }, align 4
  %coerce303 = alloca { float, float }, align 4
  %coerce324 = alloca { float, float }, align 4
  %coerce385 = alloca { float, float }, align 4
  %coerce411 = alloca { float, float }, align 4
  %coerce447 = alloca { float, float }, align 4
  %0 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %1 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %0, i32 0, i32 0
  store i64 %m.coerce0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %0, i32 0, i32 1
  store { float, float }* %m.coerce1, { float, float }** %2, align 8
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %addsize, align 4
  store i32 0, i32* %decsize, align 4
  %tnot.realp = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.imagp = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  store float 0.000000e+00, float* %tnot.realp, align 4
  store float 0.000000e+00, float* %tnot.imagp, align 4
  %cols = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 1
  %3 = load i32, i32* %cols, align 4
  %cmp = icmp ne i32 %3, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %rows = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 0
  %4 = load i32, i32* %rows, align 8
  %cmp1 = icmp ne i32 %4, 4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 2
  %7 = load i32, i32* %hashw, align 8
  %shl = shl i32 1, %7
  %cmp2 = icmp slt i32 %5, %shl
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %8, i32 0, i32 4
  %9 = load i32*, i32** %hash, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc8, %for.end
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %size, align 4
  %cmp4 = icmp slt i32 %12, %14
  br i1 %cmp4, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond3
  %15 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %15, i32 0, i32 3
  %16 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %17 to i64
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %16, i64 %idxprom6
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 1
  %18 = load i64, i64* %state, align 8
  %19 = load i32, i32* %i, align 4
  %20 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_add_hash(i64 %18, i32 %19, %struct.quantum_reg_struct* %20)
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %21 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %21, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond3

for.end10:                                        ; preds = %for.cond3
  store i32 0, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc52, %for.end10
  %22 = load i32, i32* %i, align 4
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size12 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %23, i32 0, i32 1
  %24 = load i32, i32* %size12, align 4
  %cmp13 = icmp slt i32 %22, %24
  br i1 %cmp13, label %for.body14, label %for.end54

for.body14:                                       ; preds = %for.cond11
  %25 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node15 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %25, i32 0, i32 3
  %26 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node15, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %27 to i64
  %arrayidx17 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %26, i64 %idxprom16
  %state18 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx17, i32 0, i32 1
  %28 = load i64, i64* %state18, align 8
  %29 = load i32, i32* %target.addr, align 4
  %sh_prom = zext i32 %29 to i64
  %shl19 = shl i64 1, %sh_prom
  %xor = xor i64 %28, %shl19
  %30 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call20 = call i32 @quantum_get_state(i64 %xor, %struct.quantum_reg_struct* byval align 8 %30)
  store i32 %call20, i32* %j, align 4
  %31 = load i32, i32* %j, align 4
  %cmp21 = icmp eq i32 %31, -1
  br i1 %cmp21, label %if.then22, label %if.end51

if.then22:                                        ; preds = %for.body14
  %t23 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %32 = load { float, float }*, { float, float }** %t23, align 8
  %arrayidx24 = getelementptr inbounds { float, float }, { float, float }* %32, i64 1
  %arrayidx24.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx24, i32 0, i32 0
  %arrayidx24.real = load float, float* %arrayidx24.realp, align 4
  %arrayidx24.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx24, i32 0, i32 1
  %arrayidx24.imag = load float, float* %arrayidx24.imagp, align 4
  %cmp.r = fcmp une float %arrayidx24.real, 0.000000e+00
  %cmp.i = fcmp une float %arrayidx24.imag, 0.000000e+00
  %or.ri = or i1 %cmp.r, %cmp.i
  br i1 %or.ri, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.then22
  %33 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node25 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %33, i32 0, i32 3
  %34 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node25, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %35 to i64
  %arrayidx27 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %34, i64 %idxprom26
  %state28 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx27, i32 0, i32 1
  %36 = load i64, i64* %state28, align 8
  %37 = load i32, i32* %target.addr, align 4
  %sh_prom29 = zext i32 %37 to i64
  %shl30 = shl i64 1, %sh_prom29
  %and = and i64 %36, %shl30
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then31, label %if.end33

if.then31:                                        ; preds = %land.lhs.true
  %38 = load i32, i32* %addsize, align 4
  %inc32 = add nsw i32 %38, 1
  store i32 %inc32, i32* %addsize, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %land.lhs.true, %if.then22
  %t34 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %39 = load { float, float }*, { float, float }** %t34, align 8
  %arrayidx35 = getelementptr inbounds { float, float }, { float, float }* %39, i64 2
  %arrayidx35.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx35, i32 0, i32 0
  %arrayidx35.real = load float, float* %arrayidx35.realp, align 4
  %arrayidx35.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx35, i32 0, i32 1
  %arrayidx35.imag = load float, float* %arrayidx35.imagp, align 4
  %cmp.r36 = fcmp une float %arrayidx35.real, 0.000000e+00
  %cmp.i37 = fcmp une float %arrayidx35.imag, 0.000000e+00
  %or.ri38 = or i1 %cmp.r36, %cmp.i37
  br i1 %or.ri38, label %land.lhs.true39, label %if.end50

land.lhs.true39:                                  ; preds = %if.end33
  %40 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node40 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %40, i32 0, i32 3
  %41 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node40, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %42 to i64
  %arrayidx42 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %41, i64 %idxprom41
  %state43 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx42, i32 0, i32 1
  %43 = load i64, i64* %state43, align 8
  %44 = load i32, i32* %target.addr, align 4
  %sh_prom44 = zext i32 %44 to i64
  %shl45 = shl i64 1, %sh_prom44
  %and46 = and i64 %43, %shl45
  %tobool47 = icmp ne i64 %and46, 0
  br i1 %tobool47, label %if.end50, label %if.then48

if.then48:                                        ; preds = %land.lhs.true39
  %45 = load i32, i32* %addsize, align 4
  %inc49 = add nsw i32 %45, 1
  store i32 %inc49, i32* %addsize, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %land.lhs.true39, %if.end33
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %for.body14
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %46 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %46, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond11

for.end54:                                        ; preds = %for.cond11
  %47 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node55 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %47, i32 0, i32 3
  %48 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node55, align 8
  %49 = bitcast %struct.quantum_reg_node_struct* %48 to i8*
  %50 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size56 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %50, i32 0, i32 1
  %51 = load i32, i32* %size56, align 4
  %52 = load i32, i32* %addsize, align 4
  %add = add nsw i32 %51, %52
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 16
  %call57 = call i8* @realloc(i8* %49, i64 %mul) #5
  %53 = bitcast i8* %call57 to %struct.quantum_reg_node_struct*
  %54 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node58 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %54, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %53, %struct.quantum_reg_node_struct** %node58, align 8
  %55 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node59 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %55, i32 0, i32 3
  %56 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node59, align 8
  %tobool60 = icmp ne %struct.quantum_reg_node_struct* %56, null
  br i1 %tobool60, label %if.end65, label %if.then61

if.then61:                                        ; preds = %for.end54
  %57 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size62 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %57, i32 0, i32 1
  %58 = load i32, i32* %size62, align 4
  %59 = load i32, i32* %addsize, align 4
  %add63 = add nsw i32 %58, %59
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i32 %add63)
  call void @exit(i32 1) #9
  unreachable

if.end65:                                         ; preds = %for.end54
  %60 = load i32, i32* %addsize, align 4
  %conv66 = sext i32 %60 to i64
  %mul67 = mul i64 %conv66, 16
  %call68 = call i64 @quantum_memman(i64 %mul67)
  store i32 0, i32* %i, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc84, %if.end65
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %addsize, align 4
  %cmp70 = icmp slt i32 %61, %62
  br i1 %cmp70, label %for.body72, label %for.end86

for.body72:                                       ; preds = %for.cond69
  %63 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node73 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %63, i32 0, i32 3
  %64 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node73, align 8
  %65 = load i32, i32* %i, align 4
  %66 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size74 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %66, i32 0, i32 1
  %67 = load i32, i32* %size74, align 4
  %add75 = add nsw i32 %65, %67
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %64, i64 %idxprom76
  %state78 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx77, i32 0, i32 1
  store i64 0, i64* %state78, align 8
  %68 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node79 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %68, i32 0, i32 3
  %69 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node79, align 8
  %70 = load i32, i32* %i, align 4
  %71 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size80 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %71, i32 0, i32 1
  %72 = load i32, i32* %size80, align 4
  %add81 = add nsw i32 %70, %72
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %69, i64 %idxprom82
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx83, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float 0.000000e+00, float* %amplitude.realp, align 8
  store float 0.000000e+00, float* %amplitude.imagp, align 4
  br label %for.inc84

for.inc84:                                        ; preds = %for.body72
  %73 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %73, 1
  store i32 %inc85, i32* %i, align 4
  br label %for.cond69

for.end86:                                        ; preds = %for.cond69
  %74 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size87 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %74, i32 0, i32 1
  %75 = load i32, i32* %size87, align 4
  %76 = load i32, i32* %addsize, align 4
  %add88 = add nsw i32 %75, %76
  %conv89 = sext i32 %add88 to i64
  %call90 = call noalias i8* @calloc(i64 %conv89, i64 1) #5
  store i8* %call90, i8** %done, align 8
  %77 = load i8*, i8** %done, align 8
  %tobool91 = icmp ne i8* %77, null
  br i1 %tobool91, label %if.end98, label %if.then92

if.then92:                                        ; preds = %for.end86
  %78 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size93 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %78, i32 0, i32 1
  %79 = load i32, i32* %size93, align 4
  %80 = load i32, i32* %addsize, align 4
  %add94 = add nsw i32 %79, %80
  %conv95 = sext i32 %add94 to i64
  %mul96 = mul i64 %conv95, 1
  %call97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0), i64 %mul96)
  call void @exit(i32 1) #9
  unreachable

if.end98:                                         ; preds = %for.end86
  %81 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size99 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %81, i32 0, i32 1
  %82 = load i32, i32* %size99, align 4
  %conv100 = sext i32 %82 to i64
  %83 = load i32, i32* %addsize, align 4
  %conv101 = sext i32 %83 to i64
  %mul102 = mul i64 %conv101, 1
  %add103 = add i64 %conv100, %mul102
  %call104 = call i64 @quantum_memman(i64 %add103)
  %84 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size105 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %84, i32 0, i32 1
  %85 = load i32, i32* %size105, align 4
  store i32 %85, i32* %k, align 4
  %86 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %86, i32 0, i32 0
  %87 = load i32, i32* %width, align 8
  %sh_prom106 = zext i32 %87 to i64
  %shl107 = shl i64 1, %sh_prom106
  %conv108 = uitofp i64 %shl107 to double
  %div = fdiv double 1.000000e+00, %conv108
  %div109 = fdiv double %div, 1.000000e+06
  %conv110 = fptrunc double %div109 to float
  store float %conv110, float* %limit, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond111

for.cond111:                                      ; preds = %for.inc429, %if.end98
  %88 = load i32, i32* %i, align 4
  %89 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size112 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %89, i32 0, i32 1
  %90 = load i32, i32* %size112, align 4
  %cmp113 = icmp slt i32 %88, %90
  br i1 %cmp113, label %for.body115, label %for.end431

for.body115:                                      ; preds = %for.cond111
  %91 = load i8*, i8** %done, align 8
  %92 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %92 to i64
  %arrayidx117 = getelementptr inbounds i8, i8* %91, i64 %idxprom116
  %93 = load i8, i8* %arrayidx117, align 1
  %tobool118 = icmp ne i8 %93, 0
  br i1 %tobool118, label %if.end428, label %if.then119

if.then119:                                       ; preds = %for.body115
  %94 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node120 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %94, i32 0, i32 3
  %95 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node120, align 8
  %96 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %96 to i64
  %arrayidx122 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %95, i64 %idxprom121
  %state123 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx122, i32 0, i32 1
  %97 = load i64, i64* %state123, align 8
  %98 = load i32, i32* %target.addr, align 4
  %sh_prom124 = zext i32 %98 to i64
  %shl125 = shl i64 1, %sh_prom124
  %and126 = and i64 %97, %shl125
  %conv127 = trunc i64 %and126 to i32
  store i32 %conv127, i32* %iset, align 4
  %tnot.realp128 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.imagp129 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  store float 0.000000e+00, float* %tnot.realp128, align 4
  store float 0.000000e+00, float* %tnot.imagp129, align 4
  %99 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node130 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %99, i32 0, i32 3
  %100 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node130, align 8
  %101 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %101 to i64
  %arrayidx132 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %100, i64 %idxprom131
  %state133 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx132, i32 0, i32 1
  %102 = load i64, i64* %state133, align 8
  %103 = load i32, i32* %target.addr, align 4
  %sh_prom134 = zext i32 %103 to i64
  %shl135 = shl i64 1, %sh_prom134
  %xor136 = xor i64 %102, %shl135
  %104 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call137 = call i32 @quantum_get_state(i64 %xor136, %struct.quantum_reg_struct* byval align 8 %104)
  store i32 %call137, i32* %j, align 4
  %105 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node138 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %105, i32 0, i32 3
  %106 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node138, align 8
  %107 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %107 to i64
  %arrayidx140 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %106, i64 %idxprom139
  %amplitude141 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx140, i32 0, i32 0
  %amplitude141.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude141, i32 0, i32 0
  %amplitude141.real = load float, float* %amplitude141.realp, align 8
  %amplitude141.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude141, i32 0, i32 1
  %amplitude141.imag = load float, float* %amplitude141.imagp, align 4
  %t.realp = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.imagp = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  store float %amplitude141.real, float* %t.realp, align 4
  store float %amplitude141.imag, float* %t.imagp, align 4
  %108 = load i32, i32* %j, align 4
  %cmp142 = icmp sge i32 %108, 0
  br i1 %cmp142, label %if.then144, label %if.end151

if.then144:                                       ; preds = %if.then119
  %109 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node145 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %109, i32 0, i32 3
  %110 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node145, align 8
  %111 = load i32, i32* %j, align 4
  %idxprom146 = sext i32 %111 to i64
  %arrayidx147 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %110, i64 %idxprom146
  %amplitude148 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx147, i32 0, i32 0
  %amplitude148.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude148, i32 0, i32 0
  %amplitude148.real = load float, float* %amplitude148.realp, align 8
  %amplitude148.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude148, i32 0, i32 1
  %amplitude148.imag = load float, float* %amplitude148.imagp, align 4
  %tnot.realp149 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.imagp150 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  store float %amplitude148.real, float* %tnot.realp149, align 4
  store float %amplitude148.imag, float* %tnot.imagp150, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then144, %if.then119
  %112 = load i32, i32* %iset, align 4
  %tobool152 = icmp ne i32 %112, 0
  br i1 %tobool152, label %if.then153, label %if.else

if.then153:                                       ; preds = %if.end151
  %t154 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %113 = load { float, float }*, { float, float }** %t154, align 8
  %arrayidx155 = getelementptr inbounds { float, float }, { float, float }* %113, i64 2
  %arrayidx155.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx155, i32 0, i32 0
  %arrayidx155.real = load float, float* %arrayidx155.realp, align 4
  %arrayidx155.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx155, i32 0, i32 1
  %arrayidx155.imag = load float, float* %arrayidx155.imagp, align 4
  %tnot.realp156 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.real = load float, float* %tnot.realp156, align 4
  %tnot.imagp157 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  %tnot.imag = load float, float* %tnot.imagp157, align 4
  %mul_ac = fmul float %arrayidx155.real, %tnot.real
  %mul_bd = fmul float %arrayidx155.imag, %tnot.imag
  %mul_ad = fmul float %arrayidx155.real, %tnot.imag
  %mul_bc = fmul float %arrayidx155.imag, %tnot.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then153
  %isnan_cmp158 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp158, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call159 = call <2 x float> @__mulsc3(float %arrayidx155.real, float %arrayidx155.imag, float %tnot.real, float %tnot.imag) #5
  %114 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call159, <2 x float>* %114, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then153
  %real_mul_phi = phi float [ %mul_r, %if.then153 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then153 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce.imag, %complex_mul_libcall ]
  %t160 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %115 = load { float, float }*, { float, float }** %t160, align 8
  %arrayidx161 = getelementptr inbounds { float, float }, { float, float }* %115, i64 3
  %arrayidx161.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx161, i32 0, i32 0
  %arrayidx161.real = load float, float* %arrayidx161.realp, align 4
  %arrayidx161.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx161, i32 0, i32 1
  %arrayidx161.imag = load float, float* %arrayidx161.imagp, align 4
  %t.realp162 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real = load float, float* %t.realp162, align 4
  %t.imagp163 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag = load float, float* %t.imagp163, align 4
  %mul_ac164 = fmul float %arrayidx161.real, %t.real
  %mul_bd165 = fmul float %arrayidx161.imag, %t.imag
  %mul_ad166 = fmul float %arrayidx161.real, %t.imag
  %mul_bc167 = fmul float %arrayidx161.imag, %t.real
  %mul_r168 = fsub float %mul_ac164, %mul_bd165
  %mul_i169 = fadd float %mul_ad166, %mul_bc167
  %isnan_cmp170 = fcmp uno float %mul_r168, %mul_r168
  br i1 %isnan_cmp170, label %complex_mul_imag_nan171, label %complex_mul_cont176, !prof !1

complex_mul_imag_nan171:                          ; preds = %complex_mul_cont
  %isnan_cmp172 = fcmp uno float %mul_i169, %mul_i169
  br i1 %isnan_cmp172, label %complex_mul_libcall173, label %complex_mul_cont176, !prof !1

complex_mul_libcall173:                           ; preds = %complex_mul_imag_nan171
  %call174 = call <2 x float> @__mulsc3(float %arrayidx161.real, float %arrayidx161.imag, float %t.real, float %t.imag) #5
  %116 = bitcast { float, float }* %coerce175 to <2 x float>*
  store <2 x float> %call174, <2 x float>* %116, align 4
  %coerce175.realp = getelementptr inbounds { float, float }, { float, float }* %coerce175, i32 0, i32 0
  %coerce175.real = load float, float* %coerce175.realp, align 4
  %coerce175.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce175, i32 0, i32 1
  %coerce175.imag = load float, float* %coerce175.imagp, align 4
  br label %complex_mul_cont176

complex_mul_cont176:                              ; preds = %complex_mul_libcall173, %complex_mul_imag_nan171, %complex_mul_cont
  %real_mul_phi177 = phi float [ %mul_r168, %complex_mul_cont ], [ %mul_r168, %complex_mul_imag_nan171 ], [ %coerce175.real, %complex_mul_libcall173 ]
  %imag_mul_phi178 = phi float [ %mul_i169, %complex_mul_cont ], [ %mul_i169, %complex_mul_imag_nan171 ], [ %coerce175.imag, %complex_mul_libcall173 ]
  %add.r = fadd float %real_mul_phi, %real_mul_phi177
  %add.i = fadd float %imag_mul_phi, %imag_mul_phi178
  %117 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node179 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %117, i32 0, i32 3
  %118 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node179, align 8
  %119 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %119 to i64
  %arrayidx181 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %118, i64 %idxprom180
  %amplitude182 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx181, i32 0, i32 0
  %amplitude182.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude182, i32 0, i32 0
  %amplitude182.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude182, i32 0, i32 1
  store float %add.r, float* %amplitude182.realp, align 8
  store float %add.i, float* %amplitude182.imagp, align 4
  br label %if.end231

if.else:                                          ; preds = %if.end151
  %t183 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %120 = load { float, float }*, { float, float }** %t183, align 8
  %arrayidx184 = getelementptr inbounds { float, float }, { float, float }* %120, i64 0
  %arrayidx184.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx184, i32 0, i32 0
  %arrayidx184.real = load float, float* %arrayidx184.realp, align 4
  %arrayidx184.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx184, i32 0, i32 1
  %arrayidx184.imag = load float, float* %arrayidx184.imagp, align 4
  %t.realp185 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real186 = load float, float* %t.realp185, align 4
  %t.imagp187 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag188 = load float, float* %t.imagp187, align 4
  %mul_ac189 = fmul float %arrayidx184.real, %t.real186
  %mul_bd190 = fmul float %arrayidx184.imag, %t.imag188
  %mul_ad191 = fmul float %arrayidx184.real, %t.imag188
  %mul_bc192 = fmul float %arrayidx184.imag, %t.real186
  %mul_r193 = fsub float %mul_ac189, %mul_bd190
  %mul_i194 = fadd float %mul_ad191, %mul_bc192
  %isnan_cmp195 = fcmp uno float %mul_r193, %mul_r193
  br i1 %isnan_cmp195, label %complex_mul_imag_nan196, label %complex_mul_cont201, !prof !1

complex_mul_imag_nan196:                          ; preds = %if.else
  %isnan_cmp197 = fcmp uno float %mul_i194, %mul_i194
  br i1 %isnan_cmp197, label %complex_mul_libcall198, label %complex_mul_cont201, !prof !1

complex_mul_libcall198:                           ; preds = %complex_mul_imag_nan196
  %call199 = call <2 x float> @__mulsc3(float %arrayidx184.real, float %arrayidx184.imag, float %t.real186, float %t.imag188) #5
  %121 = bitcast { float, float }* %coerce200 to <2 x float>*
  store <2 x float> %call199, <2 x float>* %121, align 4
  %coerce200.realp = getelementptr inbounds { float, float }, { float, float }* %coerce200, i32 0, i32 0
  %coerce200.real = load float, float* %coerce200.realp, align 4
  %coerce200.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce200, i32 0, i32 1
  %coerce200.imag = load float, float* %coerce200.imagp, align 4
  br label %complex_mul_cont201

complex_mul_cont201:                              ; preds = %complex_mul_libcall198, %complex_mul_imag_nan196, %if.else
  %real_mul_phi202 = phi float [ %mul_r193, %if.else ], [ %mul_r193, %complex_mul_imag_nan196 ], [ %coerce200.real, %complex_mul_libcall198 ]
  %imag_mul_phi203 = phi float [ %mul_i194, %if.else ], [ %mul_i194, %complex_mul_imag_nan196 ], [ %coerce200.imag, %complex_mul_libcall198 ]
  %t204 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %122 = load { float, float }*, { float, float }** %t204, align 8
  %arrayidx205 = getelementptr inbounds { float, float }, { float, float }* %122, i64 1
  %arrayidx205.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx205, i32 0, i32 0
  %arrayidx205.real = load float, float* %arrayidx205.realp, align 4
  %arrayidx205.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx205, i32 0, i32 1
  %arrayidx205.imag = load float, float* %arrayidx205.imagp, align 4
  %tnot.realp206 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.real207 = load float, float* %tnot.realp206, align 4
  %tnot.imagp208 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  %tnot.imag209 = load float, float* %tnot.imagp208, align 4
  %mul_ac210 = fmul float %arrayidx205.real, %tnot.real207
  %mul_bd211 = fmul float %arrayidx205.imag, %tnot.imag209
  %mul_ad212 = fmul float %arrayidx205.real, %tnot.imag209
  %mul_bc213 = fmul float %arrayidx205.imag, %tnot.real207
  %mul_r214 = fsub float %mul_ac210, %mul_bd211
  %mul_i215 = fadd float %mul_ad212, %mul_bc213
  %isnan_cmp216 = fcmp uno float %mul_r214, %mul_r214
  br i1 %isnan_cmp216, label %complex_mul_imag_nan217, label %complex_mul_cont222, !prof !1

complex_mul_imag_nan217:                          ; preds = %complex_mul_cont201
  %isnan_cmp218 = fcmp uno float %mul_i215, %mul_i215
  br i1 %isnan_cmp218, label %complex_mul_libcall219, label %complex_mul_cont222, !prof !1

complex_mul_libcall219:                           ; preds = %complex_mul_imag_nan217
  %call220 = call <2 x float> @__mulsc3(float %arrayidx205.real, float %arrayidx205.imag, float %tnot.real207, float %tnot.imag209) #5
  %123 = bitcast { float, float }* %coerce221 to <2 x float>*
  store <2 x float> %call220, <2 x float>* %123, align 4
  %coerce221.realp = getelementptr inbounds { float, float }, { float, float }* %coerce221, i32 0, i32 0
  %coerce221.real = load float, float* %coerce221.realp, align 4
  %coerce221.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce221, i32 0, i32 1
  %coerce221.imag = load float, float* %coerce221.imagp, align 4
  br label %complex_mul_cont222

complex_mul_cont222:                              ; preds = %complex_mul_libcall219, %complex_mul_imag_nan217, %complex_mul_cont201
  %real_mul_phi223 = phi float [ %mul_r214, %complex_mul_cont201 ], [ %mul_r214, %complex_mul_imag_nan217 ], [ %coerce221.real, %complex_mul_libcall219 ]
  %imag_mul_phi224 = phi float [ %mul_i215, %complex_mul_cont201 ], [ %mul_i215, %complex_mul_imag_nan217 ], [ %coerce221.imag, %complex_mul_libcall219 ]
  %add.r225 = fadd float %real_mul_phi202, %real_mul_phi223
  %add.i226 = fadd float %imag_mul_phi203, %imag_mul_phi224
  %124 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node227 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %124, i32 0, i32 3
  %125 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node227, align 8
  %126 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %126 to i64
  %arrayidx229 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %125, i64 %idxprom228
  %amplitude230 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx229, i32 0, i32 0
  %amplitude230.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude230, i32 0, i32 0
  %amplitude230.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude230, i32 0, i32 1
  store float %add.r225, float* %amplitude230.realp, align 8
  store float %add.i226, float* %amplitude230.imagp, align 4
  br label %if.end231

if.end231:                                        ; preds = %complex_mul_cont222, %complex_mul_cont176
  %127 = load i32, i32* %j, align 4
  %cmp232 = icmp sge i32 %127, 0
  br i1 %cmp232, label %if.then234, label %if.else335

if.then234:                                       ; preds = %if.end231
  %128 = load i32, i32* %iset, align 4
  %tobool235 = icmp ne i32 %128, 0
  br i1 %tobool235, label %if.then236, label %if.else285

if.then236:                                       ; preds = %if.then234
  %t237 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %129 = load { float, float }*, { float, float }** %t237, align 8
  %arrayidx238 = getelementptr inbounds { float, float }, { float, float }* %129, i64 0
  %arrayidx238.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx238, i32 0, i32 0
  %arrayidx238.real = load float, float* %arrayidx238.realp, align 4
  %arrayidx238.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx238, i32 0, i32 1
  %arrayidx238.imag = load float, float* %arrayidx238.imagp, align 4
  %tnot.realp239 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.real240 = load float, float* %tnot.realp239, align 4
  %tnot.imagp241 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  %tnot.imag242 = load float, float* %tnot.imagp241, align 4
  %mul_ac243 = fmul float %arrayidx238.real, %tnot.real240
  %mul_bd244 = fmul float %arrayidx238.imag, %tnot.imag242
  %mul_ad245 = fmul float %arrayidx238.real, %tnot.imag242
  %mul_bc246 = fmul float %arrayidx238.imag, %tnot.real240
  %mul_r247 = fsub float %mul_ac243, %mul_bd244
  %mul_i248 = fadd float %mul_ad245, %mul_bc246
  %isnan_cmp249 = fcmp uno float %mul_r247, %mul_r247
  br i1 %isnan_cmp249, label %complex_mul_imag_nan250, label %complex_mul_cont255, !prof !1

complex_mul_imag_nan250:                          ; preds = %if.then236
  %isnan_cmp251 = fcmp uno float %mul_i248, %mul_i248
  br i1 %isnan_cmp251, label %complex_mul_libcall252, label %complex_mul_cont255, !prof !1

complex_mul_libcall252:                           ; preds = %complex_mul_imag_nan250
  %call253 = call <2 x float> @__mulsc3(float %arrayidx238.real, float %arrayidx238.imag, float %tnot.real240, float %tnot.imag242) #5
  %130 = bitcast { float, float }* %coerce254 to <2 x float>*
  store <2 x float> %call253, <2 x float>* %130, align 4
  %coerce254.realp = getelementptr inbounds { float, float }, { float, float }* %coerce254, i32 0, i32 0
  %coerce254.real = load float, float* %coerce254.realp, align 4
  %coerce254.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce254, i32 0, i32 1
  %coerce254.imag = load float, float* %coerce254.imagp, align 4
  br label %complex_mul_cont255

complex_mul_cont255:                              ; preds = %complex_mul_libcall252, %complex_mul_imag_nan250, %if.then236
  %real_mul_phi256 = phi float [ %mul_r247, %if.then236 ], [ %mul_r247, %complex_mul_imag_nan250 ], [ %coerce254.real, %complex_mul_libcall252 ]
  %imag_mul_phi257 = phi float [ %mul_i248, %if.then236 ], [ %mul_i248, %complex_mul_imag_nan250 ], [ %coerce254.imag, %complex_mul_libcall252 ]
  %t258 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %131 = load { float, float }*, { float, float }** %t258, align 8
  %arrayidx259 = getelementptr inbounds { float, float }, { float, float }* %131, i64 1
  %arrayidx259.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx259, i32 0, i32 0
  %arrayidx259.real = load float, float* %arrayidx259.realp, align 4
  %arrayidx259.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx259, i32 0, i32 1
  %arrayidx259.imag = load float, float* %arrayidx259.imagp, align 4
  %t.realp260 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real261 = load float, float* %t.realp260, align 4
  %t.imagp262 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag263 = load float, float* %t.imagp262, align 4
  %mul_ac264 = fmul float %arrayidx259.real, %t.real261
  %mul_bd265 = fmul float %arrayidx259.imag, %t.imag263
  %mul_ad266 = fmul float %arrayidx259.real, %t.imag263
  %mul_bc267 = fmul float %arrayidx259.imag, %t.real261
  %mul_r268 = fsub float %mul_ac264, %mul_bd265
  %mul_i269 = fadd float %mul_ad266, %mul_bc267
  %isnan_cmp270 = fcmp uno float %mul_r268, %mul_r268
  br i1 %isnan_cmp270, label %complex_mul_imag_nan271, label %complex_mul_cont276, !prof !1

complex_mul_imag_nan271:                          ; preds = %complex_mul_cont255
  %isnan_cmp272 = fcmp uno float %mul_i269, %mul_i269
  br i1 %isnan_cmp272, label %complex_mul_libcall273, label %complex_mul_cont276, !prof !1

complex_mul_libcall273:                           ; preds = %complex_mul_imag_nan271
  %call274 = call <2 x float> @__mulsc3(float %arrayidx259.real, float %arrayidx259.imag, float %t.real261, float %t.imag263) #5
  %132 = bitcast { float, float }* %coerce275 to <2 x float>*
  store <2 x float> %call274, <2 x float>* %132, align 4
  %coerce275.realp = getelementptr inbounds { float, float }, { float, float }* %coerce275, i32 0, i32 0
  %coerce275.real = load float, float* %coerce275.realp, align 4
  %coerce275.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce275, i32 0, i32 1
  %coerce275.imag = load float, float* %coerce275.imagp, align 4
  br label %complex_mul_cont276

complex_mul_cont276:                              ; preds = %complex_mul_libcall273, %complex_mul_imag_nan271, %complex_mul_cont255
  %real_mul_phi277 = phi float [ %mul_r268, %complex_mul_cont255 ], [ %mul_r268, %complex_mul_imag_nan271 ], [ %coerce275.real, %complex_mul_libcall273 ]
  %imag_mul_phi278 = phi float [ %mul_i269, %complex_mul_cont255 ], [ %mul_i269, %complex_mul_imag_nan271 ], [ %coerce275.imag, %complex_mul_libcall273 ]
  %add.r279 = fadd float %real_mul_phi256, %real_mul_phi277
  %add.i280 = fadd float %imag_mul_phi257, %imag_mul_phi278
  %133 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node281 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %133, i32 0, i32 3
  %134 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node281, align 8
  %135 = load i32, i32* %j, align 4
  %idxprom282 = sext i32 %135 to i64
  %arrayidx283 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %134, i64 %idxprom282
  %amplitude284 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx283, i32 0, i32 0
  %amplitude284.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude284, i32 0, i32 0
  %amplitude284.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude284, i32 0, i32 1
  store float %add.r279, float* %amplitude284.realp, align 8
  store float %add.i280, float* %amplitude284.imagp, align 4
  br label %if.end334

if.else285:                                       ; preds = %if.then234
  %t286 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %136 = load { float, float }*, { float, float }** %t286, align 8
  %arrayidx287 = getelementptr inbounds { float, float }, { float, float }* %136, i64 2
  %arrayidx287.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx287, i32 0, i32 0
  %arrayidx287.real = load float, float* %arrayidx287.realp, align 4
  %arrayidx287.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx287, i32 0, i32 1
  %arrayidx287.imag = load float, float* %arrayidx287.imagp, align 4
  %t.realp288 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real289 = load float, float* %t.realp288, align 4
  %t.imagp290 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag291 = load float, float* %t.imagp290, align 4
  %mul_ac292 = fmul float %arrayidx287.real, %t.real289
  %mul_bd293 = fmul float %arrayidx287.imag, %t.imag291
  %mul_ad294 = fmul float %arrayidx287.real, %t.imag291
  %mul_bc295 = fmul float %arrayidx287.imag, %t.real289
  %mul_r296 = fsub float %mul_ac292, %mul_bd293
  %mul_i297 = fadd float %mul_ad294, %mul_bc295
  %isnan_cmp298 = fcmp uno float %mul_r296, %mul_r296
  br i1 %isnan_cmp298, label %complex_mul_imag_nan299, label %complex_mul_cont304, !prof !1

complex_mul_imag_nan299:                          ; preds = %if.else285
  %isnan_cmp300 = fcmp uno float %mul_i297, %mul_i297
  br i1 %isnan_cmp300, label %complex_mul_libcall301, label %complex_mul_cont304, !prof !1

complex_mul_libcall301:                           ; preds = %complex_mul_imag_nan299
  %call302 = call <2 x float> @__mulsc3(float %arrayidx287.real, float %arrayidx287.imag, float %t.real289, float %t.imag291) #5
  %137 = bitcast { float, float }* %coerce303 to <2 x float>*
  store <2 x float> %call302, <2 x float>* %137, align 4
  %coerce303.realp = getelementptr inbounds { float, float }, { float, float }* %coerce303, i32 0, i32 0
  %coerce303.real = load float, float* %coerce303.realp, align 4
  %coerce303.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce303, i32 0, i32 1
  %coerce303.imag = load float, float* %coerce303.imagp, align 4
  br label %complex_mul_cont304

complex_mul_cont304:                              ; preds = %complex_mul_libcall301, %complex_mul_imag_nan299, %if.else285
  %real_mul_phi305 = phi float [ %mul_r296, %if.else285 ], [ %mul_r296, %complex_mul_imag_nan299 ], [ %coerce303.real, %complex_mul_libcall301 ]
  %imag_mul_phi306 = phi float [ %mul_i297, %if.else285 ], [ %mul_i297, %complex_mul_imag_nan299 ], [ %coerce303.imag, %complex_mul_libcall301 ]
  %t307 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %138 = load { float, float }*, { float, float }** %t307, align 8
  %arrayidx308 = getelementptr inbounds { float, float }, { float, float }* %138, i64 3
  %arrayidx308.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx308, i32 0, i32 0
  %arrayidx308.real = load float, float* %arrayidx308.realp, align 4
  %arrayidx308.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx308, i32 0, i32 1
  %arrayidx308.imag = load float, float* %arrayidx308.imagp, align 4
  %tnot.realp309 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 0
  %tnot.real310 = load float, float* %tnot.realp309, align 4
  %tnot.imagp311 = getelementptr inbounds { float, float }, { float, float }* %tnot, i32 0, i32 1
  %tnot.imag312 = load float, float* %tnot.imagp311, align 4
  %mul_ac313 = fmul float %arrayidx308.real, %tnot.real310
  %mul_bd314 = fmul float %arrayidx308.imag, %tnot.imag312
  %mul_ad315 = fmul float %arrayidx308.real, %tnot.imag312
  %mul_bc316 = fmul float %arrayidx308.imag, %tnot.real310
  %mul_r317 = fsub float %mul_ac313, %mul_bd314
  %mul_i318 = fadd float %mul_ad315, %mul_bc316
  %isnan_cmp319 = fcmp uno float %mul_r317, %mul_r317
  br i1 %isnan_cmp319, label %complex_mul_imag_nan320, label %complex_mul_cont325, !prof !1

complex_mul_imag_nan320:                          ; preds = %complex_mul_cont304
  %isnan_cmp321 = fcmp uno float %mul_i318, %mul_i318
  br i1 %isnan_cmp321, label %complex_mul_libcall322, label %complex_mul_cont325, !prof !1

complex_mul_libcall322:                           ; preds = %complex_mul_imag_nan320
  %call323 = call <2 x float> @__mulsc3(float %arrayidx308.real, float %arrayidx308.imag, float %tnot.real310, float %tnot.imag312) #5
  %139 = bitcast { float, float }* %coerce324 to <2 x float>*
  store <2 x float> %call323, <2 x float>* %139, align 4
  %coerce324.realp = getelementptr inbounds { float, float }, { float, float }* %coerce324, i32 0, i32 0
  %coerce324.real = load float, float* %coerce324.realp, align 4
  %coerce324.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce324, i32 0, i32 1
  %coerce324.imag = load float, float* %coerce324.imagp, align 4
  br label %complex_mul_cont325

complex_mul_cont325:                              ; preds = %complex_mul_libcall322, %complex_mul_imag_nan320, %complex_mul_cont304
  %real_mul_phi326 = phi float [ %mul_r317, %complex_mul_cont304 ], [ %mul_r317, %complex_mul_imag_nan320 ], [ %coerce324.real, %complex_mul_libcall322 ]
  %imag_mul_phi327 = phi float [ %mul_i318, %complex_mul_cont304 ], [ %mul_i318, %complex_mul_imag_nan320 ], [ %coerce324.imag, %complex_mul_libcall322 ]
  %add.r328 = fadd float %real_mul_phi305, %real_mul_phi326
  %add.i329 = fadd float %imag_mul_phi306, %imag_mul_phi327
  %140 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node330 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %140, i32 0, i32 3
  %141 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node330, align 8
  %142 = load i32, i32* %j, align 4
  %idxprom331 = sext i32 %142 to i64
  %arrayidx332 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %141, i64 %idxprom331
  %amplitude333 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx332, i32 0, i32 0
  %amplitude333.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude333, i32 0, i32 0
  %amplitude333.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude333, i32 0, i32 1
  store float %add.r328, float* %amplitude333.realp, align 8
  store float %add.i329, float* %amplitude333.imagp, align 4
  br label %if.end334

if.end334:                                        ; preds = %complex_mul_cont325, %complex_mul_cont276
  br label %if.end421

if.else335:                                       ; preds = %if.end231
  %t336 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %143 = load { float, float }*, { float, float }** %t336, align 8
  %arrayidx337 = getelementptr inbounds { float, float }, { float, float }* %143, i64 1
  %arrayidx337.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx337, i32 0, i32 0
  %arrayidx337.real = load float, float* %arrayidx337.realp, align 4
  %arrayidx337.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx337, i32 0, i32 1
  %arrayidx337.imag = load float, float* %arrayidx337.imagp, align 4
  %cmp.r338 = fcmp oeq float %arrayidx337.real, 0.000000e+00
  %cmp.i339 = fcmp oeq float %arrayidx337.imag, 0.000000e+00
  %and.ri = and i1 %cmp.r338, %cmp.i339
  br i1 %and.ri, label %land.lhs.true341, label %if.end344

land.lhs.true341:                                 ; preds = %if.else335
  %144 = load i32, i32* %iset, align 4
  %tobool342 = icmp ne i32 %144, 0
  br i1 %tobool342, label %if.then343, label %if.end344

if.then343:                                       ; preds = %land.lhs.true341
  br label %for.end431

if.end344:                                        ; preds = %land.lhs.true341, %if.else335
  %t345 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %145 = load { float, float }*, { float, float }** %t345, align 8
  %arrayidx346 = getelementptr inbounds { float, float }, { float, float }* %145, i64 2
  %arrayidx346.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx346, i32 0, i32 0
  %arrayidx346.real = load float, float* %arrayidx346.realp, align 4
  %arrayidx346.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx346, i32 0, i32 1
  %arrayidx346.imag = load float, float* %arrayidx346.imagp, align 4
  %cmp.r347 = fcmp oeq float %arrayidx346.real, 0.000000e+00
  %cmp.i348 = fcmp oeq float %arrayidx346.imag, 0.000000e+00
  %and.ri349 = and i1 %cmp.r347, %cmp.i348
  br i1 %and.ri349, label %land.lhs.true351, label %if.end354

land.lhs.true351:                                 ; preds = %if.end344
  %146 = load i32, i32* %iset, align 4
  %tobool352 = icmp ne i32 %146, 0
  br i1 %tobool352, label %if.end354, label %if.then353

if.then353:                                       ; preds = %land.lhs.true351
  br label %for.end431

if.end354:                                        ; preds = %land.lhs.true351, %if.end344
  %147 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node355 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %147, i32 0, i32 3
  %148 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node355, align 8
  %149 = load i32, i32* %i, align 4
  %idxprom356 = sext i32 %149 to i64
  %arrayidx357 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %148, i64 %idxprom356
  %state358 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx357, i32 0, i32 1
  %150 = load i64, i64* %state358, align 8
  %151 = load i32, i32* %target.addr, align 4
  %sh_prom359 = zext i32 %151 to i64
  %shl360 = shl i64 1, %sh_prom359
  %xor361 = xor i64 %150, %shl360
  %152 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node362 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %152, i32 0, i32 3
  %153 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node362, align 8
  %154 = load i32, i32* %k, align 4
  %idxprom363 = sext i32 %154 to i64
  %arrayidx364 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %153, i64 %idxprom363
  %state365 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx364, i32 0, i32 1
  store i64 %xor361, i64* %state365, align 8
  %155 = load i32, i32* %iset, align 4
  %tobool366 = icmp ne i32 %155, 0
  br i1 %tobool366, label %if.then367, label %if.else393

if.then367:                                       ; preds = %if.end354
  %t368 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %156 = load { float, float }*, { float, float }** %t368, align 8
  %arrayidx369 = getelementptr inbounds { float, float }, { float, float }* %156, i64 1
  %arrayidx369.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx369, i32 0, i32 0
  %arrayidx369.real = load float, float* %arrayidx369.realp, align 4
  %arrayidx369.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx369, i32 0, i32 1
  %arrayidx369.imag = load float, float* %arrayidx369.imagp, align 4
  %t.realp370 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real371 = load float, float* %t.realp370, align 4
  %t.imagp372 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag373 = load float, float* %t.imagp372, align 4
  %mul_ac374 = fmul float %arrayidx369.real, %t.real371
  %mul_bd375 = fmul float %arrayidx369.imag, %t.imag373
  %mul_ad376 = fmul float %arrayidx369.real, %t.imag373
  %mul_bc377 = fmul float %arrayidx369.imag, %t.real371
  %mul_r378 = fsub float %mul_ac374, %mul_bd375
  %mul_i379 = fadd float %mul_ad376, %mul_bc377
  %isnan_cmp380 = fcmp uno float %mul_r378, %mul_r378
  br i1 %isnan_cmp380, label %complex_mul_imag_nan381, label %complex_mul_cont386, !prof !1

complex_mul_imag_nan381:                          ; preds = %if.then367
  %isnan_cmp382 = fcmp uno float %mul_i379, %mul_i379
  br i1 %isnan_cmp382, label %complex_mul_libcall383, label %complex_mul_cont386, !prof !1

complex_mul_libcall383:                           ; preds = %complex_mul_imag_nan381
  %call384 = call <2 x float> @__mulsc3(float %arrayidx369.real, float %arrayidx369.imag, float %t.real371, float %t.imag373) #5
  %157 = bitcast { float, float }* %coerce385 to <2 x float>*
  store <2 x float> %call384, <2 x float>* %157, align 4
  %coerce385.realp = getelementptr inbounds { float, float }, { float, float }* %coerce385, i32 0, i32 0
  %coerce385.real = load float, float* %coerce385.realp, align 4
  %coerce385.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce385, i32 0, i32 1
  %coerce385.imag = load float, float* %coerce385.imagp, align 4
  br label %complex_mul_cont386

complex_mul_cont386:                              ; preds = %complex_mul_libcall383, %complex_mul_imag_nan381, %if.then367
  %real_mul_phi387 = phi float [ %mul_r378, %if.then367 ], [ %mul_r378, %complex_mul_imag_nan381 ], [ %coerce385.real, %complex_mul_libcall383 ]
  %imag_mul_phi388 = phi float [ %mul_i379, %if.then367 ], [ %mul_i379, %complex_mul_imag_nan381 ], [ %coerce385.imag, %complex_mul_libcall383 ]
  %158 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node389 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %158, i32 0, i32 3
  %159 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node389, align 8
  %160 = load i32, i32* %k, align 4
  %idxprom390 = sext i32 %160 to i64
  %arrayidx391 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %159, i64 %idxprom390
  %amplitude392 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx391, i32 0, i32 0
  %amplitude392.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude392, i32 0, i32 0
  %amplitude392.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude392, i32 0, i32 1
  store float %real_mul_phi387, float* %amplitude392.realp, align 8
  store float %imag_mul_phi388, float* %amplitude392.imagp, align 4
  br label %if.end419

if.else393:                                       ; preds = %if.end354
  %t394 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %161 = load { float, float }*, { float, float }** %t394, align 8
  %arrayidx395 = getelementptr inbounds { float, float }, { float, float }* %161, i64 2
  %arrayidx395.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx395, i32 0, i32 0
  %arrayidx395.real = load float, float* %arrayidx395.realp, align 4
  %arrayidx395.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx395, i32 0, i32 1
  %arrayidx395.imag = load float, float* %arrayidx395.imagp, align 4
  %t.realp396 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 0
  %t.real397 = load float, float* %t.realp396, align 4
  %t.imagp398 = getelementptr inbounds { float, float }, { float, float }* %t, i32 0, i32 1
  %t.imag399 = load float, float* %t.imagp398, align 4
  %mul_ac400 = fmul float %arrayidx395.real, %t.real397
  %mul_bd401 = fmul float %arrayidx395.imag, %t.imag399
  %mul_ad402 = fmul float %arrayidx395.real, %t.imag399
  %mul_bc403 = fmul float %arrayidx395.imag, %t.real397
  %mul_r404 = fsub float %mul_ac400, %mul_bd401
  %mul_i405 = fadd float %mul_ad402, %mul_bc403
  %isnan_cmp406 = fcmp uno float %mul_r404, %mul_r404
  br i1 %isnan_cmp406, label %complex_mul_imag_nan407, label %complex_mul_cont412, !prof !1

complex_mul_imag_nan407:                          ; preds = %if.else393
  %isnan_cmp408 = fcmp uno float %mul_i405, %mul_i405
  br i1 %isnan_cmp408, label %complex_mul_libcall409, label %complex_mul_cont412, !prof !1

complex_mul_libcall409:                           ; preds = %complex_mul_imag_nan407
  %call410 = call <2 x float> @__mulsc3(float %arrayidx395.real, float %arrayidx395.imag, float %t.real397, float %t.imag399) #5
  %162 = bitcast { float, float }* %coerce411 to <2 x float>*
  store <2 x float> %call410, <2 x float>* %162, align 4
  %coerce411.realp = getelementptr inbounds { float, float }, { float, float }* %coerce411, i32 0, i32 0
  %coerce411.real = load float, float* %coerce411.realp, align 4
  %coerce411.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce411, i32 0, i32 1
  %coerce411.imag = load float, float* %coerce411.imagp, align 4
  br label %complex_mul_cont412

complex_mul_cont412:                              ; preds = %complex_mul_libcall409, %complex_mul_imag_nan407, %if.else393
  %real_mul_phi413 = phi float [ %mul_r404, %if.else393 ], [ %mul_r404, %complex_mul_imag_nan407 ], [ %coerce411.real, %complex_mul_libcall409 ]
  %imag_mul_phi414 = phi float [ %mul_i405, %if.else393 ], [ %mul_i405, %complex_mul_imag_nan407 ], [ %coerce411.imag, %complex_mul_libcall409 ]
  %163 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node415 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %163, i32 0, i32 3
  %164 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node415, align 8
  %165 = load i32, i32* %k, align 4
  %idxprom416 = sext i32 %165 to i64
  %arrayidx417 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %164, i64 %idxprom416
  %amplitude418 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx417, i32 0, i32 0
  %amplitude418.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude418, i32 0, i32 0
  %amplitude418.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude418, i32 0, i32 1
  store float %real_mul_phi413, float* %amplitude418.realp, align 8
  store float %imag_mul_phi414, float* %amplitude418.imagp, align 4
  br label %if.end419

if.end419:                                        ; preds = %complex_mul_cont412, %complex_mul_cont386
  %166 = load i32, i32* %k, align 4
  %inc420 = add nsw i32 %166, 1
  store i32 %inc420, i32* %k, align 4
  br label %if.end421

if.end421:                                        ; preds = %if.end419, %if.end334
  %167 = load i32, i32* %j, align 4
  %cmp422 = icmp sge i32 %167, 0
  br i1 %cmp422, label %if.then424, label %if.end427

if.then424:                                       ; preds = %if.end421
  %168 = load i8*, i8** %done, align 8
  %169 = load i32, i32* %j, align 4
  %idxprom425 = sext i32 %169 to i64
  %arrayidx426 = getelementptr inbounds i8, i8* %168, i64 %idxprom425
  store i8 1, i8* %arrayidx426, align 1
  br label %if.end427

if.end427:                                        ; preds = %if.then424, %if.end421
  br label %if.end428

if.end428:                                        ; preds = %if.end427, %for.body115
  br label %for.inc429

for.inc429:                                       ; preds = %if.end428
  %170 = load i32, i32* %i, align 4
  %inc430 = add nsw i32 %170, 1
  store i32 %inc430, i32* %i, align 4
  br label %for.cond111

for.end431:                                       ; preds = %if.then353, %if.then343, %for.cond111
  %171 = load i32, i32* %addsize, align 4
  %172 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size432 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %172, i32 0, i32 1
  %173 = load i32, i32* %size432, align 4
  %add433 = add nsw i32 %173, %171
  store i32 %add433, i32* %size432, align 4
  %174 = load i8*, i8** %done, align 8
  call void @free(i8* %174) #5
  %175 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size434 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %175, i32 0, i32 1
  %176 = load i32, i32* %size434, align 4
  %sub = sub nsw i32 0, %176
  %conv435 = sext i32 %sub to i64
  %mul436 = mul i64 %conv435, 1
  %call437 = call i64 @quantum_memman(i64 %mul436)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond438

for.cond438:                                      ; preds = %for.inc477, %for.end431
  %177 = load i32, i32* %i, align 4
  %178 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size439 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %178, i32 0, i32 1
  %179 = load i32, i32* %size439, align 4
  %cmp440 = icmp slt i32 %177, %179
  br i1 %cmp440, label %for.body442, label %for.end479

for.body442:                                      ; preds = %for.cond438
  %180 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node443 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %180, i32 0, i32 3
  %181 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node443, align 8
  %182 = load i32, i32* %i, align 4
  %idxprom444 = sext i32 %182 to i64
  %arrayidx445 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %181, i64 %idxprom444
  %amplitude446 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx445, i32 0, i32 0
  %amplitude446.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude446, i32 0, i32 0
  %amplitude446.real = load float, float* %amplitude446.realp, align 8
  %amplitude446.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude446, i32 0, i32 1
  %amplitude446.imag = load float, float* %amplitude446.imagp, align 4
  %coerce447.realp = getelementptr inbounds { float, float }, { float, float }* %coerce447, i32 0, i32 0
  %coerce447.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce447, i32 0, i32 1
  store float %amplitude446.real, float* %coerce447.realp, align 4
  store float %amplitude446.imag, float* %coerce447.imagp, align 4
  %183 = bitcast { float, float }* %coerce447 to <2 x float>*
  %184 = load <2 x float>, <2 x float>* %183, align 4
  %call448 = call float @quantum_prob_inline.5(<2 x float> %184)
  %185 = load float, float* %limit, align 4
  %cmp449 = fcmp olt float %call448, %185
  br i1 %cmp449, label %if.then451, label %if.else454

if.then451:                                       ; preds = %for.body442
  %186 = load i32, i32* %j, align 4
  %inc452 = add nsw i32 %186, 1
  store i32 %inc452, i32* %j, align 4
  %187 = load i32, i32* %decsize, align 4
  %inc453 = add nsw i32 %187, 1
  store i32 %inc453, i32* %decsize, align 4
  br label %if.end476

if.else454:                                       ; preds = %for.body442
  %188 = load i32, i32* %j, align 4
  %tobool455 = icmp ne i32 %188, 0
  br i1 %tobool455, label %if.then456, label %if.end475

if.then456:                                       ; preds = %if.else454
  %189 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node457 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %189, i32 0, i32 3
  %190 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node457, align 8
  %191 = load i32, i32* %i, align 4
  %idxprom458 = sext i32 %191 to i64
  %arrayidx459 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %190, i64 %idxprom458
  %state460 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx459, i32 0, i32 1
  %192 = load i64, i64* %state460, align 8
  %193 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node461 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %193, i32 0, i32 3
  %194 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node461, align 8
  %195 = load i32, i32* %i, align 4
  %196 = load i32, i32* %j, align 4
  %sub462 = sub nsw i32 %195, %196
  %idxprom463 = sext i32 %sub462 to i64
  %arrayidx464 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %194, i64 %idxprom463
  %state465 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx464, i32 0, i32 1
  store i64 %192, i64* %state465, align 8
  %197 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node466 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %197, i32 0, i32 3
  %198 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node466, align 8
  %199 = load i32, i32* %i, align 4
  %idxprom467 = sext i32 %199 to i64
  %arrayidx468 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %198, i64 %idxprom467
  %amplitude469 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx468, i32 0, i32 0
  %amplitude469.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude469, i32 0, i32 0
  %amplitude469.real = load float, float* %amplitude469.realp, align 8
  %amplitude469.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude469, i32 0, i32 1
  %amplitude469.imag = load float, float* %amplitude469.imagp, align 4
  %200 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node470 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %200, i32 0, i32 3
  %201 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node470, align 8
  %202 = load i32, i32* %i, align 4
  %203 = load i32, i32* %j, align 4
  %sub471 = sub nsw i32 %202, %203
  %idxprom472 = sext i32 %sub471 to i64
  %arrayidx473 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %201, i64 %idxprom472
  %amplitude474 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx473, i32 0, i32 0
  %amplitude474.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude474, i32 0, i32 0
  %amplitude474.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude474, i32 0, i32 1
  store float %amplitude469.real, float* %amplitude474.realp, align 8
  store float %amplitude469.imag, float* %amplitude474.imagp, align 4
  br label %if.end475

if.end475:                                        ; preds = %if.then456, %if.else454
  br label %if.end476

if.end476:                                        ; preds = %if.end475, %if.then451
  br label %for.inc477

for.inc477:                                       ; preds = %if.end476
  %204 = load i32, i32* %i, align 4
  %inc478 = add nsw i32 %204, 1
  store i32 %inc478, i32* %i, align 4
  br label %for.cond438

for.end479:                                       ; preds = %for.cond438
  %205 = load i32, i32* %decsize, align 4
  %tobool480 = icmp ne i32 %205, 0
  br i1 %tobool480, label %if.then481, label %if.end501

if.then481:                                       ; preds = %for.end479
  %206 = load i32, i32* %decsize, align 4
  %207 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size482 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %207, i32 0, i32 1
  %208 = load i32, i32* %size482, align 4
  %sub483 = sub nsw i32 %208, %206
  store i32 %sub483, i32* %size482, align 4
  %209 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node484 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %209, i32 0, i32 3
  %210 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node484, align 8
  %211 = bitcast %struct.quantum_reg_node_struct* %210 to i8*
  %212 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size485 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %212, i32 0, i32 1
  %213 = load i32, i32* %size485, align 4
  %conv486 = sext i32 %213 to i64
  %mul487 = mul i64 %conv486, 16
  %call488 = call i8* @realloc(i8* %211, i64 %mul487) #5
  %214 = bitcast i8* %call488 to %struct.quantum_reg_node_struct*
  %215 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node489 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %215, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %214, %struct.quantum_reg_node_struct** %node489, align 8
  %216 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node490 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %216, i32 0, i32 3
  %217 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node490, align 8
  %tobool491 = icmp ne %struct.quantum_reg_node_struct* %217, null
  br i1 %tobool491, label %if.end496, label %if.then492

if.then492:                                       ; preds = %if.then481
  %218 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size493 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %218, i32 0, i32 1
  %219 = load i32, i32* %size493, align 4
  %220 = load i32, i32* %addsize, align 4
  %add494 = add nsw i32 %219, %220
  %call495 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i32 %add494)
  call void @exit(i32 1) #9
  unreachable

if.end496:                                        ; preds = %if.then481
  %221 = load i32, i32* %decsize, align 4
  %sub497 = sub nsw i32 0, %221
  %conv498 = sext i32 %sub497 to i64
  %mul499 = mul i64 %conv498, 16
  %call500 = call i64 @quantum_memman(i64 %mul499)
  br label %if.end501

if.end501:                                        ; preds = %if.end496, %for.end479
  %222 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %222)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_hadamard(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %m = alloca %struct.quantum_matrix_struct, align 8
  %coerce = alloca %struct.quantum_matrix_struct, align 8
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 6, i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call { i64, { float, float }* } @quantum_new_matrix(i32 2, i32 2)
  %1 = bitcast %struct.quantum_matrix_struct* %coerce to { i64, { float, float }* }*
  %2 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %1, i32 0, i32 0
  %3 = extractvalue { i64, { float, float }* } %call1, 0
  store i64 %3, i64* %2, align 8
  %4 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %1, i32 0, i32 1
  %5 = extractvalue { i64, { float, float }* } %call1, 1
  store { float, float }* %5, { float, float }** %4, align 8
  %6 = bitcast %struct.quantum_matrix_struct* %m to i8*
  %7 = bitcast %struct.quantum_matrix_struct* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  %call2 = call double @sqrt(double 5.000000e-01) #5
  %conv = fptrunc double %call2 to float
  %t = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %8 = load { float, float }*, { float, float }** %t, align 8
  %arrayidx = getelementptr inbounds { float, float }, { float, float }* %8, i64 0
  %arrayidx.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 0
  %arrayidx.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 1
  store float %conv, float* %arrayidx.realp, align 4
  store float 0.000000e+00, float* %arrayidx.imagp, align 4
  %call3 = call double @sqrt(double 5.000000e-01) #5
  %conv4 = fptrunc double %call3 to float
  %t5 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %9 = load { float, float }*, { float, float }** %t5, align 8
  %arrayidx6 = getelementptr inbounds { float, float }, { float, float }* %9, i64 1
  %arrayidx6.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx6, i32 0, i32 0
  %arrayidx6.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx6, i32 0, i32 1
  store float %conv4, float* %arrayidx6.realp, align 4
  store float 0.000000e+00, float* %arrayidx6.imagp, align 4
  %call7 = call double @sqrt(double 5.000000e-01) #5
  %conv8 = fptrunc double %call7 to float
  %t9 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %10 = load { float, float }*, { float, float }** %t9, align 8
  %arrayidx10 = getelementptr inbounds { float, float }, { float, float }* %10, i64 2
  %arrayidx10.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx10, i32 0, i32 0
  %arrayidx10.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx10, i32 0, i32 1
  store float %conv8, float* %arrayidx10.realp, align 4
  store float 0.000000e+00, float* %arrayidx10.imagp, align 4
  %call11 = call double @sqrt(double 5.000000e-01) #5
  %sub = fsub double -0.000000e+00, %call11
  %conv12 = fptrunc double %sub to float
  %t13 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %11 = load { float, float }*, { float, float }** %t13, align 8
  %arrayidx14 = getelementptr inbounds { float, float }, { float, float }* %11, i64 3
  %arrayidx14.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx14, i32 0, i32 0
  %arrayidx14.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx14, i32 0, i32 1
  store float %conv12, float* %arrayidx14.realp, align 4
  store float 0.000000e+00, float* %arrayidx14.imagp, align 4
  %12 = load i32, i32* %target.addr, align 4
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %14 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %15 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %14, i32 0, i32 1
  %18 = load { float, float }*, { float, float }** %17, align 8
  call void @quantum_gate1(i32 %12, i64 %16, { float, float }* %18, %struct.quantum_reg_struct* %13)
  call void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: noinline nounwind uwtable
define void @quantum_walsh(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %2, %struct.quantum_reg_struct* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_r_x(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %m = alloca %struct.quantum_matrix_struct, align 8
  %coerce = alloca %struct.quantum_matrix_struct, align 8
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %1 = load float, float* %gamma.addr, align 4
  %conv = fpext float %1 to double
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 7, i32 %0, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call { i64, { float, float }* } @quantum_new_matrix(i32 2, i32 2)
  %2 = bitcast %struct.quantum_matrix_struct* %coerce to { i64, { float, float }* }*
  %3 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %2, i32 0, i32 0
  %4 = extractvalue { i64, { float, float }* } %call1, 0
  store i64 %4, i64* %3, align 8
  %5 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %2, i32 0, i32 1
  %6 = extractvalue { i64, { float, float }* } %call1, 1
  store { float, float }* %6, { float, float }** %5, align 8
  %7 = bitcast %struct.quantum_matrix_struct* %m to i8*
  %8 = bitcast %struct.quantum_matrix_struct* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %9 = load float, float* %gamma.addr, align 4
  %div = fdiv float %9, 2.000000e+00
  %conv2 = fpext float %div to double
  %call3 = call double @cos(double %conv2) #5
  %conv4 = fptrunc double %call3 to float
  %t = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %10 = load { float, float }*, { float, float }** %t, align 8
  %arrayidx = getelementptr inbounds { float, float }, { float, float }* %10, i64 0
  %arrayidx.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 0
  %arrayidx.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 1
  store float %conv4, float* %arrayidx.realp, align 4
  store float 0.000000e+00, float* %arrayidx.imagp, align 4
  %11 = load float, float* %gamma.addr, align 4
  %div5 = fdiv float %11, 2.000000e+00
  %conv6 = fpext float %div5 to double
  %call7 = call double @sin(double %conv6) #5
  %mul.rl = fmul double -0.000000e+00, %call7
  %mul.il = fmul double -1.000000e+00, %call7
  %conv8 = fptrunc double %mul.rl to float
  %conv9 = fptrunc double %mul.il to float
  %t10 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %12 = load { float, float }*, { float, float }** %t10, align 8
  %arrayidx11 = getelementptr inbounds { float, float }, { float, float }* %12, i64 1
  %arrayidx11.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx11, i32 0, i32 0
  %arrayidx11.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx11, i32 0, i32 1
  store float %conv8, float* %arrayidx11.realp, align 4
  store float %conv9, float* %arrayidx11.imagp, align 4
  %13 = load float, float* %gamma.addr, align 4
  %div12 = fdiv float %13, 2.000000e+00
  %conv13 = fpext float %div12 to double
  %call14 = call double @sin(double %conv13) #5
  %mul.rl15 = fmul double -0.000000e+00, %call14
  %mul.il16 = fmul double -1.000000e+00, %call14
  %conv17 = fptrunc double %mul.rl15 to float
  %conv18 = fptrunc double %mul.il16 to float
  %t19 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %14 = load { float, float }*, { float, float }** %t19, align 8
  %arrayidx20 = getelementptr inbounds { float, float }, { float, float }* %14, i64 2
  %arrayidx20.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx20, i32 0, i32 0
  %arrayidx20.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx20, i32 0, i32 1
  store float %conv17, float* %arrayidx20.realp, align 4
  store float %conv18, float* %arrayidx20.imagp, align 4
  %15 = load float, float* %gamma.addr, align 4
  %div21 = fdiv float %15, 2.000000e+00
  %conv22 = fpext float %div21 to double
  %call23 = call double @cos(double %conv22) #5
  %conv24 = fptrunc double %call23 to float
  %t25 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %16 = load { float, float }*, { float, float }** %t25, align 8
  %arrayidx26 = getelementptr inbounds { float, float }, { float, float }* %16, i64 3
  %arrayidx26.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx26, i32 0, i32 0
  %arrayidx26.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx26, i32 0, i32 1
  store float %conv24, float* %arrayidx26.realp, align 4
  store float 0.000000e+00, float* %arrayidx26.imagp, align 4
  %17 = load i32, i32* %target.addr, align 4
  %18 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %19 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %20 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %19, i32 0, i32 1
  %23 = load { float, float }*, { float, float }** %22, align 8
  call void @quantum_gate1(i32 %17, i64 %21, { float, float }* %23, %struct.quantum_reg_struct* %18)
  call void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_r_y(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %m = alloca %struct.quantum_matrix_struct, align 8
  %coerce = alloca %struct.quantum_matrix_struct, align 8
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %1 = load float, float* %gamma.addr, align 4
  %conv = fpext float %1 to double
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 8, i32 %0, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call { i64, { float, float }* } @quantum_new_matrix(i32 2, i32 2)
  %2 = bitcast %struct.quantum_matrix_struct* %coerce to { i64, { float, float }* }*
  %3 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %2, i32 0, i32 0
  %4 = extractvalue { i64, { float, float }* } %call1, 0
  store i64 %4, i64* %3, align 8
  %5 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %2, i32 0, i32 1
  %6 = extractvalue { i64, { float, float }* } %call1, 1
  store { float, float }* %6, { float, float }** %5, align 8
  %7 = bitcast %struct.quantum_matrix_struct* %m to i8*
  %8 = bitcast %struct.quantum_matrix_struct* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false)
  %9 = load float, float* %gamma.addr, align 4
  %div = fdiv float %9, 2.000000e+00
  %conv2 = fpext float %div to double
  %call3 = call double @cos(double %conv2) #5
  %conv4 = fptrunc double %call3 to float
  %t = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %10 = load { float, float }*, { float, float }** %t, align 8
  %arrayidx = getelementptr inbounds { float, float }, { float, float }* %10, i64 0
  %arrayidx.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 0
  %arrayidx.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 1
  store float %conv4, float* %arrayidx.realp, align 4
  store float 0.000000e+00, float* %arrayidx.imagp, align 4
  %11 = load float, float* %gamma.addr, align 4
  %div5 = fdiv float %11, 2.000000e+00
  %conv6 = fpext float %div5 to double
  %call7 = call double @sin(double %conv6) #5
  %sub = fsub double -0.000000e+00, %call7
  %conv8 = fptrunc double %sub to float
  %t9 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %12 = load { float, float }*, { float, float }** %t9, align 8
  %arrayidx10 = getelementptr inbounds { float, float }, { float, float }* %12, i64 1
  %arrayidx10.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx10, i32 0, i32 0
  %arrayidx10.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx10, i32 0, i32 1
  store float %conv8, float* %arrayidx10.realp, align 4
  store float 0.000000e+00, float* %arrayidx10.imagp, align 4
  %13 = load float, float* %gamma.addr, align 4
  %div11 = fdiv float %13, 2.000000e+00
  %conv12 = fpext float %div11 to double
  %call13 = call double @sin(double %conv12) #5
  %conv14 = fptrunc double %call13 to float
  %t15 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %14 = load { float, float }*, { float, float }** %t15, align 8
  %arrayidx16 = getelementptr inbounds { float, float }, { float, float }* %14, i64 2
  %arrayidx16.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx16, i32 0, i32 0
  %arrayidx16.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx16, i32 0, i32 1
  store float %conv14, float* %arrayidx16.realp, align 4
  store float 0.000000e+00, float* %arrayidx16.imagp, align 4
  %15 = load float, float* %gamma.addr, align 4
  %div17 = fdiv float %15, 2.000000e+00
  %conv18 = fpext float %div17 to double
  %call19 = call double @cos(double %conv18) #5
  %conv20 = fptrunc double %call19 to float
  %t21 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %16 = load { float, float }*, { float, float }** %t21, align 8
  %arrayidx22 = getelementptr inbounds { float, float }, { float, float }* %16, i64 3
  %arrayidx22.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx22, i32 0, i32 0
  %arrayidx22.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx22, i32 0, i32 1
  store float %conv20, float* %arrayidx22.realp, align 4
  store float 0.000000e+00, float* %arrayidx22.imagp, align 4
  %17 = load i32, i32* %target.addr, align 4
  %18 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %19 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %20 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %19, i32 0, i32 1
  %23 = load { float, float }*, { float, float }** %22, align 8
  call void @quantum_gate1(i32 %17, i64 %21, { float, float }* %23, %struct.quantum_reg_struct* %18)
  call void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_r_z(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  %coerce12 = alloca { float, float }, align 4
  %coerce24 = alloca { float, float }, align 4
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %1 = load float, float* %gamma.addr, align 4
  %conv = fpext float %1 to double
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 9, i32 %0, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load float, float* %gamma.addr, align 4
  %div = fdiv float %2, 2.000000e+00
  %call1 = call <2 x float> @quantum_cexp(float %div)
  %3 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call1, <2 x float>* %3, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  %z.realp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.imagp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %z.realp, align 4
  store float %coerce.imag, float* %z.imagp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %7, i32 0, i32 3
  %8 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %8, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %10 = load i64, i64* %state, align 8
  %11 = load i32, i32* %target.addr, align 4
  %sh_prom = zext i32 %11 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %10, %shl
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.body
  %z.realp5 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real = load float, float* %z.realp5, align 4
  %z.imagp6 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag = load float, float* %z.imagp6, align 4
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node7 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %12, i32 0, i32 3
  %13 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node7, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %13, i64 %idxprom8
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx9, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 8
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, %z.real
  %mul_bd = fmul float %amplitude.imag, %z.imag
  %mul_ad = fmul float %amplitude.real, %z.imag
  %mul_bc = fmul float %amplitude.imag, %z.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then4
  %isnan_cmp10 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp10, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call11 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float %z.real, float %z.imag) #5
  %15 = bitcast { float, float }* %coerce12 to <2 x float>*
  store <2 x float> %call11, <2 x float>* %15, align 4
  %coerce12.realp = getelementptr inbounds { float, float }, { float, float }* %coerce12, i32 0, i32 0
  %coerce12.real = load float, float* %coerce12.realp, align 4
  %coerce12.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce12, i32 0, i32 1
  %coerce12.imag = load float, float* %coerce12.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then4
  %real_mul_phi = phi float [ %mul_r, %if.then4 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce12.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then4 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce12.imag, %complex_mul_libcall ]
  %amplitude.realp13 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.imagp14 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %amplitude.realp13, align 8
  store float %imag_mul_phi, float* %amplitude.imagp14, align 4
  br label %if.end27

if.else:                                          ; preds = %for.body
  %z.realp15 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real16 = load float, float* %z.realp15, align 4
  %z.imagp17 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag18 = load float, float* %z.imagp17, align 4
  %16 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node19 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %16, i32 0, i32 3
  %17 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node19, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %17, i64 %idxprom20
  %amplitude22 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx21, i32 0, i32 0
  %amplitude22.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude22, i32 0, i32 0
  %amplitude22.real = load float, float* %amplitude22.realp, align 8
  %amplitude22.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude22, i32 0, i32 1
  %amplitude22.imag = load float, float* %amplitude22.imagp, align 4
  %call23 = call <2 x float> @__divsc3(float %amplitude22.real, float %amplitude22.imag, float %z.real16, float %z.imag18) #5
  %19 = bitcast { float, float }* %coerce24 to <2 x float>*
  store <2 x float> %call23, <2 x float>* %19, align 4
  %coerce24.realp = getelementptr inbounds { float, float }, { float, float }* %coerce24, i32 0, i32 0
  %coerce24.real = load float, float* %coerce24.realp, align 4
  %coerce24.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce24, i32 0, i32 1
  %coerce24.imag = load float, float* %coerce24.imagp, align 4
  %amplitude22.realp25 = getelementptr inbounds { float, float }, { float, float }* %amplitude22, i32 0, i32 0
  %amplitude22.imagp26 = getelementptr inbounds { float, float }, { float, float }* %amplitude22, i32 0, i32 1
  store float %coerce24.real, float* %amplitude22.realp25, align 8
  store float %coerce24.imag, float* %amplitude22.imagp26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else, %complex_mul_cont
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %21)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare <2 x float> @__divsc3(float, float, float, float)

; Function Attrs: noinline nounwind uwtable
define void @quantum_phase_scale(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  %coerce7 = alloca { float, float }, align 4
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %1 = load float, float* %gamma.addr, align 4
  %conv = fpext float %1 to double
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 11, i32 %0, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load float, float* %gamma.addr, align 4
  %call1 = call <2 x float> @quantum_cexp(float %2)
  %3 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call1, <2 x float>* %3, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  %z.realp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.imagp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %z.realp, align 4
  store float %coerce.imag, float* %z.imagp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %z.realp3 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real = load float, float* %z.realp3, align 4
  %z.imagp4 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag = load float, float* %z.imagp4, align 4
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %7, i32 0, i32 3
  %8 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %8, i64 %idxprom
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 8
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, %z.real
  %mul_bd = fmul float %amplitude.imag, %z.imag
  %mul_ad = fmul float %amplitude.real, %z.imag
  %mul_bc = fmul float %amplitude.imag, %z.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %for.body
  %isnan_cmp5 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp5, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call6 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float %z.real, float %z.imag) #5
  %10 = bitcast { float, float }* %coerce7 to <2 x float>*
  store <2 x float> %call6, <2 x float>* %10, align 4
  %coerce7.realp = getelementptr inbounds { float, float }, { float, float }* %coerce7, i32 0, i32 0
  %coerce7.real = load float, float* %coerce7.realp, align 4
  %coerce7.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce7, i32 0, i32 1
  %coerce7.imag = load float, float* %coerce7.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.body
  %real_mul_phi = phi float [ %mul_r, %for.body ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce7.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %for.body ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce7.imag, %complex_mul_libcall ]
  %amplitude.realp8 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.imagp9 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %amplitude.realp8, align 8
  store float %imag_mul_phi, float* %amplitude.imagp9, align 4
  br label %for.inc

for.inc:                                          ; preds = %complex_mul_cont
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %12)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_phase_kick(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  %coerce12 = alloca { float, float }, align 4
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %1 = load float, float* %gamma.addr, align 4
  %conv = fpext float %1 to double
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 10, i32 %0, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load float, float* %gamma.addr, align 4
  %call1 = call <2 x float> @quantum_cexp(float %2)
  %3 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call1, <2 x float>* %3, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  %z.realp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.imagp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %z.realp, align 4
  store float %coerce.imag, float* %z.imagp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %7, i32 0, i32 3
  %8 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %8, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %10 = load i64, i64* %state, align 8
  %11 = load i32, i32* %target.addr, align 4
  %sh_prom = zext i32 %11 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %10, %shl
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.then4, label %if.end15

if.then4:                                         ; preds = %for.body
  %z.realp5 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real = load float, float* %z.realp5, align 4
  %z.imagp6 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag = load float, float* %z.imagp6, align 4
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node7 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %12, i32 0, i32 3
  %13 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node7, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %13, i64 %idxprom8
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx9, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 8
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, %z.real
  %mul_bd = fmul float %amplitude.imag, %z.imag
  %mul_ad = fmul float %amplitude.real, %z.imag
  %mul_bc = fmul float %amplitude.imag, %z.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then4
  %isnan_cmp10 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp10, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call11 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float %z.real, float %z.imag) #5
  %15 = bitcast { float, float }* %coerce12 to <2 x float>*
  store <2 x float> %call11, <2 x float>* %15, align 4
  %coerce12.realp = getelementptr inbounds { float, float }, { float, float }* %coerce12, i32 0, i32 0
  %coerce12.real = load float, float* %coerce12.realp, align 4
  %coerce12.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce12, i32 0, i32 1
  %coerce12.imag = load float, float* %coerce12.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then4
  %real_mul_phi = phi float [ %mul_r, %if.then4 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce12.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then4 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce12.imag, %complex_mul_libcall ]
  %amplitude.realp13 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.imagp14 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %amplitude.realp13, align 8
  store float %imag_mul_phi, float* %amplitude.imagp14, align 4
  br label %if.end15

if.end15:                                         ; preds = %complex_mul_cont, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %17)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_cond_phase(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  %coerce24 = alloca { float, float }, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %control.addr, align 4
  %1 = load i32, i32* %target.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 12, i32 %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %control.addr, align 4
  %3 = load i32, i32* %target.addr, align 4
  %sub = sub nsw i32 %2, %3
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 1, %sh_prom
  %conv = uitofp i64 %shl to double
  %div = fdiv double 0x400921FB54524550, %conv
  %conv1 = fptrunc double %div to float
  %call2 = call <2 x float> @quantum_cexp(float %conv1)
  %4 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call2, <2 x float>* %4, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  %z.realp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.imagp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %z.realp, align 4
  store float %coerce.imag, float* %z.imagp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %8, i32 0, i32 3
  %9 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %9, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %11 = load i64, i64* %state, align 8
  %12 = load i32, i32* %control.addr, align 4
  %sh_prom4 = zext i32 %12 to i64
  %shl5 = shl i64 1, %sh_prom4
  %and = and i64 %11, %shl5
  %tobool6 = icmp ne i64 %and, 0
  br i1 %tobool6, label %if.then7, label %if.end28

if.then7:                                         ; preds = %for.body
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node8 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %13, i32 0, i32 3
  %14 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node8, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %14, i64 %idxprom9
  %state11 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx10, i32 0, i32 1
  %16 = load i64, i64* %state11, align 8
  %17 = load i32, i32* %target.addr, align 4
  %sh_prom12 = zext i32 %17 to i64
  %shl13 = shl i64 1, %sh_prom12
  %and14 = and i64 %16, %shl13
  %tobool15 = icmp ne i64 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.end27

if.then16:                                        ; preds = %if.then7
  %z.realp17 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real = load float, float* %z.realp17, align 4
  %z.imagp18 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag = load float, float* %z.imagp18, align 4
  %18 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node19 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %18, i32 0, i32 3
  %19 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node19, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %19, i64 %idxprom20
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx21, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 8
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, %z.real
  %mul_bd = fmul float %amplitude.imag, %z.imag
  %mul_ad = fmul float %amplitude.real, %z.imag
  %mul_bc = fmul float %amplitude.imag, %z.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then16
  %isnan_cmp22 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp22, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call23 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float %z.real, float %z.imag) #5
  %21 = bitcast { float, float }* %coerce24 to <2 x float>*
  store <2 x float> %call23, <2 x float>* %21, align 4
  %coerce24.realp = getelementptr inbounds { float, float }, { float, float }* %coerce24, i32 0, i32 0
  %coerce24.real = load float, float* %coerce24.realp, align 4
  %coerce24.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce24, i32 0, i32 1
  %coerce24.imag = load float, float* %coerce24.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then16
  %real_mul_phi = phi float [ %mul_r, %if.then16 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce24.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then16 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce24.imag, %complex_mul_libcall ]
  %amplitude.realp25 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.imagp26 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %amplitude.realp25, align 8
  store float %imag_mul_phi, float* %amplitude.imagp26, align 4
  br label %if.end27

if.end27:                                         ; preds = %complex_mul_cont, %if.then7
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %23)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_cond_phase_inv(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  %coerce21 = alloca { float, float }, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %control.addr, align 4
  %1 = load i32, i32* %target.addr, align 4
  %sub = sub nsw i32 %0, %1
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 1, %sh_prom
  %conv = uitofp i64 %shl to double
  %div = fdiv double 0xC00921FB54524550, %conv
  %conv1 = fptrunc double %div to float
  %call = call <2 x float> @quantum_cexp(float %conv1)
  %2 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call, <2 x float>* %2, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  %z.realp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.imagp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %z.realp, align 4
  store float %coerce.imag, float* %z.imagp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 3
  %7 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %7, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %9 = load i64, i64* %state, align 8
  %10 = load i32, i32* %control.addr, align 4
  %sh_prom3 = zext i32 %10 to i64
  %shl4 = shl i64 1, %sh_prom3
  %and = and i64 %9, %shl4
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end24

if.then:                                          ; preds = %for.body
  %11 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node5 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %11, i32 0, i32 3
  %12 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node5, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %12, i64 %idxprom6
  %state8 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 1
  %14 = load i64, i64* %state8, align 8
  %15 = load i32, i32* %target.addr, align 4
  %sh_prom9 = zext i32 %15 to i64
  %shl10 = shl i64 1, %sh_prom9
  %and11 = and i64 %14, %shl10
  %tobool12 = icmp ne i64 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then
  %z.realp14 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real = load float, float* %z.realp14, align 4
  %z.imagp15 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag = load float, float* %z.imagp15, align 4
  %16 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node16 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %16, i32 0, i32 3
  %17 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node16, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %17, i64 %idxprom17
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx18, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 8
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, %z.real
  %mul_bd = fmul float %amplitude.imag, %z.imag
  %mul_ad = fmul float %amplitude.real, %z.imag
  %mul_bc = fmul float %amplitude.imag, %z.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then13
  %isnan_cmp19 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp19, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call20 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float %z.real, float %z.imag) #5
  %19 = bitcast { float, float }* %coerce21 to <2 x float>*
  store <2 x float> %call20, <2 x float>* %19, align 4
  %coerce21.realp = getelementptr inbounds { float, float }, { float, float }* %coerce21, i32 0, i32 0
  %coerce21.real = load float, float* %coerce21.realp, align 4
  %coerce21.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce21, i32 0, i32 1
  %coerce21.imag = load float, float* %coerce21.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then13
  %real_mul_phi = phi float [ %mul_r, %if.then13 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce21.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then13 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce21.imag, %complex_mul_libcall ]
  %amplitude.realp22 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.imagp23 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %amplitude.realp22, align 8
  store float %imag_mul_phi, float* %amplitude.imagp23, align 4
  br label %if.end

if.end:                                           ; preds = %complex_mul_cont, %if.then
  br label %if.end24

if.end24:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %21)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_cond_phase_kick(i32 %control, i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %gamma.addr = alloca float, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %z = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  %coerce21 = alloca { float, float }, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store float %gamma, float* %gamma.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %control.addr, align 4
  %1 = load i32, i32* %target.addr, align 4
  %2 = load float, float* %gamma.addr, align 4
  %conv = fpext float %2 to double
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 12, i32 %0, i32 %1, double %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load float, float* %gamma.addr, align 4
  %call1 = call <2 x float> @quantum_cexp(float %3)
  %4 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call1, <2 x float>* %4, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  %z.realp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.imagp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  store float %coerce.real, float* %z.realp, align 4
  store float %coerce.imag, float* %z.imagp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %8, i32 0, i32 3
  %9 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %9, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %11 = load i64, i64* %state, align 8
  %12 = load i32, i32* %control.addr, align 4
  %sh_prom = zext i32 %12 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %11, %shl
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.then4, label %if.end25

if.then4:                                         ; preds = %for.body
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node5 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %13, i32 0, i32 3
  %14 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node5, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %14, i64 %idxprom6
  %state8 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx7, i32 0, i32 1
  %16 = load i64, i64* %state8, align 8
  %17 = load i32, i32* %target.addr, align 4
  %sh_prom9 = zext i32 %17 to i64
  %shl10 = shl i64 1, %sh_prom9
  %and11 = and i64 %16, %shl10
  %tobool12 = icmp ne i64 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.end24

if.then13:                                        ; preds = %if.then4
  %z.realp14 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real = load float, float* %z.realp14, align 4
  %z.imagp15 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag = load float, float* %z.imagp15, align 4
  %18 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node16 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %18, i32 0, i32 3
  %19 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node16, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %19, i64 %idxprom17
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx18, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 8
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %mul_ac = fmul float %amplitude.real, %z.real
  %mul_bd = fmul float %amplitude.imag, %z.imag
  %mul_ad = fmul float %amplitude.real, %z.imag
  %mul_bc = fmul float %amplitude.imag, %z.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then13
  %isnan_cmp19 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp19, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call20 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float %z.real, float %z.imag) #5
  %21 = bitcast { float, float }* %coerce21 to <2 x float>*
  store <2 x float> %call20, <2 x float>* %21, align 4
  %coerce21.realp = getelementptr inbounds { float, float }, { float, float }* %coerce21, i32 0, i32 0
  %coerce21.real = load float, float* %coerce21.realp, align 4
  %coerce21.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce21, i32 0, i32 1
  %coerce21.imag = load float, float* %coerce21.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then13
  %real_mul_phi = phi float [ %mul_r, %if.then13 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce21.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then13 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce21.imag, %complex_mul_libcall ]
  %amplitude.realp22 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.imagp23 = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %real_mul_phi, float* %amplitude.realp22, align 8
  store float %imag_mul_phi, float* %amplitude.imagp23, align 4
  br label %if.end24

if.end24:                                         ; preds = %complex_mul_cont, %if.then4
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %23)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @quantum_gate_counter(i32 %inc) #0 {
entry:
  %inc.addr = alloca i32, align 4
  store i32 %inc, i32* %inc.addr, align 4
  %0 = load i32, i32* %inc.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %inc.addr, align 4
  %2 = load i32, i32* @quantum_gate_counter.counter, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* @quantum_gate_counter.counter, align 4
  br label %if.end3

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %inc.addr, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  store i32 0, i32* @quantum_gate_counter.counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %4 = load i32, i32* @quantum_gate_counter.counter, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define i64 @quantum_memman(i64 %change) #0 {
entry:
  %change.addr = alloca i64, align 8
  store i64 %change, i64* %change.addr, align 8
  %0 = load i64, i64* %change.addr, align 8
  %1 = load i64, i64* @quantum_memman.mem, align 8
  %add = add nsw i64 %1, %0
  store i64 %add, i64* @quantum_memman.mem, align 8
  %2 = load i64, i64* @quantum_memman.mem, align 8
  %3 = load i64, i64* @quantum_memman.max, align 8
  %cmp = icmp sgt i64 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* @quantum_memman.mem, align 8
  store i64 %4, i64* @quantum_memman.max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* @quantum_memman.mem, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define { i64, { float, float }* } @quantum_new_matrix(i32 %cols, i32 %rows) #0 {
entry:
  %retval = alloca %struct.quantum_matrix_struct, align 8
  %cols.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %m = alloca %struct.quantum_matrix_struct, align 8
  store i32 %cols, i32* %cols.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %rows1 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 0
  store i32 %0, i32* %rows1, align 8
  %1 = load i32, i32* %cols.addr, align 4
  %cols2 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 1
  store i32 %1, i32* %cols2, align 4
  %2 = load i32, i32* %cols.addr, align 4
  %3 = load i32, i32* %rows.addr, align 4
  %mul = mul nsw i32 %2, %3
  %conv = sext i32 %mul to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #5
  %4 = bitcast i8* %call to { float, float }*
  %t = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  store { float, float }* %4, { float, float }** %t, align 8
  %t3 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %5 = load { float, float }*, { float, float }** %t3, align 8
  %tobool = icmp ne { float, float }* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %rows.addr, align 4
  %7 = load i32, i32* %cols.addr, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i32 0, i32 0), i32 %6, i32 %7)
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %cols.addr, align 4
  %conv5 = sext i32 %8 to i64
  %mul6 = mul i64 8, %conv5
  %9 = load i32, i32* %rows.addr, align 4
  %conv7 = sext i32 %9 to i64
  %mul8 = mul i64 %mul6, %conv7
  %call9 = call i64 @quantum_memman(i64 %mul8)
  %10 = bitcast %struct.quantum_matrix_struct* %retval to i8*
  %11 = bitcast %struct.quantum_matrix_struct* %m to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false)
  %12 = bitcast %struct.quantum_matrix_struct* %retval to { i64, { float, float }* }*
  %13 = load { i64, { float, float }* }, { i64, { float, float }* }* %12, align 8
  ret { i64, { float, float }* } %13
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m) #0 {
entry:
  %m.addr = alloca %struct.quantum_matrix_struct*, align 8
  store %struct.quantum_matrix_struct* %m, %struct.quantum_matrix_struct** %m.addr, align 8
  %0 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %t = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %0, i32 0, i32 2
  %1 = load { float, float }*, { float, float }** %t, align 8
  %2 = bitcast { float, float }* %1 to i8*
  call void @free(i8* %2) #5
  %3 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %cols = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %cols, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 -8, %conv
  %5 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %rows = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %5, i32 0, i32 0
  %6 = load i32, i32* %rows, align 8
  %conv1 = sext i32 %6 to i64
  %mul2 = mul i64 %mul, %conv1
  %call = call i64 @quantum_memman(i64 %mul2)
  %7 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %t3 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %7, i32 0, i32 2
  store { float, float }* null, { float, float }** %t3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_print_matrix(i64 %m.coerce0, { float, float }* %m.coerce1) #0 {
entry:
  %m = alloca %struct.quantum_matrix_struct, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %z = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %coerce13 = alloca { float, float }, align 4
  %0 = bitcast %struct.quantum_matrix_struct* %m to { i64, { float, float }* }*
  %1 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %0, i32 0, i32 0
  store i64 %m.coerce0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %0, i32 0, i32 1
  store { float, float }* %m.coerce1, { float, float }** %2, align 8
  store i32 0, i32* %z, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %z, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %z, align 4
  %shl = shl i32 1, %3
  %rows = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 0
  %4 = load i32, i32* %rows, align 8
  %cmp = icmp slt i32 %shl, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %z, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %z, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %while.end
  %6 = load i32, i32* %i, align 4
  %rows1 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 0
  %7 = load i32, i32* %rows1, align 8
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %cols = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 1
  %9 = load i32, i32* %cols, align 4
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %t = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %10 = load { float, float }*, { float, float }** %t, align 8
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %i, align 4
  %cols6 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 1
  %13 = load i32, i32* %cols6, align 4
  %mul = mul nsw i32 %12, %13
  %add = add nsw i32 %11, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds { float, float }, { float, float }* %10, i64 %idxprom
  %arrayidx.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 0
  %arrayidx.real = load float, float* %arrayidx.realp, align 4
  %arrayidx.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 1
  %arrayidx.imag = load float, float* %arrayidx.imagp, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %arrayidx.real, float* %coerce.realp, align 4
  store float %arrayidx.imag, float* %coerce.imagp, align 4
  %14 = bitcast { float, float }* %coerce to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 4
  %call = call float @quantum_real.17(<2 x float> %15)
  %conv = fpext float %call to double
  %t7 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %16 = load { float, float }*, { float, float }** %t7, align 8
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %i, align 4
  %cols8 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 1
  %19 = load i32, i32* %cols8, align 4
  %mul9 = mul nsw i32 %18, %19
  %add10 = add nsw i32 %17, %mul9
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds { float, float }, { float, float }* %16, i64 %idxprom11
  %arrayidx12.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx12, i32 0, i32 0
  %arrayidx12.real = load float, float* %arrayidx12.realp, align 4
  %arrayidx12.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx12, i32 0, i32 1
  %arrayidx12.imag = load float, float* %arrayidx12.imagp, align 4
  %coerce13.realp = getelementptr inbounds { float, float }, { float, float }* %coerce13, i32 0, i32 0
  %coerce13.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce13, i32 0, i32 1
  store float %arrayidx12.real, float* %coerce13.realp, align 4
  store float %arrayidx12.imag, float* %coerce13.imagp, align 4
  %20 = bitcast { float, float }* %coerce13 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 4
  %call14 = call float @quantum_imag.18(<2 x float> %21)
  %conv15 = fpext float %call14 to double
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.19, i32 0, i32 0), double %conv, double %conv15)
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %22 = load i32, i32* %j, align 4
  %inc17 = add nsw i32 %22, 1
  store i32 %inc17, i32* %j, align 4
  br label %for.cond3

for.end:                                          ; preds = %for.cond3
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.20, i32 0, i32 0))
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %23, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond

for.end21:                                        ; preds = %for.cond
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.20, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal float @quantum_real.17(<2 x float> %a.coerce) #0 {
entry:
  %a = alloca { float, float }, align 4
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 4
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float*, float** %p, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 0
  %3 = load float, float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: noinline nounwind uwtable
define internal float @quantum_imag.18(<2 x float> %a.coerce) #0 {
entry:
  %a = alloca { float, float }, align 4
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 4
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float*, float** %p, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 1
  %3 = load float, float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: noinline nounwind uwtable
define double @quantum_frand() #0 {
entry:
  %call = call double @spec_rand()
  ret double %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @quantum_measure(%struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %retval = alloca i64, align 8
  %r = alloca double, align 8
  %i = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext -128)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call double @quantum_frand()
  store double %call1, double* %r, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, i32* %i, align 4
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %1 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %2 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %2, i64 %idxprom
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 8
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %coerce.realp, align 4
  store float %amplitude.imag, float* %coerce.imagp, align 4
  %4 = bitcast { float, float }* %coerce to <2 x float>*
  %5 = load <2 x float>, <2 x float>* %4, align 4
  %call2 = call float @quantum_prob_inline.23(<2 x float> %5)
  %conv = fpext float %call2 to double
  %6 = load double, double* %r, align 8
  %sub = fsub double %6, %conv
  store double %sub, double* %r, align 8
  %7 = load double, double* %r, align 8
  %cmp3 = fcmp oge double 0.000000e+00, %7
  br i1 %cmp3, label %if.then5, label %if.end9

if.then5:                                         ; preds = %for.body
  %node6 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %8 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node6, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %8, i64 %idxprom7
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx8, i32 0, i32 1
  %10 = load i64, i64* %state, align 8
  store i64 %10, i64* %retval, align 8
  br label %return

if.end9:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 -1, i64* %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then5, %if.then
  %12 = load i64, i64* %retval, align 8
  ret i64 %12
}

; Function Attrs: noinline nounwind uwtable
define internal float @quantum_prob_inline.23(<2 x float> %a.coerce) #0 {
entry:
  %a = alloca { float, float }, align 4
  %r = alloca float, align 4
  %i = alloca float, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 4
  %a.realp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real = load float, float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag = load float, float* %a.imagp, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %a.real, float* %coerce.realp, align 4
  store float %a.imag, float* %coerce.imagp, align 4
  %1 = bitcast { float, float }* %coerce to <2 x float>*
  %2 = load <2 x float>, <2 x float>* %1, align 4
  %call = call float @quantum_real.24(<2 x float> %2)
  store float %call, float* %r, align 4
  %a.realp1 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real2 = load float, float* %a.realp1, align 4
  %a.imagp3 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag4 = load float, float* %a.imagp3, align 4
  %coerce5.realp = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 0
  %coerce5.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 1
  store float %a.real2, float* %coerce5.realp, align 4
  store float %a.imag4, float* %coerce5.imagp, align 4
  %3 = bitcast { float, float }* %coerce5 to <2 x float>*
  %4 = load <2 x float>, <2 x float>* %3, align 4
  %call6 = call float @quantum_imag.25(<2 x float> %4)
  store float %call6, float* %i, align 4
  %5 = load float, float* %r, align 4
  %6 = load float, float* %r, align 4
  %mul = fmul float %5, %6
  %7 = load float, float* %i, align 4
  %8 = load float, float* %i, align 4
  %mul7 = fmul float %7, %8
  %add = fadd float %mul, %mul7
  ret float %add
}

; Function Attrs: noinline nounwind uwtable
define internal float @quantum_real.24(<2 x float> %a.coerce) #0 {
entry:
  %a = alloca { float, float }, align 4
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 4
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float*, float** %p, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 0
  %3 = load float, float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: noinline nounwind uwtable
define internal float @quantum_imag.25(<2 x float> %a.coerce) #0 {
entry:
  %a = alloca { float, float }, align 4
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 4
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float*, float** %p, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 1
  %3 = load float, float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: noinline nounwind uwtable
define i32 @quantum_bmeasure(i32 %pos, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  %pa = alloca double, align 8
  %r = alloca double, align 8
  %pos2 = alloca i64, align 8
  %out = alloca %struct.quantum_reg_struct, align 8
  %coerce = alloca { float, float }, align 4
  %tmp = alloca %struct.quantum_reg_struct, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %result, align 4
  store double 0.000000e+00, double* %pa, align 8
  %0 = load i32, i32* %pos.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext -127, i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %pos2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 3
  %6 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %6, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %8 = load i64, i64* %state, align 8
  %9 = load i64, i64* %pos2, align 8
  %and = and i64 %8, %9
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %if.end7, label %if.then2

if.then2:                                         ; preds = %for.body
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node3 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %10, i32 0, i32 3
  %11 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node3, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %11, i64 %idxprom4
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 8
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %coerce.realp, align 4
  store float %amplitude.imag, float* %coerce.imagp, align 4
  %13 = bitcast { float, float }* %coerce to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 4
  %call6 = call float @quantum_prob_inline.23(<2 x float> %14)
  %conv = fpext float %call6 to double
  %15 = load double, double* %pa, align 8
  %add = fadd double %15, %conv
  store double %add, double* %pa, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call8 = call double @quantum_frand()
  store double %call8, double* %r, align 8
  %17 = load double, double* %r, align 8
  %18 = load double, double* %pa, align 8
  %cmp9 = fcmp ogt double %17, %18
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  store i32 1, i32* %result, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %for.end
  %19 = load i32, i32* %pos.addr, align 4
  %20 = load i32, i32* %result, align 4
  %21 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_state_collapse(%struct.quantum_reg_struct* sret %tmp, i32 %19, i32 %20, %struct.quantum_reg_struct* byval align 8 %21)
  %22 = bitcast %struct.quantum_reg_struct* %out to i8*
  %23 = bitcast %struct.quantum_reg_struct* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 8, i1 false)
  %24 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_delete_qureg_hashpreserve(%struct.quantum_reg_struct* %24)
  %25 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %26 = bitcast %struct.quantum_reg_struct* %25 to i8*
  %27 = bitcast %struct.quantum_reg_struct* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  %28 = load i32, i32* %result, align 4
  store i32 %28, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define i32 @quantum_bmeasure_bitpreserve(i32 %pos, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %size = alloca i32, align 4
  %result = alloca i32, align 4
  %d = alloca double, align 8
  %pa = alloca double, align 8
  %r = alloca double, align 8
  %pos2 = alloca i64, align 8
  %out = alloca %struct.quantum_reg_struct, align 8
  %coerce = alloca { float, float }, align 4
  %coerce36 = alloca { float, float }, align 4
  %coerce54 = alloca { float, float }, align 4
  %coerce105 = alloca { float, float }, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %size, align 4
  store i32 0, i32* %result, align 4
  store double 0.000000e+00, double* %d, align 8
  store double 0.000000e+00, double* %pa, align 8
  %0 = load i32, i32* %pos.addr, align 4
  %call = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext -126, i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %pos2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %size1, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 3
  %6 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %6, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %8 = load i64, i64* %state, align 8
  %9 = load i64, i64* %pos2, align 8
  %and = and i64 %8, %9
  %tobool2 = icmp ne i64 %and, 0
  br i1 %tobool2, label %if.end8, label %if.then3

if.then3:                                         ; preds = %for.body
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node4 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %10, i32 0, i32 3
  %11 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node4, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %11, i64 %idxprom5
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx6, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 8
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %coerce.realp, align 4
  store float %amplitude.imag, float* %coerce.imagp, align 4
  %13 = bitcast { float, float }* %coerce to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 4
  %call7 = call float @quantum_prob_inline.23(<2 x float> %14)
  %conv = fpext float %call7 to double
  %15 = load double, double* %pa, align 8
  %add = fadd double %15, %conv
  store double %add, double* %pa, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = call double @quantum_frand()
  store double %call9, double* %r, align 8
  %17 = load double, double* %r, align 8
  %18 = load double, double* %pa, align 8
  %cmp10 = fcmp ogt double %17, %18
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  store i32 1, i32* %result, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc61, %if.end13
  %19 = load i32, i32* %i, align 4
  %20 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size15 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %20, i32 0, i32 1
  %21 = load i32, i32* %size15, align 4
  %cmp16 = icmp slt i32 %19, %21
  br i1 %cmp16, label %for.body18, label %for.end63

for.body18:                                       ; preds = %for.cond14
  %22 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node19 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %22, i32 0, i32 3
  %23 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node19, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %24 to i64
  %arrayidx21 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %23, i64 %idxprom20
  %state22 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx21, i32 0, i32 1
  %25 = load i64, i64* %state22, align 8
  %26 = load i64, i64* %pos2, align 8
  %and23 = and i64 %25, %26
  %tobool24 = icmp ne i64 %and23, 0
  br i1 %tobool24, label %if.then25, label %if.else42

if.then25:                                        ; preds = %for.body18
  %27 = load i32, i32* %result, align 4
  %tobool26 = icmp ne i32 %27, 0
  br i1 %tobool26, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.then25
  %28 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node28 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %28, i32 0, i32 3
  %29 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node28, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %29, i64 %idxprom29
  %amplitude31 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx30, i32 0, i32 0
  %amplitude31.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude31, i32 0, i32 0
  %amplitude31.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude31, i32 0, i32 1
  store float 0.000000e+00, float* %amplitude31.realp, align 8
  store float 0.000000e+00, float* %amplitude31.imagp, align 4
  br label %if.end41

if.else:                                          ; preds = %if.then25
  %31 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node32 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %31, i32 0, i32 3
  %32 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node32, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %33 to i64
  %arrayidx34 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %32, i64 %idxprom33
  %amplitude35 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx34, i32 0, i32 0
  %amplitude35.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude35, i32 0, i32 0
  %amplitude35.real = load float, float* %amplitude35.realp, align 8
  %amplitude35.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude35, i32 0, i32 1
  %amplitude35.imag = load float, float* %amplitude35.imagp, align 4
  %coerce36.realp = getelementptr inbounds { float, float }, { float, float }* %coerce36, i32 0, i32 0
  %coerce36.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce36, i32 0, i32 1
  store float %amplitude35.real, float* %coerce36.realp, align 4
  store float %amplitude35.imag, float* %coerce36.imagp, align 4
  %34 = bitcast { float, float }* %coerce36 to <2 x float>*
  %35 = load <2 x float>, <2 x float>* %34, align 4
  %call37 = call float @quantum_prob_inline.23(<2 x float> %35)
  %conv38 = fpext float %call37 to double
  %36 = load double, double* %d, align 8
  %add39 = fadd double %36, %conv38
  store double %add39, double* %d, align 8
  %37 = load i32, i32* %size, align 4
  %inc40 = add nsw i32 %37, 1
  store i32 %inc40, i32* %size, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then27
  br label %if.end60

if.else42:                                        ; preds = %for.body18
  %38 = load i32, i32* %result, align 4
  %tobool43 = icmp ne i32 %38, 0
  br i1 %tobool43, label %if.then44, label %if.else49

if.then44:                                        ; preds = %if.else42
  %39 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node45 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %39, i32 0, i32 3
  %40 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node45, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %41 to i64
  %arrayidx47 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %40, i64 %idxprom46
  %amplitude48 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx47, i32 0, i32 0
  %amplitude48.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude48, i32 0, i32 0
  %amplitude48.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude48, i32 0, i32 1
  store float 0.000000e+00, float* %amplitude48.realp, align 8
  store float 0.000000e+00, float* %amplitude48.imagp, align 4
  br label %if.end59

if.else49:                                        ; preds = %if.else42
  %42 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node50 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %42, i32 0, i32 3
  %43 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node50, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %44 to i64
  %arrayidx52 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %43, i64 %idxprom51
  %amplitude53 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx52, i32 0, i32 0
  %amplitude53.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude53, i32 0, i32 0
  %amplitude53.real = load float, float* %amplitude53.realp, align 8
  %amplitude53.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude53, i32 0, i32 1
  %amplitude53.imag = load float, float* %amplitude53.imagp, align 4
  %coerce54.realp = getelementptr inbounds { float, float }, { float, float }* %coerce54, i32 0, i32 0
  %coerce54.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce54, i32 0, i32 1
  store float %amplitude53.real, float* %coerce54.realp, align 4
  store float %amplitude53.imag, float* %coerce54.imagp, align 4
  %45 = bitcast { float, float }* %coerce54 to <2 x float>*
  %46 = load <2 x float>, <2 x float>* %45, align 4
  %call55 = call float @quantum_prob_inline.23(<2 x float> %46)
  %conv56 = fpext float %call55 to double
  %47 = load double, double* %d, align 8
  %add57 = fadd double %47, %conv56
  store double %add57, double* %d, align 8
  %48 = load i32, i32* %size, align 4
  %inc58 = add nsw i32 %48, 1
  store i32 %inc58, i32* %size, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else49, %if.then44
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end41
  br label %for.inc61

for.inc61:                                        ; preds = %if.end60
  %49 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %49, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond14

for.end63:                                        ; preds = %for.cond14
  %50 = load i32, i32* %size, align 4
  %size64 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 1
  store i32 %50, i32* %size64, align 4
  %51 = load i32, i32* %size, align 4
  %conv65 = sext i32 %51 to i64
  %call66 = call noalias i8* @calloc(i64 %conv65, i64 16) #5
  %52 = bitcast i8* %call66 to %struct.quantum_reg_node_struct*
  %node67 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %52, %struct.quantum_reg_node_struct** %node67, align 8
  %node68 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 3
  %53 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node68, align 8
  %tobool69 = icmp ne %struct.quantum_reg_node_struct* %53, null
  br i1 %tobool69, label %if.end72, label %if.then70

if.then70:                                        ; preds = %for.end63
  %54 = load i32, i32* %size, align 4
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i32 0, i32 0), i32 %54)
  call void @exit(i32 1) #9
  unreachable

if.end72:                                         ; preds = %for.end63
  %55 = load i32, i32* %size, align 4
  %conv73 = sext i32 %55 to i64
  %mul = mul i64 %conv73, 16
  %call74 = call i64 @quantum_memman(i64 %mul)
  %56 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %56, i32 0, i32 2
  %57 = load i32, i32* %hashw, align 8
  %hashw75 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 2
  store i32 %57, i32* %hashw75, align 8
  %58 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %58, i32 0, i32 4
  %59 = load i32*, i32** %hash, align 8
  %hash76 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 4
  store i32* %59, i32** %hash76, align 8
  %60 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %60, i32 0, i32 0
  %61 = load i32, i32* %width, align 8
  %width77 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 0
  store i32 %61, i32* %width77, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc114, %if.end72
  %62 = load i32, i32* %i, align 4
  %63 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size79 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %63, i32 0, i32 1
  %64 = load i32, i32* %size79, align 4
  %cmp80 = icmp slt i32 %62, %64
  br i1 %cmp80, label %for.body82, label %for.end116

for.body82:                                       ; preds = %for.cond78
  %65 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node83 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %65, i32 0, i32 3
  %66 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node83, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %67 to i64
  %arrayidx85 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %66, i64 %idxprom84
  %amplitude86 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx85, i32 0, i32 0
  %amplitude86.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude86, i32 0, i32 0
  %amplitude86.real = load float, float* %amplitude86.realp, align 8
  %amplitude86.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude86, i32 0, i32 1
  %amplitude86.imag = load float, float* %amplitude86.imagp, align 4
  %tobool87 = fcmp une float %amplitude86.real, 0.000000e+00
  %tobool88 = fcmp une float %amplitude86.imag, 0.000000e+00
  %tobool89 = or i1 %tobool87, %tobool88
  br i1 %tobool89, label %if.then90, label %if.end113

if.then90:                                        ; preds = %for.body82
  %68 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node91 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %68, i32 0, i32 3
  %69 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node91, align 8
  %70 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %70 to i64
  %arrayidx93 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %69, i64 %idxprom92
  %state94 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx93, i32 0, i32 1
  %71 = load i64, i64* %state94, align 8
  %node95 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 3
  %72 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node95, align 8
  %73 = load i32, i32* %j, align 4
  %idxprom96 = sext i32 %73 to i64
  %arrayidx97 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %72, i64 %idxprom96
  %state98 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx97, i32 0, i32 1
  store i64 %71, i64* %state98, align 8
  %74 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node99 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %74, i32 0, i32 3
  %75 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node99, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %76 to i64
  %arrayidx101 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %75, i64 %idxprom100
  %amplitude102 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx101, i32 0, i32 0
  %amplitude102.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude102, i32 0, i32 0
  %amplitude102.real = load float, float* %amplitude102.realp, align 8
  %amplitude102.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude102, i32 0, i32 1
  %amplitude102.imag = load float, float* %amplitude102.imagp, align 4
  %mul_ac = fmul float %amplitude102.real, 1.000000e+00
  %mul_bd = fmul float %amplitude102.imag, 0.000000e+00
  %mul_ad = fmul float %amplitude102.real, 0.000000e+00
  %mul_bc = fmul float %amplitude102.imag, 1.000000e+00
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then90
  %isnan_cmp103 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp103, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call104 = call <2 x float> @__mulsc3(float %amplitude102.real, float %amplitude102.imag, float 1.000000e+00, float 0.000000e+00) #5
  %77 = bitcast { float, float }* %coerce105 to <2 x float>*
  store <2 x float> %call104, <2 x float>* %77, align 4
  %coerce105.realp = getelementptr inbounds { float, float }, { float, float }* %coerce105, i32 0, i32 0
  %coerce105.real = load float, float* %coerce105.realp, align 4
  %coerce105.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce105, i32 0, i32 1
  %coerce105.imag = load float, float* %coerce105.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then90
  %real_mul_phi = phi float [ %mul_r, %if.then90 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce105.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then90 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce105.imag, %complex_mul_libcall ]
  %78 = load double, double* %d, align 8
  %call106 = call double @sqrt(double %78) #5
  %conv107 = fptrunc double %call106 to float
  %79 = fdiv float %real_mul_phi, %conv107
  %80 = fdiv float %imag_mul_phi, %conv107
  %node108 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 3
  %81 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node108, align 8
  %82 = load i32, i32* %j, align 4
  %idxprom109 = sext i32 %82 to i64
  %arrayidx110 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %81, i64 %idxprom109
  %amplitude111 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx110, i32 0, i32 0
  %amplitude111.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude111, i32 0, i32 0
  %amplitude111.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude111, i32 0, i32 1
  store float %79, float* %amplitude111.realp, align 8
  store float %80, float* %amplitude111.imagp, align 4
  %83 = load i32, i32* %j, align 4
  %inc112 = add nsw i32 %83, 1
  store i32 %inc112, i32* %j, align 4
  br label %if.end113

if.end113:                                        ; preds = %complex_mul_cont, %for.body82
  br label %for.inc114

for.inc114:                                       ; preds = %if.end113
  %84 = load i32, i32* %i, align 4
  %inc115 = add nsw i32 %84, 1
  store i32 %inc115, i32* %i, align 4
  br label %for.cond78

for.end116:                                       ; preds = %for.cond78
  %85 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_delete_qureg_hashpreserve(%struct.quantum_reg_struct* %85)
  %86 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %87 = bitcast %struct.quantum_reg_struct* %86 to i8*
  %88 = bitcast %struct.quantum_reg_struct* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 32, i32 8, i1 false)
  %89 = load i32, i32* %result, align 4
  store i32 %89, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end116, %if.then
  %90 = load i32, i32* %retval, align 4
  ret i32 %90
}

; Function Attrs: noinline nounwind uwtable
define void @test_sum(i32 %compare, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %compare.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i32 %compare, i32* %compare.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %compare.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %1, 1
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %conv, %shl
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 2, %2
  %sub1 = sub nsw i32 %mul, 1
  %3 = load i32, i32* %width.addr, align 4
  %sub2 = sub nsw i32 %3, 1
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub1, i32 %sub2, %struct.quantum_reg_struct* %4)
  %5 = load i32, i32* %width.addr, align 4
  %mul3 = mul nsw i32 2, %5
  %sub4 = sub nsw i32 %mul3, 1
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %sub4, %struct.quantum_reg_struct* %6)
  %7 = load i32, i32* %width.addr, align 4
  %mul5 = mul nsw i32 2, %7
  %sub6 = sub nsw i32 %mul5, 1
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub6, i32 0, %struct.quantum_reg_struct* %8)
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %width.addr, align 4
  %mul7 = mul nsw i32 2, %9
  %sub8 = sub nsw i32 %mul7, 1
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %sub8, %struct.quantum_reg_struct* %10)
  %11 = load i32, i32* %width.addr, align 4
  %mul9 = mul nsw i32 2, %11
  %sub10 = sub nsw i32 %mul9, 1
  %12 = load i32, i32* %width.addr, align 4
  %sub11 = sub nsw i32 %12, 1
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub10, i32 %sub11, %struct.quantum_reg_struct* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %width.addr, align 4
  %sub12 = sub nsw i32 %14, 2
  store i32 %sub12, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %compare.addr, align 4
  %17 = load i32, i32* %i, align 4
  %shl14 = shl i32 1, %17
  %and15 = and i32 %16, %shl14
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then17, label %if.else22

if.then17:                                        ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %add = add nsw i32 %18, 1
  %19 = load i32, i32* %width.addr, align 4
  %20 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %19, %20
  %21 = load i32, i32* %i, align 4
  %22 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add, i32 %add18, i32 %21, %struct.quantum_reg_struct* %22)
  %23 = load i32, i32* %width.addr, align 4
  %24 = load i32, i32* %i, align 4
  %add19 = add nsw i32 %23, %24
  %25 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add19, %struct.quantum_reg_struct* %25)
  %26 = load i32, i32* %i, align 4
  %add20 = add nsw i32 %26, 1
  %27 = load i32, i32* %width.addr, align 4
  %28 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %27, %28
  %29 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add20, i32 %add21, i32 0, %struct.quantum_reg_struct* %29)
  br label %if.end26

if.else22:                                        ; preds = %for.body
  %30 = load i32, i32* %width.addr, align 4
  %31 = load i32, i32* %i, align 4
  %add23 = add nsw i32 %30, %31
  %32 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add23, %struct.quantum_reg_struct* %32)
  %33 = load i32, i32* %i, align 4
  %add24 = add nsw i32 %33, 1
  %34 = load i32, i32* %width.addr, align 4
  %35 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %34, %35
  %36 = load i32, i32* %i, align 4
  %37 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add24, i32 %add25, i32 %36, %struct.quantum_reg_struct* %37)
  br label %if.end26

if.end26:                                         ; preds = %if.else22, %if.then17
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %38 = load i32, i32* %i, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %compare.addr, align 4
  %and27 = and i32 %39, 1
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.end
  %40 = load i32, i32* %width.addr, align 4
  %41 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %40, %struct.quantum_reg_struct* %41)
  %42 = load i32, i32* %width.addr, align 4
  %43 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %42, i32 1, i32 0, %struct.quantum_reg_struct* %43)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %for.end
  %44 = load i32, i32* %width.addr, align 4
  %mul31 = mul nsw i32 2, %44
  %add32 = add nsw i32 %mul31, 1
  %45 = load i32, i32* %width.addr, align 4
  %mul33 = mul nsw i32 2, %45
  %46 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add32, i32 0, i32 %mul33, %struct.quantum_reg_struct* %46)
  %47 = load i32, i32* %compare.addr, align 4
  %and34 = and i32 %47, 1
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end30
  %48 = load i32, i32* %width.addr, align 4
  %49 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %48, i32 1, i32 0, %struct.quantum_reg_struct* %49)
  %50 = load i32, i32* %width.addr, align 4
  %51 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %50, %struct.quantum_reg_struct* %51)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end30
  store i32 1, i32* %i, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc57, %if.end37
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %width.addr, align 4
  %sub39 = sub nsw i32 %53, 2
  %cmp40 = icmp sle i32 %52, %sub39
  br i1 %cmp40, label %for.body42, label %for.end58

for.body42:                                       ; preds = %for.cond38
  %54 = load i32, i32* %compare.addr, align 4
  %55 = load i32, i32* %i, align 4
  %shl43 = shl i32 1, %55
  %and44 = and i32 %54, %shl43
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then46, label %if.else52

if.then46:                                        ; preds = %for.body42
  %56 = load i32, i32* %i, align 4
  %add47 = add nsw i32 %56, 1
  %57 = load i32, i32* %width.addr, align 4
  %58 = load i32, i32* %i, align 4
  %add48 = add nsw i32 %57, %58
  %59 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add47, i32 %add48, i32 0, %struct.quantum_reg_struct* %59)
  %60 = load i32, i32* %width.addr, align 4
  %61 = load i32, i32* %i, align 4
  %add49 = add nsw i32 %60, %61
  %62 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add49, %struct.quantum_reg_struct* %62)
  %63 = load i32, i32* %i, align 4
  %add50 = add nsw i32 %63, 1
  %64 = load i32, i32* %width.addr, align 4
  %65 = load i32, i32* %i, align 4
  %add51 = add nsw i32 %64, %65
  %66 = load i32, i32* %i, align 4
  %67 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add50, i32 %add51, i32 %66, %struct.quantum_reg_struct* %67)
  br label %if.end56

if.else52:                                        ; preds = %for.body42
  %68 = load i32, i32* %i, align 4
  %add53 = add nsw i32 %68, 1
  %69 = load i32, i32* %width.addr, align 4
  %70 = load i32, i32* %i, align 4
  %add54 = add nsw i32 %69, %70
  %71 = load i32, i32* %i, align 4
  %72 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add53, i32 %add54, i32 %71, %struct.quantum_reg_struct* %72)
  %73 = load i32, i32* %width.addr, align 4
  %74 = load i32, i32* %i, align 4
  %add55 = add nsw i32 %73, %74
  %75 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add55, %struct.quantum_reg_struct* %75)
  br label %if.end56

if.end56:                                         ; preds = %if.else52, %if.then46
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %76 = load i32, i32* %i, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond38

for.end58:                                        ; preds = %for.cond38
  %77 = load i32, i32* %compare.addr, align 4
  %78 = load i32, i32* %width.addr, align 4
  %sub59 = sub nsw i32 %78, 1
  %shl60 = shl i32 1, %sub59
  %and61 = and i32 %77, %shl60
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.then63, label %if.else71

if.then63:                                        ; preds = %for.end58
  %79 = load i32, i32* %width.addr, align 4
  %mul64 = mul nsw i32 2, %79
  %sub65 = sub nsw i32 %mul64, 1
  %80 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub65, i32 0, %struct.quantum_reg_struct* %80)
  %81 = load i32, i32* %width.addr, align 4
  %mul66 = mul nsw i32 2, %81
  %sub67 = sub nsw i32 %mul66, 1
  %82 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %sub67, %struct.quantum_reg_struct* %82)
  %83 = load i32, i32* %width.addr, align 4
  %mul68 = mul nsw i32 2, %83
  %sub69 = sub nsw i32 %mul68, 1
  %84 = load i32, i32* %width.addr, align 4
  %sub70 = sub nsw i32 %84, 1
  %85 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub69, i32 %sub70, %struct.quantum_reg_struct* %85)
  br label %if.end77

if.else71:                                        ; preds = %for.end58
  %86 = load i32, i32* %width.addr, align 4
  %mul72 = mul nsw i32 2, %86
  %sub73 = sub nsw i32 %mul72, 1
  %87 = load i32, i32* %width.addr, align 4
  %sub74 = sub nsw i32 %87, 1
  %88 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %sub73, i32 %sub74, %struct.quantum_reg_struct* %88)
  %89 = load i32, i32* %width.addr, align 4
  %mul75 = mul nsw i32 2, %89
  %sub76 = sub nsw i32 %mul75, 1
  %90 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %sub76, %struct.quantum_reg_struct* %90)
  br label %if.end77

if.end77:                                         ; preds = %if.else71, %if.then63
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @muxfa(i32 %a, i32 %b_in, i32 %c_in, i32 %c_out, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b_in.addr = alloca i32, align 4
  %c_in.addr = alloca i32, align 4
  %c_out.addr = alloca i32, align 4
  %xlt_l.addr = alloca i32, align 4
  %L.addr = alloca i32, align 4
  %total.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b_in, i32* %b_in.addr, align 4
  store i32 %c_in, i32* %c_in.addr, align 4
  store i32 %c_out, i32* %c_out.addr, align 4
  store i32 %xlt_l, i32* %xlt_l.addr, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %total, i32* %total.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %b_in.addr, align 4
  %2 = load i32, i32* %c_in.addr, align 4
  %3 = load i32, i32* %c_out.addr, align 4
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %1, i32 %2, i32 %3, %struct.quantum_reg_struct* %4)
  %5 = load i32, i32* %b_in.addr, align 4
  %6 = load i32, i32* %c_in.addr, align 4
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp eq i32 %8, 3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %9 = load i32, i32* %L.addr, align 4
  %10 = load i32, i32* %c_in.addr, align 4
  %11 = load i32, i32* %c_out.addr, align 4
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %9, i32 %10, i32 %11, %struct.quantum_reg_struct* %12)
  %13 = load i32, i32* %L.addr, align 4
  %14 = load i32, i32* %c_in.addr, align 4
  %15 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %13, i32 %14, %struct.quantum_reg_struct* %15)
  %16 = load i32, i32* %b_in.addr, align 4
  %17 = load i32, i32* %c_in.addr, align 4
  %18 = load i32, i32* %c_out.addr, align 4
  %19 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %16, i32 %17, i32 %18, %struct.quantum_reg_struct* %19)
  %20 = load i32, i32* %b_in.addr, align 4
  %21 = load i32, i32* %c_in.addr, align 4
  %22 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %20, i32 %21, %struct.quantum_reg_struct* %22)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %23 = load i32, i32* %a.addr, align 4
  %cmp4 = icmp eq i32 %23, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %24 = load i32, i32* %L.addr, align 4
  %25 = load i32, i32* %xlt_l.addr, align 4
  %26 = load i32, i32* %b_in.addr, align 4
  %27 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %24, i32 %25, i32 %26, %struct.quantum_reg_struct* %27)
  %28 = load i32, i32* %b_in.addr, align 4
  %29 = load i32, i32* %c_in.addr, align 4
  %30 = load i32, i32* %c_out.addr, align 4
  %31 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %28, i32 %29, i32 %30, %struct.quantum_reg_struct* %31)
  %32 = load i32, i32* %L.addr, align 4
  %33 = load i32, i32* %xlt_l.addr, align 4
  %34 = load i32, i32* %b_in.addr, align 4
  %35 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %32, i32 %33, i32 %34, %struct.quantum_reg_struct* %35)
  %36 = load i32, i32* %b_in.addr, align 4
  %37 = load i32, i32* %c_in.addr, align 4
  %38 = load i32, i32* %c_out.addr, align 4
  %39 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %36, i32 %37, i32 %38, %struct.quantum_reg_struct* %39)
  %40 = load i32, i32* %L.addr, align 4
  %41 = load i32, i32* %xlt_l.addr, align 4
  %42 = load i32, i32* %c_in.addr, align 4
  %43 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %40, i32 %41, i32 %42, %struct.quantum_reg_struct* %43)
  %44 = load i32, i32* %b_in.addr, align 4
  %45 = load i32, i32* %c_in.addr, align 4
  %46 = load i32, i32* %c_out.addr, align 4
  %47 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %44, i32 %45, i32 %46, %struct.quantum_reg_struct* %47)
  %48 = load i32, i32* %b_in.addr, align 4
  %49 = load i32, i32* %c_in.addr, align 4
  %50 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %48, i32 %49, %struct.quantum_reg_struct* %50)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %51 = load i32, i32* %a.addr, align 4
  %cmp7 = icmp eq i32 %51, 2
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %52 = load i32, i32* %xlt_l.addr, align 4
  %53 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %52, %struct.quantum_reg_struct* %53)
  %54 = load i32, i32* %L.addr, align 4
  %55 = load i32, i32* %xlt_l.addr, align 4
  %56 = load i32, i32* %b_in.addr, align 4
  %57 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %54, i32 %55, i32 %56, %struct.quantum_reg_struct* %57)
  %58 = load i32, i32* %b_in.addr, align 4
  %59 = load i32, i32* %c_in.addr, align 4
  %60 = load i32, i32* %c_out.addr, align 4
  %61 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %58, i32 %59, i32 %60, %struct.quantum_reg_struct* %61)
  %62 = load i32, i32* %L.addr, align 4
  %63 = load i32, i32* %xlt_l.addr, align 4
  %64 = load i32, i32* %b_in.addr, align 4
  %65 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %62, i32 %63, i32 %64, %struct.quantum_reg_struct* %65)
  %66 = load i32, i32* %b_in.addr, align 4
  %67 = load i32, i32* %c_in.addr, align 4
  %68 = load i32, i32* %c_out.addr, align 4
  %69 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %66, i32 %67, i32 %68, %struct.quantum_reg_struct* %69)
  %70 = load i32, i32* %L.addr, align 4
  %71 = load i32, i32* %xlt_l.addr, align 4
  %72 = load i32, i32* %c_in.addr, align 4
  %73 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %70, i32 %71, i32 %72, %struct.quantum_reg_struct* %73)
  %74 = load i32, i32* %b_in.addr, align 4
  %75 = load i32, i32* %c_in.addr, align 4
  %76 = load i32, i32* %c_out.addr, align 4
  %77 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %74, i32 %75, i32 %76, %struct.quantum_reg_struct* %77)
  %78 = load i32, i32* %b_in.addr, align 4
  %79 = load i32, i32* %c_in.addr, align 4
  %80 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %78, i32 %79, %struct.quantum_reg_struct* %80)
  %81 = load i32, i32* %xlt_l.addr, align 4
  %82 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %81, %struct.quantum_reg_struct* %82)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @muxfa_inv(i32 %a, i32 %b_in, i32 %c_in, i32 %c_out, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b_in.addr = alloca i32, align 4
  %c_in.addr = alloca i32, align 4
  %c_out.addr = alloca i32, align 4
  %xlt_l.addr = alloca i32, align 4
  %L.addr = alloca i32, align 4
  %total.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b_in, i32* %b_in.addr, align 4
  store i32 %c_in, i32* %c_in.addr, align 4
  store i32 %c_out, i32* %c_out.addr, align 4
  store i32 %xlt_l, i32* %xlt_l.addr, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %total, i32* %total.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %b_in.addr, align 4
  %2 = load i32, i32* %c_in.addr, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  %4 = load i32, i32* %b_in.addr, align 4
  %5 = load i32, i32* %c_in.addr, align 4
  %6 = load i32, i32* %c_out.addr, align 4
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %4, i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp eq i32 %8, 3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %9 = load i32, i32* %b_in.addr, align 4
  %10 = load i32, i32* %c_in.addr, align 4
  %11 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %9, i32 %10, %struct.quantum_reg_struct* %11)
  %12 = load i32, i32* %b_in.addr, align 4
  %13 = load i32, i32* %c_in.addr, align 4
  %14 = load i32, i32* %c_out.addr, align 4
  %15 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %12, i32 %13, i32 %14, %struct.quantum_reg_struct* %15)
  %16 = load i32, i32* %L.addr, align 4
  %17 = load i32, i32* %c_in.addr, align 4
  %18 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %16, i32 %17, %struct.quantum_reg_struct* %18)
  %19 = load i32, i32* %L.addr, align 4
  %20 = load i32, i32* %c_in.addr, align 4
  %21 = load i32, i32* %c_out.addr, align 4
  %22 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %19, i32 %20, i32 %21, %struct.quantum_reg_struct* %22)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %23 = load i32, i32* %a.addr, align 4
  %cmp4 = icmp eq i32 %23, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %24 = load i32, i32* %b_in.addr, align 4
  %25 = load i32, i32* %c_in.addr, align 4
  %26 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %24, i32 %25, %struct.quantum_reg_struct* %26)
  %27 = load i32, i32* %b_in.addr, align 4
  %28 = load i32, i32* %c_in.addr, align 4
  %29 = load i32, i32* %c_out.addr, align 4
  %30 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %27, i32 %28, i32 %29, %struct.quantum_reg_struct* %30)
  %31 = load i32, i32* %L.addr, align 4
  %32 = load i32, i32* %xlt_l.addr, align 4
  %33 = load i32, i32* %c_in.addr, align 4
  %34 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %31, i32 %32, i32 %33, %struct.quantum_reg_struct* %34)
  %35 = load i32, i32* %b_in.addr, align 4
  %36 = load i32, i32* %c_in.addr, align 4
  %37 = load i32, i32* %c_out.addr, align 4
  %38 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %35, i32 %36, i32 %37, %struct.quantum_reg_struct* %38)
  %39 = load i32, i32* %L.addr, align 4
  %40 = load i32, i32* %xlt_l.addr, align 4
  %41 = load i32, i32* %b_in.addr, align 4
  %42 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %39, i32 %40, i32 %41, %struct.quantum_reg_struct* %42)
  %43 = load i32, i32* %b_in.addr, align 4
  %44 = load i32, i32* %c_in.addr, align 4
  %45 = load i32, i32* %c_out.addr, align 4
  %46 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %43, i32 %44, i32 %45, %struct.quantum_reg_struct* %46)
  %47 = load i32, i32* %L.addr, align 4
  %48 = load i32, i32* %xlt_l.addr, align 4
  %49 = load i32, i32* %b_in.addr, align 4
  %50 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %47, i32 %48, i32 %49, %struct.quantum_reg_struct* %50)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %51 = load i32, i32* %a.addr, align 4
  %cmp7 = icmp eq i32 %51, 2
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %52 = load i32, i32* %xlt_l.addr, align 4
  %53 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %52, %struct.quantum_reg_struct* %53)
  %54 = load i32, i32* %b_in.addr, align 4
  %55 = load i32, i32* %c_in.addr, align 4
  %56 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %54, i32 %55, %struct.quantum_reg_struct* %56)
  %57 = load i32, i32* %b_in.addr, align 4
  %58 = load i32, i32* %c_in.addr, align 4
  %59 = load i32, i32* %c_out.addr, align 4
  %60 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %57, i32 %58, i32 %59, %struct.quantum_reg_struct* %60)
  %61 = load i32, i32* %L.addr, align 4
  %62 = load i32, i32* %xlt_l.addr, align 4
  %63 = load i32, i32* %c_in.addr, align 4
  %64 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %61, i32 %62, i32 %63, %struct.quantum_reg_struct* %64)
  %65 = load i32, i32* %b_in.addr, align 4
  %66 = load i32, i32* %c_in.addr, align 4
  %67 = load i32, i32* %c_out.addr, align 4
  %68 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %65, i32 %66, i32 %67, %struct.quantum_reg_struct* %68)
  %69 = load i32, i32* %L.addr, align 4
  %70 = load i32, i32* %xlt_l.addr, align 4
  %71 = load i32, i32* %b_in.addr, align 4
  %72 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %69, i32 %70, i32 %71, %struct.quantum_reg_struct* %72)
  %73 = load i32, i32* %b_in.addr, align 4
  %74 = load i32, i32* %c_in.addr, align 4
  %75 = load i32, i32* %c_out.addr, align 4
  %76 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %73, i32 %74, i32 %75, %struct.quantum_reg_struct* %76)
  %77 = load i32, i32* %L.addr, align 4
  %78 = load i32, i32* %xlt_l.addr, align 4
  %79 = load i32, i32* %b_in.addr, align 4
  %80 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %77, i32 %78, i32 %79, %struct.quantum_reg_struct* %80)
  %81 = load i32, i32* %xlt_l.addr, align 4
  %82 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %81, %struct.quantum_reg_struct* %82)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @muxha(i32 %a, i32 %b_in, i32 %c_in, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b_in.addr = alloca i32, align 4
  %c_in.addr = alloca i32, align 4
  %xlt_l.addr = alloca i32, align 4
  %L.addr = alloca i32, align 4
  %total.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b_in, i32* %b_in.addr, align 4
  store i32 %c_in, i32* %c_in.addr, align 4
  store i32 %xlt_l, i32* %xlt_l.addr, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %total, i32* %total.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %b_in.addr, align 4
  %2 = load i32, i32* %c_in.addr, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp eq i32 %4, 3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load i32, i32* %L.addr, align 4
  %6 = load i32, i32* %c_in.addr, align 4
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  %8 = load i32, i32* %b_in.addr, align 4
  %9 = load i32, i32* %c_in.addr, align 4
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %8, i32 %9, %struct.quantum_reg_struct* %10)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %11 = load i32, i32* %a.addr, align 4
  %cmp4 = icmp eq i32 %11, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %12 = load i32, i32* %L.addr, align 4
  %13 = load i32, i32* %xlt_l.addr, align 4
  %14 = load i32, i32* %c_in.addr, align 4
  %15 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %12, i32 %13, i32 %14, %struct.quantum_reg_struct* %15)
  %16 = load i32, i32* %b_in.addr, align 4
  %17 = load i32, i32* %c_in.addr, align 4
  %18 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %16, i32 %17, %struct.quantum_reg_struct* %18)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %19 = load i32, i32* %a.addr, align 4
  %cmp7 = icmp eq i32 %19, 2
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %20 = load i32, i32* %xlt_l.addr, align 4
  %21 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %20, %struct.quantum_reg_struct* %21)
  %22 = load i32, i32* %L.addr, align 4
  %23 = load i32, i32* %xlt_l.addr, align 4
  %24 = load i32, i32* %c_in.addr, align 4
  %25 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %22, i32 %23, i32 %24, %struct.quantum_reg_struct* %25)
  %26 = load i32, i32* %b_in.addr, align 4
  %27 = load i32, i32* %c_in.addr, align 4
  %28 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %26, i32 %27, %struct.quantum_reg_struct* %28)
  %29 = load i32, i32* %xlt_l.addr, align 4
  %30 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %29, %struct.quantum_reg_struct* %30)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @muxha_inv(i32 %a, i32 %b_in, i32 %c_in, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b_in.addr = alloca i32, align 4
  %c_in.addr = alloca i32, align 4
  %xlt_l.addr = alloca i32, align 4
  %L.addr = alloca i32, align 4
  %total.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b_in, i32* %b_in.addr, align 4
  store i32 %c_in, i32* %c_in.addr, align 4
  store i32 %xlt_l, i32* %xlt_l.addr, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %total, i32* %total.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %b_in.addr, align 4
  %2 = load i32, i32* %c_in.addr, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp eq i32 %4, 3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load i32, i32* %b_in.addr, align 4
  %6 = load i32, i32* %c_in.addr, align 4
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  %8 = load i32, i32* %L.addr, align 4
  %9 = load i32, i32* %c_in.addr, align 4
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %8, i32 %9, %struct.quantum_reg_struct* %10)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %11 = load i32, i32* %a.addr, align 4
  %cmp4 = icmp eq i32 %11, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %12 = load i32, i32* %b_in.addr, align 4
  %13 = load i32, i32* %c_in.addr, align 4
  %14 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %12, i32 %13, %struct.quantum_reg_struct* %14)
  %15 = load i32, i32* %L.addr, align 4
  %16 = load i32, i32* %xlt_l.addr, align 4
  %17 = load i32, i32* %c_in.addr, align 4
  %18 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %15, i32 %16, i32 %17, %struct.quantum_reg_struct* %18)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %19 = load i32, i32* %a.addr, align 4
  %cmp7 = icmp eq i32 %19, 2
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %20 = load i32, i32* %xlt_l.addr, align 4
  %21 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %20, %struct.quantum_reg_struct* %21)
  %22 = load i32, i32* %b_in.addr, align 4
  %23 = load i32, i32* %c_in.addr, align 4
  %24 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %22, i32 %23, %struct.quantum_reg_struct* %24)
  %25 = load i32, i32* %L.addr, align 4
  %26 = load i32, i32* %xlt_l.addr, align 4
  %27 = load i32, i32* %c_in.addr, align 4
  %28 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %25, i32 %26, i32 %27, %struct.quantum_reg_struct* %28)
  %29 = load i32, i32* %xlt_l.addr, align 4
  %30 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %29, %struct.quantum_reg_struct* %30)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @madd(i32 %a, i32 %a_inv, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %a_inv.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %a_inv, i32* %a_inv.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 4, %0
  %add = add nsw i32 %mul, 2
  store i32 %add, i32* %total, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %1, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %shl = shl i32 1, %3
  %4 = load i32, i32* %a.addr, align 4
  %and = and i32 %shl, %4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 2, i32* %j, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %i, align 4
  %shl1 = shl i32 1, %5
  %6 = load i32, i32* %a_inv.addr, align 4
  %and2 = and i32 %shl1, %6
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load i32, i32* %j, align 4
  %add5 = add nsw i32 %7, 1
  store i32 %add5, i32* %j, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %width.addr, align 4
  %10 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %9, %10
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %12, 1
  %13 = load i32, i32* %width.addr, align 4
  %mul9 = mul nsw i32 2, %13
  %14 = load i32, i32* %width.addr, align 4
  %mul10 = mul nsw i32 2, %14
  %add11 = add nsw i32 %mul10, 1
  %15 = load i32, i32* %total, align 4
  %16 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muxfa(i32 %8, i32 %add7, i32 %11, i32 %add8, i32 %mul9, i32 %add11, i32 %15, %struct.quantum_reg_struct* %16)
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  %18 = load i32, i32* %width.addr, align 4
  %sub12 = sub nsw i32 %18, 1
  %shl13 = shl i32 1, %sub12
  %19 = load i32, i32* %a.addr, align 4
  %and14 = and i32 %shl13, %19
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.end
  store i32 2, i32* %j, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %for.end
  %20 = load i32, i32* %width.addr, align 4
  %sub18 = sub nsw i32 %20, 1
  %shl19 = shl i32 1, %sub18
  %21 = load i32, i32* %a_inv.addr, align 4
  %and20 = and i32 %shl19, %21
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end17
  %22 = load i32, i32* %j, align 4
  %add23 = add nsw i32 %22, 1
  store i32 %add23, i32* %j, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end17
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %width.addr, align 4
  %mul25 = mul nsw i32 2, %24
  %sub26 = sub nsw i32 %mul25, 1
  %25 = load i32, i32* %width.addr, align 4
  %sub27 = sub nsw i32 %25, 1
  %26 = load i32, i32* %width.addr, align 4
  %mul28 = mul nsw i32 2, %26
  %27 = load i32, i32* %width.addr, align 4
  %mul29 = mul nsw i32 2, %27
  %add30 = add nsw i32 %mul29, 1
  %28 = load i32, i32* %total, align 4
  %29 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muxha(i32 %23, i32 %sub26, i32 %sub27, i32 %mul28, i32 %add30, i32 %28, %struct.quantum_reg_struct* %29)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @madd_inv(i32 %a, i32 %a_inv, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %a_inv.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %total = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %a_inv, i32* %a_inv.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 4, %0
  %add = add nsw i32 %mul, 2
  store i32 %add, i32* %total, align 4
  store i32 0, i32* %j, align 4
  %1 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %1, 1
  %shl = shl i32 1, %sub
  %2 = load i32, i32* %a.addr, align 4
  %and = and i32 %shl, %2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %width.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  %shl2 = shl i32 1, %sub1
  %4 = load i32, i32* %a_inv.addr, align 4
  %and3 = and i32 %shl2, %4
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %5 = load i32, i32* %j, align 4
  %add6 = add nsw i32 %5, 1
  store i32 %add6, i32* %j, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %width.addr, align 4
  %sub8 = sub nsw i32 %7, 1
  %8 = load i32, i32* %width.addr, align 4
  %mul9 = mul nsw i32 2, %8
  %sub10 = sub nsw i32 %mul9, 1
  %9 = load i32, i32* %width.addr, align 4
  %mul11 = mul nsw i32 2, %9
  %10 = load i32, i32* %width.addr, align 4
  %mul12 = mul nsw i32 2, %10
  %add13 = add nsw i32 %mul12, 1
  %11 = load i32, i32* %total, align 4
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muxha_inv(i32 %6, i32 %sub8, i32 %sub10, i32 %mul11, i32 %add13, i32 %11, %struct.quantum_reg_struct* %12)
  %13 = load i32, i32* %width.addr, align 4
  %sub14 = sub nsw i32 %13, 2
  store i32 %sub14, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %14 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %14, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %shl15 = shl i32 1, %15
  %16 = load i32, i32* %a.addr, align 4
  %and16 = and i32 %shl15, %16
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %for.body
  store i32 2, i32* %j, align 4
  br label %if.end19

if.else:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then18
  %17 = load i32, i32* %i, align 4
  %shl20 = shl i32 1, %17
  %18 = load i32, i32* %a_inv.addr, align 4
  %and21 = and i32 %shl20, %18
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end19
  %19 = load i32, i32* %j, align 4
  %add24 = add nsw i32 %19, 1
  store i32 %add24, i32* %j, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end19
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %width.addr, align 4
  %23 = load i32, i32* %i, align 4
  %add26 = add nsw i32 %22, %23
  %24 = load i32, i32* %width.addr, align 4
  %add27 = add nsw i32 %24, 1
  %25 = load i32, i32* %i, align 4
  %add28 = add nsw i32 %add27, %25
  %26 = load i32, i32* %width.addr, align 4
  %mul29 = mul nsw i32 2, %26
  %27 = load i32, i32* %width.addr, align 4
  %mul30 = mul nsw i32 2, %27
  %add31 = add nsw i32 %mul30, 1
  %28 = load i32, i32* %total, align 4
  %29 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muxfa_inv(i32 %20, i32 %21, i32 %add26, i32 %add28, i32 %mul29, i32 %add31, i32 %28, %struct.quantum_reg_struct* %29)
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %30 = load i32, i32* %i, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @addn(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %1 = load i32, i32* %a.addr, align 4
  %sub = sub nsw i32 %0, %1
  %2 = load i32, i32* %width.addr, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @test_sum(i32 %sub, i32 %2, %struct.quantum_reg_struct* %3)
  %4 = load i32, i32* %width.addr, align 4
  %shl = shl i32 1, %4
  %5 = load i32, i32* %a.addr, align 4
  %add = add nsw i32 %shl, %5
  %6 = load i32, i32* %N.addr, align 4
  %sub1 = sub nsw i32 %add, %6
  %7 = load i32, i32* %a.addr, align 4
  %8 = load i32, i32* %width.addr, align 4
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @madd(i32 %sub1, i32 %7, i32 %8, %struct.quantum_reg_struct* %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @addn_inv(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  %1 = load i32, i32* %width.addr, align 4
  %mul1 = mul nsw i32 2, %1
  %2 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add, i32 %mul1, %struct.quantum_reg_struct* %2)
  %3 = load i32, i32* %width.addr, align 4
  %shl = shl i32 1, %3
  %4 = load i32, i32* %a.addr, align 4
  %sub = sub nsw i32 %shl, %4
  %5 = load i32, i32* %N.addr, align 4
  %6 = load i32, i32* %a.addr, align 4
  %sub2 = sub nsw i32 %5, %6
  %7 = load i32, i32* %width.addr, align 4
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @madd_inv(i32 %sub, i32 %sub2, i32 %7, %struct.quantum_reg_struct* %8)
  %9 = load i32, i32* %width.addr, align 4
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_swaptheleads(i32 %9, %struct.quantum_reg_struct* %10)
  %11 = load i32, i32* %a.addr, align 4
  %12 = load i32, i32* %width.addr, align 4
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @test_sum(i32 %11, i32 %12, %struct.quantum_reg_struct* %13)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @add_mod_n(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %1 = load i32, i32* %a.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @addn(i32 %0, i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  %4 = load i32, i32* %N.addr, align 4
  %5 = load i32, i32* %a.addr, align 4
  %6 = load i32, i32* %width.addr, align 4
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @addn_inv(i32 %4, i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_mu2char(i64 %mu, i8* %buf) #0 {
entry:
  %mu.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  store i64 %mu, i64* %mu.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 8, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %mu.addr, align 8
  %3 = load i32, i32* %size, align 4
  %4 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %3, %4
  %sub1 = sub nsw i32 %sub, 1
  %mul = mul nsw i32 %sub1, 8
  %sh_prom = zext i32 %mul to i64
  %shl = shl i64 1, %sh_prom
  %div = udiv i64 %2, %shl
  %conv = trunc i64 %div to i8
  %5 = load i8*, i8** %buf.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %7 = load i32, i32* %size, align 4
  %8 = load i32, i32* %i, align 4
  %sub2 = sub nsw i32 %7, %8
  %sub3 = sub nsw i32 %sub2, 1
  %mul4 = mul nsw i32 %sub3, 8
  %sh_prom5 = zext i32 %mul4 to i64
  %shl6 = shl i64 1, %sh_prom5
  %9 = load i64, i64* %mu.addr, align 8
  %rem = urem i64 %9, %shl6
  store i64 %rem, i64* %mu.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_int2char(i32 %j, i8* %buf) #0 {
entry:
  %j.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  store i32 %j, i32* %j.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 4, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j.addr, align 4
  %3 = load i32, i32* %size, align 4
  %4 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %3, %4
  %sub1 = sub nsw i32 %sub, 1
  %mul = mul nsw i32 %sub1, 8
  %shl = shl i32 1, %mul
  %div = sdiv i32 %2, %shl
  %conv = trunc i32 %div to i8
  %5 = load i8*, i8** %buf.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %7 = load i32, i32* %size, align 4
  %8 = load i32, i32* %i, align 4
  %sub2 = sub nsw i32 %7, %8
  %sub3 = sub nsw i32 %sub2, 1
  %mul4 = mul nsw i32 %sub3, 8
  %shl5 = shl i32 1, %mul4
  %9 = load i32, i32* %j.addr, align 4
  %rem = srem i32 %9, %shl5
  store i32 %rem, i32* %j.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_double2char(double %d, i8* %buf) #0 {
entry:
  %d.addr = alloca double, align 8
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  store double %d, double* %d.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = bitcast double* %d.addr to i8*
  store i8* %0, i8** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %p, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %5 = load i8*, i8** %buf.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 %idxprom2
  store i8 %4, i8* %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i64 @quantum_char2mu(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %mu = alloca i64, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 0, i64* %mu, align 8
  store i32 8, i32* %size, align 4
  %0 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i64
  %5 = load i32, i32* %size, align 4
  %6 = load i32, i32* %i, align 4
  %sub1 = sub nsw i32 %5, %6
  %sub2 = sub nsw i32 %sub1, 1
  %mul = mul nsw i32 8, %sub2
  %sh_prom = zext i32 %mul to i64
  %shl = shl i64 1, %sh_prom
  %mul3 = mul i64 %conv, %shl
  %7 = load i64, i64* %mu, align 8
  %add = add i64 %7, %mul3
  store i64 %add, i64* %mu, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i64, i64* %mu, align 8
  ret i64 %9
}

; Function Attrs: noinline nounwind uwtable
define i32 @quantum_char2int(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 0, i32* %j, align 4
  store i32 4, i32* %size, align 4
  %0 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i32, i32* %size, align 4
  %6 = load i32, i32* %i, align 4
  %sub1 = sub nsw i32 %5, %6
  %sub2 = sub nsw i32 %sub1, 1
  %mul = mul nsw i32 8, %sub2
  %shl = shl i32 1, %mul
  %mul3 = mul nsw i32 %conv, %shl
  %7 = load i32, i32* %j, align 4
  %add = add nsw i32 %7, %mul3
  store i32 %add, i32* %j, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %j, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define double @quantum_char2double(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %d = alloca double*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = bitcast i8* %0 to double*
  store double* %1, double** %d, align 8
  %2 = load double*, double** %d, align 8
  %3 = load double, double* %2, align 8
  ret double %3
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_objcode_start() #0 {
entry:
  store i32 1, i32* @opstatus, align 4
  store i64 1, i64* @allocated, align 8
  %call = call noalias i8* @malloc(i64 65536) #5
  store i8* %call, i8** @objcode, align 8
  %0 = load i8*, i8** @objcode, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0))
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i64 @quantum_memman(i64 65536)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_objcode_stop() #0 {
entry:
  store i32 0, i32* @opstatus, align 4
  %0 = load i8*, i8** @objcode, align 8
  call void @free(i8* %0) #5
  store i8* null, i8** @objcode, align 8
  %1 = load i64, i64* @allocated, align 8
  %sub = sub i64 0, %1
  %mul = mul i64 %sub, 65536
  %mul1 = mul i64 %mul, 1
  %call = call i64 @quantum_memman(i64 %mul1)
  store i64 0, i64* @allocated, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @quantum_objcode_put(i8 zeroext %operation, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %buf = alloca [80 x i8], align 16
  %d = alloca double, align 8
  %mu = alloca i64, align 8
  store i8 %operation, i8* %operation.addr, align 1
  %0 = load i32, i32* @opstatus, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %1 = load i8, i8* %operation.addr, align 1
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 0
  store i8 %1, i8* %arrayidx, align 16
  %2 = load i8, i8* %operation.addr, align 1
  %conv = zext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 12, label %sw.bb4
    i32 2, label %sw.bb31
    i32 3, label %sw.bb71
    i32 4, label %sw.bb71
    i32 5, label %sw.bb71
    i32 6, label %sw.bb71
    i32 129, label %sw.bb71
    i32 130, label %sw.bb71
    i32 14, label %sw.bb71
    i32 7, label %sw.bb85
    i32 8, label %sw.bb85
    i32 9, label %sw.bb85
    i32 10, label %sw.bb85
    i32 11, label %sw.bb85
    i32 13, label %sw.bb109
    i32 128, label %sw.bb149
    i32 255, label %sw.bb149
  ]

sw.bb:                                            ; preds = %if.end
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %3 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %3, align 16
  %4 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %5 = bitcast i8* %4 to i64*
  %6 = add i32 %gp_offset, 8
  store i32 %6, i32* %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %7 = bitcast i8* %overflow_arg_area to i64*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i64* [ %5, %vaarg.in_reg ], [ %7, %vaarg.in_mem ]
  %8 = load i64, i64* %vaarg.addr, align 8
  store i64 %8, i64* %mu, align 8
  %9 = load i64, i64* %mu, align 8
  %arrayidx3 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 1
  call void @quantum_mu2char(i64 %9, i8* %arrayidx3)
  store i32 9, i32* %size, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end, %if.end
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 0
  %gp_offset7 = load i32, i32* %gp_offset_p6, align 16
  %fits_in_gp8 = icmp ule i32 %gp_offset7, 40
  br i1 %fits_in_gp8, label %vaarg.in_reg9, label %vaarg.in_mem11

vaarg.in_reg9:                                    ; preds = %sw.bb4
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 3
  %reg_save_area10 = load i8*, i8** %10, align 16
  %11 = getelementptr i8, i8* %reg_save_area10, i32 %gp_offset7
  %12 = bitcast i8* %11 to i32*
  %13 = add i32 %gp_offset7, 8
  store i32 %13, i32* %gp_offset_p6, align 16
  br label %vaarg.end15

vaarg.in_mem11:                                   ; preds = %sw.bb4
  %overflow_arg_area_p12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 2
  %overflow_arg_area13 = load i8*, i8** %overflow_arg_area_p12, align 8
  %14 = bitcast i8* %overflow_arg_area13 to i32*
  %overflow_arg_area.next14 = getelementptr i8, i8* %overflow_arg_area13, i32 8
  store i8* %overflow_arg_area.next14, i8** %overflow_arg_area_p12, align 8
  br label %vaarg.end15

vaarg.end15:                                      ; preds = %vaarg.in_mem11, %vaarg.in_reg9
  %vaarg.addr16 = phi i32* [ %12, %vaarg.in_reg9 ], [ %14, %vaarg.in_mem11 ]
  %15 = load i32, i32* %vaarg.addr16, align 4
  store i32 %15, i32* %i, align 4
  %16 = load i32, i32* %i, align 4
  %arrayidx17 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 1
  call void @quantum_int2char(i32 %16, i8* %arrayidx17)
  %arraydecay18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 0
  %gp_offset20 = load i32, i32* %gp_offset_p19, align 16
  %fits_in_gp21 = icmp ule i32 %gp_offset20, 40
  br i1 %fits_in_gp21, label %vaarg.in_reg22, label %vaarg.in_mem24

vaarg.in_reg22:                                   ; preds = %vaarg.end15
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 3
  %reg_save_area23 = load i8*, i8** %17, align 16
  %18 = getelementptr i8, i8* %reg_save_area23, i32 %gp_offset20
  %19 = bitcast i8* %18 to i32*
  %20 = add i32 %gp_offset20, 8
  store i32 %20, i32* %gp_offset_p19, align 16
  br label %vaarg.end28

vaarg.in_mem24:                                   ; preds = %vaarg.end15
  %overflow_arg_area_p25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay18, i32 0, i32 2
  %overflow_arg_area26 = load i8*, i8** %overflow_arg_area_p25, align 8
  %21 = bitcast i8* %overflow_arg_area26 to i32*
  %overflow_arg_area.next27 = getelementptr i8, i8* %overflow_arg_area26, i32 8
  store i8* %overflow_arg_area.next27, i8** %overflow_arg_area_p25, align 8
  br label %vaarg.end28

vaarg.end28:                                      ; preds = %vaarg.in_mem24, %vaarg.in_reg22
  %vaarg.addr29 = phi i32* [ %19, %vaarg.in_reg22 ], [ %21, %vaarg.in_mem24 ]
  %22 = load i32, i32* %vaarg.addr29, align 4
  store i32 %22, i32* %i, align 4
  %23 = load i32, i32* %i, align 4
  %arrayidx30 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 5
  call void @quantum_int2char(i32 %23, i8* %arrayidx30)
  store i32 9, i32* %size, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end
  %arraydecay32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay32, i32 0, i32 0
  %gp_offset34 = load i32, i32* %gp_offset_p33, align 16
  %fits_in_gp35 = icmp ule i32 %gp_offset34, 40
  br i1 %fits_in_gp35, label %vaarg.in_reg36, label %vaarg.in_mem38

vaarg.in_reg36:                                   ; preds = %sw.bb31
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay32, i32 0, i32 3
  %reg_save_area37 = load i8*, i8** %24, align 16
  %25 = getelementptr i8, i8* %reg_save_area37, i32 %gp_offset34
  %26 = bitcast i8* %25 to i32*
  %27 = add i32 %gp_offset34, 8
  store i32 %27, i32* %gp_offset_p33, align 16
  br label %vaarg.end42

vaarg.in_mem38:                                   ; preds = %sw.bb31
  %overflow_arg_area_p39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay32, i32 0, i32 2
  %overflow_arg_area40 = load i8*, i8** %overflow_arg_area_p39, align 8
  %28 = bitcast i8* %overflow_arg_area40 to i32*
  %overflow_arg_area.next41 = getelementptr i8, i8* %overflow_arg_area40, i32 8
  store i8* %overflow_arg_area.next41, i8** %overflow_arg_area_p39, align 8
  br label %vaarg.end42

vaarg.end42:                                      ; preds = %vaarg.in_mem38, %vaarg.in_reg36
  %vaarg.addr43 = phi i32* [ %26, %vaarg.in_reg36 ], [ %28, %vaarg.in_mem38 ]
  %29 = load i32, i32* %vaarg.addr43, align 4
  store i32 %29, i32* %i, align 4
  %30 = load i32, i32* %i, align 4
  %arrayidx44 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 1
  call void @quantum_int2char(i32 %30, i8* %arrayidx44)
  %arraydecay45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay45, i32 0, i32 0
  %gp_offset47 = load i32, i32* %gp_offset_p46, align 16
  %fits_in_gp48 = icmp ule i32 %gp_offset47, 40
  br i1 %fits_in_gp48, label %vaarg.in_reg49, label %vaarg.in_mem51

vaarg.in_reg49:                                   ; preds = %vaarg.end42
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay45, i32 0, i32 3
  %reg_save_area50 = load i8*, i8** %31, align 16
  %32 = getelementptr i8, i8* %reg_save_area50, i32 %gp_offset47
  %33 = bitcast i8* %32 to i32*
  %34 = add i32 %gp_offset47, 8
  store i32 %34, i32* %gp_offset_p46, align 16
  br label %vaarg.end55

vaarg.in_mem51:                                   ; preds = %vaarg.end42
  %overflow_arg_area_p52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay45, i32 0, i32 2
  %overflow_arg_area53 = load i8*, i8** %overflow_arg_area_p52, align 8
  %35 = bitcast i8* %overflow_arg_area53 to i32*
  %overflow_arg_area.next54 = getelementptr i8, i8* %overflow_arg_area53, i32 8
  store i8* %overflow_arg_area.next54, i8** %overflow_arg_area_p52, align 8
  br label %vaarg.end55

vaarg.end55:                                      ; preds = %vaarg.in_mem51, %vaarg.in_reg49
  %vaarg.addr56 = phi i32* [ %33, %vaarg.in_reg49 ], [ %35, %vaarg.in_mem51 ]
  %36 = load i32, i32* %vaarg.addr56, align 4
  store i32 %36, i32* %i, align 4
  %37 = load i32, i32* %i, align 4
  %arrayidx57 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 5
  call void @quantum_int2char(i32 %37, i8* %arrayidx57)
  %arraydecay58 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p59 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay58, i32 0, i32 0
  %gp_offset60 = load i32, i32* %gp_offset_p59, align 16
  %fits_in_gp61 = icmp ule i32 %gp_offset60, 40
  br i1 %fits_in_gp61, label %vaarg.in_reg62, label %vaarg.in_mem64

vaarg.in_reg62:                                   ; preds = %vaarg.end55
  %38 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay58, i32 0, i32 3
  %reg_save_area63 = load i8*, i8** %38, align 16
  %39 = getelementptr i8, i8* %reg_save_area63, i32 %gp_offset60
  %40 = bitcast i8* %39 to i32*
  %41 = add i32 %gp_offset60, 8
  store i32 %41, i32* %gp_offset_p59, align 16
  br label %vaarg.end68

vaarg.in_mem64:                                   ; preds = %vaarg.end55
  %overflow_arg_area_p65 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay58, i32 0, i32 2
  %overflow_arg_area66 = load i8*, i8** %overflow_arg_area_p65, align 8
  %42 = bitcast i8* %overflow_arg_area66 to i32*
  %overflow_arg_area.next67 = getelementptr i8, i8* %overflow_arg_area66, i32 8
  store i8* %overflow_arg_area.next67, i8** %overflow_arg_area_p65, align 8
  br label %vaarg.end68

vaarg.end68:                                      ; preds = %vaarg.in_mem64, %vaarg.in_reg62
  %vaarg.addr69 = phi i32* [ %40, %vaarg.in_reg62 ], [ %42, %vaarg.in_mem64 ]
  %43 = load i32, i32* %vaarg.addr69, align 4
  store i32 %43, i32* %i, align 4
  %44 = load i32, i32* %i, align 4
  %arrayidx70 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 9
  call void @quantum_int2char(i32 %44, i8* %arrayidx70)
  store i32 13, i32* %size, align 4
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %arraydecay72 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p73 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay72, i32 0, i32 0
  %gp_offset74 = load i32, i32* %gp_offset_p73, align 16
  %fits_in_gp75 = icmp ule i32 %gp_offset74, 40
  br i1 %fits_in_gp75, label %vaarg.in_reg76, label %vaarg.in_mem78

vaarg.in_reg76:                                   ; preds = %sw.bb71
  %45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay72, i32 0, i32 3
  %reg_save_area77 = load i8*, i8** %45, align 16
  %46 = getelementptr i8, i8* %reg_save_area77, i32 %gp_offset74
  %47 = bitcast i8* %46 to i32*
  %48 = add i32 %gp_offset74, 8
  store i32 %48, i32* %gp_offset_p73, align 16
  br label %vaarg.end82

vaarg.in_mem78:                                   ; preds = %sw.bb71
  %overflow_arg_area_p79 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay72, i32 0, i32 2
  %overflow_arg_area80 = load i8*, i8** %overflow_arg_area_p79, align 8
  %49 = bitcast i8* %overflow_arg_area80 to i32*
  %overflow_arg_area.next81 = getelementptr i8, i8* %overflow_arg_area80, i32 8
  store i8* %overflow_arg_area.next81, i8** %overflow_arg_area_p79, align 8
  br label %vaarg.end82

vaarg.end82:                                      ; preds = %vaarg.in_mem78, %vaarg.in_reg76
  %vaarg.addr83 = phi i32* [ %47, %vaarg.in_reg76 ], [ %49, %vaarg.in_mem78 ]
  %50 = load i32, i32* %vaarg.addr83, align 4
  store i32 %50, i32* %i, align 4
  %51 = load i32, i32* %i, align 4
  %arrayidx84 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 1
  call void @quantum_int2char(i32 %51, i8* %arrayidx84)
  store i32 5, i32* %size, align 4
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  %arraydecay86 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p87 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay86, i32 0, i32 0
  %gp_offset88 = load i32, i32* %gp_offset_p87, align 16
  %fits_in_gp89 = icmp ule i32 %gp_offset88, 40
  br i1 %fits_in_gp89, label %vaarg.in_reg90, label %vaarg.in_mem92

vaarg.in_reg90:                                   ; preds = %sw.bb85
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay86, i32 0, i32 3
  %reg_save_area91 = load i8*, i8** %52, align 16
  %53 = getelementptr i8, i8* %reg_save_area91, i32 %gp_offset88
  %54 = bitcast i8* %53 to i32*
  %55 = add i32 %gp_offset88, 8
  store i32 %55, i32* %gp_offset_p87, align 16
  br label %vaarg.end96

vaarg.in_mem92:                                   ; preds = %sw.bb85
  %overflow_arg_area_p93 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay86, i32 0, i32 2
  %overflow_arg_area94 = load i8*, i8** %overflow_arg_area_p93, align 8
  %56 = bitcast i8* %overflow_arg_area94 to i32*
  %overflow_arg_area.next95 = getelementptr i8, i8* %overflow_arg_area94, i32 8
  store i8* %overflow_arg_area.next95, i8** %overflow_arg_area_p93, align 8
  br label %vaarg.end96

vaarg.end96:                                      ; preds = %vaarg.in_mem92, %vaarg.in_reg90
  %vaarg.addr97 = phi i32* [ %54, %vaarg.in_reg90 ], [ %56, %vaarg.in_mem92 ]
  %57 = load i32, i32* %vaarg.addr97, align 4
  store i32 %57, i32* %i, align 4
  %arraydecay98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay98, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p, align 4
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg99, label %vaarg.in_mem101

vaarg.in_reg99:                                   ; preds = %vaarg.end96
  %58 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay98, i32 0, i32 3
  %reg_save_area100 = load i8*, i8** %58, align 16
  %59 = getelementptr i8, i8* %reg_save_area100, i32 %fp_offset
  %60 = bitcast i8* %59 to double*
  %61 = add i32 %fp_offset, 16
  store i32 %61, i32* %fp_offset_p, align 4
  br label %vaarg.end105

vaarg.in_mem101:                                  ; preds = %vaarg.end96
  %overflow_arg_area_p102 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay98, i32 0, i32 2
  %overflow_arg_area103 = load i8*, i8** %overflow_arg_area_p102, align 8
  %62 = bitcast i8* %overflow_arg_area103 to double*
  %overflow_arg_area.next104 = getelementptr i8, i8* %overflow_arg_area103, i32 8
  store i8* %overflow_arg_area.next104, i8** %overflow_arg_area_p102, align 8
  br label %vaarg.end105

vaarg.end105:                                     ; preds = %vaarg.in_mem101, %vaarg.in_reg99
  %vaarg.addr106 = phi double* [ %60, %vaarg.in_reg99 ], [ %62, %vaarg.in_mem101 ]
  %63 = load double, double* %vaarg.addr106, align 8
  store double %63, double* %d, align 8
  %64 = load i32, i32* %i, align 4
  %arrayidx107 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 1
  call void @quantum_int2char(i32 %64, i8* %arrayidx107)
  %65 = load double, double* %d, align 8
  %arrayidx108 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 5
  call void @quantum_double2char(double %65, i8* %arrayidx108)
  store i32 13, i32* %size, align 4
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.end
  %arraydecay110 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p111 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay110, i32 0, i32 0
  %gp_offset112 = load i32, i32* %gp_offset_p111, align 16
  %fits_in_gp113 = icmp ule i32 %gp_offset112, 40
  br i1 %fits_in_gp113, label %vaarg.in_reg114, label %vaarg.in_mem116

vaarg.in_reg114:                                  ; preds = %sw.bb109
  %66 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay110, i32 0, i32 3
  %reg_save_area115 = load i8*, i8** %66, align 16
  %67 = getelementptr i8, i8* %reg_save_area115, i32 %gp_offset112
  %68 = bitcast i8* %67 to i32*
  %69 = add i32 %gp_offset112, 8
  store i32 %69, i32* %gp_offset_p111, align 16
  br label %vaarg.end120

vaarg.in_mem116:                                  ; preds = %sw.bb109
  %overflow_arg_area_p117 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay110, i32 0, i32 2
  %overflow_arg_area118 = load i8*, i8** %overflow_arg_area_p117, align 8
  %70 = bitcast i8* %overflow_arg_area118 to i32*
  %overflow_arg_area.next119 = getelementptr i8, i8* %overflow_arg_area118, i32 8
  store i8* %overflow_arg_area.next119, i8** %overflow_arg_area_p117, align 8
  br label %vaarg.end120

vaarg.end120:                                     ; preds = %vaarg.in_mem116, %vaarg.in_reg114
  %vaarg.addr121 = phi i32* [ %68, %vaarg.in_reg114 ], [ %70, %vaarg.in_mem116 ]
  %71 = load i32, i32* %vaarg.addr121, align 4
  store i32 %71, i32* %i, align 4
  %72 = load i32, i32* %i, align 4
  %arrayidx122 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 1
  call void @quantum_int2char(i32 %72, i8* %arrayidx122)
  %arraydecay123 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p124 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay123, i32 0, i32 0
  %gp_offset125 = load i32, i32* %gp_offset_p124, align 16
  %fits_in_gp126 = icmp ule i32 %gp_offset125, 40
  br i1 %fits_in_gp126, label %vaarg.in_reg127, label %vaarg.in_mem129

vaarg.in_reg127:                                  ; preds = %vaarg.end120
  %73 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay123, i32 0, i32 3
  %reg_save_area128 = load i8*, i8** %73, align 16
  %74 = getelementptr i8, i8* %reg_save_area128, i32 %gp_offset125
  %75 = bitcast i8* %74 to i32*
  %76 = add i32 %gp_offset125, 8
  store i32 %76, i32* %gp_offset_p124, align 16
  br label %vaarg.end133

vaarg.in_mem129:                                  ; preds = %vaarg.end120
  %overflow_arg_area_p130 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay123, i32 0, i32 2
  %overflow_arg_area131 = load i8*, i8** %overflow_arg_area_p130, align 8
  %77 = bitcast i8* %overflow_arg_area131 to i32*
  %overflow_arg_area.next132 = getelementptr i8, i8* %overflow_arg_area131, i32 8
  store i8* %overflow_arg_area.next132, i8** %overflow_arg_area_p130, align 8
  br label %vaarg.end133

vaarg.end133:                                     ; preds = %vaarg.in_mem129, %vaarg.in_reg127
  %vaarg.addr134 = phi i32* [ %75, %vaarg.in_reg127 ], [ %77, %vaarg.in_mem129 ]
  %78 = load i32, i32* %vaarg.addr134, align 4
  store i32 %78, i32* %i, align 4
  %79 = load i32, i32* %i, align 4
  %arrayidx135 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 5
  call void @quantum_int2char(i32 %79, i8* %arrayidx135)
  %arraydecay136 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %fp_offset_p137 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay136, i32 0, i32 1
  %fp_offset138 = load i32, i32* %fp_offset_p137, align 4
  %fits_in_fp139 = icmp ule i32 %fp_offset138, 160
  br i1 %fits_in_fp139, label %vaarg.in_reg140, label %vaarg.in_mem142

vaarg.in_reg140:                                  ; preds = %vaarg.end133
  %80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay136, i32 0, i32 3
  %reg_save_area141 = load i8*, i8** %80, align 16
  %81 = getelementptr i8, i8* %reg_save_area141, i32 %fp_offset138
  %82 = bitcast i8* %81 to double*
  %83 = add i32 %fp_offset138, 16
  store i32 %83, i32* %fp_offset_p137, align 4
  br label %vaarg.end146

vaarg.in_mem142:                                  ; preds = %vaarg.end133
  %overflow_arg_area_p143 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay136, i32 0, i32 2
  %overflow_arg_area144 = load i8*, i8** %overflow_arg_area_p143, align 8
  %84 = bitcast i8* %overflow_arg_area144 to double*
  %overflow_arg_area.next145 = getelementptr i8, i8* %overflow_arg_area144, i32 8
  store i8* %overflow_arg_area.next145, i8** %overflow_arg_area_p143, align 8
  br label %vaarg.end146

vaarg.end146:                                     ; preds = %vaarg.in_mem142, %vaarg.in_reg140
  %vaarg.addr147 = phi double* [ %82, %vaarg.in_reg140 ], [ %84, %vaarg.in_mem142 ]
  %85 = load double, double* %vaarg.addr147, align 8
  store double %85, double* %d, align 8
  %86 = load double, double* %d, align 8
  %arrayidx148 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 9
  call void @quantum_double2char(double %86, i8* %arrayidx148)
  store i32 17, i32* %size, align 4
  br label %sw.epilog

sw.bb149:                                         ; preds = %if.end, %if.end
  store i32 1, i32* %size, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %87 = load i8, i8* %operation.addr, align 1
  %conv150 = zext i8 %87 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.30, i32 0, i32 0), i32 %conv150)
  call void @exit(i32 1) #9
  unreachable

sw.epilog:                                        ; preds = %sw.bb149, %vaarg.end146, %vaarg.end105, %vaarg.end82, %vaarg.end68, %vaarg.end28, %vaarg.end
  %88 = load i64, i64* @position, align 8
  %89 = load i32, i32* %size, align 4
  %conv151 = sext i32 %89 to i64
  %add = add i64 %88, %conv151
  %div = udiv i64 %add, 65536
  %90 = load i64, i64* @position, align 8
  %div152 = udiv i64 %90, 65536
  %cmp = icmp ugt i64 %div, %div152
  br i1 %cmp, label %if.then154, label %if.end161

if.then154:                                       ; preds = %sw.epilog
  %91 = load i64, i64* @allocated, align 8
  %inc = add i64 %91, 1
  store i64 %inc, i64* @allocated, align 8
  %92 = load i8*, i8** @objcode, align 8
  %93 = load i64, i64* @allocated, align 8
  %mul = mul i64 %93, 65536
  %call155 = call i8* @realloc(i8* %92, i64 %mul) #5
  store i8* %call155, i8** @objcode, align 8
  %94 = load i8*, i8** @objcode, align 8
  %tobool156 = icmp ne i8* %94, null
  br i1 %tobool156, label %if.end159, label %if.then157

if.then157:                                       ; preds = %if.then154
  %call158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2.31, i32 0, i32 0))
  call void @exit(i32 1) #9
  unreachable

if.end159:                                        ; preds = %if.then154
  %call160 = call i64 @quantum_memman(i64 65536)
  br label %if.end161

if.end161:                                        ; preds = %if.end159, %sw.epilog
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end161
  %95 = load i32, i32* %i, align 4
  %96 = load i32, i32* %size, align 4
  %cmp162 = icmp slt i32 %95, %96
  br i1 %cmp162, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %97 = load i32, i32* %i, align 4
  %idxprom = sext i32 %97 to i64
  %arrayidx164 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 %idxprom
  %98 = load i8, i8* %arrayidx164, align 1
  %99 = load i8*, i8** @objcode, align 8
  %100 = load i64, i64* @position, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 %98, i8* %arrayidx165, align 1
  %101 = load i64, i64* @position, align 8
  %inc166 = add i64 %101, 1
  store i64 %inc166, i64* @position, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %102 = load i32, i32* %i, align 4
  %inc167 = add nsw i32 %102, 1
  store i32 %inc167, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %103 = load i32, i32* %retval, align 4
  ret i32 %103
}

; Function Attrs: noinline nounwind uwtable
define i32 @quantum_objcode_write(i8* %file) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca i8*, align 8
  %fhd = alloca %struct._IO_FILE*, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load i32, i32* @opstatus, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3.32, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %file.addr, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load i8*, i8** @globalfile, align 8
  store i8* %3, i8** %file.addr, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i8*, i8** %file.addr, align 8
  %call4 = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.33, i32 0, i32 0))
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %fhd, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %cmp = icmp eq %struct._IO_FILE* %5, null
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 -1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  %6 = load i8*, i8** @objcode, align 8
  %7 = load i64, i64* @position, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call7 = call i64 @fwrite(i8* %6, i64 %7, i64 1, %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call8 = call i32 @fclose(%struct._IO_FILE* %9)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define void @quantum_objcode_file(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  store i8* %0, i8** @globalfile, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_objcode_exit(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  %call = call i32 @quantum_objcode_write(i8* null)
  call void @quantum_objcode_stop()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_objcode_run(i8* %file, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %fhd = alloca %struct._IO_FILE*, align 8
  %operation = alloca i8, align 1
  %buf = alloca [80 x i8], align 16
  %mu = alloca i64, align 8
  %d = alloca double, align 8
  %tmp = alloca %struct.quantum_reg_struct, align 8
  store i8* %file, i8** %file.addr, align 8
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fhd, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %file.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i8* %3)
  call void @perror(i8* null)
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc93, %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call2 = call i32 @feof(%struct._IO_FILE* %4) #5
  %tobool3 = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool3, true
  br i1 %lnot, label %for.body, label %for.end95

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %5, 80
  br i1 %cmp, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond4
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call6 = call i32 @fgetc(%struct._IO_FILE* %8)
  %conv = trunc i32 %call6 to i8
  store i8 %conv, i8* %operation, align 1
  %9 = load i8, i8* %operation, align 1
  %conv7 = zext i8 %9 to i32
  switch i32 %conv7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 12, label %sw.bb11
    i32 2, label %sw.bb23
    i32 3, label %sw.bb36
    i32 4, label %sw.bb36
    i32 5, label %sw.bb36
    i32 6, label %sw.bb36
    i32 129, label %sw.bb36
    i32 130, label %sw.bb36
    i32 14, label %sw.bb36
    i32 7, label %sw.bb52
    i32 8, label %sw.bb52
    i32 9, label %sw.bb52
    i32 10, label %sw.bb52
    i32 11, label %sw.bb52
    i32 13, label %sw.bb73
    i32 128, label %sw.bb87
    i32 255, label %sw.bb89
  ]

sw.bb:                                            ; preds = %for.end
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call8 = call i64 @fread(i8* %arraydecay, i64 8, i64 1, %struct._IO_FILE* %10)
  %arraydecay9 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call10 = call i64 @quantum_char2mu(i8* %arraydecay9)
  store i64 %call10, i64* %mu, align 8
  %11 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %12 = load i64, i64* %mu, align 8
  call void @quantum_new_qureg(%struct.quantum_reg_struct* sret %tmp, i64 %12, i32 12)
  %13 = bitcast %struct.quantum_reg_struct* %11 to i8*
  %14 = bitcast %struct.quantum_reg_struct* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  br label %sw.epilog92

sw.bb11:                                          ; preds = %for.end, %for.end
  %arraydecay12 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call13 = call i64 @fread(i8* %arraydecay12, i64 4, i64 1, %struct._IO_FILE* %15)
  %arraydecay14 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call15 = call i32 @quantum_char2int(i8* %arraydecay14)
  store i32 %call15, i32* %j, align 4
  %arraydecay16 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call17 = call i64 @fread(i8* %arraydecay16, i64 4, i64 1, %struct._IO_FILE* %16)
  %arraydecay18 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call19 = call i32 @quantum_char2int(i8* %arraydecay18)
  store i32 %call19, i32* %k, align 4
  %17 = load i8, i8* %operation, align 1
  %conv20 = zext i8 %17 to i32
  switch i32 %conv20, label %sw.epilog [
    i32 1, label %sw.bb21
    i32 12, label %sw.bb22
  ]

sw.bb21:                                          ; preds = %sw.bb11
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %k, align 4
  %20 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %18, i32 %19, %struct.quantum_reg_struct* %20)
  br label %sw.epilog

sw.bb22:                                          ; preds = %sw.bb11
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %k, align 4
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cond_phase(i32 %21, i32 %22, %struct.quantum_reg_struct* %23)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb22, %sw.bb21
  br label %sw.epilog92

sw.bb23:                                          ; preds = %for.end
  %arraydecay24 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call25 = call i64 @fread(i8* %arraydecay24, i64 4, i64 1, %struct._IO_FILE* %24)
  %arraydecay26 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call27 = call i32 @quantum_char2int(i8* %arraydecay26)
  store i32 %call27, i32* %j, align 4
  %arraydecay28 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call29 = call i64 @fread(i8* %arraydecay28, i64 4, i64 1, %struct._IO_FILE* %25)
  %arraydecay30 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call31 = call i32 @quantum_char2int(i8* %arraydecay30)
  store i32 %call31, i32* %k, align 4
  %arraydecay32 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call33 = call i64 @fread(i8* %arraydecay32, i64 4, i64 1, %struct._IO_FILE* %26)
  %arraydecay34 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call35 = call i32 @quantum_char2int(i8* %arraydecay34)
  store i32 %call35, i32* %l, align 4
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %k, align 4
  %29 = load i32, i32* %l, align 4
  %30 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %27, i32 %28, i32 %29, %struct.quantum_reg_struct* %30)
  br label %sw.epilog92

sw.bb36:                                          ; preds = %for.end, %for.end, %for.end, %for.end, %for.end, %for.end, %for.end
  %arraydecay37 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call38 = call i64 @fread(i8* %arraydecay37, i64 4, i64 1, %struct._IO_FILE* %31)
  %arraydecay39 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call40 = call i32 @quantum_char2int(i8* %arraydecay39)
  store i32 %call40, i32* %j, align 4
  %32 = load i8, i8* %operation, align 1
  %conv41 = zext i8 %32 to i32
  switch i32 %conv41, label %sw.epilog51 [
    i32 3, label %sw.bb42
    i32 4, label %sw.bb43
    i32 5, label %sw.bb44
    i32 6, label %sw.bb45
    i32 129, label %sw.bb46
    i32 130, label %sw.bb48
    i32 14, label %sw.bb50
  ]

sw.bb42:                                          ; preds = %sw.bb36
  %33 = load i32, i32* %j, align 4
  %34 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %33, %struct.quantum_reg_struct* %34)
  br label %sw.epilog51

sw.bb43:                                          ; preds = %sw.bb36
  %35 = load i32, i32* %j, align 4
  %36 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_y(i32 %35, %struct.quantum_reg_struct* %36)
  br label %sw.epilog51

sw.bb44:                                          ; preds = %sw.bb36
  %37 = load i32, i32* %j, align 4
  %38 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_z(i32 %37, %struct.quantum_reg_struct* %38)
  br label %sw.epilog51

sw.bb45:                                          ; preds = %sw.bb36
  %39 = load i32, i32* %j, align 4
  %40 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %39, %struct.quantum_reg_struct* %40)
  br label %sw.epilog51

sw.bb46:                                          ; preds = %sw.bb36
  %41 = load i32, i32* %j, align 4
  %42 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call47 = call i32 @quantum_bmeasure(i32 %41, %struct.quantum_reg_struct* %42)
  br label %sw.epilog51

sw.bb48:                                          ; preds = %sw.bb36
  %43 = load i32, i32* %j, align 4
  %44 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call49 = call i32 @quantum_bmeasure_bitpreserve(i32 %43, %struct.quantum_reg_struct* %44)
  br label %sw.epilog51

sw.bb50:                                          ; preds = %sw.bb36
  %45 = load i32, i32* %j, align 4
  %46 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_swaptheleads(i32 %45, %struct.quantum_reg_struct* %46)
  br label %sw.epilog51

sw.epilog51:                                      ; preds = %sw.bb36, %sw.bb50, %sw.bb48, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42
  br label %sw.epilog92

sw.bb52:                                          ; preds = %for.end, %for.end, %for.end, %for.end, %for.end
  %arraydecay53 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call54 = call i64 @fread(i8* %arraydecay53, i64 4, i64 1, %struct._IO_FILE* %47)
  %arraydecay55 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call56 = call i32 @quantum_char2int(i8* %arraydecay55)
  store i32 %call56, i32* %j, align 4
  %arraydecay57 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call58 = call i64 @fread(i8* %arraydecay57, i64 8, i64 1, %struct._IO_FILE* %48)
  %arraydecay59 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call60 = call double @quantum_char2double(i8* %arraydecay59)
  store double %call60, double* %d, align 8
  %49 = load i8, i8* %operation, align 1
  %conv61 = zext i8 %49 to i32
  switch i32 %conv61, label %sw.epilog72 [
    i32 7, label %sw.bb62
    i32 8, label %sw.bb64
    i32 9, label %sw.bb66
    i32 10, label %sw.bb68
    i32 11, label %sw.bb70
  ]

sw.bb62:                                          ; preds = %sw.bb52
  %50 = load i32, i32* %j, align 4
  %51 = load double, double* %d, align 8
  %conv63 = fptrunc double %51 to float
  %52 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_r_x(i32 %50, float %conv63, %struct.quantum_reg_struct* %52)
  br label %sw.epilog72

sw.bb64:                                          ; preds = %sw.bb52
  %53 = load i32, i32* %j, align 4
  %54 = load double, double* %d, align 8
  %conv65 = fptrunc double %54 to float
  %55 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_r_y(i32 %53, float %conv65, %struct.quantum_reg_struct* %55)
  br label %sw.epilog72

sw.bb66:                                          ; preds = %sw.bb52
  %56 = load i32, i32* %j, align 4
  %57 = load double, double* %d, align 8
  %conv67 = fptrunc double %57 to float
  %58 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_r_z(i32 %56, float %conv67, %struct.quantum_reg_struct* %58)
  br label %sw.epilog72

sw.bb68:                                          ; preds = %sw.bb52
  %59 = load i32, i32* %j, align 4
  %60 = load double, double* %d, align 8
  %conv69 = fptrunc double %60 to float
  %61 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_phase_kick(i32 %59, float %conv69, %struct.quantum_reg_struct* %61)
  br label %sw.epilog72

sw.bb70:                                          ; preds = %sw.bb52
  %62 = load i32, i32* %j, align 4
  %63 = load double, double* %d, align 8
  %conv71 = fptrunc double %63 to float
  %64 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_phase_scale(i32 %62, float %conv71, %struct.quantum_reg_struct* %64)
  br label %sw.epilog72

sw.epilog72:                                      ; preds = %sw.bb52, %sw.bb70, %sw.bb68, %sw.bb66, %sw.bb64, %sw.bb62
  br label %sw.epilog92

sw.bb73:                                          ; preds = %for.end
  %arraydecay74 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call75 = call i64 @fread(i8* %arraydecay74, i64 4, i64 1, %struct._IO_FILE* %65)
  %arraydecay76 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call77 = call i32 @quantum_char2int(i8* %arraydecay76)
  store i32 %call77, i32* %j, align 4
  %arraydecay78 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call79 = call i64 @fread(i8* %arraydecay78, i64 4, i64 1, %struct._IO_FILE* %66)
  %arraydecay80 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call81 = call i32 @quantum_char2int(i8* %arraydecay80)
  store i32 %call81, i32* %k, align 4
  %arraydecay82 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call83 = call i64 @fread(i8* %arraydecay82, i64 8, i64 1, %struct._IO_FILE* %67)
  %arraydecay84 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %call85 = call double @quantum_char2double(i8* %arraydecay84)
  store double %call85, double* %d, align 8
  %68 = load i32, i32* %j, align 4
  %69 = load i32, i32* %k, align 4
  %70 = load double, double* %d, align 8
  %conv86 = fptrunc double %70 to float
  %71 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cond_phase_kick(i32 %68, i32 %69, float %conv86, %struct.quantum_reg_struct* %71)
  br label %sw.epilog92

sw.bb87:                                          ; preds = %for.end
  %72 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call88 = call i64 @quantum_measure(%struct.quantum_reg_struct* byval align 8 %72)
  br label %sw.epilog92

sw.bb89:                                          ; preds = %for.end
  br label %sw.epilog92

sw.default:                                       ; preds = %for.end
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %74 = load i32, i32* %i, align 4
  %75 = load i8, i8* %operation, align 1
  %conv90 = zext i8 %75 to i32
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i32 %74, i32 %conv90)
  br label %return

sw.epilog92:                                      ; preds = %sw.bb89, %sw.bb87, %sw.bb73, %sw.epilog72, %sw.epilog51, %sw.bb23, %sw.epilog, %sw.bb
  br label %for.inc93

for.inc93:                                        ; preds = %sw.epilog92
  %76 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %76, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond

for.end95:                                        ; preds = %for.cond
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fhd, align 8
  %call96 = call i32 @fclose(%struct._IO_FILE* %77)
  br label %return

return:                                           ; preds = %for.end95, %sw.default, %if.then
  ret void
}

declare void @perror(i8*) #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

declare i32 @fgetc(%struct._IO_FILE*) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define void @emul(i32 %a, i32 %L, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i32, align 4
  %L.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %a.addr, align 4
  %3 = load i32, i32* %i, align 4
  %shr = ashr i32 %2, %3
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 2, %4
  %add = add nsw i32 %mul, 2
  %5 = load i32, i32* %L.addr, align 4
  %6 = load i32, i32* %width.addr, align 4
  %7 = load i32, i32* %i, align 4
  %add1 = add nsw i32 %6, %7
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %add, i32 %5, i32 %add1, %struct.quantum_reg_struct* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @muln(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %ctl.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %L = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %ctl, i32* %ctl.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  store i32 %add, i32* %L, align 4
  %1 = load i32, i32* %ctl.addr, align 4
  %2 = load i32, i32* %width.addr, align 4
  %mul1 = mul nsw i32 2, %2
  %add2 = add nsw i32 %mul1, 2
  %3 = load i32, i32* %L, align 4
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %1, i32 %add2, i32 %3, %struct.quantum_reg_struct* %4)
  %5 = load i32, i32* %a.addr, align 4
  %6 = load i32, i32* %N.addr, align 4
  %rem = srem i32 %5, %6
  %7 = load i32, i32* %L, align 4
  %8 = load i32, i32* %width.addr, align 4
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @emul(i32 %rem, i32 %7, i32 %8, %struct.quantum_reg_struct* %9)
  %10 = load i32, i32* %ctl.addr, align 4
  %11 = load i32, i32* %width.addr, align 4
  %mul3 = mul nsw i32 2, %11
  %add4 = add nsw i32 %mul3, 2
  %12 = load i32, i32* %L, align 4
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %10, i32 %add4, i32 %12, %struct.quantum_reg_struct* %13)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %ctl.addr, align 4
  %17 = load i32, i32* %width.addr, align 4
  %mul5 = mul nsw i32 2, %17
  %add6 = add nsw i32 %mul5, 2
  %18 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %add6, %18
  %19 = load i32, i32* %L, align 4
  %20 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %16, i32 %add7, i32 %19, %struct.quantum_reg_struct* %20)
  %21 = load i32, i32* %N.addr, align 4
  %22 = load i32, i32* %i, align 4
  %shl = shl i32 1, %22
  %23 = load i32, i32* %a.addr, align 4
  %mul8 = mul nsw i32 %shl, %23
  %24 = load i32, i32* %N.addr, align 4
  %rem9 = srem i32 %mul8, %24
  %25 = load i32, i32* %width.addr, align 4
  %26 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @add_mod_n(i32 %21, i32 %rem9, i32 %25, %struct.quantum_reg_struct* %26)
  %27 = load i32, i32* %ctl.addr, align 4
  %28 = load i32, i32* %width.addr, align 4
  %mul10 = mul nsw i32 2, %28
  %add11 = add nsw i32 %mul10, 2
  %29 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %add11, %29
  %30 = load i32, i32* %L, align 4
  %31 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %27, i32 %add12, i32 %30, %struct.quantum_reg_struct* %31)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @muln_inv(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %ctl.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %L = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %ctl, i32* %ctl.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  store i32 %add, i32* %L, align 4
  %1 = load i32, i32* %N.addr, align 4
  %2 = load i32, i32* %a.addr, align 4
  %call = call i32 @quantum_inverse_mod(i32 %1, i32 %2)
  store i32 %call, i32* %a.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %ctl.addr, align 4
  %6 = load i32, i32* %width.addr, align 4
  %mul1 = mul nsw i32 2, %6
  %add2 = add nsw i32 %mul1, 2
  %7 = load i32, i32* %i, align 4
  %add3 = add nsw i32 %add2, %7
  %8 = load i32, i32* %L, align 4
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %5, i32 %add3, i32 %8, %struct.quantum_reg_struct* %9)
  %10 = load i32, i32* %N.addr, align 4
  %11 = load i32, i32* %N.addr, align 4
  %12 = load i32, i32* %i, align 4
  %shl = shl i32 1, %12
  %13 = load i32, i32* %a.addr, align 4
  %mul4 = mul nsw i32 %shl, %13
  %14 = load i32, i32* %N.addr, align 4
  %rem = srem i32 %mul4, %14
  %sub5 = sub nsw i32 %11, %rem
  %15 = load i32, i32* %width.addr, align 4
  %16 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @add_mod_n(i32 %10, i32 %sub5, i32 %15, %struct.quantum_reg_struct* %16)
  %17 = load i32, i32* %ctl.addr, align 4
  %18 = load i32, i32* %width.addr, align 4
  %mul6 = mul nsw i32 2, %18
  %add7 = add nsw i32 %mul6, 2
  %19 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %add7, %19
  %20 = load i32, i32* %L, align 4
  %21 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %17, i32 %add8, i32 %20, %struct.quantum_reg_struct* %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %ctl.addr, align 4
  %24 = load i32, i32* %width.addr, align 4
  %mul9 = mul nsw i32 2, %24
  %add10 = add nsw i32 %mul9, 2
  %25 = load i32, i32* %L, align 4
  %26 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %23, i32 %add10, i32 %25, %struct.quantum_reg_struct* %26)
  %27 = load i32, i32* %a.addr, align 4
  %28 = load i32, i32* %N.addr, align 4
  %rem11 = srem i32 %27, %28
  %29 = load i32, i32* %L, align 4
  %30 = load i32, i32* %width.addr, align 4
  %31 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @emul(i32 %rem11, i32 %29, i32 %30, %struct.quantum_reg_struct* %31)
  %32 = load i32, i32* %ctl.addr, align 4
  %33 = load i32, i32* %width.addr, align 4
  %mul12 = mul nsw i32 2, %33
  %add13 = add nsw i32 %mul12, 2
  %34 = load i32, i32* %L, align 4
  %35 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_toffoli(i32 %32, i32 %add13, i32 %34, %struct.quantum_reg_struct* %35)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @mul_mod_n(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %N.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %ctl.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %ctl, i32* %ctl.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %1 = load i32, i32* %a.addr, align 4
  %2 = load i32, i32* %ctl.addr, align 4
  %3 = load i32, i32* %width.addr, align 4
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muln(i32 %0, i32 %1, i32 %2, i32 %3, %struct.quantum_reg_struct* %4)
  %5 = load i32, i32* %ctl.addr, align 4
  %6 = load i32, i32* %width.addr, align 4
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_swaptheleads_omuln_controlled(i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  %8 = load i32, i32* %N.addr, align 4
  %9 = load i32, i32* %a.addr, align 4
  %10 = load i32, i32* %ctl.addr, align 4
  %11 = load i32, i32* %width.addr, align 4
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @muln_inv(i32 %8, i32 %9, i32 %10, i32 %11, %struct.quantum_reg_struct* %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_qec_set_status(i32 %stype, i32 %swidth) #0 {
entry:
  %stype.addr = alloca i32, align 4
  %swidth.addr = alloca i32, align 4
  store i32 %stype, i32* %stype.addr, align 4
  store i32 %swidth, i32* %swidth.addr, align 4
  %0 = load i32, i32* %stype.addr, align 4
  store i32 %0, i32* @type, align 4
  %1 = load i32, i32* %swidth.addr, align 4
  store i32 %1, i32* @width, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_qec_get_status(i32* %ptype, i32* %pwidth) #0 {
entry:
  %ptype.addr = alloca i32*, align 8
  %pwidth.addr = alloca i32*, align 8
  store i32* %ptype, i32** %ptype.addr, align 8
  store i32* %pwidth, i32** %pwidth.addr, align 8
  %0 = load i32*, i32** %ptype.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @type, align 4
  %2 = load i32*, i32** %ptype.addr, align 8
  store i32 %1, i32* %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32*, i32** %pwidth.addr, align 8
  %tobool1 = icmp ne i32* %3, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* @width, align 4
  %5 = load i32*, i32** %pwidth.addr, align 8
  store i32 %4, i32* %5, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_qec_encode(i32 %type, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %type.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %lambda = alloca float, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %call = call float (...) bitcast (float ()* @quantum_get_decoherence to float (...)*)()
  store float %call, float* %lambda, align 4
  call void @quantum_set_decoherence(float 0.000000e+00)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %1, i32 0, i32 0
  %2 = load i32, i32* %width1, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %width2, align 8
  %sub = sub nsw i32 %5, 1
  %cmp3 = icmp eq i32 %3, %sub
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load float, float* %lambda, align 4
  call void @quantum_set_decoherence(float %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %width.addr, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width6 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 0
  %10 = load i32, i32* %width6, align 8
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %10, %11
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %add, %struct.quantum_reg_struct* %12)
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width7 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %13, i32 0, i32 0
  %14 = load i32, i32* %width7, align 8
  %mul = mul nsw i32 2, %14
  %15 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %mul, %15
  %16 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %add8, %struct.quantum_reg_struct* %16)
  %17 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width9 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %17, i32 0, i32 0
  %18 = load i32, i32* %width9, align 8
  %19 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %18, %19
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add10, i32 %20, %struct.quantum_reg_struct* %21)
  %22 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width11 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %22, i32 0, i32 0
  %23 = load i32, i32* %width11, align 8
  %mul12 = mul nsw i32 2, %23
  %24 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %mul12, %24
  %25 = load i32, i32* %i, align 4
  %26 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add13, i32 %25, %struct.quantum_reg_struct* %26)
  br label %if.end19

if.else:                                          ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %28 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width14 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %28, i32 0, i32 0
  %29 = load i32, i32* %width14, align 8
  %30 = load i32, i32* %i, align 4
  %add15 = add nsw i32 %29, %30
  %31 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %27, i32 %add15, %struct.quantum_reg_struct* %31)
  %32 = load i32, i32* %i, align 4
  %33 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width16 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %33, i32 0, i32 0
  %34 = load i32, i32* %width16, align 8
  %mul17 = mul nsw i32 2, %34
  %35 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %mul17, %35
  %36 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %32, i32 %add18, %struct.quantum_reg_struct* %36)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then5
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width20 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %38, i32 0, i32 0
  %39 = load i32, i32* %width20, align 8
  call void @quantum_qec_set_status(i32 1, i32 %39)
  %40 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width21 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %40, i32 0, i32 0
  %41 = load i32, i32* %width21, align 8
  %mul22 = mul nsw i32 %41, 3
  store i32 %mul22, i32* %width21, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_qec_decode(i32 %type, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %type.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %swidth = alloca i32, align 4
  %lambda = alloca float, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %call = call float (...) bitcast (float ()* @quantum_get_decoherence to float (...)*)()
  store float %call, float* %lambda, align 4
  call void @quantum_set_decoherence(float 0.000000e+00)
  %0 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %width1, align 8
  %div = sdiv i32 %1, 3
  store i32 %div, i32* %swidth, align 4
  call void @quantum_qec_set_status(i32 0, i32 0)
  %2 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %2, i32 0, i32 0
  %3 = load i32, i32* %width2, align 8
  %div3 = sdiv i32 %3, 3
  %sub = sub nsw i32 %div3, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load float, float* %lambda, align 4
  call void @quantum_set_decoherence(float %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %width.addr, align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %9 = load i32, i32* %swidth, align 4
  %mul = mul nsw i32 2, %9
  %10 = load i32, i32* %i, align 4
  %add = add nsw i32 %mul, %10
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add, i32 %11, %struct.quantum_reg_struct* %12)
  %13 = load i32, i32* %swidth, align 4
  %14 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %13, %14
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add7, i32 %15, %struct.quantum_reg_struct* %16)
  %17 = load i32, i32* %swidth, align 4
  %mul8 = mul nsw i32 2, %17
  %18 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %mul8, %18
  %19 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %add9, %struct.quantum_reg_struct* %19)
  %20 = load i32, i32* %swidth, align 4
  %21 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %20, %21
  %22 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %add10, %struct.quantum_reg_struct* %22)
  br label %if.end14

if.else:                                          ; preds = %if.end
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %swidth, align 4
  %mul11 = mul nsw i32 2, %24
  %25 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %mul11, %25
  %26 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %23, i32 %add12, %struct.quantum_reg_struct* %26)
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %swidth, align 4
  %29 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %28, %29
  %30 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %27, i32 %add13, %struct.quantum_reg_struct* %30)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then6
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %31 = load i32, i32* %i, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc30, %for.end
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %swidth, align 4
  %cmp16 = icmp sle i32 %32, %33
  br i1 %cmp16, label %for.body17, label %for.end31

for.body17:                                       ; preds = %for.cond15
  %34 = load i32, i32* %swidth, align 4
  %35 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call18 = call i32 @quantum_bmeasure(i32 %34, %struct.quantum_reg_struct* %35)
  store i32 %call18, i32* %a, align 4
  %36 = load i32, i32* %swidth, align 4
  %mul19 = mul nsw i32 2, %36
  %37 = load i32, i32* %i, align 4
  %sub20 = sub nsw i32 %mul19, %37
  %38 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call21 = call i32 @quantum_bmeasure(i32 %sub20, %struct.quantum_reg_struct* %38)
  store i32 %call21, i32* %b, align 4
  %39 = load i32, i32* %a, align 4
  %cmp22 = icmp eq i32 %39, 1
  br i1 %cmp22, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %for.body17
  %40 = load i32, i32* %b, align 4
  %cmp23 = icmp eq i32 %40, 1
  br i1 %cmp23, label %land.lhs.true24, label %if.end29

land.lhs.true24:                                  ; preds = %land.lhs.true
  %41 = load i32, i32* %i, align 4
  %sub25 = sub nsw i32 %41, 1
  %42 = load i32, i32* %width.addr, align 4
  %cmp26 = icmp slt i32 %sub25, %42
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %land.lhs.true24
  %43 = load i32, i32* %i, align 4
  %sub28 = sub nsw i32 %43, 1
  %44 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_z(i32 %sub28, %struct.quantum_reg_struct* %44)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %land.lhs.true24, %land.lhs.true, %for.body17
  br label %for.inc30

for.inc30:                                        ; preds = %if.end29
  %45 = load i32, i32* %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond15

for.end31:                                        ; preds = %for.cond15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @quantum_qec_counter(i32 %inc, i32 %frequency, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %inc.addr = alloca i32, align 4
  %frequency.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store i32 %inc, i32* %inc.addr, align 4
  store i32 %frequency, i32* %frequency.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %inc.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %inc.addr, align 4
  %2 = load i32, i32* @quantum_qec_counter.counter, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* @quantum_qec_counter.counter, align 4
  br label %if.end3

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %inc.addr, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  store i32 0, i32* @quantum_qec_counter.counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %4 = load i32, i32* %frequency.addr, align 4
  %cmp4 = icmp sgt i32 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %5 = load i32, i32* %frequency.addr, align 4
  store i32 %5, i32* @quantum_qec_counter.freq, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %6 = load i32, i32* @quantum_qec_counter.counter, align 4
  %7 = load i32, i32* @quantum_qec_counter.freq, align 4
  %cmp7 = icmp sge i32 %6, %7
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i32 0, i32* @quantum_qec_counter.counter, align 4
  %8 = load i32, i32* @type, align 4
  %9 = load i32, i32* @width, align 4
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_decode(i32 %8, i32 %9, %struct.quantum_reg_struct* %10)
  %11 = load i32, i32* @type, align 4
  %12 = load i32, i32* @width, align 4
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_qec_encode(i32 %11, i32 %12, %struct.quantum_reg_struct* %13)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %14 = load i32, i32* @quantum_qec_counter.counter, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_sigma_x_ft(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %tmp = alloca i32, align 4
  %lambda = alloca float, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* @type, align 4
  store i32 %0, i32* %tmp, align 4
  store i32 0, i32* @type, align 4
  %call = call float (...) bitcast (float ()* @quantum_get_decoherence to float (...)*)()
  store float %call, float* %lambda, align 4
  call void @quantum_set_decoherence(float 0.000000e+00)
  %1 = load i32, i32* %target.addr, align 4
  %2 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %1, %struct.quantum_reg_struct* %2)
  %3 = load i32, i32* %target.addr, align 4
  %4 = load i32, i32* @width, align 4
  %add = add nsw i32 %3, %4
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add, %struct.quantum_reg_struct* %5)
  %6 = load float, float* %lambda, align 4
  call void @quantum_set_decoherence(float %6)
  %7 = load i32, i32* %target.addr, align 4
  %8 = load i32, i32* @width, align 4
  %mul = mul nsw i32 2, %8
  %add2 = add nsw i32 %7, %mul
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_sigma_x(i32 %add2, %struct.quantum_reg_struct* %9)
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call3 = call i32 @quantum_qec_counter(i32 1, i32 0, %struct.quantum_reg_struct* %10)
  %11 = load i32, i32* %tmp, align 4
  store i32 %11, i32* @type, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_cnot_ft(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %tmp = alloca i32, align 4
  %lambda = alloca float, align 4
  store i32 %control, i32* %control.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* @type, align 4
  store i32 %0, i32* %tmp, align 4
  store i32 0, i32* @type, align 4
  %call = call float (...) bitcast (float ()* @quantum_get_decoherence to float (...)*)()
  store float %call, float* %lambda, align 4
  call void @quantum_set_decoherence(float 0.000000e+00)
  %1 = load i32, i32* %control.addr, align 4
  %2 = load i32, i32* %target.addr, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %1, i32 %2, %struct.quantum_reg_struct* %3)
  %4 = load i32, i32* %control.addr, align 4
  %5 = load i32, i32* @width, align 4
  %add = add nsw i32 %4, %5
  %6 = load i32, i32* %target.addr, align 4
  %7 = load i32, i32* @width, align 4
  %add2 = add nsw i32 %6, %7
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add, i32 %add2, %struct.quantum_reg_struct* %8)
  %9 = load float, float* %lambda, align 4
  call void @quantum_set_decoherence(float %9)
  %10 = load i32, i32* %control.addr, align 4
  %11 = load i32, i32* @width, align 4
  %mul = mul nsw i32 2, %11
  %add3 = add nsw i32 %10, %mul
  %12 = load i32, i32* %target.addr, align 4
  %13 = load i32, i32* @width, align 4
  %mul4 = mul nsw i32 2, %13
  %add5 = add nsw i32 %12, %mul4
  %14 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cnot(i32 %add3, i32 %add5, %struct.quantum_reg_struct* %14)
  %15 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call6 = call i32 @quantum_qec_counter(i32 1, i32 0, %struct.quantum_reg_struct* %15)
  %16 = load i32, i32* %tmp, align 4
  store i32 %16, i32* @type, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_toffoli_ft(i32 %control1, i32 %control2, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %control1.addr = alloca i32, align 4
  %control2.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %mask = alloca i64, align 8
  store i32 %control1, i32* %control1.addr, align 4
  store i32 %control2, i32* %control2.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %target.addr, align 4
  %sh_prom = zext i32 %0 to i64
  %shl = shl i64 1, %sh_prom
  %1 = load i32, i32* %target.addr, align 4
  %2 = load i32, i32* @width, align 4
  %add = add nsw i32 %1, %2
  %sh_prom1 = zext i32 %add to i64
  %shl2 = shl i64 1, %sh_prom1
  %add3 = add i64 %shl, %shl2
  %3 = load i32, i32* %target.addr, align 4
  %4 = load i32, i32* @width, align 4
  %mul = mul nsw i32 2, %4
  %add4 = add nsw i32 %3, %mul
  %sh_prom5 = zext i32 %add4 to i64
  %shl6 = shl i64 1, %sh_prom5
  %add7 = add i64 %add3, %shl6
  store i64 %add7, i64* %mask, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %c1, align 4
  store i32 0, i32* %c2, align 4
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %8, i32 0, i32 3
  %9 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %9, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %11 = load i64, i64* %state, align 8
  %12 = load i32, i32* %control1.addr, align 4
  %sh_prom8 = zext i32 %12 to i64
  %shl9 = shl i64 1, %sh_prom8
  %and = and i64 %11, %shl9
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %c1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node10 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %13, i32 0, i32 3
  %14 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node10, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %14, i64 %idxprom11
  %state13 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx12, i32 0, i32 1
  %16 = load i64, i64* %state13, align 8
  %17 = load i32, i32* %control1.addr, align 4
  %18 = load i32, i32* @width, align 4
  %add14 = add nsw i32 %17, %18
  %sh_prom15 = zext i32 %add14 to i64
  %shl16 = shl i64 1, %sh_prom15
  %and17 = and i64 %16, %shl16
  %tobool18 = icmp ne i64 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end
  %19 = load i32, i32* %c1, align 4
  %xor = xor i32 %19, 1
  store i32 %xor, i32* %c1, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end
  %20 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node21 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %20, i32 0, i32 3
  %21 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node21, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %21, i64 %idxprom22
  %state24 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx23, i32 0, i32 1
  %23 = load i64, i64* %state24, align 8
  %24 = load i32, i32* %control1.addr, align 4
  %25 = load i32, i32* @width, align 4
  %mul25 = mul nsw i32 2, %25
  %add26 = add nsw i32 %24, %mul25
  %sh_prom27 = zext i32 %add26 to i64
  %shl28 = shl i64 1, %sh_prom27
  %and29 = and i64 %23, %shl28
  %tobool30 = icmp ne i64 %and29, 0
  br i1 %tobool30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end20
  %26 = load i32, i32* %c1, align 4
  %xor32 = xor i32 %26, 1
  store i32 %xor32, i32* %c1, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end20
  %27 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node34 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %27, i32 0, i32 3
  %28 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node34, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %28, i64 %idxprom35
  %state37 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx36, i32 0, i32 1
  %30 = load i64, i64* %state37, align 8
  %31 = load i32, i32* %control2.addr, align 4
  %sh_prom38 = zext i32 %31 to i64
  %shl39 = shl i64 1, %sh_prom38
  %and40 = and i64 %30, %shl39
  %tobool41 = icmp ne i64 %and40, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end33
  store i32 1, i32* %c2, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end33
  %32 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node44 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %32, i32 0, i32 3
  %33 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node44, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %34 to i64
  %arrayidx46 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %33, i64 %idxprom45
  %state47 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx46, i32 0, i32 1
  %35 = load i64, i64* %state47, align 8
  %36 = load i32, i32* %control2.addr, align 4
  %37 = load i32, i32* @width, align 4
  %add48 = add nsw i32 %36, %37
  %sh_prom49 = zext i32 %add48 to i64
  %shl50 = shl i64 1, %sh_prom49
  %and51 = and i64 %35, %shl50
  %tobool52 = icmp ne i64 %and51, 0
  br i1 %tobool52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end43
  %38 = load i32, i32* %c2, align 4
  %xor54 = xor i32 %38, 1
  store i32 %xor54, i32* %c2, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end43
  %39 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node56 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %39, i32 0, i32 3
  %40 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node56, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %41 to i64
  %arrayidx58 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %40, i64 %idxprom57
  %state59 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx58, i32 0, i32 1
  %42 = load i64, i64* %state59, align 8
  %43 = load i32, i32* %control2.addr, align 4
  %44 = load i32, i32* @width, align 4
  %mul60 = mul nsw i32 2, %44
  %add61 = add nsw i32 %43, %mul60
  %sh_prom62 = zext i32 %add61 to i64
  %shl63 = shl i64 1, %sh_prom62
  %and64 = and i64 %42, %shl63
  %tobool65 = icmp ne i64 %and64, 0
  br i1 %tobool65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end55
  %45 = load i32, i32* %c2, align 4
  %xor67 = xor i32 %45, 1
  store i32 %xor67, i32* %c2, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end55
  %46 = load i32, i32* %c1, align 4
  %cmp69 = icmp eq i32 %46, 1
  br i1 %cmp69, label %land.lhs.true, label %if.end81

land.lhs.true:                                    ; preds = %if.end68
  %47 = load i32, i32* %c2, align 4
  %cmp70 = icmp eq i32 %47, 1
  br i1 %cmp70, label %if.then71, label %if.end81

if.then71:                                        ; preds = %land.lhs.true
  %48 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node72 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %48, i32 0, i32 3
  %49 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node72, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %50 to i64
  %arrayidx74 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %49, i64 %idxprom73
  %state75 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx74, i32 0, i32 1
  %51 = load i64, i64* %state75, align 8
  %52 = load i64, i64* %mask, align 8
  %xor76 = xor i64 %51, %52
  %53 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node77 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %53, i32 0, i32 3
  %54 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node77, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %55 to i64
  %arrayidx79 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %54, i64 %idxprom78
  %state80 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx79, i32 0, i32 1
  store i64 %xor76, i64* %state80, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.then71, %land.lhs.true, %if.end68
  br label %for.inc

for.inc:                                          ; preds = %if.end81
  %56 = load i32, i32* %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_decohere(%struct.quantum_reg_struct* %57)
  %58 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %call = call i32 @quantum_qec_counter(i32 1, i32 0, %struct.quantum_reg_struct* %58)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_qft(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %width.addr, align 4
  %sub1 = sub nsw i32 %2, 1
  store i32 %sub1, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp sgt i32 %3, %4
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cond_phase(i32 %5, i32 %6, %struct.quantum_reg_struct* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %8 = load i32, i32* %j, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %9, %struct.quantum_reg_struct* %10)
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %dec6 = add nsw i32 %11, -1
  store i32 %dec6, i32* %i, align 4
  br label %for.cond

for.end7:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_qft_inv(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %width.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %width.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_hadamard(i32 %2, %struct.quantum_reg_struct* %3)
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %width.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_cond_phase_inv(i32 %7, i32 %8, %struct.quantum_reg_struct* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end6:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_matrix2qureg(%struct.quantum_reg_struct* noalias sret %agg.result, %struct.quantum_matrix_struct* %m, i32 %width) #0 {
entry:
  %m.addr = alloca %struct.quantum_matrix_struct*, align 8
  %width.addr = alloca i32, align 4
  %reg = alloca %struct.quantum_reg_struct, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.quantum_matrix_struct* %m, %struct.quantum_matrix_struct** %m.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 0, i32* %size, align 4
  %0 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %cols = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %0, i32 0, i32 1
  %1 = load i32, i32* %cols, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %cols1 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %cols1, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i32 0, i32 0), i32 %3)
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %width.addr, align 4
  %width2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 0
  store i32 %4, i32* %width2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %rows = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %6, i32 0, i32 0
  %7 = load i32, i32* %rows, align 8
  %cmp3 = icmp slt i32 %5, %7
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %t = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %8, i32 0, i32 2
  %9 = load { float, float }*, { float, float }** %t, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds { float, float }, { float, float }* %9, i64 %idxprom
  %arrayidx.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 0
  %arrayidx.real = load float, float* %arrayidx.realp, align 4
  %arrayidx.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 1
  %arrayidx.imag = load float, float* %arrayidx.imagp, align 4
  %tobool = fcmp une float %arrayidx.real, 0.000000e+00
  %tobool4 = fcmp une float %arrayidx.imag, 0.000000e+00
  %tobool5 = or i1 %tobool, %tobool4
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  %11 = load i32, i32* %size, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %size, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %12 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %12, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %size, align 4
  %size9 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  store i32 %13, i32* %size9, align 4
  %14 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %14, 2
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  store i32 %add, i32* %hashw, align 8
  %15 = load i32, i32* %size, align 4
  %conv = sext i32 %15 to i64
  %call10 = call noalias i8* @calloc(i64 %conv, i64 16) #5
  %16 = bitcast i8* %call10 to %struct.quantum_reg_node_struct*
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %16, %struct.quantum_reg_node_struct** %node, align 8
  %node11 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %17 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node11, align 8
  %tobool12 = icmp ne %struct.quantum_reg_node_struct* %17, null
  br i1 %tobool12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %for.end
  %18 = load i32, i32* %size, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1.45, i32 0, i32 0), i32 %18)
  call void @exit(i32 1) #9
  unreachable

if.end15:                                         ; preds = %for.end
  %19 = load i32, i32* %size, align 4
  %conv16 = sext i32 %19 to i64
  %mul = mul i64 %conv16, 16
  %call17 = call i64 @quantum_memman(i64 %mul)
  %hashw18 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %20 = load i32, i32* %hashw18, align 8
  %shl = shl i32 1, %20
  %conv19 = sext i32 %shl to i64
  %call20 = call noalias i8* @calloc(i64 %conv19, i64 4) #5
  %21 = bitcast i8* %call20 to i32*
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  store i32* %21, i32** %hash, align 8
  %hash21 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %22 = load i32*, i32** %hash21, align 8
  %tobool22 = icmp ne i32* %22, null
  br i1 %tobool22, label %if.end27, label %if.then23

if.then23:                                        ; preds = %if.end15
  %hashw24 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %23 = load i32, i32* %hashw24, align 8
  %shl25 = shl i32 1, %23
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2.46, i32 0, i32 0), i32 %shl25)
  call void @exit(i32 1) #9
  unreachable

if.end27:                                         ; preds = %if.end15
  %hashw28 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %24 = load i32, i32* %hashw28, align 8
  %shl29 = shl i32 1, %24
  %conv30 = sext i32 %shl29 to i64
  %mul31 = mul i64 %conv30, 4
  %call32 = call i64 @quantum_memman(i64 %mul31)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc57, %if.end27
  %25 = load i32, i32* %i, align 4
  %26 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %rows34 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %26, i32 0, i32 0
  %27 = load i32, i32* %rows34, align 8
  %cmp35 = icmp slt i32 %25, %27
  br i1 %cmp35, label %for.body37, label %for.end59

for.body37:                                       ; preds = %for.cond33
  %28 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %t38 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %28, i32 0, i32 2
  %29 = load { float, float }*, { float, float }** %t38, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds { float, float }, { float, float }* %29, i64 %idxprom39
  %arrayidx40.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx40, i32 0, i32 0
  %arrayidx40.real = load float, float* %arrayidx40.realp, align 4
  %arrayidx40.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx40, i32 0, i32 1
  %arrayidx40.imag = load float, float* %arrayidx40.imagp, align 4
  %tobool41 = fcmp une float %arrayidx40.real, 0.000000e+00
  %tobool42 = fcmp une float %arrayidx40.imag, 0.000000e+00
  %tobool43 = or i1 %tobool41, %tobool42
  br i1 %tobool43, label %if.then44, label %if.end56

if.then44:                                        ; preds = %for.body37
  %31 = load i32, i32* %i, align 4
  %conv45 = sext i32 %31 to i64
  %node46 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %32 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node46, align 8
  %33 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %33 to i64
  %arrayidx48 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %32, i64 %idxprom47
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx48, i32 0, i32 1
  store i64 %conv45, i64* %state, align 8
  %34 = load %struct.quantum_matrix_struct*, %struct.quantum_matrix_struct** %m.addr, align 8
  %t49 = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %34, i32 0, i32 2
  %35 = load { float, float }*, { float, float }** %t49, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %36 to i64
  %arrayidx51 = getelementptr inbounds { float, float }, { float, float }* %35, i64 %idxprom50
  %arrayidx51.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx51, i32 0, i32 0
  %arrayidx51.real = load float, float* %arrayidx51.realp, align 4
  %arrayidx51.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx51, i32 0, i32 1
  %arrayidx51.imag = load float, float* %arrayidx51.imagp, align 4
  %node52 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %37 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node52, align 8
  %38 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %38 to i64
  %arrayidx54 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %37, i64 %idxprom53
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx54, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float %arrayidx51.real, float* %amplitude.realp, align 8
  store float %arrayidx51.imag, float* %amplitude.imagp, align 4
  %39 = load i32, i32* %j, align 4
  %inc55 = add nsw i32 %39, 1
  store i32 %inc55, i32* %j, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then44, %for.body37
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %40 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %40, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond33

for.end59:                                        ; preds = %for.cond33
  %41 = bitcast %struct.quantum_reg_struct* %agg.result to i8*
  %42 = bitcast %struct.quantum_reg_struct* %reg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_new_qureg(%struct.quantum_reg_struct* noalias sret %agg.result, i64 %initval, i32 %width) #0 {
entry:
  %initval.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %reg = alloca %struct.quantum_reg_struct, align 8
  %c = alloca i8*, align 8
  store i64 %initval, i64* %initval.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %width1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 0
  store i32 %0, i32* %width1, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  store i32 1, i32* %size, align 4
  %1 = load i32, i32* %width.addr, align 4
  %add = add nsw i32 %1, 2
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  store i32 %add, i32* %hashw, align 8
  %call = call noalias i8* @calloc(i64 1, i64 16) #5
  %2 = bitcast i8* %call to %struct.quantum_reg_node_struct*
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %2, %struct.quantum_reg_node_struct** %node, align 8
  %node2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %3 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node2, align 8
  %tobool = icmp ne %struct.quantum_reg_node_struct* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1.45, i32 0, i32 0), i32 1)
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %call4 = call i64 @quantum_memman(i64 16)
  %hashw5 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %4 = load i32, i32* %hashw5, align 8
  %shl = shl i32 1, %4
  %conv = sext i32 %shl to i64
  %call6 = call noalias i8* @calloc(i64 %conv, i64 4) #5
  %5 = bitcast i8* %call6 to i32*
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  store i32* %5, i32** %hash, align 8
  %hash7 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %6 = load i32*, i32** %hash7, align 8
  %tobool8 = icmp ne i32* %6, null
  br i1 %tobool8, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end
  %hashw10 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %7 = load i32, i32* %hashw10, align 8
  %shl11 = shl i32 1, %7
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2.46, i32 0, i32 0), i32 %shl11)
  call void @exit(i32 1) #9
  unreachable

if.end13:                                         ; preds = %if.end
  %hashw14 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %8 = load i32, i32* %hashw14, align 8
  %shl15 = shl i32 1, %8
  %conv16 = sext i32 %shl15 to i64
  %mul = mul i64 %conv16, 4
  %call17 = call i64 @quantum_memman(i64 %mul)
  %9 = load i64, i64* %initval.addr, align 8
  %node18 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node18, align 8
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %10, i64 0
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  store i64 %9, i64* %state, align 8
  %node19 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %11 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node19, align 8
  %arrayidx20 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %11, i64 0
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx20, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  store float 1.000000e+00, float* %amplitude.realp, align 8
  store float 0.000000e+00, float* %amplitude.imagp, align 4
  %call21 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.49, i32 0, i32 0)) #5
  store i8* %call21, i8** %c, align 8
  %12 = load i8*, i8** %c, align 8
  %tobool22 = icmp ne i8* %12, null
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end13
  call void (...) bitcast (void ()* @quantum_objcode_start to void (...)*)()
  %13 = load i8*, i8** %c, align 8
  call void @quantum_objcode_file(i8* %13)
  %call24 = call i32 @atexit(void ()* bitcast (void (i8*)* @quantum_objcode_exit to void ()*)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end13
  %14 = load i64, i64* %initval.addr, align 8
  %call26 = call i32 (i8, ...) @quantum_objcode_put(i8 zeroext 0, i64 %14)
  %15 = bitcast %struct.quantum_reg_struct* %agg.result to i8*
  %16 = bitcast %struct.quantum_reg_struct* %reg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #2

; Function Attrs: noinline nounwind uwtable
define { i64, { float, float }* } @quantum_qureg2matrix(%struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %retval = alloca %struct.quantum_matrix_struct, align 8
  %m = alloca %struct.quantum_matrix_struct, align 8
  %i = alloca i32, align 4
  %coerce = alloca %struct.quantum_matrix_struct, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 0
  %0 = load i32, i32* %width, align 8
  %shl = shl i32 1, %0
  %call = call { i64, { float, float }* } @quantum_new_matrix(i32 1, i32 %shl)
  %1 = bitcast %struct.quantum_matrix_struct* %coerce to { i64, { float, float }* }*
  %2 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %1, i32 0, i32 0
  %3 = extractvalue { i64, { float, float }* } %call, 0
  store i64 %3, i64* %2, align 8
  %4 = getelementptr inbounds { i64, { float, float }* }, { i64, { float, float }* }* %1, i32 0, i32 1
  %5 = extractvalue { i64, { float, float }* } %call, 1
  store { float, float }* %5, { float, float }** %4, align 8
  %6 = bitcast %struct.quantum_matrix_struct* %m to i8*
  %7 = bitcast %struct.quantum_matrix_struct* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %9 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %10, i64 %idxprom
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 8
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %t = getelementptr inbounds %struct.quantum_matrix_struct, %struct.quantum_matrix_struct* %m, i32 0, i32 2
  %12 = load { float, float }*, { float, float }** %t, align 8
  %node1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %13 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node1, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %14 to i64
  %arrayidx3 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %13, i64 %idxprom2
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx3, i32 0, i32 1
  %15 = load i64, i64* %state, align 8
  %arrayidx4 = getelementptr inbounds { float, float }, { float, float }* %12, i64 %15
  %arrayidx4.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx4, i32 0, i32 0
  %arrayidx4.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx4, i32 0, i32 1
  store float %amplitude.real, float* %arrayidx4.realp, align 4
  store float %amplitude.imag, float* %arrayidx4.imagp, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = bitcast %struct.quantum_matrix_struct* %retval to i8*
  %18 = bitcast %struct.quantum_matrix_struct* %m to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %19 = bitcast %struct.quantum_matrix_struct* %retval to { i64, { float, float }* }*
  %20 = load { i64, { float, float }* }, { i64, { float, float }* }* %19, align 8
  ret { i64, { float, float }* } %20
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_destroy_hash(%struct.quantum_reg_struct* %reg) #0 {
entry:
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %0, i32 0, i32 4
  %1 = load i32*, i32** %hash, align 8
  %2 = bitcast i32* %1 to i8*
  call void @free(i8* %2) #5
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %3, i32 0, i32 2
  %4 = load i32, i32* %hashw, align 8
  %shl = shl i32 1, %4
  %sub = sub nsw i32 0, %shl
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 4
  %call = call i64 @quantum_memman(i64 %mul)
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 4
  store i32* null, i32** %hash1, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_delete_qureg(%struct.quantum_reg_struct* %reg) #0 {
entry:
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  call void @quantum_destroy_hash(%struct.quantum_reg_struct* %0)
  %1 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %1, i32 0, i32 3
  %2 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %3 = bitcast %struct.quantum_reg_node_struct* %2 to i8*
  call void @free(i8* %3) #5
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %sub = sub nsw i32 0, %5
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 16
  %call = call i64 @quantum_memman(i64 %mul)
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 3
  store %struct.quantum_reg_node_struct* null, %struct.quantum_reg_node_struct** %node1, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_delete_qureg_hashpreserve(%struct.quantum_reg_struct* %reg) #0 {
entry:
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %0, i32 0, i32 3
  %1 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %2 = bitcast %struct.quantum_reg_node_struct* %1 to i8*
  call void @free(i8* %2) #5
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4
  %sub = sub nsw i32 0, %4
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 16
  %call = call i64 @quantum_memman(i64 %mul)
  %5 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %5, i32 0, i32 3
  store %struct.quantum_reg_node_struct* null, %struct.quantum_reg_node_struct** %node1, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_print_qureg(%struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  %coerce15 = alloca { float, float }, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  %0 = load i32, i32* %i, align 4
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %1 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end35

for.body:                                         ; preds = %for.cond
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %2 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %2, i64 %idxprom
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 8
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %coerce.realp, align 4
  store float %amplitude.imag, float* %coerce.imagp, align 4
  %4 = bitcast { float, float }* %coerce to <2 x float>*
  %5 = load <2 x float>, <2 x float>* %4, align 4
  %call = call float @quantum_real.52(<2 x float> %5)
  %conv = fpext float %call to double
  %node1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %6 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node1, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %6, i64 %idxprom2
  %amplitude4 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx3, i32 0, i32 0
  %amplitude4.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude4, i32 0, i32 0
  %amplitude4.real = load float, float* %amplitude4.realp, align 8
  %amplitude4.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude4, i32 0, i32 1
  %amplitude4.imag = load float, float* %amplitude4.imagp, align 4
  %coerce5.realp = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 0
  %coerce5.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 1
  store float %amplitude4.real, float* %coerce5.realp, align 4
  store float %amplitude4.imag, float* %coerce5.imagp, align 4
  %8 = bitcast { float, float }* %coerce5 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 4
  %call6 = call float @quantum_imag.53(<2 x float> %9)
  %conv7 = fpext float %call6 to double
  %node8 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %10 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node8, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %10, i64 %idxprom9
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx10, i32 0, i32 1
  %12 = load i64, i64* %state, align 8
  %node11 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %13 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node11, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %13, i64 %idxprom12
  %amplitude14 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx13, i32 0, i32 0
  %amplitude14.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude14, i32 0, i32 0
  %amplitude14.real = load float, float* %amplitude14.realp, align 8
  %amplitude14.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude14, i32 0, i32 1
  %amplitude14.imag = load float, float* %amplitude14.imagp, align 4
  %coerce15.realp = getelementptr inbounds { float, float }, { float, float }* %coerce15, i32 0, i32 0
  %coerce15.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce15, i32 0, i32 1
  store float %amplitude14.real, float* %coerce15.realp, align 4
  store float %amplitude14.imag, float* %coerce15.imagp, align 4
  %15 = bitcast { float, float }* %coerce15 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 4
  %call16 = call float @quantum_prob_inline.54(<2 x float> %16)
  %conv17 = fpext float %call16 to double
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4.55, i32 0, i32 0), double %conv, double %conv7, i64 %12, double %conv17)
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 0
  %17 = load i32, i32* %width, align 8
  %sub = sub nsw i32 %17, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %for.body
  %18 = load i32, i32* %j, align 4
  %cmp20 = icmp sge i32 %18, 0
  br i1 %cmp20, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond19
  %19 = load i32, i32* %j, align 4
  %rem = srem i32 %19, 4
  %cmp23 = icmp eq i32 %rem, 3
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body22
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.56, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body22
  %20 = load i32, i32* %j, align 4
  %sh_prom = zext i32 %20 to i64
  %shl = shl i64 1, %sh_prom
  %node26 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %21 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node26, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %21, i64 %idxprom27
  %state29 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx28, i32 0, i32 1
  %23 = load i64, i64* %state29, align 8
  %and = and i64 %shl, %23
  %cmp30 = icmp ugt i64 %and, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.57, i32 0, i32 0), i32 %conv31)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %j, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond19

for.end:                                          ; preds = %for.cond19
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7.58, i32 0, i32 0))
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end35:                                        ; preds = %for.cond
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal float @quantum_real.52(<2 x float> %a.coerce) #0 {
entry:
  %a = alloca { float, float }, align 4
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 4
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float*, float** %p, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 0
  %3 = load float, float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: noinline nounwind uwtable
define internal float @quantum_imag.53(<2 x float> %a.coerce) #0 {
entry:
  %a = alloca { float, float }, align 4
  %p = alloca float*, align 8
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 4
  %1 = bitcast { float, float }* %a to float*
  store float* %1, float** %p, align 8
  %2 = load float*, float** %p, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 1
  %3 = load float, float* %arrayidx, align 4
  ret float %3
}

; Function Attrs: noinline nounwind uwtable
define internal float @quantum_prob_inline.54(<2 x float> %a.coerce) #0 {
entry:
  %a = alloca { float, float }, align 4
  %r = alloca float, align 4
  %i = alloca float, align 4
  %coerce = alloca { float, float }, align 4
  %coerce5 = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 4
  %a.realp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real = load float, float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag = load float, float* %a.imagp, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %a.real, float* %coerce.realp, align 4
  store float %a.imag, float* %coerce.imagp, align 4
  %1 = bitcast { float, float }* %coerce to <2 x float>*
  %2 = load <2 x float>, <2 x float>* %1, align 4
  %call = call float @quantum_real.52(<2 x float> %2)
  store float %call, float* %r, align 4
  %a.realp1 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real2 = load float, float* %a.realp1, align 4
  %a.imagp3 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag4 = load float, float* %a.imagp3, align 4
  %coerce5.realp = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 0
  %coerce5.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce5, i32 0, i32 1
  store float %a.real2, float* %coerce5.realp, align 4
  store float %a.imag4, float* %coerce5.imagp, align 4
  %3 = bitcast { float, float }* %coerce5 to <2 x float>*
  %4 = load <2 x float>, <2 x float>* %3, align 4
  %call6 = call float @quantum_imag.53(<2 x float> %4)
  store float %call6, float* %i, align 4
  %5 = load float, float* %r, align 4
  %6 = load float, float* %r, align 4
  %mul = fmul float %5, %6
  %7 = load float, float* %i, align 4
  %8 = load float, float* %i, align 4
  %mul7 = fmul float %7, %8
  %add = fadd float %mul, %mul7
  ret float %add
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_print_expn(%struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %1 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %3 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %3, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %5 = load i64, i64* %state, align 8
  %6 = load i32, i32* %i, align 4
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 0
  %7 = load i32, i32* %width, align 8
  %div = sdiv i32 %7, 2
  %shl = shl i32 1, %div
  %mul = mul nsw i32 %6, %shl
  %conv = sext i32 %mul to i64
  %sub = sub i64 %5, %conv
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 %2, i64 %sub)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_addscratch(i32 %bits, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %bits.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %oldwidth = alloca i32, align 4
  %l = alloca i64, align 8
  store i32 %bits, i32* %bits.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %width, align 8
  store i32 %1, i32* %oldwidth, align 4
  %2 = load i32, i32* %bits.addr, align 4
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %width1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %3, i32 0, i32 0
  %4 = load i32, i32* %width1, align 8
  %add = add nsw i32 %4, %2
  store i32 %add, i32* %width1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %8, i32 0, i32 3
  %9 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %9, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %11 = load i64, i64* %state, align 8
  %12 = load i32, i32* %bits.addr, align 4
  %sh_prom = zext i32 %12 to i64
  %shl = shl i64 %11, %sh_prom
  store i64 %shl, i64* %l, align 8
  %13 = load i64, i64* %l, align 8
  %14 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %node2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %14, i32 0, i32 3
  %15 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node2, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %16 to i64
  %arrayidx4 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %15, i64 %idxprom3
  %state5 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx4, i32 0, i32 1
  store i64 %13, i64* %state5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_print_hash(%struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %1 = load i32, i32* %hashw, align 8
  %shl = shl i32 1, %1
  %cmp = icmp slt i32 %0, %shl
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %4 = load i32*, i32** %hash, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %6, 1
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %7 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %hash1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %8 = load i32*, i32** %hash1, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  %sub4 = sub nsw i32 %10, 1
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %7, i64 %idxprom5
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx6, i32 0, i32 1
  %11 = load i64, i64* %state, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 %3, i32 %sub, i64 %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_kronecker(%struct.quantum_reg_struct* noalias sret %agg.result, %struct.quantum_reg_struct* %reg1, %struct.quantum_reg_struct* %reg2) #0 {
entry:
  %reg1.addr = alloca %struct.quantum_reg_struct*, align 8
  %reg2.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %reg = alloca %struct.quantum_reg_struct, align 8
  %coerce = alloca { float, float }, align 4
  store %struct.quantum_reg_struct* %reg1, %struct.quantum_reg_struct** %reg1.addr, align 8
  store %struct.quantum_reg_struct* %reg2, %struct.quantum_reg_struct** %reg2.addr, align 8
  %0 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %width, align 8
  %2 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %width1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %2, i32 0, i32 0
  %3 = load i32, i32* %width1, align 8
  %add = add nsw i32 %1, %3
  %width2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 0
  store i32 %add, i32* %width2, align 8
  %4 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %6 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %size3 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %size3, align 4
  %mul = mul nsw i32 %5, %7
  %size4 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  store i32 %mul, i32* %size4, align 4
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %size5 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %8, i32 0, i32 1
  %9 = load i32, i32* %size5, align 4
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %size6 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %size6, align 4
  %mul7 = mul nsw i32 %9, %11
  %add8 = add nsw i32 %mul7, 2
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  store i32 %add8, i32* %hashw, align 8
  %size9 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %12 = load i32, i32* %size9, align 4
  %conv = sext i32 %12 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 16) #5
  %13 = bitcast i8* %call to %struct.quantum_reg_node_struct*
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %13, %struct.quantum_reg_node_struct** %node, align 8
  %node10 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %14 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node10, align 8
  %tobool = icmp ne %struct.quantum_reg_node_struct* %14, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %size11 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %15 = load i32, i32* %size11, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1.45, i32 0, i32 0), i32 %15)
  call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %size13 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %16 = load i32, i32* %size13, align 4
  %conv14 = sext i32 %16 to i64
  %mul15 = mul i64 %conv14, 16
  %call16 = call i64 @quantum_memman(i64 %mul15)
  %hashw17 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %17 = load i32, i32* %hashw17, align 8
  %shl = shl i32 1, %17
  %conv18 = sext i32 %shl to i64
  %call19 = call noalias i8* @calloc(i64 %conv18, i64 4) #5
  %18 = bitcast i8* %call19 to i32*
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  store i32* %18, i32** %hash, align 8
  %hash20 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %19 = load i32*, i32** %hash20, align 8
  %tobool21 = icmp ne i32* %19, null
  br i1 %tobool21, label %if.end26, label %if.then22

if.then22:                                        ; preds = %if.end
  %hashw23 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %20 = load i32, i32* %hashw23, align 8
  %shl24 = shl i32 1, %20
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2.46, i32 0, i32 0), i32 %shl24)
  call void @exit(i32 1) #9
  unreachable

if.end26:                                         ; preds = %if.end
  %hashw27 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %21 = load i32, i32* %hashw27, align 8
  %shl28 = shl i32 1, %21
  %conv29 = sext i32 %shl28 to i64
  %mul30 = mul i64 %conv29, 4
  %call31 = call i64 @quantum_memman(i64 %mul30)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc69, %if.end26
  %22 = load i32, i32* %i, align 4
  %23 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %size32 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %23, i32 0, i32 1
  %24 = load i32, i32* %size32, align 4
  %cmp = icmp slt i32 %22, %24
  br i1 %cmp, label %for.body, label %for.end71

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc, %for.body
  %25 = load i32, i32* %j, align 4
  %26 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %size35 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %26, i32 0, i32 1
  %27 = load i32, i32* %size35, align 4
  %cmp36 = icmp slt i32 %25, %27
  br i1 %cmp36, label %for.body38, label %for.end

for.body38:                                       ; preds = %for.cond34
  %28 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %node39 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %28, i32 0, i32 3
  %29 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node39, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %29, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %31 = load i64, i64* %state, align 8
  %32 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %width40 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %32, i32 0, i32 0
  %33 = load i32, i32* %width40, align 8
  %sh_prom = zext i32 %33 to i64
  %shl41 = shl i64 %31, %sh_prom
  %34 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %node42 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %34, i32 0, i32 3
  %35 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node42, align 8
  %36 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %36 to i64
  %arrayidx44 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %35, i64 %idxprom43
  %state45 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx44, i32 0, i32 1
  %37 = load i64, i64* %state45, align 8
  %or = or i64 %shl41, %37
  %node46 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %38 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node46, align 8
  %39 = load i32, i32* %i, align 4
  %40 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %size47 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %40, i32 0, i32 1
  %41 = load i32, i32* %size47, align 4
  %mul48 = mul nsw i32 %39, %41
  %42 = load i32, i32* %j, align 4
  %add49 = add nsw i32 %mul48, %42
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %38, i64 %idxprom50
  %state52 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx51, i32 0, i32 1
  store i64 %or, i64* %state52, align 8
  %43 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %node53 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %43, i32 0, i32 3
  %44 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node53, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %45 to i64
  %arrayidx55 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %44, i64 %idxprom54
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx55, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 8
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %46 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %node56 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %46, i32 0, i32 3
  %47 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node56, align 8
  %48 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %48 to i64
  %arrayidx58 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %47, i64 %idxprom57
  %amplitude59 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx58, i32 0, i32 0
  %amplitude59.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude59, i32 0, i32 0
  %amplitude59.real = load float, float* %amplitude59.realp, align 8
  %amplitude59.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude59, i32 0, i32 1
  %amplitude59.imag = load float, float* %amplitude59.imagp, align 4
  %mul_ac = fmul float %amplitude.real, %amplitude59.real
  %mul_bd = fmul float %amplitude.imag, %amplitude59.imag
  %mul_ad = fmul float %amplitude.real, %amplitude59.imag
  %mul_bc = fmul float %amplitude.imag, %amplitude59.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %for.body38
  %isnan_cmp60 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp60, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call61 = call <2 x float> @__mulsc3(float %amplitude.real, float %amplitude.imag, float %amplitude59.real, float %amplitude59.imag) #5
  %49 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call61, <2 x float>* %49, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.body38
  %real_mul_phi = phi float [ %mul_r, %for.body38 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %for.body38 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce.imag, %complex_mul_libcall ]
  %node62 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %50 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node62, align 8
  %51 = load i32, i32* %i, align 4
  %52 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %size63 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %52, i32 0, i32 1
  %53 = load i32, i32* %size63, align 4
  %mul64 = mul nsw i32 %51, %53
  %54 = load i32, i32* %j, align 4
  %add65 = add nsw i32 %mul64, %54
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %50, i64 %idxprom66
  %amplitude68 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx67, i32 0, i32 0
  %amplitude68.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude68, i32 0, i32 0
  %amplitude68.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude68, i32 0, i32 1
  store float %real_mul_phi, float* %amplitude68.realp, align 8
  store float %imag_mul_phi, float* %amplitude68.imagp, align 4
  br label %for.inc

for.inc:                                          ; preds = %complex_mul_cont
  %55 = load i32, i32* %j, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond34

for.end:                                          ; preds = %for.cond34
  br label %for.inc69

for.inc69:                                        ; preds = %for.end
  %56 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %56, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond

for.end71:                                        ; preds = %for.cond
  %57 = bitcast %struct.quantum_reg_struct* %agg.result to i8*
  %58 = bitcast %struct.quantum_reg_struct* %reg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @quantum_state_collapse(%struct.quantum_reg_struct* noalias sret %agg.result, i32 %pos, i32 %value, %struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %size = alloca i32, align 4
  %d = alloca double, align 8
  %lpat = alloca i64, align 8
  %rpat = alloca i64, align 8
  %pos2 = alloca i64, align 8
  %out = alloca %struct.quantum_reg_struct, align 8
  %coerce = alloca { float, float }, align 4
  %coerce91 = alloca { float, float }, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  store i32 0, i32* %size, align 4
  store double 0.000000e+00, double* %d, align 8
  store i64 0, i64* %lpat, align 8
  store i64 0, i64* %rpat, align 8
  %0 = load i32, i32* %pos.addr, align 4
  %sh_prom = zext i32 %0 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %pos2, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %size1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %2 = load i32, i32* %size1, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %3 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %3, i64 %idxprom
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx, i32 0, i32 1
  %5 = load i64, i64* %state, align 8
  %6 = load i64, i64* %pos2, align 8
  %and = and i64 %5, %6
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %7 = load i32, i32* %value.addr, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %node3 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %8 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node3, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %8, i64 %idxprom4
  %state6 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 1
  %10 = load i64, i64* %state6, align 8
  %11 = load i64, i64* %pos2, align 8
  %and7 = and i64 %10, %11
  %tobool8 = icmp ne i64 %and7, 0
  br i1 %tobool8, label %if.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %12 = load i32, i32* %value.addr, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true9, %land.lhs.true
  %node11 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %13 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node11, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %13, i64 %idxprom12
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx13, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 8
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %coerce.realp, align 4
  store float %amplitude.imag, float* %coerce.imagp, align 4
  %15 = bitcast { float, float }* %coerce to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 4
  %call = call float @quantum_prob_inline.54(<2 x float> %16)
  %conv = fpext float %call to double
  %17 = load double, double* %d, align 8
  %add = fadd double %17, %conv
  store double %add, double* %d, align 8
  %18 = load i32, i32* %size, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true9, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %19, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %width = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 0
  %20 = load i32, i32* %width, align 8
  %sub = sub nsw i32 %20, 1
  %width15 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 0
  store i32 %sub, i32* %width15, align 8
  %21 = load i32, i32* %size, align 4
  %size16 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 1
  store i32 %21, i32* %size16, align 4
  %22 = load i32, i32* %size, align 4
  %conv17 = sext i32 %22 to i64
  %call18 = call noalias i8* @calloc(i64 %conv17, i64 16) #5
  %23 = bitcast i8* %call18 to %struct.quantum_reg_node_struct*
  %node19 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 3
  store %struct.quantum_reg_node_struct* %23, %struct.quantum_reg_node_struct** %node19, align 8
  %node20 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 3
  %24 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node20, align 8
  %tobool21 = icmp ne %struct.quantum_reg_node_struct* %24, null
  br i1 %tobool21, label %if.end24, label %if.then22

if.then22:                                        ; preds = %for.end
  %25 = load i32, i32* %size, align 4
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i32 0, i32 0), i32 %25)
  call void @exit(i32 1) #9
  unreachable

if.end24:                                         ; preds = %for.end
  %26 = load i32, i32* %size, align 4
  %conv25 = sext i32 %26 to i64
  %mul = mul i64 %conv25, 16
  %call26 = call i64 @quantum_memman(i64 %mul)
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %27 = load i32, i32* %hashw, align 8
  %hashw27 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 2
  store i32 %27, i32* %hashw27, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %28 = load i32*, i32** %hash, align 8
  %hash28 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 4
  store i32* %28, i32** %hash28, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc100, %if.end24
  %29 = load i32, i32* %i, align 4
  %size30 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 1
  %30 = load i32, i32* %size30, align 4
  %cmp31 = icmp slt i32 %29, %30
  br i1 %cmp31, label %for.body33, label %for.end102

for.body33:                                       ; preds = %for.cond29
  %node34 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %31 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node34, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %32 to i64
  %arrayidx36 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %31, i64 %idxprom35
  %state37 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx36, i32 0, i32 1
  %33 = load i64, i64* %state37, align 8
  %34 = load i64, i64* %pos2, align 8
  %and38 = and i64 %33, %34
  %tobool39 = icmp ne i64 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false42

land.lhs.true40:                                  ; preds = %for.body33
  %35 = load i32, i32* %value.addr, align 4
  %tobool41 = icmp ne i32 %35, 0
  br i1 %tobool41, label %if.then51, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %land.lhs.true40, %for.body33
  %node43 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %36 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node43, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %37 to i64
  %arrayidx45 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %36, i64 %idxprom44
  %state46 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx45, i32 0, i32 1
  %38 = load i64, i64* %state46, align 8
  %39 = load i64, i64* %pos2, align 8
  %and47 = and i64 %38, %39
  %tobool48 = icmp ne i64 %and47, 0
  br i1 %tobool48, label %if.end99, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %lor.lhs.false42
  %40 = load i32, i32* %value.addr, align 4
  %tobool50 = icmp ne i32 %40, 0
  br i1 %tobool50, label %if.end99, label %if.then51

if.then51:                                        ; preds = %land.lhs.true49, %land.lhs.true40
  store i32 0, i32* %k, align 4
  store i64 0, i64* %rpat, align 8
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc59, %if.then51
  %41 = load i32, i32* %k, align 4
  %42 = load i32, i32* %pos.addr, align 4
  %cmp53 = icmp slt i32 %41, %42
  br i1 %cmp53, label %for.body55, label %for.end61

for.body55:                                       ; preds = %for.cond52
  %43 = load i32, i32* %k, align 4
  %sh_prom56 = zext i32 %43 to i64
  %shl57 = shl i64 1, %sh_prom56
  %44 = load i64, i64* %rpat, align 8
  %add58 = add i64 %44, %shl57
  store i64 %add58, i64* %rpat, align 8
  br label %for.inc59

for.inc59:                                        ; preds = %for.body55
  %45 = load i32, i32* %k, align 4
  %inc60 = add nsw i32 %45, 1
  store i32 %inc60, i32* %k, align 4
  br label %for.cond52

for.end61:                                        ; preds = %for.cond52
  %node62 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %46 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node62, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %47 to i64
  %arrayidx64 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %46, i64 %idxprom63
  %state65 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx64, i32 0, i32 1
  %48 = load i64, i64* %state65, align 8
  %49 = load i64, i64* %rpat, align 8
  %and66 = and i64 %49, %48
  store i64 %and66, i64* %rpat, align 8
  store i32 63, i32* %k, align 4
  store i64 0, i64* %lpat, align 8
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc74, %for.end61
  %50 = load i32, i32* %k, align 4
  %51 = load i32, i32* %pos.addr, align 4
  %cmp68 = icmp sgt i32 %50, %51
  br i1 %cmp68, label %for.body70, label %for.end75

for.body70:                                       ; preds = %for.cond67
  %52 = load i32, i32* %k, align 4
  %sh_prom71 = zext i32 %52 to i64
  %shl72 = shl i64 1, %sh_prom71
  %53 = load i64, i64* %lpat, align 8
  %add73 = add i64 %53, %shl72
  store i64 %add73, i64* %lpat, align 8
  br label %for.inc74

for.inc74:                                        ; preds = %for.body70
  %54 = load i32, i32* %k, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond67

for.end75:                                        ; preds = %for.cond67
  %node76 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %55 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node76, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %56 to i64
  %arrayidx78 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %55, i64 %idxprom77
  %state79 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx78, i32 0, i32 1
  %57 = load i64, i64* %state79, align 8
  %58 = load i64, i64* %lpat, align 8
  %and80 = and i64 %58, %57
  store i64 %and80, i64* %lpat, align 8
  %59 = load i64, i64* %lpat, align 8
  %shr = lshr i64 %59, 1
  %60 = load i64, i64* %rpat, align 8
  %or = or i64 %shr, %60
  %node81 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 3
  %61 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node81, align 8
  %62 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %62 to i64
  %arrayidx83 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %61, i64 %idxprom82
  %state84 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx83, i32 0, i32 1
  store i64 %or, i64* %state84, align 8
  %node85 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %63 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node85, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %64 to i64
  %arrayidx87 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %63, i64 %idxprom86
  %amplitude88 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx87, i32 0, i32 0
  %amplitude88.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude88, i32 0, i32 0
  %amplitude88.real = load float, float* %amplitude88.realp, align 8
  %amplitude88.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude88, i32 0, i32 1
  %amplitude88.imag = load float, float* %amplitude88.imagp, align 4
  %mul_ac = fmul float %amplitude88.real, 1.000000e+00
  %mul_bd = fmul float %amplitude88.imag, 0.000000e+00
  %mul_ad = fmul float %amplitude88.real, 0.000000e+00
  %mul_bc = fmul float %amplitude88.imag, 1.000000e+00
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %for.end75
  %isnan_cmp89 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp89, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call90 = call <2 x float> @__mulsc3(float %amplitude88.real, float %amplitude88.imag, float 1.000000e+00, float 0.000000e+00) #5
  %65 = bitcast { float, float }* %coerce91 to <2 x float>*
  store <2 x float> %call90, <2 x float>* %65, align 4
  %coerce91.realp = getelementptr inbounds { float, float }, { float, float }* %coerce91, i32 0, i32 0
  %coerce91.real = load float, float* %coerce91.realp, align 4
  %coerce91.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce91, i32 0, i32 1
  %coerce91.imag = load float, float* %coerce91.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.end75
  %real_mul_phi = phi float [ %mul_r, %for.end75 ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce91.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %for.end75 ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce91.imag, %complex_mul_libcall ]
  %66 = load double, double* %d, align 8
  %call92 = call double @sqrt(double %66) #5
  %conv93 = fptrunc double %call92 to float
  %67 = fdiv float %real_mul_phi, %conv93
  %68 = fdiv float %imag_mul_phi, %conv93
  %node94 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %out, i32 0, i32 3
  %69 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node94, align 8
  %70 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %70 to i64
  %arrayidx96 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %69, i64 %idxprom95
  %amplitude97 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx96, i32 0, i32 0
  %amplitude97.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude97, i32 0, i32 0
  %amplitude97.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude97, i32 0, i32 1
  store float %67, float* %amplitude97.realp, align 8
  store float %68, float* %amplitude97.imagp, align 4
  %71 = load i32, i32* %j, align 4
  %inc98 = add nsw i32 %71, 1
  store i32 %inc98, i32* %j, align 4
  br label %if.end99

if.end99:                                         ; preds = %complex_mul_cont, %land.lhs.true49, %lor.lhs.false42
  br label %for.inc100

for.inc100:                                       ; preds = %if.end99
  %72 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %72, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond29

for.end102:                                       ; preds = %for.cond29
  %73 = bitcast %struct.quantum_reg_struct* %agg.result to i8*
  %74 = bitcast %struct.quantum_reg_struct* %out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define <2 x float> @quantum_dot_product(%struct.quantum_reg_struct* %reg1, %struct.quantum_reg_struct* %reg2) #0 {
entry:
  %retval = alloca { float, float }, align 4
  %reg1.addr = alloca %struct.quantum_reg_struct*, align 8
  %reg2.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %f = alloca { float, float }, align 4
  %coerce = alloca { float, float }, align 4
  %coerce22 = alloca { float, float }, align 4
  %coerce29 = alloca { float, float }, align 4
  store %struct.quantum_reg_struct* %reg1, %struct.quantum_reg_struct** %reg1.addr, align 8
  store %struct.quantum_reg_struct* %reg2, %struct.quantum_reg_struct** %reg2.addr, align 8
  %f.realp = getelementptr inbounds { float, float }, { float, float }* %f, i32 0, i32 0
  %f.imagp = getelementptr inbounds { float, float }, { float, float }* %f, i32 0, i32 1
  store float 0.000000e+00, float* %f.realp, align 4
  store float 0.000000e+00, float* %f.imagp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %1, i32 0, i32 2
  %2 = load i32, i32* %hashw, align 8
  %shl = shl i32 1, %2
  %cmp = icmp slt i32 %0, %shl
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %3, i32 0, i32 4
  %4 = load i32*, i32** %hash, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %for.end
  %7 = load i32, i32* %i, align 4
  %8 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %size = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %8, i32 0, i32 1
  %9 = load i32, i32* %size, align 4
  %cmp2 = icmp slt i32 %7, %9
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %10 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %10, i32 0, i32 3
  %11 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %11, i64 %idxprom4
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 1
  %13 = load i64, i64* %state, align 8
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  call void @quantum_add_hash.61(i64 %13, i32 %14, %struct.quantum_reg_struct* %15)
  br label %for.inc6

for.inc6:                                         ; preds = %for.body3
  %16 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %16, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond1

for.end8:                                         ; preds = %for.cond1
  store i32 0, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc34, %for.end8
  %17 = load i32, i32* %i, align 4
  %18 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %size10 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %18, i32 0, i32 1
  %19 = load i32, i32* %size10, align 4
  %cmp11 = icmp slt i32 %17, %19
  br i1 %cmp11, label %for.body12, label %for.end36

for.body12:                                       ; preds = %for.cond9
  %20 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %node13 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %20, i32 0, i32 3
  %21 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node13, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %21, i64 %idxprom14
  %state16 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx15, i32 0, i32 1
  %23 = load i64, i64* %state16, align 8
  %24 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %call = call i32 @quantum_get_state.62(i64 %23, %struct.quantum_reg_struct* byval align 8 %24)
  store i32 %call, i32* %j, align 4
  %25 = load i32, i32* %j, align 4
  %cmp17 = icmp sgt i32 %25, -1
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body12
  %26 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg1.addr, align 8
  %node18 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %26, i32 0, i32 3
  %27 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node18, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %28 to i64
  %arrayidx20 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %27, i64 %idxprom19
  %amplitude = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx20, i32 0, i32 0
  %amplitude.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 0
  %amplitude.real = load float, float* %amplitude.realp, align 8
  %amplitude.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude, i32 0, i32 1
  %amplitude.imag = load float, float* %amplitude.imagp, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  store float %amplitude.real, float* %coerce.realp, align 4
  store float %amplitude.imag, float* %coerce.imagp, align 4
  %29 = bitcast { float, float }* %coerce to <2 x float>*
  %30 = load <2 x float>, <2 x float>* %29, align 4
  %call21 = call <2 x float> @quantum_conj(<2 x float> %30)
  %31 = bitcast { float, float }* %coerce22 to <2 x float>*
  store <2 x float> %call21, <2 x float>* %31, align 4
  %coerce22.realp = getelementptr inbounds { float, float }, { float, float }* %coerce22, i32 0, i32 0
  %coerce22.real = load float, float* %coerce22.realp, align 4
  %coerce22.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce22, i32 0, i32 1
  %coerce22.imag = load float, float* %coerce22.imagp, align 4
  %32 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg2.addr, align 8
  %node23 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %32, i32 0, i32 3
  %33 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node23, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %34 to i64
  %arrayidx25 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %33, i64 %idxprom24
  %amplitude26 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx25, i32 0, i32 0
  %amplitude26.realp = getelementptr inbounds { float, float }, { float, float }* %amplitude26, i32 0, i32 0
  %amplitude26.real = load float, float* %amplitude26.realp, align 8
  %amplitude26.imagp = getelementptr inbounds { float, float }, { float, float }* %amplitude26, i32 0, i32 1
  %amplitude26.imag = load float, float* %amplitude26.imagp, align 4
  %mul_ac = fmul float %coerce22.real, %amplitude26.real
  %mul_bd = fmul float %coerce22.imag, %amplitude26.imag
  %mul_ad = fmul float %coerce22.real, %amplitude26.imag
  %mul_bc = fmul float %coerce22.imag, %amplitude26.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %if.then
  %isnan_cmp27 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp27, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call28 = call <2 x float> @__mulsc3(float %coerce22.real, float %coerce22.imag, float %amplitude26.real, float %amplitude26.imag) #5
  %35 = bitcast { float, float }* %coerce29 to <2 x float>*
  store <2 x float> %call28, <2 x float>* %35, align 4
  %coerce29.realp = getelementptr inbounds { float, float }, { float, float }* %coerce29, i32 0, i32 0
  %coerce29.real = load float, float* %coerce29.realp, align 4
  %coerce29.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce29, i32 0, i32 1
  %coerce29.imag = load float, float* %coerce29.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %if.then
  %real_mul_phi = phi float [ %mul_r, %if.then ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce29.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %if.then ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce29.imag, %complex_mul_libcall ]
  %f.realp30 = getelementptr inbounds { float, float }, { float, float }* %f, i32 0, i32 0
  %f.real = load float, float* %f.realp30, align 4
  %f.imagp31 = getelementptr inbounds { float, float }, { float, float }* %f, i32 0, i32 1
  %f.imag = load float, float* %f.imagp31, align 4
  %add.r = fadd float %f.real, %real_mul_phi
  %add.i = fadd float %f.imag, %imag_mul_phi
  %f.realp32 = getelementptr inbounds { float, float }, { float, float }* %f, i32 0, i32 0
  %f.imagp33 = getelementptr inbounds { float, float }, { float, float }* %f, i32 0, i32 1
  store float %add.r, float* %f.realp32, align 4
  store float %add.i, float* %f.imagp33, align 4
  br label %if.end

if.end:                                           ; preds = %complex_mul_cont, %for.body12
  br label %for.inc34

for.inc34:                                        ; preds = %if.end
  %36 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %36, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond9

for.end36:                                        ; preds = %for.cond9
  %f.realp37 = getelementptr inbounds { float, float }, { float, float }* %f, i32 0, i32 0
  %f.real38 = load float, float* %f.realp37, align 4
  %f.imagp39 = getelementptr inbounds { float, float }, { float, float }* %f, i32 0, i32 1
  %f.imag40 = load float, float* %f.imagp39, align 4
  %retval.realp = getelementptr inbounds { float, float }, { float, float }* %retval, i32 0, i32 0
  %retval.imagp = getelementptr inbounds { float, float }, { float, float }* %retval, i32 0, i32 1
  store float %f.real38, float* %retval.realp, align 4
  store float %f.imag40, float* %retval.imagp, align 4
  %37 = bitcast { float, float }* %retval to <2 x float>*
  %38 = load <2 x float>, <2 x float>* %37, align 4
  ret <2 x float> %38
}

; Function Attrs: noinline nounwind uwtable
define internal void @quantum_add_hash.61(i64 %a, i32 %pos, %struct.quantum_reg_struct* %reg) #0 {
entry:
  %a.addr = alloca i64, align 8
  %pos.addr = alloca i32, align 4
  %reg.addr = alloca %struct.quantum_reg_struct*, align 8
  %i = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  store %struct.quantum_reg_struct* %reg, %struct.quantum_reg_struct** %reg.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %1, i32 0, i32 2
  %2 = load i32, i32* %hashw, align 8
  %call = call i32 @quantum_hash64.63(i64 %0, i32 %2)
  store i32 %call, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %3, i32 0, i32 4
  %4 = load i32*, i32** %hash, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hashw1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %9, i32 0, i32 2
  %10 = load i32, i32* %hashw1, align 8
  %shl = shl i32 1, %10
  %cmp = icmp eq i32 %8, %shl
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %11, 1
  %12 = load %struct.quantum_reg_struct*, %struct.quantum_reg_struct** %reg.addr, align 8
  %hash2 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %12, i32 0, i32 4
  %13 = load i32*, i32** %hash2, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %13, i64 %idxprom3
  store i32 %add, i32* %arrayidx4, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @quantum_get_state.62(i64 %a, %struct.quantum_reg_struct* byval align 8 %reg) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %hashw = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %1 = load i32, i32* %hashw, align 8
  %call = call i32 @quantum_hash64.63(i64 %0, i32 %1)
  store i32 %call, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %hash = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %2 = load i32*, i32** %hash, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %node = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 3
  %5 = load %struct.quantum_reg_node_struct*, %struct.quantum_reg_node_struct** %node, align 8
  %hash1 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %6 = load i32*, i32** %hash1, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom2
  %8 = load i32, i32* %arrayidx3, align 4
  %sub = sub nsw i32 %8, 1
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %5, i64 %idxprom4
  %state = getelementptr inbounds %struct.quantum_reg_node_struct, %struct.quantum_reg_node_struct* %arrayidx5, i32 0, i32 1
  %9 = load i64, i64* %state, align 8
  %10 = load i64, i64* %a.addr, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %hash6 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 4
  %11 = load i32*, i32** %hash6, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %11, i64 %idxprom7
  %13 = load i32, i32* %arrayidx8, align 4
  %sub9 = sub nsw i32 %13, 1
  store i32 %sub9, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  %15 = load i32, i32* %i, align 4
  %hashw10 = getelementptr inbounds %struct.quantum_reg_struct, %struct.quantum_reg_struct* %reg, i32 0, i32 2
  %16 = load i32, i32* %hashw10, align 8
  %shl = shl i32 1, %16
  %cmp11 = icmp eq i32 %15, %shl
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @quantum_hash64.63(i64 %key, i32 %width) #0 {
entry:
  %key.addr = alloca i64, align 8
  %width.addr = alloca i32, align 4
  %k32 = alloca i32, align 4
  store i64 %key, i64* %key.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  %0 = load i64, i64* %key.addr, align 8
  %and = and i64 %0, 4294967295
  %1 = load i64, i64* %key.addr, align 8
  %shr = lshr i64 %1, 32
  %xor = xor i64 %and, %shr
  %conv = trunc i64 %xor to i32
  store i32 %conv, i32* %k32, align 4
  %2 = load i32, i32* %k32, align 4
  %conv1 = zext i32 %2 to i64
  %mul = mul i64 %conv1, 2654404609
  %conv2 = trunc i64 %mul to i32
  store i32 %conv2, i32* %k32, align 4
  %3 = load i32, i32* %k32, align 4
  %4 = load i32, i32* %width.addr, align 4
  %sub = sub nsw i32 32, %4
  %shr3 = lshr i32 %3, %sub
  store i32 %shr3, i32* %k32, align 4
  %5 = load i32, i32* %k32, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %qr = alloca %struct.quantum_reg_struct, align 8
  %i = alloca i32, align 4
  %width = alloca i32, align 4
  %swidth = alloca i32, align 4
  %x = alloca i32, align 4
  %N = alloca i32, align 4
  %c = alloca i32, align 4
  %q = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %factor = alloca i32, align 4
  %tmp = alloca %struct.quantum_reg_struct, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %x, align 4
  call void @spec_srand(i32 26)
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i32 0, i32 0))
  store i32 3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 @atoi(i8* %2) #10
  store i32 %call1, i32* %N, align 4
  %3 = load i32, i32* %N, align 4
  %cmp2 = icmp slt i32 %3, 15
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.65, i32 0, i32 0))
  store i32 3, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* %N, align 4
  %5 = load i32, i32* %N, align 4
  %mul = mul nsw i32 %4, %5
  %call6 = call i32 @quantum_getwidth(i32 %mul)
  store i32 %call6, i32* %width, align 4
  %6 = load i32, i32* %N, align 4
  %call7 = call i32 @quantum_getwidth(i32 %6)
  store i32 %call7, i32* %swidth, align 4
  %7 = load i32, i32* %N, align 4
  %8 = load i32, i32* %width, align 4
  %9 = load i32, i32* %swidth, align 4
  %mul8 = mul nsw i32 3, %9
  %add = add nsw i32 %8, %mul8
  %add9 = add nsw i32 %add, 2
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2.66, i32 0, i32 0), i32 %7, i32 %add9)
  %10 = load i32, i32* %argc.addr, align 4
  %cmp11 = icmp sge i32 %10, 3
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end5
  %11 = load i8**, i8*** %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %11, i64 2
  %12 = load i8*, i8** %arrayidx13, align 8
  %call14 = call i32 @atoi(i8* %12) #10
  store i32 %call14, i32* %x, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end15
  %13 = load i32, i32* %N, align 4
  %14 = load i32, i32* %x, align 4
  %call16 = call i32 @quantum_gcd(i32 %13, i32 %14)
  %cmp17 = icmp sgt i32 %call16, 1
  br i1 %cmp17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %15 = load i32, i32* %x, align 4
  %cmp18 = icmp slt i32 %15, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %16 = phi i1 [ true, %while.cond ], [ %cmp18, %lor.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %call19 = call double @spec_rand()
  %mul20 = fmul double %call19, 0x41DFFFFFFFC00000
  %conv = fptosi double %mul20 to i64
  %17 = load i32, i32* %N, align 4
  %conv21 = sext i32 %17 to i64
  %rem = srem i64 %conv, %conv21
  %conv22 = trunc i64 %rem to i32
  store i32 %conv22, i32* %x, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %18 = load i32, i32* %x, align 4
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3.67, i32 0, i32 0), i32 %18)
  %19 = load i32, i32* %width, align 4
  call void @quantum_new_qureg(%struct.quantum_reg_struct* sret %tmp, i64 0, i32 %19)
  %20 = bitcast %struct.quantum_reg_struct* %qr to i8*
  %21 = bitcast %struct.quantum_reg_struct* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %width, align 4
  %cmp24 = icmp slt i32 %22, %23
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  call void @quantum_hadamard(i32 %24, %struct.quantum_reg_struct* %qr)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %swidth, align 4
  %mul26 = mul nsw i32 3, %26
  %add27 = add nsw i32 %mul26, 2
  call void @quantum_addscratch(i32 %add27, %struct.quantum_reg_struct* %qr)
  %27 = load i32, i32* %N, align 4
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %width, align 4
  %30 = load i32, i32* %swidth, align 4
  call void @quantum_exp_mod_n(i32 %27, i32 %28, i32 %29, i32 %30, %struct.quantum_reg_struct* %qr)
  store i32 0, i32* %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc35, %for.end
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %swidth, align 4
  %mul29 = mul nsw i32 3, %32
  %add30 = add nsw i32 %mul29, 2
  %cmp31 = icmp slt i32 %31, %add30
  br i1 %cmp31, label %for.body33, label %for.end37

for.body33:                                       ; preds = %for.cond28
  %call34 = call i32 @quantum_bmeasure(i32 0, %struct.quantum_reg_struct* %qr)
  br label %for.inc35

for.inc35:                                        ; preds = %for.body33
  %33 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %33, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond28

for.end37:                                        ; preds = %for.cond28
  %34 = load i32, i32* %width, align 4
  call void @quantum_qft(i32 %34, %struct.quantum_reg_struct* %qr)
  store i32 0, i32* %i, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc47, %for.end37
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %width, align 4
  %div = sdiv i32 %36, 2
  %cmp39 = icmp slt i32 %35, %div
  br i1 %cmp39, label %for.body41, label %for.end49

for.body41:                                       ; preds = %for.cond38
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %width, align 4
  %39 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %38, %39
  %sub42 = sub nsw i32 %sub, 1
  call void @quantum_cnot(i32 %37, i32 %sub42, %struct.quantum_reg_struct* %qr)
  %40 = load i32, i32* %width, align 4
  %41 = load i32, i32* %i, align 4
  %sub43 = sub nsw i32 %40, %41
  %sub44 = sub nsw i32 %sub43, 1
  %42 = load i32, i32* %i, align 4
  call void @quantum_cnot(i32 %sub44, i32 %42, %struct.quantum_reg_struct* %qr)
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %width, align 4
  %45 = load i32, i32* %i, align 4
  %sub45 = sub nsw i32 %44, %45
  %sub46 = sub nsw i32 %sub45, 1
  call void @quantum_cnot(i32 %43, i32 %sub46, %struct.quantum_reg_struct* %qr)
  br label %for.inc47

for.inc47:                                        ; preds = %for.body41
  %46 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %46, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond38

for.end49:                                        ; preds = %for.cond38
  %call50 = call i64 @quantum_measure(%struct.quantum_reg_struct* byval align 8 %qr)
  %conv51 = trunc i64 %call50 to i32
  store i32 %conv51, i32* %c, align 4
  %47 = load i32, i32* %c, align 4
  %cmp52 = icmp eq i32 %47, -1
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %for.end49
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4.68, i32 0, i32 0))
  call void @exit(i32 1) #9
  unreachable

if.end56:                                         ; preds = %for.end49
  %48 = load i32, i32* %c, align 4
  %cmp57 = icmp eq i32 %48, 0
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end56
  %call60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5.69, i32 0, i32 0))
  call void @exit(i32 2) #9
  unreachable

if.end61:                                         ; preds = %if.end56
  %49 = load i32, i32* %width, align 4
  %shl = shl i32 1, %49
  store i32 %shl, i32* %q, align 4
  %50 = load i32, i32* %c, align 4
  %51 = load i32, i32* %c, align 4
  %conv62 = sitofp i32 %51 to float
  %52 = load i32, i32* %q, align 4
  %conv63 = sitofp i32 %52 to float
  %div64 = fdiv float %conv62, %conv63
  %conv65 = fpext float %div64 to double
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6.70, i32 0, i32 0), i32 %50, double %conv65)
  %53 = load i32, i32* %width, align 4
  call void @quantum_frac_approx(i32* %c, i32* %q, i32 %53)
  %54 = load i32, i32* %c, align 4
  %55 = load i32, i32* %q, align 4
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7.71, i32 0, i32 0), i32 %54, i32 %55)
  %56 = load i32, i32* %q, align 4
  %rem68 = srem i32 %56, 2
  %cmp69 = icmp eq i32 %rem68, 1
  br i1 %cmp69, label %land.lhs.true, label %if.end78

land.lhs.true:                                    ; preds = %if.end61
  %57 = load i32, i32* %q, align 4
  %mul71 = mul nsw i32 2, %57
  %58 = load i32, i32* %width, align 4
  %shl72 = shl i32 1, %58
  %cmp73 = icmp slt i32 %mul71, %shl72
  br i1 %cmp73, label %if.then75, label %if.end78

if.then75:                                        ; preds = %land.lhs.true
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8.72, i32 0, i32 0))
  %59 = load i32, i32* %q, align 4
  %mul77 = mul nsw i32 %59, 2
  store i32 %mul77, i32* %q, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %land.lhs.true, %if.end61
  %60 = load i32, i32* %q, align 4
  %rem79 = srem i32 %60, 2
  %cmp80 = icmp eq i32 %rem79, 1
  br i1 %cmp80, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.end78
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9.73, i32 0, i32 0))
  call void @exit(i32 2) #9
  unreachable

if.end84:                                         ; preds = %if.end78
  %61 = load i32, i32* %q, align 4
  %call85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10.74, i32 0, i32 0), i32 %61)
  %62 = load i32, i32* %x, align 4
  %63 = load i32, i32* %q, align 4
  %div86 = sdiv i32 %63, 2
  %call87 = call i32 @quantum_ipow(i32 %62, i32 %div86)
  %64 = load i32, i32* %N, align 4
  %rem88 = srem i32 1, %64
  %add89 = add nsw i32 %call87, %rem88
  store i32 %add89, i32* %a, align 4
  %65 = load i32, i32* %x, align 4
  %66 = load i32, i32* %q, align 4
  %div90 = sdiv i32 %66, 2
  %call91 = call i32 @quantum_ipow(i32 %65, i32 %div90)
  %67 = load i32, i32* %N, align 4
  %rem92 = srem i32 1, %67
  %sub93 = sub nsw i32 %call91, %rem92
  store i32 %sub93, i32* %b, align 4
  %68 = load i32, i32* %N, align 4
  %69 = load i32, i32* %a, align 4
  %call94 = call i32 @quantum_gcd(i32 %68, i32 %69)
  store i32 %call94, i32* %a, align 4
  %70 = load i32, i32* %N, align 4
  %71 = load i32, i32* %b, align 4
  %call95 = call i32 @quantum_gcd(i32 %70, i32 %71)
  store i32 %call95, i32* %b, align 4
  %72 = load i32, i32* %a, align 4
  %73 = load i32, i32* %b, align 4
  %cmp96 = icmp sgt i32 %72, %73
  br i1 %cmp96, label %if.then98, label %if.else

if.then98:                                        ; preds = %if.end84
  %74 = load i32, i32* %a, align 4
  store i32 %74, i32* %factor, align 4
  br label %if.end99

if.else:                                          ; preds = %if.end84
  %75 = load i32, i32* %b, align 4
  store i32 %75, i32* %factor, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.else, %if.then98
  %76 = load i32, i32* %factor, align 4
  %77 = load i32, i32* %N, align 4
  %cmp100 = icmp slt i32 %76, %77
  br i1 %cmp100, label %land.lhs.true102, label %if.else108

land.lhs.true102:                                 ; preds = %if.end99
  %78 = load i32, i32* %factor, align 4
  %cmp103 = icmp sgt i32 %78, 1
  br i1 %cmp103, label %if.then105, label %if.else108

if.then105:                                       ; preds = %land.lhs.true102
  %79 = load i32, i32* %N, align 4
  %80 = load i32, i32* %factor, align 4
  %81 = load i32, i32* %N, align 4
  %82 = load i32, i32* %factor, align 4
  %div106 = sdiv i32 %81, %82
  %call107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11.75, i32 0, i32 0), i32 %79, i32 %80, i32 %div106)
  br label %if.end110

if.else108:                                       ; preds = %land.lhs.true102, %if.end99
  %call109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0))
  call void @exit(i32 0) #9
  unreachable

if.end110:                                        ; preds = %if.then105
  call void @quantum_delete_qureg(%struct.quantum_reg_struct* %qr)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end110, %if.then3, %if.then
  %83 = load i32, i32* %retval, align 4
  ret i32 %83
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #7

; Function Attrs: noinline nounwind uwtable
define void @spec_srand(i32 %seed) #0 {
entry:
  %seed.addr = alloca i32, align 4
  store i32 %seed, i32* %seed.addr, align 4
  %0 = load i32, i32* %seed.addr, align 4
  store i32 %0, i32* @seedi, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define double @spec_rand() #0 {
entry:
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %test = alloca i32, align 4
  %0 = load i32, i32* @seedi, align 4
  %conv = sext i32 %0 to i64
  %div = sdiv i64 %conv, 127773
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %hi, align 4
  %1 = load i32, i32* @seedi, align 4
  %conv2 = sext i32 %1 to i64
  %rem = srem i64 %conv2, 127773
  %conv3 = trunc i64 %rem to i32
  store i32 %conv3, i32* %lo, align 4
  %2 = load i32, i32* %lo, align 4
  %conv4 = sext i32 %2 to i64
  %mul = mul nsw i64 16807, %conv4
  %3 = load i32, i32* %hi, align 4
  %conv5 = sext i32 %3 to i64
  %mul6 = mul nsw i64 2836, %conv5
  %sub = sub nsw i64 %mul, %mul6
  %conv7 = trunc i64 %sub to i32
  store i32 %conv7, i32* %test, align 4
  %4 = load i32, i32* %test, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %test, align 4
  store i32 %5, i32* @seedi, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %test, align 4
  %conv9 = sext i32 %6 to i64
  %add = add nsw i64 %conv9, 2147483647
  %conv10 = trunc i64 %add to i32
  store i32 %conv10, i32* @seedi, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* @seedi, align 4
  %conv11 = sitofp i32 %7 to double
  %div12 = fdiv double %conv11, 0x41DFFFFFFFC00000
  ret double %div12
}

; Function Attrs: noinline nounwind uwtable
define i8* @quantum_get_version() #0 {
entry:
  ret i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0)
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!1 = !{!"branch_weights", i32 1, i32 1048575}
