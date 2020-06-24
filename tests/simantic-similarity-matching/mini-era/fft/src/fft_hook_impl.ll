; ModuleID = 'fft_hook_impl.c'
source_filename = "fft_hook_impl.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fft_access = type { %struct.esp_access, i32, i32, i32, i32 }
%struct.esp_access = type { %struct.contig_khandle_struct*, i8, i8, i8, [4 x [64 x i8]], i32, i32, i32, i32, i32, i32 }
%struct.contig_khandle_struct = type { i8 }
%struct.contig_handle_struct = type { i8 }
%struct.esp_accelerator_thread_info = type { i8, i8*, i32, %union.esp_accelerator_descriptor, i32, %struct.contig_handle_struct**, i64 }
%union.esp_accelerator_descriptor = type { %struct.synth_access }
%struct.synth_access = type { %struct.esp_access, %struct.synth_cfg }
%struct.synth_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@do_bitrev = constant i32 1, align 4
@len = constant i32 1024, align 4
@log_len = constant i32 10, align 4
@.str = private unnamed_addr constant [6 x i8] c"fft.0\00", align 1
@cfg_000 = global <{ { i8, i8*, i32, { %struct.fft_access, [32 x i8] }, i32, %struct.contig_handle_struct**, i64 } }> <{ { i8, i8*, i32, { %struct.fft_access, [32 x i8] }, i32, %struct.contig_handle_struct**, i64 } { i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 3, { %struct.fft_access, [32 x i8] } { %struct.fft_access { %struct.esp_access zeroinitializer, i32 10, i32 1, i32 0, i32 0 }, [32 x i8] undef }, i32 0, %struct.contig_handle_struct** null, i64 0 } }>, align 16
@ERR_TH = constant float 0x3FA99999A0000000, align 4
@size = internal global i32 0, align 4
@out_len = internal global i32 0, align 4
@out_offset = internal global i32 0, align 4
@in_words_adj = internal global i32 0, align 4
@out_words_adj = internal global i32 0, align 4
@in_len = internal global i32 0, align 4
@in_size = internal global i32 0, align 4
@out_size = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"  + Relative error > %.02f for %d output values out of %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @fft_rev(i32 %v) #0 {
entry:
  %v.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %v, i32* %v.addr, align 4
  %0 = load i32, i32* %v.addr, align 4
  store i32 %0, i32* %r, align 4
  store i32 31, i32* %s, align 4
  %1 = load i32, i32* %v.addr, align 4
  %shr = lshr i32 %1, 1
  store i32 %shr, i32* %v.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %v.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %r, align 4
  %shl = shl i32 %3, 1
  store i32 %shl, i32* %r, align 4
  %4 = load i32, i32* %v.addr, align 4
  %and = and i32 %4, 1
  %5 = load i32, i32* %r, align 4
  %or = or i32 %5, %and
  store i32 %or, i32* %r, align 4
  %6 = load i32, i32* %s, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %v.addr, align 4
  %shr1 = lshr i32 %7, 1
  store i32 %shr1, i32* %v.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %s, align 4
  %9 = load i32, i32* %r, align 4
  %shl2 = shl i32 %9, %8
  store i32 %shl2, i32* %r, align 4
  %10 = load i32, i32* %r, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define void @fft_bit_reverse(float* %w, i32 %n, i32 %bits) #0 {
