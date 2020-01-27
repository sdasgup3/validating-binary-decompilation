; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x602070_type = type <{ [4 x i8] }>
%G_0x602100___rcx_8__type = type <{ [8 x i8] }>
%G_0x602100___rdi_8__type = type <{ [8 x i8] }>
%G_0x602100___rsi_8__type = type <{ [8 x i8] }>
%G_0x602158_type = type <{ [8 x i8] }>
%G_0x602160_type = type <{ [8 x i8] }>
%G_0x602168_type = type <{ [8 x i8] }>
%G_0x602170_type = type <{ [8 x i8] }>
%G_0x602178_type = type <{ [8 x i8] }>
%G_0x602180_type = type <{ [8 x i8] }>
%G_0x602188_type = type <{ [8 x i8] }>
%G_0x602190_type = type <{ [8 x i8] }>
%G_0x602198_type = type <{ [16 x i8] }>
%G_0x6021a0_type = type <{ [4 x i8] }>
%G_0x602340_type = type <{ [8 x i8] }>
%G_0x602348_type = type <{ [16 x i8] }>
%G_0x602350_type = type <{ [16 x i8] }>
%G_0x602358_type = type <{ [16 x i8] }>
%G_0x602360_type = type <{ [16 x i8] }>
%G_0x602368_type = type <{ [16 x i8] }>
%G_0x602370_type = type <{ [16 x i8] }>
%G_0x602378_type = type <{ [16 x i8] }>
%G_0x602380_type = type <{ [16 x i8] }>
%G_0x602388_type = type <{ [16 x i8] }>
%G_0x602390_type = type <{ [16 x i8] }>
%G_0x602398_type = type <{ [16 x i8] }>
%G_0x6023a0_type = type <{ [16 x i8] }>
%G_0x602650_type = type <{ [4 x i8] }>
%G_0xc01__rip__4196871__type = type <{ [16 x i8] }>
%G_0xc01__rip__4196879__type = type <{ [16 x i8] }>
%G_0xc01__rip__4196887__type = type <{ [16 x i8] }>
%G_0xc47__rip__4196825__type = type <{ [16 x i8] }>
%G_0xc73__rip__4196781__type = type <{ [16 x i8] }>
%G_0xcf9__rip__4196647__type = type <{ [16 x i8] }>
%G_0xd67__rip__4196505__type = type <{ [16 x i8] }>
%G_0xea4__rip__4196180__type = type <{ [16 x i8] }>
%G_0xea5__rip__4196115__type = type <{ [16 x i8] }>
%G_0xea5__rip__4196123__type = type <{ [16 x i8] }>
%G_0xea5__rip__4196131__type = type <{ [16 x i8] }>
%G_0xea5__rip__4196139__type = type <{ [16 x i8] }>
%G_0xea5__rip__4196147__type = type <{ [16 x i8] }>
%G_0xea5__rip__4196155__type = type <{ [16 x i8] }>
%G_0xea5__rip__4196163__type = type <{ [16 x i8] }>
%G_0xea5__rip__4196171__type = type <{ [16 x i8] }>
%G__0x401628_type = type <{ [8 x i8] }>
%G__0x40165e_type = type <{ [8 x i8] }>
%G__0x401696_type = type <{ [8 x i8] }>
%G__0x401697_type = type <{ [8 x i8] }>
%G__0x401698_type = type <{ [8 x i8] }>
%G__0x4016d0_type = type <{ [8 x i8] }>
%G__0x40170c_type = type <{ [8 x i8] }>
%G__0x40174f_type = type <{ [8 x i8] }>
%G__0x401767_type = type <{ [8 x i8] }>
%G__0x401774_type = type <{ [8 x i8] }>
%G__0x401781_type = type <{ [8 x i8] }>
%G__0x4017b1_type = type <{ [8 x i8] }>
%G__0x4017e1_type = type <{ [8 x i8] }>
%G__0x401811_type = type <{ [8 x i8] }>
%G__0x401841_type = type <{ [8 x i8] }>
%G__0x401862_type = type <{ [8 x i8] }>
%G__0x401873_type = type <{ [8 x i8] }>
%G__0x401884_type = type <{ [8 x i8] }>
%G__0x401891_type = type <{ [8 x i8] }>
%G__0x401894_type = type <{ [8 x i8] }>
%G__0x401896_type = type <{ [8 x i8] }>
%G__0x4018c6_type = type <{ [8 x i8] }>
%G__0x602080_type = type <{ [8 x i8] }>
%G__0x6021b0_type = type <{ [8 x i8] }>
%G__0x602350_type = type <{ [8 x i8] }>
%G__0x6023b0_type = type <{ [8 x i8] }>
%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, %union.anon, %struct.Segments, %struct.AddressSpace, %struct.GPR, %struct.X87Stack, %struct.MMX, %struct.FPUStatusFlags, %union.anon, %union.FPU, %struct.SegmentCaches }
%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Segments = type { i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector }
%union.SegmentSelector = type { i16 }
%struct.AddressSpace = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.X87Stack = type { [8 x %struct.anon.3] }
%struct.anon.3 = type { i64, double }
%struct.MMX = type { [8 x %struct.anon.4] }
%struct.anon.4 = type { i64, %union.vec64_t }
%union.vec64_t = type { %struct.uint64v1_t }
%struct.uint64v1_t = type { [1 x i64] }
%struct.FPUStatusFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%union.anon = type { i64 }
%union.FPU = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.FpuFXSAVE, [96 x i8] }
%struct.FpuFXSAVE = type { %union.SegmentSelector, %union.SegmentSelector, %union.FPUAbridgedTagWord, i8, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, %union.FPUControlStatus, %union.FPUControlStatus, [8 x %struct.FPUStackElem], [16 x %union.vec128_t] }
%union.FPUAbridgedTagWord = type { i8 }
%union.FPUControlStatus = type { i32 }
%struct.FPUStackElem = type { %union.anon.11, [6 x i8] }
%union.anon.11 = type { %struct.float80_t }
%struct.float80_t = type { [10 x i8] }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.SegmentCaches = type { %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow }
%struct.SegmentShadow = type { %union.anon, i32, i32 }
%struct.Memory = type opaque

