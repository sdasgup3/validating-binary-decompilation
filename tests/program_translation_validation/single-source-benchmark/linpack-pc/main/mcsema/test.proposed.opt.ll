; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x604040_type = type <{ [8 x i8] }>
%G_0x604050_type = type <{ [4 x i8] }>
%G_0x604054_type = type <{ [4 x i8] }>
%G_0x604058_type = type <{ [4 x i8] }>
%G_0x62bad0_type = type <{ [16 x i8] }>
%G_0x62bb0c_type = type <{ [16 x i8] }>
%G_0x62bb48_type = type <{ [16 x i8] }>
%G_0x62bb84_type = type <{ [16 x i8] }>
%G_0x62bb9c_type = type <{ [16 x i8] }>
%G_0x62bbb4_type = type <{ [16 x i8] }>
%G_0x62bbc0_type = type <{ [16 x i8] }>
%G_0x62bbfc_type = type <{ [16 x i8] }>
%G_0x62bcec_type = type <{ [4 x i8] }>
%G_0x62bcf0_type = type <{ [4 x i8] }>
%G_0x62c010_type = type <{ [4 x i8] }>
%G_0x62c014_type = type <{ [4 x i8] }>
%G__0x402eb0_type = type <{ [8 x i8] }>
%G__0x402eca_type = type <{ [8 x i8] }>
%G__0x402eeb_type = type <{ [8 x i8] }>
%G__0x402ef3_type = type <{ [8 x i8] }>
%G__0x402efb_type = type <{ [8 x i8] }>
%G__0x402f31_type = type <{ [8 x i8] }>
%G__0x402f42_type = type <{ [8 x i8] }>
%G__0x402f54_type = type <{ [8 x i8] }>
%G__0x402f7b_type = type <{ [8 x i8] }>
%G__0x402f9e_type = type <{ [8 x i8] }>
%G__0x402fbf_type = type <{ [8 x i8] }>
%G__0x402ff4_type = type <{ [8 x i8] }>
%G__0x40302a_type = type <{ [8 x i8] }>
%G__0x403062_type = type <{ [8 x i8] }>
%G__0x40306f_type = type <{ [8 x i8] }>
%G__0x40308d_type = type <{ [8 x i8] }>
%G__0x4030a7_type = type <{ [8 x i8] }>
%G__0x4030ce_type = type <{ [8 x i8] }>
%G__0x4030fd_type = type <{ [8 x i8] }>
%G__0x403111_type = type <{ [8 x i8] }>
%G__0x403140_type = type <{ [8 x i8] }>
%G__0x403169_type = type <{ [8 x i8] }>
%G__0x604060_type = type <{ [8 x i8] }>
%G__0x62b480_type = type <{ [8 x i8] }>
%G__0x62b7a0_type = type <{ [8 x i8] }>
%G__0x62bac0_type = type <{ [8 x i8] }>
%G__0x62bcf0_type = type <{ [8 x i8] }>
%G__0x62c020_type = type <{ [8 x i8] }>
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
@G_0x604040 = local_unnamed_addr global %G_0x604040_type zeroinitializer
@G_0x604050 = local_unnamed_addr global %G_0x604050_type zeroinitializer
@G_0x604054 = local_unnamed_addr global %G_0x604054_type zeroinitializer
@G_0x604058 = local_unnamed_addr global %G_0x604058_type zeroinitializer
@G_0x62bad0 = local_unnamed_addr global %G_0x62bad0_type zeroinitializer
@G_0x62bb0c = local_unnamed_addr global %G_0x62bb0c_type zeroinitializer
@G_0x62bb48 = local_unnamed_addr global %G_0x62bb48_type zeroinitializer
@G_0x62bb84 = local_unnamed_addr global %G_0x62bb84_type zeroinitializer
@G_0x62bb9c = local_unnamed_addr global %G_0x62bb9c_type zeroinitializer
@G_0x62bbb4 = local_unnamed_addr global %G_0x62bbb4_type zeroinitializer
@G_0x62bbc0 = local_unnamed_addr global %G_0x62bbc0_type zeroinitializer
@G_0x62bbfc = local_unnamed_addr global %G_0x62bbfc_type zeroinitializer
@G_0x62bcec = local_unnamed_addr global %G_0x62bcec_type zeroinitializer
@G_0x62bcf0 = local_unnamed_addr global %G_0x62bcf0_type zeroinitializer
@G_0x62c010 = local_unnamed_addr global %G_0x62c010_type zeroinitializer
@G_0x62c014 = local_unnamed_addr global %G_0x62c014_type zeroinitializer
@G__0x402eb0 = global %G__0x402eb0_type zeroinitializer
@G__0x402eca = global %G__0x402eca_type zeroinitializer
@G__0x402eeb = global %G__0x402eeb_type zeroinitializer
@G__0x402ef3 = global %G__0x402ef3_type zeroinitializer
@G__0x402efb = global %G__0x402efb_type zeroinitializer
@G__0x402f31 = global %G__0x402f31_type zeroinitializer
@G__0x402f42 = global %G__0x402f42_type zeroinitializer
@G__0x402f54 = global %G__0x402f54_type zeroinitializer
@G__0x402f7b = global %G__0x402f7b_type zeroinitializer
@G__0x402f9e = global %G__0x402f9e_type zeroinitializer
@G__0x402fbf = global %G__0x402fbf_type zeroinitializer
@G__0x402ff4 = global %G__0x402ff4_type zeroinitializer
@G__0x40302a = global %G__0x40302a_type zeroinitializer
@G__0x403062 = global %G__0x403062_type zeroinitializer
@G__0x40306f = global %G__0x40306f_type zeroinitializer
@G__0x40308d = global %G__0x40308d_type zeroinitializer
@G__0x4030a7 = global %G__0x4030a7_type zeroinitializer
@G__0x4030ce = global %G__0x4030ce_type zeroinitializer
@G__0x4030fd = global %G__0x4030fd_type zeroinitializer
@G__0x403111 = global %G__0x403111_type zeroinitializer
@G__0x403140 = global %G__0x403140_type zeroinitializer
@G__0x403169 = global %G__0x403169_type zeroinitializer
@G__0x604060 = global %G__0x604060_type zeroinitializer
@G__0x62b480 = global %G__0x62b480_type zeroinitializer
@G__0x62b7a0 = global %G__0x62b7a0_type zeroinitializer
@G__0x62bac0 = global %G__0x62bac0_type zeroinitializer
@G__0x62bcf0 = global %G__0x62bcf0_type zeroinitializer
@G__0x62c020 = global %G__0x62c020_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_401760.matgen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005f0.second(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401930.dgefa(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401c40.dgesl(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401fc0.dmxpy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4027c0.epslon(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402870.print_time(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %11 = add i64 %7, -1016
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 1008
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
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  %RSI.i245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 ptrtoint (%G__0x402eeb_type* @G__0x402eeb to i64), i64* %RSI.i245, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %41 = bitcast [32 x %union.VectorReg]* %40 to i8*
  %42 = add i64 %10, 10247
  %43 = add i64 %10, 28
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %42 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = bitcast [32 x %union.VectorReg]* %40 to float*
  %47 = bitcast [32 x %union.VectorReg]* %40 to i32*
  store i32 %45, i32* %47, align 1
  %48 = getelementptr inbounds i8, i8* %41, i64 4
  %49 = bitcast i8* %48 to float*
  store float 0.000000e+00, float* %49, align 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %51 = bitcast i64* %50 to float*
  store float 0.000000e+00, float* %51, align 1
  %52 = getelementptr inbounds i8, i8* %41, i64 12
  %53 = bitcast i8* %52 to float*
  store float 0.000000e+00, float* %53, align 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i271 = getelementptr inbounds %union.anon, %union.anon* %54, i64 0, i32 0
  store i64 ptrtoint (%G__0x402eca_type* @G__0x402eca to i64), i64* %RAX.i271, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i347 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  store i64 ptrtoint (%G__0x402eb0_type* @G__0x402eb0 to i64), i64* %RCX.i347, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %56 to i32*
  %RDX.i359 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  store i64 0, i64* %RDX.i359, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %RDI.i594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 720, i64* %57, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -832
  store i64 %59, i64* %R9.i, align 8
  %60 = add i64 %58, -4
  %61 = add i64 %10, 72
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %60 to i32*
  store i32 0, i32* %62, align 4
  %63 = load i64, i64* %R9.i, align 8
  %64 = load i64, i64* %3, align 8
  store i64 %63, i64* %RDI.i594, align 8
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -840
  %67 = load i64, i64* %RSI.i245, align 8
  %68 = add i64 %64, 10
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* %EDX.i, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* %3, align 8
  store i64 %71, i64* %RSI.i245, align 8
  %73 = load i64, i64* %57, align 8
  store i64 %73, i64* %RDX.i359, align 8
  %74 = load i64, i64* %RBP.i, align 8
  %75 = add i64 %74, -848
  %76 = load i64, i64* %RCX.i347, align 8
  %77 = add i64 %72, 12
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %75 to i64*
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -852
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 8
  store i64 %82, i64* %3, align 8
  %83 = bitcast [32 x %union.VectorReg]* %40 to <2 x float>*
  %84 = load <2 x float>, <2 x float>* %83, align 1
  %85 = extractelement <2 x float> %84, i32 0
  %86 = inttoptr i64 %80 to float*
  store float %85, float* %86, align 4
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -864
  %89 = load i64, i64* %RAX.i271, align 8
  %90 = load i64, i64* %3, align 8
  %91 = add i64 %90, 7
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %88 to i64*
  store i64 %89, i64* %92, align 8
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, -462
  %95 = add i64 %93, 5
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %96, -8
  %98 = inttoptr i64 %97 to i64*
  store i64 %95, i64* %98, align 8
  store i64 %97, i64* %6, align 8
  store i64 %94, i64* %3, align 8
  %99 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -832
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, 7
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %101 to i8*
  store i8 32, i8* %104, align 1
  %105 = load i64, i64* %RBP.i, align 8
  %106 = add i64 %105, -848
  %107 = load i64, i64* %3, align 8
  %108 = add i64 %107, 7
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %106 to i64*
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %RAX.i271, align 8
  %111 = add i64 %105, -96
  %112 = add i64 %107, 11
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i64*
  store i64 %110, i64* %113, align 8
  %114 = load i64, i64* %RBP.i, align 8
  %115 = add i64 %114, -864
  %116 = load i64, i64* %3, align 8
  %117 = add i64 %116, 7
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %115 to i64*
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %RCX.i347, align 8
  %120 = add i64 %114, -104
  %121 = add i64 %116, 11
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %120 to i64*
  store i64 %119, i64* %122, align 8
  %123 = load i64, i64* %3, align 8
  store i32 201, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  store i32 200, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %124 = load i64, i64* %RBP.i, align 8
  %125 = add i64 %124, -852
  %126 = add i64 %123, 30
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i32*
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %129 = add i64 %124, -8
  %130 = add i64 %123, 35
  store i64 %130, i64* %3, align 8
  %131 = load <2 x float>, <2 x float>* %83, align 1
  %132 = extractelement <2 x float> %131, i32 0
  %133 = inttoptr i64 %129 to float*
  store float %132, float* %133, align 4
  %134 = load i64, i64* %3, align 8
  store i32 100, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %135 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %135, i64* %RDI.i594, align 8
  %136 = load i64, i64* %RBP.i, align 8
  %137 = add i64 %136, -840
  %138 = add i64 %134, 26
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i64*
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %RSI.i245, align 8
  %AL.i1482 = bitcast %union.anon* %54 to i8*
  store i8 0, i8* %AL.i1482, align 1
  %141 = add i64 %134, -515
  %142 = add i64 %134, 33
  %143 = load i64, i64* %6, align 8
  %144 = add i64 %143, -8
  %145 = inttoptr i64 %144 to i64*
  store i64 %142, i64* %145, align 8
  store i64 %144, i64* %6, align 8
  store i64 %141, i64* %3, align 8
  %146 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %99)
  %147 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402ef3_type* @G__0x402ef3 to i64), i64* %RSI.i245, align 8
  %148 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %148, i64* %RDI.i594, align 8
  %EAX.i1471 = bitcast %union.anon* %54 to i32*
  %149 = load i64, i64* %RBP.i, align 8
  %150 = add i64 %149, -868
  %151 = load i32, i32* %EAX.i1471, align 4
  %152 = add i64 %147, 24
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %150 to i32*
  store i32 %151, i32* %153, align 4
  %154 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1482, align 1
  %155 = add i64 %154, -572
  %156 = add i64 %154, 7
  %157 = load i64, i64* %6, align 8
  %158 = add i64 %157, -8
  %159 = inttoptr i64 %158 to i64*
  store i64 %156, i64* %159, align 8
  store i64 %158, i64* %6, align 8
  store i64 %155, i64* %3, align 8
  %160 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %146)
  %161 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402efb_type* @G__0x402efb to i64), i64* %RSI.i245, align 8
  %162 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %162, i64* %RDI.i594, align 8
  %163 = load i64, i64* %RBP.i, align 8
  %164 = add i64 %163, -872
  %165 = load i32, i32* %EAX.i1471, align 4
  %166 = add i64 %161, 24
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %164 to i32*
  store i32 %165, i32* %167, align 4
  %168 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1482, align 1
  %169 = add i64 %168, -603
  %170 = add i64 %168, 7
  %171 = load i64, i64* %6, align 8
  %172 = add i64 %171, -8
  %173 = inttoptr i64 %172 to i64*
  store i64 %170, i64* %173, align 8
  store i64 %172, i64* %6, align 8
  store i64 %169, i64* %3, align 8
  %174 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %160)
  %175 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402f31_type* @G__0x402f31 to i64), i64* %RSI.i245, align 8
  %176 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %176, i64* %RDI.i594, align 8
  %177 = load i64, i64* %RBP.i, align 8
  %178 = add i64 %177, -96
  %179 = add i64 %175, 22
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %178 to i64*
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %RDX.i359, align 8
  %182 = add i64 %177, -876
  %183 = load i32, i32* %EAX.i1471, align 4
  %184 = add i64 %175, 28
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %182 to i32*
  store i32 %183, i32* %185, align 4
  %186 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1482, align 1
  %187 = add i64 %186, -638
  %188 = add i64 %186, 7
  %189 = load i64, i64* %6, align 8
  %190 = add i64 %189, -8
  %191 = inttoptr i64 %190 to i64*
  store i64 %188, i64* %191, align 8
  store i64 %190, i64* %6, align 8
  store i64 %187, i64* %3, align 8
  %192 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %174)
  %193 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402f42_type* @G__0x402f42 to i64), i64* %RSI.i245, align 8
  %194 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %194, i64* %RDI.i594, align 8
  %195 = load i64, i64* %RBP.i, align 8
  %196 = add i64 %195, -104
  %197 = add i64 %193, 22
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i64*
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %RDX.i359, align 8
  %200 = add i64 %195, -880
  %201 = load i32, i32* %EAX.i1471, align 4
  %202 = add i64 %193, 28
  store i64 %202, i64* %3, align 8
  %203 = inttoptr i64 %200 to i32*
  store i32 %201, i32* %203, align 4
  %204 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1482, align 1
  %205 = add i64 %204, -673
  %206 = add i64 %204, 7
  %207 = load i64, i64* %6, align 8
  %208 = add i64 %207, -8
  %209 = inttoptr i64 %208 to i64*
  store i64 %206, i64* %209, align 8
  store i64 %208, i64* %6, align 8
  store i64 %205, i64* %3, align 8
  %210 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %192)
  %211 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i347, align 8
  %212 = load i64, i64* %RBP.i, align 8
  %213 = add i64 %212, -20
  store i64 %213, i64* %57, align 8
  %214 = add i64 %211, 9920
  %215 = add i64 %211, 32
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %214 to i64*
  %217 = load i64, i64* %216, align 8
  %218 = bitcast [32 x %union.VectorReg]* %40 to double*
  %219 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %217, i64* %219, align 1
  %220 = bitcast i64* %50 to double*
  store double 0.000000e+00, double* %220, align 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %222 = add i64 %211, 9928
  %223 = add i64 %211, 40
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i64*
  %225 = load i64, i64* %224, align 8
  %226 = bitcast %union.VectorReg* %221 to double*
  %227 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %221, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %225, i64* %227, align 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %229 = bitcast i64* %228 to double*
  store double 0.000000e+00, double* %229, align 1
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %231 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %232 = sext i32 %231 to i64
  %233 = mul nsw i64 %232, %232
  %234 = trunc i64 %233 to i32
  %235 = and i64 %233, 4294967295
  %236 = shl i64 %233, 32
  %237 = ashr exact i64 %236, 32
  %238 = icmp ne i64 %237, %233
  %239 = zext i1 %238 to i8
  %240 = and i32 %234, 255
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240)
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  %245 = lshr i32 %234, 31
  %246 = trunc i32 %245 to i8
  %247 = trunc i64 %233 to i32
  %sext = shl i64 %233, 32
  %248 = ashr exact i64 %sext, 32
  %249 = mul nsw i64 %232, %248
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %251 = trunc i64 %249 to i32
  %252 = sitofp i32 %251 to double
  %253 = bitcast %union.VectorReg* %250 to double*
  store double %252, double* %253, align 1
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %255 = bitcast %union.VectorReg* %254 to i8*
  %256 = bitcast i64 %217 to <2 x i32>
  %257 = bitcast i64* %50 to <2 x i32>*
  %258 = extractelement <2 x i32> %256, i32 0
  %259 = bitcast %union.VectorReg* %254 to i32*
  store i32 %258, i32* %259, align 1
  %260 = extractelement <2 x i32> %256, i32 1
  %261 = getelementptr inbounds i8, i8* %255, i64 4
  %262 = bitcast i8* %261 to i32*
  store i32 %260, i32* %262, align 1
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %264 = bitcast i64* %263 to i32*
  store i32 0, i32* %264, align 1
  %265 = getelementptr inbounds i8, i8* %255, i64 12
  %266 = bitcast i8* %265 to i32*
  store i32 0, i32* %266, align 1
  %267 = bitcast %union.VectorReg* %254 to double*
  %268 = load double, double* %267, align 1
  %269 = fmul double %268, %252
  %270 = load double, double* %226, align 1
  %271 = fdiv double %269, %270
  store i64 %235, i64* %230, align 8
  store i8 %239, i8* %14, align 1
  store i8 %244, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 %246, i8* %33, align 1
  store i8 %239, i8* %39, align 1
  %272 = sitofp i32 %247 to double
  store double %272, double* %226, align 1
  %273 = load double, double* %218, align 1
  %274 = bitcast i64* %50 to <2 x i32>*
  %275 = load <2 x i32>, <2 x i32>* %274, align 1
  %276 = fmul double %272, %273
  %277 = fadd double %276, %271
  store double %277, double* %267, align 1
  %278 = bitcast double %276 to <2 x i32>
  %279 = fptrunc double %277 to float
  store float %279, float* %46, align 1
  %280 = extractelement <2 x i32> %278, i32 1
  %281 = bitcast i8* %48 to i32*
  store i32 %280, i32* %281, align 1
  %282 = extractelement <2 x i32> %275, i32 0
  %283 = bitcast i64* %50 to i32*
  store i32 %282, i32* %283, align 1
  %284 = extractelement <2 x i32> %275, i32 1
  %285 = bitcast i8* %52 to i32*
  store i32 %284, i32* %285, align 1
  %286 = load i64, i64* %RBP.i, align 8
  %287 = add i64 %286, -12
  %288 = add i64 %211, 121
  store i64 %288, i64* %3, align 8
  %289 = load <2 x float>, <2 x float>* %83, align 1
  %290 = extractelement <2 x float> %289, i32 0
  %291 = inttoptr i64 %287 to float*
  store float %290, float* %291, align 4
  %292 = load i64, i64* %3, align 8
  %293 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RSI.i245, align 8
  %295 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %296 = zext i32 %295 to i64
  store i64 %296, i64* %RDX.i359, align 8
  %297 = load i64, i64* %RBP.i, align 8
  %298 = add i64 %297, -884
  %299 = load i32, i32* %EAX.i1471, align 4
  %300 = add i64 %292, 20
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %298 to i32*
  store i32 %299, i32* %301, align 4
  %302 = load i64, i64* %3, align 8
  %303 = add i64 %302, 3899
  %304 = add i64 %302, 5
  %305 = load i64, i64* %6, align 8
  %306 = add i64 %305, -8
  %307 = inttoptr i64 %306 to i64*
  store i64 %304, i64* %307, align 8
  store i64 %306, i64* %6, align 8
  store i64 %303, i64* %3, align 8
  %call2_400825 = tail call %struct.Memory* @sub_401760.matgen(%struct.State* %0, i64 %303, %struct.Memory* %210)
  %308 = load i64, i64* %3, align 8
  %309 = add i64 %308, -570
  %310 = add i64 %308, 5
  %311 = load i64, i64* %6, align 8
  %312 = add i64 %311, -8
  %313 = inttoptr i64 %312 to i64*
  store i64 %310, i64* %313, align 8
  store i64 %312, i64* %6, align 8
  store i64 %309, i64* %3, align 8
  %call2_40082a = tail call %struct.Memory* @sub_4005f0.second(%struct.State* %0, i64 %309, %struct.Memory* %call2_400825)
  %314 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i347, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %57, align 8
  %315 = load i64, i64* %RBP.i, align 8
  %316 = add i64 %315, -40
  %317 = add i64 %314, 35
  store i64 %317, i64* %3, align 8
  %318 = load <2 x float>, <2 x float>* %83, align 1
  %319 = extractelement <2 x float> %318, i32 0
  %320 = inttoptr i64 %316 to float*
  store float %319, float* %320, align 4
  %321 = load i64, i64* %3, align 8
  %322 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RSI.i245, align 8
  %324 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RDX.i359, align 8
  %326 = add i64 %321, 4318
  %327 = add i64 %321, 19
  %328 = load i64, i64* %6, align 8
  %329 = add i64 %328, -8
  %330 = inttoptr i64 %329 to i64*
  store i64 %327, i64* %330, align 8
  store i64 %329, i64* %6, align 8
  store i64 %326, i64* %3, align 8
  %call2_400860 = tail call %struct.Memory* @sub_401930.dgefa(%struct.State* %0, i64 %326, %struct.Memory* %call2_40082a)
  %331 = load i64, i64* %3, align 8
  %332 = add i64 %331, -629
  %333 = add i64 %331, 5
  %334 = load i64, i64* %6, align 8
  %335 = add i64 %334, -8
  %336 = inttoptr i64 %335 to i64*
  store i64 %333, i64* %336, align 8
  store i64 %335, i64* %6, align 8
  store i64 %332, i64* %3, align 8
  %call2_400865 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* %0, i64 %332, %struct.Memory* %call2_400860)
  %337 = load i64, i64* %RBP.i, align 8
  %338 = add i64 %337, -40
  %339 = load i64, i64* %3, align 8
  %340 = add i64 %339, 5
  store i64 %340, i64* %3, align 8
  %341 = load <2 x float>, <2 x float>* %83, align 1
  %342 = load <2 x i32>, <2 x i32>* %257, align 1
  %343 = inttoptr i64 %338 to float*
  %344 = load float, float* %343, align 4
  %345 = extractelement <2 x float> %341, i32 0
  %346 = fsub float %345, %344
  store float %346, float* %46, align 1
  %347 = bitcast <2 x float> %341 to <2 x i32>
  %348 = extractelement <2 x i32> %347, i32 1
  store i32 %348, i32* %281, align 1
  %349 = extractelement <2 x i32> %342, i32 0
  store i32 %349, i32* %283, align 1
  %350 = extractelement <2 x i32> %342, i32 1
  store i32 %350, i32* %285, align 1
  %351 = load <2 x float>, <2 x float>* %83, align 1
  %352 = extractelement <2 x float> %351, i32 0
  store float %352, float* bitcast (%G_0x62bad0_type* @G_0x62bad0 to float*), align 8
  %353 = add i64 %339, -634
  %354 = add i64 %339, 19
  %355 = load i64, i64* %6, align 8
  %356 = add i64 %355, -8
  %357 = inttoptr i64 %356 to i64*
  store i64 %354, i64* %357, align 8
  store i64 %356, i64* %6, align 8
  store i64 %353, i64* %3, align 8
  %call2_400878 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* %0, i64 %353, %struct.Memory* %call2_400865)
  %358 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i347, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %57, align 8
  store i64 0, i64* %R9.i, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %359 = load i64, i64* %RBP.i, align 8
  %360 = add i64 %359, -40
  %361 = add i64 %358, 38
  store i64 %361, i64* %3, align 8
  %362 = load <2 x float>, <2 x float>* %83, align 1
  %363 = extractelement <2 x float> %362, i32 0
  %364 = inttoptr i64 %360 to float*
  store float %363, float* %364, align 4
  %365 = load i64, i64* %3, align 8
  %366 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RSI.i245, align 8
  %368 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %RDX.i359, align 8
  %370 = add i64 %365, 5021
  %371 = add i64 %365, 19
  %372 = load i64, i64* %6, align 8
  %373 = add i64 %372, -8
  %374 = inttoptr i64 %373 to i64*
  store i64 %371, i64* %374, align 8
  store i64 %373, i64* %6, align 8
  store i64 %370, i64* %3, align 8
  %call2_4008b1 = tail call %struct.Memory* @sub_401c40.dgesl(%struct.State* %0, i64 %370, %struct.Memory* %call2_400878)
  %375 = load i64, i64* %3, align 8
  %376 = add i64 %375, -710
  %377 = add i64 %375, 5
  %378 = load i64, i64* %6, align 8
  %379 = add i64 %378, -8
  %380 = inttoptr i64 %379 to i64*
  store i64 %377, i64* %380, align 8
  store i64 %379, i64* %6, align 8
  store i64 %376, i64* %3, align 8
  %call2_4008b6 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* %0, i64 %376, %struct.Memory* %call2_4008b1)
  %381 = load i64, i64* %RBP.i, align 8
  %382 = add i64 %381, -40
  %383 = load i64, i64* %3, align 8
  %384 = add i64 %383, 5
  store i64 %384, i64* %3, align 8
  %385 = load <2 x float>, <2 x float>* %83, align 1
  %386 = inttoptr i64 %382 to float*
  %387 = load float, float* %386, align 4
  %388 = extractelement <2 x float> %385, i32 0
  %389 = fsub float %388, %387
  store float %389, float* %46, align 1
  %390 = bitcast <2 x float> %385 to <2 x i32>
  %391 = extractelement <2 x i32> %390, i32 1
  store i32 %391, i32* %281, align 1
  %392 = load <2 x float>, <2 x float>* %83, align 1
  %393 = extractelement <2 x float> %392, i32 0
  store float %393, float* bitcast (%G_0x62bb0c_type* @G_0x62bb0c to float*), align 8
  %394 = load i32, i32* bitcast (%G_0x62bad0_type* @G_0x62bad0 to i32*), align 8
  store i32 %394, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %395 = load <2 x float>, <2 x float>* %83, align 1
  %396 = load <2 x i32>, <2 x i32>* %257, align 1
  %397 = extractelement <2 x float> %395, i32 0
  %398 = fadd float %397, %393
  store float %398, float* %46, align 1
  %399 = bitcast <2 x float> %395 to <2 x i32>
  %400 = extractelement <2 x i32> %399, i32 1
  store i32 %400, i32* %281, align 1
  %401 = extractelement <2 x i32> %396, i32 0
  store i32 %401, i32* %283, align 1
  %402 = extractelement <2 x i32> %396, i32 1
  store i32 %402, i32* %285, align 1
  %403 = add i64 %381, -16
  %404 = add i64 %383, 37
  store i64 %404, i64* %3, align 8
  %405 = load <2 x float>, <2 x float>* %83, align 1
  %406 = extractelement <2 x float> %405, i32 0
  %407 = inttoptr i64 %403 to float*
  store float %406, float* %407, align 4
  %408 = load i64, i64* %3, align 8
  %409 = add i64 %408, 11
  store i64 %409, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4008eb

block_.L_4008eb:                                  ; preds = %block_4008ff, %entry
  %410 = phi i32 [ %454, %block_4008ff ], [ 0, %entry ]
  %411 = phi i64 [ %477, %block_4008ff ], [ %409, %entry ]
  %412 = zext i32 %410 to i64
  store i64 %412, i64* %RAX.i271, align 8
  %413 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %414 = sub i32 %410, %413
  %415 = icmp ult i32 %410, %413
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %14, align 1
  %417 = and i32 %414, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417)
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %21, align 1
  %422 = xor i32 %413, %410
  %423 = xor i32 %422, %414
  %424 = lshr i32 %423, 4
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  store i8 %426, i8* %27, align 1
  %427 = icmp eq i32 %414, 0
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %30, align 1
  %429 = lshr i32 %414, 31
  %430 = trunc i32 %429 to i8
  store i8 %430, i8* %33, align 1
  %431 = lshr i32 %410, 31
  %432 = lshr i32 %413, 31
  %433 = xor i32 %432, %431
  %434 = xor i32 %429, %431
  %435 = add nuw nsw i32 %434, %433
  %436 = icmp eq i32 %435, 2
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %39, align 1
  %438 = icmp ne i8 %430, 0
  %439 = xor i1 %438, %436
  %.v92 = select i1 %439, i64 20, i64 76
  %440 = add i64 %411, %.v92
  store i64 %440, i64* %3, align 8
  br i1 %439, label %block_4008ff, label %block_.L_400937