entry:
  %w.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  %shift = alloca i32, align 4
  %r = alloca i32, align 4
  %t_real = alloca float, align 4
  %t_imag = alloca float, align 4
  store float* %w, float** %w.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %bits, i32* %bits.addr, align 4
  store i32 31, i32* %s, align 4
  %0 = load i32, i32* %s, align 4
  %1 = load i32, i32* %bits.addr, align 4
  %sub = sub i32 %0, %1
  %add = add i32 %sub, 1
  store i32 %add, i32* %shift, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %call = call i32 @fft_rev(i32 %4)
  store i32 %call, i32* %r, align 4
  %5 = load i32, i32* %shift, align 4
  %6 = load i32, i32* %r, align 4
  %shr = lshr i32 %6, %5
  store i32 %shr, i32* %r, align 4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %r, align 4
  %cmp1 = icmp ult i32 %7, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load float*, float** %w.addr, align 8
  %10 = load i32, i32* %i, align 4
  %mul = mul i32 2, %10
  %idxprom = zext i32 %mul to i64
  %arrayidx = getelementptr inbounds float, float* %9, i64 %idxprom
  %11 = load float, float* %arrayidx, align 4
  store float %11, float* %t_real, align 4
  %12 = load float*, float** %w.addr, align 8
  %13 = load i32, i32* %i, align 4
  %mul2 = mul i32 2, %13
  %add3 = add i32 %mul2, 1
  %idxprom4 = zext i32 %add3 to i64
  %arrayidx5 = getelementptr inbounds float, float* %12, i64 %idxprom4
  %14 = load float, float* %arrayidx5, align 4
  store float %14, float* %t_imag, align 4
  %15 = load float*, float** %w.addr, align 8
  %16 = load i32, i32* %r, align 4
  %mul6 = mul i32 2, %16
  %idxprom7 = zext i32 %mul6 to i64
  %arrayidx8 = getelementptr inbounds float, float* %15, i64 %idxprom7
  %17 = load float, float* %arrayidx8, align 4
  %18 = load float*, float** %w.addr, align 8
  %19 = load i32, i32* %i, align 4
  %mul9 = mul i32 2, %19
  %idxprom10 = zext i32 %mul9 to i64
  %arrayidx11 = getelementptr inbounds float, float* %18, i64 %idxprom10
  store float %17, float* %arrayidx11, align 4
  %20 = load float*, float** %w.addr, align 8
  %21 = load i32, i32* %r, align 4
  %mul12 = mul i32 2, %21
  %add13 = add i32 %mul12, 1
  %idxprom14 = zext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds float, float* %20, i64 %idxprom14
  %22 = load float, float* %arrayidx15, align 4
  %23 = load float*, float** %w.addr, align 8
  %24 = load i32, i32* %i, align 4
  %mul16 = mul i32 2, %24
  %add17 = add i32 %mul16, 1
  %idxprom18 = zext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds float, float* %23, i64 %idxprom18
  store float %22, float* %arrayidx19, align 4
  %25 = load float, float* %t_real, align 4
  %26 = load float*, float** %w.addr, align 8
  %27 = load i32, i32* %r, align 4
  %mul20 = mul i32 2, %27
  %idxprom21 = zext i32 %mul20 to i64
  %arrayidx22 = getelementptr inbounds float, float* %26, i64 %idxprom21
  store float %25, float* %arrayidx22, align 4
  %28 = load float, float* %t_imag, align 4
  %29 = load float*, float** %w.addr, align 8
  %30 = load i32, i32* %r, align 4
  %mul23 = mul i32 2, %30
  %add24 = add i32 %mul23, 1
  %idxprom25 = zext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds float, float* %29, i64 %idxprom25
  store float %28, float* %arrayidx26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load i32, i32* %i, align 4
  %inc = add i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @fft_comp(float* %data, i32 %n, i32 %logn, i32 %sign, i1 zeroext %rev) #0 {