@__bss_start = local_unnamed_addr global %__bss_start_type zeroinitializer
@G_0x602070 = local_unnamed_addr global %G_0x602070_type zeroinitializer
@G_0x602100___rcx_8_ = global %G_0x602100___rcx_8__type zeroinitializer
@G_0x602100___rdi_8_ = global %G_0x602100___rdi_8__type zeroinitializer
@G_0x602100___rsi_8_ = global %G_0x602100___rsi_8__type zeroinitializer
@G_0x602158 = local_unnamed_addr global %G_0x602158_type zeroinitializer
@G_0x602160 = local_unnamed_addr global %G_0x602160_type zeroinitializer
@G_0x602168 = local_unnamed_addr global %G_0x602168_type zeroinitializer
@G_0x602170 = local_unnamed_addr global %G_0x602170_type zeroinitializer
@G_0x602178 = local_unnamed_addr global %G_0x602178_type zeroinitializer
@G_0x602180 = local_unnamed_addr global %G_0x602180_type zeroinitializer
@G_0x602188 = local_unnamed_addr global %G_0x602188_type zeroinitializer
@G_0x602190 = local_unnamed_addr global %G_0x602190_type zeroinitializer
@G_0x602198 = local_unnamed_addr global %G_0x602198_type zeroinitializer
@G_0x6021a0 = local_unnamed_addr global %G_0x6021a0_type zeroinitializer
@G_0x602340 = local_unnamed_addr global %G_0x602340_type zeroinitializer
@G_0x602348 = local_unnamed_addr global %G_0x602348_type zeroinitializer
@G_0x602350 = local_unnamed_addr global %G_0x602350_type zeroinitializer
@G_0x602358 = local_unnamed_addr global %G_0x602358_type zeroinitializer
@G_0x602360 = local_unnamed_addr global %G_0x602360_type zeroinitializer
@G_0x602368 = local_unnamed_addr global %G_0x602368_type zeroinitializer
@G_0x602370 = local_unnamed_addr global %G_0x602370_type zeroinitializer
@G_0x602378 = local_unnamed_addr global %G_0x602378_type zeroinitializer
@G_0x602380 = local_unnamed_addr global %G_0x602380_type zeroinitializer
@G_0x602388 = local_unnamed_addr global %G_0x602388_type zeroinitializer
@G_0x602390 = local_unnamed_addr global %G_0x602390_type zeroinitializer
@G_0x602398 = local_unnamed_addr global %G_0x602398_type zeroinitializer
@G_0x6023a0 = local_unnamed_addr global %G_0x6023a0_type zeroinitializer
@G_0x602650 = local_unnamed_addr global %G_0x602650_type zeroinitializer
@G_0xc01__rip__4196871_ = local_unnamed_addr global %G_0xc01__rip__4196871__type zeroinitializer
@G_0xc01__rip__4196879_ = local_unnamed_addr global %G_0xc01__rip__4196879__type zeroinitializer
@G_0xc01__rip__4196887_ = local_unnamed_addr global %G_0xc01__rip__4196887__type zeroinitializer
@G_0xc47__rip__4196825_ = local_unnamed_addr global %G_0xc47__rip__4196825__type zeroinitializer
@G_0xc73__rip__4196781_ = local_unnamed_addr global %G_0xc73__rip__4196781__type zeroinitializer
@G_0xcf9__rip__4196647_ = local_unnamed_addr global %G_0xcf9__rip__4196647__type zeroinitializer
@G_0xd67__rip__4196505_ = local_unnamed_addr global %G_0xd67__rip__4196505__type zeroinitializer
@G_0xea4__rip__4196180_ = local_unnamed_addr global %G_0xea4__rip__4196180__type zeroinitializer
@G_0xea5__rip__4196115_ = local_unnamed_addr global %G_0xea5__rip__4196115__type zeroinitializer
@G_0xea5__rip__4196123_ = local_unnamed_addr global %G_0xea5__rip__4196123__type zeroinitializer
@G_0xea5__rip__4196131_ = local_unnamed_addr global %G_0xea5__rip__4196131__type zeroinitializer
@G_0xea5__rip__4196139_ = local_unnamed_addr global %G_0xea5__rip__4196139__type zeroinitializer
@G_0xea5__rip__4196147_ = local_unnamed_addr global %G_0xea5__rip__4196147__type zeroinitializer
@G_0xea5__rip__4196155_ = local_unnamed_addr global %G_0xea5__rip__4196155__type zeroinitializer
@G_0xea5__rip__4196163_ = local_unnamed_addr global %G_0xea5__rip__4196163__type zeroinitializer
@G_0xea5__rip__4196171_ = local_unnamed_addr global %G_0xea5__rip__4196171__type zeroinitializer
@G__0x401628 = global %G__0x401628_type zeroinitializer
@G__0x40165e = global %G__0x40165e_type zeroinitializer
@G__0x401696 = global %G__0x401696_type zeroinitializer
@G__0x401697 = global %G__0x401697_type zeroinitializer
@G__0x401698 = global %G__0x401698_type zeroinitializer
@G__0x4016d0 = global %G__0x4016d0_type zeroinitializer
@G__0x40170c = global %G__0x40170c_type zeroinitializer
@G__0x40174f = global %G__0x40174f_type zeroinitializer
@G__0x401767 = global %G__0x401767_type zeroinitializer
@G__0x401774 = global %G__0x401774_type zeroinitializer
@G__0x401781 = global %G__0x401781_type zeroinitializer
@G__0x4017b1 = global %G__0x4017b1_type zeroinitializer
@G__0x4017e1 = global %G__0x4017e1_type zeroinitializer
@G__0x401811 = global %G__0x401811_type zeroinitializer
@G__0x401841 = global %G__0x401841_type zeroinitializer
@G__0x401862 = global %G__0x401862_type zeroinitializer
@G__0x401873 = global %G__0x401873_type zeroinitializer
@G__0x401884 = global %G__0x401884_type zeroinitializer
@G__0x401891 = global %G__0x401891_type zeroinitializer
@G__0x401894 = global %G__0x401894_type zeroinitializer
@G__0x401896 = global %G__0x401896_type zeroinitializer
@G__0x4018c6 = global %G__0x4018c6_type zeroinitializer
@G__0x602080 = global %G__0x602080_type zeroinitializer
@G__0x6021b0 = global %G__0x6021b0_type zeroinitializer
@G__0x602350 = global %G__0x602350_type zeroinitializer
@G__0x6023b0 = global %G__0x6023b0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @sprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @sub_400f30.trace_line(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -200
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 192
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %40 = bitcast [32 x %union.VectorReg]* %39 to i8*
  %41 = load i64, i64* bitcast (%G_0xea5__rip__4196115__type* @G_0xea5__rip__4196115_ to i64*), align 8
  %42 = bitcast [32 x %union.VectorReg]* %39 to double*
  %43 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %41, i64* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %45 = bitcast i64* %44 to double*
  store double 0.000000e+00, double* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %47 = load i64, i64* bitcast (%G_0xea5__rip__4196123__type* @G_0xea5__rip__4196123_ to i64*), align 8
  %48 = bitcast %union.VectorReg* %46 to double*
  %49 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %46, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %47, i64* %49, align 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %51 = bitcast i64* %50 to double*
  store double 0.000000e+00, double* %51, align 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %53 = load i64, i64* bitcast (%G_0xea5__rip__4196131__type* @G_0xea5__rip__4196131_ to i64*), align 8
  %54 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %52, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %53, i64* %54, align 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %56 = bitcast i64* %55 to double*
  store double 0.000000e+00, double* %56, align 1
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %58 = load i64, i64* bitcast (%G_0xea5__rip__4196139__type* @G_0xea5__rip__4196139_ to i64*), align 8
  %59 = bitcast %union.VectorReg* %57 to double*
  %60 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %57, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %58, i64* %60, align 1
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %62 = bitcast i64* %61 to double*
  store double 0.000000e+00, double* %62, align 1
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %64 = load i64, i64* bitcast (%G_0xea5__rip__4196147__type* @G_0xea5__rip__4196147_ to i64*), align 8
  %65 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %63, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %64, i64* %65, align 1
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %67 = bitcast i64* %66 to double*
  store double 0.000000e+00, double* %67, align 1
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %69 = load i64, i64* bitcast (%G_0xea5__rip__4196155__type* @G_0xea5__rip__4196155_ to i64*), align 8
  %70 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %68, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %69, i64* %70, align 1
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %72 = bitcast i64* %71 to double*
  store double 0.000000e+00, double* %72, align 1
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %74 = load i64, i64* bitcast (%G_0xea5__rip__4196163__type* @G_0xea5__rip__4196163_ to i64*), align 8
  %75 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %73, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %74, i64* %75, align 1
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %77 = bitcast i64* %76 to double*
  store double 0.000000e+00, double* %77, align 1
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %79 = load i64, i64* bitcast (%G_0xea5__rip__4196171__type* @G_0xea5__rip__4196171_ to i64*), align 8
  %80 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %78, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %79, i64* %80, align 1
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
  %82 = bitcast i64* %81 to double*
  store double 0.000000e+00, double* %82, align 1
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8
  %84 = load i64, i64* bitcast (%G_0xea4__rip__4196180__type* @G_0xea4__rip__4196180_ to i64*), align 8
  %85 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %83, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %84, i64* %85, align 1
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
  %87 = bitcast i64* %86 to double*
  store double 0.000000e+00, double* %87, align 1
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -4
  %90 = add i64 %10, 90
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %89 to i32*
  store i32 0, i32* %91, align 4
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %92 to i32*
  %93 = load i64, i64* %RBP.i, align 8
  %94 = add i64 %93, -8
  %95 = load i32, i32* %EDI.i, align 4
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 3
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %94 to i32*
  store i32 %95, i32* %98, align 4
  %RSI.i333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %99 = load i64, i64* %RBP.i, align 8
  %100 = add i64 %99, -16
  %101 = load i64, i64* %RSI.i333, align 8
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, 4
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %100 to i64*
  store i64 %101, i64* %104, align 8
  %105 = load i64, i64* %3, align 8
  %106 = load i64, i64* %85, align 1
  store i64 %106, i64* bitcast (%G_0x602158_type* @G_0x602158 to i64*), align 8
  %107 = load i64, i64* %80, align 1
  store i64 %107, i64* bitcast (%G_0x602160_type* @G_0x602160 to i64*), align 8
  %108 = load i64, i64* %75, align 1
  store i64 %108, i64* bitcast (%G_0x602168_type* @G_0x602168 to i64*), align 8
  %109 = load i64, i64* %70, align 1
  store i64 %109, i64* bitcast (%G_0x602170_type* @G_0x602170 to i64*), align 8
  %110 = load i64, i64* %65, align 1
  store i64 %110, i64* bitcast (%G_0x602178_type* @G_0x602178 to i64*), align 8
  %111 = load i64, i64* %60, align 1
  store i64 %111, i64* bitcast (%G_0x602180_type* @G_0x602180 to i64*), align 8
  %112 = load i64, i64* %54, align 1
  store i64 %112, i64* bitcast (%G_0x602188_type* @G_0x602188 to i64*), align 8
  %113 = load i64, i64* %49, align 1
  store i64 %113, i64* bitcast (%G_0x602190_type* @G_0x602190 to i64*), align 8
  store i32 1000000, i32* bitcast (%G_0x602070_type* @G_0x602070 to i32*), align 8
  %114 = load i64, i64* %43, align 1
  store i64 %114, i64* bitcast (%G_0x602198_type* @G_0x602198 to i64*), align 8
  store i16 4, i16* bitcast (%G_0x6021a0_type* @G_0x6021a0 to i16*), align 8
  %115 = load i64, i64* %RBP.i, align 8
  %116 = add i64 %115, -20
  %117 = add i64 %105, 110
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to i32*
  store i32 0, i32* %118, align 4
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i761 = getelementptr inbounds %union.anon, %union.anon* %119, i64 0, i32 0
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i759 = getelementptr inbounds %union.anon, %union.anon* %120, i64 0, i32 0
  %EAX.i756 = bitcast %union.anon* %119 to i32*
  %ECX.i757 = bitcast %union.anon* %120 to i32*
  %RDX.i743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4007d0

block_.L_4007d0:                                  ; preds = %block_.L_400848, %entry
  %121 = phi i64 [ %355, %block_.L_400848 ], [ %.pre, %entry ]
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -20
  %124 = add i64 %121, 3
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %123 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = zext i32 %126 to i64
  store i64 %127, i64* %RAX.i761, align 8
  %128 = load i16, i16* bitcast (%G_0x6021a0_type* @G_0x6021a0 to i16*), align 8
  %129 = sext i16 %128 to i64
  %130 = and i64 %129, 4294967295
  store i64 %130, i64* %RCX.i759, align 8
  %131 = sext i16 %128 to i32
  %132 = sub i32 %126, %131
  %133 = icmp ult i32 %126, %131
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %14, align 1
  %135 = and i32 %132, 255
  %136 = tail call i32 @llvm.ctpop.i32(i32 %135)
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  store i8 %139, i8* %21, align 1
  %140 = xor i32 %131, %126
  %141 = xor i32 %140, %132
  %142 = lshr i32 %141, 4
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  store i8 %144, i8* %26, align 1
  %145 = icmp eq i32 %132, 0
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %29, align 1
  %147 = lshr i32 %132, 31
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %32, align 1
  %149 = lshr i32 %126, 31
  %150 = lshr i32 %131, 31
  %151 = xor i32 %150, %149
  %152 = xor i32 %147, %149
  %153 = add nuw nsw i32 %152, %151
  %154 = icmp eq i32 %153, 2
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %38, align 1
  %156 = icmp ne i8 %148, 0
  %157 = xor i1 %156, %154
  %.v = select i1 %157, i64 19, i64 139
  %158 = add i64 %121, %.v
  store i64 %158, i64* %3, align 8
  br i1 %157, label %block_4007e3, label %block_.L_40085b

block_4007e3:                                     ; preds = %block_.L_4007d0
  %159 = add i64 %122, -24
  %160 = add i64 %158, 7
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i32*
  store i32 0, i32* %161, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_4007ea

block_.L_4007ea:                                  ; preds = %block_4007f4, %block_4007e3
  %162 = phi i64 [ %325, %block_4007f4 ], [ %.pre1, %block_4007e3 ]
  %163 = load i64, i64* %RBP.i, align 8
  %164 = add i64 %163, -24
  %165 = add i64 %162, 4
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = add i32 %167, -4
  %169 = icmp ult i32 %167, 4
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %14, align 1
  %171 = and i32 %168, 255
  %172 = tail call i32 @llvm.ctpop.i32(i32 %171)
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  store i8 %175, i8* %21, align 1
  %176 = xor i32 %167, %168
  %177 = lshr i32 %176, 4
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  store i8 %179, i8* %26, align 1
  %180 = icmp eq i32 %168, 0
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %29, align 1
  %182 = lshr i32 %168, 31
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %32, align 1
  %184 = lshr i32 %167, 31
  %185 = xor i32 %182, %184
  %186 = add nuw nsw i32 %185, %184
  %187 = icmp eq i32 %186, 2
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %38, align 1
  %189 = icmp ne i8 %183, 0
  %190 = xor i1 %189, %187
  %.v9 = select i1 %190, i64 10, i64 94
  %191 = add i64 %162, %.v9
  store i64 %191, i64* %3, align 8
  br i1 %190, label %block_4007f4, label %block_.L_400848

block_4007f4:                                     ; preds = %block_.L_4007ea
  store i64 ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64), i64* %RAX.i761, align 8
  store i64 ptrtoint (%G__0x602080_type* @G__0x602080 to i64), i64* %RCX.i759, align 8
  %192 = add i64 %163, -20
  %193 = add i64 %191, 24
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %192 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = shl nsw i64 %196, 5
  store i64 %197, i64* %RDX.i743, align 8
  %198 = lshr i64 %196, 58
  %199 = and i64 %198, 1
  %200 = add i64 %197, ptrtoint (%G__0x602080_type* @G__0x602080 to i64)
  store i64 %200, i64* %RCX.i759, align 8
  %201 = icmp ult i64 %200, ptrtoint (%G__0x602080_type* @G__0x602080 to i64)
  %202 = icmp ult i64 %200, %197
  %203 = or i1 %201, %202
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %14, align 1
  %205 = trunc i64 %200 to i32
  %206 = and i32 %205, 248
  %207 = tail call i32 @llvm.ctpop.i32(i32 %206)
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  %210 = xor i8 %209, 1
  store i8 %210, i8* %21, align 1
  %211 = xor i64 %200, ptrtoint (%G__0x602080_type* @G__0x602080 to i64)
  %212 = lshr i64 %211, 4
  %213 = trunc i64 %212 to i8
  %214 = and i8 %213, 1
  store i8 %214, i8* %26, align 1
  %215 = icmp eq i64 %200, 0
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %29, align 1
  %217 = lshr i64 %200, 63
  %218 = trunc i64 %217 to i8
  store i8 %218, i8* %32, align 1
  %219 = xor i64 %217, lshr (i64 ptrtoint (%G__0x602080_type* @G__0x602080 to i64), i64 63)
  %220 = xor i64 %217, %199
  %221 = add nuw nsw i64 %219, %220
  %222 = icmp eq i64 %221, 2
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %38, align 1
  %224 = add i64 %191, 35
  store i64 %224, i64* %3, align 8
  %225 = load i32, i32* %166, align 4
  %226 = sext i32 %225 to i64
  store i64 %226, i64* %RDX.i743, align 8
  %227 = shl nsw i64 %226, 3
  %228 = add i64 %227, %200
  %229 = add i64 %191, 40
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i64*
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %43, align 1
  store double 0.000000e+00, double* %45, align 1
  %232 = add i64 %191, 43
  store i64 %232, i64* %3, align 8
  %233 = load i32, i32* %194, align 4
  %234 = add i32 %233, 1
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RSI.i333, align 8
  %236 = sext i32 %234 to i64
  %237 = mul nsw i64 %236, 40
  store i64 %237, i64* %RCX.i759, align 8
  %238 = lshr i64 %237, 63
  %239 = add i64 %237, ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64)
  store i64 %239, i64* %RAX.i761, align 8
  %240 = icmp ult i64 %239, ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64)
  %241 = icmp ult i64 %239, %237
  %242 = or i1 %240, %241
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %14, align 1
  %244 = trunc i64 %239 to i32
  %245 = and i32 %244, 255
  %246 = tail call i32 @llvm.ctpop.i32(i32 %245)
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %21, align 1
  %250 = xor i64 %237, ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64)
  %251 = xor i64 %250, %239
  %252 = lshr i64 %251, 4
  %253 = trunc i64 %252 to i8
  %254 = and i8 %253, 1
  store i8 %254, i8* %26, align 1
  %255 = icmp eq i64 %239, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %29, align 1
  %257 = lshr i64 %239, 63
  %258 = trunc i64 %257 to i8
  store i8 %258, i8* %32, align 1
  %259 = xor i64 %257, lshr (i64 ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64), i64 63)
  %260 = xor i64 %257, %238
  %261 = add nuw nsw i64 %259, %260
  %262 = icmp eq i64 %261, 2
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %38, align 1
  %264 = add i64 %191, 59
  store i64 %264, i64* %3, align 8
  %265 = load i32, i32* %166, align 4
  %266 = add i32 %265, 1
  %267 = zext i32 %266 to i64
  store i64 %267, i64* %RSI.i333, align 8
  %268 = icmp eq i32 %265, -1
  %269 = icmp eq i32 %266, 0
  %270 = or i1 %268, %269
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %14, align 1
  %272 = and i32 %266, 255
  %273 = tail call i32 @llvm.ctpop.i32(i32 %272)
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  %276 = xor i8 %275, 1
  store i8 %276, i8* %21, align 1
  %277 = xor i32 %265, %266
  %278 = lshr i32 %277, 4
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  store i8 %280, i8* %26, align 1
  %281 = zext i1 %269 to i8
  store i8 %281, i8* %29, align 1
  %282 = lshr i32 %266, 31
  %283 = trunc i32 %282 to i8
  store i8 %283, i8* %32, align 1
  %284 = lshr i32 %265, 31
  %285 = xor i32 %282, %284
  %286 = add nuw nsw i32 %285, %282
  %287 = icmp eq i32 %286, 2
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %38, align 1
  %289 = sext i32 %266 to i64
  store i64 %289, i64* %RCX.i759, align 8
  %290 = shl nsw i64 %289, 3
  %291 = add i64 %290, %239
  %292 = add i64 %191, 70
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i64*
  store i64 %231, i64* %293, align 8
  %294 = load i64, i64* %RBP.i, align 8
  %295 = add i64 %294, -24
  %296 = load i64, i64* %3, align 8
  %297 = add i64 %296, 3
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %295 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = add i32 %299, 1
  %301 = zext i32 %300 to i64
  store i64 %301, i64* %RAX.i761, align 8
  %302 = icmp eq i32 %299, -1
  %303 = icmp eq i32 %300, 0
  %304 = or i1 %302, %303
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %14, align 1
  %306 = and i32 %300, 255
  %307 = tail call i32 @llvm.ctpop.i32(i32 %306)
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  %310 = xor i8 %309, 1
  store i8 %310, i8* %21, align 1
  %311 = xor i32 %299, %300
  %312 = lshr i32 %311, 4
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  store i8 %314, i8* %26, align 1
  %315 = zext i1 %303 to i8
  store i8 %315, i8* %29, align 1
  %316 = lshr i32 %300, 31
  %317 = trunc i32 %316 to i8
  store i8 %317, i8* %32, align 1
  %318 = lshr i32 %299, 31
  %319 = xor i32 %316, %318
  %320 = add nuw nsw i32 %319, %316
  %321 = icmp eq i32 %320, 2
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %38, align 1
  %323 = add i64 %296, 9
  store i64 %323, i64* %3, align 8
  store i32 %300, i32* %298, align 4
  %324 = load i64, i64* %3, align 8
  %325 = add i64 %324, -89
  store i64 %325, i64* %3, align 8
  br label %block_.L_4007ea

block_.L_400848:                                  ; preds = %block_.L_4007ea
  %326 = add i64 %163, -20
  %327 = add i64 %191, 8
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = add i32 %329, 1
  %331 = zext i32 %330 to i64
  store i64 %331, i64* %RAX.i761, align 8
  %332 = icmp eq i32 %329, -1
  %333 = icmp eq i32 %330, 0
  %334 = or i1 %332, %333
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %14, align 1
  %336 = and i32 %330, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %21, align 1
  %341 = xor i32 %329, %330
  %342 = lshr i32 %341, 4
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  store i8 %344, i8* %26, align 1
  %345 = zext i1 %333 to i8
  store i8 %345, i8* %29, align 1
  %346 = lshr i32 %330, 31
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %32, align 1
  %348 = lshr i32 %329, 31
  %349 = xor i32 %346, %348
  %350 = add nuw nsw i32 %349, %346
  %351 = icmp eq i32 %350, 2
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %38, align 1
  %353 = add i64 %191, 14
  store i64 %353, i64* %3, align 8
  store i32 %330, i32* %328, align 4
  %354 = load i64, i64* %3, align 8
  %355 = add i64 %354, -134
  store i64 %355, i64* %3, align 8
  br label %block_.L_4007d0