block_4008ff:                                     ; preds = %block_.L_4008eb
  %441 = sext i32 %410 to i64
  store i64 %441, i64* %RAX.i271, align 8
  %442 = shl nsw i64 %441, 2
  %443 = add nsw i64 %442, 6468736
  %444 = add i64 %440, 17
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i32*
  %446 = load i32, i32* %445, align 4
  store i32 %446, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %447 = add nsw i64 %442, 6470896
  %448 = add i64 %440, 34
  store i64 %448, i64* %3, align 8
  %449 = load <2 x float>, <2 x float>* %83, align 1
  %450 = extractelement <2 x float> %449, i32 0
  %451 = inttoptr i64 %447 to float*
  store float %450, float* %451, align 4
  %452 = load i64, i64* %3, align 8
  %453 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %454 = add i32 %453, 1
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RAX.i271, align 8
  %456 = icmp eq i32 %453, -1
  %457 = icmp eq i32 %454, 0
  %458 = or i1 %456, %457
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %14, align 1
  %460 = and i32 %454, 255
  %461 = tail call i32 @llvm.ctpop.i32(i32 %460)
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = xor i8 %463, 1
  store i8 %464, i8* %21, align 1
  %465 = xor i32 %454, %453
  %466 = lshr i32 %465, 4
  %467 = trunc i32 %466 to i8
  %468 = and i8 %467, 1
  store i8 %468, i8* %27, align 1
  %469 = zext i1 %457 to i8
  store i8 %469, i8* %30, align 1
  %470 = lshr i32 %454, 31
  %471 = trunc i32 %470 to i8
  store i8 %471, i8* %33, align 1
  %472 = lshr i32 %453, 31
  %473 = xor i32 %470, %472
  %474 = add nuw nsw i32 %473, %470
  %475 = icmp eq i32 %474, 2
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %39, align 1
  store i32 %454, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %477 = add i64 %452, -54
  store i64 %477, i64* %3, align 8
  br label %block_.L_4008eb

block_.L_400937:                                  ; preds = %block_.L_4008eb
  %478 = bitcast %union.VectorReg* %221 to i8*
  %479 = bitcast %union.VectorReg* %250 to i8*
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i347, align 8
  %480 = load i64, i64* %RBP.i, align 8
  %481 = add i64 %480, -20
  store i64 %481, i64* %57, align 8
  %482 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %483 = zext i32 %482 to i64
  store i64 %483, i64* %RSI.i245, align 8
  %484 = zext i32 %413 to i64
  store i64 %484, i64* %RDX.i359, align 8
  %485 = add i64 %440, 3625
  %486 = add i64 %440, 43
  %487 = load i64, i64* %6, align 8
  %488 = add i64 %487, -8
  %489 = inttoptr i64 %488 to i64*
  store i64 %486, i64* %489, align 8
  store i64 %488, i64* %6, align 8
  store i64 %485, i64* %3, align 8
  %call2_40095d = tail call %struct.Memory* @sub_401760.matgen(%struct.State* nonnull %0, i64 %485, %struct.Memory* %call2_4008b6)
  %490 = load i64, i64* %3, align 8
  %491 = add i64 %490, 11
  store i64 %491, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %492 = bitcast %union.anon* %55 to [2 x i32]*
  %493 = bitcast %union.anon* %55 to i32*
  %494 = getelementptr inbounds [2 x i32], [2 x i32]* %492, i64 0, i64 1
  br label %block_.L_40096d

block_.L_40096d:                                  ; preds = %block_400981, %block_.L_400937
  %495 = phi i32 [ %544, %block_400981 ], [ 0, %block_.L_400937 ]
  %496 = phi i64 [ %567, %block_400981 ], [ %491, %block_.L_400937 ]
  %497 = zext i32 %495 to i64
  store i64 %497, i64* %RAX.i271, align 8
  %498 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %499 = sub i32 %495, %498
  %500 = icmp ult i32 %495, %498
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %14, align 1
  %502 = and i32 %499, 255
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  store i8 %506, i8* %21, align 1
  %507 = xor i32 %498, %495
  %508 = xor i32 %507, %499
  %509 = lshr i32 %508, 4
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  store i8 %511, i8* %27, align 1
  %512 = icmp eq i32 %499, 0
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %30, align 1
  %514 = lshr i32 %499, 31
  %515 = trunc i32 %514 to i8
  store i8 %515, i8* %33, align 1
  %516 = lshr i32 %495, 31
  %517 = lshr i32 %498, 31
  %518 = xor i32 %517, %516
  %519 = xor i32 %514, %516
  %520 = add nuw nsw i32 %519, %518
  %521 = icmp eq i32 %520, 2
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %39, align 1
  %523 = icmp ne i8 %515, 0
  %524 = xor i1 %523, %521
  %.v93 = select i1 %524, i64 20, i64 90
  %525 = add i64 %496, %.v93
  store i64 %525, i64* %3, align 8
  br i1 %524, label %block_400981, label %block_.L_4009c7

block_400981:                                     ; preds = %block_.L_40096d
  %526 = sext i32 %495 to i64
  store i64 %526, i64* %RAX.i271, align 8
  %527 = shl nsw i64 %526, 2
  %528 = add nsw i64 %527, 6468736
  %529 = add i64 %525, 17
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i32*
  %531 = load i32, i32* %530, align 4
  store i32 %531, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  %532 = load i64, i64* %219, align 1
  %533 = trunc i64 %532 to i32
  store i32 %533, i32* %493, align 1
  store i32 0, i32* %494, align 1
  %534 = load i64, i64* %RCX.i347, align 8
  %535 = xor i64 %534, -2147483648
  %536 = and i64 %535, 4294967295
  store i64 %536, i64* %RCX.i347, align 8
  %537 = trunc i64 %535 to i32
  store i32 %537, i32* %47, align 1
  store i32 0, i32* %281, align 1
  store i32 0, i32* %283, align 1
  store i32 0, i32* %285, align 1
  %538 = add i64 %525, 48
  store i64 %538, i64* %3, align 8
  %539 = load <2 x float>, <2 x float>* %83, align 1
  %540 = extractelement <2 x float> %539, i32 0
  %541 = inttoptr i64 %528 to float*
  store float %540, float* %541, align 4
  %542 = load i64, i64* %3, align 8
  %543 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %544 = add i32 %543, 1
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RAX.i271, align 8
  %546 = icmp eq i32 %543, -1
  %547 = icmp eq i32 %544, 0
  %548 = or i1 %546, %547
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %14, align 1
  %550 = and i32 %544, 255
  %551 = tail call i32 @llvm.ctpop.i32(i32 %550)
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  %554 = xor i8 %553, 1
  store i8 %554, i8* %21, align 1
  %555 = xor i32 %544, %543
  %556 = lshr i32 %555, 4
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  store i8 %558, i8* %27, align 1
  %559 = zext i1 %547 to i8
  store i8 %559, i8* %30, align 1
  %560 = lshr i32 %544, 31
  %561 = trunc i32 %560 to i8
  store i8 %561, i8* %33, align 1
  %562 = lshr i32 %543, 31
  %563 = xor i32 %560, %562
  %564 = add nuw nsw i32 %563, %560
  %565 = icmp eq i32 %564, 2
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %39, align 1
  store i32 %544, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %567 = add i64 %542, -68
  store i64 %567, i64* %3, align 8
  br label %block_.L_40096d

block_.L_4009c7:                                  ; preds = %block_.L_40096d
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RSI.i245, align 8
  store i64 ptrtoint (%G__0x62bcf0_type* @G__0x62bcf0 to i64), i64* %57, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %R9.i, align 8
  %568 = zext i32 %498 to i64
  store i64 %568, i64* %RDI.i594, align 8
  store i64 %568, i64* %RDX.i359, align 8
  %569 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %570 = zext i32 %569 to i64
  store i64 %570, i64* %RCX.i347, align 8
  %571 = add i64 %525, 5625
  %572 = add i64 %525, 56
  %573 = load i64, i64* %6, align 8
  %574 = add i64 %573, -8
  %575 = inttoptr i64 %574 to i64*
  store i64 %572, i64* %575, align 8
  store i64 %574, i64* %6, align 8
  store i64 %571, i64* %3, align 8
  %call2_4009fa = tail call %struct.Memory* @sub_401fc0.dmxpy(%struct.State* nonnull %0, i64 %571, %struct.Memory* %call2_40095d)
  %576 = load i64, i64* %3, align 8
  %577 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %577, align 1
  %578 = load i64, i64* %RBP.i, align 8
  %579 = add i64 %578, -28
  %580 = add i64 %576, 8
  store i64 %580, i64* %3, align 8
  %581 = load <2 x float>, <2 x float>* %83, align 1
  %582 = extractelement <2 x float> %581, i32 0
  %583 = inttoptr i64 %579 to float*
  store float %582, float* %583, align 4
  %584 = load i64, i64* %RBP.i, align 8
  %585 = add i64 %584, -24
  %586 = load i64, i64* %3, align 8
  %587 = add i64 %586, 5
  store i64 %587, i64* %3, align 8
  %588 = load <2 x float>, <2 x float>* %83, align 1
  %589 = extractelement <2 x float> %588, i32 0
  %590 = inttoptr i64 %585 to float*
  store float %589, float* %590, align 4
  %591 = load i64, i64* %3, align 8
  %592 = add i64 %591, 11
  store i64 %592, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %593 = bitcast %union.VectorReg* %250 to i32*
  %594 = getelementptr inbounds i8, i8* %479, i64 4
  %595 = bitcast i8* %594 to i32*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %597 = bitcast i64* %596 to i32*
  %598 = getelementptr inbounds i8, i8* %479, i64 12
  %599 = bitcast i8* %598 to i32*
  %600 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %250, i64 0, i32 0, i32 0, i32 0, i64 0
  %601 = bitcast %union.VectorReg* %221 to i32*
  %602 = getelementptr inbounds i8, i8* %478, i64 4
  %603 = bitcast i8* %602 to i32*
  %604 = bitcast i64* %228 to i32*
  %605 = getelementptr inbounds i8, i8* %478, i64 12
  %606 = bitcast i8* %605 to i32*
  br label %block_.L_400a17

block_.L_400a17:                                  ; preds = %block_.L_400afe, %block_.L_4009c7
  %607 = phi i32 [ 0, %block_.L_4009c7 ], [ %906, %block_.L_400afe ]
  %608 = phi i64 [ %592, %block_.L_4009c7 ], [ %929, %block_.L_400afe ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_4009fa, %block_.L_4009c7 ], [ %836, %block_.L_400afe ]
  %609 = zext i32 %607 to i64
  store i64 %609, i64* %RAX.i271, align 8
  %610 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %611 = sub i32 %607, %610
  %612 = icmp ult i32 %607, %610
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %14, align 1
  %614 = and i32 %611, 255
  %615 = tail call i32 @llvm.ctpop.i32(i32 %614)
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  %618 = xor i8 %617, 1
  store i8 %618, i8* %21, align 1
  %619 = xor i32 %610, %607
  %620 = xor i32 %619, %611
  %621 = lshr i32 %620, 4
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  store i8 %623, i8* %27, align 1
  %624 = icmp eq i32 %611, 0
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %30, align 1
  %626 = lshr i32 %611, 31
  %627 = trunc i32 %626 to i8
  store i8 %627, i8* %33, align 1
  %628 = lshr i32 %607, 31
  %629 = lshr i32 %610, 31
  %630 = xor i32 %629, %628
  %631 = xor i32 %626, %628
  %632 = add nuw nsw i32 %631, %630
  %633 = icmp eq i32 %632, 2
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %39, align 1
  %635 = icmp ne i8 %627, 0
  %636 = xor i1 %635, %633
  %.v94 = select i1 %636, i64 20, i64 270
  %637 = add i64 %608, %.v94
  store i64 %637, i64* %3, align 8
  br i1 %636, label %block_400a2b, label %block_.L_400b25

block_400a2b:                                     ; preds = %block_.L_400a17
  %638 = load i64, i64* %RBP.i, align 8
  %639 = add i64 %638, -28
  %640 = add i64 %637, 5
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to float*
  %642 = load float, float* %641, align 4
  %643 = fpext float %642 to double
  store double %643, double* %218, align 1
  %644 = sext i32 %607 to i64
  store i64 %644, i64* %RAX.i271, align 8
  %645 = shl nsw i64 %644, 2
  %646 = add nsw i64 %645, 6468736
  %647 = add i64 %637, 22
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to float*
  %649 = load float, float* %648, align 4
  %650 = fpext float %649 to double
  store double %650, double* %226, align 1
  %651 = add i64 %637, 9333
  %652 = add i64 %637, 29
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i32*
  %654 = load i32, i32* %653, align 4
  %655 = add i64 %637, 9337
  %656 = inttoptr i64 %655 to i32*
  %657 = load i32, i32* %656, align 4
  %658 = add i64 %637, 9341
  %659 = inttoptr i64 %658 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = add i64 %637, 9345
  %662 = inttoptr i64 %661 to i32*
  %663 = load i32, i32* %662, align 4
  store i32 %654, i32* %593, align 1
  store i32 %657, i32* %595, align 1
  store i32 %660, i32* %597, align 1
  store i32 %663, i32* %599, align 1
  %664 = bitcast double %650 to i64
  %665 = load i64, i64* %228, align 1
  %666 = load i64, i64* %600, align 1
  %667 = load i64, i64* %596, align 1
  %668 = and i64 %666, %664
  %669 = and i64 %667, %665
  %670 = trunc i64 %668 to i32
  %671 = lshr i64 %668, 32
  %672 = trunc i64 %671 to i32
  store i32 %670, i32* %601, align 1
  store i32 %672, i32* %603, align 1
  %673 = trunc i64 %669 to i32
  store i32 %673, i32* %604, align 1
  %674 = lshr i64 %669, 32
  %675 = trunc i64 %674 to i32
  store i32 %675, i32* %606, align 1
  %676 = add i64 %637, 37
  store i64 %676, i64* %3, align 8
  %677 = load double, double* %226, align 1
  %678 = fcmp uno double %643, %677
  br i1 %678, label %679, label %689

; <label>:679:                                    ; preds = %block_400a2b
  %680 = fadd double %643, %677
  %681 = bitcast double %680 to i64
  %682 = and i64 %681, 9221120237041090560
  %683 = icmp eq i64 %682, 9218868437227405312
  %684 = and i64 %681, 2251799813685247
  %685 = icmp ne i64 %684, 0
  %686 = and i1 %683, %685
  br i1 %686, label %687, label %695

; <label>:687:                                    ; preds = %679
  %688 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %676, %struct.Memory* %MEMORY.2)
  %.pre83 = load i64, i64* %3, align 8
  %.pre84 = load i8, i8* %14, align 1
  %.pre85 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit1207

; <label>:689:                                    ; preds = %block_400a2b
  %690 = fcmp ogt double %643, %677
  br i1 %690, label %695, label %691

; <label>:691:                                    ; preds = %689
  %692 = fcmp olt double %643, %677
  br i1 %692, label %695, label %693

; <label>:693:                                    ; preds = %691
  %694 = fcmp oeq double %643, %677
  br i1 %694, label %695, label %699

; <label>:695:                                    ; preds = %693, %691, %689, %679
  %696 = phi i8 [ 0, %689 ], [ 0, %691 ], [ 1, %693 ], [ 1, %679 ]
  %697 = phi i8 [ 0, %689 ], [ 0, %691 ], [ 0, %693 ], [ 1, %679 ]
  %698 = phi i8 [ 0, %689 ], [ 1, %691 ], [ 0, %693 ], [ 1, %679 ]
  store i8 %696, i8* %30, align 1
  store i8 %697, i8* %21, align 1
  store i8 %698, i8* %14, align 1
  br label %699

; <label>:699:                                    ; preds = %695, %693
  %700 = phi i8 [ %696, %695 ], [ %625, %693 ]
  %701 = phi i8 [ %698, %695 ], [ %613, %693 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit1207

routine_ucomisd__xmm1___xmm0.exit1207:            ; preds = %699, %687
  %702 = phi i8 [ %.pre85, %687 ], [ %700, %699 ]
  %703 = phi i8 [ %.pre84, %687 ], [ %701, %699 ]
  %704 = phi i64 [ %.pre83, %687 ], [ %676, %699 ]
  %705 = phi %struct.Memory* [ %688, %687 ], [ %MEMORY.2, %699 ]
  %706 = or i8 %702, %703
  %707 = icmp ne i8 %706, 0
  %.v104 = select i1 %707, i64 24, i64 6
  %708 = add i64 %704, %.v104
  store i64 %708, i64* %3, align 8
  br i1 %707, label %block_.L_400a68, label %block_400a56

block_400a56:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit1207
  %709 = load i64, i64* %RBP.i, align 8
  %710 = add i64 %709, -28
  %711 = add i64 %708, 5
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to float*
  %713 = load float, float* %712, align 4
  %714 = fpext float %713 to double
  store double %714, double* %218, align 1
  %715 = add i64 %709, -896
  %716 = add i64 %708, 13
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to double*
  store double %714, double* %717, align 8
  %718 = load i64, i64* %3, align 8
  %719 = add i64 %718, 41
  store i64 %719, i64* %3, align 8
  br label %block_.L_400a8c

block_.L_400a68:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit1207
  %720 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %721 = sext i32 %720 to i64
  store i64 %721, i64* %RAX.i271, align 8
  %722 = shl nsw i64 %721, 2
  %723 = add nsw i64 %722, 6468736
  %724 = add i64 %708, 17
  store i64 %724, i64* %3, align 8
  %725 = inttoptr i64 %723 to float*
  %726 = load float, float* %725, align 4
  %727 = fpext float %726 to double
  store double %727, double* %218, align 1
  %728 = add i64 %708, 9272
  %729 = add i64 %708, 24
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i32*
  %731 = load i32, i32* %730, align 4
  %732 = add i64 %708, 9276
  %733 = inttoptr i64 %732 to i32*
  %734 = load i32, i32* %733, align 4
  %735 = add i64 %708, 9280
  %736 = inttoptr i64 %735 to i32*
  %737 = load i32, i32* %736, align 4
  %738 = add i64 %708, 9284
  %739 = inttoptr i64 %738 to i32*
  %740 = load i32, i32* %739, align 4
  store i32 %731, i32* %601, align 1
  store i32 %734, i32* %603, align 1
  store i32 %737, i32* %604, align 1
  store i32 %740, i32* %606, align 1
  %741 = bitcast double %727 to i64
  %742 = load i64, i64* %50, align 1
  %743 = load i64, i64* %227, align 1
  %744 = load i64, i64* %228, align 1
  %745 = and i64 %743, %741
  %746 = and i64 %744, %742
  %747 = trunc i64 %745 to i32
  %748 = lshr i64 %745, 32
  %749 = trunc i64 %748 to i32
  store i32 %747, i32* %47, align 1
  store i32 %749, i32* %281, align 1
  %750 = trunc i64 %746 to i32
  store i32 %750, i32* %283, align 1
  %751 = lshr i64 %746, 32
  %752 = trunc i64 %751 to i32
  store i32 %752, i32* %285, align 1
  %753 = load i64, i64* %RBP.i, align 8
  %754 = add i64 %753, -896
  %755 = add i64 %708, 36
  store i64 %755, i64* %3, align 8
  %756 = load i64, i64* %219, align 1
  %757 = inttoptr i64 %754 to i64*
  store i64 %756, i64* %757, align 8
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_400a8c

block_.L_400a8c:                                  ; preds = %block_.L_400a68, %block_400a56
  %758 = phi i64 [ %.pre86, %block_.L_400a68 ], [ %719, %block_400a56 ]
  %759 = load i64, i64* %RBP.i, align 8
  %760 = add i64 %759, -896
  %761 = add i64 %758, 8
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i64*
  %763 = load i64, i64* %762, align 8
  %.cast = bitcast i64 %763 to <2 x i32>
  %.cast20 = bitcast i64 %763 to double
  %764 = fptrunc double %.cast20 to float
  store float %764, float* %46, align 1
  %765 = extractelement <2 x i32> %.cast, i32 1
  store i32 %765, i32* %281, align 1
  store i32 0, i32* %283, align 1
  store i32 0, i32* %285, align 1
  %766 = add i64 %759, -28
  %767 = add i64 %758, 17
  store i64 %767, i64* %3, align 8
  %768 = load <2 x float>, <2 x float>* %83, align 1
  %769 = extractelement <2 x float> %768, i32 0
  %770 = inttoptr i64 %766 to float*
  store float %769, float* %770, align 4
  %771 = load i64, i64* %RBP.i, align 8
  %772 = add i64 %771, -24
  %773 = load i64, i64* %3, align 8
  %774 = add i64 %773, 5
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %772 to float*
  %776 = load float, float* %775, align 4
  %777 = fpext float %776 to double
  store double %777, double* %218, align 1
  %778 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %779 = sext i32 %778 to i64
  store i64 %779, i64* %RAX.i271, align 8
  %780 = shl nsw i64 %779, 2
  %781 = add nsw i64 %780, 6470896
  %782 = add i64 %773, 22
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %781 to float*
  %784 = load float, float* %783, align 4
  %785 = fpext float %784 to double
  store double %785, double* %226, align 1
  %786 = add i64 %773, 9219
  %787 = add i64 %773, 29
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i32*
  %789 = load i32, i32* %788, align 4
  %790 = add i64 %773, 9223
  %791 = inttoptr i64 %790 to i32*
  %792 = load i32, i32* %791, align 4
  %793 = add i64 %773, 9227
  %794 = inttoptr i64 %793 to i32*
  %795 = load i32, i32* %794, align 4
  %796 = add i64 %773, 9231
  %797 = inttoptr i64 %796 to i32*
  %798 = load i32, i32* %797, align 4
  store i32 %789, i32* %593, align 1
  store i32 %792, i32* %595, align 1
  store i32 %795, i32* %597, align 1
  store i32 %798, i32* %599, align 1
  %799 = bitcast double %785 to i64
  %800 = load i64, i64* %228, align 1
  %801 = load i64, i64* %600, align 1
  %802 = load i64, i64* %596, align 1
  %803 = and i64 %801, %799
  %804 = and i64 %802, %800
  %805 = trunc i64 %803 to i32
  %806 = lshr i64 %803, 32
  %807 = trunc i64 %806 to i32
  store i32 %805, i32* %601, align 1
  store i32 %807, i32* %603, align 1
  %808 = trunc i64 %804 to i32
  store i32 %808, i32* %604, align 1
  %809 = lshr i64 %804, 32
  %810 = trunc i64 %809 to i32
  store i32 %810, i32* %606, align 1
  %811 = add i64 %773, 37
  store i64 %811, i64* %3, align 8
  %812 = load double, double* %226, align 1
  %813 = fcmp uno double %777, %812
  br i1 %813, label %814, label %824

; <label>:814:                                    ; preds = %block_.L_400a8c
  %815 = fadd double %777, %812
  %816 = bitcast double %815 to i64
  %817 = and i64 %816, 9221120237041090560
  %818 = icmp eq i64 %817, 9218868437227405312
  %819 = and i64 %816, 2251799813685247
  %820 = icmp ne i64 %819, 0
  %821 = and i1 %818, %820
  br i1 %821, label %822, label %830

; <label>:822:                                    ; preds = %814
  %823 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %811, %struct.Memory* %705)
  %.pre87 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:824:                                    ; preds = %block_.L_400a8c
  %825 = fcmp ogt double %777, %812
  br i1 %825, label %830, label %826

; <label>:826:                                    ; preds = %824
  %827 = fcmp olt double %777, %812
  br i1 %827, label %830, label %828

; <label>:828:                                    ; preds = %826
  %829 = fcmp oeq double %777, %812
  br i1 %829, label %830, label %834

; <label>:830:                                    ; preds = %828, %826, %824, %814
  %831 = phi i8 [ 0, %824 ], [ 0, %826 ], [ 1, %828 ], [ 1, %814 ]
  %832 = phi i8 [ 0, %824 ], [ 0, %826 ], [ 0, %828 ], [ 1, %814 ]
  %833 = phi i8 [ 0, %824 ], [ 1, %826 ], [ 0, %828 ], [ 1, %814 ]
  store i8 %831, i8* %30, align 1
  store i8 %832, i8* %21, align 1
  store i8 %833, i8* %14, align 1
  br label %834

; <label>:834:                                    ; preds = %830, %828
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %834, %822
  %835 = phi i64 [ %.pre87, %822 ], [ %811, %834 ]
  %836 = phi %struct.Memory* [ %823, %822 ], [ %705, %834 ]
  %837 = load i8, i8* %14, align 1
  %838 = load i8, i8* %30, align 1
  %839 = or i8 %838, %837
  %840 = icmp ne i8 %839, 0
  %.v124 = select i1 %840, i64 24, i64 6
  %841 = add i64 %835, %.v124
  store i64 %841, i64* %3, align 8
  br i1 %840, label %block_.L_400ada, label %block_400ac8

block_400ac8:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %842 = load i64, i64* %RBP.i, align 8
  %843 = add i64 %842, -24
  %844 = add i64 %841, 5
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to float*
  %846 = load float, float* %845, align 4
  %847 = fpext float %846 to double
  store double %847, double* %218, align 1
  %848 = add i64 %842, -904
  %849 = add i64 %841, 13
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to double*
  store double %847, double* %850, align 8
  %851 = load i64, i64* %3, align 8
  %852 = add i64 %851, 41
  store i64 %852, i64* %3, align 8
  br label %block_.L_400afe

block_.L_400ada:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %853 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %854 = sext i32 %853 to i64
  store i64 %854, i64* %RAX.i271, align 8
  %855 = shl nsw i64 %854, 2
  %856 = add nsw i64 %855, 6470896
  %857 = add i64 %841, 17
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to float*
  %859 = load float, float* %858, align 4
  %860 = fpext float %859 to double
  store double %860, double* %218, align 1
  %861 = add i64 %841, 9158
  %862 = add i64 %841, 24
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i32*
  %864 = load i32, i32* %863, align 4
  %865 = add i64 %841, 9162
  %866 = inttoptr i64 %865 to i32*
  %867 = load i32, i32* %866, align 4
  %868 = add i64 %841, 9166
  %869 = inttoptr i64 %868 to i32*
  %870 = load i32, i32* %869, align 4
  %871 = add i64 %841, 9170
  %872 = inttoptr i64 %871 to i32*
  %873 = load i32, i32* %872, align 4
  store i32 %864, i32* %601, align 1
  store i32 %867, i32* %603, align 1
  store i32 %870, i32* %604, align 1
  store i32 %873, i32* %606, align 1
  %874 = bitcast double %860 to i64
  %875 = load i64, i64* %50, align 1
  %876 = load i64, i64* %227, align 1
  %877 = load i64, i64* %228, align 1
  %878 = and i64 %876, %874
  %879 = and i64 %877, %875
  %880 = trunc i64 %878 to i32
  %881 = lshr i64 %878, 32
  %882 = trunc i64 %881 to i32
  store i32 %880, i32* %47, align 1
  store i32 %882, i32* %281, align 1
  %883 = trunc i64 %879 to i32
  store i32 %883, i32* %283, align 1
  %884 = lshr i64 %879, 32
  %885 = trunc i64 %884 to i32
  store i32 %885, i32* %285, align 1
  %886 = load i64, i64* %RBP.i, align 8
  %887 = add i64 %886, -904
  %888 = add i64 %841, 36
  store i64 %888, i64* %3, align 8
  %889 = load i64, i64* %219, align 1
  %890 = inttoptr i64 %887 to i64*
  store i64 %889, i64* %890, align 8
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_400afe

block_.L_400afe:                                  ; preds = %block_.L_400ada, %block_400ac8
  %891 = phi i64 [ %.pre88, %block_.L_400ada ], [ %852, %block_400ac8 ]
  %892 = load i64, i64* %RBP.i, align 8
  %893 = add i64 %892, -904
  %894 = add i64 %891, 8
  store i64 %894, i64* %3, align 8
  %895 = inttoptr i64 %893 to i64*
  %896 = load i64, i64* %895, align 8
  %.cast21 = bitcast i64 %896 to <2 x i32>
  %.cast22 = bitcast i64 %896 to double
  %897 = fptrunc double %.cast22 to float
  store float %897, float* %46, align 1
  %898 = extractelement <2 x i32> %.cast21, i32 1
  store i32 %898, i32* %281, align 1
  store i32 0, i32* %283, align 1
  store i32 0, i32* %285, align 1
  %899 = add i64 %892, -24
  %900 = add i64 %891, 17
  store i64 %900, i64* %3, align 8
  %901 = load <2 x float>, <2 x float>* %83, align 1
  %902 = extractelement <2 x float> %901, i32 0
  %903 = inttoptr i64 %899 to float*
  store float %902, float* %903, align 4
  %904 = load i64, i64* %3, align 8
  %905 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %906 = add i32 %905, 1
  %907 = zext i32 %906 to i64
  store i64 %907, i64* %RAX.i271, align 8
  %908 = icmp eq i32 %905, -1
  %909 = icmp eq i32 %906, 0
  %910 = or i1 %908, %909
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %14, align 1
  %912 = and i32 %906, 255
  %913 = tail call i32 @llvm.ctpop.i32(i32 %912)
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  %916 = xor i8 %915, 1
  store i8 %916, i8* %21, align 1
  %917 = xor i32 %906, %905
  %918 = lshr i32 %917, 4
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  store i8 %920, i8* %27, align 1
  %921 = zext i1 %909 to i8
  store i8 %921, i8* %30, align 1
  %922 = lshr i32 %906, 31
  %923 = trunc i32 %922 to i8
  store i8 %923, i8* %33, align 1
  %924 = lshr i32 %905, 31
  %925 = xor i32 %922, %924
  %926 = add nuw nsw i32 %925, %922
  %927 = icmp eq i32 %926, 2
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %39, align 1
  store i32 %906, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %929 = add i64 %904, -248
  store i64 %929, i64* %3, align 8
  br label %block_.L_400a17