entry:
  %data.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %logn.addr = alloca i32, align 4
  %sign.addr = alloca i32, align 4
  %rev.addr = alloca i8, align 1
  %transform_length = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %bit = alloca i32, align 4
  %theta = alloca float, align 4
  %t_real = alloca float, align 4
  %t_imag = alloca float, align 4
  %w_real = alloca float, align 4
  %w_imag = alloca float, align 4
  %s = alloca float, align 4
  %t = alloca float, align 4
  %s2 = alloca float, align 4
  %z_real = alloca float, align 4
  %z_imag = alloca float, align 4
  store float* %data, float** %data.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %logn, i32* %logn.addr, align 4
  store i32 %sign, i32* %sign.addr, align 4
  %frombool = zext i1 %rev to i8
  store i8 %frombool, i8* %rev.addr, align 1
  %0 = load i8, i8* %rev.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load float*, float** %data.addr, align 8
  %2 = load i32, i32* %n.addr, align 4
  %3 = load i32, i32* %logn.addr, align 4
  call void @fft_bit_reverse(float* %1, i32 %2, i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* %transform_length, align 4
  store i32 0, i32* %bit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc74, %if.end
  %4 = load i32, i32* %bit, align 4
  %5 = load i32, i32* %logn.addr, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end76

for.body:                                         ; preds = %for.cond
  store float 1.000000e+00, float* %w_real, align 4
  store float 0.000000e+00, float* %w_imag, align 4
  %6 = load i32, i32* %sign.addr, align 4
  %conv = sitofp i32 %6 to double
  %mul = fmul double 1.000000e+00, %conv
  %mul1 = fmul double %mul, 0x400921FB54442D18
  %7 = load i32, i32* %transform_length, align 4
  %conv2 = uitofp i32 %7 to float
  %conv3 = fpext float %conv2 to double
  %div = fdiv double %mul1, %conv3
  %conv4 = fptrunc double %div to float
  store float %conv4, float* %theta, align 4
  %8 = load float, float* %theta, align 4
  %conv5 = fpext float %8 to double
  %call = call double @sin(double %conv5) #4
  %conv6 = fptrunc double %call to float
  store float %conv6, float* %s, align 4
  %9 = load float, float* %theta, align 4
  %conv7 = fpext float %9 to double
  %mul8 = fmul double 5.000000e-01, %conv7
  %call9 = call double @sin(double %mul8) #4
  %conv10 = fptrunc double %call9 to float
  store float %conv10, float* %t, align 4
  %10 = load float, float* %t, align 4
  %conv11 = fpext float %10 to double
  %mul12 = fmul double 2.000000e+00, %conv11
  %11 = load float, float* %t, align 4
  %conv13 = fpext float %11 to double
  %mul14 = fmul double %mul12, %conv13
  %conv15 = fptrunc double %mul14 to float
  store float %conv15, float* %s2, align 4
  store i32 0, i32* %a, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc71, %for.body
  %12 = load i32, i32* %a, align 4
  %13 = load i32, i32* %transform_length, align 4
  %cmp17 = icmp ult i32 %12, %13
  br i1 %cmp17, label %for.body19, label %for.end72

for.body19:                                       ; preds = %for.cond16
  store i32 0, i32* %b, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc, %for.body19
  %14 = load i32, i32* %b, align 4
  %15 = load i32, i32* %n.addr, align 4
  %cmp21 = icmp ult i32 %14, %15
  br i1 %cmp21, label %for.body23, label %for.end

for.body23:                                       ; preds = %for.cond20
  %16 = load i32, i32* %b, align 4
  %17 = load i32, i32* %a, align 4
  %add = add i32 %16, %17
  store i32 %add, i32* %i, align 4
  %18 = load i32, i32* %b, align 4
  %19 = load i32, i32* %a, align 4
  %add24 = add i32 %18, %19
  %20 = load i32, i32* %transform_length, align 4
  %add25 = add i32 %add24, %20
  store i32 %add25, i32* %j, align 4
  %21 = load float*, float** %data.addr, align 8
  %22 = load i32, i32* %j, align 4
  %mul26 = mul i32 2, %22
  %idxprom = zext i32 %mul26 to i64
  %arrayidx = getelementptr inbounds float, float* %21, i64 %idxprom
  %23 = load float, float* %arrayidx, align 4
  store float %23, float* %z_real, align 4
  %24 = load float*, float** %data.addr, align 8
  %25 = load i32, i32* %j, align 4
  %mul27 = mul i32 2, %25
  %add28 = add i32 %mul27, 1
  %idxprom29 = zext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds float, float* %24, i64 %idxprom29
  %26 = load float, float* %arrayidx30, align 4
  store float %26, float* %z_imag, align 4
  %27 = load float, float* %w_real, align 4
  %28 = load float, float* %z_real, align 4
  %mul31 = fmul float %27, %28
  %29 = load float, float* %w_imag, align 4
  %30 = load float, float* %z_imag, align 4
  %mul32 = fmul float %29, %30
  %sub = fsub float %mul31, %mul32
  store float %sub, float* %t_real, align 4
  %31 = load float, float* %w_real, align 4
  %32 = load float, float* %z_imag, align 4
  %mul33 = fmul float %31, %32
  %33 = load float, float* %w_imag, align 4
  %34 = load float, float* %z_real, align 4
  %mul34 = fmul float %33, %34
  %add35 = fadd float %mul33, %mul34
  store float %add35, float* %t_imag, align 4
  %35 = load float*, float** %data.addr, align 8
  %36 = load i32, i32* %i, align 4
  %mul36 = mul i32 2, %36
  %idxprom37 = zext i32 %mul36 to i64
  %arrayidx38 = getelementptr inbounds float, float* %35, i64 %idxprom37
  %37 = load float, float* %arrayidx38, align 4
  %38 = load float, float* %t_real, align 4
  %sub39 = fsub float %37, %38
  %39 = load float*, float** %data.addr, align 8
  %40 = load i32, i32* %j, align 4
  %mul40 = mul i32 2, %40
  %idxprom41 = zext i32 %mul40 to i64
  %arrayidx42 = getelementptr inbounds float, float* %39, i64 %idxprom41
  store float %sub39, float* %arrayidx42, align 4
  %41 = load float*, float** %data.addr, align 8
  %42 = load i32, i32* %i, align 4
  %mul43 = mul i32 2, %42
  %add44 = add i32 %mul43, 1
  %idxprom45 = zext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds float, float* %41, i64 %idxprom45
  %43 = load float, float* %arrayidx46, align 4
  %44 = load float, float* %t_imag, align 4
  %sub47 = fsub float %43, %44
  %45 = load float*, float** %data.addr, align 8
  %46 = load i32, i32* %j, align 4
  %mul48 = mul i32 2, %46
  %add49 = add i32 %mul48, 1
  %idxprom50 = zext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds float, float* %45, i64 %idxprom50
  store float %sub47, float* %arrayidx51, align 4
  %47 = load float, float* %t_real, align 4
  %48 = load float*, float** %data.addr, align 8
  %49 = load i32, i32* %i, align 4
  %mul52 = mul i32 2, %49
  %idxprom53 = zext i32 %mul52 to i64
  %arrayidx54 = getelementptr inbounds float, float* %48, i64 %idxprom53
  %50 = load float, float* %arrayidx54, align 4
  %add55 = fadd float %50, %47
  store float %add55, float* %arrayidx54, align 4
  %51 = load float, float* %t_imag, align 4
  %52 = load float*, float** %data.addr, align 8
  %53 = load i32, i32* %i, align 4
  %mul56 = mul i32 2, %53
  %add57 = add i32 %mul56, 1
  %idxprom58 = zext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds float, float* %52, i64 %idxprom58
  %54 = load float, float* %arrayidx59, align 4
  %add60 = fadd float %54, %51
  store float %add60, float* %arrayidx59, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body23
  %55 = load i32, i32* %transform_length, align 4
  %mul61 = mul i32 2, %55
  %56 = load i32, i32* %b, align 4
  %add62 = add i32 %56, %mul61
  store i32 %add62, i32* %b, align 4
  br label %for.cond20

for.end:                                          ; preds = %for.cond20
  %57 = load float, float* %w_real, align 4
  %58 = load float, float* %s, align 4
  %59 = load float, float* %w_imag, align 4
  %mul63 = fmul float %58, %59
  %60 = load float, float* %s2, align 4
  %61 = load float, float* %w_real, align 4
  %mul64 = fmul float %60, %61
  %add65 = fadd float %mul63, %mul64
  %sub66 = fsub float %57, %add65
  store float %sub66, float* %t_real, align 4
  %62 = load float, float* %w_imag, align 4
  %63 = load float, float* %s, align 4
  %64 = load float, float* %w_real, align 4
  %mul67 = fmul float %63, %64
  %65 = load float, float* %s2, align 4
  %66 = load float, float* %w_imag, align 4
  %mul68 = fmul float %65, %66
  %sub69 = fsub float %mul67, %mul68
  %add70 = fadd float %62, %sub69
  store float %add70, float* %t_imag, align 4
  %67 = load float, float* %t_real, align 4
  store float %67, float* %w_real, align 4
  %68 = load float, float* %t_imag, align 4
  store float %68, float* %w_imag, align 4
  br label %for.inc71

for.inc71:                                        ; preds = %for.end
  %69 = load i32, i32* %a, align 4
  %inc = add i32 %69, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond16

for.end72:                                        ; preds = %for.cond16
  %70 = load i32, i32* %transform_length, align 4
  %mul73 = mul i32 %70, 2
  store i32 %mul73, i32* %transform_length, align 4
  br label %for.inc74

for.inc74:                                        ; preds = %for.end72
  %71 = load i32, i32* %bit, align 4
  %inc75 = add i32 %71, 1
  store i32 %inc75, i32* %bit, align 4
  br label %for.cond

for.end76:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: noinline nounwind uwtable
define i64* @fft_hook() #0 {
entry:
  %gold = alloca float*, align 8
  %buf = alloca i64*, align 8
  %ERROR_COUNT_TH = alloca i32, align 4
  %errors = alloca i32, align 4
  store i32 0, i32* %ERROR_COUNT_TH, align 4
  call void @init_parameters()
  %0 = load i32, i32* @size, align 4
  %conv = zext i32 %0 to i64
  %call = call i8* @esp_alloc(i64 %conv)
  %1 = bitcast i8* %call to i64*
  store i64* %1, i64** %buf, align 8
  %2 = load i32, i32* @out_len, align 4
  %conv1 = zext i32 %2 to i64
  %mul = mul i64 %conv1, 4
  %call2 = call noalias i8* @malloc(i64 %mul) #4
  %3 = bitcast i8* %call2 to float*
  store float* %3, float** %gold, align 8
  %4 = load i64*, i64** %buf, align 8
  %5 = load float*, float** %gold, align 8
  call void @init_buffer(i64* %4, float* %5)
  call void @esp_run(%struct.esp_accelerator_thread_info* getelementptr inbounds ([1 x %struct.esp_accelerator_thread_info], [1 x %struct.esp_accelerator_thread_info]* bitcast (<{ { i8, i8*, i32, { %struct.fft_access, [32 x i8] }, i32, %struct.contig_handle_struct**, i64 } }>* @cfg_000 to [1 x %struct.esp_accelerator_thread_info]*), i32 0, i32 0), i32 1)
  %6 = load i64*, i64** %buf, align 8
  %7 = load i32, i32* @out_offset, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds i64, i64* %6, i64 %idxprom
  %8 = load float*, float** %gold, align 8
  %call3 = call i32 @validate_buffer(i64* %arrayidx, float* %8)
  store i32 %call3, i32* %errors, align 4
  %9 = load float*, float** %gold, align 8
  %10 = bitcast float* %9 to i8*
  call void @free(i8* %10) #4
  call void (...) @esp_cleanup()
  %11 = load i64*, i64** %buf, align 8
  %12 = load i32, i32* @out_offset, align 4
  %idxprom4 = zext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i64, i64* %11, i64 %idxprom4
  ret i64* %arrayidx5
}