block_.L_40085b:                                  ; preds = %block_.L_4007d0
  %RDI.i685 = getelementptr inbounds %union.anon, %union.anon* %92, i64 0, i32 0
  store i64 ptrtoint (%G__0x401628_type* @G__0x401628 to i64), i64* %RDI.i685, align 8
  %AL.i683 = bitcast %union.anon* %119 to i8*
  store i8 0, i8* %AL.i683, align 1
  %356 = add i64 %158, -699
  %357 = add i64 %158, 17
  %358 = load i64, i64* %6, align 8
  %359 = add i64 %358, -8
  %360 = inttoptr i64 %359 to i64*
  store i64 %357, i64* %360, align 8
  store i64 %359, i64* %6, align 8
  store i64 %356, i64* %3, align 8
  %361 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  %362 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40165e_type* @G__0x40165e to i64), i64* %RDI.i685, align 8
  %363 = load i32, i32* bitcast (%G_0x602070_type* @G_0x602070 to i32*), align 8
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RSI.i333, align 8
  %365 = load i64, i64* %RBP.i, align 8
  %366 = add i64 %365, -52
  %367 = load i32, i32* %EAX.i756, align 4
  %368 = add i64 %362, 20
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %366 to i32*
  store i32 %367, i32* %369, align 4
  %370 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i683, align 1
  %371 = add i64 %370, -736
  %372 = add i64 %370, 7
  %373 = load i64, i64* %6, align 8
  %374 = add i64 %373, -8
  %375 = inttoptr i64 %374 to i64*
  store i64 %372, i64* %375, align 8
  store i64 %374, i64* %6, align 8
  store i64 %371, i64* %3, align 8
  %376 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %361)
  %377 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x401698_type* @G__0x401698 to i64), i64* %RDI.i685, align 8
  %378 = load double, double* bitcast (%G_0xd67__rip__4196505__type* @G_0xd67__rip__4196505_ to double*), align 8
  %379 = load i32, i32* bitcast (%G_0x602070_type* @G_0x602070 to i32*), align 8
  %380 = zext i32 %379 to i64
  store i64 %380, i64* %RSI.i333, align 8
  %381 = sitofp i32 %379 to double
  %382 = bitcast i64* %50 to <2 x i32>*
  %383 = load <2 x i32>, <2 x i32>* %382, align 1
  %384 = fdiv double %381, %378
  store double %384, double* %48, align 1
  %385 = bitcast double %384 to <2 x i32>
  %386 = extractelement <2 x i32> %385, i32 0
  %387 = bitcast [32 x %union.VectorReg]* %39 to i32*
  store i32 %386, i32* %387, align 1
  %388 = extractelement <2 x i32> %385, i32 1
  %389 = getelementptr inbounds i8, i8* %40, i64 4
  %390 = bitcast i8* %389 to i32*
  store i32 %388, i32* %390, align 1
  %391 = extractelement <2 x i32> %383, i32 0
  %392 = bitcast i64* %44 to i32*
  store i32 %391, i32* %392, align 1
  %393 = extractelement <2 x i32> %383, i32 1
  %394 = getelementptr inbounds i8, i8* %40, i64 12
  %395 = bitcast i8* %394 to i32*
  store i32 %393, i32* %395, align 1
  %396 = load i64, i64* %RBP.i, align 8
  %397 = add i64 %396, -56
  %398 = load i32, i32* %EAX.i756, align 4
  %399 = add i64 %377, 39
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %397 to i32*
  store i32 %398, i32* %400, align 4
  %401 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i683, align 1
  %402 = add i64 %401, -782
  %403 = add i64 %401, 7
  %404 = load i64, i64* %6, align 8
  %405 = add i64 %404, -8
  %406 = inttoptr i64 %405 to i64*
  store i64 %403, i64* %406, align 8
  store i64 %405, i64* %6, align 8
  store i64 %402, i64* %3, align 8
  %407 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %376)
  %408 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4016d0_type* @G__0x4016d0 to i64), i64* %RDI.i685, align 8
  %409 = load i64, i64* %RBP.i, align 8
  %410 = add i64 %409, -60
  %411 = load i32, i32* %EAX.i756, align 4
  %412 = add i64 %408, 13
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %410 to i32*
  store i32 %411, i32* %413, align 4
  %414 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i683, align 1
  %415 = add i64 %414, -802
  %416 = add i64 %414, 7
  %417 = load i64, i64* %6, align 8
  %418 = add i64 %417, -8
  %419 = inttoptr i64 %418 to i64*
  store i64 %416, i64* %419, align 8
  store i64 %418, i64* %6, align 8
  store i64 %415, i64* %3, align 8
  %420 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %407)
  %421 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40170c_type* @G__0x40170c to i64), i64* %RDI.i685, align 8
  %422 = load i64, i64* %RBP.i, align 8
  %423 = add i64 %422, -64
  %424 = load i32, i32* %EAX.i756, align 4
  %425 = add i64 %421, 13
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %423 to i32*
  store i32 %424, i32* %426, align 4
  %427 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i683, align 1
  %428 = add i64 %427, -822
  %429 = add i64 %427, 7
  %430 = load i64, i64* %6, align 8
  %431 = add i64 %430, -8
  %432 = inttoptr i64 %431 to i64*
  store i64 %429, i64* %432, align 8
  store i64 %431, i64* %6, align 8
  store i64 %428, i64* %3, align 8
  %433 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %420)
  %434 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x602650_type* @G_0x602650 to i32*), align 8
  %435 = load i64, i64* %RBP.i, align 8
  %436 = add i64 %435, -68
  %437 = load i32, i32* %EAX.i756, align 4
  %438 = add i64 %434, 14
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %436 to i32*
  store i32 %437, i32* %439, align 4
  %AX.i564 = bitcast %union.anon* %119 to i16*
  %440 = bitcast %union.VectorReg* %63 to <2 x i32>*
  %441 = bitcast i64* %66 to <2 x i32>*
  %.pre2 = load i64, i64* %3, align 8
  %.pre3 = load i32, i32* bitcast (%G_0x602650_type* @G_0x602650 to i32*), align 8
  br label %block_.L_4008eb

block_.L_4008eb:                                  ; preds = %block_.L_4009a0, %block_.L_40085b
  %442 = phi i32 [ %.pre3, %block_.L_40085b ], [ %702, %block_.L_4009a0 ]
  %443 = phi i64 [ %.pre2, %block_.L_40085b ], [ %725, %block_.L_4009a0 ]
  %MEMORY.2 = phi %struct.Memory* [ %433, %block_.L_40085b ], [ %call2_400aba, %block_.L_4009a0 ]
  %444 = zext i32 %442 to i64
  store i64 %444, i64* %RAX.i761, align 8
  %445 = load i32, i32* bitcast (%G_0x602070_type* @G_0x602070 to i32*), align 8
  %446 = sub i32 %442, %445
  %447 = icmp ult i32 %442, %445
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %14, align 1
  %449 = and i32 %446, 255
  %450 = tail call i32 @llvm.ctpop.i32(i32 %449)
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  store i8 %453, i8* %21, align 1
  %454 = xor i32 %445, %442
  %455 = xor i32 %454, %446
  %456 = lshr i32 %455, 4
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  store i8 %458, i8* %26, align 1
  %459 = icmp eq i32 %446, 0
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %29, align 1
  %461 = lshr i32 %446, 31
  %462 = trunc i32 %461 to i8
  store i8 %462, i8* %32, align 1
  %463 = lshr i32 %442, 31
  %464 = lshr i32 %445, 31
  %465 = xor i32 %464, %463
  %466 = xor i32 %461, %463
  %467 = add nuw nsw i32 %466, %465
  %468 = icmp eq i32 %467, 2
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %38, align 1
  %470 = icmp ne i8 %462, 0
  %471 = xor i1 %470, %468
  %.v10 = select i1 %471, i64 20, i64 567
  %472 = add i64 %443, %.v10
  %473 = add i64 %472, 10
  store i64 %473, i64* %3, align 8
  br i1 %471, label %block_4008ff, label %block_.L_400b22

block_4008ff:                                     ; preds = %block_.L_4008eb
  store i16 0, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  br label %block_.L_400909

block_.L_400909:                                  ; preds = %block_40091a, %block_4008ff
  %474 = phi i16 [ 0, %block_4008ff ], [ %541, %block_40091a ]
  %475 = phi i64 [ %473, %block_4008ff ], [ %564, %block_40091a ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_4008ff ], [ %call2_400937, %block_40091a ]
  %476 = sext i16 %474 to i64
  %477 = and i64 %476, 4294967295
  store i64 %477, i64* %RAX.i761, align 8
  %478 = sext i16 %474 to i32
  %479 = add nsw i32 %478, -1
  %480 = icmp eq i16 %474, 0
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %14, align 1
  %482 = and i32 %479, 255
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482)
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %21, align 1
  %487 = xor i32 %478, %479
  %488 = lshr i32 %487, 4
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  store i8 %490, i8* %26, align 1
  %491 = icmp eq i32 %479, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %29, align 1
  %493 = lshr i32 %479, 31
  %494 = trunc i32 %493 to i8
  store i8 %494, i8* %32, align 1
  %495 = lshr i32 %478, 31
  %496 = xor i32 %493, %495
  %497 = add nuw nsw i32 %496, %495
  %498 = icmp eq i32 %497, 2
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %38, align 1
  %500 = icmp ne i8 %494, 0
  %501 = xor i1 %500, %498
  %.demorgan = or i1 %491, %501
  %.v11 = select i1 %.demorgan, i64 17, i64 151
  %502 = add i64 %475, %.v11
  %503 = add i64 %502, 5
  store i64 %503, i64* %3, align 8
  br i1 %.demorgan, label %block_40091a, label %block_.L_4009a0

block_40091a:                                     ; preds = %block_.L_400909
  store i64 4, i64* %RDI.i685, align 8
  %504 = load double, double* bitcast (%G_0xcf9__rip__4196647__type* @G_0xcf9__rip__4196647_ to double*), align 8
  %505 = load double, double* bitcast (%G_0x602198_type* @G_0x602198 to double*), align 8
  %506 = fdiv double %505, %504
  store double %506, double* %48, align 1
  store i64 0, i64* %50, align 1
  %507 = bitcast double %506 to <2 x i32>
  %508 = extractelement <2 x i32> %507, i32 0
  store i32 %508, i32* %387, align 1
  %509 = extractelement <2 x i32> %507, i32 1
  store i32 %509, i32* %390, align 1
  store i32 0, i32* %392, align 1
  store i32 0, i32* %395, align 1
  %510 = add i64 %502, 1558
  %511 = add i64 %502, 34
  %512 = load i64, i64* %6, align 8
  %513 = add i64 %512, -8
  %514 = inttoptr i64 %513 to i64*
  store i64 %511, i64* %514, align 8
  store i64 %513, i64* %6, align 8
  store i64 %510, i64* %3, align 8
  %call2_400937 = tail call %struct.Memory* @sub_400f30.trace_line(%struct.State* %0, i64 %510, %struct.Memory* %MEMORY.3)
  %515 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x602350_type* @G__0x602350 to i64), i64* %RCX.i759, align 8
  %516 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  %517 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  %518 = sext i16 %517 to i64
  %519 = shl nsw i64 %518, 4
  %520 = add i64 %519, ptrtoint (%G__0x602350_type* @G__0x602350 to i64)
  store i64 %520, i64* %RSI.i333, align 8
  %521 = add i64 %515, 42
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i64*
  store i64 %516, i64* %522, align 8
  %523 = load i64, i64* %3, align 8
  %524 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  store i64 %524, i64* %43, align 1
  store double 0.000000e+00, double* %45, align 1
  %525 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  %526 = sext i16 %525 to i64
  %527 = shl nsw i64 %526, 4
  store i64 %527, i64* %RDX.i743, align 8
  %528 = load i64, i64* %RCX.i759, align 8
  %529 = add i64 %527, %528
  store i64 %529, i64* %RCX.i759, align 8
  %530 = add i64 %529, 8
  %531 = add i64 %523, 30
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i64*
  store i64 %524, i64* %532, align 8
  %533 = load i64, i64* %RBP.i, align 8
  %534 = add i64 %533, -72
  %535 = load i32, i32* %EAX.i756, align 4
  %536 = load i64, i64* %3, align 8
  %537 = add i64 %536, 3
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %534 to i32*
  store i32 %535, i32* %538, align 4
  %539 = load i64, i64* %3, align 8
  %540 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  %541 = add i16 %540, 1
  store i16 %541, i16* %AX.i564, align 2
  %542 = icmp eq i16 %540, -1
  %543 = icmp eq i16 %541, 0
  %544 = or i1 %542, %543
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %14, align 1
  %546 = and i16 %541, 255
  %547 = zext i16 %546 to i32
  %548 = tail call i32 @llvm.ctpop.i32(i32 %547)
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  %551 = xor i8 %550, 1
  store i8 %551, i8* %21, align 1
  %552 = xor i16 %540, %541
  %553 = lshr i16 %552, 4
  %554 = trunc i16 %553 to i8
  %555 = and i8 %554, 1
  store i8 %555, i8* %26, align 1
  %556 = zext i1 %543 to i8
  store i8 %556, i8* %29, align 1
  %557 = lshr i16 %541, 15
  %558 = trunc i16 %557 to i8
  store i8 %558, i8* %32, align 1
  %559 = lshr i16 %540, 15
  %560 = xor i16 %557, %559
  %561 = add nuw nsw i16 %560, %557
  %562 = icmp eq i16 %561, 2
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %38, align 1
  store i16 %541, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  %564 = add i64 %539, -126
  store i64 %564, i64* %3, align 8
  br label %block_.L_400909