block_.L_400b25:                                  ; preds = %block_.L_400a17
  %930 = add i64 %637, 8999
  %931 = add i64 %637, 8
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i32*
  %933 = load i32, i32* %932, align 4
  store i32 %933, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %934 = add i64 %637, 7323
  %935 = add i64 %637, 13
  %936 = load i64, i64* %6, align 8
  %937 = add i64 %936, -8
  %938 = inttoptr i64 %937 to i64*
  store i64 %935, i64* %938, align 8
  store i64 %937, i64* %6, align 8
  store i64 %934, i64* %3, align 8
  %call2_400b2d = tail call %struct.Memory* @sub_4027c0.epslon(%struct.State* nonnull %0, i64 %934, %struct.Memory* %MEMORY.2)
  %939 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402f54_type* @G__0x402f54 to i64), i64* %RSI.i245, align 8
  %940 = add i64 %939, 8986
  %941 = add i64 %939, 18
  store i64 %941, i64* %3, align 8
  %942 = inttoptr i64 %940 to i32*
  %943 = load i32, i32* %942, align 4
  %944 = bitcast %union.VectorReg* %221 to float*
  store i32 %943, i32* %601, align 1
  %945 = bitcast i8* %602 to float*
  store float 0.000000e+00, float* %945, align 1
  %946 = bitcast i64* %228 to float*
  store float 0.000000e+00, float* %946, align 1
  %947 = bitcast i8* %605 to float*
  store float 0.000000e+00, float* %947, align 1
  %948 = load i64, i64* %RBP.i, align 8
  %949 = add i64 %948, -36
  %950 = add i64 %939, 23
  store i64 %950, i64* %3, align 8
  %951 = load <2 x float>, <2 x float>* %83, align 1
  %952 = extractelement <2 x float> %951, i32 0
  %953 = inttoptr i64 %949 to float*
  store float %952, float* %953, align 4
  %954 = load i64, i64* %RBP.i, align 8
  %955 = add i64 %954, -28
  %956 = load i64, i64* %3, align 8
  %957 = add i64 %956, 5
  store i64 %957, i64* %3, align 8
  %958 = inttoptr i64 %955 to i32*
  %959 = load i32, i32* %958, align 4
  store i32 %959, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %960 = bitcast %union.VectorReg* %250 to <2 x i32>*
  %961 = load <2 x i32>, <2 x i32>* %960, align 1
  %962 = bitcast i64* %596 to <2 x i32>*
  %963 = load <2 x i32>, <2 x i32>* %962, align 1
  %964 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %965 = sitofp i32 %964 to float
  %966 = bitcast %union.VectorReg* %250 to float*
  store float %965, float* %966, align 1
  %967 = extractelement <2 x i32> %961, i32 1
  store i32 %967, i32* %595, align 1
  %968 = extractelement <2 x i32> %963, i32 0
  store i32 %968, i32* %597, align 1
  %969 = extractelement <2 x i32> %963, i32 1
  store i32 %969, i32* %599, align 1
  %970 = add i64 %954, -20
  %971 = add i64 %956, 19
  store i64 %971, i64* %3, align 8
  %972 = bitcast %union.VectorReg* %250 to <2 x float>*
  %973 = load <2 x float>, <2 x float>* %972, align 1
  %974 = load <2 x i32>, <2 x i32>* %962, align 1
  %975 = inttoptr i64 %970 to float*
  %976 = load float, float* %975, align 4
  %977 = extractelement <2 x float> %973, i32 0
  %978 = fmul float %977, %976
  store float %978, float* %966, align 1
  %979 = bitcast <2 x float> %973 to <2 x i32>
  %980 = extractelement <2 x i32> %979, i32 1
  store i32 %980, i32* %595, align 1
  %981 = extractelement <2 x i32> %974, i32 0
  store i32 %981, i32* %597, align 1
  %982 = extractelement <2 x i32> %974, i32 1
  store i32 %982, i32* %599, align 1
  %983 = add i64 %954, -24
  %984 = add i64 %956, 24
  store i64 %984, i64* %3, align 8
  %985 = load <2 x float>, <2 x float>* %972, align 1
  %986 = load <2 x i32>, <2 x i32>* %962, align 1
  %987 = inttoptr i64 %983 to float*
  %988 = load float, float* %987, align 4
  %989 = extractelement <2 x float> %985, i32 0
  %990 = fmul float %989, %988
  store float %990, float* %966, align 1
  %991 = bitcast <2 x float> %985 to <2 x i32>
  %992 = extractelement <2 x i32> %991, i32 1
  store i32 %992, i32* %595, align 1
  %993 = extractelement <2 x i32> %986, i32 0
  store i32 %993, i32* %597, align 1
  %994 = extractelement <2 x i32> %986, i32 1
  store i32 %994, i32* %599, align 1
  %995 = add i64 %954, -36
  %996 = add i64 %956, 29
  store i64 %996, i64* %3, align 8
  %997 = load <2 x float>, <2 x float>* %972, align 1
  %998 = load <2 x i32>, <2 x i32>* %962, align 1
  %999 = inttoptr i64 %995 to float*
  %1000 = load float, float* %999, align 4
  %1001 = extractelement <2 x float> %997, i32 0
  %1002 = fmul float %1001, %1000
  store float %1002, float* %966, align 1
  %1003 = bitcast <2 x float> %997 to <2 x i32>
  %1004 = extractelement <2 x i32> %1003, i32 1
  store i32 %1004, i32* %595, align 1
  %1005 = extractelement <2 x i32> %998, i32 0
  store i32 %1005, i32* %597, align 1
  %1006 = extractelement <2 x i32> %998, i32 1
  store i32 %1006, i32* %599, align 1
  %1007 = load <2 x float>, <2 x float>* %83, align 1
  %1008 = load <2 x i32>, <2 x i32>* %257, align 1
  %1009 = load <2 x float>, <2 x float>* %972, align 1
  %1010 = extractelement <2 x float> %1007, i32 0
  %1011 = extractelement <2 x float> %1009, i32 0
  %1012 = fdiv float %1010, %1011
  store float %1012, float* %46, align 1
  %1013 = bitcast <2 x float> %1007 to <2 x i32>
  %1014 = extractelement <2 x i32> %1013, i32 1
  store i32 %1014, i32* %281, align 1
  %1015 = extractelement <2 x i32> %1008, i32 0
  store i32 %1015, i32* %283, align 1
  %1016 = extractelement <2 x i32> %1008, i32 1
  store i32 %1016, i32* %285, align 1
  %1017 = add i64 %954, -32
  %1018 = add i64 %956, 38
  store i64 %1018, i64* %3, align 8
  %1019 = load <2 x float>, <2 x float>* %83, align 1
  %1020 = extractelement <2 x float> %1019, i32 0
  %1021 = inttoptr i64 %1017 to float*
  store float %1020, float* %1021, align 4
  %1022 = load i64, i64* %RBP.i, align 8
  %1023 = add i64 %1022, -36
  %1024 = load i64, i64* %3, align 8
  %1025 = add i64 %1024, 5
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1023 to i32*
  %1027 = load i32, i32* %1026, align 4
  store i32 %1027, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  %1028 = add i64 %1022, -48
  %1029 = add i64 %1024, 10
  store i64 %1029, i64* %3, align 8
  %1030 = load <2 x float>, <2 x float>* %83, align 1
  %1031 = extractelement <2 x float> %1030, i32 0
  %1032 = inttoptr i64 %1028 to float*
  store float %1031, float* %1032, align 4
  %1033 = load i64, i64* %3, align 8
  %1034 = load i32, i32* bitcast (%G_0x62bcf0_type* @G_0x62bcf0 to i32*), align 8
  store i32 %1034, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %1035 = load <2 x float>, <2 x float>* %83, align 1
  %1036 = load <2 x i32>, <2 x i32>* %257, align 1
  %1037 = bitcast %union.VectorReg* %221 to <2 x float>*
  %1038 = load <2 x float>, <2 x float>* %1037, align 1
  %1039 = extractelement <2 x float> %1035, i32 0
  %1040 = extractelement <2 x float> %1038, i32 0
  %1041 = fsub float %1039, %1040
  store float %1041, float* %46, align 1
  %1042 = bitcast <2 x float> %1035 to <2 x i32>
  %1043 = extractelement <2 x i32> %1042, i32 1
  store i32 %1043, i32* %281, align 1
  %1044 = extractelement <2 x i32> %1036, i32 0
  store i32 %1044, i32* %283, align 1
  %1045 = extractelement <2 x i32> %1036, i32 1
  store i32 %1045, i32* %285, align 1
  %1046 = load i64, i64* %RBP.i, align 8
  %1047 = add i64 %1046, -52
  %1048 = add i64 %1033, 18
  store i64 %1048, i64* %3, align 8
  %1049 = load <2 x float>, <2 x float>* %83, align 1
  %1050 = extractelement <2 x float> %1049, i32 0
  %1051 = inttoptr i64 %1047 to float*
  store float %1050, float* %1051, align 4
  %1052 = load i64, i64* %3, align 8
  %1053 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1054 = add i32 %1053, -1
  %1055 = zext i32 %1054 to i64
  store i64 %1055, i64* %RAX.i271, align 8
  %1056 = icmp eq i32 %1053, 0
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %14, align 1
  %1058 = and i32 %1054, 255
  %1059 = tail call i32 @llvm.ctpop.i32(i32 %1058)
  %1060 = trunc i32 %1059 to i8
  %1061 = and i8 %1060, 1
  %1062 = xor i8 %1061, 1
  store i8 %1062, i8* %21, align 1
  %1063 = xor i32 %1054, %1053
  %1064 = lshr i32 %1063, 4
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  store i8 %1066, i8* %27, align 1
  %1067 = icmp eq i32 %1054, 0
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %30, align 1
  %1069 = lshr i32 %1054, 31
  %1070 = trunc i32 %1069 to i8
  store i8 %1070, i8* %33, align 1
  %1071 = lshr i32 %1053, 31
  %1072 = xor i32 %1069, %1071
  %1073 = add nuw nsw i32 %1072, %1071
  %1074 = icmp eq i32 %1073, 2
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %39, align 1
  %1076 = sext i32 %1054 to i64
  store i64 %1076, i64* %RCX.i347, align 8
  %1077 = shl nsw i64 %1076, 2
  %1078 = add nsw i64 %1077, 6470896
  %1079 = add i64 %1052, 22
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1078 to i32*
  %1081 = load i32, i32* %1080, align 4
  store i32 %1081, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %1082 = load <2 x float>, <2 x float>* %83, align 1
  %1083 = load <2 x i32>, <2 x i32>* %257, align 1
  %1084 = load <2 x float>, <2 x float>* %1037, align 1
  %1085 = extractelement <2 x float> %1082, i32 0
  %1086 = extractelement <2 x float> %1084, i32 0
  %1087 = fsub float %1085, %1086
  store float %1087, float* %46, align 1
  %1088 = bitcast <2 x float> %1082 to <2 x i32>
  %1089 = extractelement <2 x i32> %1088, i32 1
  store i32 %1089, i32* %281, align 1
  %1090 = extractelement <2 x i32> %1083, i32 0
  store i32 %1090, i32* %283, align 1
  %1091 = extractelement <2 x i32> %1083, i32 1
  store i32 %1091, i32* %285, align 1
  %1092 = load i64, i64* %RBP.i, align 8
  %1093 = add i64 %1092, -56
  %1094 = add i64 %1052, 31
  store i64 %1094, i64* %3, align 8
  %1095 = load <2 x float>, <2 x float>* %83, align 1
  %1096 = extractelement <2 x float> %1095, i32 0
  %1097 = inttoptr i64 %1093 to float*
  store float %1096, float* %1097, align 4
  %1098 = load i64, i64* %3, align 8
  %1099 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1099, i64* %RDI.i594, align 8
  store i8 0, i8* %AL.i1482, align 1
  %1100 = add i64 %1098, -1722
  %1101 = add i64 %1098, 15
  %1102 = load i64, i64* %6, align 8
  %1103 = add i64 %1102, -8
  %1104 = inttoptr i64 %1103 to i64*
  store i64 %1101, i64* %1104, align 8
  store i64 %1103, i64* %6, align 8
  store i64 %1100, i64* %3, align 8
  %1105 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_400b2d)
  %1106 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402f7b_type* @G__0x402f7b to i64), i64* %RSI.i245, align 8
  %1107 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1107, i64* %RDI.i594, align 8
  %1108 = load i64, i64* %RBP.i, align 8
  %1109 = add i64 %1108, -908
  %1110 = load i32, i32* %EAX.i1471, align 4
  %1111 = add i64 %1106, 24
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1109 to i32*
  store i32 %1110, i32* %1112, align 4
  %1113 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1482, align 1
  %1114 = add i64 %1113, -1761
  %1115 = add i64 %1113, 7
  %1116 = load i64, i64* %6, align 8
  %1117 = add i64 %1116, -8
  %1118 = inttoptr i64 %1117 to i64*
  store i64 %1115, i64* %1118, align 8
  store i64 %1117, i64* %6, align 8
  store i64 %1114, i64* %3, align 8
  %1119 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1105)
  %1120 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402f9e_type* @G__0x402f9e to i64), i64* %RSI.i245, align 8
  %1121 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1121, i64* %RDI.i594, align 8
  %1122 = load i64, i64* %RBP.i, align 8
  %1123 = add i64 %1122, -32
  %1124 = add i64 %1120, 23
  store i64 %1124, i64* %3, align 8
  %1125 = inttoptr i64 %1123 to float*
  %1126 = load float, float* %1125, align 4
  %1127 = fpext float %1126 to double
  store double %1127, double* %218, align 1
  %1128 = add i64 %1122, -28
  %1129 = add i64 %1120, 28
  store i64 %1129, i64* %3, align 8
  %1130 = inttoptr i64 %1128 to float*
  %1131 = load float, float* %1130, align 4
  %1132 = fpext float %1131 to double
  store double %1132, double* %226, align 1
  %1133 = add i64 %1122, -48
  %1134 = add i64 %1120, 33
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1133 to float*
  %1136 = load float, float* %1135, align 4
  %1137 = fpext float %1136 to double
  store double %1137, double* %253, align 1
  %1138 = add i64 %1122, -52
  %1139 = add i64 %1120, 38
  store i64 %1139, i64* %3, align 8
  %1140 = inttoptr i64 %1138 to float*
  %1141 = load float, float* %1140, align 4
  %1142 = fpext float %1141 to double
  store double %1142, double* %267, align 1
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %1144 = add i64 %1122, -56
  %1145 = add i64 %1120, 43
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to float*
  %1147 = load float, float* %1146, align 4
  %1148 = fpext float %1147 to double
  %1149 = bitcast %union.VectorReg* %1143 to double*
  store double %1148, double* %1149, align 1
  %1150 = add i64 %1122, -912
  %1151 = load i32, i32* %EAX.i1471, align 4
  %1152 = add i64 %1120, 49
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1150 to i32*
  store i32 %1151, i32* %1153, align 4
  %1154 = load i64, i64* %3, align 8
  store i8 5, i8* %AL.i1482, align 1
  %1155 = add i64 %1154, -1817
  %1156 = add i64 %1154, 7
  %1157 = load i64, i64* %6, align 8
  %1158 = add i64 %1157, -8
  %1159 = inttoptr i64 %1158 to i64*
  store i64 %1156, i64* %1159, align 8
  store i64 %1158, i64* %6, align 8
  store i64 %1155, i64* %3, align 8
  %1160 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1119)
  %1161 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402fbf_type* @G__0x402fbf to i64), i64* %RSI.i245, align 8
  %1162 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1162, i64* %RDI.i594, align 8
  %1163 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1164 = zext i32 %1163 to i64
  store i64 %1164, i64* %RDX.i359, align 8
  %1165 = load i64, i64* %RBP.i, align 8
  %1166 = add i64 %1165, -916
  %1167 = load i32, i32* %EAX.i1471, align 4
  %1168 = add i64 %1161, 31
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1166 to i32*
  store i32 %1167, i32* %1169, align 4
  %1170 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1482, align 1
  %1171 = add i64 %1170, -1855
  %1172 = add i64 %1170, 7
  %1173 = load i64, i64* %6, align 8
  %1174 = add i64 %1173, -8
  %1175 = inttoptr i64 %1174 to i64*
  store i64 %1172, i64* %1175, align 8
  store i64 %1174, i64* %6, align 8
  store i64 %1171, i64* %3, align 8
  %1176 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1160)
  %1177 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402ff4_type* @G__0x402ff4 to i64), i64* %RSI.i245, align 8
  %1178 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1178, i64* %RDI.i594, align 8
  %1179 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1180 = zext i32 %1179 to i64
  store i64 %1180, i64* %RDX.i359, align 8
  %1181 = load i64, i64* %RBP.i, align 8
  %1182 = add i64 %1181, -920
  %1183 = load i32, i32* %EAX.i1471, align 4
  %1184 = add i64 %1177, 31
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1182 to i32*
  store i32 %1183, i32* %1185, align 4
  %1186 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1482, align 1
  %1187 = add i64 %1186, -1893
  %1188 = add i64 %1186, 7
  %1189 = load i64, i64* %6, align 8
  %1190 = add i64 %1189, -8
  %1191 = inttoptr i64 %1190 to i64*
  store i64 %1188, i64* %1191, align 8
  store i64 %1190, i64* %6, align 8
  store i64 %1187, i64* %3, align 8
  %1192 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1176)
  %1193 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40302a_type* @G__0x40302a to i64), i64* %RSI.i245, align 8
  %1194 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1194, i64* %RDI.i594, align 8
  %1195 = load i64, i64* %RBP.i, align 8
  %1196 = add i64 %1195, -924
  %1197 = load i32, i32* %EAX.i1471, align 4
  %1198 = add i64 %1193, 24
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1196 to i32*
  store i32 %1197, i32* %1199, align 4
  %1200 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1482, align 1
  %1201 = add i64 %1200, -1924
  %1202 = add i64 %1200, 7
  %1203 = load i64, i64* %6, align 8
  %1204 = add i64 %1203, -8
  %1205 = inttoptr i64 %1204 to i64*
  store i64 %1202, i64* %1205, align 8
  store i64 %1204, i64* %6, align 8
  store i64 %1201, i64* %3, align 8
  %1206 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1192)
  %1207 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x403062_type* @G__0x403062 to i64), i64* %RSI.i245, align 8
  %1208 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1208, i64* %RDI.i594, align 8
  %1209 = load i64, i64* %RBP.i, align 8
  %1210 = add i64 %1209, -928
  %1211 = load i32, i32* %EAX.i1471, align 4
  %1212 = add i64 %1207, 24
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1210 to i32*
  store i32 %1211, i32* %1213, align 4
  %1214 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1482, align 1
  %1215 = add i64 %1214, -1955
  %1216 = add i64 %1214, 7
  %1217 = load i64, i64* %6, align 8
  %1218 = add i64 %1217, -8
  %1219 = inttoptr i64 %1218 to i64*
  store i64 %1216, i64* %1219, align 8
  store i64 %1218, i64* %6, align 8
  store i64 %1215, i64* %3, align 8
  %1220 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1206)
  %1221 = load i64, i64* %3, align 8
  store i32 0, i32* %47, align 1
  store i32 0, i32* %281, align 1
  store i32 0, i32* %283, align 1
  store i32 0, i32* %285, align 1
  %1222 = load i64, i64* %RBP.i, align 8
  %1223 = add i64 %1222, -16
  %1224 = add i64 %1221, 8
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i32*
  %1226 = load i32, i32* %1225, align 4
  store i32 %1226, i32* %601, align 1
  store float 0.000000e+00, float* %945, align 1
  store float 0.000000e+00, float* %946, align 1
  store float 0.000000e+00, float* %947, align 1
  %1227 = load <2 x float>, <2 x float>* %1037, align 1
  %1228 = extractelement <2 x float> %1227, i32 0
  store float %1228, float* bitcast (%G_0x62bb48_type* @G_0x62bb48 to float*), align 8
  %1229 = add i64 %1221, 22
  store i64 %1229, i64* %3, align 8
  %1230 = inttoptr i64 %1223 to float*
  %1231 = load float, float* %1230, align 4
  %1232 = fpext float %1231 to double
  store double %1232, double* %226, align 1
  %1233 = add i64 %1221, 26
  store i64 %1233, i64* %3, align 8
  %1234 = load double, double* %218, align 1
  %1235 = fcmp uno double %1232, %1234
  br i1 %1235, label %1236, label %1246

; <label>:1236:                                   ; preds = %block_.L_400b25
  %1237 = fadd double %1232, %1234
  %1238 = bitcast double %1237 to i64
  %1239 = and i64 %1238, 9221120237041090560
  %1240 = icmp eq i64 %1239, 9218868437227405312
  %1241 = and i64 %1238, 2251799813685247
  %1242 = icmp ne i64 %1241, 0
  %1243 = and i1 %1240, %1242
  br i1 %1243, label %1244, label %1252

; <label>:1244:                                   ; preds = %1236
  %1245 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1233, %struct.Memory* %1220)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre74 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1246:                                   ; preds = %block_.L_400b25
  %1247 = fcmp ogt double %1232, %1234
  br i1 %1247, label %1252, label %1248

; <label>:1248:                                   ; preds = %1246
  %1249 = fcmp olt double %1232, %1234
  br i1 %1249, label %1252, label %1250

; <label>:1250:                                   ; preds = %1248
  %1251 = fcmp oeq double %1232, %1234
  br i1 %1251, label %1252, label %1256

; <label>:1252:                                   ; preds = %1250, %1248, %1246, %1236
  %1253 = phi i8 [ 0, %1246 ], [ 0, %1248 ], [ 1, %1250 ], [ 1, %1236 ]
  %1254 = phi i8 [ 0, %1246 ], [ 0, %1248 ], [ 0, %1250 ], [ 1, %1236 ]
  %1255 = phi i8 [ 0, %1246 ], [ 1, %1248 ], [ 0, %1250 ], [ 1, %1236 ]
  store i8 %1253, i8* %30, align 1
  store i8 %1254, i8* %21, align 1
  store i8 %1255, i8* %14, align 1
  br label %1256

; <label>:1256:                                   ; preds = %1252, %1250
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1256, %1244
  %1257 = phi i64 [ %.pre74, %1244 ], [ %1233, %1256 ]
  %1258 = phi i64 [ %.pre, %1244 ], [ %1222, %1256 ]
  %1259 = phi %struct.Memory* [ %1245, %1244 ], [ %1220, %1256 ]
  %1260 = add i64 %1258, -932
  %1261 = load i32, i32* %EAX.i1471, align 4
  %1262 = add i64 %1257, 6
  store i64 %1262, i64* %3, align 8
  %1263 = inttoptr i64 %1260 to i32*
  store i32 %1261, i32* %1263, align 4
  %1264 = load i64, i64* %3, align 8
  %1265 = load i8, i8* %14, align 1
  %1266 = load i8, i8* %30, align 1
  %1267 = or i8 %1266, %1265
  %1268 = icmp ne i8 %1267, 0
  %.v123 = select i1 %1268, i64 84, i64 6
  %1269 = add i64 %1264, %.v123
  store i64 %1269, i64* %3, align 8
  br i1 %1268, label %block_.L_400d0e, label %block_400cc0

block_400cc0:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %1270 = add i64 %1269, 8600
  %1271 = add i64 %1269, 8
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1270 to i64*
  %1273 = load i64, i64* %1272, align 8
  store i64 %1273, i64* %219, align 1
  store double 0.000000e+00, double* %220, align 1
  %1274 = add i64 %1269, 8616
  %1275 = add i64 %1269, 16
  store i64 %1275, i64* %3, align 8
  %1276 = inttoptr i64 %1274 to i64*
  %1277 = load i64, i64* %1276, align 8
  store i64 %1277, i64* %227, align 1
  store double 0.000000e+00, double* %229, align 1
  %1278 = load i64, i64* %RBP.i, align 8
  %1279 = add i64 %1278, -12
  %1280 = add i64 %1269, 21
  store i64 %1280, i64* %3, align 8
  %1281 = inttoptr i64 %1279 to float*
  %1282 = load float, float* %1281, align 4
  %1283 = fpext float %1282 to double
  store double %1283, double* %253, align 1
  %1284 = add i64 %1278, -16
  %1285 = add i64 %1269, 26
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to float*
  %1287 = load float, float* %1286, align 4
  %1288 = fpext float %1287 to double
  store double %1288, double* %267, align 1
  %1289 = bitcast i64 %1277 to double
  %1290 = fmul double %1288, %1289
  %1291 = fdiv double %1283, %1290
  store double %1291, double* %253, align 1
  %1292 = bitcast double %1290 to <2 x i32>
  %1293 = fptrunc double %1291 to float
  store float %1293, float* %944, align 1
  %1294 = extractelement <2 x i32> %1292, i32 1
  store i32 %1294, i32* %603, align 1
  store i32 0, i32* %604, align 1
  store i32 0, i32* %606, align 1
  %1295 = load <2 x float>, <2 x float>* %1037, align 1
  %1296 = extractelement <2 x float> %1295, i32 0
  store float %1296, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
  %1297 = fpext float %1296 to double
  store double %1297, double* %226, align 1
  %1298 = bitcast i64 %1273 to double
  %1299 = fdiv double %1298, %1297
  %.cast23 = bitcast double %1299 to <2 x i32>
  %1300 = fptrunc double %1299 to float
  store float %1300, float* %46, align 1
  %1301 = extractelement <2 x i32> %.cast23, i32 1
  store i32 %1301, i32* %281, align 1
  store i32 0, i32* %283, align 1
  store i32 0, i32* %285, align 1
  %1302 = load <2 x float>, <2 x float>* %83, align 1
  %1303 = extractelement <2 x float> %1302, i32 0
  store float %1303, float* bitcast (%G_0x62bbc0_type* @G_0x62bbc0 to float*), align 8
  %1304 = add i64 %1269, 99
  store i64 %1304, i64* %3, align 8
  br label %block_.L_400d23

block_.L_400d0e:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %1305 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1305, align 1
  %1306 = load <2 x float>, <2 x float>* %83, align 1
  %1307 = extractelement <2 x float> %1306, i32 0
  store float %1307, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
  %1308 = add i64 %1269, 21
  store i64 %1308, i64* %3, align 8
  store float %1307, float* bitcast (%G_0x62bbc0_type* @G_0x62bbc0 to float*), align 8
  %.pre75 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400d23

block_.L_400d23:                                  ; preds = %block_.L_400d0e, %block_400cc0
  %1309 = phi i64 [ %.pre75, %block_.L_400d0e ], [ %1278, %block_400cc0 ]
  %1310 = phi i64 [ %1308, %block_.L_400d0e ], [ %1304, %block_400cc0 ]
  %.pre-phi = bitcast %union.VectorReg* %221 to <2 x i32>*
  %.pre-phi91 = bitcast i64* %228 to <2 x i32>*
  store i64 0, i64* %RDI.i594, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1311 = add i64 %1309, -16
  %1312 = add i64 %1310, 7
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1311 to i32*
  %1314 = load i32, i32* %1313, align 4
  store i32 %1314, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %1315 = add i64 %1309, -8
  %1316 = add i64 %1310, 12
  store i64 %1316, i64* %3, align 8
  %1317 = load <2 x float>, <2 x float>* %83, align 1
  %1318 = load <2 x i32>, <2 x i32>* %257, align 1
  %1319 = inttoptr i64 %1315 to float*
  %1320 = load float, float* %1319, align 4
  %1321 = extractelement <2 x float> %1317, i32 0
  %1322 = fdiv float %1321, %1320
  store float %1322, float* %46, align 1
  %1323 = bitcast <2 x float> %1317 to <2 x i32>
  %1324 = extractelement <2 x i32> %1323, i32 1
  store i32 %1324, i32* %281, align 1
  %1325 = extractelement <2 x i32> %1318, i32 0
  store i32 %1325, i32* %283, align 1
  %1326 = extractelement <2 x i32> %1318, i32 1
  store i32 %1326, i32* %285, align 1
  %1327 = load <2 x float>, <2 x float>* %83, align 1
  %1328 = extractelement <2 x float> %1327, i32 0
  store float %1328, float* bitcast (%G_0x62bbfc_type* @G_0x62bbfc to float*), align 8
  %1329 = add i64 %1310, 6989
  %1330 = add i64 %1310, 26
  %1331 = load i64, i64* %6, align 8
  %1332 = add i64 %1331, -8
  %1333 = inttoptr i64 %1332 to i64*
  store i64 %1330, i64* %1333, align 8
  store i64 %1332, i64* %6, align 8
  store i64 %1329, i64* %3, align 8
  %call2_400d38 = tail call %struct.Memory* @sub_402870.print_time(%struct.State* nonnull %0, i64 %1329, %struct.Memory* %1259)
  %1334 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40306f_type* @G__0x40306f to i64), i64* %RSI.i245, align 8
  %1335 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1335, i64* %RDI.i594, align 8
  store i8 0, i8* %AL.i1482, align 1
  %1336 = add i64 %1334, -2125
  %1337 = add i64 %1334, 25
  %1338 = load i64, i64* %6, align 8
  %1339 = add i64 %1338, -8
  %1340 = inttoptr i64 %1339 to i64*
  store i64 %1337, i64* %1340, align 8
  store i64 %1339, i64* %6, align 8
  store i64 %1336, i64* %3, align 8
  %1341 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_400d38)
  %1342 = load i64, i64* %RBP.i, align 8
  %1343 = add i64 %1342, -64
  %1344 = load i64, i64* %3, align 8
  %1345 = add i64 %1344, 7
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1343 to i32*
  store i32 -3, i32* %1346, align 4
  %1347 = load i64, i64* %RBP.i, align 8
  %1348 = add i64 %1347, -68
  %1349 = load i64, i64* %3, align 8
  %1350 = add i64 %1349, 7
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1348 to i32*
  store i32 100, i32* %1351, align 4
  %1352 = load i64, i64* %RBP.i, align 8
  %1353 = add i64 %1352, -936
  %1354 = load i32, i32* %EAX.i1471, align 4
  %1355 = load i64, i64* %3, align 8
  %1356 = add i64 %1355, 6
  store i64 %1356, i64* %3, align 8
  %1357 = inttoptr i64 %1353 to i32*
  store i32 %1354, i32* %1357, align 4
  %.pre76 = load i64, i64* %3, align 8
  %1358 = bitcast %union.VectorReg* %221 to <4 x i32>*
  br label %block_.L_400d6a