declare i8* @esp_alloc(i64) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_buffer(i64* %in, float* %gold) #0 {
entry:
  %in.addr = alloca i64*, align 8
  %gold.addr = alloca float*, align 8
  %j = alloca i32, align 4
  %LO = alloca float, align 4
  %HI = alloca float, align 4
  %scaling_factor = alloca float, align 4
  store i64* %in, i64** %in.addr, align 8
  store float* %gold, float** %gold.addr, align 8
  store float -1.000000e+00, float* %LO, align 4
  store float 1.000000e+00, float* %HI, align 4
  %call = call i64 @time(i64* null) #4
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 2048
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand() #4
  %conv3 = sitofp i32 %call2 to float
  %div = fdiv float %conv3, 0x41E0000000000000
  store float %div, float* %scaling_factor, align 4
  %1 = load float, float* %scaling_factor, align 4
  %mul = fmul float %1, 2.000000e+00
  %add = fadd float -1.000000e+00, %mul
  %2 = load float*, float** %gold.addr, align 8
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  store float %add, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %5, 2048
  br i1 %cmp5, label %for.body7, label %for.end16

for.body7:                                        ; preds = %for.cond4
  %6 = load float*, float** %gold.addr, align 8
  %7 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds float, float* %6, i64 %idxprom8
  %8 = load float, float* %arrayidx9, align 4
  %conv10 = fpext float %8 to double
  %call11 = call i64 @double_to_fixed64(double %conv10, i32 42)
  %9 = load i64*, i64** %in.addr, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds i64, i64* %9, i64 %idxprom12
  store i64 %call11, i64* %arrayidx13, align 8
  br label %for.inc14