block_.L_4009a0:                                  ; preds = %block_.L_400909
  store i64 3, i64* %RDI.i685, align 8
  %565 = load double, double* bitcast (%G_0xc73__rip__4196781__type* @G_0xc73__rip__4196781_ to double*), align 8
  store i16 0, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  %566 = load double, double* bitcast (%G_0x602198_type* @G_0x602198 to double*), align 8
  %567 = fdiv double %566, %565
  store double %567, double* %48, align 1
  store i64 0, i64* %50, align 1
  %568 = bitcast double %567 to <2 x i32>
  %569 = extractelement <2 x i32> %568, i32 0
  store i32 %569, i32* %387, align 1
  %570 = extractelement <2 x i32> %568, i32 1
  store i32 %570, i32* %390, align 1
  store i32 0, i32* %392, align 1
  store i32 0, i32* %395, align 1
  %571 = add i64 %502, 1424
  %572 = add i64 %502, 44
  %573 = load i64, i64* %6, align 8
  %574 = add i64 %573, -8
  %575 = inttoptr i64 %574 to i64*
  store i64 %572, i64* %575, align 8
  store i64 %574, i64* %6, align 8
  store i64 %571, i64* %3, align 8
  %call2_4009c7 = tail call %struct.Memory* @sub_400f30.trace_line(%struct.State* %0, i64 %571, %struct.Memory* %MEMORY.3)
  %576 = load i64, i64* %3, align 8
  store i64 6, i64* %RDI.i685, align 8
  %577 = load i64, i64* bitcast (%G_0xc47__rip__4196825__type* @G_0xc47__rip__4196825_ to i64*), align 8
  store i64 %577, i64* %43, align 1
  %578 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  %579 = load i64, i64* %RBP.i, align 8
  %580 = add i64 %579, -48
  %581 = add i64 %576, 27
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i64*
  store i64 %578, i64* %582, align 8
  %583 = load i64, i64* %3, align 8
  %584 = load double, double* bitcast (%G_0x602198_type* @G_0x602198 to double*), align 8
  %585 = load double, double* %42, align 1
  %586 = fdiv double %584, %585
  store double %586, double* %48, align 1
  store i64 0, i64* %50, align 1
  %587 = bitcast double %586 to <2 x i32>
  %588 = extractelement <2 x i32> %587, i32 0
  store i32 %588, i32* %387, align 1
  %589 = extractelement <2 x i32> %587, i32 1
  store i32 %589, i32* %390, align 1
  store i32 0, i32* %392, align 1
  store i32 0, i32* %395, align 1
  %590 = load i64, i64* %RBP.i, align 8
  %591 = add i64 %590, -76
  %592 = load i32, i32* %EAX.i756, align 4
  %593 = add i64 %583, 19
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %591 to i32*
  store i32 %592, i32* %594, align 4
  %595 = load i64, i64* %3, align 8
  %596 = add i64 %595, 1334
  %597 = add i64 %595, 5
  %598 = load i64, i64* %6, align 8
  %599 = add i64 %598, -8
  %600 = inttoptr i64 %599 to i64*
  store i64 %597, i64* %600, align 8
  store i64 %599, i64* %6, align 8
  store i64 %596, i64* %3, align 8
  %call2_4009fa = tail call %struct.Memory* @sub_400f30.trace_line(%struct.State* %0, i64 %596, %struct.Memory* %call2_4009c7)
  %601 = load i64, i64* %3, align 8
  %602 = load i64, i64* bitcast (%G_0xc01__rip__4196871__type* @G_0xc01__rip__4196871_ to i64*), align 8
  store i64 %602, i64* %43, align 1
  %603 = load i64, i64* bitcast (%G_0xc01__rip__4196879__type* @G_0xc01__rip__4196879_ to i64*), align 8
  store i64 %603, i64* %49, align 1
  store double 0.000000e+00, double* %51, align 1
  %604 = load i64, i64* bitcast (%G_0xc01__rip__4196887__type* @G_0xc01__rip__4196887_ to i64*), align 8
  store i64 %604, i64* %54, align 1
  store double 0.000000e+00, double* %56, align 1
  %605 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  %606 = load i64, i64* %RBP.i, align 8
  %607 = add i64 %606, -40
  %608 = add i64 %601, 38
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to i64*
  store i64 %605, i64* %609, align 8
  %610 = load i64, i64* %3, align 8
  %611 = load double, double* bitcast (%G_0x602360_type* @G_0x602360 to double*), align 8
  %612 = load double, double* bitcast (%G_0x602350_type* @G_0x602350 to double*), align 8
  %613 = fsub double %611, %612
  store double %613, double* bitcast (%G_0x602378_type* @G_0x602378 to double*), align 8
  %614 = load double, double* bitcast (%G_0x602368_type* @G_0x602368 to double*), align 8
  %615 = fmul double %611, %614
  store double %615, double* %59, align 1
  store i64 0, i64* %61, align 1
  %616 = load i64, i64* bitcast (%G_0x602358_type* @G_0x602358 to i64*), align 8
  store i64 %616, i64* %65, align 1
  store double 0.000000e+00, double* %67, align 1
  %617 = load i64, i64* %RBP.i, align 8
  %618 = add i64 %617, -88
  %619 = add i64 %610, 59
  store i64 %619, i64* %3, align 8
  %620 = load i64, i64* %43, align 1
  %621 = inttoptr i64 %618 to i64*
  store i64 %620, i64* %621, align 8
  %622 = load i64, i64* %3, align 8
  %623 = load <2 x i32>, <2 x i32>* %440, align 1
  %624 = load <2 x i32>, <2 x i32>* %441, align 1
  %625 = extractelement <2 x i32> %623, i32 0
  store i32 %625, i32* %387, align 1
  %626 = extractelement <2 x i32> %623, i32 1
  store i32 %626, i32* %390, align 1
  %627 = extractelement <2 x i32> %624, i32 0
  store i32 %627, i32* %392, align 1
  %628 = extractelement <2 x i32> %624, i32 1
  store i32 %628, i32* %395, align 1
  %629 = load i64, i64* %RBP.i, align 8
  %630 = add i64 %629, -92
  %631 = load i32, i32* %EAX.i756, align 4
  %632 = add i64 %622, 6
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %630 to i32*
  store i32 %631, i32* %633, align 4
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -104
  %636 = load i64, i64* %3, align 8
  %637 = add i64 %636, 5
  store i64 %637, i64* %3, align 8
  %638 = load i64, i64* %60, align 1
  %639 = inttoptr i64 %635 to i64*
  store i64 %638, i64* %639, align 8
  %640 = load i64, i64* %RBP.i, align 8
  %641 = add i64 %640, -112
  %642 = load i64, i64* %3, align 8
  %643 = add i64 %642, 5
  store i64 %643, i64* %3, align 8
  %644 = load i64, i64* %49, align 1
  %645 = inttoptr i64 %641 to i64*
  store i64 %644, i64* %645, align 8
  %646 = load i64, i64* %RBP.i, align 8
  %647 = add i64 %646, -120
  %648 = load i64, i64* %3, align 8
  %649 = add i64 %648, 5
  store i64 %649, i64* %3, align 8
  %650 = load i64, i64* %54, align 1
  %651 = inttoptr i64 %647 to i64*
  store i64 %650, i64* %651, align 8
  %652 = load i64, i64* %3, align 8
  %653 = add i64 %652, -1173
  %654 = add i64 %652, 5
  %655 = load i64, i64* %6, align 8
  %656 = add i64 %655, -8
  %657 = inttoptr i64 %656 to i64*
  store i64 %654, i64* %657, align 8
  store i64 %656, i64* %6, align 8
  store i64 %653, i64* %3, align 8
  %call2_400a75 = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %653, %struct.Memory* %call2_4009fa)
  %658 = load i64, i64* %3, align 8
  %659 = load double, double* %42, align 1
  %660 = load double, double* bitcast (%G_0x602350_type* @G_0x602350 to double*), align 8
  %661 = fmul double %659, %660
  store double %661, double* %42, align 1
  %662 = load i64, i64* %RBP.i, align 8
  %663 = add i64 %662, -104
  %664 = add i64 %658, 14
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to double*
  %666 = load double, double* %665, align 8
  %667 = fdiv double %666, %661
  store double %667, double* %48, align 1
  store i64 0, i64* %50, align 1
  %668 = add i64 %662, -120
  %669 = add i64 %658, 23
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to double*
  %671 = load double, double* %670, align 8
  %672 = fsub double %671, %667
  store double %672, double* %42, align 1
  store i64 0, i64* %44, align 1
  store double %672, double* bitcast (%G_0x602380_type* @G_0x602380 to double*), align 8
  %673 = add i64 %662, -40
  %674 = add i64 %658, 41
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to double*
  %676 = load double, double* %675, align 8
  store double %676, double* %42, align 1
  store double 0.000000e+00, double* %45, align 1
  %677 = add i64 %662, -48
  %678 = add i64 %658, 46
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to double*
  %680 = load double, double* %679, align 8
  %681 = fsub double %676, %680
  store double %681, double* bitcast (%G_0x602388_type* @G_0x602388 to double*), align 8
  %682 = load i64, i64* bitcast (%G_0x602358_type* @G_0x602358 to i64*), align 8
  store i64 %682, i64* %43, align 1
  store double 0.000000e+00, double* %45, align 1
  %683 = add i64 %658, -1178
  %684 = add i64 %658, 69
  %685 = load i64, i64* %6, align 8
  %686 = add i64 %685, -8
  %687 = inttoptr i64 %686 to i64*
  store i64 %684, i64* %687, align 8
  store i64 %686, i64* %6, align 8
  store i64 %683, i64* %3, align 8
  %call2_400aba = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %683, %struct.Memory* %call2_400a75)
  %688 = load i64, i64* %3, align 8
  %689 = load double, double* %42, align 1
  store double %689, double* bitcast (%G_0x602390_type* @G_0x602390 to double*), align 8
  %690 = fmul double %689, %689
  store double %690, double* %42, align 1
  store i64 0, i64* %44, align 1
  %691 = load i64, i64* %RBP.i, align 8
  %692 = add i64 %691, -112
  %693 = add i64 %688, 32
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to double*
  %695 = load double, double* %694, align 8
  %696 = fdiv double %695, %690
  store double %696, double* %48, align 1
  store i64 0, i64* %50, align 1
  store double %696, double* bitcast (%G_0x602390_type* @G_0x602390 to double*), align 8
  %697 = add i64 %691, -88
  %698 = add i64 %688, 50
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i64*
  %700 = load i64, i64* %699, align 8
  store i64 %700, i64* %43, align 1
  store double 0.000000e+00, double* %45, align 1
  store i64 %700, i64* bitcast (%G_0x602398_type* @G_0x602398 to i64*), align 8
  store double %696, double* %48, align 1
  store double 0.000000e+00, double* %51, align 1
  store double %696, double* bitcast (%G_0x6023a0_type* @G_0x6023a0 to double*), align 8
  %701 = load i32, i32* bitcast (%G_0x602650_type* @G_0x602650 to i32*), align 8
  %702 = add i32 %701, 1
  %703 = zext i32 %702 to i64
  store i64 %703, i64* %RAX.i761, align 8
  %704 = icmp eq i32 %701, -1
  %705 = icmp eq i32 %702, 0
  %706 = or i1 %704, %705
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %14, align 1
  %708 = and i32 %702, 255
  %709 = tail call i32 @llvm.ctpop.i32(i32 %708)
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  %712 = xor i8 %711, 1
  store i8 %712, i8* %21, align 1
  %713 = xor i32 %701, %702
  %714 = lshr i32 %713, 4
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  store i8 %716, i8* %26, align 1
  %717 = zext i1 %705 to i8
  store i8 %717, i8* %29, align 1
  %718 = lshr i32 %702, 31
  %719 = trunc i32 %718 to i8
  store i8 %719, i8* %32, align 1
  %720 = lshr i32 %701, 31
  %721 = xor i32 %718, %720
  %722 = add nuw nsw i32 %721, %718
  %723 = icmp eq i32 %722, 2
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %38, align 1
  store i32 %702, i32* bitcast (%G_0x602650_type* @G_0x602650 to i32*), align 8
  %725 = add i64 %688, -468
  store i64 %725, i64* %3, align 8
  br label %block_.L_4008eb