block_.L_400d6a:                                  ; preds = %block_.L_400e2d, %block_.L_400d23
  %1359 = phi i64 [ %.pre76, %block_.L_400d23 ], [ %1597, %block_.L_400e2d ]
  %MEMORY.6 = phi %struct.Memory* [ %1341, %block_.L_400d23 ], [ %1529, %block_.L_400e2d ]
  %1360 = add i64 %1359, -1914
  %1361 = add i64 %1359, 5
  %1362 = load i64, i64* %6, align 8
  %1363 = add i64 %1362, -8
  %1364 = inttoptr i64 %1363 to i64*
  store i64 %1361, i64* %1364, align 8
  store i64 %1363, i64* %6, align 8
  store i64 %1360, i64* %3, align 8
  %call2_400d6a = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %1360, %struct.Memory* %MEMORY.6)
  %1365 = load i64, i64* %RBP.i, align 8
  %1366 = add i64 %1365, -80
  %1367 = load i64, i64* %3, align 8
  %1368 = add i64 %1367, 5
  store i64 %1368, i64* %3, align 8
  %1369 = load <2 x float>, <2 x float>* %83, align 1
  %1370 = extractelement <2 x float> %1369, i32 0
  %1371 = inttoptr i64 %1366 to float*
  store float %1370, float* %1371, align 4
  %1372 = load i64, i64* %RBP.i, align 8
  %1373 = add i64 %1372, -64
  %1374 = load i64, i64* %3, align 8
  %1375 = add i64 %1374, 3
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1373 to i32*
  %1377 = load i32, i32* %1376, align 4
  %1378 = add i32 %1377, 1
  %1379 = zext i32 %1378 to i64
  store i64 %1379, i64* %RAX.i271, align 8
  %1380 = icmp eq i32 %1377, -1
  %1381 = icmp eq i32 %1378, 0
  %1382 = or i1 %1380, %1381
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %14, align 1
  %1384 = and i32 %1378, 255
  %1385 = tail call i32 @llvm.ctpop.i32(i32 %1384)
  %1386 = trunc i32 %1385 to i8
  %1387 = and i8 %1386, 1
  %1388 = xor i8 %1387, 1
  store i8 %1388, i8* %21, align 1
  %1389 = xor i32 %1378, %1377
  %1390 = lshr i32 %1389, 4
  %1391 = trunc i32 %1390 to i8
  %1392 = and i8 %1391, 1
  store i8 %1392, i8* %27, align 1
  %1393 = zext i1 %1381 to i8
  store i8 %1393, i8* %30, align 1
  %1394 = lshr i32 %1378, 31
  %1395 = trunc i32 %1394 to i8
  store i8 %1395, i8* %33, align 1
  %1396 = lshr i32 %1377, 31
  %1397 = xor i32 %1394, %1396
  %1398 = add nuw nsw i32 %1397, %1394
  %1399 = icmp eq i32 %1398, 2
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %39, align 1
  %1401 = add i64 %1374, 9
  store i64 %1401, i64* %3, align 8
  store i32 %1378, i32* %1376, align 4
  %1402 = load i64, i64* %3, align 8
  %1403 = add i64 %1402, 11
  store i64 %1403, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_400d88

block_.L_400d88:                                  ; preds = %block_400d98, %block_.L_400d6a
  %1404 = phi i32 [ %1451, %block_400d98 ], [ 0, %block_.L_400d6a ]
  %1405 = phi i64 [ %1474, %block_400d98 ], [ %1403, %block_.L_400d6a ]
  %1406 = zext i32 %1404 to i64
  store i64 %1406, i64* %RAX.i271, align 8
  %1407 = load i64, i64* %RBP.i, align 8
  %1408 = add i64 %1407, -68
  %1409 = add i64 %1405, 10
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1408 to i32*
  %1411 = load i32, i32* %1410, align 4
  %1412 = sub i32 %1404, %1411
  %1413 = icmp ult i32 %1404, %1411
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %14, align 1
  %1415 = and i32 %1412, 255
  %1416 = tail call i32 @llvm.ctpop.i32(i32 %1415)
  %1417 = trunc i32 %1416 to i8
  %1418 = and i8 %1417, 1
  %1419 = xor i8 %1418, 1
  store i8 %1419, i8* %21, align 1
  %1420 = xor i32 %1411, %1404
  %1421 = xor i32 %1420, %1412
  %1422 = lshr i32 %1421, 4
  %1423 = trunc i32 %1422 to i8
  %1424 = and i8 %1423, 1
  store i8 %1424, i8* %27, align 1
  %1425 = icmp eq i32 %1412, 0
  %1426 = zext i1 %1425 to i8
  store i8 %1426, i8* %30, align 1
  %1427 = lshr i32 %1412, 31
  %1428 = trunc i32 %1427 to i8
  store i8 %1428, i8* %33, align 1
  %1429 = lshr i32 %1404, 31
  %1430 = lshr i32 %1411, 31
  %1431 = xor i32 %1430, %1429
  %1432 = xor i32 %1427, %1429
  %1433 = add nuw nsw i32 %1432, %1431
  %1434 = icmp eq i32 %1433, 2
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %39, align 1
  %1436 = icmp ne i8 %1428, 0
  %1437 = xor i1 %1436, %1434
  %.v95 = select i1 %1437, i64 16, i64 81
  %1438 = add i64 %1405, %.v95
  store i64 %1438, i64* %3, align 8
  br i1 %1437, label %block_400d98, label %block_.L_400dd9

block_400d98:                                     ; preds = %block_.L_400d88
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i347, align 8
  %1439 = add i64 %1407, -20
  store i64 %1439, i64* %57, align 8
  %1440 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1441 = zext i32 %1440 to i64
  store i64 %1441, i64* %RSI.i245, align 8
  %1442 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1443 = zext i32 %1442 to i64
  store i64 %1443, i64* %RDX.i359, align 8
  %1444 = add i64 %1438, 2504
  %1445 = add i64 %1438, 43
  %1446 = load i64, i64* %6, align 8
  %1447 = add i64 %1446, -8
  %1448 = inttoptr i64 %1447 to i64*
  store i64 %1445, i64* %1448, align 8
  store i64 %1447, i64* %6, align 8
  store i64 %1444, i64* %3, align 8
  %call2_400dbe = tail call %struct.Memory* @sub_401760.matgen(%struct.State* nonnull %0, i64 %1444, %struct.Memory* %MEMORY.6)
  %1449 = load i64, i64* %3, align 8
  %1450 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %1451 = add i32 %1450, 1
  %1452 = zext i32 %1451 to i64
  store i64 %1452, i64* %RAX.i271, align 8
  %1453 = icmp eq i32 %1450, -1
  %1454 = icmp eq i32 %1451, 0
  %1455 = or i1 %1453, %1454
  %1456 = zext i1 %1455 to i8
  store i8 %1456, i8* %14, align 1
  %1457 = and i32 %1451, 255
  %1458 = tail call i32 @llvm.ctpop.i32(i32 %1457)
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = xor i8 %1460, 1
  store i8 %1461, i8* %21, align 1
  %1462 = xor i32 %1451, %1450
  %1463 = lshr i32 %1462, 4
  %1464 = trunc i32 %1463 to i8
  %1465 = and i8 %1464, 1
  store i8 %1465, i8* %27, align 1
  %1466 = zext i1 %1454 to i8
  store i8 %1466, i8* %30, align 1
  %1467 = lshr i32 %1451, 31
  %1468 = trunc i32 %1467 to i8
  store i8 %1468, i8* %33, align 1
  %1469 = lshr i32 %1450, 31
  %1470 = xor i32 %1467, %1469
  %1471 = add nuw nsw i32 %1470, %1467
  %1472 = icmp eq i32 %1471, 2
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %39, align 1
  store i32 %1451, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %1474 = add i64 %1449, -59
  store i64 %1474, i64* %3, align 8
  br label %block_.L_400d88

block_.L_400dd9:                                  ; preds = %block_.L_400d88
  %1475 = add i64 %1438, -2025
  %1476 = add i64 %1438, 5
  %1477 = load i64, i64* %6, align 8
  %1478 = add i64 %1477, -8
  %1479 = inttoptr i64 %1478 to i64*
  store i64 %1476, i64* %1479, align 8
  store i64 %1478, i64* %6, align 8
  store i64 %1475, i64* %3, align 8
  %call2_400dd9 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %1475, %struct.Memory* %MEMORY.6)
  %1480 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40308d_type* @G__0x40308d to i64), i64* %RSI.i245, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %1358, align 1
  %1481 = load i64, i64* %RBP.i, align 8
  %1482 = add i64 %1481, -84
  %1483 = add i64 %1480, 18
  store i64 %1483, i64* %3, align 8
  %1484 = load <2 x float>, <2 x float>* %83, align 1
  %1485 = extractelement <2 x float> %1484, i32 0
  %1486 = inttoptr i64 %1482 to float*
  store float %1485, float* %1486, align 4
  %1487 = load i64, i64* %RBP.i, align 8
  %1488 = add i64 %1487, -84
  %1489 = load i64, i64* %3, align 8
  %1490 = add i64 %1489, 5
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1488 to i32*
  %1492 = load i32, i32* %1491, align 4
  store i32 %1492, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %1493 = add i64 %1487, -80
  %1494 = add i64 %1489, 10
  store i64 %1494, i64* %3, align 8
  %1495 = load <2 x float>, <2 x float>* %83, align 1
  %1496 = load <2 x i32>, <2 x i32>* %257, align 1
  %1497 = inttoptr i64 %1493 to float*
  %1498 = load float, float* %1497, align 4
  %1499 = extractelement <2 x float> %1495, i32 0
  %1500 = fsub float %1499, %1498
  store float %1500, float* %46, align 1
  %1501 = bitcast <2 x float> %1495 to <2 x i32>
  %1502 = extractelement <2 x i32> %1501, i32 1
  store i32 %1502, i32* %281, align 1
  %1503 = extractelement <2 x i32> %1496, i32 0
  store i32 %1503, i32* %283, align 1
  %1504 = extractelement <2 x i32> %1496, i32 1
  store i32 %1504, i32* %285, align 1
  %1505 = add i64 %1487, -72
  %1506 = add i64 %1489, 15
  store i64 %1506, i64* %3, align 8
  %1507 = load <2 x float>, <2 x float>* %83, align 1
  %1508 = extractelement <2 x float> %1507, i32 0
  %1509 = inttoptr i64 %1505 to float*
  store float %1508, float* %1509, align 4
  %1510 = load i64, i64* %3, align 8
  %1511 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1511, i64* %RDI.i594, align 8
  %1512 = load i64, i64* %RBP.i, align 8
  %1513 = add i64 %1512, -68
  %1514 = add i64 %1510, 11
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1513 to i32*
  %1516 = load i32, i32* %1515, align 4
  %1517 = zext i32 %1516 to i64
  store i64 %1517, i64* %RDX.i359, align 8
  %1518 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
  %1519 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
  %1520 = extractelement <2 x i32> %1518, i32 0
  store i32 %1520, i32* %47, align 1
  %1521 = extractelement <2 x i32> %1518, i32 1
  store i32 %1521, i32* %281, align 1
  %1522 = extractelement <2 x i32> %1519, i32 0
  store i32 %1522, i32* %283, align 1
  %1523 = extractelement <2 x i32> %1519, i32 1
  store i32 %1523, i32* %285, align 1
  store i8 1, i8* %AL.i1482, align 1
  %1524 = add i64 %1510, -2319
  %1525 = add i64 %1510, 21
  %1526 = load i64, i64* %6, align 8
  %1527 = add i64 %1526, -8
  %1528 = inttoptr i64 %1527 to i64*
  store i64 %1525, i64* %1528, align 8
  store i64 %1527, i64* %6, align 8
  store i64 %1524, i64* %3, align 8
  %1529 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.6)
  %1530 = load i64, i64* %RBP.i, align 8
  %1531 = add i64 %1530, -64
  %1532 = load i64, i64* %3, align 8
  %1533 = add i64 %1532, 4
  store i64 %1533, i64* %3, align 8
  %1534 = inttoptr i64 %1531 to i32*
  %1535 = load i32, i32* %1534, align 4
  store i8 0, i8* %14, align 1
  %1536 = and i32 %1535, 255
  %1537 = tail call i32 @llvm.ctpop.i32(i32 %1536)
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = xor i8 %1539, 1
  store i8 %1540, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1541 = icmp eq i32 %1535, 0
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %30, align 1
  %1543 = lshr i32 %1535, 31
  %1544 = trunc i32 %1543 to i8
  store i8 %1544, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1545 = add i64 %1530, -940
  %1546 = load i32, i32* %EAX.i1471, align 4
  %1547 = add i64 %1532, 10
  store i64 %1547, i64* %3, align 8
  %1548 = inttoptr i64 %1545 to i32*
  store i32 %1546, i32* %1548, align 4
  %1549 = load i64, i64* %3, align 8
  %1550 = add i64 %1549, 15
  %1551 = add i64 %1549, 6
  %1552 = load i8, i8* %33, align 1
  %1553 = icmp ne i8 %1552, 0
  %1554 = load i8, i8* %39, align 1
  %1555 = icmp ne i8 %1554, 0
  %1556 = xor i1 %1553, %1555
  %1557 = select i1 %1556, i64 %1551, i64 %1550
  store i64 %1557, i64* %3, align 8
  br i1 %1556, label %block_400e24, label %block_.L_400e2d

block_400e24:                                     ; preds = %block_.L_400dd9
  %1558 = load i64, i64* %RBP.i, align 8
  %1559 = add i64 %1558, -68
  %1560 = add i64 %1557, 3
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1559 to i32*
  %1562 = load i32, i32* %1561, align 4
  %1563 = shl i32 %1562, 1
  %1564 = icmp slt i32 %1562, 0
  %1565 = icmp slt i32 %1563, 0
  %1566 = xor i1 %1564, %1565
  %1567 = zext i32 %1563 to i64
  store i64 %1567, i64* %RAX.i271, align 8
  %.lobit = lshr i32 %1562, 31
  %1568 = trunc i32 %.lobit to i8
  store i8 %1568, i8* %14, align 1
  %1569 = and i32 %1563, 254
  %1570 = tail call i32 @llvm.ctpop.i32(i32 %1569)
  %1571 = trunc i32 %1570 to i8
  %1572 = and i8 %1571, 1
  %1573 = xor i8 %1572, 1
  store i8 %1573, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1574 = icmp eq i32 %1563, 0
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %30, align 1
  %1576 = lshr i32 %1562, 30
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  store i8 %1578, i8* %33, align 1
  %1579 = zext i1 %1566 to i8
  store i8 %1579, i8* %39, align 1
  %1580 = add i64 %1557, 8
  store i64 %1580, i64* %3, align 8
  store i32 %1563, i32* %1561, align 4
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_400e2d

block_.L_400e2d:                                  ; preds = %block_.L_400dd9, %block_400e24
  %1581 = phi i64 [ %1550, %block_.L_400dd9 ], [ %.pre77, %block_400e24 ]
  %1582 = load i64, i64* %RBP.i, align 8
  %1583 = add i64 %1582, -64
  %1584 = add i64 %1581, 9
  store i64 %1584, i64* %3, align 8
  %1585 = inttoptr i64 %1583 to i32*
  %1586 = load i32, i32* %1585, align 4
  store i8 0, i8* %14, align 1
  %1587 = and i32 %1586, 255
  %1588 = tail call i32 @llvm.ctpop.i32(i32 %1587)
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = xor i8 %1590, 1
  store i8 %1591, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1592 = icmp eq i32 %1586, 0
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %30, align 1
  %1594 = lshr i32 %1586, 31
  %1595 = trunc i32 %1594 to i8
  store i8 %1595, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1596 = icmp ne i8 %1595, 0
  %.v = select i1 %1596, i64 -204, i64 6
  %1597 = add i64 %1584, %.v
  store i64 %1597, i64* %3, align 8
  br i1 %1596, label %block_.L_400d6a, label %block_400e3c

block_400e3c:                                     ; preds = %block_.L_400e2d
  store i64 ptrtoint (%G__0x4030a7_type* @G__0x4030a7 to i64), i64* %RSI.i245, align 8
  %1598 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1598, align 1
  %1599 = add i64 %1582, -72
  %1600 = add i64 %1597, 18
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to float*
  %1602 = load float, float* %1601, align 4
  %1603 = fpext float %1602 to double
  store double %1603, double* %226, align 1
  %1604 = add i64 %1582, -68
  %1605 = add i64 %1597, 23
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i32*
  %1607 = load i32, i32* %1606, align 4
  %1608 = sitofp i32 %1607 to double
  store double %1608, double* %253, align 1
  %1609 = bitcast i64* %228 to <2 x i32>*
  %1610 = load <2 x i32>, <2 x i32>* %1609, align 1
  %1611 = fdiv double %1603, %1608
  %.cast25 = bitcast double %1611 to <2 x i32>
  %1612 = fptrunc double %1611 to float
  store float %1612, float* %944, align 1
  %1613 = extractelement <2 x i32> %.cast25, i32 1
  store i32 %1613, i32* %603, align 1
  %1614 = extractelement <2 x i32> %1610, i32 0
  store i32 %1614, i32* %604, align 1
  %1615 = extractelement <2 x i32> %1610, i32 1
  store i32 %1615, i32* %606, align 1
  %1616 = add i64 %1597, 36
  store i64 %1616, i64* %3, align 8
  %1617 = load <2 x float>, <2 x float>* %1037, align 1
  %1618 = extractelement <2 x float> %1617, i32 0
  store float %1618, float* %1601, align 4
  %1619 = load i64, i64* %3, align 8
  %1620 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1620, i64* %RDI.i594, align 8
  store i8 1, i8* %AL.i1482, align 1
  %1621 = add i64 %1619, -2416
  %1622 = add i64 %1619, 15
  %1623 = load i64, i64* %6, align 8
  %1624 = add i64 %1623, -8
  %1625 = inttoptr i64 %1624 to i64*
  store i64 %1622, i64* %1625, align 8
  store i64 %1624, i64* %6, align 8
  store i64 %1621, i64* %3, align 8
  %1626 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1529)
  %1627 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4030ce_type* @G__0x4030ce to i64), i64* %RSI.i245, align 8
  %1628 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1628, i64* %RDI.i594, align 8
  %1629 = load i64, i64* %RBP.i, align 8
  %1630 = add i64 %1629, -944
  %1631 = load i32, i32* %EAX.i1471, align 4
  %1632 = add i64 %1627, 24
  store i64 %1632, i64* %3, align 8
  %1633 = inttoptr i64 %1630 to i32*
  store i32 %1631, i32* %1633, align 4
  %1634 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1482, align 1
  %1635 = add i64 %1634, -2455
  %1636 = add i64 %1634, 7
  %1637 = load i64, i64* %6, align 8
  %1638 = add i64 %1637, -8
  %1639 = inttoptr i64 %1638 to i64*
  store i64 %1636, i64* %1639, align 8
  store i64 %1638, i64* %6, align 8
  store i64 %1635, i64* %3, align 8
  %1640 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1626)
  %1641 = load i64, i64* %RBP.i, align 8
  %1642 = add i64 %1641, -64
  %1643 = load i64, i64* %3, align 8
  %1644 = add i64 %1643, 7
  store i64 %1644, i64* %3, align 8
  %1645 = inttoptr i64 %1642 to i32*
  store i32 -3, i32* %1645, align 4
  %1646 = load i64, i64* %3, align 8
  store i32 100, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1647 = load i64, i64* %RBP.i, align 8
  %1648 = add i64 %1647, -948
  %1649 = load i32, i32* %EAX.i1471, align 4
  %1650 = add i64 %1646, 17
  store i64 %1650, i64* %3, align 8
  %1651 = inttoptr i64 %1648 to i32*
  store i32 %1649, i32* %1651, align 4
  %.pre78 = load i64, i64* %3, align 8
  %1652 = bitcast %union.VectorReg* %221 to <4 x i32>*
  br label %block_.L_400ea6

block_.L_400ea6:                                  ; preds = %block_.L_400fa0, %block_400e3c
  %1653 = phi i64 [ %.pre78, %block_400e3c ], [ %1876, %block_.L_400fa0 ]
  %MEMORY.9 = phi %struct.Memory* [ %1640, %block_400e3c ], [ %1812, %block_.L_400fa0 ]
  %1654 = add i64 %1653, -2230
  %1655 = add i64 %1653, 5
  %1656 = load i64, i64* %6, align 8
  %1657 = add i64 %1656, -8
  %1658 = inttoptr i64 %1657 to i64*
  store i64 %1655, i64* %1658, align 8
  store i64 %1657, i64* %6, align 8
  store i64 %1654, i64* %3, align 8
  %call2_400ea6 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %1654, %struct.Memory* %MEMORY.9)
  %1659 = load i64, i64* %RBP.i, align 8
  %1660 = add i64 %1659, -80
  %1661 = load i64, i64* %3, align 8
  %1662 = add i64 %1661, 5
  store i64 %1662, i64* %3, align 8
  %1663 = load <2 x float>, <2 x float>* %83, align 1
  %1664 = extractelement <2 x float> %1663, i32 0
  %1665 = inttoptr i64 %1660 to float*
  store float %1664, float* %1665, align 4
  %1666 = load i64, i64* %RBP.i, align 8
  %1667 = add i64 %1666, -64
  %1668 = load i64, i64* %3, align 8
  %1669 = add i64 %1668, 3
  store i64 %1669, i64* %3, align 8
  %1670 = inttoptr i64 %1667 to i32*
  %1671 = load i32, i32* %1670, align 4
  %1672 = add i32 %1671, 1
  %1673 = zext i32 %1672 to i64
  store i64 %1673, i64* %RAX.i271, align 8
  %1674 = icmp eq i32 %1671, -1
  %1675 = icmp eq i32 %1672, 0
  %1676 = or i1 %1674, %1675
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %14, align 1
  %1678 = and i32 %1672, 255
  %1679 = tail call i32 @llvm.ctpop.i32(i32 %1678)
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  %1682 = xor i8 %1681, 1
  store i8 %1682, i8* %21, align 1
  %1683 = xor i32 %1672, %1671
  %1684 = lshr i32 %1683, 4
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  store i8 %1686, i8* %27, align 1
  %1687 = zext i1 %1675 to i8
  store i8 %1687, i8* %30, align 1
  %1688 = lshr i32 %1672, 31
  %1689 = trunc i32 %1688 to i8
  store i8 %1689, i8* %33, align 1
  %1690 = lshr i32 %1671, 31
  %1691 = xor i32 %1688, %1690
  %1692 = add nuw nsw i32 %1691, %1688
  %1693 = icmp eq i32 %1692, 2
  %1694 = zext i1 %1693 to i8
  store i8 %1694, i8* %39, align 1
  %1695 = add i64 %1668, 9
  store i64 %1695, i64* %3, align 8
  store i32 %1672, i32* %1670, align 4
  %1696 = load i64, i64* %3, align 8
  %1697 = add i64 %1696, 11
  store i64 %1697, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_400ec4

block_.L_400ec4:                                  ; preds = %block_400ed8, %block_.L_400ea6
  %1698 = phi i32 [ %1752, %block_400ed8 ], [ 0, %block_.L_400ea6 ]
  %1699 = phi i64 [ %1775, %block_400ed8 ], [ %1697, %block_.L_400ea6 ]
  %1700 = zext i32 %1698 to i64
  store i64 %1700, i64* %RAX.i271, align 8
  %1701 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1702 = sub i32 %1698, %1701
  %1703 = icmp ult i32 %1698, %1701
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %14, align 1
  %1705 = and i32 %1702, 255
  %1706 = tail call i32 @llvm.ctpop.i32(i32 %1705)
  %1707 = trunc i32 %1706 to i8
  %1708 = and i8 %1707, 1
  %1709 = xor i8 %1708, 1
  store i8 %1709, i8* %21, align 1
  %1710 = xor i32 %1701, %1698
  %1711 = xor i32 %1710, %1702
  %1712 = lshr i32 %1711, 4
  %1713 = trunc i32 %1712 to i8
  %1714 = and i8 %1713, 1
  store i8 %1714, i8* %27, align 1
  %1715 = icmp eq i32 %1702, 0
  %1716 = zext i1 %1715 to i8
  store i8 %1716, i8* %30, align 1
  %1717 = lshr i32 %1702, 31
  %1718 = trunc i32 %1717 to i8
  store i8 %1718, i8* %33, align 1
  %1719 = lshr i32 %1698, 31
  %1720 = lshr i32 %1701, 31
  %1721 = xor i32 %1720, %1719
  %1722 = xor i32 %1717, %1719
  %1723 = add nuw nsw i32 %1722, %1721
  %1724 = icmp eq i32 %1723, 2
  %1725 = zext i1 %1724 to i8
  store i8 %1725, i8* %39, align 1
  %1726 = icmp ne i8 %1718, 0
  %1727 = xor i1 %1726, %1724
  %.v96 = select i1 %1727, i64 20, i64 134
  %1728 = add i64 %1699, %.v96
  store i64 %1728, i64* %3, align 8
  br i1 %1727, label %block_400ed8, label %block_.L_400f4a

block_400ed8:                                     ; preds = %block_.L_400ec4
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i347, align 8
  %1729 = load i64, i64* %RBP.i, align 8
  %1730 = add i64 %1729, -20
  store i64 %1730, i64* %57, align 8
  %1731 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1732 = zext i32 %1731 to i64
  store i64 %1732, i64* %RSI.i245, align 8
  %1733 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1734 = zext i32 %1733 to i64
  store i64 %1734, i64* %RDX.i359, align 8
  %1735 = add i64 %1728, 2184
  %1736 = add i64 %1728, 43
  %1737 = load i64, i64* %6, align 8
  %1738 = add i64 %1737, -8
  %1739 = inttoptr i64 %1738 to i64*
  store i64 %1736, i64* %1739, align 8
  store i64 %1738, i64* %6, align 8
  store i64 %1735, i64* %3, align 8
  %call2_400efe = tail call %struct.Memory* @sub_401760.matgen(%struct.State* nonnull %0, i64 %1735, %struct.Memory* %MEMORY.9)
  %1740 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i347, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %57, align 8
  %1741 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1742 = zext i32 %1741 to i64
  store i64 %1742, i64* %RSI.i245, align 8
  %1743 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1744 = zext i32 %1743 to i64
  store i64 %1744, i64* %RDX.i359, align 8
  %1745 = add i64 %1740, 2605
  %1746 = add i64 %1740, 49
  %1747 = load i64, i64* %6, align 8
  %1748 = add i64 %1747, -8
  %1749 = inttoptr i64 %1748 to i64*
  store i64 %1746, i64* %1749, align 8
  store i64 %1748, i64* %6, align 8
  store i64 %1745, i64* %3, align 8
  %call2_400f2f = tail call %struct.Memory* @sub_401930.dgefa(%struct.State* nonnull %0, i64 %1745, %struct.Memory* %MEMORY.9)
  %1750 = load i64, i64* %3, align 8
  %1751 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %1752 = add i32 %1751, 1
  %1753 = zext i32 %1752 to i64
  store i64 %1753, i64* %RAX.i271, align 8
  %1754 = icmp eq i32 %1751, -1
  %1755 = icmp eq i32 %1752, 0
  %1756 = or i1 %1754, %1755
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %14, align 1
  %1758 = and i32 %1752, 255
  %1759 = tail call i32 @llvm.ctpop.i32(i32 %1758)
  %1760 = trunc i32 %1759 to i8
  %1761 = and i8 %1760, 1
  %1762 = xor i8 %1761, 1
  store i8 %1762, i8* %21, align 1
  %1763 = xor i32 %1752, %1751
  %1764 = lshr i32 %1763, 4
  %1765 = trunc i32 %1764 to i8
  %1766 = and i8 %1765, 1
  store i8 %1766, i8* %27, align 1
  %1767 = zext i1 %1755 to i8
  store i8 %1767, i8* %30, align 1
  %1768 = lshr i32 %1752, 31
  %1769 = trunc i32 %1768 to i8
  store i8 %1769, i8* %33, align 1
  %1770 = lshr i32 %1751, 31
  %1771 = xor i32 %1768, %1770
  %1772 = add nuw nsw i32 %1771, %1768
  %1773 = icmp eq i32 %1772, 2
  %1774 = zext i1 %1773 to i8
  store i8 %1774, i8* %39, align 1
  store i32 %1752, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %1775 = add i64 %1750, -112
  store i64 %1775, i64* %3, align 8
  br label %block_.L_400ec4