for.inc14:                                        ; preds = %for.body7
  %11 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %11, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond4

for.end16:                                        ; preds = %for.cond4
  %12 = load float*, float** %gold.addr, align 8
  %call17 = call i32 @fft_comp(float* %12, i32 1024, i32 10, i32 -1, i1 zeroext true)
  ret void
}

declare void @esp_run(%struct.esp_accelerator_thread_info*, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @validate_buffer(i64* %out, float* %gold) #0 {
entry:
  %out.addr = alloca i64*, align 8
  %gold.addr = alloca float*, align 8
  %j = alloca i32, align 4
  %errors = alloca i32, align 4
  %val = alloca double, align 8
  store i64* %out, i64** %out.addr, align 8
  store float* %gold, float** %gold.addr, align 8
  store i32 0, i32* %errors, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 2048
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64*, i64** %out.addr, align 8
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %call = call double @fixed64_to_double(i64 %3, i32 42)
  store double %call, double* %val, align 8
  %4 = load float*, float** %gold.addr, align 8
  %5 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds float, float* %4, i64 %idxprom1
  %6 = load float, float* %arrayidx2, align 4
  %conv = fpext float %6 to double
  %7 = load double, double* %val, align 8
  %sub = fsub double %conv, %7
  %call3 = call double @fabs(double %sub) #5
  %8 = load float*, float** %gold.addr, align 8
  %9 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds float, float* %8, i64 %idxprom4
  %10 = load float, float* %arrayidx5, align 4
  %conv6 = fpext float %10 to double
  %call7 = call double @fabs(double %conv6) #5
  %div = fdiv double %call3, %call7
  %cmp8 = fcmp ogt double %div, 0x3FA99999A0000000
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %errors, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %errors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %j, align 4
  %inc10 = add nsw i32 %12, 1
  store i32 %inc10, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %errors, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0), double 0x3FA99999A0000000, i32 %13, i32 2048)
  %14 = load i32, i32* %errors, align 4
  ret i32 %14
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @esp_cleanup(...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_parameters() #0 {
entry:
  %call = call i32 @DMA_WORD_PER_BEAT(i32 8)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2048, i32* @in_words_adj, align 4
  store i32 2048, i32* @out_words_adj, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i32 @DMA_WORD_PER_BEAT(i32 8)
  %sub = sub i32 %call1, 1
  %or = or i32 2047, %sub
  %add = add i32 %or, 1
  store i32 %add, i32* @in_words_adj, align 4
  %call2 = call i32 @DMA_WORD_PER_BEAT(i32 8)
  %sub3 = sub i32 %call2, 1
  %or4 = or i32 2047, %sub3
  %add5 = add i32 %or4, 1
  store i32 %add5, i32* @out_words_adj, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %0 = load i32, i32* @in_words_adj, align 4
  store i32 %0, i32* @in_len, align 4
  %1 = load i32, i32* @out_words_adj, align 4
  store i32 %1, i32* @out_len, align 4
  %2 = load i32, i32* @in_len, align 4
  %conv = zext i32 %2 to i64
  %mul = mul i64 %conv, 8
  %conv6 = trunc i64 %mul to i32
  store i32 %conv6, i32* @in_size, align 4
  %3 = load i32, i32* @out_len, align 4
  %conv7 = zext i32 %3 to i64
  %mul8 = mul i64 %conv7, 8
  %conv9 = trunc i64 %mul8 to i32
  store i32 %conv9, i32* @out_size, align 4
  store i32 0, i32* @out_offset, align 4
  %4 = load i32, i32* @out_offset, align 4
  %conv10 = zext i32 %4 to i64
  %mul11 = mul i64 %conv10, 8
  %5 = load i32, i32* @out_size, align 4
  %conv12 = zext i32 %5 to i64
  %add13 = add i64 %mul11, %conv12
  %conv14 = trunc i64 %add13 to i32
  store i32 %conv14, i32* @size, align 4
  ret void
}