block_.L_400b22:                                  ; preds = %block_.L_4008eb
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RDI.i685, align 8
  store i64 ptrtoint (%G__0x40174f_type* @G__0x40174f to i64), i64* %RSI.i333, align 8
  store i64 ptrtoint (%G__0x401767_type* @G__0x401767 to i64), i64* %RDX.i743, align 8
  %726 = load i64, i64* bitcast (%G_0x602350_type* @G_0x602350 to i64*), align 8
  store i64 %726, i64* %43, align 1
  store double 0.000000e+00, double* %45, align 1
  %727 = load i64, i64* bitcast (%G_0x602358_type* @G_0x602358 to i64*), align 8
  store i64 %727, i64* %49, align 1
  store double 0.000000e+00, double* %51, align 1
  store i8 2, i8* %AL.i683, align 1
  %728 = add i64 %472, -1314
  %729 = add i64 %472, 55
  %730 = load i64, i64* %6, align 8
  %731 = add i64 %730, -8
  %732 = inttoptr i64 %731 to i64*
  store i64 %729, i64* %732, align 8
  store i64 %731, i64* %6, align 8
  store i64 %728, i64* %3, align 8
  %733 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %MEMORY.2)
  %734 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80), i64* %RDX.i743, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80), i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80), i64 80)) to i8), i8* %14, align 1
  %735 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80) to i32), i32 255))
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  %738 = xor i8 %737, 1
  store i8 %738, i8* %21, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80), i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80)), i64 4) to i8), i8 1), i8* %26, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80), i64 0) to i8), i8* %29, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80), i64 63) to i8), i8* %32, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80), i64 63), i64 lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 80), i64 63)), i64 2) to i8), i8* %38, align 1
  store i64 ptrtoint (%G__0x40174f_type* @G__0x40174f to i64), i64* %RSI.i333, align 8
  %739 = load i64, i64* bitcast (%G_0x602360_type* @G_0x602360 to i64*), align 8
  store i64 %739, i64* %43, align 1
  store double 0.000000e+00, double* %45, align 1
  %740 = load i64, i64* bitcast (%G_0x602368_type* @G_0x602368 to i64*), align 8
  store i64 %740, i64* %49, align 1
  store double 0.000000e+00, double* %51, align 1
  %741 = load i64, i64* %RBP.i, align 8
  %742 = add i64 %741, -128
  %743 = add i64 %734, 56
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i64*
  store i64 ptrtoint (%G__0x401774_type* @G__0x401774 to i64), i64* %744, align 8
  %745 = load i64, i64* %RDX.i743, align 8
  %746 = load i64, i64* %3, align 8
  store i64 %745, i64* %RDI.i685, align 8
  %747 = load i64, i64* %RBP.i, align 8
  %748 = add i64 %747, -128
  %749 = add i64 %746, 7
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i64*
  %751 = load i64, i64* %750, align 8
  store i64 %751, i64* %RDX.i743, align 8
  %752 = add i64 %747, -132
  %753 = load i32, i32* %EAX.i756, align 4
  %754 = add i64 %746, 13
  store i64 %754, i64* %3, align 8
  %755 = inttoptr i64 %752 to i32*
  store i32 %753, i32* %755, align 4
  %756 = load i64, i64* %3, align 8
  store i8 2, i8* %AL.i683, align 1
  %757 = add i64 %756, -1438
  %758 = add i64 %756, 7
  %759 = load i64, i64* %6, align 8
  %760 = add i64 %759, -8
  %761 = inttoptr i64 %760 to i64*
  store i64 %758, i64* %761, align 8
  store i64 %760, i64* %6, align 8
  store i64 %757, i64* %3, align 8
  %762 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %733)
  %763 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64* %RDX.i743, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64 160)) to i8), i8* %14, align 1
  %764 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160) to i32), i32 255))
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  store i8 %767, i8* %21, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160)), i64 4) to i8), i8 1), i8* %26, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64 0) to i8), i8* %29, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64 63) to i8), i8* %32, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64 63), i64 lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64 63)), i64 2) to i8), i8* %38, align 1
  store i64 ptrtoint (%G__0x401781_type* @G__0x401781 to i64), i64* %RSI.i333, align 8
  %768 = load i64, i64* bitcast (%G_0x602378_type* @G_0x602378 to i64*), align 8
  store i64 %768, i64* %43, align 1
  store double 0.000000e+00, double* %45, align 1
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 160), i64* %RDI.i685, align 8
  %769 = load i64, i64* %RBP.i, align 8
  %770 = add i64 %769, -136
  %771 = load i32, i32* %EAX.i756, align 4
  %772 = add i64 %763, 45
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %770 to i32*
  store i32 %771, i32* %773, align 4
  %774 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i683, align 1
  %775 = add i64 %774, -1490
  %776 = add i64 %774, 7
  %777 = load i64, i64* %6, align 8
  %778 = add i64 %777, -8
  %779 = inttoptr i64 %778 to i64*
  store i64 %776, i64* %779, align 8
  store i64 %778, i64* %6, align 8
  store i64 %775, i64* %3, align 8
  %780 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %762)
  %781 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64* %RDX.i743, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64 240)) to i8), i8* %14, align 1
  %782 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240) to i32), i32 255))
  %783 = trunc i32 %782 to i8
  %784 = and i8 %783, 1
  %785 = xor i8 %784, 1
  store i8 %785, i8* %21, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240)), i64 4) to i8), i8 1), i8* %26, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64 0) to i8), i8* %29, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64 63) to i8), i8* %32, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64 63), i64 lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64 63)), i64 2) to i8), i8* %38, align 1
  store i64 ptrtoint (%G__0x4017b1_type* @G__0x4017b1 to i64), i64* %RSI.i333, align 8
  %786 = load i64, i64* bitcast (%G_0x602390_type* @G_0x602390 to i64*), align 8
  store i64 %786, i64* %43, align 1
  store double 0.000000e+00, double* %45, align 1
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 240), i64* %RDI.i685, align 8
  %787 = load i64, i64* %RBP.i, align 8
  %788 = add i64 %787, -140
  %789 = load i32, i32* %EAX.i756, align 4
  %790 = add i64 %781, 45
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %788 to i32*
  store i32 %789, i32* %791, align 4
  %792 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i683, align 1
  %793 = add i64 %792, -1542
  %794 = add i64 %792, 7
  %795 = load i64, i64* %6, align 8
  %796 = add i64 %795, -8
  %797 = inttoptr i64 %796 to i64*
  store i64 %794, i64* %797, align 8
  store i64 %796, i64* %6, align 8
  store i64 %793, i64* %3, align 8
  %798 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %780)
  %799 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64* %RDX.i743, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64 320)) to i8), i8* %14, align 1
  %800 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320) to i32), i32 255))
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  %803 = xor i8 %802, 1
  store i8 %803, i8* %21, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320)), i64 4) to i8), i8 1), i8* %26, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64 0) to i8), i8* %29, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64 63) to i8), i8* %32, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64 63), i64 lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64 63)), i64 2) to i8), i8* %38, align 1
  store i64 ptrtoint (%G__0x4017e1_type* @G__0x4017e1 to i64), i64* %RSI.i333, align 8
  %804 = load i64, i64* bitcast (%G_0x602380_type* @G_0x602380 to i64*), align 8
  store i64 %804, i64* %43, align 1
  store double 0.000000e+00, double* %45, align 1
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 320), i64* %RDI.i685, align 8
  %805 = load i64, i64* %RBP.i, align 8
  %806 = add i64 %805, -144
  %807 = load i32, i32* %EAX.i756, align 4
  %808 = add i64 %799, 45
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %806 to i32*
  store i32 %807, i32* %809, align 4
  %810 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i683, align 1
  %811 = add i64 %810, -1594
  %812 = add i64 %810, 7
  %813 = load i64, i64* %6, align 8
  %814 = add i64 %813, -8
  %815 = inttoptr i64 %814 to i64*
  store i64 %812, i64* %815, align 8
  store i64 %814, i64* %6, align 8
  store i64 %811, i64* %3, align 8
  %816 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %798)
  %817 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64* %RDX.i743, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64 400)) to i8), i8* %14, align 1
  %818 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400) to i32), i32 255))
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = xor i8 %820, 1
  store i8 %821, i8* %21, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400)), i64 4) to i8), i8 1), i8* %26, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64 0) to i8), i8* %29, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64 63) to i8), i8* %32, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64 63), i64 lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64 63)), i64 2) to i8), i8* %38, align 1
  store i64 ptrtoint (%G__0x4017b1_type* @G__0x4017b1 to i64), i64* %RSI.i333, align 8
  %822 = load i64, i64* bitcast (%G_0x602398_type* @G_0x602398 to i64*), align 8
  store i64 %822, i64* %43, align 1
  store double 0.000000e+00, double* %45, align 1
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 400), i64* %RDI.i685, align 8
  %823 = load i64, i64* %RBP.i, align 8
  %824 = add i64 %823, -148
  %825 = load i32, i32* %EAX.i756, align 4
  %826 = add i64 %817, 45
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %824 to i32*
  store i32 %825, i32* %827, align 4
  %828 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i683, align 1
  %829 = add i64 %828, -1646
  %830 = add i64 %828, 7
  %831 = load i64, i64* %6, align 8
  %832 = add i64 %831, -8
  %833 = inttoptr i64 %832 to i64*
  store i64 %830, i64* %833, align 8
  store i64 %832, i64* %6, align 8
  store i64 %829, i64* %3, align 8
  %834 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %816)
  %835 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64* %RDX.i743, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64 480)) to i8), i8* %14, align 1
  %836 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480) to i32), i32 255))
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  %839 = xor i8 %838, 1
  store i8 %839, i8* %21, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480)), i64 4) to i8), i8 1), i8* %26, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64 0) to i8), i8* %29, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64 63) to i8), i8* %32, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64 63), i64 lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64 63)), i64 2) to i8), i8* %38, align 1
  store i64 ptrtoint (%G__0x401811_type* @G__0x401811 to i64), i64* %RSI.i333, align 8
  %840 = load i64, i64* bitcast (%G_0x602388_type* @G_0x602388 to i64*), align 8
  store i64 %840, i64* %43, align 1
  store double 0.000000e+00, double* %45, align 1
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 480), i64* %RDI.i685, align 8
  %841 = load i64, i64* %RBP.i, align 8
  %842 = add i64 %841, -152
  %843 = load i32, i32* %EAX.i756, align 4
  %844 = add i64 %835, 45
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %842 to i32*
  store i32 %843, i32* %845, align 4
  %846 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i683, align 1
  %847 = add i64 %846, -1698
  %848 = add i64 %846, 7
  %849 = load i64, i64* %6, align 8
  %850 = add i64 %849, -8
  %851 = inttoptr i64 %850 to i64*
  store i64 %848, i64* %851, align 8
  store i64 %850, i64* %6, align 8
  store i64 %847, i64* %3, align 8
  %852 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %834)
  %853 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64* %RDX.i743, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64 560)) to i8), i8* %14, align 1
  %854 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560) to i32), i32 255))
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  %857 = xor i8 %856, 1
  store i8 %857, i8* %21, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560)), i64 4) to i8), i8 1), i8* %26, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64 0) to i8), i8* %29, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64 63) to i8), i8* %32, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64 63), i64 lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64 63)), i64 2) to i8), i8* %38, align 1
  store i64 ptrtoint (%G__0x4017b1_type* @G__0x4017b1 to i64), i64* %RSI.i333, align 8
  %858 = load i64, i64* bitcast (%G_0x6023a0_type* @G_0x6023a0 to i64*), align 8
  store i64 %858, i64* %43, align 1
  store double 0.000000e+00, double* %45, align 1
  store i64 add (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 560), i64* %RDI.i685, align 8
  %859 = load i64, i64* %RBP.i, align 8
  %860 = add i64 %859, -156
  %861 = load i32, i32* %EAX.i756, align 4
  %862 = add i64 %853, 45
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %860 to i32*
  store i32 %861, i32* %863, align 4
  %864 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i683, align 1
  %865 = add i64 %864, -1750
  %866 = add i64 %864, 7
  %867 = load i64, i64* %6, align 8
  %868 = add i64 %867, -8
  %869 = inttoptr i64 %868 to i64*
  store i64 %866, i64* %869, align 8
  store i64 %868, i64* %6, align 8
  store i64 %865, i64* %3, align 8
  %870 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %852)
  %871 = load i64, i64* %RBP.i, align 8
  %872 = add i64 %871, -32
  %873 = load i64, i64* %3, align 8
  %874 = add i64 %873, 7
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %872 to i32*
  store i32 0, i32* %875, align 4
  %876 = load i64, i64* %RBP.i, align 8
  %877 = add i64 %876, -20
  %878 = load i64, i64* %3, align 8
  %879 = add i64 %878, 7
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %877 to i32*
  store i32 0, i32* %880, align 4
  %881 = load i64, i64* %RBP.i, align 8
  %882 = add i64 %881, -160
  %883 = load i32, i32* %EAX.i756, align 4
  %884 = load i64, i64* %3, align 8
  %885 = add i64 %884, 6
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %882 to i32*
  store i32 %883, i32* %886, align 4
  %R8.i143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400cf1

block_.L_400cf1:                                  ; preds = %block_.L_400ea7, %block_.L_400b22
  %889 = phi i64 [ %.pre4, %block_.L_400b22 ], [ %1462, %block_.L_400ea7 ]
  %MEMORY.4 = phi %struct.Memory* [ %870, %block_.L_400b22 ], [ %MEMORY.7, %block_.L_400ea7 ]
  %890 = load i64, i64* %RBP.i, align 8
  %891 = add i64 %890, -20
  %892 = add i64 %889, 4
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %891 to i32*
  %894 = load i32, i32* %893, align 4
  %895 = add i32 %894, -8
  %896 = icmp ult i32 %894, 8
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %14, align 1
  %898 = and i32 %895, 255
  %899 = tail call i32 @llvm.ctpop.i32(i32 %898)
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  %902 = xor i8 %901, 1
  store i8 %902, i8* %21, align 1
  %903 = xor i32 %894, %895
  %904 = lshr i32 %903, 4
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  store i8 %906, i8* %26, align 1
  %907 = icmp eq i32 %895, 0
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %29, align 1
  %909 = lshr i32 %895, 31
  %910 = trunc i32 %909 to i8
  store i8 %910, i8* %32, align 1
  %911 = lshr i32 %894, 31
  %912 = xor i32 %909, %911
  %913 = add nuw nsw i32 %912, %911
  %914 = icmp eq i32 %913, 2
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %38, align 1
  %916 = icmp ne i8 %910, 0
  %917 = xor i1 %916, %914
  %.v12 = select i1 %917, i64 10, i64 457
  %918 = add i64 %889, %.v12
  store i64 %918, i64* %3, align 8
  br i1 %917, label %block_400cfb, label %block_.L_400eba

block_400cfb:                                     ; preds = %block_.L_400cf1
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RAX.i761, align 8
  %919 = add i64 %918, 14
  store i64 %919, i64* %3, align 8
  %920 = load i32, i32* %893, align 4
  %921 = sext i32 %920 to i64
  %922 = mul nsw i64 %921, 80
  store i64 %922, i64* %RCX.i759, align 8
  %923 = lshr i64 %922, 63
  %924 = add i64 %922, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
  store i64 %924, i64* %RAX.i761, align 8
  %925 = icmp ult i64 %924, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
  %926 = icmp ult i64 %924, %922
  %927 = or i1 %925, %926
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %14, align 1
  %929 = trunc i64 %924 to i32
  %930 = and i32 %929, 248
  %931 = tail call i32 @llvm.ctpop.i32(i32 %930)
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  %934 = xor i8 %933, 1
  store i8 %934, i8* %21, align 1
  %935 = xor i64 %922, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
  %936 = xor i64 %935, %924
  %937 = lshr i64 %936, 4
  %938 = trunc i64 %937 to i8
  %939 = and i8 %938, 1
  store i8 %939, i8* %26, align 1
  %940 = icmp eq i64 %924, 0
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %29, align 1
  %942 = lshr i64 %924, 63
  %943 = trunc i64 %942 to i8
  store i8 %943, i8* %32, align 1
  %944 = xor i64 %942, lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)
  %945 = xor i64 %942, %923
  %946 = add nuw nsw i64 %944, %945
  %947 = icmp eq i64 %946, 2
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %38, align 1
  %949 = add i64 %918, 25
  store i64 %949, i64* %3, align 8
  %950 = load i32, i32* %893, align 4
  %951 = sext i32 %950 to i64
  store i64 %951, i64* %RCX.i759, align 8
  %952 = shl nsw i64 %951, 3
  %953 = add i64 %952, ptrtoint (%G_0x602100___rcx_8__type* @G_0x602100___rcx_8_ to i64)
  %954 = add i64 %918, 33
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to i64*
  %956 = load i64, i64* %955, align 8
  store i64 %956, i64* %RSI.i333, align 8
  store i64 %924, i64* %RDI.i685, align 8
  %957 = add i64 %918, -1851
  %958 = add i64 %918, 41
  %959 = load i64, i64* %6, align 8
  %960 = add i64 %959, -8
  %961 = inttoptr i64 %960 to i64*
  store i64 %958, i64* %961, align 8
  store i64 %960, i64* %6, align 8
  store i64 %957, i64* %3, align 8
  %962 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %MEMORY.4)
  %963 = load i32, i32* %EAX.i756, align 4
  %964 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %965 = and i32 %963, 255
  %966 = tail call i32 @llvm.ctpop.i32(i32 %965)
  %967 = trunc i32 %966 to i8
  %968 = and i8 %967, 1
  %969 = xor i8 %968, 1
  store i8 %969, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %970 = icmp eq i32 %963, 0
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %29, align 1
  %972 = lshr i32 %963, 31
  %973 = trunc i32 %972 to i8
  store i8 %973, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v13 = select i1 %970, i64 387, i64 9
  %974 = add i64 %964, %.v13
  store i64 %974, i64* %3, align 8
  br i1 %970, label %block_.L_400ea7, label %block_400d2d