block_.L_400f4a:                                  ; preds = %block_.L_400ec4
  %1776 = add i64 %1728, -2394
  %1777 = add i64 %1728, 5
  %1778 = load i64, i64* %6, align 8
  %1779 = add i64 %1778, -8
  %1780 = inttoptr i64 %1779 to i64*
  store i64 %1777, i64* %1780, align 8
  store i64 %1779, i64* %6, align 8
  store i64 %1776, i64* %3, align 8
  %call2_400f4a = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %1776, %struct.Memory* %MEMORY.9)
  %1781 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40308d_type* @G__0x40308d to i64), i64* %RSI.i245, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %1652, align 1
  %1782 = load i64, i64* %RBP.i, align 8
  %1783 = add i64 %1782, -80
  %1784 = add i64 %1781, 18
  store i64 %1784, i64* %3, align 8
  %1785 = load <2 x float>, <2 x float>* %83, align 1
  %1786 = inttoptr i64 %1783 to float*
  %1787 = load float, float* %1786, align 4
  %1788 = extractelement <2 x float> %1785, i32 0
  %1789 = fsub float %1788, %1787
  store float %1789, float* %46, align 1
  %1790 = bitcast <2 x float> %1785 to <2 x i32>
  %1791 = extractelement <2 x i32> %1790, i32 1
  store i32 %1791, i32* %281, align 1
  %1792 = add i64 %1782, -84
  %1793 = add i64 %1781, 23
  store i64 %1793, i64* %3, align 8
  %1794 = load <2 x float>, <2 x float>* %83, align 1
  %1795 = extractelement <2 x float> %1794, i32 0
  %1796 = inttoptr i64 %1792 to float*
  store float %1795, float* %1796, align 4
  %1797 = load i64, i64* %3, align 8
  %1798 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1798, i64* %RDI.i594, align 8
  %1799 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1800 = zext i32 %1799 to i64
  store i64 %1800, i64* %RDX.i359, align 8
  %1801 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
  %1802 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
  %1803 = extractelement <2 x i32> %1801, i32 0
  store i32 %1803, i32* %47, align 1
  %1804 = extractelement <2 x i32> %1801, i32 1
  store i32 %1804, i32* %281, align 1
  %1805 = extractelement <2 x i32> %1802, i32 0
  store i32 %1805, i32* %283, align 1
  %1806 = extractelement <2 x i32> %1802, i32 1
  store i32 %1806, i32* %285, align 1
  store i8 1, i8* %AL.i1482, align 1
  %1807 = add i64 %1797, -2678
  %1808 = add i64 %1797, 25
  %1809 = load i64, i64* %6, align 8
  %1810 = add i64 %1809, -8
  %1811 = inttoptr i64 %1810 to i64*
  store i64 %1808, i64* %1811, align 8
  store i64 %1810, i64* %6, align 8
  store i64 %1807, i64* %3, align 8
  %1812 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.9)
  %1813 = load i64, i64* %RBP.i, align 8
  %1814 = add i64 %1813, -64
  %1815 = load i64, i64* %3, align 8
  %1816 = add i64 %1815, 4
  store i64 %1816, i64* %3, align 8
  %1817 = inttoptr i64 %1814 to i32*
  %1818 = load i32, i32* %1817, align 4
  store i8 0, i8* %14, align 1
  %1819 = and i32 %1818, 255
  %1820 = tail call i32 @llvm.ctpop.i32(i32 %1819)
  %1821 = trunc i32 %1820 to i8
  %1822 = and i8 %1821, 1
  %1823 = xor i8 %1822, 1
  store i8 %1823, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1824 = icmp eq i32 %1818, 0
  %1825 = zext i1 %1824 to i8
  store i8 %1825, i8* %30, align 1
  %1826 = lshr i32 %1818, 31
  %1827 = trunc i32 %1826 to i8
  store i8 %1827, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1828 = add i64 %1813, -952
  %1829 = load i32, i32* %EAX.i1471, align 4
  %1830 = add i64 %1815, 10
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1828 to i32*
  store i32 %1829, i32* %1831, align 4
  %1832 = load i64, i64* %3, align 8
  %1833 = add i64 %1832, 23
  %1834 = add i64 %1832, 6
  %1835 = load i8, i8* %33, align 1
  %1836 = icmp ne i8 %1835, 0
  %1837 = load i8, i8* %39, align 1
  %1838 = icmp ne i8 %1837, 0
  %1839 = xor i1 %1836, %1838
  %1840 = select i1 %1839, i64 %1834, i64 %1833
  store i64 %1840, i64* %3, align 8
  br i1 %1839, label %block_400f8f, label %block_.L_400fa0

block_400f8f:                                     ; preds = %block_.L_400f4a
  %1841 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1842 = shl i32 %1841, 1
  %1843 = icmp slt i32 %1841, 0
  %1844 = icmp slt i32 %1842, 0
  %1845 = xor i1 %1843, %1844
  %1846 = zext i32 %1842 to i64
  store i64 %1846, i64* %RAX.i271, align 8
  %.lobit27 = lshr i32 %1841, 31
  %1847 = trunc i32 %.lobit27 to i8
  store i8 %1847, i8* %14, align 1
  %1848 = and i32 %1842, 254
  %1849 = tail call i32 @llvm.ctpop.i32(i32 %1848)
  %1850 = trunc i32 %1849 to i8
  %1851 = and i8 %1850, 1
  %1852 = xor i8 %1851, 1
  store i8 %1852, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1853 = icmp eq i32 %1842, 0
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %30, align 1
  %1855 = lshr i32 %1841, 30
  %1856 = trunc i32 %1855 to i8
  %1857 = and i8 %1856, 1
  store i8 %1857, i8* %33, align 1
  %1858 = zext i1 %1845 to i8
  store i8 %1858, i8* %39, align 1
  %1859 = add i64 %1840, 16
  store i64 %1859, i64* %3, align 8
  store i32 %1842, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  br label %block_.L_400fa0

block_.L_400fa0:                                  ; preds = %block_.L_400f4a, %block_400f8f
  %1860 = phi i64 [ %1833, %block_.L_400f4a ], [ %1859, %block_400f8f ]
  %1861 = load i64, i64* %RBP.i, align 8
  %1862 = add i64 %1861, -64
  %1863 = add i64 %1860, 9
  store i64 %1863, i64* %3, align 8
  %1864 = inttoptr i64 %1862 to i32*
  %1865 = load i32, i32* %1864, align 4
  store i8 0, i8* %14, align 1
  %1866 = and i32 %1865, 255
  %1867 = tail call i32 @llvm.ctpop.i32(i32 %1866)
  %1868 = trunc i32 %1867 to i8
  %1869 = and i8 %1868, 1
  %1870 = xor i8 %1869, 1
  store i8 %1870, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1871 = icmp eq i32 %1865, 0
  %1872 = zext i1 %1871 to i8
  store i8 %1872, i8* %30, align 1
  %1873 = lshr i32 %1865, 31
  %1874 = trunc i32 %1873 to i8
  store i8 %1874, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1875 = icmp ne i8 %1874, 0
  %.v36 = select i1 %1875, i64 -259, i64 6
  %1876 = add i64 %1863, %.v36
  store i64 %1876, i64* %3, align 8
  br i1 %1875, label %block_.L_400ea6, label %block_.L_400fd3

block_.L_400fd3:                                  ; preds = %block_.L_400fa0
  store i32 1000, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  store i64 ptrtoint (%G__0x4030fd_type* @G__0x4030fd to i64), i64* %RSI.i245, align 8
  store i64 0, i64* %RDX.i359, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1877 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1877, i64* %RDI.i594, align 8
  store i8 0, i8* %AL.i1482, align 1
  %1878 = add i64 %1876, -2751
  %1879 = add i64 %1876, 63
  %1880 = load i64, i64* %6, align 8
  %1881 = add i64 %1880, -8
  %1882 = inttoptr i64 %1881 to i64*
  store i64 %1879, i64* %1882, align 8
  store i64 %1881, i64* %6, align 8
  store i64 %1878, i64* %3, align 8
  %1883 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1812)
  %1884 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x403111_type* @G__0x403111 to i64), i64* %RSI.i245, align 8
  %1885 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1885, i64* %RDI.i594, align 8
  %1886 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1887 = zext i32 %1886 to i64
  store i64 %1887, i64* %RDX.i359, align 8
  %1888 = load i64, i64* %RBP.i, align 8
  %1889 = add i64 %1888, -956
  %1890 = load i32, i32* %EAX.i1471, align 4
  %1891 = add i64 %1884, 31
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1889 to i32*
  store i32 %1890, i32* %1892, align 4
  %1893 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1482, align 1
  %1894 = add i64 %1893, -2845
  %1895 = add i64 %1893, 7
  %1896 = load i64, i64* %6, align 8
  %1897 = add i64 %1896, -8
  %1898 = inttoptr i64 %1897 to i64*
  store i64 %1895, i64* %1898, align 8
  store i64 %1897, i64* %6, align 8
  store i64 %1894, i64* %3, align 8
  %1899 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1883)
  %1900 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40302a_type* @G__0x40302a to i64), i64* %RSI.i245, align 8
  %1901 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1901, i64* %RDI.i594, align 8
  %1902 = load i64, i64* %RBP.i, align 8
  %1903 = add i64 %1902, -960
  %1904 = load i32, i32* %EAX.i1471, align 4
  %1905 = add i64 %1900, 24
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1903 to i32*
  store i32 %1904, i32* %1906, align 4
  %1907 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1482, align 1
  %1908 = add i64 %1907, -2876
  %1909 = add i64 %1907, 7
  %1910 = load i64, i64* %6, align 8
  %1911 = add i64 %1910, -8
  %1912 = inttoptr i64 %1911 to i64*
  store i64 %1909, i64* %1912, align 8
  store i64 %1911, i64* %6, align 8
  store i64 %1908, i64* %3, align 8
  %1913 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1899)
  %1914 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x403062_type* @G__0x403062 to i64), i64* %RSI.i245, align 8
  %1915 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1915, i64* %RDI.i594, align 8
  %1916 = load i64, i64* %RBP.i, align 8
  %1917 = add i64 %1916, -964
  %1918 = load i32, i32* %EAX.i1471, align 4
  %1919 = add i64 %1914, 24
  store i64 %1919, i64* %3, align 8
  %1920 = inttoptr i64 %1917 to i32*
  store i32 %1918, i32* %1920, align 4
  %1921 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1482, align 1
  %1922 = add i64 %1921, -2907
  %1923 = add i64 %1921, 7
  %1924 = load i64, i64* %6, align 8
  %1925 = add i64 %1924, -8
  %1926 = inttoptr i64 %1925 to i64*
  store i64 %1923, i64* %1926, align 8
  store i64 %1925, i64* %6, align 8
  store i64 %1922, i64* %3, align 8
  %1927 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1913)
  %1928 = load i64, i64* %3, align 8
  store i32 0, i32* %47, align 1
  store i32 0, i32* %281, align 1
  store i32 0, i32* %283, align 1
  store i32 0, i32* %285, align 1
  %1929 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
  %1930 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
  %1931 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1932 = sitofp i32 %1931 to float
  store float %1932, float* %944, align 1
  %1933 = extractelement <2 x i32> %1929, i32 1
  store i32 %1933, i32* %603, align 1
  %1934 = extractelement <2 x i32> %1930, i32 0
  store i32 %1934, i32* %604, align 1
  %1935 = extractelement <2 x i32> %1930, i32 1
  store i32 %1935, i32* %606, align 1
  %1936 = load i64, i64* %RBP.i, align 8
  %1937 = add i64 %1936, -72
  %1938 = add i64 %1928, 17
  store i64 %1938, i64* %3, align 8
  %1939 = load <2 x float>, <2 x float>* %1037, align 1
  %1940 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
  %1941 = inttoptr i64 %1937 to float*
  %1942 = load float, float* %1941, align 4
  %1943 = extractelement <2 x float> %1939, i32 0
  %1944 = fmul float %1943, %1942
  store float %1944, float* %944, align 1
  %1945 = bitcast <2 x float> %1939 to <2 x i32>
  %1946 = extractelement <2 x i32> %1945, i32 1
  store i32 %1946, i32* %603, align 1
  %1947 = extractelement <2 x i32> %1940, i32 0
  store i32 %1947, i32* %604, align 1
  %1948 = extractelement <2 x i32> %1940, i32 1
  store i32 %1948, i32* %606, align 1
  %1949 = add i64 %1936, -44
  %1950 = add i64 %1928, 22
  store i64 %1950, i64* %3, align 8
  %1951 = load <2 x float>, <2 x float>* %1037, align 1
  %1952 = extractelement <2 x float> %1951, i32 0
  %1953 = inttoptr i64 %1949 to float*
  store float %1952, float* %1953, align 4
  %1954 = load i64, i64* %3, align 8
  %1955 = load <2 x float>, <2 x float>* %83, align 1
  %1956 = extractelement <2 x float> %1955, i32 0
  store float %1956, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  store i32 1, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %1957 = load i64, i64* %RBP.i, align 8
  %1958 = add i64 %1957, -968
  %1959 = load i32, i32* %EAX.i1471, align 4
  %1960 = add i64 %1954, 26
  store i64 %1960, i64* %3, align 8
  %1961 = inttoptr i64 %1958 to i32*
  store i32 %1959, i32* %1961, align 4
  %1962 = bitcast i64* %596 to double*
  %1963 = bitcast %union.VectorReg* %254 to <2 x i32>*
  %1964 = bitcast i64* %263 to <2 x i32>*
  %1965 = bitcast %union.VectorReg* %254 to float*
  %1966 = bitcast %union.VectorReg* %254 to <2 x float>*
  %.pre79 = load i64, i64* %3, align 8
  %.pre80 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %1967 = bitcast i64* %50 to <2 x i32>*
  br label %block_.L_401082

block_.L_401082:                                  ; preds = %block_.L_4011cb, %block_.L_400fd3
  %1968 = phi i32 [ %2415, %block_.L_4011cb ], [ %.pre80, %block_.L_400fd3 ]
  %1969 = phi i64 [ %2438, %block_.L_4011cb ], [ %.pre79, %block_.L_400fd3 ]
  %1970 = add i32 %1968, -6
  %1971 = icmp ult i32 %1968, 6
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %14, align 1
  %1973 = and i32 %1970, 255
  %1974 = tail call i32 @llvm.ctpop.i32(i32 %1973)
  %1975 = trunc i32 %1974 to i8
  %1976 = and i8 %1975, 1
  %1977 = xor i8 %1976, 1
  store i8 %1977, i8* %21, align 1
  %1978 = xor i32 %1970, %1968
  %1979 = lshr i32 %1978, 4
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  store i8 %1981, i8* %27, align 1
  %1982 = icmp eq i32 %1970, 0
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %30, align 1
  %1984 = lshr i32 %1970, 31
  %1985 = trunc i32 %1984 to i8
  store i8 %1985, i8* %33, align 1
  %1986 = lshr i32 %1968, 31
  %1987 = xor i32 %1984, %1986
  %1988 = add nuw nsw i32 %1987, %1986
  %1989 = icmp eq i32 %1988, 2
  %1990 = zext i1 %1989 to i8
  store i8 %1990, i8* %39, align 1
  %1991 = icmp ne i8 %1985, 0
  %1992 = xor i1 %1991, %1989
  %.v97 = select i1 %1992, i64 14, i64 623
  %1993 = add i64 %1969, %.v97
  store i64 %1993, i64* %3, align 8
  br i1 %1992, label %block_401090, label %block_.L_4012f1

block_401090:                                     ; preds = %block_.L_401082
  %1994 = add i64 %1993, -2720
  %1995 = add i64 %1993, 5
  %1996 = load i64, i64* %6, align 8
  %1997 = add i64 %1996, -8
  %1998 = inttoptr i64 %1997 to i64*
  store i64 %1995, i64* %1998, align 8
  store i64 %1997, i64* %6, align 8
  store i64 %1994, i64* %3, align 8
  %call2_401090 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %1994, %struct.Memory* %1927)
  %1999 = load i64, i64* %RBP.i, align 8
  %2000 = add i64 %1999, -40
  %2001 = load i64, i64* %3, align 8
  %2002 = add i64 %2001, 5
  store i64 %2002, i64* %3, align 8
  %2003 = load <2 x float>, <2 x float>* %83, align 1
  %2004 = extractelement <2 x float> %2003, i32 0
  %2005 = inttoptr i64 %2000 to float*
  store float %2004, float* %2005, align 4
  %2006 = load i64, i64* %3, align 8
  %2007 = add i64 %2006, 11
  store i64 %2007, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4010a5

block_.L_4010a5:                                  ; preds = %block_4010b9, %block_401090
  %2008 = phi i32 [ %2062, %block_4010b9 ], [ 0, %block_401090 ]
  %2009 = phi i64 [ %2085, %block_4010b9 ], [ %2007, %block_401090 ]
  %2010 = zext i32 %2008 to i64
  store i64 %2010, i64* %RAX.i271, align 8
  %2011 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2012 = sub i32 %2008, %2011
  %2013 = icmp ult i32 %2008, %2011
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %14, align 1
  %2015 = and i32 %2012, 255
  %2016 = tail call i32 @llvm.ctpop.i32(i32 %2015)
  %2017 = trunc i32 %2016 to i8
  %2018 = and i8 %2017, 1
  %2019 = xor i8 %2018, 1
  store i8 %2019, i8* %21, align 1
  %2020 = xor i32 %2011, %2008
  %2021 = xor i32 %2020, %2012
  %2022 = lshr i32 %2021, 4
  %2023 = trunc i32 %2022 to i8
  %2024 = and i8 %2023, 1
  store i8 %2024, i8* %27, align 1
  %2025 = icmp eq i32 %2012, 0
  %2026 = zext i1 %2025 to i8
  store i8 %2026, i8* %30, align 1
  %2027 = lshr i32 %2012, 31
  %2028 = trunc i32 %2027 to i8
  store i8 %2028, i8* %33, align 1
  %2029 = lshr i32 %2008, 31
  %2030 = lshr i32 %2011, 31
  %2031 = xor i32 %2030, %2029
  %2032 = xor i32 %2027, %2029
  %2033 = add nuw nsw i32 %2032, %2031
  %2034 = icmp eq i32 %2033, 2
  %2035 = zext i1 %2034 to i8
  store i8 %2035, i8* %39, align 1
  %2036 = icmp ne i8 %2028, 0
  %2037 = xor i1 %2036, %2034
  %.v102 = select i1 %2037, i64 20, i64 134
  %2038 = add i64 %2009, %.v102
  store i64 %2038, i64* %3, align 8
  br i1 %2037, label %block_4010b9, label %block_.L_40112b

block_4010b9:                                     ; preds = %block_.L_4010a5
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i347, align 8
  %2039 = load i64, i64* %RBP.i, align 8
  %2040 = add i64 %2039, -20
  store i64 %2040, i64* %57, align 8
  %2041 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %2042 = zext i32 %2041 to i64
  store i64 %2042, i64* %RSI.i245, align 8
  %2043 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2044 = zext i32 %2043 to i64
  store i64 %2044, i64* %RDX.i359, align 8
  %2045 = add i64 %2038, 1703
  %2046 = add i64 %2038, 43
  %2047 = load i64, i64* %6, align 8
  %2048 = add i64 %2047, -8
  %2049 = inttoptr i64 %2048 to i64*
  store i64 %2046, i64* %2049, align 8
  store i64 %2048, i64* %6, align 8
  store i64 %2045, i64* %3, align 8
  %call2_4010df = tail call %struct.Memory* @sub_401760.matgen(%struct.State* nonnull %0, i64 %2045, %struct.Memory* %1927)
  %2050 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i347, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %57, align 8
  %2051 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %2052 = zext i32 %2051 to i64
  store i64 %2052, i64* %RSI.i245, align 8
  %2053 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2054 = zext i32 %2053 to i64
  store i64 %2054, i64* %RDX.i359, align 8
  %2055 = add i64 %2050, 2124
  %2056 = add i64 %2050, 49
  %2057 = load i64, i64* %6, align 8
  %2058 = add i64 %2057, -8
  %2059 = inttoptr i64 %2058 to i64*
  store i64 %2056, i64* %2059, align 8
  store i64 %2058, i64* %6, align 8
  store i64 %2055, i64* %3, align 8
  %call2_401110 = tail call %struct.Memory* @sub_401930.dgefa(%struct.State* nonnull %0, i64 %2055, %struct.Memory* %1927)
  %2060 = load i64, i64* %3, align 8
  %2061 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2062 = add i32 %2061, 1
  %2063 = zext i32 %2062 to i64
  store i64 %2063, i64* %RAX.i271, align 8
  %2064 = icmp eq i32 %2061, -1
  %2065 = icmp eq i32 %2062, 0
  %2066 = or i1 %2064, %2065
  %2067 = zext i1 %2066 to i8
  store i8 %2067, i8* %14, align 1
  %2068 = and i32 %2062, 255
  %2069 = tail call i32 @llvm.ctpop.i32(i32 %2068)
  %2070 = trunc i32 %2069 to i8
  %2071 = and i8 %2070, 1
  %2072 = xor i8 %2071, 1
  store i8 %2072, i8* %21, align 1
  %2073 = xor i32 %2062, %2061
  %2074 = lshr i32 %2073, 4
  %2075 = trunc i32 %2074 to i8
  %2076 = and i8 %2075, 1
  store i8 %2076, i8* %27, align 1
  %2077 = zext i1 %2065 to i8
  store i8 %2077, i8* %30, align 1
  %2078 = lshr i32 %2062, 31
  %2079 = trunc i32 %2078 to i8
  store i8 %2079, i8* %33, align 1
  %2080 = lshr i32 %2061, 31
  %2081 = xor i32 %2078, %2080
  %2082 = add nuw nsw i32 %2081, %2078
  %2083 = icmp eq i32 %2082, 2
  %2084 = zext i1 %2083 to i8
  store i8 %2084, i8* %39, align 1
  store i32 %2062, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2085 = add i64 %2060, -112
  store i64 %2085, i64* %3, align 8
  br label %block_.L_4010a5

block_.L_40112b:                                  ; preds = %block_.L_4010a5
  %2086 = add i64 %2038, -2875
  %2087 = add i64 %2038, 5
  %2088 = load i64, i64* %6, align 8
  %2089 = add i64 %2088, -8
  %2090 = inttoptr i64 %2089 to i64*
  store i64 %2087, i64* %2090, align 8
  store i64 %2089, i64* %6, align 8
  store i64 %2086, i64* %3, align 8
  %call2_40112b = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %2086, %struct.Memory* %1927)
  %2091 = load i64, i64* %RBP.i, align 8
  %2092 = add i64 %2091, -40
  %2093 = load i64, i64* %3, align 8
  %2094 = add i64 %2093, 5
  store i64 %2094, i64* %3, align 8
  %2095 = load <2 x float>, <2 x float>* %83, align 1
  %2096 = load <2 x i32>, <2 x i32>* %257, align 1
  %2097 = inttoptr i64 %2092 to float*
  %2098 = load float, float* %2097, align 4
  %2099 = extractelement <2 x float> %2095, i32 0
  %2100 = fsub float %2099, %2098
  store float %2100, float* %46, align 1
  %2101 = bitcast <2 x float> %2095 to <2 x i32>
  %2102 = extractelement <2 x i32> %2101, i32 1
  store i32 %2102, i32* %281, align 1
  %2103 = extractelement <2 x i32> %2096, i32 0
  store i32 %2103, i32* %283, align 1
  %2104 = extractelement <2 x i32> %2096, i32 1
  store i32 %2104, i32* %285, align 1
  %2105 = add i64 %2091, -44
  %2106 = add i64 %2093, 10
  store i64 %2106, i64* %3, align 8
  %2107 = load <2 x float>, <2 x float>* %83, align 1
  %2108 = load <2 x i32>, <2 x i32>* %257, align 1
  %2109 = inttoptr i64 %2105 to float*
  %2110 = load float, float* %2109, align 4
  %2111 = extractelement <2 x float> %2107, i32 0
  %2112 = fsub float %2111, %2110
  store float %2112, float* %46, align 1
  %2113 = bitcast <2 x float> %2107 to <2 x i32>
  %2114 = extractelement <2 x i32> %2113, i32 1
  store i32 %2114, i32* %281, align 1
  %2115 = extractelement <2 x i32> %2108, i32 0
  store i32 %2115, i32* %283, align 1
  %2116 = extractelement <2 x i32> %2108, i32 1
  store i32 %2116, i32* %285, align 1
  %2117 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
  %2118 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
  %2119 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2120 = sitofp i32 %2119 to float
  store float %2120, float* %944, align 1
  %2121 = extractelement <2 x i32> %2117, i32 1
  store i32 %2121, i32* %603, align 1
  %2122 = extractelement <2 x i32> %2118, i32 0
  store i32 %2122, i32* %604, align 1
  %2123 = extractelement <2 x i32> %2118, i32 1
  store i32 %2123, i32* %606, align 1
  %2124 = load <2 x float>, <2 x float>* %83, align 1
  %2125 = load <2 x i32>, <2 x i32>* %257, align 1
  %2126 = load <2 x float>, <2 x float>* %1037, align 1
  %2127 = extractelement <2 x float> %2124, i32 0
  %2128 = extractelement <2 x float> %2126, i32 0
  %2129 = fdiv float %2127, %2128
  store float %2129, float* %46, align 1
  %2130 = bitcast <2 x float> %2124 to <2 x i32>
  %2131 = extractelement <2 x i32> %2130, i32 1
  store i32 %2131, i32* %281, align 1
  %2132 = extractelement <2 x i32> %2125, i32 0
  store i32 %2132, i32* %283, align 1
  %2133 = extractelement <2 x i32> %2125, i32 1
  store i32 %2133, i32* %285, align 1
  %2134 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2135 = sext i32 %2134 to i64
  store i64 %2135, i64* %RAX.i271, align 8
  %2136 = shl nsw i64 %2135, 2
  %2137 = add nsw i64 %2136, 6470352
  %2138 = add i64 %2093, 40
  store i64 %2138, i64* %3, align 8
  %2139 = load <2 x float>, <2 x float>* %83, align 1
  %2140 = extractelement <2 x float> %2139, i32 0
  %2141 = inttoptr i64 %2137 to float*
  store float %2140, float* %2141, align 4
  %2142 = load i64, i64* %3, align 8
  %2143 = add i64 %2142, -2920
  %2144 = add i64 %2142, 5
  %2145 = load i64, i64* %6, align 8
  %2146 = add i64 %2145, -8
  %2147 = inttoptr i64 %2146 to i64*
  store i64 %2144, i64* %2147, align 8
  store i64 %2146, i64* %6, align 8
  store i64 %2143, i64* %3, align 8
  %call2_401158 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %2143, %struct.Memory* %1927)
  %2148 = load i64, i64* %RBP.i, align 8
  %2149 = add i64 %2148, -40
  %2150 = load i64, i64* %3, align 8
  %2151 = add i64 %2150, 5
  store i64 %2151, i64* %3, align 8
  %2152 = load <2 x float>, <2 x float>* %83, align 1
  %2153 = extractelement <2 x float> %2152, i32 0
  %2154 = inttoptr i64 %2149 to float*
  store float %2153, float* %2154, align 4
  %2155 = load i64, i64* %3, align 8
  %2156 = add i64 %2155, 11
  store i64 %2156, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_40116d

block_.L_40116d:                                  ; preds = %block_401181, %block_.L_40112b
  %2157 = phi i32 [ %2199, %block_401181 ], [ 0, %block_.L_40112b ]
  %2158 = phi i64 [ %2222, %block_401181 ], [ %2156, %block_.L_40112b ]
  %2159 = zext i32 %2157 to i64
  store i64 %2159, i64* %RAX.i271, align 8
  %2160 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2161 = sub i32 %2157, %2160
  %2162 = icmp ult i32 %2157, %2160
  %2163 = zext i1 %2162 to i8
  store i8 %2163, i8* %14, align 1
  %2164 = and i32 %2161, 255
  %2165 = tail call i32 @llvm.ctpop.i32(i32 %2164)
  %2166 = trunc i32 %2165 to i8
  %2167 = and i8 %2166, 1
  %2168 = xor i8 %2167, 1
  store i8 %2168, i8* %21, align 1
  %2169 = xor i32 %2160, %2157
  %2170 = xor i32 %2169, %2161
  %2171 = lshr i32 %2170, 4
  %2172 = trunc i32 %2171 to i8
  %2173 = and i8 %2172, 1
  store i8 %2173, i8* %27, align 1
  %2174 = icmp eq i32 %2161, 0
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %30, align 1
  %2176 = lshr i32 %2161, 31
  %2177 = trunc i32 %2176 to i8
  store i8 %2177, i8* %33, align 1
  %2178 = lshr i32 %2157, 31
  %2179 = lshr i32 %2160, 31
  %2180 = xor i32 %2179, %2178
  %2181 = xor i32 %2176, %2178
  %2182 = add nuw nsw i32 %2181, %2180
  %2183 = icmp eq i32 %2182, 2
  %2184 = zext i1 %2183 to i8
  store i8 %2184, i8* %39, align 1
  %2185 = icmp ne i8 %2177, 0
  %2186 = xor i1 %2185, %2183
  %.v103 = select i1 %2186, i64 20, i64 94
  %2187 = add i64 %2158, %.v103
  store i64 %2187, i64* %3, align 8
  br i1 %2186, label %block_401181, label %block_.L_4011cb