declare i32 @DMA_WORD_PER_BEAT(i32) #2

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @double_to_fixed64(double %value, i32 %n_int_bits) #0 {
entry:
  %value.addr = alloca double, align 8
  %n_int_bits.addr = alloca i32, align 4
  %shift_ll = alloca i64, align 8
  %shift = alloca double*, align 8
  store double %value, double* %value.addr, align 8
  store i32 %n_int_bits, i32* %n_int_bits.addr, align 4
  %0 = load i32, i32* %n_int_bits.addr, align 4
  %sub = sub nsw i32 64, %0
  %conv = sext i32 %sub to i64
  %mul = mul nsw i64 4503599627370496, %conv
  %add = add nsw i64 4607182418800017408, %mul
  store i64 %add, i64* %shift_ll, align 8
  %1 = bitcast i64* %shift_ll to double*
  store double* %1, double** %shift, align 8
  %2 = load double, double* %value.addr, align 8
  %3 = load double*, double** %shift, align 8
  %4 = load double, double* %3, align 8
  %mul1 = fmul double %2, %4
  %conv2 = fptosi double %mul1 to i64
  ret i64 %conv2
}

; Function Attrs: noinline nounwind uwtable
define internal double @fixed64_to_double(i64 %value, i32 %n_int_bits) #0 {
entry:
  %value.addr = alloca i64, align 8
  %n_int_bits.addr = alloca i32, align 4
  %shift_ll = alloca i64, align 8
  %shift = alloca double*, align 8
  store i64 %value, i64* %value.addr, align 8
  store i32 %n_int_bits, i32* %n_int_bits.addr, align 4
  %0 = load i32, i32* %n_int_bits.addr, align 4
  %sub = sub nsw i32 64, %0
  %conv = sext i32 %sub to i64
  %mul = mul nsw i64 4503599627370496, %conv
  %sub1 = sub nsw i64 4607182418800017408, %mul
  store i64 %sub1, i64* %shift_ll, align 8
  %1 = bitcast i64* %shift_ll to double*
  store double* %1, double** %shift, align 8
  %2 = load double*, double** %shift, align 8
  %3 = load double, double* %2, align 8
  %4 = load i64, i64* %value.addr, align 8
  %conv2 = sitofp i64 %4 to double
  %mul3 = fmul double %3, %conv2
  ret double %mul3
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