block_400d2d:                                     ; preds = %block_400cfb
  store i64 ptrtoint (%G__0x401841_type* @G__0x401841 to i64), i64* %RDI.i685, align 8
  %975 = load i64, i64* %RBP.i, align 8
  %976 = add i64 %975, -20
  %977 = add i64 %974, 13
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i32*
  %979 = load i32, i32* %978, align 4
  %980 = add i32 %979, 1
  %981 = zext i32 %980 to i64
  store i64 %981, i64* %RAX.i761, align 8
  %982 = icmp eq i32 %979, -1
  %983 = icmp eq i32 %980, 0
  %984 = or i1 %982, %983
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %14, align 1
  %986 = and i32 %980, 255
  %987 = tail call i32 @llvm.ctpop.i32(i32 %986)
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  %990 = xor i8 %989, 1
  store i8 %990, i8* %21, align 1
  %991 = xor i32 %979, %980
  %992 = lshr i32 %991, 4
  %993 = trunc i32 %992 to i8
  %994 = and i8 %993, 1
  store i8 %994, i8* %26, align 1
  %995 = zext i1 %983 to i8
  store i8 %995, i8* %29, align 1
  %996 = lshr i32 %980, 31
  %997 = trunc i32 %996 to i8
  store i8 %997, i8* %32, align 1
  %998 = lshr i32 %979, 31
  %999 = xor i32 %996, %998
  %1000 = add nuw nsw i32 %999, %996
  %1001 = icmp eq i32 %1000, 2
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %38, align 1
  store i64 %981, i64* %RSI.i333, align 8
  store i8 0, i8* %AL.i683, align 1
  %1003 = add i64 %974, -1933
  %1004 = add i64 %974, 25
  %1005 = load i64, i64* %6, align 8
  %1006 = add i64 %1005, -8
  %1007 = inttoptr i64 %1006 to i64*
  store i64 %1004, i64* %1007, align 8
  store i64 %1006, i64* %6, align 8
  store i64 %1003, i64* %3, align 8
  %1008 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %962)
  %1009 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x401862_type* @G__0x401862 to i64), i64* %RDI.i685, align 8
  %1010 = load i64, i64* %RBP.i, align 8
  %1011 = add i64 %1010, -20
  %1012 = add i64 %1009, 14
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i32*
  %1014 = load i32, i32* %1013, align 4
  %1015 = sext i32 %1014 to i64
  store i64 %1015, i64* %RCX.i759, align 8
  %1016 = shl nsw i64 %1015, 3
  %1017 = add i64 %1016, ptrtoint (%G_0x602100___rcx_8__type* @G_0x602100___rcx_8_ to i64)
  %1018 = add i64 %1009, 22
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i64*
  %1020 = load i64, i64* %1019, align 8
  store i64 %1020, i64* %RSI.i333, align 8
  %1021 = add i64 %1010, -164
  %1022 = load i32, i32* %EAX.i756, align 4
  %1023 = add i64 %1009, 28
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1021 to i32*
  store i32 %1022, i32* %1024, align 4
  %1025 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i683, align 1
  %1026 = add i64 %1025, -1986
  %1027 = add i64 %1025, 7
  %1028 = load i64, i64* %6, align 8
  %1029 = add i64 %1028, -8
  %1030 = inttoptr i64 %1029 to i64*
  store i64 %1027, i64* %1030, align 8
  store i64 %1029, i64* %6, align 8
  store i64 %1026, i64* %3, align 8
  %1031 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1008)
  %1032 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x401873_type* @G__0x401873 to i64), i64* %RDI.i685, align 8
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RCX.i759, align 8
  %1033 = load i64, i64* %RBP.i, align 8
  %1034 = add i64 %1033, -20
  %1035 = add i64 %1032, 24
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1034 to i32*
  %1037 = load i32, i32* %1036, align 4
  %1038 = sext i32 %1037 to i64
  %1039 = mul nsw i64 %1038, 80
  %1040 = lshr i64 %1039, 63
  %1041 = add i64 %1039, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
  store i64 %1041, i64* %RCX.i759, align 8
  %1042 = icmp ult i64 %1041, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
  %1043 = icmp ult i64 %1041, %1039
  %1044 = or i1 %1042, %1043
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %14, align 1
  %1046 = trunc i64 %1041 to i32
  %1047 = and i32 %1046, 248
  %1048 = tail call i32 @llvm.ctpop.i32(i32 %1047)
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = xor i8 %1050, 1
  store i8 %1051, i8* %21, align 1
  %1052 = xor i64 %1039, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
  %1053 = xor i64 %1052, %1041
  %1054 = lshr i64 %1053, 4
  %1055 = trunc i64 %1054 to i8
  %1056 = and i8 %1055, 1
  store i8 %1056, i8* %26, align 1
  %1057 = icmp eq i64 %1041, 0
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %29, align 1
  %1059 = lshr i64 %1041, 63
  %1060 = trunc i64 %1059 to i8
  store i8 %1060, i8* %32, align 1
  %1061 = xor i64 %1059, lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)
  %1062 = xor i64 %1059, %1040
  %1063 = add nuw nsw i64 %1061, %1062
  %1064 = icmp eq i64 %1063, 2
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %38, align 1
  store i64 %1041, i64* %RSI.i333, align 8
  %1066 = add i64 %1033, -168
  %1067 = load i32, i32* %EAX.i756, align 4
  %1068 = add i64 %1032, 40
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1066 to i32*
  store i32 %1067, i32* %1069, align 4
  %1070 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i683, align 1
  %1071 = add i64 %1070, -2033
  %1072 = add i64 %1070, 7
  %1073 = load i64, i64* %6, align 8
  %1074 = add i64 %1073, -8
  %1075 = inttoptr i64 %1074 to i64*
  store i64 %1072, i64* %1075, align 8
  store i64 %1074, i64* %6, align 8
  store i64 %1071, i64* %3, align 8
  %1076 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1031)
  %1077 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x401884_type* @G__0x401884 to i64), i64* %RDI.i685, align 8
  %1078 = load i64, i64* %RBP.i, align 8
  %1079 = add i64 %1078, -172
  %1080 = load i32, i32* %EAX.i756, align 4
  %1081 = add i64 %1077, 16
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1079 to i32*
  store i32 %1080, i32* %1082, align 4
  %1083 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i683, align 1
  %1084 = add i64 %1083, -2056
  %1085 = add i64 %1083, 7
  %1086 = load i64, i64* %6, align 8
  %1087 = add i64 %1086, -8
  %1088 = inttoptr i64 %1087 to i64*
  store i64 %1085, i64* %1088, align 8
  store i64 %1087, i64* %6, align 8
  store i64 %1084, i64* %3, align 8
  %1089 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1076)
  %1090 = load i64, i64* %RBP.i, align 8
  %1091 = add i64 %1090, -20
  %1092 = load i64, i64* %3, align 8
  %1093 = add i64 %1092, 4
  store i64 %1093, i64* %3, align 8
  %1094 = inttoptr i64 %1091 to i32*
  %1095 = load i32, i32* %1094, align 4
  %1096 = sext i32 %1095 to i64
  store i64 %1096, i64* %RCX.i759, align 8
  %1097 = shl nsw i64 %1096, 3
  %1098 = add i64 %1097, ptrtoint (%G_0x602100___rcx_8__type* @G_0x602100___rcx_8_ to i64)
  %1099 = add i64 %1092, 12
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i64*
  %1101 = load i64, i64* %1100, align 8
  store i64 %1101, i64* %RDI.i685, align 8
  %1102 = add i64 %1090, -176
  %1103 = load i32, i32* %EAX.i756, align 4
  %1104 = add i64 %1092, 18
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1102 to i32*
  store i32 %1103, i32* %1105, align 4
  %1106 = load i64, i64* %3, align 8
  %1107 = add i64 %1106, -2097
  %1108 = add i64 %1106, 5
  %1109 = load i64, i64* %6, align 8
  %1110 = add i64 %1109, -8
  %1111 = inttoptr i64 %1110 to i64*
  store i64 %1108, i64* %1111, align 8
  store i64 %1110, i64* %6, align 8
  store i64 %1107, i64* %3, align 8
  %1112 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %1089)
  %1113 = load i32, i32* %EAX.i756, align 4
  %1114 = zext i32 %1113 to i64
  %1115 = load i64, i64* %3, align 8
  store i64 %1114, i64* %RDX.i743, align 8
  %1116 = load i64, i64* %RBP.i, align 8
  %1117 = add i64 %1116, -28
  %1118 = add i64 %1115, 5
  store i64 %1118, i64* %3, align 8
  %1119 = inttoptr i64 %1117 to i32*
  store i32 %1113, i32* %1119, align 4
  %1120 = load i64, i64* %RBP.i, align 8
  %1121 = add i64 %1120, -24
  %1122 = load i64, i64* %3, align 8
  %1123 = add i64 %1122, 7
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1121 to i32*
  store i32 0, i32* %1124, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400dd2

block_.L_400dd2:                                  ; preds = %block_.L_400e7d, %block_400d2d
  %1125 = phi i64 [ %.pre5, %block_400d2d ], [ %1418, %block_.L_400e7d ]
  %MEMORY.5 = phi %struct.Memory* [ %1112, %block_400d2d ], [ %1259, %block_.L_400e7d ]
  %1126 = load i64, i64* %RBP.i, align 8
  %1127 = add i64 %1126, -24
  %1128 = add i64 %1125, 3
  store i64 %1128, i64* %3, align 8
  %1129 = inttoptr i64 %1127 to i32*
  %1130 = load i32, i32* %1129, align 4
  %1131 = zext i32 %1130 to i64
  store i64 %1131, i64* %RAX.i761, align 8
  %1132 = add i64 %1126, -28
  %1133 = add i64 %1125, 6
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1132 to i32*
  %1135 = load i32, i32* %1134, align 4
  %1136 = sub i32 %1130, %1135
  %1137 = icmp ult i32 %1130, %1135
  %1138 = zext i1 %1137 to i8
  store i8 %1138, i8* %14, align 1
  %1139 = and i32 %1136, 255
  %1140 = tail call i32 @llvm.ctpop.i32(i32 %1139)
  %1141 = trunc i32 %1140 to i8
  %1142 = and i8 %1141, 1
  %1143 = xor i8 %1142, 1
  store i8 %1143, i8* %21, align 1
  %1144 = xor i32 %1135, %1130
  %1145 = xor i32 %1144, %1136
  %1146 = lshr i32 %1145, 4
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  store i8 %1148, i8* %26, align 1
  %1149 = icmp eq i32 %1136, 0
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %29, align 1
  %1151 = lshr i32 %1136, 31
  %1152 = trunc i32 %1151 to i8
  store i8 %1152, i8* %32, align 1
  %1153 = lshr i32 %1130, 31
  %1154 = lshr i32 %1135, 31
  %1155 = xor i32 %1154, %1153
  %1156 = xor i32 %1151, %1153
  %1157 = add nuw nsw i32 %1156, %1155
  %1158 = icmp eq i32 %1157, 2
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %38, align 1
  %1160 = icmp ne i8 %1152, 0
  %1161 = xor i1 %1160, %1158
  %.v14 = select i1 %1161, i64 12, i64 190
  %1162 = add i64 %1125, %.v14
  %1163 = add i64 %1162, 10
  store i64 %1163, i64* %3, align 8
  br i1 %1161, label %block_400dde, label %block_.L_400e90