block_401181:                                     ; preds = %block_.L_40116d
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i347, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %57, align 8
  store i64 0, i64* %R9.i, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2188 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %2189 = zext i32 %2188 to i64
  store i64 %2189, i64* %RSI.i245, align 8
  %2190 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2191 = zext i32 %2190 to i64
  store i64 %2191, i64* %RDX.i359, align 8
  %2192 = add i64 %2187, 2751
  %2193 = add i64 %2187, 52
  %2194 = load i64, i64* %6, align 8
  %2195 = add i64 %2194, -8
  %2196 = inttoptr i64 %2195 to i64*
  store i64 %2193, i64* %2196, align 8
  store i64 %2195, i64* %6, align 8
  store i64 %2192, i64* %3, align 8
  %call2_4011b0 = tail call %struct.Memory* @sub_401c40.dgesl(%struct.State* nonnull %0, i64 %2192, %struct.Memory* %1927)
  %2197 = load i64, i64* %3, align 8
  %2198 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2199 = add i32 %2198, 1
  %2200 = zext i32 %2199 to i64
  store i64 %2200, i64* %RAX.i271, align 8
  %2201 = icmp eq i32 %2198, -1
  %2202 = icmp eq i32 %2199, 0
  %2203 = or i1 %2201, %2202
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %14, align 1
  %2205 = and i32 %2199, 255
  %2206 = tail call i32 @llvm.ctpop.i32(i32 %2205)
  %2207 = trunc i32 %2206 to i8
  %2208 = and i8 %2207, 1
  %2209 = xor i8 %2208, 1
  store i8 %2209, i8* %21, align 1
  %2210 = xor i32 %2199, %2198
  %2211 = lshr i32 %2210, 4
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  store i8 %2213, i8* %27, align 1
  %2214 = zext i1 %2202 to i8
  store i8 %2214, i8* %30, align 1
  %2215 = lshr i32 %2199, 31
  %2216 = trunc i32 %2215 to i8
  store i8 %2216, i8* %33, align 1
  %2217 = lshr i32 %2198, 31
  %2218 = xor i32 %2215, %2217
  %2219 = add nuw nsw i32 %2218, %2215
  %2220 = icmp eq i32 %2219, 2
  %2221 = zext i1 %2220 to i8
  store i8 %2221, i8* %39, align 1
  store i32 %2199, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2222 = add i64 %2197, -72
  store i64 %2222, i64* %3, align 8
  br label %block_.L_40116d

block_.L_4011cb:                                  ; preds = %block_.L_40116d
  %2223 = add i64 %2187, -3035
  %2224 = add i64 %2187, 5
  %2225 = load i64, i64* %6, align 8
  %2226 = add i64 %2225, -8
  %2227 = inttoptr i64 %2226 to i64*
  store i64 %2224, i64* %2227, align 8
  store i64 %2226, i64* %6, align 8
  store i64 %2223, i64* %3, align 8
  %call2_4011cb = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %2223, %struct.Memory* %1927)
  %2228 = load i64, i64* %3, align 8
  %2229 = add i64 %2228, 7304
  %2230 = add i64 %2228, 8
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to i64*
  %2232 = load i64, i64* %2231, align 8
  store i64 %2232, i64* %227, align 1
  store double 0.000000e+00, double* %229, align 1
  %2233 = add i64 %2228, 7320
  %2234 = add i64 %2228, 16
  store i64 %2234, i64* %3, align 8
  %2235 = inttoptr i64 %2233 to i64*
  %2236 = load i64, i64* %2235, align 8
  store i64 %2236, i64* %600, align 1
  store double 0.000000e+00, double* %1962, align 1
  %2237 = load i64, i64* %RBP.i, align 8
  %2238 = add i64 %2237, -40
  %2239 = add i64 %2228, 21
  store i64 %2239, i64* %3, align 8
  %2240 = load <2 x float>, <2 x float>* %83, align 1
  %2241 = load <2 x i32>, <2 x i32>* %257, align 1
  %2242 = inttoptr i64 %2238 to float*
  %2243 = load float, float* %2242, align 4
  %2244 = extractelement <2 x float> %2240, i32 0
  %2245 = fsub float %2244, %2243
  store float %2245, float* %46, align 1
  %2246 = bitcast <2 x float> %2240 to <2 x i32>
  %2247 = extractelement <2 x i32> %2246, i32 1
  store i32 %2247, i32* %281, align 1
  %2248 = extractelement <2 x i32> %2241, i32 0
  store i32 %2248, i32* %283, align 1
  %2249 = extractelement <2 x i32> %2241, i32 1
  store i32 %2249, i32* %285, align 1
  %2250 = load <2 x i32>, <2 x i32>* %1963, align 1
  %2251 = load <2 x i32>, <2 x i32>* %1964, align 1
  %2252 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2253 = sitofp i32 %2252 to float
  store float %2253, float* %1965, align 1
  %2254 = extractelement <2 x i32> %2250, i32 1
  store i32 %2254, i32* %262, align 1
  %2255 = extractelement <2 x i32> %2251, i32 0
  store i32 %2255, i32* %264, align 1
  %2256 = extractelement <2 x i32> %2251, i32 1
  store i32 %2256, i32* %266, align 1
  %2257 = load <2 x float>, <2 x float>* %83, align 1
  %2258 = load <2 x i32>, <2 x i32>* %257, align 1
  %2259 = load <2 x float>, <2 x float>* %1966, align 1
  %2260 = extractelement <2 x float> %2257, i32 0
  %2261 = extractelement <2 x float> %2259, i32 0
  %2262 = fdiv float %2260, %2261
  store float %2262, float* %46, align 1
  %2263 = bitcast <2 x float> %2257 to <2 x i32>
  %2264 = extractelement <2 x i32> %2263, i32 1
  store i32 %2264, i32* %281, align 1
  %2265 = extractelement <2 x i32> %2258, i32 0
  store i32 %2265, i32* %283, align 1
  %2266 = extractelement <2 x i32> %2258, i32 1
  store i32 %2266, i32* %285, align 1
  %2267 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2268 = sext i32 %2267 to i64
  %2269 = shl nsw i64 %2268, 2
  %2270 = add nsw i64 %2269, 6470412
  %2271 = add i64 %2228, 51
  store i64 %2271, i64* %3, align 8
  %2272 = load <2 x float>, <2 x float>* %83, align 1
  %2273 = extractelement <2 x float> %2272, i32 0
  %2274 = inttoptr i64 %2270 to float*
  store float %2273, float* %2274, align 4
  %2275 = load i64, i64* %3, align 8
  %2276 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2277 = sext i32 %2276 to i64
  store i64 %2277, i64* %RAX.i271, align 8
  %2278 = shl nsw i64 %2277, 2
  %2279 = add nsw i64 %2278, 6470352
  %2280 = add i64 %2275, 17
  store i64 %2280, i64* %3, align 8
  %2281 = inttoptr i64 %2279 to i32*
  %2282 = load i32, i32* %2281, align 4
  store i32 %2282, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  store i64 %2277, i64* %RAX.i271, align 8
  %2283 = add nsw i64 %2278, 6470412
  %2284 = add i64 %2275, 34
  store i64 %2284, i64* %3, align 8
  %2285 = load <2 x float>, <2 x float>* %83, align 1
  %2286 = load <2 x i32>, <2 x i32>* %257, align 1
  %2287 = inttoptr i64 %2283 to float*
  %2288 = load float, float* %2287, align 4
  %2289 = extractelement <2 x float> %2285, i32 0
  %2290 = fadd float %2289, %2288
  store float %2290, float* %46, align 1
  %2291 = bitcast <2 x float> %2285 to <2 x i32>
  %2292 = extractelement <2 x i32> %2291, i32 1
  store i32 %2292, i32* %281, align 1
  %2293 = extractelement <2 x i32> %2286, i32 0
  store i32 %2293, i32* %283, align 1
  %2294 = extractelement <2 x i32> %2286, i32 1
  store i32 %2294, i32* %285, align 1
  %2295 = load i64, i64* %RBP.i, align 8
  %2296 = add i64 %2295, -16
  %2297 = add i64 %2275, 39
  store i64 %2297, i64* %3, align 8
  %2298 = load <2 x float>, <2 x float>* %83, align 1
  %2299 = extractelement <2 x float> %2298, i32 0
  %2300 = inttoptr i64 %2296 to float*
  store float %2299, float* %2300, align 4
  %2301 = load i64, i64* %RBP.i, align 8
  %2302 = add i64 %2301, -16
  %2303 = load i64, i64* %3, align 8
  %2304 = add i64 %2303, 5
  store i64 %2304, i64* %3, align 8
  %2305 = inttoptr i64 %2302 to i32*
  %2306 = load i32, i32* %2305, align 4
  store i32 %2306, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %2307 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2308 = sext i32 %2307 to i64
  store i64 %2308, i64* %RAX.i271, align 8
  %2309 = shl nsw i64 %2308, 2
  %2310 = add nsw i64 %2309, 6470472
  %2311 = add i64 %2303, 22
  store i64 %2311, i64* %3, align 8
  %2312 = load <2 x float>, <2 x float>* %83, align 1
  %2313 = extractelement <2 x float> %2312, i32 0
  %2314 = inttoptr i64 %2310 to float*
  store float %2313, float* %2314, align 4
  %2315 = load i64, i64* %RBP.i, align 8
  %2316 = add i64 %2315, -12
  %2317 = load i64, i64* %3, align 8
  %2318 = add i64 %2317, 5
  store i64 %2318, i64* %3, align 8
  %2319 = inttoptr i64 %2316 to float*
  %2320 = load float, float* %2319, align 4
  %2321 = fpext float %2320 to double
  store double %2321, double* %218, align 1
  %2322 = add i64 %2315, -16
  %2323 = add i64 %2317, 10
  store i64 %2323, i64* %3, align 8
  %2324 = inttoptr i64 %2322 to float*
  %2325 = load float, float* %2324, align 4
  %2326 = fpext float %2325 to double
  store double %2326, double* %267, align 1
  %2327 = load double, double* %253, align 1
  %2328 = fmul double %2326, %2327
  store double %2328, double* %253, align 1
  %2329 = load <2 x i32>, <2 x i32>* %1967, align 1
  %2330 = fdiv double %2321, %2328
  %.cast28 = bitcast double %2330 to <2 x i32>
  %2331 = fptrunc double %2330 to float
  store float %2331, float* %46, align 1
  %2332 = extractelement <2 x i32> %.cast28, i32 1
  store i32 %2332, i32* %281, align 1
  %2333 = extractelement <2 x i32> %2329, i32 0
  store i32 %2333, i32* %283, align 1
  %2334 = extractelement <2 x i32> %2329, i32 1
  store i32 %2334, i32* %285, align 1
  %2335 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2336 = sext i32 %2335 to i64
  %2337 = shl nsw i64 %2336, 2
  %2338 = add nsw i64 %2337, 6470532
  %2339 = add i64 %2317, 39
  store i64 %2339, i64* %3, align 8
  %2340 = load <2 x float>, <2 x float>* %83, align 1
  %2341 = extractelement <2 x float> %2340, i32 0
  %2342 = inttoptr i64 %2338 to float*
  store float %2341, float* %2342, align 4
  %2343 = load i64, i64* %3, align 8
  %2344 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2345 = sext i32 %2344 to i64
  store i64 %2345, i64* %RAX.i271, align 8
  %2346 = shl nsw i64 %2345, 2
  %2347 = add nsw i64 %2346, 6470532
  %2348 = add i64 %2343, 17
  store i64 %2348, i64* %3, align 8
  %2349 = inttoptr i64 %2347 to float*
  %2350 = load float, float* %2349, align 4
  %2351 = fpext float %2350 to double
  %2352 = load double, double* %226, align 1
  %2353 = fdiv double %2352, %2351
  store double %2353, double* %226, align 1
  %2354 = bitcast double %2351 to <2 x i32>
  %2355 = load <2 x i32>, <2 x i32>* %257, align 1
  %2356 = fptrunc double %2353 to float
  store float %2356, float* %46, align 1
  %2357 = extractelement <2 x i32> %2354, i32 1
  store i32 %2357, i32* %281, align 1
  %2358 = extractelement <2 x i32> %2355, i32 0
  store i32 %2358, i32* %283, align 1
  %2359 = extractelement <2 x i32> %2355, i32 1
  store i32 %2359, i32* %285, align 1
  store i64 %2345, i64* %RAX.i271, align 8
  %2360 = add nsw i64 %2346, 6470592
  %2361 = add i64 %2343, 42
  store i64 %2361, i64* %3, align 8
  %2362 = load <2 x float>, <2 x float>* %83, align 1
  %2363 = extractelement <2 x float> %2362, i32 0
  %2364 = inttoptr i64 %2360 to float*
  store float %2363, float* %2364, align 4
  %2365 = load i64, i64* %RBP.i, align 8
  %2366 = add i64 %2365, -16
  %2367 = load i64, i64* %3, align 8
  %2368 = add i64 %2367, 5
  store i64 %2368, i64* %3, align 8
  %2369 = inttoptr i64 %2366 to i32*
  %2370 = load i32, i32* %2369, align 4
  store i32 %2370, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %2371 = add i64 %2365, -8
  %2372 = add i64 %2367, 10
  store i64 %2372, i64* %3, align 8
  %2373 = load <2 x float>, <2 x float>* %83, align 1
  %2374 = inttoptr i64 %2371 to float*
  %2375 = load float, float* %2374, align 4
  %2376 = extractelement <2 x float> %2373, i32 0
  %2377 = fdiv float %2376, %2375
  store float %2377, float* %46, align 1
  %2378 = bitcast <2 x float> %2373 to <2 x i32>
  %2379 = extractelement <2 x i32> %2378, i32 1
  store i32 %2379, i32* %281, align 1
  %2380 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2381 = sext i32 %2380 to i64
  %2382 = shl nsw i64 %2381, 2
  %2383 = add nsw i64 %2382, 6470652
  %2384 = add i64 %2367, 27
  store i64 %2384, i64* %3, align 8
  %2385 = load <2 x float>, <2 x float>* %83, align 1
  %2386 = extractelement <2 x float> %2385, i32 0
  %2387 = inttoptr i64 %2383 to float*
  store float %2386, float* %2387, align 4
  %2388 = load i64, i64* %3, align 8
  %2389 = load i32, i32* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to i32*), align 8
  store i32 %2389, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %2390 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2391 = sext i32 %2390 to i64
  store i64 %2391, i64* %RAX.i271, align 8
  %2392 = shl nsw i64 %2391, 2
  %2393 = add nsw i64 %2392, 6470532
  %2394 = add i64 %2388, 26
  store i64 %2394, i64* %3, align 8
  %2395 = load <2 x float>, <2 x float>* %83, align 1
  %2396 = load <2 x i32>, <2 x i32>* %257, align 1
  %2397 = inttoptr i64 %2393 to float*
  %2398 = load float, float* %2397, align 4
  %2399 = extractelement <2 x float> %2395, i32 0
  %2400 = fadd float %2399, %2398
  store float %2400, float* %46, align 1
  %2401 = bitcast <2 x float> %2395 to <2 x i32>
  %2402 = extractelement <2 x i32> %2401, i32 1
  store i32 %2402, i32* %281, align 1
  %2403 = extractelement <2 x i32> %2396, i32 0
  store i32 %2403, i32* %283, align 1
  %2404 = extractelement <2 x i32> %2396, i32 1
  store i32 %2404, i32* %285, align 1
  %2405 = load <2 x float>, <2 x float>* %83, align 1
  %2406 = extractelement <2 x float> %2405, i32 0
  store float %2406, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  %2407 = zext i32 %2390 to i64
  store i64 %2407, i64* %RDI.i594, align 8
  %2408 = add i64 %2388, 5572
  %2409 = add i64 %2388, 47
  %2410 = load i64, i64* %6, align 8
  %2411 = add i64 %2410, -8
  %2412 = inttoptr i64 %2411 to i64*
  store i64 %2409, i64* %2412, align 8
  store i64 %2411, i64* %6, align 8
  store i64 %2408, i64* %3, align 8
  %call2_4012d6 = tail call %struct.Memory* @sub_402870.print_time(%struct.State* nonnull %0, i64 %2408, %struct.Memory* %1927)
  %2413 = load i64, i64* %3, align 8
  %2414 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2415 = add i32 %2414, 1
  %2416 = zext i32 %2415 to i64
  store i64 %2416, i64* %RAX.i271, align 8
  %2417 = icmp eq i32 %2414, -1
  %2418 = icmp eq i32 %2415, 0
  %2419 = or i1 %2417, %2418
  %2420 = zext i1 %2419 to i8
  store i8 %2420, i8* %14, align 1
  %2421 = and i32 %2415, 255
  %2422 = tail call i32 @llvm.ctpop.i32(i32 %2421)
  %2423 = trunc i32 %2422 to i8
  %2424 = and i8 %2423, 1
  %2425 = xor i8 %2424, 1
  store i8 %2425, i8* %21, align 1
  %2426 = xor i32 %2415, %2414
  %2427 = lshr i32 %2426, 4
  %2428 = trunc i32 %2427 to i8
  %2429 = and i8 %2428, 1
  store i8 %2429, i8* %27, align 1
  %2430 = zext i1 %2418 to i8
  store i8 %2430, i8* %30, align 1
  %2431 = lshr i32 %2415, 31
  %2432 = trunc i32 %2431 to i8
  store i8 %2432, i8* %33, align 1
  %2433 = lshr i32 %2414, 31
  %2434 = xor i32 %2431, %2433
  %2435 = add nuw nsw i32 %2434, %2431
  %2436 = icmp eq i32 %2435, 2
  %2437 = zext i1 %2436 to i8
  store i8 %2437, i8* %39, align 1
  store i32 %2415, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2438 = add i64 %2413, -601
  store i64 %2438, i64* %3, align 8
  br label %block_.L_401082

block_.L_4012f1:                                  ; preds = %block_.L_401082
  store i64 ptrtoint (%G__0x403140_type* @G__0x403140 to i64), i64* %RSI.i245, align 8
  %2439 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2439, align 1
  %2440 = add i64 %1993, 7039
  %2441 = add i64 %1993, 21
  store i64 %2441, i64* %3, align 8
  %2442 = inttoptr i64 %2440 to i64*
  %2443 = load i64, i64* %2442, align 8
  %2444 = load float, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  %2445 = fpext float %2444 to double
  %2446 = bitcast i64 %2443 to double
  %2447 = fdiv double %2445, %2446
  store double %2447, double* %253, align 1
  %.cast30 = bitcast i64 %2443 to <2 x i32>
  %2448 = fptrunc double %2447 to float
  store float %2448, float* %944, align 1
  %2449 = extractelement <2 x i32> %.cast30, i32 1
  store i32 %2449, i32* %603, align 1
  store i32 0, i32* %604, align 1
  store i32 0, i32* %606, align 1
  %2450 = load <2 x float>, <2 x float>* %1037, align 1
  %2451 = extractelement <2 x float> %2450, i32 0
  store float %2451, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  %2452 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2452, i64* %RDI.i594, align 8
  store i8 1, i8* %AL.i1482, align 1
  %2453 = add i64 %1993, -3585
  %2454 = add i64 %1993, 62
  %2455 = load i64, i64* %6, align 8
  %2456 = add i64 %2455, -8
  %2457 = inttoptr i64 %2456 to i64*
  store i64 %2454, i64* %2457, align 8
  store i64 %2456, i64* %6, align 8
  store i64 %2453, i64* %3, align 8
  %2458 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1927)
  %2459 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x403169_type* @G__0x403169 to i64), i64* %RSI.i245, align 8
  %2460 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2460, i64* %RDI.i594, align 8
  %2461 = load i64, i64* %RBP.i, align 8
  %2462 = add i64 %2461, -972
  %2463 = load i32, i32* %EAX.i1471, align 4
  %2464 = add i64 %2459, 24
  store i64 %2464, i64* %3, align 8
  %2465 = inttoptr i64 %2462 to i32*
  store i32 %2463, i32* %2465, align 4
  %2466 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1482, align 1
  %2467 = add i64 %2466, -3671
  %2468 = add i64 %2466, 7
  %2469 = load i64, i64* %6, align 8
  %2470 = add i64 %2469, -8
  %2471 = inttoptr i64 %2470 to i64*
  store i64 %2468, i64* %2471, align 8
  store i64 %2470, i64* %6, align 8
  store i64 %2467, i64* %3, align 8
  %2472 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2458)
  %2473 = load i64, i64* %RBP.i, align 8
  %2474 = add i64 %2473, -976
  %2475 = load i32, i32* %EAX.i1471, align 4
  %2476 = load i64, i64* %3, align 8
  %2477 = add i64 %2476, 6
  store i64 %2477, i64* %3, align 8
  %2478 = inttoptr i64 %2474 to i32*
  store i32 %2475, i32* %2478, align 4
  %2479 = load i64, i64* %3, align 8
  %2480 = add i64 %2479, -3428
  %2481 = add i64 %2479, 5
  %2482 = load i64, i64* %6, align 8
  %2483 = add i64 %2482, -8
  %2484 = inttoptr i64 %2483 to i64*
  store i64 %2481, i64* %2484, align 8
  store i64 %2483, i64* %6, align 8
  store i64 %2480, i64* %3, align 8
  %call2_401354 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %2480, %struct.Memory* %2472)
  %2485 = load i64, i64* %RBP.i, align 8
  %2486 = add i64 %2485, -80
  %2487 = load i64, i64* %3, align 8
  %2488 = add i64 %2487, 5
  store i64 %2488, i64* %3, align 8
  %2489 = load <2 x float>, <2 x float>* %83, align 1
  %2490 = extractelement <2 x float> %2489, i32 0
  %2491 = inttoptr i64 %2486 to float*
  store float %2490, float* %2491, align 4
  %2492 = load i64, i64* %3, align 8
  %2493 = add i64 %2492, 11
  store i64 %2493, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_401369

block_.L_401369:                                  ; preds = %block_401379, %block_.L_4012f1
  %2494 = phi i32 [ %2541, %block_401379 ], [ 0, %block_.L_4012f1 ]
  %2495 = phi i64 [ %2564, %block_401379 ], [ %2493, %block_.L_4012f1 ]
  %2496 = zext i32 %2494 to i64
  store i64 %2496, i64* %RAX.i271, align 8
  %2497 = load i64, i64* %RBP.i, align 8
  %2498 = add i64 %2497, -68
  %2499 = add i64 %2495, 10
  store i64 %2499, i64* %3, align 8
  %2500 = inttoptr i64 %2498 to i32*
  %2501 = load i32, i32* %2500, align 4
  %2502 = sub i32 %2494, %2501
  %2503 = icmp ult i32 %2494, %2501
  %2504 = zext i1 %2503 to i8
  store i8 %2504, i8* %14, align 1
  %2505 = and i32 %2502, 255
  %2506 = tail call i32 @llvm.ctpop.i32(i32 %2505)
  %2507 = trunc i32 %2506 to i8
  %2508 = and i8 %2507, 1
  %2509 = xor i8 %2508, 1
  store i8 %2509, i8* %21, align 1
  %2510 = xor i32 %2501, %2494
  %2511 = xor i32 %2510, %2502
  %2512 = lshr i32 %2511, 4
  %2513 = trunc i32 %2512 to i8
  %2514 = and i8 %2513, 1
  store i8 %2514, i8* %27, align 1
  %2515 = icmp eq i32 %2502, 0
  %2516 = zext i1 %2515 to i8
  store i8 %2516, i8* %30, align 1
  %2517 = lshr i32 %2502, 31
  %2518 = trunc i32 %2517 to i8
  store i8 %2518, i8* %33, align 1
  %2519 = lshr i32 %2494, 31
  %2520 = lshr i32 %2501, 31
  %2521 = xor i32 %2520, %2519
  %2522 = xor i32 %2517, %2519
  %2523 = add nuw nsw i32 %2522, %2521
  %2524 = icmp eq i32 %2523, 2
  %2525 = zext i1 %2524 to i8
  store i8 %2525, i8* %39, align 1
  %2526 = icmp ne i8 %2518, 0
  %2527 = xor i1 %2526, %2524
  %.v98 = select i1 %2527, i64 16, i64 81
  %2528 = add i64 %2495, %.v98
  store i64 %2528, i64* %3, align 8
  br i1 %2527, label %block_401379, label %block_.L_4013ba

block_401379:                                     ; preds = %block_.L_401369
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i347, align 8
  %2529 = add i64 %2497, -20
  store i64 %2529, i64* %57, align 8
  %2530 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2531 = zext i32 %2530 to i64
  store i64 %2531, i64* %RSI.i245, align 8
  %2532 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2533 = zext i32 %2532 to i64
  store i64 %2533, i64* %RDX.i359, align 8
  %2534 = add i64 %2528, 999
  %2535 = add i64 %2528, 43
  %2536 = load i64, i64* %6, align 8
  %2537 = add i64 %2536, -8
  %2538 = inttoptr i64 %2537 to i64*
  store i64 %2535, i64* %2538, align 8
  store i64 %2537, i64* %6, align 8
  store i64 %2534, i64* %3, align 8
  %call2_40139f = tail call %struct.Memory* @sub_401760.matgen(%struct.State* nonnull %0, i64 %2534, %struct.Memory* %call2_401354)
  %2539 = load i64, i64* %3, align 8
  %2540 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2541 = add i32 %2540, 1
  %2542 = zext i32 %2541 to i64
  store i64 %2542, i64* %RAX.i271, align 8
  %2543 = icmp eq i32 %2540, -1
  %2544 = icmp eq i32 %2541, 0
  %2545 = or i1 %2543, %2544
  %2546 = zext i1 %2545 to i8
  store i8 %2546, i8* %14, align 1
  %2547 = and i32 %2541, 255
  %2548 = tail call i32 @llvm.ctpop.i32(i32 %2547)
  %2549 = trunc i32 %2548 to i8
  %2550 = and i8 %2549, 1
  %2551 = xor i8 %2550, 1
  store i8 %2551, i8* %21, align 1
  %2552 = xor i32 %2541, %2540
  %2553 = lshr i32 %2552, 4
  %2554 = trunc i32 %2553 to i8
  %2555 = and i8 %2554, 1
  store i8 %2555, i8* %27, align 1
  %2556 = zext i1 %2544 to i8
  store i8 %2556, i8* %30, align 1
  %2557 = lshr i32 %2541, 31
  %2558 = trunc i32 %2557 to i8
  store i8 %2558, i8* %33, align 1
  %2559 = lshr i32 %2540, 31
  %2560 = xor i32 %2557, %2559
  %2561 = add nuw nsw i32 %2560, %2557
  %2562 = icmp eq i32 %2561, 2
  %2563 = zext i1 %2562 to i8
  store i8 %2563, i8* %39, align 1
  store i32 %2541, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2564 = add i64 %2539, -59
  store i64 %2564, i64* %3, align 8
  br label %block_.L_401369

block_.L_4013ba:                                  ; preds = %block_.L_401369
  %2565 = add i64 %2528, -3530
  %2566 = add i64 %2528, 5
  %2567 = load i64, i64* %6, align 8
  %2568 = add i64 %2567, -8
  %2569 = inttoptr i64 %2568 to i64*
  store i64 %2566, i64* %2569, align 8
  store i64 %2568, i64* %6, align 8
  store i64 %2565, i64* %3, align 8
  %call2_4013ba = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %2565, %struct.Memory* %call2_401354)
  %2570 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4030a7_type* @G__0x4030a7 to i64), i64* %RSI.i245, align 8
  %2571 = bitcast %union.VectorReg* %221 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2571, align 1
  %2572 = load i64, i64* %RBP.i, align 8
  %2573 = add i64 %2572, -84
  %2574 = add i64 %2570, 18
  store i64 %2574, i64* %3, align 8
  %2575 = load <2 x float>, <2 x float>* %83, align 1
  %2576 = extractelement <2 x float> %2575, i32 0
  %2577 = inttoptr i64 %2573 to float*
  store float %2576, float* %2577, align 4
  %2578 = load i64, i64* %RBP.i, align 8
  %2579 = add i64 %2578, -84
  %2580 = load i64, i64* %3, align 8
  %2581 = add i64 %2580, 5
  store i64 %2581, i64* %3, align 8
  %2582 = inttoptr i64 %2579 to i32*
  %2583 = load i32, i32* %2582, align 4
  store i32 %2583, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %2584 = add i64 %2578, -80
  %2585 = add i64 %2580, 10
  store i64 %2585, i64* %3, align 8
  %2586 = load <2 x float>, <2 x float>* %83, align 1
  %2587 = load <2 x i32>, <2 x i32>* %257, align 1
  %2588 = inttoptr i64 %2584 to float*
  %2589 = load float, float* %2588, align 4
  %2590 = extractelement <2 x float> %2586, i32 0
  %2591 = fsub float %2590, %2589
  store float %2591, float* %46, align 1
  %2592 = bitcast <2 x float> %2586 to <2 x i32>
  %2593 = extractelement <2 x i32> %2592, i32 1
  store i32 %2593, i32* %281, align 1
  %2594 = extractelement <2 x i32> %2587, i32 0
  store i32 %2594, i32* %283, align 1
  %2595 = extractelement <2 x i32> %2587, i32 1
  store i32 %2595, i32* %285, align 1
  %2596 = add i64 %2578, -76
  %2597 = add i64 %2580, 15
  store i64 %2597, i64* %3, align 8
  %2598 = load <2 x float>, <2 x float>* %83, align 1
  %2599 = extractelement <2 x float> %2598, i32 0
  %2600 = inttoptr i64 %2596 to float*
  store float %2599, float* %2600, align 4
  %2601 = load i64, i64* %RBP.i, align 8
  %2602 = add i64 %2601, -76
  %2603 = load i64, i64* %3, align 8
  %2604 = add i64 %2603, 5
  store i64 %2604, i64* %3, align 8
  %2605 = inttoptr i64 %2602 to float*
  %2606 = load float, float* %2605, align 4
  %2607 = fpext float %2606 to double
  store double %2607, double* %218, align 1
  %2608 = add i64 %2601, -68
  %2609 = add i64 %2603, 10
  store i64 %2609, i64* %3, align 8
  %2610 = inttoptr i64 %2608 to i32*
  %2611 = load i32, i32* %2610, align 4
  %2612 = sitofp i32 %2611 to double
  store double %2612, double* %253, align 1
  %2613 = fdiv double %2607, %2612
  %.cast31 = bitcast double %2613 to <2 x i32>
  %2614 = fptrunc double %2613 to float
  store float %2614, float* %46, align 1
  %2615 = extractelement <2 x i32> %.cast31, i32 1
  store i32 %2615, i32* %281, align 1
  %2616 = add i64 %2603, 23
  store i64 %2616, i64* %3, align 8
  %2617 = load <2 x float>, <2 x float>* %83, align 1
  %2618 = extractelement <2 x float> %2617, i32 0
  store float %2618, float* %2605, align 4
  %2619 = load i64, i64* %3, align 8
  %2620 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2620, i64* %RDI.i594, align 8
  %2621 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
  %2622 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
  %2623 = extractelement <2 x i32> %2621, i32 0
  store i32 %2623, i32* %47, align 1
  %2624 = extractelement <2 x i32> %2621, i32 1
  store i32 %2624, i32* %281, align 1
  %2625 = extractelement <2 x i32> %2622, i32 0
  store i32 %2625, i32* %283, align 1
  %2626 = extractelement <2 x i32> %2622, i32 1
  store i32 %2626, i32* %285, align 1
  store i8 1, i8* %AL.i1482, align 1
  %2627 = add i64 %2619, -3847
  %2628 = add i64 %2619, 18
  %2629 = load i64, i64* %6, align 8
  %2630 = add i64 %2629, -8
  %2631 = inttoptr i64 %2630 to i64*
  store i64 %2628, i64* %2631, align 8
  store i64 %2630, i64* %6, align 8
  store i64 %2627, i64* %3, align 8
  %2632 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_4013ba)
  %2633 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x403111_type* @G__0x403111 to i64), i64* %RSI.i245, align 8
  %2634 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2634, i64* %RDI.i594, align 8
  %2635 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2636 = zext i32 %2635 to i64
  store i64 %2636, i64* %RDX.i359, align 8
  %2637 = load i64, i64* %RBP.i, align 8
  %2638 = add i64 %2637, -980
  %2639 = load i32, i32* %EAX.i1471, align 4
  %2640 = add i64 %2633, 31
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2638 to i32*
  store i32 %2639, i32* %2641, align 4
  %2642 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1482, align 1
  %2643 = add i64 %2642, -3896
  %2644 = add i64 %2642, 7
  %2645 = load i64, i64* %6, align 8
  %2646 = add i64 %2645, -8
  %2647 = inttoptr i64 %2646 to i64*
  store i64 %2644, i64* %2647, align 8
  store i64 %2646, i64* %6, align 8
  store i64 %2643, i64* %3, align 8
  %2648 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2632)
  %2649 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40302a_type* @G__0x40302a to i64), i64* %RSI.i245, align 8
  %2650 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2650, i64* %RDI.i594, align 8
  %2651 = load i64, i64* %RBP.i, align 8
  %2652 = add i64 %2651, -984
  %2653 = load i32, i32* %EAX.i1471, align 4
  %2654 = add i64 %2649, 24
  store i64 %2654, i64* %3, align 8
  %2655 = inttoptr i64 %2652 to i32*
  store i32 %2653, i32* %2655, align 4
  %2656 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1482, align 1
  %2657 = add i64 %2656, -3927
  %2658 = add i64 %2656, 7
  %2659 = load i64, i64* %6, align 8
  %2660 = add i64 %2659, -8
  %2661 = inttoptr i64 %2660 to i64*
  store i64 %2658, i64* %2661, align 8
  store i64 %2660, i64* %6, align 8
  store i64 %2657, i64* %3, align 8
  %2662 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2648)
  %2663 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x403062_type* @G__0x403062 to i64), i64* %RSI.i245, align 8
  %2664 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2664, i64* %RDI.i594, align 8
  %2665 = load i64, i64* %RBP.i, align 8
  %2666 = add i64 %2665, -988
  %2667 = load i32, i32* %EAX.i1471, align 4
  %2668 = add i64 %2663, 24
  store i64 %2668, i64* %3, align 8
  %2669 = inttoptr i64 %2666 to i32*
  store i32 %2667, i32* %2669, align 4
  %2670 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1482, align 1
  %2671 = add i64 %2670, -3958
  %2672 = add i64 %2670, 7
  %2673 = load i64, i64* %6, align 8
  %2674 = add i64 %2673, -8
  %2675 = inttoptr i64 %2674 to i64*
  store i64 %2672, i64* %2675, align 8
  store i64 %2674, i64* %6, align 8
  store i64 %2671, i64* %3, align 8
  %2676 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2662)
  %2677 = load i64, i64* %3, align 8
  %2678 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2678, align 1
  %2679 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
  %2680 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
  %2681 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2682 = sitofp i32 %2681 to float
  store float %2682, float* %944, align 1
  %2683 = extractelement <2 x i32> %2679, i32 1
  store i32 %2683, i32* %603, align 1
  %2684 = extractelement <2 x i32> %2680, i32 0
  store i32 %2684, i32* %604, align 1
  %2685 = extractelement <2 x i32> %2680, i32 1
  store i32 %2685, i32* %606, align 1
  %2686 = load i64, i64* %RBP.i, align 8
  %2687 = add i64 %2686, -76
  %2688 = add i64 %2677, 17
  store i64 %2688, i64* %3, align 8
  %2689 = load <2 x float>, <2 x float>* %1037, align 1
  %2690 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
  %2691 = inttoptr i64 %2687 to float*
  %2692 = load float, float* %2691, align 4
  %2693 = extractelement <2 x float> %2689, i32 0
  %2694 = fmul float %2693, %2692
  store float %2694, float* %944, align 1
  %2695 = bitcast <2 x float> %2689 to <2 x i32>
  %2696 = extractelement <2 x i32> %2695, i32 1
  store i32 %2696, i32* %603, align 1
  %2697 = extractelement <2 x i32> %2690, i32 0
  store i32 %2697, i32* %604, align 1
  %2698 = extractelement <2 x i32> %2690, i32 1
  store i32 %2698, i32* %606, align 1
  %2699 = add i64 %2686, -44
  %2700 = add i64 %2677, 22
  store i64 %2700, i64* %3, align 8
  %2701 = load <2 x float>, <2 x float>* %1037, align 1
  %2702 = extractelement <2 x float> %2701, i32 0
  %2703 = inttoptr i64 %2699 to float*
  store float %2702, float* %2703, align 4
  %2704 = load i64, i64* %3, align 8
  %2705 = load <2 x float>, <2 x float>* %83, align 1
  %2706 = extractelement <2 x float> %2705, i32 0
  store float %2706, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  store i32 7, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2707 = load i64, i64* %RBP.i, align 8
  %2708 = add i64 %2707, -992
  %2709 = load i32, i32* %EAX.i1471, align 4
  %2710 = add i64 %2704, 26
  store i64 %2710, i64* %3, align 8
  %2711 = inttoptr i64 %2708 to i32*
  store i32 %2709, i32* %2711, align 4
  %.pre81 = load i64, i64* %3, align 8
  %.pre82 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2712 = bitcast i64* %50 to <2 x i32>*
  br label %block_.L_40149d

block_.L_40149d:                                  ; preds = %block_.L_4015e6, %block_.L_4013ba
  %2713 = phi i32 [ %3160, %block_.L_4015e6 ], [ %.pre82, %block_.L_4013ba ]
  %2714 = phi i64 [ %3183, %block_.L_4015e6 ], [ %.pre81, %block_.L_4013ba ]
  %2715 = add i32 %2713, -12
  %2716 = icmp ult i32 %2713, 12
  %2717 = zext i1 %2716 to i8
  store i8 %2717, i8* %14, align 1
  %2718 = and i32 %2715, 255
  %2719 = tail call i32 @llvm.ctpop.i32(i32 %2718)
  %2720 = trunc i32 %2719 to i8
  %2721 = and i8 %2720, 1
  %2722 = xor i8 %2721, 1
  store i8 %2722, i8* %21, align 1
  %2723 = xor i32 %2715, %2713
  %2724 = lshr i32 %2723, 4
  %2725 = trunc i32 %2724 to i8
  %2726 = and i8 %2725, 1
  store i8 %2726, i8* %27, align 1
  %2727 = icmp eq i32 %2715, 0
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %30, align 1
  %2729 = lshr i32 %2715, 31
  %2730 = trunc i32 %2729 to i8
  store i8 %2730, i8* %33, align 1
  %2731 = lshr i32 %2713, 31
  %2732 = xor i32 %2729, %2731
  %2733 = add nuw nsw i32 %2732, %2731
  %2734 = icmp eq i32 %2733, 2
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %39, align 1
  %2736 = icmp ne i8 %2730, 0
  %2737 = xor i1 %2736, %2734
  %.v99 = select i1 %2737, i64 14, i64 623
  %2738 = add i64 %2714, %.v99
  store i64 %2738, i64* %3, align 8
  br i1 %2737, label %block_4014ab, label %block_.L_40170c

block_4014ab:                                     ; preds = %block_.L_40149d
  %2739 = add i64 %2738, -3771
  %2740 = add i64 %2738, 5
  %2741 = load i64, i64* %6, align 8
  %2742 = add i64 %2741, -8
  %2743 = inttoptr i64 %2742 to i64*
  store i64 %2740, i64* %2743, align 8
  store i64 %2742, i64* %6, align 8
  store i64 %2739, i64* %3, align 8
  %call2_4014ab = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %2739, %struct.Memory* %2676)
  %2744 = load i64, i64* %RBP.i, align 8
  %2745 = add i64 %2744, -40
  %2746 = load i64, i64* %3, align 8
  %2747 = add i64 %2746, 5
  store i64 %2747, i64* %3, align 8
  %2748 = load <2 x float>, <2 x float>* %83, align 1
  %2749 = extractelement <2 x float> %2748, i32 0
  %2750 = inttoptr i64 %2745 to float*
  store float %2749, float* %2750, align 4
  %2751 = load i64, i64* %3, align 8
  %2752 = add i64 %2751, 11
  store i64 %2752, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4014c0

block_.L_4014c0:                                  ; preds = %block_4014d4, %block_4014ab
  %2753 = phi i32 [ %2807, %block_4014d4 ], [ 0, %block_4014ab ]
  %2754 = phi i64 [ %2830, %block_4014d4 ], [ %2752, %block_4014ab ]
  %2755 = zext i32 %2753 to i64
  store i64 %2755, i64* %RAX.i271, align 8
  %2756 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2757 = sub i32 %2753, %2756
  %2758 = icmp ult i32 %2753, %2756
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %14, align 1
  %2760 = and i32 %2757, 255
  %2761 = tail call i32 @llvm.ctpop.i32(i32 %2760)
  %2762 = trunc i32 %2761 to i8
  %2763 = and i8 %2762, 1
  %2764 = xor i8 %2763, 1
  store i8 %2764, i8* %21, align 1
  %2765 = xor i32 %2756, %2753
  %2766 = xor i32 %2765, %2757
  %2767 = lshr i32 %2766, 4
  %2768 = trunc i32 %2767 to i8
  %2769 = and i8 %2768, 1
  store i8 %2769, i8* %27, align 1
  %2770 = icmp eq i32 %2757, 0
  %2771 = zext i1 %2770 to i8
  store i8 %2771, i8* %30, align 1
  %2772 = lshr i32 %2757, 31
  %2773 = trunc i32 %2772 to i8
  store i8 %2773, i8* %33, align 1
  %2774 = lshr i32 %2753, 31
  %2775 = lshr i32 %2756, 31
  %2776 = xor i32 %2775, %2774
  %2777 = xor i32 %2772, %2774
  %2778 = add nuw nsw i32 %2777, %2776
  %2779 = icmp eq i32 %2778, 2
  %2780 = zext i1 %2779 to i8
  store i8 %2780, i8* %39, align 1
  %2781 = icmp ne i8 %2773, 0
  %2782 = xor i1 %2781, %2779
  %.v100 = select i1 %2782, i64 20, i64 134
  %2783 = add i64 %2754, %.v100
  store i64 %2783, i64* %3, align 8
  br i1 %2782, label %block_4014d4, label %block_.L_401546

block_4014d4:                                     ; preds = %block_.L_4014c0
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i347, align 8
  %2784 = load i64, i64* %RBP.i, align 8
  %2785 = add i64 %2784, -20
  store i64 %2785, i64* %57, align 8
  %2786 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2787 = zext i32 %2786 to i64
  store i64 %2787, i64* %RSI.i245, align 8
  %2788 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2789 = zext i32 %2788 to i64
  store i64 %2789, i64* %RDX.i359, align 8
  %2790 = add i64 %2783, 652
  %2791 = add i64 %2783, 43
  %2792 = load i64, i64* %6, align 8
  %2793 = add i64 %2792, -8
  %2794 = inttoptr i64 %2793 to i64*
  store i64 %2791, i64* %2794, align 8
  store i64 %2793, i64* %6, align 8
  store i64 %2790, i64* %3, align 8
  %call2_4014fa = tail call %struct.Memory* @sub_401760.matgen(%struct.State* nonnull %0, i64 %2790, %struct.Memory* %2676)
  %2795 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i347, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %57, align 8
  %2796 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2797 = zext i32 %2796 to i64
  store i64 %2797, i64* %RSI.i245, align 8
  %2798 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2799 = zext i32 %2798 to i64
  store i64 %2799, i64* %RDX.i359, align 8
  %2800 = add i64 %2795, 1073
  %2801 = add i64 %2795, 49
  %2802 = load i64, i64* %6, align 8
  %2803 = add i64 %2802, -8
  %2804 = inttoptr i64 %2803 to i64*
  store i64 %2801, i64* %2804, align 8
  store i64 %2803, i64* %6, align 8
  store i64 %2800, i64* %3, align 8
  %call2_40152b = tail call %struct.Memory* @sub_401930.dgefa(%struct.State* nonnull %0, i64 %2800, %struct.Memory* %2676)
  %2805 = load i64, i64* %3, align 8
  %2806 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2807 = add i32 %2806, 1
  %2808 = zext i32 %2807 to i64
  store i64 %2808, i64* %RAX.i271, align 8
  %2809 = icmp eq i32 %2806, -1
  %2810 = icmp eq i32 %2807, 0
  %2811 = or i1 %2809, %2810
  %2812 = zext i1 %2811 to i8
  store i8 %2812, i8* %14, align 1
  %2813 = and i32 %2807, 255
  %2814 = tail call i32 @llvm.ctpop.i32(i32 %2813)
  %2815 = trunc i32 %2814 to i8
  %2816 = and i8 %2815, 1
  %2817 = xor i8 %2816, 1
  store i8 %2817, i8* %21, align 1
  %2818 = xor i32 %2807, %2806
  %2819 = lshr i32 %2818, 4
  %2820 = trunc i32 %2819 to i8
  %2821 = and i8 %2820, 1
  store i8 %2821, i8* %27, align 1
  %2822 = zext i1 %2810 to i8
  store i8 %2822, i8* %30, align 1
  %2823 = lshr i32 %2807, 31
  %2824 = trunc i32 %2823 to i8
  store i8 %2824, i8* %33, align 1
  %2825 = lshr i32 %2806, 31
  %2826 = xor i32 %2823, %2825
  %2827 = add nuw nsw i32 %2826, %2823
  %2828 = icmp eq i32 %2827, 2
  %2829 = zext i1 %2828 to i8
  store i8 %2829, i8* %39, align 1
  store i32 %2807, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2830 = add i64 %2805, -112
  store i64 %2830, i64* %3, align 8
  br label %block_.L_4014c0

block_.L_401546:                                  ; preds = %block_.L_4014c0
  %2831 = add i64 %2783, -3926
  %2832 = add i64 %2783, 5
  %2833 = load i64, i64* %6, align 8
  %2834 = add i64 %2833, -8
  %2835 = inttoptr i64 %2834 to i64*
  store i64 %2832, i64* %2835, align 8
  store i64 %2834, i64* %6, align 8
  store i64 %2831, i64* %3, align 8
  %call2_401546 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %2831, %struct.Memory* %2676)
  %2836 = load i64, i64* %RBP.i, align 8
  %2837 = add i64 %2836, -40
  %2838 = load i64, i64* %3, align 8
  %2839 = add i64 %2838, 5
  store i64 %2839, i64* %3, align 8
  %2840 = load <2 x float>, <2 x float>* %83, align 1
  %2841 = load <2 x i32>, <2 x i32>* %257, align 1
  %2842 = inttoptr i64 %2837 to float*
  %2843 = load float, float* %2842, align 4
  %2844 = extractelement <2 x float> %2840, i32 0
  %2845 = fsub float %2844, %2843
  store float %2845, float* %46, align 1
  %2846 = bitcast <2 x float> %2840 to <2 x i32>
  %2847 = extractelement <2 x i32> %2846, i32 1
  store i32 %2847, i32* %281, align 1
  %2848 = extractelement <2 x i32> %2841, i32 0
  store i32 %2848, i32* %283, align 1
  %2849 = extractelement <2 x i32> %2841, i32 1
  store i32 %2849, i32* %285, align 1
  %2850 = add i64 %2836, -44
  %2851 = add i64 %2838, 10
  store i64 %2851, i64* %3, align 8
  %2852 = load <2 x float>, <2 x float>* %83, align 1
  %2853 = load <2 x i32>, <2 x i32>* %257, align 1
  %2854 = inttoptr i64 %2850 to float*
  %2855 = load float, float* %2854, align 4
  %2856 = extractelement <2 x float> %2852, i32 0
  %2857 = fsub float %2856, %2855
  store float %2857, float* %46, align 1
  %2858 = bitcast <2 x float> %2852 to <2 x i32>
  %2859 = extractelement <2 x i32> %2858, i32 1
  store i32 %2859, i32* %281, align 1
  %2860 = extractelement <2 x i32> %2853, i32 0
  store i32 %2860, i32* %283, align 1
  %2861 = extractelement <2 x i32> %2853, i32 1
  store i32 %2861, i32* %285, align 1
  %2862 = load <2 x i32>, <2 x i32>* %.pre-phi, align 1
  %2863 = load <2 x i32>, <2 x i32>* %.pre-phi91, align 1
  %2864 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2865 = sitofp i32 %2864 to float
  store float %2865, float* %944, align 1
  %2866 = extractelement <2 x i32> %2862, i32 1
  store i32 %2866, i32* %603, align 1
  %2867 = extractelement <2 x i32> %2863, i32 0
  store i32 %2867, i32* %604, align 1
  %2868 = extractelement <2 x i32> %2863, i32 1
  store i32 %2868, i32* %606, align 1
  %2869 = load <2 x float>, <2 x float>* %83, align 1
  %2870 = load <2 x i32>, <2 x i32>* %257, align 1
  %2871 = load <2 x float>, <2 x float>* %1037, align 1
  %2872 = extractelement <2 x float> %2869, i32 0
  %2873 = extractelement <2 x float> %2871, i32 0
  %2874 = fdiv float %2872, %2873
  store float %2874, float* %46, align 1
  %2875 = bitcast <2 x float> %2869 to <2 x i32>
  %2876 = extractelement <2 x i32> %2875, i32 1
  store i32 %2876, i32* %281, align 1
  %2877 = extractelement <2 x i32> %2870, i32 0
  store i32 %2877, i32* %283, align 1
  %2878 = extractelement <2 x i32> %2870, i32 1
  store i32 %2878, i32* %285, align 1
  %2879 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2880 = sext i32 %2879 to i64
  store i64 %2880, i64* %RAX.i271, align 8
  %2881 = shl nsw i64 %2880, 2
  %2882 = add nsw i64 %2881, 6470352
  %2883 = add i64 %2838, 40
  store i64 %2883, i64* %3, align 8
  %2884 = load <2 x float>, <2 x float>* %83, align 1
  %2885 = extractelement <2 x float> %2884, i32 0
  %2886 = inttoptr i64 %2882 to float*
  store float %2885, float* %2886, align 4
  %2887 = load i64, i64* %3, align 8
  %2888 = add i64 %2887, -3971
  %2889 = add i64 %2887, 5
  %2890 = load i64, i64* %6, align 8
  %2891 = add i64 %2890, -8
  %2892 = inttoptr i64 %2891 to i64*
  store i64 %2889, i64* %2892, align 8
  store i64 %2891, i64* %6, align 8
  store i64 %2888, i64* %3, align 8
  %call2_401573 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %2888, %struct.Memory* %2676)
  %2893 = load i64, i64* %RBP.i, align 8
  %2894 = add i64 %2893, -40
  %2895 = load i64, i64* %3, align 8
  %2896 = add i64 %2895, 5
  store i64 %2896, i64* %3, align 8
  %2897 = load <2 x float>, <2 x float>* %83, align 1
  %2898 = extractelement <2 x float> %2897, i32 0
  %2899 = inttoptr i64 %2894 to float*
  store float %2898, float* %2899, align 4
  %2900 = load i64, i64* %3, align 8
  %2901 = add i64 %2900, 11
  store i64 %2901, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_401588

block_.L_401588:                                  ; preds = %block_40159c, %block_.L_401546
  %2902 = phi i32 [ %2944, %block_40159c ], [ 0, %block_.L_401546 ]
  %2903 = phi i64 [ %2967, %block_40159c ], [ %2901, %block_.L_401546 ]
  %2904 = zext i32 %2902 to i64
  store i64 %2904, i64* %RAX.i271, align 8
  %2905 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2906 = sub i32 %2902, %2905
  %2907 = icmp ult i32 %2902, %2905
  %2908 = zext i1 %2907 to i8
  store i8 %2908, i8* %14, align 1
  %2909 = and i32 %2906, 255
  %2910 = tail call i32 @llvm.ctpop.i32(i32 %2909)
  %2911 = trunc i32 %2910 to i8
  %2912 = and i8 %2911, 1
  %2913 = xor i8 %2912, 1
  store i8 %2913, i8* %21, align 1
  %2914 = xor i32 %2905, %2902
  %2915 = xor i32 %2914, %2906
  %2916 = lshr i32 %2915, 4
  %2917 = trunc i32 %2916 to i8
  %2918 = and i8 %2917, 1
  store i8 %2918, i8* %27, align 1
  %2919 = icmp eq i32 %2906, 0
  %2920 = zext i1 %2919 to i8
  store i8 %2920, i8* %30, align 1
  %2921 = lshr i32 %2906, 31
  %2922 = trunc i32 %2921 to i8
  store i8 %2922, i8* %33, align 1
  %2923 = lshr i32 %2902, 31
  %2924 = lshr i32 %2905, 31
  %2925 = xor i32 %2924, %2923
  %2926 = xor i32 %2921, %2923
  %2927 = add nuw nsw i32 %2926, %2925
  %2928 = icmp eq i32 %2927, 2
  %2929 = zext i1 %2928 to i8
  store i8 %2929, i8* %39, align 1
  %2930 = icmp ne i8 %2922, 0
  %2931 = xor i1 %2930, %2928
  %.v101 = select i1 %2931, i64 20, i64 94
  %2932 = add i64 %2903, %.v101
  store i64 %2932, i64* %3, align 8
  br i1 %2931, label %block_40159c, label %block_.L_4015e6

block_40159c:                                     ; preds = %block_.L_401588
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i594, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i347, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %57, align 8
  store i64 0, i64* %R9.i, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2933 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2934 = zext i32 %2933 to i64
  store i64 %2934, i64* %RSI.i245, align 8
  %2935 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2936 = zext i32 %2935 to i64
  store i64 %2936, i64* %RDX.i359, align 8
  %2937 = add i64 %2932, 1700
  %2938 = add i64 %2932, 52
  %2939 = load i64, i64* %6, align 8
  %2940 = add i64 %2939, -8
  %2941 = inttoptr i64 %2940 to i64*
  store i64 %2938, i64* %2941, align 8
  store i64 %2940, i64* %6, align 8
  store i64 %2937, i64* %3, align 8
  %call2_4015cb = tail call %struct.Memory* @sub_401c40.dgesl(%struct.State* nonnull %0, i64 %2937, %struct.Memory* %2676)
  %2942 = load i64, i64* %3, align 8
  %2943 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2944 = add i32 %2943, 1
  %2945 = zext i32 %2944 to i64
  store i64 %2945, i64* %RAX.i271, align 8
  %2946 = icmp eq i32 %2943, -1
  %2947 = icmp eq i32 %2944, 0
  %2948 = or i1 %2946, %2947
  %2949 = zext i1 %2948 to i8
  store i8 %2949, i8* %14, align 1
  %2950 = and i32 %2944, 255
  %2951 = tail call i32 @llvm.ctpop.i32(i32 %2950)
  %2952 = trunc i32 %2951 to i8
  %2953 = and i8 %2952, 1
  %2954 = xor i8 %2953, 1
  store i8 %2954, i8* %21, align 1
  %2955 = xor i32 %2944, %2943
  %2956 = lshr i32 %2955, 4
  %2957 = trunc i32 %2956 to i8
  %2958 = and i8 %2957, 1
  store i8 %2958, i8* %27, align 1
  %2959 = zext i1 %2947 to i8
  store i8 %2959, i8* %30, align 1
  %2960 = lshr i32 %2944, 31
  %2961 = trunc i32 %2960 to i8
  store i8 %2961, i8* %33, align 1
  %2962 = lshr i32 %2943, 31
  %2963 = xor i32 %2960, %2962
  %2964 = add nuw nsw i32 %2963, %2960
  %2965 = icmp eq i32 %2964, 2
  %2966 = zext i1 %2965 to i8
  store i8 %2966, i8* %39, align 1
  store i32 %2944, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2967 = add i64 %2942, -72
  store i64 %2967, i64* %3, align 8
  br label %block_.L_401588