block_400dde:                                     ; preds = %block_.L_400dd2
  store i64 ptrtoint (%G__0x401891_type* @G__0x401891 to i64), i64* %RDI.i685, align 8
  store i64 94, i64* %RAX.i761, align 8
  store i64 32, i64* %RCX.i759, align 8
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RDX.i743, align 8
  %1164 = add i64 %1126, -20
  %1165 = add i64 %1162, 34
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1164 to i32*
  %1167 = load i32, i32* %1166, align 4
  %1168 = sext i32 %1167 to i64
  store i64 %1168, i64* %RSI.i333, align 8
  %1169 = shl nsw i64 %1168, 3
  %1170 = add i64 %1169, ptrtoint (%G_0x602100___rsi_8__type* @G_0x602100___rsi_8_ to i64)
  %1171 = add i64 %1162, 42
  store i64 %1171, i64* %3, align 8
  %1172 = inttoptr i64 %1170 to i64*
  %1173 = load i64, i64* %1172, align 8
  store i64 %1173, i64* %RSI.i333, align 8
  %1174 = add i64 %1162, 46
  store i64 %1174, i64* %3, align 8
  %1175 = load i32, i32* %1129, align 4
  %1176 = sext i32 %1175 to i64
  store i64 %1176, i64* %R8.i143, align 8
  %1177 = add i64 %1176, %1173
  %1178 = add i64 %1162, 51
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1177 to i8*
  %1180 = load i8, i8* %1179, align 1
  %1181 = sext i8 %1180 to i64
  %1182 = and i64 %1181, 4294967295
  store i64 %1182, i64* %887, align 8
  %1183 = add i64 %1162, 55
  store i64 %1183, i64* %3, align 8
  %1184 = load i32, i32* %1166, align 4
  %1185 = sext i32 %1184 to i64
  %1186 = mul nsw i64 %1185, 80
  store i64 %1186, i64* %RSI.i333, align 8
  %1187 = lshr i64 %1186, 63
  %1188 = add i64 %1186, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
  store i64 %1188, i64* %RDX.i743, align 8
  %1189 = icmp ult i64 %1188, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
  %1190 = icmp ult i64 %1188, %1186
  %1191 = or i1 %1189, %1190
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %14, align 1
  %1193 = trunc i64 %1188 to i32
  %1194 = and i32 %1193, 248
  %1195 = tail call i32 @llvm.ctpop.i32(i32 %1194)
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  %1198 = xor i8 %1197, 1
  store i8 %1198, i8* %21, align 1
  %1199 = xor i64 %1186, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
  %1200 = xor i64 %1199, %1188
  %1201 = lshr i64 %1200, 4
  %1202 = trunc i64 %1201 to i8
  %1203 = and i8 %1202, 1
  store i8 %1203, i8* %26, align 1
  %1204 = icmp eq i64 %1188, 0
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %29, align 1
  %1206 = lshr i64 %1188, 63
  %1207 = trunc i64 %1206 to i8
  store i8 %1207, i8* %32, align 1
  %1208 = xor i64 %1206, lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)
  %1209 = xor i64 %1206, %1187
  %1210 = add nuw nsw i64 %1208, %1209
  %1211 = icmp eq i64 %1210, 2
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %38, align 1
  %1213 = add i64 %1162, 66
  store i64 %1213, i64* %3, align 8
  %1214 = load i32, i32* %1129, align 4
  %1215 = sext i32 %1214 to i64
  store i64 %1215, i64* %RSI.i333, align 8
  %1216 = add i64 %1215, %1188
  %1217 = add i64 %1162, 71
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i8*
  %1219 = load i8, i8* %1218, align 1
  %1220 = sext i8 %1219 to i64
  %1221 = and i64 %1220, 4294967295
  store i64 %1221, i64* %888, align 8
  %1222 = sext i8 %1180 to i32
  %1223 = sext i8 %1219 to i32
  %1224 = sub nsw i32 %1222, %1223
  %1225 = icmp ult i8 %1180, %1219
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %14, align 1
  %1227 = and i32 %1224, 255
  %1228 = tail call i32 @llvm.ctpop.i32(i32 %1227)
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = xor i8 %1230, 1
  store i8 %1231, i8* %21, align 1
  %1232 = xor i8 %1219, %1180
  %1233 = zext i8 %1232 to i32
  %1234 = xor i32 %1233, %1224
  %1235 = lshr i32 %1234, 4
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  store i8 %1237, i8* %26, align 1
  %1238 = icmp eq i32 %1224, 0
  %1239 = zext i1 %1238 to i8
  store i8 %1239, i8* %29, align 1
  %1240 = lshr i32 %1224, 31
  %1241 = trunc i32 %1240 to i8
  store i8 %1241, i8* %32, align 1
  %1242 = lshr i32 %1222, 31
  %1243 = lshr i32 %1223, 31
  %1244 = xor i32 %1243, %1242
  %1245 = xor i32 %1240, %1242
  %1246 = add nuw nsw i32 %1245, %1244
  %1247 = icmp eq i32 %1246, 2
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %38, align 1
  %1249 = load i32, i32* %ECX.i757, align 4
  %1250 = zext i32 %1249 to i64
  %1251 = load i64, i64* %RAX.i761, align 8
  %1252 = select i1 %1238, i64 %1250, i64 %1251
  %1253 = and i64 %1252, 4294967295
  store i64 %1253, i64* %RAX.i761, align 8
  store i64 %1253, i64* %RSI.i333, align 8
  store i8 0, i8* %AL.i683, align 1
  %1254 = add i64 %1162, -2110
  %1255 = add i64 %1162, 86
  %1256 = load i64, i64* %6, align 8
  %1257 = add i64 %1256, -8
  %1258 = inttoptr i64 %1257 to i64*
  store i64 %1255, i64* %1258, align 8
  store i64 %1257, i64* %6, align 8
  store i64 %1254, i64* %3, align 8
  %1259 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.5)
  %1260 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RDX.i743, align 8
  %1261 = load i64, i64* %RBP.i, align 8
  %1262 = add i64 %1261, -20
  %1263 = add i64 %1260, 14
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1262 to i32*
  %1265 = load i32, i32* %1264, align 4
  %1266 = sext i32 %1265 to i64
  store i64 %1266, i64* %RDI.i685, align 8
  %1267 = shl nsw i64 %1266, 3
  %1268 = add i64 %1267, ptrtoint (%G_0x602100___rdi_8__type* @G_0x602100___rdi_8_ to i64)
  %1269 = add i64 %1260, 22
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1268 to i64*
  %1271 = load i64, i64* %1270, align 8
  store i64 %1271, i64* %RDI.i685, align 8
  %1272 = add i64 %1261, -24
  %1273 = add i64 %1260, 26
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1272 to i32*
  %1275 = load i32, i32* %1274, align 4
  %1276 = sext i32 %1275 to i64
  store i64 %1276, i64* %R8.i143, align 8
  %1277 = add i64 %1276, %1271
  %1278 = add i64 %1260, 31
  store i64 %1278, i64* %3, align 8
  %1279 = inttoptr i64 %1277 to i8*
  %1280 = load i8, i8* %1279, align 1
  %1281 = sext i8 %1280 to i64
  %1282 = and i64 %1281, 4294967295
  store i64 %1282, i64* %RCX.i759, align 8
  %1283 = add i64 %1260, 35
  store i64 %1283, i64* %3, align 8
  %1284 = load i32, i32* %1264, align 4
  %1285 = sext i32 %1284 to i64
  %1286 = mul nsw i64 %1285, 80
  store i64 %1286, i64* %RDI.i685, align 8
  %1287 = lshr i64 %1286, 63
  %1288 = add i64 %1286, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
  store i64 %1288, i64* %RDX.i743, align 8
  %1289 = icmp ult i64 %1288, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
  %1290 = icmp ult i64 %1288, %1286
  %1291 = or i1 %1289, %1290
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %14, align 1
  %1293 = trunc i64 %1288 to i32
  %1294 = and i32 %1293, 248
  %1295 = tail call i32 @llvm.ctpop.i32(i32 %1294)
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  %1298 = xor i8 %1297, 1
  store i8 %1298, i8* %21, align 1
  %1299 = xor i64 %1286, ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64)
  %1300 = xor i64 %1299, %1288
  %1301 = lshr i64 %1300, 4
  %1302 = trunc i64 %1301 to i8
  %1303 = and i8 %1302, 1
  store i8 %1303, i8* %26, align 1
  %1304 = icmp eq i64 %1288, 0
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %29, align 1
  %1306 = lshr i64 %1288, 63
  %1307 = trunc i64 %1306 to i8
  store i8 %1307, i8* %32, align 1
  %1308 = xor i64 %1306, lshr (i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64 63)
  %1309 = xor i64 %1306, %1287
  %1310 = add nuw nsw i64 %1308, %1309
  %1311 = icmp eq i64 %1310, 2
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %38, align 1
  %1313 = add i64 %1260, 46
  store i64 %1313, i64* %3, align 8
  %1314 = load i32, i32* %1274, align 4
  %1315 = sext i32 %1314 to i64
  store i64 %1315, i64* %RDI.i685, align 8
  %1316 = add i64 %1315, %1288
  %1317 = add i64 %1260, 50
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1316 to i8*
  %1319 = load i8, i8* %1318, align 1
  %1320 = sext i8 %1319 to i64
  %1321 = and i64 %1320, 4294967295
  store i64 %1321, i64* %RSI.i333, align 8
  %1322 = sext i8 %1280 to i32
  %1323 = sext i8 %1319 to i32
  %1324 = sub nsw i32 %1322, %1323
  %1325 = icmp ult i8 %1280, %1319
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %14, align 1
  %1327 = and i32 %1324, 255
  %1328 = tail call i32 @llvm.ctpop.i32(i32 %1327)
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  %1331 = xor i8 %1330, 1
  store i8 %1331, i8* %21, align 1
  %1332 = xor i8 %1319, %1280
  %1333 = zext i8 %1332 to i32
  %1334 = xor i32 %1333, %1324
  %1335 = lshr i32 %1334, 4
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  store i8 %1337, i8* %26, align 1
  %1338 = icmp eq i32 %1324, 0
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %29, align 1
  %1340 = lshr i32 %1324, 31
  %1341 = trunc i32 %1340 to i8
  store i8 %1341, i8* %32, align 1
  %1342 = lshr i32 %1322, 31
  %1343 = lshr i32 %1323, 31
  %1344 = xor i32 %1343, %1342
  %1345 = xor i32 %1340, %1342
  %1346 = add nuw nsw i32 %1345, %1344
  %1347 = icmp eq i32 %1346, 2
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %38, align 1
  %1349 = load i64, i64* %RBP.i, align 8
  %1350 = add i64 %1349, -180
  %1351 = load i32, i32* %EAX.i756, align 4
  %1352 = add i64 %1260, 58
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1350 to i32*
  store i32 %1351, i32* %1353, align 4
  %1354 = load i64, i64* %3, align 8
  %1355 = load i8, i8* %29, align 1
  %1356 = icmp ne i8 %1355, 0
  %.v15 = select i1 %1356, i64 15, i64 6
  %1357 = add i64 %1354, %.v15
  store i64 %1357, i64* %3, align 8
  %cmpBr_400e6e = icmp eq i8 %1355, 1
  br i1 %cmpBr_400e6e, label %block_.L_400e7d, label %block_400e74

block_400e74:                                     ; preds = %block_400dde
  %1358 = load i64, i64* %RBP.i, align 8
  %1359 = add i64 %1358, -32
  %1360 = add i64 %1357, 3
  store i64 %1360, i64* %3, align 8
  %1361 = inttoptr i64 %1359 to i32*
  %1362 = load i32, i32* %1361, align 4
  %1363 = add i32 %1362, 1
  %1364 = zext i32 %1363 to i64
  store i64 %1364, i64* %RAX.i761, align 8
  %1365 = icmp eq i32 %1362, -1
  %1366 = icmp eq i32 %1363, 0
  %1367 = or i1 %1365, %1366
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %14, align 1
  %1369 = and i32 %1363, 255
  %1370 = tail call i32 @llvm.ctpop.i32(i32 %1369)
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  %1373 = xor i8 %1372, 1
  store i8 %1373, i8* %21, align 1
  %1374 = xor i32 %1362, %1363
  %1375 = lshr i32 %1374, 4
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  store i8 %1377, i8* %26, align 1
  %1378 = zext i1 %1366 to i8
  store i8 %1378, i8* %29, align 1
  %1379 = lshr i32 %1363, 31
  %1380 = trunc i32 %1379 to i8
  store i8 %1380, i8* %32, align 1
  %1381 = lshr i32 %1362, 31
  %1382 = xor i32 %1379, %1381
  %1383 = add nuw nsw i32 %1382, %1379
  %1384 = icmp eq i32 %1383, 2
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %38, align 1
  %1386 = add i64 %1357, 9
  store i64 %1386, i64* %3, align 8
  store i32 %1363, i32* %1361, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_400e7d

block_.L_400e7d:                                  ; preds = %block_400e74, %block_400dde
  %1387 = phi i64 [ %.pre6, %block_400e74 ], [ %1357, %block_400dde ]
  %1388 = load i64, i64* %RBP.i, align 8
  %1389 = add i64 %1388, -24
  %1390 = add i64 %1387, 8
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1389 to i32*
  %1392 = load i32, i32* %1391, align 4
  %1393 = add i32 %1392, 1
  %1394 = zext i32 %1393 to i64
  store i64 %1394, i64* %RAX.i761, align 8
  %1395 = icmp eq i32 %1392, -1
  %1396 = icmp eq i32 %1393, 0
  %1397 = or i1 %1395, %1396
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %14, align 1
  %1399 = and i32 %1393, 255
  %1400 = tail call i32 @llvm.ctpop.i32(i32 %1399)
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  %1403 = xor i8 %1402, 1
  store i8 %1403, i8* %21, align 1
  %1404 = xor i32 %1392, %1393
  %1405 = lshr i32 %1404, 4
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  store i8 %1407, i8* %26, align 1
  %1408 = zext i1 %1396 to i8
  store i8 %1408, i8* %29, align 1
  %1409 = lshr i32 %1393, 31
  %1410 = trunc i32 %1409 to i8
  store i8 %1410, i8* %32, align 1
  %1411 = lshr i32 %1392, 31
  %1412 = xor i32 %1409, %1411
  %1413 = add nuw nsw i32 %1412, %1409
  %1414 = icmp eq i32 %1413, 2
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %38, align 1
  %1416 = add i64 %1387, 14
  store i64 %1416, i64* %3, align 8
  store i32 %1393, i32* %1391, align 4
  %1417 = load i64, i64* %3, align 8
  %1418 = add i64 %1417, -185
  store i64 %1418, i64* %3, align 8
  br label %block_.L_400dd2

block_.L_400e90:                                  ; preds = %block_.L_400dd2
  store i64 ptrtoint (%G__0x401696_type* @G__0x401696 to i64), i64* %RDI.i685, align 8
  store i8 0, i8* %AL.i683, align 1
  %1419 = add i64 %1162, -2288
  %1420 = add i64 %1162, 17
  %1421 = load i64, i64* %6, align 8
  %1422 = add i64 %1421, -8
  %1423 = inttoptr i64 %1422 to i64*
  store i64 %1420, i64* %1423, align 8
  store i64 %1422, i64* %6, align 8
  store i64 %1419, i64* %3, align 8
  %1424 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.5)
  %1425 = load i64, i64* %RBP.i, align 8
  %1426 = add i64 %1425, -184
  %1427 = load i32, i32* %EAX.i756, align 4
  %1428 = load i64, i64* %3, align 8
  %1429 = add i64 %1428, 6
  store i64 %1429, i64* %3, align 8
  %1430 = inttoptr i64 %1426 to i32*
  store i32 %1427, i32* %1430, align 4
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_400ea7

block_.L_400ea7:                                  ; preds = %block_.L_400e90, %block_400cfb
  %1431 = phi i64 [ %974, %block_400cfb ], [ %.pre7, %block_.L_400e90 ]
  %MEMORY.7 = phi %struct.Memory* [ %962, %block_400cfb ], [ %1424, %block_.L_400e90 ]
  %1432 = load i64, i64* %RBP.i, align 8
  %1433 = add i64 %1432, -20
  %1434 = add i64 %1431, 8
  store i64 %1434, i64* %3, align 8
  %1435 = inttoptr i64 %1433 to i32*
  %1436 = load i32, i32* %1435, align 4
  %1437 = add i32 %1436, 1
  %1438 = zext i32 %1437 to i64
  store i64 %1438, i64* %RAX.i761, align 8
  %1439 = icmp eq i32 %1436, -1
  %1440 = icmp eq i32 %1437, 0
  %1441 = or i1 %1439, %1440
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %14, align 1
  %1443 = and i32 %1437, 255
  %1444 = tail call i32 @llvm.ctpop.i32(i32 %1443)
  %1445 = trunc i32 %1444 to i8
  %1446 = and i8 %1445, 1
  %1447 = xor i8 %1446, 1
  store i8 %1447, i8* %21, align 1
  %1448 = xor i32 %1436, %1437
  %1449 = lshr i32 %1448, 4
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  store i8 %1451, i8* %26, align 1
  %1452 = zext i1 %1440 to i8
  store i8 %1452, i8* %29, align 1
  %1453 = lshr i32 %1437, 31
  %1454 = trunc i32 %1453 to i8
  store i8 %1454, i8* %32, align 1
  %1455 = lshr i32 %1436, 31
  %1456 = xor i32 %1453, %1455
  %1457 = add nuw nsw i32 %1456, %1453
  %1458 = icmp eq i32 %1457, 2
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %38, align 1
  %1460 = add i64 %1431, 14
  store i64 %1460, i64* %3, align 8
  store i32 %1437, i32* %1435, align 4
  %1461 = load i64, i64* %3, align 8
  %1462 = add i64 %1461, -452
  store i64 %1462, i64* %3, align 8
  br label %block_.L_400cf1

block_.L_400eba:                                  ; preds = %block_.L_400cf1
  %1463 = add i64 %890, -32
  %1464 = add i64 %918, 4
  store i64 %1464, i64* %3, align 8
  %1465 = inttoptr i64 %1463 to i32*
  %1466 = load i32, i32* %1465, align 4
  store i8 0, i8* %14, align 1
  %1467 = and i32 %1466, 255
  %1468 = tail call i32 @llvm.ctpop.i32(i32 %1467)
  %1469 = trunc i32 %1468 to i8
  %1470 = and i8 %1469, 1
  %1471 = xor i8 %1470, 1
  store i8 %1471, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1472 = icmp eq i32 %1466, 0
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %29, align 1
  %1474 = lshr i32 %1466, 31
  %1475 = trunc i32 %1474 to i8
  store i8 %1475, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1476 = icmp ne i8 %1475, 0
  %1477 = or i1 %1472, %1476
  %.v16 = select i1 %1477, i64 72, i64 10
  %1478 = add i64 %918, %.v16
  %1479 = add i64 %1478, 10
  store i64 %1479, i64* %3, align 8
  br i1 %1477, label %block_.L_400f02, label %block_400ec4

block_400ec4:                                     ; preds = %block_.L_400eba
  store i64 ptrtoint (%G__0x401896_type* @G__0x401896 to i64), i64* %RDI.i685, align 8
  store i64 ptrtoint (%G__0x401697_type* @G__0x401697 to i64), i64* %RAX.i761, align 8
  store i64 ptrtoint (%G__0x401894_type* @G__0x401894 to i64), i64* %RCX.i759, align 8
  %1480 = add i64 %1478, 33
  store i64 %1480, i64* %3, align 8
  %1481 = load i32, i32* %1465, align 4
  %1482 = zext i32 %1481 to i64
  store i64 %1482, i64* %RSI.i333, align 8
  %1483 = add i64 %1478, 37
  store i64 %1483, i64* %3, align 8
  %1484 = load i32, i32* %1465, align 4
  %1485 = add i32 %1484, -1
  %1486 = icmp eq i32 %1484, 0
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %14, align 1
  %1488 = and i32 %1485, 255
  %1489 = tail call i32 @llvm.ctpop.i32(i32 %1488)
  %1490 = trunc i32 %1489 to i8
  %1491 = and i8 %1490, 1
  %1492 = xor i8 %1491, 1
  store i8 %1492, i8* %21, align 1
  %1493 = xor i32 %1484, %1485
  %1494 = lshr i32 %1493, 4
  %1495 = trunc i32 %1494 to i8
  %1496 = and i8 %1495, 1
  store i8 %1496, i8* %26, align 1
  %1497 = icmp eq i32 %1485, 0
  %1498 = zext i1 %1497 to i8
  store i8 %1498, i8* %29, align 1
  %1499 = lshr i32 %1485, 31
  %1500 = trunc i32 %1499 to i8
  store i8 %1500, i8* %32, align 1
  %1501 = lshr i32 %1484, 31
  %1502 = xor i32 %1499, %1501
  %1503 = add nuw nsw i32 %1502, %1501
  %1504 = icmp eq i32 %1503, 2
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %38, align 1
  %1506 = icmp ne i8 %1500, 0
  %1507 = xor i1 %1506, %1504
  %.demorgan17 = or i1 %1497, %1507
  %1508 = select i1 %.demorgan17, i64 ptrtoint (%G__0x401697_type* @G__0x401697 to i64), i64 ptrtoint (%G__0x401894_type* @G__0x401894 to i64)
  store i64 %1508, i64* %RAX.i761, align 8
  store i64 %1508, i64* %RDX.i743, align 8
  store i8 0, i8* %AL.i683, align 1
  %1509 = add i64 %1478, -2340
  %1510 = add i64 %1478, 51
  %1511 = load i64, i64* %6, align 8
  %1512 = add i64 %1511, -8
  %1513 = inttoptr i64 %1512 to i64*
  store i64 %1510, i64* %1513, align 8
  store i64 %1512, i64* %6, align 8
  store i64 %1509, i64* %3, align 8
  %1514 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.4)
  %1515 = load i64, i64* %RBP.i, align 8
  %1516 = add i64 %1515, -188
  %1517 = load i32, i32* %EAX.i756, align 4
  %1518 = load i64, i64* %3, align 8
  %1519 = add i64 %1518, 6
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1516 to i32*
  store i32 %1517, i32* %1520, align 4
  %1521 = load i64, i64* %3, align 8
  %1522 = add i64 %1521, 28
  store i64 %1522, i64* %3, align 8
  br label %block_.L_400f19

block_.L_400f02:                                  ; preds = %block_.L_400eba
  store i64 ptrtoint (%G__0x4018c6_type* @G__0x4018c6 to i64), i64* %RDI.i685, align 8
  store i8 0, i8* %AL.i683, align 1
  %1523 = add i64 %1478, -2402
  %1524 = add i64 %1478, 17
  %1525 = load i64, i64* %6, align 8
  %1526 = add i64 %1525, -8
  %1527 = inttoptr i64 %1526 to i64*
  store i64 %1524, i64* %1527, align 8
  store i64 %1526, i64* %6, align 8
  store i64 %1523, i64* %3, align 8
  %1528 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.4)
  %1529 = load i64, i64* %RBP.i, align 8
  %1530 = add i64 %1529, -192
  %1531 = load i32, i32* %EAX.i756, align 4
  %1532 = load i64, i64* %3, align 8
  %1533 = add i64 %1532, 6
  store i64 %1533, i64* %3, align 8
  %1534 = inttoptr i64 %1530 to i32*
  store i32 %1531, i32* %1534, align 4
  %.pre8 = load i64, i64* %3, align 8
  br label %block_.L_400f19

block_.L_400f19:                                  ; preds = %block_.L_400f02, %block_400ec4
  %1535 = phi i64 [ %.pre8, %block_.L_400f02 ], [ %1522, %block_400ec4 ]
  %MEMORY.8 = phi %struct.Memory* [ %1528, %block_.L_400f02 ], [ %1514, %block_400ec4 ]
  store i64 0, i64* %RAX.i761, align 8
  %1536 = load i64, i64* %6, align 8
  %1537 = add i64 %1536, 192
  store i64 %1537, i64* %6, align 8
  %1538 = icmp ugt i64 %1536, -193
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %14, align 1
  %1540 = trunc i64 %1537 to i32
  %1541 = and i32 %1540, 255
  %1542 = tail call i32 @llvm.ctpop.i32(i32 %1541)
  %1543 = trunc i32 %1542 to i8
  %1544 = and i8 %1543, 1
  %1545 = xor i8 %1544, 1
  store i8 %1545, i8* %21, align 1
  %1546 = xor i64 %1536, %1537
  %1547 = lshr i64 %1546, 4
  %1548 = trunc i64 %1547 to i8
  %1549 = and i8 %1548, 1
  store i8 %1549, i8* %26, align 1
  %1550 = icmp eq i64 %1537, 0
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %29, align 1
  %1552 = lshr i64 %1537, 63
  %1553 = trunc i64 %1552 to i8
  store i8 %1553, i8* %32, align 1
  %1554 = lshr i64 %1536, 63
  %1555 = xor i64 %1552, %1554
  %1556 = add nuw nsw i64 %1555, %1552
  %1557 = icmp eq i64 %1556, 2
  %1558 = zext i1 %1557 to i8
  store i8 %1558, i8* %38, align 1
  %1559 = add i64 %1535, 10
  store i64 %1559, i64* %3, align 8
  %1560 = add i64 %1536, 200
  %1561 = inttoptr i64 %1537 to i64*
  %1562 = load i64, i64* %1561, align 8
  store i64 %1562, i64* %RBP.i, align 8
  store i64 %1560, i64* %6, align 8
  %1563 = add i64 %1535, 11
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1560 to i64*
  %1565 = load i64, i64* %1564, align 8
  store i64 %1565, i64* %3, align 8
  %1566 = add i64 %1536, 208
  store i64 %1566, i64* %6, align 8
  ret %struct.Memory* %MEMORY.8
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 1
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RBP, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subq__0xc0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 192
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, %6
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %28
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xea5__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xea5__rip__4196115__type* @G_0xea5__rip__4196115_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xea5__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xea5__rip__4196123__type* @G_0xea5__rip__4196123_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xea5__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xea5__rip__4196131__type* @G_0xea5__rip__4196131_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xea5__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xea5__rip__4196139__type* @G_0xea5__rip__4196139_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xea5__rip____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xea5__rip__4196147__type* @G_0xea5__rip__4196147_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xea5__rip____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xea5__rip__4196155__type* @G_0xea5__rip__4196155_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xea5__rip____xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xea5__rip__4196163__type* @G_0xea5__rip__4196163_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xea5__rip____xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xea5__rip__4196171__type* @G_0xea5__rip__4196171_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xea4__rip____xmm8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xea4__rip__4196180__type* @G_0xea4__rip__4196180_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm8__0x602158(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602158_type* @G_0x602158 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm7__0x602160(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602160_type* @G_0x602160 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm6__0x602168(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602168_type* @G_0x602168 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm5__0x602170(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602170_type* @G_0x602170 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm4__0x602178(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602178_type* @G_0x602178 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__0x602180(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602180_type* @G_0x602180 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__0x602188(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602188_type* @G_0x602188 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x602190(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602190_type* @G_0x602190 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xf4240__0x602070(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1000000, i32* bitcast (%G_0x602070_type* @G_0x602070 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x602198(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602198_type* @G_0x602198 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__0x4__0x6021a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i16 4, i16* bitcast (%G_0x6021a0_type* @G_0x6021a0 to i16*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x6021a0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i16, i16* bitcast (%G_0x6021a0_type* @G_0x6021a0 to i16*), align 8
  %6 = sext i16 %5 to i64
  %7 = and i64 %6, 4294967295
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %6, %5
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40085b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, %9
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400848(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6021b0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x602080___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x602080_type* @G__0x602080 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp eq i32 %6, -1
  %10 = icmp eq i32 %7, 0
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %7, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %6, %7
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %10 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x28___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 40
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, -1
  %10 = icmp eq i32 %7, 0
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %7, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %6, %7
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %10 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4007ea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40084d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4007d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401628___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401628_type* @G__0x401628 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x0___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x40165e___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40165e_type* @G__0x40165e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x602070___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602070_type* @G_0x602070 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401698___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401698_type* @G__0x401698 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xd67__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xd67__rip__4196505__type* @G_0xd67__rip__4196505_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl__esi___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %ESI, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4016d0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4016d0_type* @G__0x4016d0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x40170c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40170c_type* @G__0x40170c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x602650(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x602650_type* @G_0x602650 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x602650___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602650_type* @G_0x602650 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x602070___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x602070_type* @G_0x602070 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400b22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__0x0__0x602340(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i16 0, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x602340___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  %6 = sext i16 %5 to i64
  %7 = and i64 %6, 4294967295
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %4, %7
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4009a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xcf9__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xcf9__rip__4196647__type* @G_0xcf9__rip__4196647_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602198___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602198_type* @G_0x602198 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.trace_line(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x602350___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x602350_type* @G__0x602350 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602348___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswq_0x602340___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  %6 = sext i16 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  store i64 %8, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602370___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602370_type* @G_0x602370 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw_0x602340___ax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i16, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  store i16 %6, i16* %AX, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addw__0x1___ax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = load i16, i16* %AX, align 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = add i16 %4, 1
  store i16 %7, i16* %AX, align 2
  %8 = icmp eq i16 %4, -1
  %9 = icmp eq i16 %7, 0
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i16 %7, 255
  %14 = zext i16 %13 to i32
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i16 %4, %7
  %21 = lshr i16 %20, 4
  %22 = trunc i16 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %9 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i16 %7, 15
  %28 = trunc i16 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i16 %4, 15
  %31 = xor i16 %27, %30
  %32 = add nuw nsw i16 %31, %27
  %33 = icmp eq i16 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__ax__0x602340(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = load i16, i16* %AX, align 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  store i16 %4, i16* bitcast (%G_0x602340_type* @G_0x602340 to i16*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400909(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xc73__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xc73__rip__4196781__type* @G_0xc73__rip__4196781_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x6___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xc47__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xc47__rip__4196825__type* @G_0xc47__rip__4196825_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602348___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xc01__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xc01__rip__4196871__type* @G_0xc01__rip__4196871_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xc01__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xc01__rip__4196879__type* @G_0xc01__rip__4196879_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xc01__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xc01__rip__4196887__type* @G_0xc01__rip__4196887_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602348___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602360___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602360_type* @G_0x602360 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_0x602350___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602350_type* @G_0x602350 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__0x602378(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602378_type* @G_0x602378 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x602368___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602368_type* @G_0x602368 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602358___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602358_type* @G_0x602358 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm4___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x602350___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602350_type* @G_0x602350 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x602380(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602380_type* @G_0x602380 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x602388(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602388_type* @G_0x602388 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602358___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602358_type* @G_0x602358 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x602390(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602390_type* @G_0x602390 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602390___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602390_type* @G_0x602390 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x602390___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602390_type* @G_0x602390 to double*), align 8
  %9 = fmul double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x602390(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602390_type* @G_0x602390 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x602398(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602398_type* @G_0x602398 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602390___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602390_type* @G_0x602390 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x6023a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x6023a0_type* @G_0x6023a0 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x602650(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x602650_type* @G_0x602650 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4008eb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6023b0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x40174f___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40174f_type* @G__0x40174f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401767___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401767_type* @G__0x401767 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602350___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602350_type* @G_0x602350 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602358___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602358_type* @G_0x602358 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x2___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 2, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6023b0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x50___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -81
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401774___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401774_type* @G__0x401774 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602360___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602360_type* @G_0x602360 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602368___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602368_type* @G_0x602368 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x80__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xa0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 160
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -161
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, %6
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401781___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401781_type* @G__0x401781 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602378___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602378_type* @G_0x602378 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xf0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 240
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -241
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4017b1___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4017b1_type* @G__0x4017b1 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x140___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 320
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -321
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, %6
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4017e1___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4017e1_type* @G__0x4017e1 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602380___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602380_type* @G_0x602380 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x190___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 400
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -401
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602398___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602398_type* @G_0x602398 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x1e0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 480
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -481
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, %6
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401811___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401811_type* @G__0x401811 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x602388___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602388_type* @G_0x602388 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x230___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 560
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -561
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6023a0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6023a0_type* @G_0x6023a0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, %9
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400eba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6023b0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x50___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 80
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x602100___rcx_8____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, ptrtoint (%G_0x602100___rcx_8__type* @G_0x602100___rcx_8_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400ea7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401841___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401841_type* @G__0x401841 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401862___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401862_type* @G__0x401862 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401873___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401873_type* @G__0x401873 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6023b0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6023b0_type* @G__0x6023b0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x50___rsi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 80
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401884___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401884_type* @G__0x401884 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x602100___rcx_8____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, ptrtoint (%G_0x602100___rcx_8__type* @G_0x602100___rcx_8_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strlen_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400e90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401891___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401891_type* @G__0x401891 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x5e___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 94, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x20___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 32, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x602100___rsi_8____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, ptrtoint (%G_0x602100___rsi_8__type* @G_0x602100___rsi_8_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rsi__r8_1____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rdx__rsi_1____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__r10d___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %R9D, align 4
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %6, %5
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x602100___rdi_8____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, ptrtoint (%G_0x602100___rdi_8__type* @G_0x602100___rdi_8_ to i64)
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rdi__r8_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x50___rdi___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 80
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rdx__rdi_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__esi___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %6, %5
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400e7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e82(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400dd2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401696___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401696_type* @G__0x401696 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400eac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400cf1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_400f02(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %3, %.v
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401896___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401896_type* @G__0x401896 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401697___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401697_type* @G__0x401697 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401894___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401894_type* @G__0x401894 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, %9
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmovgq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = xor i1 %15, true
  %17 = and i1 %8, %16
  %18 = load i64, i64* %RAX, align 8
  %19 = select i1 %17, i64 %3, i64 %18
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f19(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4018c6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4018c6_type* @G__0x4018c6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__eax___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xc0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -193
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %3, %6
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBP, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %PC, align 8
  %9 = add i64 %6, 8
  store i64 %9, i64* %5, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