block_.L_4015e6:                                  ; preds = %block_.L_401588
  %2968 = add i64 %2932, -4086
  %2969 = add i64 %2932, 5
  %2970 = load i64, i64* %6, align 8
  %2971 = add i64 %2970, -8
  %2972 = inttoptr i64 %2971 to i64*
  store i64 %2969, i64* %2972, align 8
  store i64 %2971, i64* %6, align 8
  store i64 %2968, i64* %3, align 8
  %call2_4015e6 = tail call %struct.Memory* @sub_4005f0.second(%struct.State* nonnull %0, i64 %2968, %struct.Memory* %2676)
  %2973 = load i64, i64* %3, align 8
  %2974 = add i64 %2973, 6253
  %2975 = add i64 %2973, 8
  store i64 %2975, i64* %3, align 8
  %2976 = inttoptr i64 %2974 to i64*
  %2977 = load i64, i64* %2976, align 8
  store i64 %2977, i64* %227, align 1
  store double 0.000000e+00, double* %229, align 1
  %2978 = add i64 %2973, 6269
  %2979 = add i64 %2973, 16
  store i64 %2979, i64* %3, align 8
  %2980 = inttoptr i64 %2978 to i64*
  %2981 = load i64, i64* %2980, align 8
  store i64 %2981, i64* %600, align 1
  store double 0.000000e+00, double* %1962, align 1
  %2982 = load i64, i64* %RBP.i, align 8
  %2983 = add i64 %2982, -40
  %2984 = add i64 %2973, 21
  store i64 %2984, i64* %3, align 8
  %2985 = load <2 x float>, <2 x float>* %83, align 1
  %2986 = load <2 x i32>, <2 x i32>* %257, align 1
  %2987 = inttoptr i64 %2983 to float*
  %2988 = load float, float* %2987, align 4
  %2989 = extractelement <2 x float> %2985, i32 0
  %2990 = fsub float %2989, %2988
  store float %2990, float* %46, align 1
  %2991 = bitcast <2 x float> %2985 to <2 x i32>
  %2992 = extractelement <2 x i32> %2991, i32 1
  store i32 %2992, i32* %281, align 1
  %2993 = extractelement <2 x i32> %2986, i32 0
  store i32 %2993, i32* %283, align 1
  %2994 = extractelement <2 x i32> %2986, i32 1
  store i32 %2994, i32* %285, align 1
  %2995 = load <2 x i32>, <2 x i32>* %1963, align 1
  %2996 = load <2 x i32>, <2 x i32>* %1964, align 1
  %2997 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2998 = sitofp i32 %2997 to float
  store float %2998, float* %1965, align 1
  %2999 = extractelement <2 x i32> %2995, i32 1
  store i32 %2999, i32* %262, align 1
  %3000 = extractelement <2 x i32> %2996, i32 0
  store i32 %3000, i32* %264, align 1
  %3001 = extractelement <2 x i32> %2996, i32 1
  store i32 %3001, i32* %266, align 1
  %3002 = load <2 x float>, <2 x float>* %83, align 1
  %3003 = load <2 x i32>, <2 x i32>* %257, align 1
  %3004 = load <2 x float>, <2 x float>* %1966, align 1
  %3005 = extractelement <2 x float> %3002, i32 0
  %3006 = extractelement <2 x float> %3004, i32 0
  %3007 = fdiv float %3005, %3006
  store float %3007, float* %46, align 1
  %3008 = bitcast <2 x float> %3002 to <2 x i32>
  %3009 = extractelement <2 x i32> %3008, i32 1
  store i32 %3009, i32* %281, align 1
  %3010 = extractelement <2 x i32> %3003, i32 0
  store i32 %3010, i32* %283, align 1
  %3011 = extractelement <2 x i32> %3003, i32 1
  store i32 %3011, i32* %285, align 1
  %3012 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3013 = sext i32 %3012 to i64
  %3014 = shl nsw i64 %3013, 2
  %3015 = add nsw i64 %3014, 6470412
  %3016 = add i64 %2973, 51
  store i64 %3016, i64* %3, align 8
  %3017 = load <2 x float>, <2 x float>* %83, align 1
  %3018 = extractelement <2 x float> %3017, i32 0
  %3019 = inttoptr i64 %3015 to float*
  store float %3018, float* %3019, align 4
  %3020 = load i64, i64* %3, align 8
  %3021 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3022 = sext i32 %3021 to i64
  store i64 %3022, i64* %RAX.i271, align 8
  %3023 = shl nsw i64 %3022, 2
  %3024 = add nsw i64 %3023, 6470352
  %3025 = add i64 %3020, 17
  store i64 %3025, i64* %3, align 8
  %3026 = inttoptr i64 %3024 to i32*
  %3027 = load i32, i32* %3026, align 4
  store i32 %3027, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  store i64 %3022, i64* %RAX.i271, align 8
  %3028 = add nsw i64 %3023, 6470412
  %3029 = add i64 %3020, 34
  store i64 %3029, i64* %3, align 8
  %3030 = load <2 x float>, <2 x float>* %83, align 1
  %3031 = load <2 x i32>, <2 x i32>* %257, align 1
  %3032 = inttoptr i64 %3028 to float*
  %3033 = load float, float* %3032, align 4
  %3034 = extractelement <2 x float> %3030, i32 0
  %3035 = fadd float %3034, %3033
  store float %3035, float* %46, align 1
  %3036 = bitcast <2 x float> %3030 to <2 x i32>
  %3037 = extractelement <2 x i32> %3036, i32 1
  store i32 %3037, i32* %281, align 1
  %3038 = extractelement <2 x i32> %3031, i32 0
  store i32 %3038, i32* %283, align 1
  %3039 = extractelement <2 x i32> %3031, i32 1
  store i32 %3039, i32* %285, align 1
  %3040 = load i64, i64* %RBP.i, align 8
  %3041 = add i64 %3040, -16
  %3042 = add i64 %3020, 39
  store i64 %3042, i64* %3, align 8
  %3043 = load <2 x float>, <2 x float>* %83, align 1
  %3044 = extractelement <2 x float> %3043, i32 0
  %3045 = inttoptr i64 %3041 to float*
  store float %3044, float* %3045, align 4
  %3046 = load i64, i64* %RBP.i, align 8
  %3047 = add i64 %3046, -16
  %3048 = load i64, i64* %3, align 8
  %3049 = add i64 %3048, 5
  store i64 %3049, i64* %3, align 8
  %3050 = inttoptr i64 %3047 to i32*
  %3051 = load i32, i32* %3050, align 4
  store i32 %3051, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %3052 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3053 = sext i32 %3052 to i64
  store i64 %3053, i64* %RAX.i271, align 8
  %3054 = shl nsw i64 %3053, 2
  %3055 = add nsw i64 %3054, 6470472
  %3056 = add i64 %3048, 22
  store i64 %3056, i64* %3, align 8
  %3057 = load <2 x float>, <2 x float>* %83, align 1
  %3058 = extractelement <2 x float> %3057, i32 0
  %3059 = inttoptr i64 %3055 to float*
  store float %3058, float* %3059, align 4
  %3060 = load i64, i64* %RBP.i, align 8
  %3061 = add i64 %3060, -12
  %3062 = load i64, i64* %3, align 8
  %3063 = add i64 %3062, 5
  store i64 %3063, i64* %3, align 8
  %3064 = inttoptr i64 %3061 to float*
  %3065 = load float, float* %3064, align 4
  %3066 = fpext float %3065 to double
  store double %3066, double* %218, align 1
  %3067 = add i64 %3060, -16
  %3068 = add i64 %3062, 10
  store i64 %3068, i64* %3, align 8
  %3069 = inttoptr i64 %3067 to float*
  %3070 = load float, float* %3069, align 4
  %3071 = fpext float %3070 to double
  store double %3071, double* %267, align 1
  %3072 = load double, double* %253, align 1
  %3073 = fmul double %3071, %3072
  store double %3073, double* %253, align 1
  %3074 = load <2 x i32>, <2 x i32>* %2712, align 1
  %3075 = fdiv double %3066, %3073
  %.cast33 = bitcast double %3075 to <2 x i32>
  %3076 = fptrunc double %3075 to float
  store float %3076, float* %46, align 1
  %3077 = extractelement <2 x i32> %.cast33, i32 1
  store i32 %3077, i32* %281, align 1
  %3078 = extractelement <2 x i32> %3074, i32 0
  store i32 %3078, i32* %283, align 1
  %3079 = extractelement <2 x i32> %3074, i32 1
  store i32 %3079, i32* %285, align 1
  %3080 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3081 = sext i32 %3080 to i64
  %3082 = shl nsw i64 %3081, 2
  %3083 = add nsw i64 %3082, 6470532
  %3084 = add i64 %3062, 39
  store i64 %3084, i64* %3, align 8
  %3085 = load <2 x float>, <2 x float>* %83, align 1
  %3086 = extractelement <2 x float> %3085, i32 0
  %3087 = inttoptr i64 %3083 to float*
  store float %3086, float* %3087, align 4
  %3088 = load i64, i64* %3, align 8
  %3089 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3090 = sext i32 %3089 to i64
  store i64 %3090, i64* %RAX.i271, align 8
  %3091 = shl nsw i64 %3090, 2
  %3092 = add nsw i64 %3091, 6470532
  %3093 = add i64 %3088, 17
  store i64 %3093, i64* %3, align 8
  %3094 = inttoptr i64 %3092 to float*
  %3095 = load float, float* %3094, align 4
  %3096 = fpext float %3095 to double
  %3097 = load double, double* %226, align 1
  %3098 = fdiv double %3097, %3096
  store double %3098, double* %226, align 1
  %3099 = bitcast double %3096 to <2 x i32>
  %3100 = load <2 x i32>, <2 x i32>* %257, align 1
  %3101 = fptrunc double %3098 to float
  store float %3101, float* %46, align 1
  %3102 = extractelement <2 x i32> %3099, i32 1
  store i32 %3102, i32* %281, align 1
  %3103 = extractelement <2 x i32> %3100, i32 0
  store i32 %3103, i32* %283, align 1
  %3104 = extractelement <2 x i32> %3100, i32 1
  store i32 %3104, i32* %285, align 1
  store i64 %3090, i64* %RAX.i271, align 8
  %3105 = add nsw i64 %3091, 6470592
  %3106 = add i64 %3088, 42
  store i64 %3106, i64* %3, align 8
  %3107 = load <2 x float>, <2 x float>* %83, align 1
  %3108 = extractelement <2 x float> %3107, i32 0
  %3109 = inttoptr i64 %3105 to float*
  store float %3108, float* %3109, align 4
  %3110 = load i64, i64* %RBP.i, align 8
  %3111 = add i64 %3110, -16
  %3112 = load i64, i64* %3, align 8
  %3113 = add i64 %3112, 5
  store i64 %3113, i64* %3, align 8
  %3114 = inttoptr i64 %3111 to i32*
  %3115 = load i32, i32* %3114, align 4
  store i32 %3115, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %3116 = add i64 %3110, -8
  %3117 = add i64 %3112, 10
  store i64 %3117, i64* %3, align 8
  %3118 = load <2 x float>, <2 x float>* %83, align 1
  %3119 = inttoptr i64 %3116 to float*
  %3120 = load float, float* %3119, align 4
  %3121 = extractelement <2 x float> %3118, i32 0
  %3122 = fdiv float %3121, %3120
  store float %3122, float* %46, align 1
  %3123 = bitcast <2 x float> %3118 to <2 x i32>
  %3124 = extractelement <2 x i32> %3123, i32 1
  store i32 %3124, i32* %281, align 1
  %3125 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3126 = sext i32 %3125 to i64
  %3127 = shl nsw i64 %3126, 2
  %3128 = add nsw i64 %3127, 6470652
  %3129 = add i64 %3112, 27
  store i64 %3129, i64* %3, align 8
  %3130 = load <2 x float>, <2 x float>* %83, align 1
  %3131 = extractelement <2 x float> %3130, i32 0
  %3132 = inttoptr i64 %3128 to float*
  store float %3131, float* %3132, align 4
  %3133 = load i64, i64* %3, align 8
  %3134 = load i32, i32* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to i32*), align 8
  store i32 %3134, i32* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store float 0.000000e+00, float* %53, align 1
  %3135 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3136 = sext i32 %3135 to i64
  store i64 %3136, i64* %RAX.i271, align 8
  %3137 = shl nsw i64 %3136, 2
  %3138 = add nsw i64 %3137, 6470532
  %3139 = add i64 %3133, 26
  store i64 %3139, i64* %3, align 8
  %3140 = load <2 x float>, <2 x float>* %83, align 1
  %3141 = load <2 x i32>, <2 x i32>* %257, align 1
  %3142 = inttoptr i64 %3138 to float*
  %3143 = load float, float* %3142, align 4
  %3144 = extractelement <2 x float> %3140, i32 0
  %3145 = fadd float %3144, %3143
  store float %3145, float* %46, align 1
  %3146 = bitcast <2 x float> %3140 to <2 x i32>
  %3147 = extractelement <2 x i32> %3146, i32 1
  store i32 %3147, i32* %281, align 1
  %3148 = extractelement <2 x i32> %3141, i32 0
  store i32 %3148, i32* %283, align 1
  %3149 = extractelement <2 x i32> %3141, i32 1
  store i32 %3149, i32* %285, align 1
  %3150 = load <2 x float>, <2 x float>* %83, align 1
  %3151 = extractelement <2 x float> %3150, i32 0
  store float %3151, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  %3152 = zext i32 %3135 to i64
  store i64 %3152, i64* %RDI.i594, align 8
  %3153 = add i64 %3133, 4521
  %3154 = add i64 %3133, 47
  %3155 = load i64, i64* %6, align 8
  %3156 = add i64 %3155, -8
  %3157 = inttoptr i64 %3156 to i64*
  store i64 %3154, i64* %3157, align 8
  store i64 %3156, i64* %6, align 8
  store i64 %3153, i64* %3, align 8
  %call2_4016f1 = tail call %struct.Memory* @sub_402870.print_time(%struct.State* nonnull %0, i64 %3153, %struct.Memory* %2676)
  %3158 = load i64, i64* %3, align 8
  %3159 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3160 = add i32 %3159, 1
  %3161 = zext i32 %3160 to i64
  store i64 %3161, i64* %RAX.i271, align 8
  %3162 = icmp eq i32 %3159, -1
  %3163 = icmp eq i32 %3160, 0
  %3164 = or i1 %3162, %3163
  %3165 = zext i1 %3164 to i8
  store i8 %3165, i8* %14, align 1
  %3166 = and i32 %3160, 255
  %3167 = tail call i32 @llvm.ctpop.i32(i32 %3166)
  %3168 = trunc i32 %3167 to i8
  %3169 = and i8 %3168, 1
  %3170 = xor i8 %3169, 1
  store i8 %3170, i8* %21, align 1
  %3171 = xor i32 %3160, %3159
  %3172 = lshr i32 %3171, 4
  %3173 = trunc i32 %3172 to i8
  %3174 = and i8 %3173, 1
  store i8 %3174, i8* %27, align 1
  %3175 = zext i1 %3163 to i8
  store i8 %3175, i8* %30, align 1
  %3176 = lshr i32 %3160, 31
  %3177 = trunc i32 %3176 to i8
  store i8 %3177, i8* %33, align 1
  %3178 = lshr i32 %3159, 31
  %3179 = xor i32 %3176, %3178
  %3180 = add nuw nsw i32 %3179, %3176
  %3181 = icmp eq i32 %3180, 2
  %3182 = zext i1 %3181 to i8
  store i8 %3182, i8* %39, align 1
  store i32 %3160, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3183 = add i64 %3158, -601
  store i64 %3183, i64* %3, align 8
  br label %block_.L_40149d

block_.L_40170c:                                  ; preds = %block_.L_40149d
  store i64 ptrtoint (%G__0x403140_type* @G__0x403140 to i64), i64* %RSI.i245, align 8
  %3184 = bitcast [32 x %union.VectorReg]* %40 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %3184, align 1
  %3185 = add i64 %2738, 5988
  %3186 = add i64 %2738, 21
  store i64 %3186, i64* %3, align 8
  %3187 = inttoptr i64 %3185 to i64*
  %3188 = load i64, i64* %3187, align 8
  %3189 = load float, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  %3190 = fpext float %3189 to double
  %3191 = bitcast i64 %3188 to double
  %3192 = fdiv double %3190, %3191
  store double %3192, double* %253, align 1
  %.cast35 = bitcast i64 %3188 to <2 x i32>
  %3193 = fptrunc double %3192 to float
  store float %3193, float* %944, align 1
  %3194 = extractelement <2 x i32> %.cast35, i32 1
  store i32 %3194, i32* %603, align 1
  store i32 0, i32* %604, align 1
  store i32 0, i32* %606, align 1
  %3195 = load <2 x float>, <2 x float>* %1037, align 1
  %3196 = extractelement <2 x float> %3195, i32 0
  store float %3196, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  %3197 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %3197, i64* %RDI.i594, align 8
  store i8 1, i8* %AL.i1482, align 1
  %3198 = add i64 %2738, -4636
  %3199 = add i64 %2738, 62
  %3200 = load i64, i64* %6, align 8
  %3201 = add i64 %3200, -8
  %3202 = inttoptr i64 %3201 to i64*
  store i64 %3199, i64* %3202, align 8
  store i64 %3201, i64* %6, align 8
  store i64 %3198, i64* %3, align 8
  %3203 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2676)
  %3204 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i347, align 8
  %3205 = load i64, i64* %RBP.i, align 8
  %3206 = add i64 %3205, -996
  %3207 = load i32, i32* %EAX.i1471, align 4
  %3208 = add i64 %3204, 8
  store i64 %3208, i64* %3, align 8
  %3209 = inttoptr i64 %3206 to i32*
  store i32 %3207, i32* %3209, align 4
  %3210 = load i32, i32* %493, align 4
  %3211 = zext i32 %3210 to i64
  %3212 = load i64, i64* %3, align 8
  store i64 %3211, i64* %RAX.i271, align 8
  %3213 = load i64, i64* %6, align 8
  %3214 = add i64 %3213, 1008
  store i64 %3214, i64* %6, align 8
  %3215 = icmp ugt i64 %3213, -1009
  %3216 = zext i1 %3215 to i8
  store i8 %3216, i8* %14, align 1
  %3217 = trunc i64 %3214 to i32
  %3218 = and i32 %3217, 255
  %3219 = tail call i32 @llvm.ctpop.i32(i32 %3218)
  %3220 = trunc i32 %3219 to i8
  %3221 = and i8 %3220, 1
  %3222 = xor i8 %3221, 1
  store i8 %3222, i8* %21, align 1
  %3223 = xor i64 %3213, 16
  %3224 = xor i64 %3223, %3214
  %3225 = lshr i64 %3224, 4
  %3226 = trunc i64 %3225 to i8
  %3227 = and i8 %3226, 1
  store i8 %3227, i8* %27, align 1
  %3228 = icmp eq i64 %3214, 0
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %30, align 1
  %3230 = lshr i64 %3214, 63
  %3231 = trunc i64 %3230 to i8
  store i8 %3231, i8* %33, align 1
  %3232 = lshr i64 %3213, 63
  %3233 = xor i64 %3230, %3232
  %3234 = add nuw nsw i64 %3233, %3230
  %3235 = icmp eq i64 %3234, 2
  %3236 = zext i1 %3235 to i8
  store i8 %3236, i8* %39, align 1
  %3237 = add i64 %3212, 10
  store i64 %3237, i64* %3, align 8
  %3238 = add i64 %3213, 1016
  %3239 = inttoptr i64 %3214 to i64*
  %3240 = load i64, i64* %3239, align 8
  store i64 %3240, i64* %RBP.i, align 8
  store i64 %3238, i64* %6, align 8
  %3241 = add i64 %3212, 11
  store i64 %3241, i64* %3, align 8
  %3242 = inttoptr i64 %3238 to i64*
  %3243 = load i64, i64* %3242, align 8
  store i64 %3243, i64* %3, align 8
  %3244 = add i64 %3213, 1024
  store i64 %3244, i64* %6, align 8
  ret %struct.Memory* %3203
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x3f0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1008
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1008
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
  %31 = add nuw nsw i64 %30, %29
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402eeb___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402eeb_type* @G__0x402eeb to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x27eb__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10227
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402eca___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402eca_type* @G__0x402eca to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402eb0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402eb0_type* @G__0x402eb0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2d0___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 720, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x340__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -832
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x348__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -840
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x350__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -848
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x354__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -852
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x360__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -864
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.memset_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x20__MINUS0x340__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -832
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 32, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x350__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -848
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x360__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -864
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc9__0x604050(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 201, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc8__0x604054(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 200, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x354__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -852
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x64__0x604058(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 100, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x348__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -840
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402ef3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402ef3_type* @G__0x402ef3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x364__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -868
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402efb___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402efb_type* @G__0x402efb to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x368__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -872
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402f31___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f31_type* @G__0x402f31 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x36c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -876
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402f42___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f42_type* @G__0x402f42 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x370__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -880
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x604060___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x62b480___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x14__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x26a0__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9896
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x26a0__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9896
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604058___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_0x604058___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %9 = sext i32 %5 to i64
  %10 = sext i32 %8 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %4, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__r10d___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm2___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm1___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl__r10d___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm3___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %15, float* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 1
  %18 = getelementptr inbounds i8, i8* %5, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 0
  %21 = bitcast i64* %10 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %12, i32 1
  %23 = getelementptr inbounds i8, i8* %5, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604050___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604058___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x374__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -884
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.matgen(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.second(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x62b7a0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x62bac0___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.dgefa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fsub float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bad0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bad0_type* @G_0x62bad0 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x62b480___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.dgesl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bb0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb0c_type* @G_0x62bb0c to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x62bad0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62bad0_type* @G_0x62bad0 to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_0x62bb0c___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load float, float* bitcast (%G_0x62bb0c_type* @G_0x62bb0c to float*), align 8
  %13 = extractelement <2 x float> %8, i32 0
  %14 = fadd float %13, %12
  %15 = bitcast %union.VectorReg* %3 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %8 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %4, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 0
  %21 = bitcast i64* %9 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %11, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62bcec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x604058___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400937(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x62bcec___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x62b480___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6468736
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bcf0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470896
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %20 = xor i32 %7, %6
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x62bcec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4008eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4009c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movd__xmm0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  %7 = trunc i64 %6 to i32
  %8 = bitcast i64* %RCX to [2 x i32]*
  %9 = bitcast i64* %RCX to i32*
  store i32 %7, i32* %9, align 1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__0x80000000___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, -2147483648
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RCX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movd__ecx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to i32*
  store i32 %6, i32* %9, align 1
  %10 = getelementptr inbounds i8, i8* %5, i64 4
  %11 = bitcast i8* %10 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to i32*
  store i32 0, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %5, i64 12
  %15 = bitcast i8* %14 to i32*
  store i32 0, i32* %15, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62b480___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6468736
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40096d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x62b480___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x62bcf0___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62bcf0_type* @G__0x62bcf0 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x604060___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604058___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604050___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.dmxpy(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400b25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x62b480___rax_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6468736
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x2458__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9311
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, 9315
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, 9319
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, 9323
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pand__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %3, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %14 = load i64, i64* %13, align 1
  %15 = and i64 %12, %8
  %16 = and i64 %14, %10
  %17 = trunc i64 %15 to i32
  %18 = lshr i64 %15, 32
  %19 = trunc i64 %18 to i32
  %20 = bitcast %union.VectorReg* %3 to i32*
  store i32 %17, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %19, i32* %22, align 1
  %23 = trunc i64 %16 to i32
  %24 = bitcast i64* %9 to i32*
  store i32 %23, i32* %24, align 1
  %25 = lshr i64 %16, 32
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
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
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_400a68(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x380__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -896
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400a8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x62b480___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6468736
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x2420__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9255
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, 9259
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, 9263
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, 9267
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pand__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = load i64, i64* %13, align 1
  %15 = and i64 %12, %8
  %16 = and i64 %14, %10
  %17 = trunc i64 %15 to i32
  %18 = lshr i64 %15, 32
  %19 = trunc i64 %18 to i32
  %20 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %17, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %19, i32* %22, align 1
  %23 = trunc i64 %16 to i32
  %24 = bitcast i64* %9 to i32*
  store i32 %23, i32* %24, align 1
  %25 = lshr i64 %16, 32
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x380__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -896
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %.cast = bitcast <2 x i32> %8 to double
  %12 = fptrunc double %.cast to float
  %13 = bitcast %union.VectorReg* %3 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %8, i32 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %11, i32 0
  %18 = bitcast i64* %9 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 1
  %20 = getelementptr inbounds i8, i8* %4, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x62bcf0___rax_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470896
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x23e6__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9197
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, 9201
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, 9205
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, 9209
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_400ada(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x388__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -904
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400afe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x62bcf0___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470896
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps_0x23ae__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9141
  %7 = add i64 %5, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i64 %5, 9145
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i64 %5, 9149
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = add i64 %5, 9153
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %19, align 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %12, i32* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %23 = bitcast i64* %22 to i32*
  store i32 %15, i32* %23, align 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %18, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x388__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -904
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400a17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x231f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8999
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.epslon(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402f54___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f54_type* @G__0x402f54 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x2308__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8976
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x604058___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x14__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x18__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x24__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x62bcf0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62bcf0_type* @G_0x62bcf0 to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fsub float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604058___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, 0
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x62bcf0___rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470896
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402f7b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f7b_type* @G__0x402f7b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x38c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -908
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402f9e___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f9e_type* @G__0x402f9e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x30__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x34__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x38__rbp____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x390__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -912
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x5___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 5, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402fbf___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402fbf_type* @G__0x402fbf to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x394__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -916
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x402ff4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402ff4_type* @G__0x402ff4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604050___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x398__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -920
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x40302a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40302a_type* @G__0x40302a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x39c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -924
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x403062___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x403062_type* @G__0x403062 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -928
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x62bb48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb48_type* @G_0x62bb48 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -932
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_400d0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x2190__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8600
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x2198__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8608
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0xc__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm3___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast %union.VectorReg* %3 to float*
  store float %15, float* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 1
  %18 = getelementptr inbounds i8, i8* %5, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 0
  %21 = bitcast i64* %10 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %12, i32 1
  %23 = getelementptr inbounds i8, i8* %5, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x62bb84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x62bb84___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load float, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
  %7 = fpext float %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bbc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bbc0_type* @G_0x62bbc0 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bb84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss_MINUS0x8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fdiv float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bbfc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bbfc_type* @G_0x62bbfc to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.print_time(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x40306f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40306f_type* @G__0x40306f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xfffffffd__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x64__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 100, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -936
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -68
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400dd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x40308d___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40308d_type* @G__0x40308d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x54__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -84
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -80
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fsub float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -940
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400e2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_400d6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4030a7___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4030a7_type* @G__0x4030a7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x48__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x44__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %.cast = bitcast <2 x i32> %8 to double
  %12 = fptrunc double %.cast to float
  %13 = bitcast %union.VectorReg* %3 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %8, i32 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %11, i32 0
  %18 = bitcast i64* %9 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 1
  %20 = getelementptr inbounds i8, i8* %4, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4030ce___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4030ce_type* @G__0x4030ce to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -944
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x64__0x62c010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 100, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -948
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x62c010___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400f4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ec4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62c010___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -952
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400fa0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62c010___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x62c010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fa5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_400ea6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3e8__0x62c010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1000, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x62c010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400fd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x62c010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4030fd___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4030fd_type* @G__0x4030fd to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x403111___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x403111_type* @G__0x403111 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -956
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -960
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -964
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x62c010___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x48__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -72
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bb9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x62c014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -968
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6__0x62c014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %6 = add i32 %5, -6
  %7 = icmp ult i32 %5, 6
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4012f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40112b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4010a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss_MINUS0x2c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fsub float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x62c014___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bad0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470352
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4011cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40116d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x1c80__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7304
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x1c88__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7312
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x62c010___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm3___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bb0c___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470412
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x62bad0___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470352
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = bitcast %union.VectorReg* %3 to i32*
  store i32 %11, i32* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_0x62bb0c___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470412
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to <2 x i32>*
  %14 = load <2 x i32>, <2 x i32>* %13, align 1
  %15 = inttoptr i64 %7 to float*
  %16 = load float, float* %15, align 4
  %17 = extractelement <2 x float> %11, i32 0
  %18 = fadd float %17, %16
  %19 = bitcast %union.VectorReg* %3 to float*
  store float %18, float* %19, align 1
  %20 = bitcast <2 x float> %11 to <2 x i32>
  %21 = extractelement <2 x i32> %20, i32 1
  %22 = getelementptr inbounds i8, i8* %4, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %14, i32 0
  %25 = bitcast i64* %12 to i32*
  store i32 %24, i32* %25, align 1
  %26 = extractelement <2 x i32> %14, i32 1
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bb48___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470472
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0xc__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bb84___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470532
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x62bb84___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470532
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to float*
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = bitcast %union.VectorReg* %3 to double*
  store double %11, double* %12, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %15, float* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 1
  %18 = getelementptr inbounds i8, i8* %5, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 0
  %21 = bitcast i64* %10 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %12, i32 1
  %23 = getelementptr inbounds i8, i8* %5, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bbc0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470592
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bbfc___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6470652
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = extractelement <2 x float> %10, i32 0
  %12 = inttoptr i64 %6 to float*
  store float %11, float* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x62bb9c___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_0x62bb84___rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6470532
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 9
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to <2 x i32>*
  %14 = load <2 x i32>, <2 x i32>* %13, align 1
  %15 = inttoptr i64 %7 to float*
  %16 = load float, float* %15, align 4
  %17 = extractelement <2 x float> %11, i32 0
  %18 = fadd float %17, %16
  %19 = bitcast %union.VectorReg* %3 to float*
  store float %18, float* %19, align 1
  %20 = bitcast <2 x float> %11 to <2 x i32>
  %21 = extractelement <2 x i32> %20, i32 1
  %22 = getelementptr inbounds i8, i8* %4, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %14, i32 0
  %25 = bitcast i64* %12 to i32*
  store i32 %24, i32* %25, align 1
  %26 = extractelement <2 x i32> %14, i32 1
  %27 = getelementptr inbounds i8, i8* %4, i64 12
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62c014___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62c014___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x62c014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401082(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x403140___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x403140_type* @G__0x403140 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x1b6a__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7026
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x62bb9c___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load float, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  %7 = fpext float %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x62bb9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x403169___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x403169_type* @G__0x403169 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -972
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -976
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4013ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x62c020___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604054___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401369(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x4c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x604054___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -980
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -984
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -988
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x4c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x62bbb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7__0x62c014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 7, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -992
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc__0x62c014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %6 = add i32 %5, -12
  %7 = icmp ult i32 %5, 12
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40170c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401546(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4014c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4015e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401588(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x1865__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 6253
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x186d__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 6261
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x62bbb4___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40149d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x174f__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5975
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x62bbb4___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load float, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  %7 = fpext float %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x62bbb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -996
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3f0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1008
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1009
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_retq(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
