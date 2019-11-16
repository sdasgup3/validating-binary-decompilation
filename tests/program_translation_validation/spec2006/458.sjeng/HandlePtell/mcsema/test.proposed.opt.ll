; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x62d784_type = type <{ [4 x i8] }>
%G_0x62d788_type = type <{ [4 x i8] }>
%G_0x62d78c_type = type <{ [4 x i8] }>
%G_0x62d790_type = type <{ [4 x i8] }>
%G_0x62d79c_type = type <{ [4 x i8] }>
%G_0x62d7a0_type = type <{ [4 x i8] }>
%G_0x62d7a4_type = type <{ [4 x i8] }>
%G_0x62d7a8_type = type <{ [4 x i8] }>
%G_0x62d7ac_type = type <{ [4 x i8] }>
%G_0x62d7b0_type = type <{ [4 x i8] }>
%G_0x62d7c4_type = type <{ [4 x i8] }>
%G_0x62d7c8_type = type <{ [4 x i8] }>
%G_0x62d7cc_type = type <{ [4 x i8] }>
%G_0x62d7d0_type = type <{ [4 x i8] }>
%G_0x62d7dc_type = type <{ [4 x i8] }>
%G_0x62d7e0_type = type <{ [4 x i8] }>
%G_0x62d7e4_type = type <{ [4 x i8] }>
%G_0x62d7e8_type = type <{ [4 x i8] }>
%G_0x62d7ec_type = type <{ [4 x i8] }>
%G_0x62d7f0_type = type <{ [4 x i8] }>
%G_0x85f154_type = type <{ [1 x i8] }>
%G_0x86bd60_type = type <{ [4 x i8] }>
%G_0x86bd74_type = type <{ [4 x i8] }>
%G_0x86bd78_type = type <{ [4 x i8] }>
%G_0x86bd90_type = type <{ [4 x i8] }>
%G_0x886a60_type = type <{ [4 x i8] }>
%G_0x886b84_type = type <{ [1 x i8] }>
%G__0x427d10_type = type <{ [8 x i8] }>
%G__0x42873b_type = type <{ [8 x i8] }>
%G__0x428778_type = type <{ [8 x i8] }>
%G__0x42877b_type = type <{ [8 x i8] }>
%G__0x42877d_type = type <{ [8 x i8] }>
%G__0x428810_type = type <{ [8 x i8] }>
%G__0x428816_type = type <{ [8 x i8] }>
%G__0x428851_type = type <{ [8 x i8] }>
%G__0x428855_type = type <{ [8 x i8] }>
%G__0x42888d_type = type <{ [8 x i8] }>
%G__0x428890_type = type <{ [8 x i8] }>
%G__0x4288af_type = type <{ [8 x i8] }>
%G__0x4288b4_type = type <{ [8 x i8] }>
%G__0x4288b9_type = type <{ [8 x i8] }>
%G__0x4288dc_type = type <{ [8 x i8] }>
%G__0x4288e1_type = type <{ [8 x i8] }>
%G__0x428905_type = type <{ [8 x i8] }>
%G__0x42890b_type = type <{ [8 x i8] }>
%G__0x42892e_type = type <{ [8 x i8] }>
%G__0x42893d_type = type <{ [8 x i8] }>
%G__0x428942_type = type <{ [8 x i8] }>
%G__0x42895d_type = type <{ [8 x i8] }>
%G__0x42896b_type = type <{ [8 x i8] }>
%G__0x428971_type = type <{ [8 x i8] }>
%G__0x428973_type = type <{ [8 x i8] }>
%G__0x428996_type = type <{ [8 x i8] }>
%G__0x428997_type = type <{ [8 x i8] }>
%G__0x428998_type = type <{ [8 x i8] }>
%G__0x42899a_type = type <{ [4 x i8] }>
%G__0x4289a0_type = type <{ [4 x i8] }>
%G__0x4289d1_type = type <{ [4 x i8] }>
%G__0x4289fd_type = type <{ [8 x i8] }>
%G__0x428a1a_type = type <{ [8 x i8] }>
%G__0x428a37_type = type <{ [8 x i8] }>
%G__0x428a52_type = type <{ [8 x i8] }>
%G__0x428a6e_type = type <{ [8 x i8] }>
%G__0x428a89_type = type <{ [8 x i8] }>
%G__0x428aa8_type = type <{ [8 x i8] }>
%G__0x428ac4_type = type <{ [8 x i8] }>
%G__0x428ae6_type = type <{ [8 x i8] }>
%G__0x428ae7_type = type <{ [8 x i8] }>
%G__0x428ae8_type = type <{ [8 x i8] }>
%G__0x428aea_type = type <{ [4 x i8] }>
%G__0x428b1f_type = type <{ [4 x i8] }>
%G__0x428b53_type = type <{ [4 x i8] }>
%G__0x428b82_type = type <{ [8 x i8] }>
%G__0x428b84_type = type <{ [8 x i8] }>
%G__0x428b94_type = type <{ [8 x i8] }>
%G__0x428b9a_type = type <{ [8 x i8] }>
%G__0x428b9f_type = type <{ [8 x i8] }>
%G__0x428ba1_type = type <{ [8 x i8] }>
%G__0x428baa_type = type <{ [8 x i8] }>
%G__0x428be1_type = type <{ [8 x i8] }>
%G__0x428bfb_type = type <{ [8 x i8] }>
%G__0x428c00_type = type <{ [8 x i8] }>
%G__0x428c1b_type = type <{ [8 x i8] }>
%G__0x428c1e_type = type <{ [8 x i8] }>
%G__0x428c21_type = type <{ [8 x i8] }>
%G__0x428c27_type = type <{ [8 x i8] }>
%G__0x428c41_type = type <{ [8 x i8] }>
%G__0x428c49_type = type <{ [8 x i8] }>
%G__0x428ca0_type = type <{ [8 x i8] }>
%G__0x4294da_type = type <{ [8 x i8] }>
%G__0x429aeb_type = type <{ [8 x i8] }>
%G__0x429b31_type = type <{ [8 x i8] }>
%G__0x429b3b_type = type <{ [8 x i8] }>
%G__0x429b45_type = type <{ [8 x i8] }>
%G__0x429b59_type = type <{ [8 x i8] }>
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
@G_0x62d784 = local_unnamed_addr global %G_0x62d784_type zeroinitializer
@G_0x62d788 = local_unnamed_addr global %G_0x62d788_type zeroinitializer
@G_0x62d78c = local_unnamed_addr global %G_0x62d78c_type zeroinitializer
@G_0x62d790 = local_unnamed_addr global %G_0x62d790_type zeroinitializer
@G_0x62d79c = local_unnamed_addr global %G_0x62d79c_type zeroinitializer
@G_0x62d7a0 = local_unnamed_addr global %G_0x62d7a0_type zeroinitializer
@G_0x62d7a4 = local_unnamed_addr global %G_0x62d7a4_type zeroinitializer
@G_0x62d7a8 = local_unnamed_addr global %G_0x62d7a8_type zeroinitializer
@G_0x62d7ac = local_unnamed_addr global %G_0x62d7ac_type zeroinitializer
@G_0x62d7b0 = local_unnamed_addr global %G_0x62d7b0_type zeroinitializer
@G_0x62d7c4 = local_unnamed_addr global %G_0x62d7c4_type zeroinitializer
@G_0x62d7c8 = local_unnamed_addr global %G_0x62d7c8_type zeroinitializer
@G_0x62d7cc = local_unnamed_addr global %G_0x62d7cc_type zeroinitializer
@G_0x62d7d0 = local_unnamed_addr global %G_0x62d7d0_type zeroinitializer
@G_0x62d7dc = local_unnamed_addr global %G_0x62d7dc_type zeroinitializer
@G_0x62d7e0 = local_unnamed_addr global %G_0x62d7e0_type zeroinitializer
@G_0x62d7e4 = local_unnamed_addr global %G_0x62d7e4_type zeroinitializer
@G_0x62d7e8 = local_unnamed_addr global %G_0x62d7e8_type zeroinitializer
@G_0x62d7ec = local_unnamed_addr global %G_0x62d7ec_type zeroinitializer
@G_0x62d7f0 = local_unnamed_addr global %G_0x62d7f0_type zeroinitializer
@G_0x85f154 = local_unnamed_addr global %G_0x85f154_type zeroinitializer
@G_0x86bd60 = local_unnamed_addr global %G_0x86bd60_type zeroinitializer
@G_0x86bd74 = local_unnamed_addr global %G_0x86bd74_type zeroinitializer
@G_0x86bd78 = local_unnamed_addr global %G_0x86bd78_type zeroinitializer
@G_0x86bd90 = local_unnamed_addr global %G_0x86bd90_type zeroinitializer
@G_0x886a60 = local_unnamed_addr global %G_0x886a60_type zeroinitializer
@G_0x886b84 = local_unnamed_addr global %G_0x886b84_type zeroinitializer
@G__0x427d10 = global %G__0x427d10_type zeroinitializer
@G__0x42873b = global %G__0x42873b_type zeroinitializer
@G__0x428778 = global %G__0x428778_type zeroinitializer
@G__0x42877b = global %G__0x42877b_type zeroinitializer
@G__0x42877d = global %G__0x42877d_type zeroinitializer
@G__0x428810 = global %G__0x428810_type zeroinitializer
@G__0x428816 = global %G__0x428816_type zeroinitializer
@G__0x428851 = global %G__0x428851_type zeroinitializer
@G__0x428855 = global %G__0x428855_type zeroinitializer
@G__0x42888d = global %G__0x42888d_type zeroinitializer
@G__0x428890 = global %G__0x428890_type zeroinitializer
@G__0x4288af = global %G__0x4288af_type zeroinitializer
@G__0x4288b4 = global %G__0x4288b4_type zeroinitializer
@G__0x4288b9 = global %G__0x4288b9_type zeroinitializer
@G__0x4288dc = global %G__0x4288dc_type zeroinitializer
@G__0x4288e1 = global %G__0x4288e1_type zeroinitializer
@G__0x428905 = global %G__0x428905_type zeroinitializer
@G__0x42890b = global %G__0x42890b_type zeroinitializer
@G__0x42892e = global %G__0x42892e_type zeroinitializer
@G__0x42893d = global %G__0x42893d_type zeroinitializer
@G__0x428942 = global %G__0x428942_type zeroinitializer
@G__0x42895d = global %G__0x42895d_type zeroinitializer
@G__0x42896b = global %G__0x42896b_type zeroinitializer
@G__0x428971 = global %G__0x428971_type zeroinitializer
@G__0x428973 = global %G__0x428973_type zeroinitializer
@G__0x428996 = global %G__0x428996_type zeroinitializer
@G__0x428997 = global %G__0x428997_type zeroinitializer
@G__0x428998 = global %G__0x428998_type zeroinitializer
@G__0x42899a = global %G__0x42899a_type zeroinitializer
@G__0x4289a0 = global %G__0x4289a0_type zeroinitializer
@G__0x4289d1 = global %G__0x4289d1_type zeroinitializer
@G__0x4289fd = global %G__0x4289fd_type zeroinitializer
@G__0x428a1a = global %G__0x428a1a_type zeroinitializer
@G__0x428a37 = global %G__0x428a37_type zeroinitializer
@G__0x428a52 = global %G__0x428a52_type zeroinitializer
@G__0x428a6e = global %G__0x428a6e_type zeroinitializer
@G__0x428a89 = global %G__0x428a89_type zeroinitializer
@G__0x428aa8 = global %G__0x428aa8_type zeroinitializer
@G__0x428ac4 = global %G__0x428ac4_type zeroinitializer
@G__0x428ae6 = global %G__0x428ae6_type zeroinitializer
@G__0x428ae7 = global %G__0x428ae7_type zeroinitializer
@G__0x428ae8 = global %G__0x428ae8_type zeroinitializer
@G__0x428aea = global %G__0x428aea_type zeroinitializer
@G__0x428b1f = global %G__0x428b1f_type zeroinitializer
@G__0x428b53 = global %G__0x428b53_type zeroinitializer
@G__0x428b82 = global %G__0x428b82_type zeroinitializer
@G__0x428b84 = global %G__0x428b84_type zeroinitializer
@G__0x428b94 = global %G__0x428b94_type zeroinitializer
@G__0x428b9a = global %G__0x428b9a_type zeroinitializer
@G__0x428b9f = global %G__0x428b9f_type zeroinitializer
@G__0x428ba1 = global %G__0x428ba1_type zeroinitializer
@G__0x428baa = global %G__0x428baa_type zeroinitializer
@G__0x428be1 = global %G__0x428be1_type zeroinitializer
@G__0x428bfb = global %G__0x428bfb_type zeroinitializer
@G__0x428c00 = global %G__0x428c00_type zeroinitializer
@G__0x428c1b = global %G__0x428c1b_type zeroinitializer
@G__0x428c1e = global %G__0x428c1e_type zeroinitializer
@G__0x428c21 = global %G__0x428c21_type zeroinitializer
@G__0x428c27 = global %G__0x428c27_type zeroinitializer
@G__0x428c41 = global %G__0x428c41_type zeroinitializer
@G__0x428c49 = global %G__0x428c49_type zeroinitializer
@G__0x428ca0 = global %G__0x428ca0_type zeroinitializer
@G__0x4294da = global %G__0x4294da_type zeroinitializer
@G__0x429aeb = global %G__0x429aeb_type zeroinitializer
@G__0x429b31 = global %G__0x429b31_type zeroinitializer
@G__0x429b3b = global %G__0x429b3b_type zeroinitializer
@G__0x429b45 = global %G__0x429b45_type zeroinitializer
@G__0x429b59 = global %G__0x429b59_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memcpy(i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strcpy(i64, i64)

declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400df0.strstr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_410160.ResetHandValue(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @HandlePtell(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -296
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 288
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
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 ptrtoint (%G__0x428778_type* @G__0x428778 to i64), i64* %RSI.i, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i66 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %EAX.i76 = bitcast %union.anon* %39 to i32*
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 4, i64* %RDX.i, align 8
  %RCX.i96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 ptrtoint (%G__0x427d10_type* @G__0x427d10 to i64), i64* %RCX.i96, align 8
  store i64 80, i64* %RAX.i66, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 80, i64* %40, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %41 = add i64 %7, -104
  store i64 %41, i64* %R9.i, align 8
  %RDI.i190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %42 = add i64 %7, -16
  %43 = load i64, i64* %RDI.i190, align 8
  %44 = add i64 %10, 53
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -12
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 7
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %47 to i32*
  store i32 0, i32* %50, align 4
  %51 = load i64, i64* %R9.i, align 8
  %52 = load i64, i64* %3, align 8
  store i64 %51, i64* %RDI.i190, align 8
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -104
  %55 = load i64, i64* %RSI.i, align 8
  %56 = add i64 %52, 7
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %RCX.i96, align 8
  %59 = load i64, i64* %3, align 8
  store i64 %58, i64* %RSI.i, align 8
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -112
  %62 = load i64, i64* %RDX.i, align 8
  %63 = add i64 %59, 7
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %61 to i64*
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %40, align 8
  %66 = load i64, i64* %3, align 8
  store i64 %65, i64* %RDX.i, align 8
  %67 = add i64 %66, -62939
  %68 = add i64 %66, 8
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, -8
  %71 = inttoptr i64 %70 to i64*
  store i64 %68, i64* %71, align 8
  store i64 %70, i64* %6, align 8
  store i64 %67, i64* %3, align 8
  %72 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %2)
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -8
  %75 = load i64, i64* %3, align 8
  %76 = add i64 %75, 4
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %74 to i64*
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 6
  store i64 %79, i64* %RCX.i96, align 8
  %80 = icmp ugt i64 %78, -7
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %14, align 1
  %82 = trunc i64 %79 to i32
  %83 = and i32 %82, 255
  %84 = tail call i32 @llvm.ctpop.i32(i32 %83)
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  %87 = xor i8 %86, 1
  store i8 %87, i8* %21, align 1
  %88 = xor i64 %79, %78
  %89 = lshr i64 %88, 4
  %90 = trunc i64 %89 to i8
  %91 = and i8 %90, 1
  store i8 %91, i8* %26, align 1
  %92 = icmp eq i64 %79, 0
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %29, align 1
  %94 = lshr i64 %79, 63
  %95 = trunc i64 %94 to i8
  store i8 %95, i8* %32, align 1
  %96 = lshr i64 %78, 63
  %97 = xor i64 %94, %96
  %98 = add nuw nsw i64 %97, %94
  %99 = icmp eq i64 %98, 2
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %38, align 1
  store i64 %79, i64* %RDI.i190, align 8
  %101 = add i64 %73, -104
  %102 = add i64 %75, 15
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i64*
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %RSI.i, align 8
  %105 = add i64 %73, -112
  %106 = add i64 %75, 19
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RDX.i, align 8
  %109 = add i64 %75, -63171
  %110 = add i64 %75, 24
  %111 = load i64, i64* %6, align 8
  %112 = add i64 %111, -8
  %113 = inttoptr i64 %112 to i64*
  store i64 %110, i64* %113, align 8
  store i64 %112, i64* %6, align 8
  store i64 %109, i64* %3, align 8
  %114 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %72)
  %115 = load i32, i32* %EAX.i76, align 4
  %116 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %117 = and i32 %115, 255
  %118 = tail call i32 @llvm.ctpop.i32(i32 %117)
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = xor i8 %120, 1
  store i8 %121, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %122 = icmp eq i32 %115, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %29, align 1
  %124 = lshr i32 %115, 31
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %122, i64 9, i64 34
  %126 = add i64 %116, %.v
  store i64 %126, i64* %3, align 8
  br i1 %122, label %block_410344, label %block_.L_41035d

block_410344:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x42877d_type* @G__0x42877d to i64), i64* %RDI.i190, align 8
  %AL.i1079 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1079, align 1
  %127 = add i64 %126, -63124
  %128 = add i64 %126, 17
  %129 = load i64, i64* %6, align 8
  %130 = add i64 %129, -8
  %131 = inttoptr i64 %130 to i64*
  store i64 %128, i64* %131, align 8
  store i64 %130, i64* %6, align 8
  store i64 %127, i64* %3, align 8
  %132 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %114)
  %133 = load i64, i64* %RBP.i, align 8
  %134 = add i64 %133, -116
  %135 = load i32, i32* %EAX.i76, align 4
  %136 = load i64, i64* %3, align 8
  %137 = add i64 %136, 3
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %134 to i32*
  store i32 %135, i32* %138, align 4
  %139 = load i64, i64* %3, align 8
  %140 = add i64 %139, 5399
  br label %block_.L_41186f

block_.L_41035d:                                  ; preds = %entry
  %141 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %142 = add i32 %141, -1
  %143 = icmp eq i32 %141, 0
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %14, align 1
  %145 = and i32 %142, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145)
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %21, align 1
  %150 = xor i32 %142, %141
  %151 = lshr i32 %150, 4
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  store i8 %153, i8* %26, align 1
  %154 = icmp eq i32 %142, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %29, align 1
  %156 = lshr i32 %142, 31
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %32, align 1
  %158 = lshr i32 %141, 31
  %159 = xor i32 %156, %158
  %160 = add nuw nsw i32 %159, %158
  %161 = icmp eq i32 %160, 2
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %38, align 1
  %.v118 = select i1 %154, i64 81, i64 14
  %163 = add i64 %126, %.v118
  store i64 %163, i64* %3, align 8
  br i1 %154, label %block_.L_4103ae, label %block_41036b

block_41036b:                                     ; preds = %block_.L_41035d
  store i64 ptrtoint (%G__0x428810_type* @G__0x428810 to i64), i64* %RSI.i, align 8
  store i64 5, i64* %RAX.i66, align 8
  store i64 5, i64* %RDX.i, align 8
  %164 = load i64, i64* %RBP.i, align 8
  %165 = add i64 %164, -8
  %166 = add i64 %163, 21
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to i64*
  %168 = load i64, i64* %167, align 8
  %169 = add i64 %168, 6
  store i64 %169, i64* %RCX.i96, align 8
  %170 = icmp ugt i64 %168, -7
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %14, align 1
  %172 = trunc i64 %169 to i32
  %173 = and i32 %172, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173)
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %21, align 1
  %178 = xor i64 %169, %168
  %179 = lshr i64 %178, 4
  %180 = trunc i64 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %26, align 1
  %182 = icmp eq i64 %169, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %29, align 1
  %184 = lshr i64 %169, 63
  %185 = trunc i64 %184 to i8
  store i8 %185, i8* %32, align 1
  %186 = lshr i64 %168, 63
  %187 = xor i64 %184, %186
  %188 = add nuw nsw i64 %187, %184
  %189 = icmp eq i64 %188, 2
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %38, align 1
  store i64 %169, i64* %RDI.i190, align 8
  %191 = add i64 %163, -63243
  %192 = add i64 %163, 33
  %193 = load i64, i64* %6, align 8
  %194 = add i64 %193, -8
  %195 = inttoptr i64 %194 to i64*
  store i64 %192, i64* %195, align 8
  store i64 %194, i64* %6, align 8
  store i64 %191, i64* %3, align 8
  %196 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %114)
  %197 = load i32, i32* %EAX.i76, align 4
  %198 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %199 = and i32 %197, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199)
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %204 = icmp eq i32 %197, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %29, align 1
  %206 = lshr i32 %197, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v119 = select i1 %204, i64 34, i64 9
  %208 = add i64 %198, %.v119
  store i64 %208, i64* %3, align 8
  br i1 %204, label %block_.L_4103ae, label %block_410395

block_410395:                                     ; preds = %block_41036b
  store i64 ptrtoint (%G__0x428816_type* @G__0x428816 to i64), i64* %RDI.i190, align 8
  %AL.i1856 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1856, align 1
  %209 = add i64 %208, -63205
  %210 = add i64 %208, 17
  %211 = load i64, i64* %6, align 8
  %212 = add i64 %211, -8
  %213 = inttoptr i64 %212 to i64*
  store i64 %210, i64* %213, align 8
  store i64 %212, i64* %6, align 8
  store i64 %209, i64* %3, align 8
  %214 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %196)
  %215 = load i64, i64* %RBP.i, align 8
  %216 = add i64 %215, -120
  %217 = load i32, i32* %EAX.i76, align 4
  %218 = load i64, i64* %3, align 8
  %219 = add i64 %218, 3
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %216 to i32*
  store i32 %217, i32* %220, align 4
  %221 = load i64, i64* %3, align 8
  %222 = add i64 %221, 5318
  br label %block_.L_41186f

block_.L_4103ae:                                  ; preds = %block_41036b, %block_.L_41035d
  %223 = phi i64 [ %163, %block_.L_41035d ], [ %208, %block_41036b ]
  %MEMORY.0 = phi %struct.Memory* [ %114, %block_.L_41035d ], [ %196, %block_41036b ]
  store i64 ptrtoint (%G__0x428851_type* @G__0x428851 to i64), i64* %RSI.i, align 8
  store i64 3, i64* %RAX.i66, align 8
  store i64 3, i64* %RDX.i, align 8
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -8
  %226 = add i64 %223, 21
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i64*
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %228, 6
  store i64 %229, i64* %RCX.i96, align 8
  %230 = icmp ugt i64 %228, -7
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %14, align 1
  %232 = trunc i64 %229 to i32
  %233 = and i32 %232, 255
  %234 = tail call i32 @llvm.ctpop.i32(i32 %233)
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  %237 = xor i8 %236, 1
  store i8 %237, i8* %21, align 1
  %238 = xor i64 %229, %228
  %239 = lshr i64 %238, 4
  %240 = trunc i64 %239 to i8
  %241 = and i8 %240, 1
  store i8 %241, i8* %26, align 1
  %242 = icmp eq i64 %229, 0
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %29, align 1
  %244 = lshr i64 %229, 63
  %245 = trunc i64 %244 to i8
  store i8 %245, i8* %32, align 1
  %246 = lshr i64 %228, 63
  %247 = xor i64 %244, %246
  %248 = add nuw nsw i64 %247, %244
  %249 = icmp eq i64 %248, 2
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %38, align 1
  store i64 %229, i64* %RDI.i190, align 8
  %251 = add i64 %223, -63310
  %252 = add i64 %223, 33
  %253 = load i64, i64* %6, align 8
  %254 = add i64 %253, -8
  %255 = inttoptr i64 %254 to i64*
  store i64 %252, i64* %255, align 8
  store i64 %254, i64* %6, align 8
  store i64 %251, i64* %3, align 8
  %256 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.0)
  %257 = load i32, i32* %EAX.i76, align 4
  %258 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %259 = and i32 %257, 255
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259)
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  store i8 %263, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %264 = icmp eq i32 %257, 0
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %29, align 1
  %266 = lshr i32 %257, 31
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v120 = select i1 %264, i64 9, i64 56
  %268 = add i64 %258, %.v120
  %269 = add i64 %268, 10
  store i64 %269, i64* %3, align 8
  br i1 %264, label %block_4103d8, label %block_.L_410407

block_4103d8:                                     ; preds = %block_.L_4103ae
  store i64 ptrtoint (%G__0x428855_type* @G__0x428855 to i64), i64* %RDI.i190, align 8
  %AL.i2038 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i2038, align 1
  %270 = add i64 %268, -63272
  %271 = add i64 %268, 17
  %272 = load i64, i64* %6, align 8
  %273 = add i64 %272, -8
  %274 = inttoptr i64 %273 to i64*
  store i64 %271, i64* %274, align 8
  store i64 %273, i64* %6, align 8
  store i64 %270, i64* %3, align 8
  %275 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %256)
  %276 = load i64, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0x86bd90_type* @G_0x86bd90 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x86bd60_type* @G_0x86bd60 to i32*), align 8
  %277 = load i64, i64* %RBP.i, align 8
  %278 = add i64 %277, -124
  %279 = load i32, i32* %EAX.i76, align 4
  %280 = add i64 %276, 25
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %278 to i32*
  store i32 %279, i32* %281, align 4
  %282 = load i64, i64* %3, align 8
  %283 = add i64 %282, 5224
  br label %block_.L_41186a

block_.L_410407:                                  ; preds = %block_.L_4103ae
  store i64 ptrtoint (%G__0x42888d_type* @G__0x42888d to i64), i64* %RSI.i, align 8
  store i64 2, i64* %RAX.i66, align 8
  store i64 2, i64* %RDX.i, align 8
  %284 = load i64, i64* %RBP.i, align 8
  %285 = add i64 %284, -8
  %286 = add i64 %268, 21
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %285 to i64*
  %288 = load i64, i64* %287, align 8
  %289 = add i64 %288, 6
  store i64 %289, i64* %RCX.i96, align 8
  %290 = icmp ugt i64 %288, -7
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %14, align 1
  %292 = trunc i64 %289 to i32
  %293 = and i32 %292, 255
  %294 = tail call i32 @llvm.ctpop.i32(i32 %293)
  %295 = trunc i32 %294 to i8
  %296 = and i8 %295, 1
  %297 = xor i8 %296, 1
  store i8 %297, i8* %21, align 1
  %298 = xor i64 %289, %288
  %299 = lshr i64 %298, 4
  %300 = trunc i64 %299 to i8
  %301 = and i8 %300, 1
  store i8 %301, i8* %26, align 1
  %302 = icmp eq i64 %289, 0
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %29, align 1
  %304 = lshr i64 %289, 63
  %305 = trunc i64 %304 to i8
  store i8 %305, i8* %32, align 1
  %306 = lshr i64 %288, 63
  %307 = xor i64 %304, %306
  %308 = add nuw nsw i64 %307, %304
  %309 = icmp eq i64 %308, 2
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %38, align 1
  store i64 %289, i64* %RDI.i190, align 8
  %311 = add i64 %268, -63399
  %312 = add i64 %268, 33
  %313 = load i64, i64* %6, align 8
  %314 = add i64 %313, -8
  %315 = inttoptr i64 %314 to i64*
  store i64 %312, i64* %315, align 8
  store i64 %314, i64* %6, align 8
  store i64 %311, i64* %3, align 8
  %316 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %256)
  %317 = load i32, i32* %EAX.i76, align 4
  %318 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %319 = and i32 %317, 255
  %320 = tail call i32 @llvm.ctpop.i32(i32 %319)
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  store i8 %323, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %324 = icmp eq i32 %317, 0
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %29, align 1
  %326 = lshr i32 %317, 31
  %327 = trunc i32 %326 to i8
  store i8 %327, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v121 = select i1 %324, i64 51, i64 9
  %328 = add i64 %318, %.v121
  store i64 %328, i64* %3, align 8
  br i1 %324, label %block_.L_41045b, label %block_410431

block_410431:                                     ; preds = %block_.L_410407
  store i64 ptrtoint (%G__0x4294da_type* @G__0x4294da to i64), i64* %RSI.i, align 8
  store i64 4, i64* %RAX.i66, align 8
  store i64 4, i64* %RDX.i, align 8
  %329 = load i64, i64* %RBP.i, align 8
  %330 = add i64 %329, -8
  %331 = add i64 %328, 21
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to i64*
  %333 = load i64, i64* %332, align 8
  %334 = add i64 %333, 6
  store i64 %334, i64* %RCX.i96, align 8
  %335 = icmp ugt i64 %333, -7
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %14, align 1
  %337 = trunc i64 %334 to i32
  %338 = and i32 %337, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338)
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %21, align 1
  %343 = xor i64 %334, %333
  %344 = lshr i64 %343, 4
  %345 = trunc i64 %344 to i8
  %346 = and i8 %345, 1
  store i8 %346, i8* %26, align 1
  %347 = icmp eq i64 %334, 0
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %29, align 1
  %349 = lshr i64 %334, 63
  %350 = trunc i64 %349 to i8
  store i8 %350, i8* %32, align 1
  %351 = lshr i64 %333, 63
  %352 = xor i64 %349, %351
  %353 = add nuw nsw i64 %352, %349
  %354 = icmp eq i64 %353, 2
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %38, align 1
  store i64 %334, i64* %RDI.i190, align 8
  %356 = add i64 %328, -63441
  %357 = add i64 %328, 33
  %358 = load i64, i64* %6, align 8
  %359 = add i64 %358, -8
  %360 = inttoptr i64 %359 to i64*
  store i64 %357, i64* %360, align 8
  store i64 %359, i64* %6, align 8
  store i64 %356, i64* %3, align 8
  %361 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %316)
  %362 = load i32, i32* %EAX.i76, align 4
  %363 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %364 = and i32 %362, 255
  %365 = tail call i32 @llvm.ctpop.i32(i32 %364)
  %366 = trunc i32 %365 to i8
  %367 = and i8 %366, 1
  %368 = xor i8 %367, 1
  store i8 %368, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %369 = icmp eq i32 %362, 0
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %29, align 1
  %371 = lshr i32 %362, 31
  %372 = trunc i32 %371 to i8
  store i8 %372, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v122 = select i1 %369, i64 9, i64 56
  %373 = add i64 %363, %.v122
  store i64 %373, i64* %3, align 8
  br i1 %369, label %block_.L_41045b, label %block_.L_41048a

block_.L_41045b:                                  ; preds = %block_410431, %block_.L_410407
  %374 = phi i64 [ %328, %block_.L_410407 ], [ %373, %block_410431 ]
  %MEMORY.1 = phi %struct.Memory* [ %316, %block_.L_410407 ], [ %361, %block_410431 ]
  store i64 ptrtoint (%G__0x428890_type* @G__0x428890 to i64), i64* %RDI.i190, align 8
  %AL.i1983 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1983, align 1
  %375 = add i64 %374, -63403
  %376 = add i64 %374, 17
  %377 = load i64, i64* %6, align 8
  %378 = add i64 %377, -8
  %379 = inttoptr i64 %378 to i64*
  store i64 %376, i64* %379, align 8
  store i64 %378, i64* %6, align 8
  store i64 %375, i64* %3, align 8
  %380 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.1)
  %381 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x86bd90_type* @G_0x86bd90 to i32*), align 8
  store i32 4, i32* bitcast (%G_0x86bd60_type* @G_0x86bd60 to i32*), align 8
  %382 = load i64, i64* %RBP.i, align 8
  %383 = add i64 %382, -128
  %384 = load i32, i32* %EAX.i76, align 4
  %385 = add i64 %381, 25
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %383 to i32*
  store i32 %384, i32* %386, align 4
  %387 = load i64, i64* %3, align 8
  %388 = add i64 %387, 5088
  br label %block_.L_411865

block_.L_41048a:                                  ; preds = %block_410431
  store i64 ptrtoint (%G__0x4288af_type* @G__0x4288af to i64), i64* %RSI.i, align 8
  store i64 4, i64* %RAX.i66, align 8
  store i64 4, i64* %RDX.i, align 8
  %389 = load i64, i64* %RBP.i, align 8
  %390 = add i64 %389, -8
  %391 = add i64 %373, 21
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i64*
  %393 = load i64, i64* %392, align 8
  %394 = add i64 %393, 6
  store i64 %394, i64* %RCX.i96, align 8
  %395 = icmp ugt i64 %393, -7
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %14, align 1
  %397 = trunc i64 %394 to i32
  %398 = and i32 %397, 255
  %399 = tail call i32 @llvm.ctpop.i32(i32 %398)
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  store i8 %402, i8* %21, align 1
  %403 = xor i64 %394, %393
  %404 = lshr i64 %403, 4
  %405 = trunc i64 %404 to i8
  %406 = and i8 %405, 1
  store i8 %406, i8* %26, align 1
  %407 = icmp eq i64 %394, 0
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %29, align 1
  %409 = lshr i64 %394, 63
  %410 = trunc i64 %409 to i8
  store i8 %410, i8* %32, align 1
  %411 = lshr i64 %393, 63
  %412 = xor i64 %409, %411
  %413 = add nuw nsw i64 %412, %409
  %414 = icmp eq i64 %413, 2
  %415 = zext i1 %414 to i8
  store i8 %415, i8* %38, align 1
  store i64 %394, i64* %RDI.i190, align 8
  %416 = add i64 %373, -63530
  %417 = add i64 %373, 33
  %418 = load i64, i64* %6, align 8
  %419 = add i64 %418, -8
  %420 = inttoptr i64 %419 to i64*
  store i64 %417, i64* %420, align 8
  store i64 %419, i64* %6, align 8
  store i64 %416, i64* %3, align 8
  %421 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %361)
  %422 = load i32, i32* %EAX.i76, align 4
  %423 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %424 = and i32 %422, 255
  %425 = tail call i32 @llvm.ctpop.i32(i32 %424)
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  %428 = xor i8 %427, 1
  store i8 %428, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %429 = icmp eq i32 %422, 0
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %29, align 1
  %431 = lshr i32 %422, 31
  %432 = trunc i32 %431 to i8
  store i8 %432, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v123 = select i1 %429, i64 51, i64 9
  %433 = add i64 %423, %.v123
  store i64 %433, i64* %3, align 8
  br i1 %429, label %block_.L_4104de, label %block_4104b4

block_4104b4:                                     ; preds = %block_.L_41048a
  store i64 ptrtoint (%G__0x4288b4_type* @G__0x4288b4 to i64), i64* %RSI.i, align 8
  store i64 4, i64* %RAX.i66, align 8
  store i64 4, i64* %RDX.i, align 8
  %434 = load i64, i64* %RBP.i, align 8
  %435 = add i64 %434, -8
  %436 = add i64 %433, 21
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %435 to i64*
  %438 = load i64, i64* %437, align 8
  %439 = add i64 %438, 6
  store i64 %439, i64* %RCX.i96, align 8
  %440 = icmp ugt i64 %438, -7
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %14, align 1
  %442 = trunc i64 %439 to i32
  %443 = and i32 %442, 255
  %444 = tail call i32 @llvm.ctpop.i32(i32 %443)
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = xor i8 %446, 1
  store i8 %447, i8* %21, align 1
  %448 = xor i64 %439, %438
  %449 = lshr i64 %448, 4
  %450 = trunc i64 %449 to i8
  %451 = and i8 %450, 1
  store i8 %451, i8* %26, align 1
  %452 = icmp eq i64 %439, 0
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %29, align 1
  %454 = lshr i64 %439, 63
  %455 = trunc i64 %454 to i8
  store i8 %455, i8* %32, align 1
  %456 = lshr i64 %438, 63
  %457 = xor i64 %454, %456
  %458 = add nuw nsw i64 %457, %454
  %459 = icmp eq i64 %458, 2
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %38, align 1
  store i64 %439, i64* %RDI.i190, align 8
  %461 = add i64 %433, -63572
  %462 = add i64 %433, 33
  %463 = load i64, i64* %6, align 8
  %464 = add i64 %463, -8
  %465 = inttoptr i64 %464 to i64*
  store i64 %462, i64* %465, align 8
  store i64 %464, i64* %6, align 8
  store i64 %461, i64* %3, align 8
  %466 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %421)
  %467 = load i32, i32* %EAX.i76, align 4
  %468 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %469 = and i32 %467, 255
  %470 = tail call i32 @llvm.ctpop.i32(i32 %469)
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = xor i8 %472, 1
  store i8 %473, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %474 = icmp eq i32 %467, 0
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %29, align 1
  %476 = lshr i32 %467, 31
  %477 = trunc i32 %476 to i8
  store i8 %477, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v124 = select i1 %474, i64 9, i64 59
  %478 = add i64 %468, %.v124
  store i64 %478, i64* %3, align 8
  br i1 %474, label %block_.L_4104de, label %block_.L_410510

block_.L_4104de:                                  ; preds = %block_4104b4, %block_.L_41048a
  %479 = phi i64 [ %433, %block_.L_41048a ], [ %478, %block_4104b4 ]
  %MEMORY.2 = phi %struct.Memory* [ %421, %block_.L_41048a ], [ %466, %block_4104b4 ]
  store i64 ptrtoint (%G__0x4288b9_type* @G__0x4288b9 to i64), i64* %RDI.i190, align 8
  %AL.i1926 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1926, align 1
  %480 = add i64 %479, -63534
  %481 = add i64 %479, 17
  %482 = load i64, i64* %6, align 8
  %483 = add i64 %482, -8
  %484 = inttoptr i64 %483 to i64*
  store i64 %481, i64* %484, align 8
  store i64 %483, i64* %6, align 8
  store i64 %480, i64* %3, align 8
  %485 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.2)
  %486 = load i64, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0x886a60_type* @G_0x886a60 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x86bd90_type* @G_0x86bd90 to i32*), align 8
  %487 = load i64, i64* %RBP.i, align 8
  %488 = add i64 %487, -132
  %489 = load i32, i32* %EAX.i76, align 4
  %490 = add i64 %486, 28
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %488 to i32*
  store i32 %489, i32* %491, align 4
  %492 = load i64, i64* %3, align 8
  %493 = add i64 %492, 4949
  br label %block_.L_411860

block_.L_410510:                                  ; preds = %block_4104b4
  store i64 ptrtoint (%G__0x4288dc_type* @G__0x4288dc to i64), i64* %RSI.i, align 8
  store i64 4, i64* %RAX.i66, align 8
  store i64 4, i64* %RDX.i, align 8
  %494 = load i64, i64* %RBP.i, align 8
  %495 = add i64 %494, -8
  %496 = add i64 %478, 21
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i64*
  %498 = load i64, i64* %497, align 8
  %499 = add i64 %498, 6
  store i64 %499, i64* %RCX.i96, align 8
  %500 = icmp ugt i64 %498, -7
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %14, align 1
  %502 = trunc i64 %499 to i32
  %503 = and i32 %502, 255
  %504 = tail call i32 @llvm.ctpop.i32(i32 %503)
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  %507 = xor i8 %506, 1
  store i8 %507, i8* %21, align 1
  %508 = xor i64 %499, %498
  %509 = lshr i64 %508, 4
  %510 = trunc i64 %509 to i8
  %511 = and i8 %510, 1
  store i8 %511, i8* %26, align 1
  %512 = icmp eq i64 %499, 0
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %29, align 1
  %514 = lshr i64 %499, 63
  %515 = trunc i64 %514 to i8
  store i8 %515, i8* %32, align 1
  %516 = lshr i64 %498, 63
  %517 = xor i64 %514, %516
  %518 = add nuw nsw i64 %517, %514
  %519 = icmp eq i64 %518, 2
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %38, align 1
  store i64 %499, i64* %RDI.i190, align 8
  %521 = add i64 %478, -63664
  %522 = add i64 %478, 33
  %523 = load i64, i64* %6, align 8
  %524 = add i64 %523, -8
  %525 = inttoptr i64 %524 to i64*
  store i64 %522, i64* %525, align 8
  store i64 %524, i64* %6, align 8
  store i64 %521, i64* %3, align 8
  %526 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %466)
  %527 = load i32, i32* %EAX.i76, align 4
  %528 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %529 = and i32 %527, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %534 = icmp eq i32 %527, 0
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %29, align 1
  %536 = lshr i32 %527, 31
  %537 = trunc i32 %536 to i8
  store i8 %537, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v125 = select i1 %534, i64 9, i64 59
  %538 = add i64 %528, %.v125
  %539 = add i64 %538, 10
  store i64 %539, i64* %3, align 8
  br i1 %534, label %block_41053a, label %block_.L_41056c

block_41053a:                                     ; preds = %block_.L_410510
  store i64 ptrtoint (%G__0x4288e1_type* @G__0x4288e1 to i64), i64* %RDI.i190, align 8
  %AL.i1893 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1893, align 1
  %540 = add i64 %538, -63626
  %541 = add i64 %538, 17
  %542 = load i64, i64* %6, align 8
  %543 = add i64 %542, -8
  %544 = inttoptr i64 %543 to i64*
  store i64 %541, i64* %544, align 8
  store i64 %543, i64* %6, align 8
  store i64 %540, i64* %3, align 8
  %545 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %526)
  %546 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x886a60_type* @G_0x886a60 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x86bd90_type* @G_0x86bd90 to i32*), align 8
  %547 = load i64, i64* %RBP.i, align 8
  %548 = add i64 %547, -136
  %549 = load i32, i32* %EAX.i76, align 4
  %550 = add i64 %546, 28
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %548 to i32*
  store i32 %549, i32* %551, align 4
  %552 = load i64, i64* %3, align 8
  %553 = add i64 %552, 4852
  br label %block_.L_41185b

block_.L_41056c:                                  ; preds = %block_.L_410510
  store i64 ptrtoint (%G__0x428905_type* @G__0x428905 to i64), i64* %RSI.i, align 8
  store i64 5, i64* %RAX.i66, align 8
  store i64 5, i64* %RDX.i, align 8
  %554 = load i64, i64* %RBP.i, align 8
  %555 = add i64 %554, -8
  %556 = add i64 %538, 21
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i64*
  %558 = load i64, i64* %557, align 8
  %559 = add i64 %558, 6
  store i64 %559, i64* %RCX.i96, align 8
  %560 = icmp ugt i64 %558, -7
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %14, align 1
  %562 = trunc i64 %559 to i32
  %563 = and i32 %562, 255
  %564 = tail call i32 @llvm.ctpop.i32(i32 %563)
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  %567 = xor i8 %566, 1
  store i8 %567, i8* %21, align 1
  %568 = xor i64 %559, %558
  %569 = lshr i64 %568, 4
  %570 = trunc i64 %569 to i8
  %571 = and i8 %570, 1
  store i8 %571, i8* %26, align 1
  %572 = icmp eq i64 %559, 0
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %29, align 1
  %574 = lshr i64 %559, 63
  %575 = trunc i64 %574 to i8
  store i8 %575, i8* %32, align 1
  %576 = lshr i64 %558, 63
  %577 = xor i64 %574, %576
  %578 = add nuw nsw i64 %577, %574
  %579 = icmp eq i64 %578, 2
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %38, align 1
  store i64 %559, i64* %RDI.i190, align 8
  %581 = add i64 %538, -63756
  %582 = add i64 %538, 33
  %583 = load i64, i64* %6, align 8
  %584 = add i64 %583, -8
  %585 = inttoptr i64 %584 to i64*
  store i64 %582, i64* %585, align 8
  store i64 %584, i64* %6, align 8
  store i64 %581, i64* %3, align 8
  %586 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %526)
  %587 = load i32, i32* %EAX.i76, align 4
  %588 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %589 = and i32 %587, 255
  %590 = tail call i32 @llvm.ctpop.i32(i32 %589)
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  %593 = xor i8 %592, 1
  store i8 %593, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %594 = icmp eq i32 %587, 0
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %29, align 1
  %596 = lshr i32 %587, 31
  %597 = trunc i32 %596 to i8
  store i8 %597, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v126 = select i1 %594, i64 9, i64 60
  %598 = add i64 %588, %.v126
  %599 = add i64 %598, 10
  store i64 %599, i64* %3, align 8
  br i1 %594, label %block_410596, label %block_.L_4105c9

block_410596:                                     ; preds = %block_.L_41056c
  store i64 ptrtoint (%G__0x42890b_type* @G__0x42890b to i64), i64* %RDI.i190, align 8
  %AL.i1859 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1859, align 1
  %600 = add i64 %598, -63718
  %601 = add i64 %598, 17
  %602 = load i64, i64* %6, align 8
  %603 = add i64 %602, -8
  %604 = inttoptr i64 %603 to i64*
  store i64 %601, i64* %604, align 8
  store i64 %603, i64* %6, align 8
  store i64 %600, i64* %3, align 8
  %605 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %586)
  %606 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x42892e_type* @G__0x42892e to i64), i64* %RDI.i190, align 8
  %607 = load i64, i64* %RBP.i, align 8
  %608 = add i64 %607, -140
  %609 = load i32, i32* %EAX.i76, align 4
  %610 = add i64 %606, 16
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %608 to i32*
  store i32 %609, i32* %611, align 4
  %612 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1859, align 1
  %613 = add i64 %612, -63751
  %614 = add i64 %612, 7
  %615 = load i64, i64* %6, align 8
  %616 = add i64 %615, -8
  %617 = inttoptr i64 %616 to i64*
  store i64 %614, i64* %617, align 8
  store i64 %616, i64* %6, align 8
  store i64 %613, i64* %3, align 8
  %618 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %605)
  %619 = load i64, i64* %RBP.i, align 8
  %620 = add i64 %619, -144
  %621 = load i32, i32* %EAX.i76, align 4
  %622 = load i64, i64* %3, align 8
  %623 = add i64 %622, 6
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %620 to i32*
  store i32 %621, i32* %624, align 4
  %625 = load i64, i64* %3, align 8
  %626 = add i64 %625, 4754
  br label %block_.L_411856

block_.L_4105c9:                                  ; preds = %block_.L_41056c
  store i64 ptrtoint (%G__0x42893d_type* @G__0x42893d to i64), i64* %RSI.i, align 8
  store i64 4, i64* %RAX.i66, align 8
  store i64 4, i64* %RDX.i, align 8
  %627 = load i64, i64* %RBP.i, align 8
  %628 = add i64 %627, -8
  %629 = add i64 %598, 21
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i64*
  %631 = load i64, i64* %630, align 8
  %632 = add i64 %631, 6
  store i64 %632, i64* %RCX.i96, align 8
  %633 = icmp ugt i64 %631, -7
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %14, align 1
  %635 = trunc i64 %632 to i32
  %636 = and i32 %635, 255
  %637 = tail call i32 @llvm.ctpop.i32(i32 %636)
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  %640 = xor i8 %639, 1
  store i8 %640, i8* %21, align 1
  %641 = xor i64 %632, %631
  %642 = lshr i64 %641, 4
  %643 = trunc i64 %642 to i8
  %644 = and i8 %643, 1
  store i8 %644, i8* %26, align 1
  %645 = icmp eq i64 %632, 0
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %29, align 1
  %647 = lshr i64 %632, 63
  %648 = trunc i64 %647 to i8
  store i8 %648, i8* %32, align 1
  %649 = lshr i64 %631, 63
  %650 = xor i64 %647, %649
  %651 = add nuw nsw i64 %650, %647
  %652 = icmp eq i64 %651, 2
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %38, align 1
  store i64 %632, i64* %RDI.i190, align 8
  %654 = add i64 %598, -63849
  %655 = add i64 %598, 33
  %656 = load i64, i64* %6, align 8
  %657 = add i64 %656, -8
  %658 = inttoptr i64 %657 to i64*
  store i64 %655, i64* %658, align 8
  store i64 %657, i64* %6, align 8
  store i64 %654, i64* %3, align 8
  %659 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %586)
  %660 = load i32, i32* %EAX.i76, align 4
  %661 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %662 = and i32 %660, 255
  %663 = tail call i32 @llvm.ctpop.i32(i32 %662)
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  %666 = xor i8 %665, 1
  store i8 %666, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %667 = icmp eq i32 %660, 0
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %29, align 1
  %669 = lshr i32 %660, 31
  %670 = trunc i32 %669 to i8
  store i8 %670, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v127 = select i1 %667, i64 9, i64 60
  %671 = add i64 %661, %.v127
  %672 = add i64 %671, 10
  store i64 %672, i64* %3, align 8
  br i1 %667, label %block_4105f3, label %block_.L_410626

block_4105f3:                                     ; preds = %block_.L_4105c9
  store i64 ptrtoint (%G__0x428942_type* @G__0x428942 to i64), i64* %RDI.i190, align 8
  %AL.i1818 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1818, align 1
  %673 = add i64 %671, -63811
  %674 = add i64 %671, 17
  %675 = load i64, i64* %6, align 8
  %676 = add i64 %675, -8
  %677 = inttoptr i64 %676 to i64*
  store i64 %674, i64* %677, align 8
  store i64 %676, i64* %6, align 8
  store i64 %673, i64* %3, align 8
  %678 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %659)
  %679 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x42895d_type* @G__0x42895d to i64), i64* %RDI.i190, align 8
  %680 = load i64, i64* %RBP.i, align 8
  %681 = add i64 %680, -148
  %682 = load i32, i32* %EAX.i76, align 4
  %683 = add i64 %679, 16
  store i64 %683, i64* %3, align 8
  %684 = inttoptr i64 %681 to i32*
  store i32 %682, i32* %684, align 4
  %685 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1818, align 1
  %686 = add i64 %685, -63844
  %687 = add i64 %685, 7
  %688 = load i64, i64* %6, align 8
  %689 = add i64 %688, -8
  %690 = inttoptr i64 %689 to i64*
  store i64 %687, i64* %690, align 8
  store i64 %689, i64* %6, align 8
  store i64 %686, i64* %3, align 8
  %691 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %678)
  %692 = load i64, i64* %RBP.i, align 8
  %693 = add i64 %692, -152
  %694 = load i32, i32* %EAX.i76, align 4
  %695 = load i64, i64* %3, align 8
  %696 = add i64 %695, 6
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %693 to i32*
  store i32 %694, i32* %697, align 4
  %698 = load i64, i64* %3, align 8
  %699 = add i64 %698, 4656
  br label %block_.L_411851

block_.L_410626:                                  ; preds = %block_.L_4105c9
  store i64 ptrtoint (%G__0x428998_type* @G__0x428998 to i64), i64* %RSI.i, align 8
  store i64 1, i64* %RAX.i66, align 8
  store i64 1, i64* %RDX.i, align 8
  %700 = load i64, i64* %RBP.i, align 8
  %701 = add i64 %700, -8
  %702 = add i64 %671, 21
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i64*
  %704 = load i64, i64* %703, align 8
  %705 = add i64 %704, 6
  store i64 %705, i64* %RCX.i96, align 8
  %706 = icmp ugt i64 %704, -7
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %14, align 1
  %708 = trunc i64 %705 to i32
  %709 = and i32 %708, 255
  %710 = tail call i32 @llvm.ctpop.i32(i32 %709)
  %711 = trunc i32 %710 to i8
  %712 = and i8 %711, 1
  %713 = xor i8 %712, 1
  store i8 %713, i8* %21, align 1
  %714 = xor i64 %705, %704
  %715 = lshr i64 %714, 4
  %716 = trunc i64 %715 to i8
  %717 = and i8 %716, 1
  store i8 %717, i8* %26, align 1
  %718 = icmp eq i64 %705, 0
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %29, align 1
  %720 = lshr i64 %705, 63
  %721 = trunc i64 %720 to i8
  store i8 %721, i8* %32, align 1
  %722 = lshr i64 %704, 63
  %723 = xor i64 %720, %722
  %724 = add nuw nsw i64 %723, %720
  %725 = icmp eq i64 %724, 2
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %38, align 1
  store i64 %705, i64* %RDI.i190, align 8
  %727 = add i64 %671, -63942
  %728 = add i64 %671, 33
  %729 = load i64, i64* %6, align 8
  %730 = add i64 %729, -8
  %731 = inttoptr i64 %730 to i64*
  store i64 %728, i64* %731, align 8
  store i64 %730, i64* %6, align 8
  store i64 %727, i64* %3, align 8
  %732 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %659)
  %733 = load i32, i32* %EAX.i76, align 4
  %734 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %735 = and i32 %733, 255
  %736 = tail call i32 @llvm.ctpop.i32(i32 %735)
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  store i8 %739, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %740 = icmp eq i32 %733, 0
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %29, align 1
  %742 = lshr i32 %733, 31
  %743 = trunc i32 %742 to i8
  store i8 %743, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v128 = select i1 %740, i64 9, i64 1864
  %744 = add i64 %734, %.v128
  %745 = add i64 %744, 10
  store i64 %745, i64* %3, align 8
  br i1 %740, label %block_410650, label %block_.L_410d8f

block_410650:                                     ; preds = %block_.L_410626
  store i64 ptrtoint (%G__0x42896b_type* @G__0x42896b to i64), i64* %RSI.i, align 8
  %746 = load i64, i64* %RBP.i, align 8
  %747 = add i64 %746, -8
  %748 = add i64 %744, 14
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %747 to i64*
  %750 = load i64, i64* %749, align 8
  %751 = add i64 %750, 6
  store i64 %751, i64* %RAX.i66, align 8
  %752 = icmp ugt i64 %750, -7
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %14, align 1
  %754 = trunc i64 %751 to i32
  %755 = and i32 %754, 255
  %756 = tail call i32 @llvm.ctpop.i32(i32 %755)
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  %759 = xor i8 %758, 1
  store i8 %759, i8* %21, align 1
  %760 = xor i64 %751, %750
  %761 = lshr i64 %760, 4
  %762 = trunc i64 %761 to i8
  %763 = and i8 %762, 1
  store i8 %763, i8* %26, align 1
  %764 = icmp eq i64 %751, 0
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %29, align 1
  %766 = lshr i64 %751, 63
  %767 = trunc i64 %766 to i8
  store i8 %767, i8* %32, align 1
  %768 = lshr i64 %750, 63
  %769 = xor i64 %766, %768
  %770 = add nuw nsw i64 %769, %766
  %771 = icmp eq i64 %770, 2
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %38, align 1
  store i64 %751, i64* %RDI.i190, align 8
  %773 = add i64 %744, -63584
  %774 = add i64 %744, 26
  %775 = load i64, i64* %6, align 8
  %776 = add i64 %775, -8
  %777 = inttoptr i64 %776 to i64*
  store i64 %774, i64* %777, align 8
  store i64 %776, i64* %6, align 8
  store i64 %773, i64* %3, align 8
  %call2_410665 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %773, %struct.Memory* %732)
  %778 = load i64, i64* %RAX.i66, align 8
  %779 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %780 = trunc i64 %778 to i32
  %781 = and i32 %780, 255
  %782 = tail call i32 @llvm.ctpop.i32(i32 %781)
  %783 = trunc i32 %782 to i8
  %784 = and i8 %783, 1
  %785 = xor i8 %784, 1
  store i8 %785, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %786 = icmp eq i64 %778, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %29, align 1
  %788 = lshr i64 %778, 63
  %789 = trunc i64 %788 to i8
  store i8 %789, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v173 = select i1 %786, i64 10, i64 262
  %790 = add i64 %779, %.v173
  store i64 %790, i64* %3, align 8
  br i1 %786, label %block_410674, label %block_.L_410770

block_410674:                                     ; preds = %block_410650
  store i64 ptrtoint (%G__0x429b31_type* @G__0x429b31 to i64), i64* %RSI.i, align 8
  %791 = load i64, i64* %RBP.i, align 8
  %792 = add i64 %791, -8
  %793 = add i64 %790, 14
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i64*
  %795 = load i64, i64* %794, align 8
  %796 = add i64 %795, 6
  store i64 %796, i64* %RAX.i66, align 8
  %797 = icmp ugt i64 %795, -7
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %14, align 1
  %799 = trunc i64 %796 to i32
  %800 = and i32 %799, 255
  %801 = tail call i32 @llvm.ctpop.i32(i32 %800)
  %802 = trunc i32 %801 to i8
  %803 = and i8 %802, 1
  %804 = xor i8 %803, 1
  store i8 %804, i8* %21, align 1
  %805 = xor i64 %796, %795
  %806 = lshr i64 %805, 4
  %807 = trunc i64 %806 to i8
  %808 = and i8 %807, 1
  store i8 %808, i8* %26, align 1
  %809 = icmp eq i64 %796, 0
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %29, align 1
  %811 = lshr i64 %796, 63
  %812 = trunc i64 %811 to i8
  store i8 %812, i8* %32, align 1
  %813 = lshr i64 %795, 63
  %814 = xor i64 %811, %813
  %815 = add nuw nsw i64 %814, %811
  %816 = icmp eq i64 %815, 2
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %38, align 1
  store i64 %796, i64* %RDI.i190, align 8
  %818 = add i64 %790, -63620
  %819 = add i64 %790, 26
  %820 = load i64, i64* %6, align 8
  %821 = add i64 %820, -8
  %822 = inttoptr i64 %821 to i64*
  store i64 %819, i64* %822, align 8
  store i64 %821, i64* %6, align 8
  store i64 %818, i64* %3, align 8
  %call2_410689 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %818, %struct.Memory* %call2_410665)
  %823 = load i64, i64* %RAX.i66, align 8
  %824 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %825 = trunc i64 %823 to i32
  %826 = and i32 %825, 255
  %827 = tail call i32 @llvm.ctpop.i32(i32 %826)
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  %830 = xor i8 %829, 1
  store i8 %830, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %831 = icmp eq i64 %823, 0
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %29, align 1
  %833 = lshr i64 %823, 63
  %834 = trunc i64 %833 to i8
  store i8 %834, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v192 = select i1 %831, i64 10, i64 443
  %835 = add i64 %824, %.v192
  store i64 %835, i64* %3, align 8
  br i1 %831, label %block_410698, label %block_.L_410849

block_410698:                                     ; preds = %block_410674
  store i64 ptrtoint (%G__0x429b45_type* @G__0x429b45 to i64), i64* %RSI.i, align 8
  %836 = load i64, i64* %RBP.i, align 8
  %837 = add i64 %836, -8
  %838 = add i64 %835, 14
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i64*
  %840 = load i64, i64* %839, align 8
  %841 = add i64 %840, 6
  store i64 %841, i64* %RAX.i66, align 8
  %842 = icmp ugt i64 %840, -7
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %14, align 1
  %844 = trunc i64 %841 to i32
  %845 = and i32 %844, 255
  %846 = tail call i32 @llvm.ctpop.i32(i32 %845)
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  %849 = xor i8 %848, 1
  store i8 %849, i8* %21, align 1
  %850 = xor i64 %841, %840
  %851 = lshr i64 %850, 4
  %852 = trunc i64 %851 to i8
  %853 = and i8 %852, 1
  store i8 %853, i8* %26, align 1
  %854 = icmp eq i64 %841, 0
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %29, align 1
  %856 = lshr i64 %841, 63
  %857 = trunc i64 %856 to i8
  store i8 %857, i8* %32, align 1
  %858 = lshr i64 %840, 63
  %859 = xor i64 %856, %858
  %860 = add nuw nsw i64 %859, %856
  %861 = icmp eq i64 %860, 2
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %38, align 1
  store i64 %841, i64* %RDI.i190, align 8
  %863 = add i64 %835, -63656
  %864 = add i64 %835, 26
  %865 = load i64, i64* %6, align 8
  %866 = add i64 %865, -8
  %867 = inttoptr i64 %866 to i64*
  store i64 %864, i64* %867, align 8
  store i64 %866, i64* %6, align 8
  store i64 %863, i64* %3, align 8
  %call2_4106ad = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %863, %struct.Memory* %call2_410689)
  %868 = load i64, i64* %RAX.i66, align 8
  %869 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %870 = trunc i64 %868 to i32
  %871 = and i32 %870, 255
  %872 = tail call i32 @llvm.ctpop.i32(i32 %871)
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  store i8 %875, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %876 = icmp eq i64 %868, 0
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %29, align 1
  %878 = lshr i64 %868, 63
  %879 = trunc i64 %878 to i8
  store i8 %879, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v196 = select i1 %876, i64 10, i64 407
  %880 = add i64 %869, %.v196
  store i64 %880, i64* %3, align 8
  br i1 %876, label %block_4106bc, label %block_.L_410849

block_4106bc:                                     ; preds = %block_410698
  store i64 ptrtoint (%G__0x42877b_type* @G__0x42877b to i64), i64* %RSI.i, align 8
  %881 = load i64, i64* %RBP.i, align 8
  %882 = add i64 %881, -8
  %883 = add i64 %880, 14
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to i64*
  %885 = load i64, i64* %884, align 8
  %886 = add i64 %885, 6
  store i64 %886, i64* %RAX.i66, align 8
  %887 = icmp ugt i64 %885, -7
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %14, align 1
  %889 = trunc i64 %886 to i32
  %890 = and i32 %889, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %21, align 1
  %895 = xor i64 %886, %885
  %896 = lshr i64 %895, 4
  %897 = trunc i64 %896 to i8
  %898 = and i8 %897, 1
  store i8 %898, i8* %26, align 1
  %899 = icmp eq i64 %886, 0
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %29, align 1
  %901 = lshr i64 %886, 63
  %902 = trunc i64 %901 to i8
  store i8 %902, i8* %32, align 1
  %903 = lshr i64 %885, 63
  %904 = xor i64 %901, %903
  %905 = add nuw nsw i64 %904, %901
  %906 = icmp eq i64 %905, 2
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %38, align 1
  store i64 %886, i64* %RDI.i190, align 8
  %908 = add i64 %880, -63692
  %909 = add i64 %880, 26
  %910 = load i64, i64* %6, align 8
  %911 = add i64 %910, -8
  %912 = inttoptr i64 %911 to i64*
  store i64 %909, i64* %912, align 8
  store i64 %911, i64* %6, align 8
  store i64 %908, i64* %3, align 8
  %call2_4106d1 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %908, %struct.Memory* %call2_4106ad)
  %913 = load i64, i64* %RAX.i66, align 8
  %914 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %915 = trunc i64 %913 to i32
  %916 = and i32 %915, 255
  %917 = tail call i32 @llvm.ctpop.i32(i32 %916)
  %918 = trunc i32 %917 to i8
  %919 = and i8 %918, 1
  %920 = xor i8 %919, 1
  store i8 %920, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %921 = icmp eq i64 %913, 0
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %29, align 1
  %923 = lshr i64 %913, 63
  %924 = trunc i64 %923 to i8
  store i8 %924, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v197 = select i1 %921, i64 10, i64 371
  %925 = add i64 %914, %.v197
  store i64 %925, i64* %3, align 8
  br i1 %921, label %block_4106e0, label %block_.L_410849

block_4106e0:                                     ; preds = %block_4106bc
  store i64 ptrtoint (%G__0x429b3b_type* @G__0x429b3b to i64), i64* %RSI.i, align 8
  %926 = load i64, i64* %RBP.i, align 8
  %927 = add i64 %926, -8
  %928 = add i64 %925, 14
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i64*
  %930 = load i64, i64* %929, align 8
  %931 = add i64 %930, 6
  store i64 %931, i64* %RAX.i66, align 8
  %932 = icmp ugt i64 %930, -7
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %14, align 1
  %934 = trunc i64 %931 to i32
  %935 = and i32 %934, 255
  %936 = tail call i32 @llvm.ctpop.i32(i32 %935)
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  %939 = xor i8 %938, 1
  store i8 %939, i8* %21, align 1
  %940 = xor i64 %931, %930
  %941 = lshr i64 %940, 4
  %942 = trunc i64 %941 to i8
  %943 = and i8 %942, 1
  store i8 %943, i8* %26, align 1
  %944 = icmp eq i64 %931, 0
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %29, align 1
  %946 = lshr i64 %931, 63
  %947 = trunc i64 %946 to i8
  store i8 %947, i8* %32, align 1
  %948 = lshr i64 %930, 63
  %949 = xor i64 %946, %948
  %950 = add nuw nsw i64 %949, %946
  %951 = icmp eq i64 %950, 2
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %38, align 1
  store i64 %931, i64* %RDI.i190, align 8
  %953 = add i64 %925, -63728
  %954 = add i64 %925, 26
  %955 = load i64, i64* %6, align 8
  %956 = add i64 %955, -8
  %957 = inttoptr i64 %956 to i64*
  store i64 %954, i64* %957, align 8
  store i64 %956, i64* %6, align 8
  store i64 %953, i64* %3, align 8
  %call2_4106f5 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %953, %struct.Memory* %call2_4106d1)
  %958 = load i64, i64* %RAX.i66, align 8
  %959 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %960 = trunc i64 %958 to i32
  %961 = and i32 %960, 255
  %962 = tail call i32 @llvm.ctpop.i32(i32 %961)
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  %965 = xor i8 %964, 1
  store i8 %965, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %966 = icmp eq i64 %958, 0
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %29, align 1
  %968 = lshr i64 %958, 63
  %969 = trunc i64 %968 to i8
  store i8 %969, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v198 = select i1 %966, i64 10, i64 335
  %970 = add i64 %959, %.v198
  store i64 %970, i64* %3, align 8
  br i1 %966, label %block_410704, label %block_.L_410849

block_410704:                                     ; preds = %block_4106e0
  store i64 ptrtoint (%G__0x429b59_type* @G__0x429b59 to i64), i64* %RSI.i, align 8
  %971 = load i64, i64* %RBP.i, align 8
  %972 = add i64 %971, -8
  %973 = add i64 %970, 14
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i64*
  %975 = load i64, i64* %974, align 8
  %976 = add i64 %975, 6
  store i64 %976, i64* %RAX.i66, align 8
  %977 = icmp ugt i64 %975, -7
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %14, align 1
  %979 = trunc i64 %976 to i32
  %980 = and i32 %979, 255
  %981 = tail call i32 @llvm.ctpop.i32(i32 %980)
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  %984 = xor i8 %983, 1
  store i8 %984, i8* %21, align 1
  %985 = xor i64 %976, %975
  %986 = lshr i64 %985, 4
  %987 = trunc i64 %986 to i8
  %988 = and i8 %987, 1
  store i8 %988, i8* %26, align 1
  %989 = icmp eq i64 %976, 0
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %29, align 1
  %991 = lshr i64 %976, 63
  %992 = trunc i64 %991 to i8
  store i8 %992, i8* %32, align 1
  %993 = lshr i64 %975, 63
  %994 = xor i64 %991, %993
  %995 = add nuw nsw i64 %994, %991
  %996 = icmp eq i64 %995, 2
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %38, align 1
  store i64 %976, i64* %RDI.i190, align 8
  %998 = add i64 %970, -63764
  %999 = add i64 %970, 26
  %1000 = load i64, i64* %6, align 8
  %1001 = add i64 %1000, -8
  %1002 = inttoptr i64 %1001 to i64*
  store i64 %999, i64* %1002, align 8
  store i64 %1001, i64* %6, align 8
  store i64 %998, i64* %3, align 8
  %call2_410719 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %998, %struct.Memory* %call2_4106f5)
  %1003 = load i64, i64* %RAX.i66, align 8
  %1004 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1005 = trunc i64 %1003 to i32
  %1006 = and i32 %1005, 255
  %1007 = tail call i32 @llvm.ctpop.i32(i32 %1006)
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  %1010 = xor i8 %1009, 1
  store i8 %1010, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1011 = icmp eq i64 %1003, 0
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %29, align 1
  %1013 = lshr i64 %1003, 63
  %1014 = trunc i64 %1013 to i8
  store i8 %1014, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v199 = select i1 %1011, i64 10, i64 299
  %1015 = add i64 %1004, %.v199
  store i64 %1015, i64* %3, align 8
  br i1 %1011, label %block_410728, label %block_.L_410849

block_410728:                                     ; preds = %block_410704
  store i64 ptrtoint (%G__0x429aeb_type* @G__0x429aeb to i64), i64* %RSI.i, align 8
  %1016 = load i64, i64* %RBP.i, align 8
  %1017 = add i64 %1016, -8
  %1018 = add i64 %1015, 14
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i64*
  %1020 = load i64, i64* %1019, align 8
  %1021 = add i64 %1020, 6
  store i64 %1021, i64* %RAX.i66, align 8
  %1022 = icmp ugt i64 %1020, -7
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %14, align 1
  %1024 = trunc i64 %1021 to i32
  %1025 = and i32 %1024, 255
  %1026 = tail call i32 @llvm.ctpop.i32(i32 %1025)
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  %1029 = xor i8 %1028, 1
  store i8 %1029, i8* %21, align 1
  %1030 = xor i64 %1021, %1020
  %1031 = lshr i64 %1030, 4
  %1032 = trunc i64 %1031 to i8
  %1033 = and i8 %1032, 1
  store i8 %1033, i8* %26, align 1
  %1034 = icmp eq i64 %1021, 0
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %29, align 1
  %1036 = lshr i64 %1021, 63
  %1037 = trunc i64 %1036 to i8
  store i8 %1037, i8* %32, align 1
  %1038 = lshr i64 %1020, 63
  %1039 = xor i64 %1036, %1038
  %1040 = add nuw nsw i64 %1039, %1036
  %1041 = icmp eq i64 %1040, 2
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %38, align 1
  store i64 %1021, i64* %RDI.i190, align 8
  %1043 = add i64 %1015, -63800
  %1044 = add i64 %1015, 26
  %1045 = load i64, i64* %6, align 8
  %1046 = add i64 %1045, -8
  %1047 = inttoptr i64 %1046 to i64*
  store i64 %1044, i64* %1047, align 8
  store i64 %1046, i64* %6, align 8
  store i64 %1043, i64* %3, align 8
  %call2_41073d = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %1043, %struct.Memory* %call2_410719)
  %1048 = load i64, i64* %RAX.i66, align 8
  %1049 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1050 = trunc i64 %1048 to i32
  %1051 = and i32 %1050, 255
  %1052 = tail call i32 @llvm.ctpop.i32(i32 %1051)
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  %1055 = xor i8 %1054, 1
  store i8 %1055, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1056 = icmp eq i64 %1048, 0
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %29, align 1
  %1058 = lshr i64 %1048, 63
  %1059 = trunc i64 %1058 to i8
  store i8 %1059, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v200 = select i1 %1056, i64 10, i64 263
  %1060 = add i64 %1049, %.v200
  store i64 %1060, i64* %3, align 8
  br i1 %1056, label %block_41074c, label %block_.L_410849

block_41074c:                                     ; preds = %block_410728
  store i64 ptrtoint (%G__0x428971_type* @G__0x428971 to i64), i64* %RSI.i, align 8
  %1061 = load i64, i64* %RBP.i, align 8
  %1062 = add i64 %1061, -8
  %1063 = add i64 %1060, 14
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i64*
  %1065 = load i64, i64* %1064, align 8
  %1066 = add i64 %1065, 6
  store i64 %1066, i64* %RAX.i66, align 8
  %1067 = icmp ugt i64 %1065, -7
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %14, align 1
  %1069 = trunc i64 %1066 to i32
  %1070 = and i32 %1069, 255
  %1071 = tail call i32 @llvm.ctpop.i32(i32 %1070)
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  %1074 = xor i8 %1073, 1
  store i8 %1074, i8* %21, align 1
  %1075 = xor i64 %1066, %1065
  %1076 = lshr i64 %1075, 4
  %1077 = trunc i64 %1076 to i8
  %1078 = and i8 %1077, 1
  store i8 %1078, i8* %26, align 1
  %1079 = icmp eq i64 %1066, 0
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %29, align 1
  %1081 = lshr i64 %1066, 63
  %1082 = trunc i64 %1081 to i8
  store i8 %1082, i8* %32, align 1
  %1083 = lshr i64 %1065, 63
  %1084 = xor i64 %1081, %1083
  %1085 = add nuw nsw i64 %1084, %1081
  %1086 = icmp eq i64 %1085, 2
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %38, align 1
  store i64 %1066, i64* %RDI.i190, align 8
  %1088 = add i64 %1060, -63836
  %1089 = add i64 %1060, 26
  %1090 = load i64, i64* %6, align 8
  %1091 = add i64 %1090, -8
  %1092 = inttoptr i64 %1091 to i64*
  store i64 %1089, i64* %1092, align 8
  store i64 %1091, i64* %6, align 8
  store i64 %1088, i64* %3, align 8
  %call2_410761 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %1088, %struct.Memory* %call2_41073d)
  %1093 = load i64, i64* %RAX.i66, align 8
  %1094 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1095 = trunc i64 %1093 to i32
  %1096 = and i32 %1095, 255
  %1097 = tail call i32 @llvm.ctpop.i32(i32 %1096)
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  store i8 %1100, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1101 = icmp eq i64 %1093, 0
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %29, align 1
  %1103 = lshr i64 %1093, 63
  %1104 = trunc i64 %1103 to i8
  store i8 %1104, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v201 = select i1 %1101, i64 10, i64 227
  %1105 = add i64 %1094, %.v201
  store i64 %1105, i64* %3, align 8
  br i1 %1101, label %block_.L_410770, label %block_.L_410849

block_.L_410770:                                  ; preds = %block_41074c, %block_410650
  %1106 = phi i64 [ %790, %block_410650 ], [ %1105, %block_41074c ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_410665, %block_410650 ], [ %call2_410761, %block_41074c ]
  %1107 = load i32, i32* bitcast (%G_0x886b84_type* @G_0x886b84 to i32*), align 8
  %1108 = add i32 %1107, -1
  %1109 = icmp eq i32 %1107, 0
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %14, align 1
  %1111 = and i32 %1108, 255
  %1112 = tail call i32 @llvm.ctpop.i32(i32 %1111)
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = xor i8 %1114, 1
  store i8 %1115, i8* %21, align 1
  %1116 = xor i32 %1108, %1107
  %1117 = lshr i32 %1116, 4
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  store i8 %1119, i8* %26, align 1
  %1120 = icmp eq i32 %1108, 0
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %29, align 1
  %1122 = lshr i32 %1108, 31
  %1123 = trunc i32 %1122 to i8
  store i8 %1123, i8* %32, align 1
  %1124 = lshr i32 %1107, 31
  %1125 = xor i32 %1122, %1124
  %1126 = add nuw nsw i32 %1125, %1124
  %1127 = icmp eq i32 %1126, 2
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %38, align 1
  %.v174 = select i1 %1120, i64 14, i64 104
  %1129 = add i64 %1106, %.v174
  %1130 = add i64 %1129, 7
  store i64 %1130, i64* %3, align 8
  br i1 %1120, label %block_41077e, label %block_.L_4107d8

block_41077e:                                     ; preds = %block_.L_410770
  %1131 = load i32, i32* bitcast (%G_0x62d784_type* @G_0x62d784 to i32*), align 8
  %1132 = add i32 %1131, 25
  store i32 %1132, i32* bitcast (%G_0x62d784_type* @G_0x62d784 to i32*), align 8
  %1133 = load i32, i32* bitcast (%G_0x62d78c_type* @G_0x62d78c to i32*), align 8
  %1134 = add i32 %1133, 50
  store i32 %1134, i32* bitcast (%G_0x62d78c_type* @G_0x62d78c to i32*), align 8
  %1135 = load i32, i32* bitcast (%G_0x62d7ac_type* @G_0x62d7ac to i32*), align 8
  %1136 = add i32 %1135, 50
  store i32 %1136, i32* bitcast (%G_0x62d7ac_type* @G_0x62d7ac to i32*), align 8
  %1137 = load i32, i32* bitcast (%G_0x62d79c_type* @G_0x62d79c to i32*), align 8
  %1138 = add i32 %1137, 50
  store i32 %1138, i32* bitcast (%G_0x62d79c_type* @G_0x62d79c to i32*), align 8
  %1139 = load i32, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  %1140 = add i32 %1139, 100
  %1141 = zext i32 %1140 to i64
  store i64 %1141, i64* %RAX.i66, align 8
  %1142 = icmp ugt i32 %1139, -101
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %14, align 1
  %1144 = and i32 %1140, 255
  %1145 = tail call i32 @llvm.ctpop.i32(i32 %1144)
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  %1148 = xor i8 %1147, 1
  store i8 %1148, i8* %21, align 1
  %1149 = xor i32 %1140, %1139
  %1150 = lshr i32 %1149, 4
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  store i8 %1152, i8* %26, align 1
  %1153 = icmp eq i32 %1140, 0
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %29, align 1
  %1155 = lshr i32 %1140, 31
  %1156 = trunc i32 %1155 to i8
  store i8 %1156, i8* %32, align 1
  %1157 = lshr i32 %1139, 31
  %1158 = xor i32 %1155, %1157
  %1159 = add nuw nsw i32 %1158, %1155
  %1160 = icmp eq i32 %1159, 2
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %38, align 1
  store i32 %1140, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  %1162 = add i64 %1129, 175
  store i64 %1162, i64* %3, align 8
  br label %block_.L_41082d

block_.L_4107d8:                                  ; preds = %block_.L_410770
  %1163 = load i32, i32* bitcast (%G_0x62d788_type* @G_0x62d788 to i32*), align 8
  %1164 = add i32 %1163, -25
  store i32 %1164, i32* bitcast (%G_0x62d788_type* @G_0x62d788 to i32*), align 8
  %1165 = load i32, i32* bitcast (%G_0x62d790_type* @G_0x62d790 to i32*), align 8
  %1166 = add i32 %1165, -50
  store i32 %1166, i32* bitcast (%G_0x62d790_type* @G_0x62d790 to i32*), align 8
  %1167 = load i32, i32* bitcast (%G_0x62d7b0_type* @G_0x62d7b0 to i32*), align 8
  %1168 = add i32 %1167, -50
  store i32 %1168, i32* bitcast (%G_0x62d7b0_type* @G_0x62d7b0 to i32*), align 8
  %1169 = load i32, i32* bitcast (%G_0x62d7a0_type* @G_0x62d7a0 to i32*), align 8
  %1170 = add i32 %1169, -50
  store i32 %1170, i32* bitcast (%G_0x62d7a0_type* @G_0x62d7a0 to i32*), align 8
  %1171 = load i32, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  %1172 = add i32 %1171, -100
  %1173 = zext i32 %1172 to i64
  store i64 %1173, i64* %RAX.i66, align 8
  %1174 = icmp ult i32 %1171, 100
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %14, align 1
  %1176 = and i32 %1172, 255
  %1177 = tail call i32 @llvm.ctpop.i32(i32 %1176)
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = xor i8 %1179, 1
  store i8 %1180, i8* %21, align 1
  %1181 = xor i32 %1172, %1171
  %1182 = lshr i32 %1181, 4
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  store i8 %1184, i8* %26, align 1
  %1185 = icmp eq i32 %1172, 0
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %29, align 1
  %1187 = lshr i32 %1172, 31
  %1188 = trunc i32 %1187 to i8
  store i8 %1188, i8* %32, align 1
  %1189 = lshr i32 %1171, 31
  %1190 = xor i32 %1187, %1189
  %1191 = add nuw nsw i32 %1190, %1189
  %1192 = icmp eq i32 %1191, 2
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %38, align 1
  %1194 = add i64 %1129, 85
  store i64 %1194, i64* %3, align 8
  store i32 %1172, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  br label %block_.L_41082d

block_.L_41082d:                                  ; preds = %block_.L_4107d8, %block_41077e
  %1195 = phi i64 [ %1194, %block_.L_4107d8 ], [ %1162, %block_41077e ]
  store i64 ptrtoint (%G__0x428973_type* @G__0x428973 to i64), i64* %RDI.i190, align 8
  %AL.i1601 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1601, align 1
  %1196 = add i64 %1195, -64381
  %1197 = add i64 %1195, 17
  %1198 = load i64, i64* %6, align 8
  %1199 = add i64 %1198, -8
  %1200 = inttoptr i64 %1199 to i64*
  store i64 %1197, i64* %1200, align 8
  store i64 %1199, i64* %6, align 8
  store i64 %1196, i64* %3, align 8
  %1201 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.3)
  %1202 = load i64, i64* %RBP.i, align 8
  %1203 = add i64 %1202, -156
  %1204 = load i32, i32* %EAX.i76, align 4
  %1205 = load i64, i64* %3, align 8
  %1206 = add i64 %1205, 6
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1203 to i32*
  store i32 %1204, i32* %1207, align 4
  %1208 = load i64, i64* %3, align 8
  %1209 = add i64 %1208, 243
  br label %block_.L_410937

block_.L_410849:                                  ; preds = %block_41074c, %block_410728, %block_410704, %block_4106e0, %block_4106bc, %block_410698, %block_410674
  %1210 = phi i64 [ %835, %block_410674 ], [ %880, %block_410698 ], [ %925, %block_4106bc ], [ %970, %block_4106e0 ], [ %1015, %block_410704 ], [ %1060, %block_410728 ], [ %1105, %block_41074c ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_410689, %block_410674 ], [ %call2_4106ad, %block_410698 ], [ %call2_4106d1, %block_4106bc ], [ %call2_4106f5, %block_4106e0 ], [ %call2_410719, %block_410704 ], [ %call2_41073d, %block_410728 ], [ %call2_410761, %block_41074c ]
  store i64 ptrtoint (%G__0x428996_type* @G__0x428996 to i64), i64* %RSI.i, align 8
  %1211 = load i64, i64* %RBP.i, align 8
  %1212 = add i64 %1211, -8
  %1213 = add i64 %1210, 14
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i64*
  %1215 = load i64, i64* %1214, align 8
  %1216 = add i64 %1215, 6
  store i64 %1216, i64* %RAX.i66, align 8
  %1217 = icmp ugt i64 %1215, -7
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %14, align 1
  %1219 = trunc i64 %1216 to i32
  %1220 = and i32 %1219, 255
  %1221 = tail call i32 @llvm.ctpop.i32(i32 %1220)
  %1222 = trunc i32 %1221 to i8
  %1223 = and i8 %1222, 1
  %1224 = xor i8 %1223, 1
  store i8 %1224, i8* %21, align 1
  %1225 = xor i64 %1216, %1215
  %1226 = lshr i64 %1225, 4
  %1227 = trunc i64 %1226 to i8
  %1228 = and i8 %1227, 1
  store i8 %1228, i8* %26, align 1
  %1229 = icmp eq i64 %1216, 0
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %29, align 1
  %1231 = lshr i64 %1216, 63
  %1232 = trunc i64 %1231 to i8
  store i8 %1232, i8* %32, align 1
  %1233 = lshr i64 %1215, 63
  %1234 = xor i64 %1231, %1233
  %1235 = add nuw nsw i64 %1234, %1231
  %1236 = icmp eq i64 %1235, 2
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %38, align 1
  store i64 %1216, i64* %RDI.i190, align 8
  %1238 = add i64 %1210, -64089
  %1239 = add i64 %1210, 26
  %1240 = load i64, i64* %6, align 8
  %1241 = add i64 %1240, -8
  %1242 = inttoptr i64 %1241 to i64*
  store i64 %1239, i64* %1242, align 8
  store i64 %1241, i64* %6, align 8
  store i64 %1238, i64* %3, align 8
  %call2_41085e = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %1238, %struct.Memory* %MEMORY.5)
  %1243 = load i64, i64* %RAX.i66, align 8
  %1244 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1245 = trunc i64 %1243 to i32
  %1246 = and i32 %1245, 255
  %1247 = tail call i32 @llvm.ctpop.i32(i32 %1246)
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  %1250 = xor i8 %1249, 1
  store i8 %1250, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1251 = icmp eq i64 %1243, 0
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %29, align 1
  %1253 = lshr i64 %1243, 63
  %1254 = trunc i64 %1253 to i8
  store i8 %1254, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v193 = select i1 %1251, i64 45, i64 10
  %1255 = add i64 %1244, %.v193
  store i64 %1255, i64* %3, align 8
  br i1 %1251, label %block_.L_410890, label %block_41086d

block_41086d:                                     ; preds = %block_.L_410849
  %1256 = load i64, i64* %RBP.i, align 8
  %1257 = add i64 %1256, -96
  store i64 %1257, i64* %RDI.i190, align 8
  %1258 = add i64 %1256, -12
  %1259 = add i64 %1255, 11
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i32*
  store i32 50000, i32* %1260, align 4
  %1261 = load i64, i64* %3, align 8
  store i64 and (i64 ptrtoint (%G__0x42899a_type* @G__0x42899a to i64), i64 4294967295), i64* %RAX.i66, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x42899a_type* @G__0x42899a to i64), i64 4294967295) to i32) to i64), i64* %RSI.i, align 8
  %1262 = add i64 %1261, -64520
  %1263 = add i64 %1261, 12
  %1264 = load i64, i64* %6, align 8
  %1265 = add i64 %1264, -8
  %1266 = inttoptr i64 %1265 to i64*
  store i64 %1263, i64* %1266, align 8
  store i64 %1265, i64* %6, align 8
  store i64 %1262, i64* %3, align 8
  %1267 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %call2_41085e)
  %1268 = load i64, i64* %RBP.i, align 8
  %1269 = add i64 %1268, -168
  %1270 = load i64, i64* %RAX.i66, align 8
  %1271 = load i64, i64* %3, align 8
  %1272 = add i64 %1271, 7
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1269 to i64*
  store i64 %1270, i64* %1273, align 8
  %1274 = load i64, i64* %3, align 8
  %1275 = add i64 %1274, 167
  br label %block_.L_410932

block_.L_410890:                                  ; preds = %block_.L_410849
  store i64 ptrtoint (%G__0x428997_type* @G__0x428997 to i64), i64* %RSI.i, align 8
  %1276 = load i64, i64* %RBP.i, align 8
  %1277 = add i64 %1276, -8
  %1278 = add i64 %1255, 14
  store i64 %1278, i64* %3, align 8
  %1279 = inttoptr i64 %1277 to i64*
  %1280 = load i64, i64* %1279, align 8
  %1281 = add i64 %1280, 6
  store i64 %1281, i64* %RAX.i66, align 8
  %1282 = icmp ugt i64 %1280, -7
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %14, align 1
  %1284 = trunc i64 %1281 to i32
  %1285 = and i32 %1284, 255
  %1286 = tail call i32 @llvm.ctpop.i32(i32 %1285)
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  %1289 = xor i8 %1288, 1
  store i8 %1289, i8* %21, align 1
  %1290 = xor i64 %1281, %1280
  %1291 = lshr i64 %1290, 4
  %1292 = trunc i64 %1291 to i8
  %1293 = and i8 %1292, 1
  store i8 %1293, i8* %26, align 1
  %1294 = icmp eq i64 %1281, 0
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %29, align 1
  %1296 = lshr i64 %1281, 63
  %1297 = trunc i64 %1296 to i8
  store i8 %1297, i8* %32, align 1
  %1298 = lshr i64 %1280, 63
  %1299 = xor i64 %1296, %1298
  %1300 = add nuw nsw i64 %1299, %1296
  %1301 = icmp eq i64 %1300, 2
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %38, align 1
  store i64 %1281, i64* %RDI.i190, align 8
  %1303 = add i64 %1255, -64160
  %1304 = add i64 %1255, 26
  %1305 = load i64, i64* %6, align 8
  %1306 = add i64 %1305, -8
  %1307 = inttoptr i64 %1306 to i64*
  store i64 %1304, i64* %1307, align 8
  store i64 %1306, i64* %6, align 8
  store i64 %1303, i64* %3, align 8
  %call2_4108a5 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %1303, %struct.Memory* %call2_41085e)
  %1308 = load i64, i64* %RAX.i66, align 8
  %1309 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1310 = trunc i64 %1308 to i32
  %1311 = and i32 %1310, 255
  %1312 = tail call i32 @llvm.ctpop.i32(i32 %1311)
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  %1315 = xor i8 %1314, 1
  store i8 %1315, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1316 = icmp eq i64 %1308, 0
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %29, align 1
  %1318 = lshr i64 %1308, 63
  %1319 = trunc i64 %1318 to i8
  store i8 %1319, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v194 = select i1 %1316, i64 45, i64 10
  %1320 = add i64 %1309, %.v194
  store i64 %1320, i64* %3, align 8
  br i1 %1316, label %block_.L_4108d7, label %block_4108b4

block_4108b4:                                     ; preds = %block_.L_410890
  %1321 = load i64, i64* %RBP.i, align 8
  %1322 = add i64 %1321, -96
  store i64 %1322, i64* %RDI.i190, align 8
  %1323 = add i64 %1321, -12
  %1324 = add i64 %1320, 11
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1323 to i32*
  store i32 1000, i32* %1325, align 4
  %1326 = load i64, i64* %3, align 8
  store i64 and (i64 ptrtoint (%G__0x4289a0_type* @G__0x4289a0 to i64), i64 4294967295), i64* %RAX.i66, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4289a0_type* @G__0x4289a0 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i, align 8
  %1327 = add i64 %1326, -64591
  %1328 = add i64 %1326, 12
  %1329 = load i64, i64* %6, align 8
  %1330 = add i64 %1329, -8
  %1331 = inttoptr i64 %1330 to i64*
  store i64 %1328, i64* %1331, align 8
  store i64 %1330, i64* %6, align 8
  store i64 %1327, i64* %3, align 8
  %1332 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %call2_4108a5)
  %1333 = load i64, i64* %RBP.i, align 8
  %1334 = add i64 %1333, -176
  %1335 = load i64, i64* %RAX.i66, align 8
  %1336 = load i64, i64* %3, align 8
  %1337 = add i64 %1336, 7
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1334 to i64*
  store i64 %1335, i64* %1338, align 8
  %1339 = load i64, i64* %3, align 8
  %1340 = add i64 %1339, 91
  br label %block_.L_41092d

block_.L_4108d7:                                  ; preds = %block_.L_410890
  store i64 ptrtoint (%G__0x428998_type* @G__0x428998 to i64), i64* %RSI.i, align 8
  %1341 = load i64, i64* %RBP.i, align 8
  %1342 = add i64 %1341, -8
  %1343 = add i64 %1320, 14
  store i64 %1343, i64* %3, align 8
  %1344 = inttoptr i64 %1342 to i64*
  %1345 = load i64, i64* %1344, align 8
  %1346 = add i64 %1345, 6
  store i64 %1346, i64* %RAX.i66, align 8
  %1347 = icmp ugt i64 %1345, -7
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %14, align 1
  %1349 = trunc i64 %1346 to i32
  %1350 = and i32 %1349, 255
  %1351 = tail call i32 @llvm.ctpop.i32(i32 %1350)
  %1352 = trunc i32 %1351 to i8
  %1353 = and i8 %1352, 1
  %1354 = xor i8 %1353, 1
  store i8 %1354, i8* %21, align 1
  %1355 = xor i64 %1346, %1345
  %1356 = lshr i64 %1355, 4
  %1357 = trunc i64 %1356 to i8
  %1358 = and i8 %1357, 1
  store i8 %1358, i8* %26, align 1
  %1359 = icmp eq i64 %1346, 0
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %29, align 1
  %1361 = lshr i64 %1346, 63
  %1362 = trunc i64 %1361 to i8
  store i8 %1362, i8* %32, align 1
  %1363 = lshr i64 %1345, 63
  %1364 = xor i64 %1361, %1363
  %1365 = add nuw nsw i64 %1364, %1361
  %1366 = icmp eq i64 %1365, 2
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %38, align 1
  store i64 %1346, i64* %RDI.i190, align 8
  %1368 = add i64 %1320, -64231
  %1369 = add i64 %1320, 26
  %1370 = load i64, i64* %6, align 8
  %1371 = add i64 %1370, -8
  %1372 = inttoptr i64 %1371 to i64*
  store i64 %1369, i64* %1372, align 8
  store i64 %1371, i64* %6, align 8
  store i64 %1368, i64* %3, align 8
  %call2_4108ec = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %1368, %struct.Memory* %call2_4108a5)
  %1373 = load i64, i64* %RAX.i66, align 8
  %1374 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1375 = trunc i64 %1373 to i32
  %1376 = and i32 %1375, 255
  %1377 = tail call i32 @llvm.ctpop.i32(i32 %1376)
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  %1380 = xor i8 %1379, 1
  store i8 %1380, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1381 = icmp eq i64 %1373, 0
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %29, align 1
  %1383 = lshr i64 %1373, 63
  %1384 = trunc i64 %1383 to i8
  store i8 %1384, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v195 = select i1 %1381, i64 45, i64 10
  %1385 = add i64 %1374, %.v195
  store i64 %1385, i64* %3, align 8
  br i1 %1381, label %block_.L_41091e, label %block_4108fb

block_4108fb:                                     ; preds = %block_.L_4108d7
  %1386 = load i64, i64* %RBP.i, align 8
  %1387 = add i64 %1386, -96
  store i64 %1387, i64* %RDI.i190, align 8
  %1388 = add i64 %1386, -12
  %1389 = add i64 %1385, 11
  store i64 %1389, i64* %3, align 8
  %1390 = inttoptr i64 %1388 to i32*
  store i32 150, i32* %1390, align 4
  %1391 = load i64, i64* %3, align 8
  store i64 and (i64 ptrtoint (%G__0x4289d1_type* @G__0x4289d1 to i64), i64 4294967295), i64* %RAX.i66, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4289d1_type* @G__0x4289d1 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i, align 8
  %1392 = add i64 %1391, -64662
  %1393 = add i64 %1391, 12
  %1394 = load i64, i64* %6, align 8
  %1395 = add i64 %1394, -8
  %1396 = inttoptr i64 %1395 to i64*
  store i64 %1393, i64* %1396, align 8
  store i64 %1395, i64* %6, align 8
  store i64 %1392, i64* %3, align 8
  %1397 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %call2_4108ec)
  %1398 = load i64, i64* %RBP.i, align 8
  %1399 = add i64 %1398, -184
  %1400 = load i64, i64* %RAX.i66, align 8
  %1401 = load i64, i64* %3, align 8
  %1402 = add i64 %1401, 7
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1399 to i64*
  store i64 %1400, i64* %1403, align 8
  %1404 = load i64, i64* %3, align 8
  %1405 = add i64 %1404, 15
  store i64 %1405, i64* %3, align 8
  br label %block_.L_410928

block_.L_41091e:                                  ; preds = %block_.L_4108d7
  %1406 = and i64 %1373, 4294967295
  store i64 %1406, i64* %RAX.i66, align 8
  store i8 0, i8* %14, align 1
  store i8 %1380, i8* %21, align 1
  %1407 = icmp eq i32 %1375, 0
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %29, align 1
  %1409 = lshr i32 %1375, 31
  %1410 = trunc i32 %1409 to i8
  store i8 %1410, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1411 = and i64 %1373, 4294967295
  store i64 %1411, i64* %RCX.i96, align 8
  %1412 = add i64 %1385, 10
  store i64 %1412, i64* %3, align 8
  %1413 = inttoptr i64 %1411 to i32*
  store i32 0, i32* %1413, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_410928

block_.L_410928:                                  ; preds = %block_.L_41091e, %block_4108fb
  %1414 = phi i64 [ %.pre, %block_.L_41091e ], [ %1405, %block_4108fb ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_4108ec, %block_.L_41091e ], [ %1397, %block_4108fb ]
  %1415 = add i64 %1414, 5
  store i64 %1415, i64* %3, align 8
  br label %block_.L_41092d

block_.L_41092d:                                  ; preds = %block_.L_410928, %block_4108b4
  %storemerge93 = phi i64 [ %1340, %block_4108b4 ], [ %1415, %block_.L_410928 ]
  %MEMORY.7 = phi %struct.Memory* [ %1332, %block_4108b4 ], [ %MEMORY.6, %block_.L_410928 ]
  %1416 = add i64 %storemerge93, 5
  store i64 %1416, i64* %3, align 8
  br label %block_.L_410932

block_.L_410932:                                  ; preds = %block_.L_41092d, %block_41086d
  %storemerge92 = phi i64 [ %1275, %block_41086d ], [ %1416, %block_.L_41092d ]
  %MEMORY.8 = phi %struct.Memory* [ %1267, %block_41086d ], [ %MEMORY.7, %block_.L_41092d ]
  %1417 = add i64 %storemerge92, 5
  store i64 %1417, i64* %3, align 8
  br label %block_.L_410937

block_.L_410937:                                  ; preds = %block_.L_410932, %block_.L_41082d
  %storemerge90 = phi i64 [ %1209, %block_.L_41082d ], [ %1417, %block_.L_410932 ]
  %MEMORY.9 = phi %struct.Memory* [ %1201, %block_.L_41082d ], [ %MEMORY.8, %block_.L_410932 ]
  store i64 ptrtoint (%G__0x429b31_type* @G__0x429b31 to i64), i64* %RSI.i, align 8
  %1418 = load i64, i64* %RBP.i, align 8
  %1419 = add i64 %1418, -8
  %1420 = add i64 %storemerge90, 14
  store i64 %1420, i64* %3, align 8
  %1421 = inttoptr i64 %1419 to i64*
  %1422 = load i64, i64* %1421, align 8
  %1423 = add i64 %1422, 6
  store i64 %1423, i64* %RAX.i66, align 8
  %1424 = icmp ugt i64 %1422, -7
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %14, align 1
  %1426 = trunc i64 %1423 to i32
  %1427 = and i32 %1426, 255
  %1428 = tail call i32 @llvm.ctpop.i32(i32 %1427)
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  %1431 = xor i8 %1430, 1
  store i8 %1431, i8* %21, align 1
  %1432 = xor i64 %1423, %1422
  %1433 = lshr i64 %1432, 4
  %1434 = trunc i64 %1433 to i8
  %1435 = and i8 %1434, 1
  store i8 %1435, i8* %26, align 1
  %1436 = icmp eq i64 %1423, 0
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %29, align 1
  %1438 = lshr i64 %1423, 63
  %1439 = trunc i64 %1438 to i8
  store i8 %1439, i8* %32, align 1
  %1440 = lshr i64 %1422, 63
  %1441 = xor i64 %1438, %1440
  %1442 = add nuw nsw i64 %1441, %1438
  %1443 = icmp eq i64 %1442, 2
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %38, align 1
  store i64 %1423, i64* %RDI.i190, align 8
  %1445 = add i64 %storemerge90, -64327
  %1446 = add i64 %storemerge90, 26
  %1447 = load i64, i64* %6, align 8
  %1448 = add i64 %1447, -8
  %1449 = inttoptr i64 %1448 to i64*
  store i64 %1446, i64* %1449, align 8
  store i64 %1448, i64* %6, align 8
  store i64 %1445, i64* %3, align 8
  %call2_41094c = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %1445, %struct.Memory* %MEMORY.9)
  %1450 = load i64, i64* %RAX.i66, align 8
  %1451 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1452 = trunc i64 %1450 to i32
  %1453 = and i32 %1452, 255
  %1454 = tail call i32 @llvm.ctpop.i32(i32 %1453)
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  %1457 = xor i8 %1456, 1
  store i8 %1457, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1458 = icmp eq i64 %1450, 0
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %29, align 1
  %1460 = lshr i64 %1450, 63
  %1461 = trunc i64 %1460 to i8
  store i8 %1461, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v175 = select i1 %1458, i64 90, i64 10
  %1462 = add i64 %1451, %.v175
  store i64 %1462, i64* %3, align 8
  br i1 %1458, label %block_.L_4109ab, label %block_41095b

block_41095b:                                     ; preds = %block_.L_410937
  %1463 = load i32, i32* bitcast (%G_0x886b84_type* @G_0x886b84 to i32*), align 8
  %1464 = add i32 %1463, -1
  %1465 = icmp eq i32 %1463, 0
  %1466 = zext i1 %1465 to i8
  store i8 %1466, i8* %14, align 1
  %1467 = and i32 %1464, 255
  %1468 = tail call i32 @llvm.ctpop.i32(i32 %1467)
  %1469 = trunc i32 %1468 to i8
  %1470 = and i8 %1469, 1
  %1471 = xor i8 %1470, 1
  store i8 %1471, i8* %21, align 1
  %1472 = xor i32 %1464, %1463
  %1473 = lshr i32 %1472, 4
  %1474 = trunc i32 %1473 to i8
  %1475 = and i8 %1474, 1
  store i8 %1475, i8* %26, align 1
  %1476 = icmp eq i32 %1464, 0
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %29, align 1
  %1478 = lshr i32 %1464, 31
  %1479 = trunc i32 %1478 to i8
  store i8 %1479, i8* %32, align 1
  %1480 = lshr i32 %1463, 31
  %1481 = xor i32 %1478, %1480
  %1482 = add nuw nsw i32 %1481, %1480
  %1483 = icmp eq i32 %1482, 2
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %38, align 1
  %.v176 = select i1 %1476, i64 14, i64 36
  %1485 = add i64 %1462, %.v176
  %1486 = add i64 %1485, 7
  store i64 %1486, i64* %3, align 8
  br i1 %1476, label %block_410969, label %block_.L_41097f

block_410969:                                     ; preds = %block_41095b
  %1487 = load i32, i32* bitcast (%G_0x62d7cc_type* @G_0x62d7cc to i32*), align 8
  %1488 = zext i32 %1487 to i64
  store i64 %1488, i64* %RAX.i66, align 8
  %1489 = load i64, i64* %RBP.i, align 8
  %1490 = add i64 %1489, -12
  %1491 = add i64 %1485, 10
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1490 to i32*
  %1493 = load i32, i32* %1492, align 4
  %1494 = add i32 %1493, %1487
  %1495 = zext i32 %1494 to i64
  store i64 %1495, i64* %RAX.i66, align 8
  %1496 = icmp ult i32 %1494, %1487
  %1497 = icmp ult i32 %1494, %1493
  %1498 = or i1 %1496, %1497
  %1499 = zext i1 %1498 to i8
  store i8 %1499, i8* %14, align 1
  %1500 = and i32 %1494, 255
  %1501 = tail call i32 @llvm.ctpop.i32(i32 %1500)
  %1502 = trunc i32 %1501 to i8
  %1503 = and i8 %1502, 1
  %1504 = xor i8 %1503, 1
  store i8 %1504, i8* %21, align 1
  %1505 = xor i32 %1493, %1487
  %1506 = xor i32 %1505, %1494
  %1507 = lshr i32 %1506, 4
  %1508 = trunc i32 %1507 to i8
  %1509 = and i8 %1508, 1
  store i8 %1509, i8* %26, align 1
  %1510 = icmp eq i32 %1494, 0
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %29, align 1
  %1512 = lshr i32 %1494, 31
  %1513 = trunc i32 %1512 to i8
  store i8 %1513, i8* %32, align 1
  %1514 = lshr i32 %1487, 31
  %1515 = lshr i32 %1493, 31
  %1516 = xor i32 %1512, %1514
  %1517 = xor i32 %1512, %1515
  %1518 = add nuw nsw i32 %1516, %1517
  %1519 = icmp eq i32 %1518, 2
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %38, align 1
  store i32 %1494, i32* bitcast (%G_0x62d78c_type* @G_0x62d78c to i32*), align 8
  %1521 = add i64 %1485, 39
  store i64 %1521, i64* %3, align 8
  br label %block_.L_410990

block_.L_41097f:                                  ; preds = %block_41095b
  %1522 = load i32, i32* bitcast (%G_0x62d7d0_type* @G_0x62d7d0 to i32*), align 8
  %1523 = zext i32 %1522 to i64
  store i64 %1523, i64* %RAX.i66, align 8
  %1524 = load i64, i64* %RBP.i, align 8
  %1525 = add i64 %1524, -12
  %1526 = add i64 %1485, 10
  store i64 %1526, i64* %3, align 8
  %1527 = inttoptr i64 %1525 to i32*
  %1528 = load i32, i32* %1527, align 4
  %1529 = sub i32 %1522, %1528
  %1530 = zext i32 %1529 to i64
  store i64 %1530, i64* %RAX.i66, align 8
  %1531 = icmp ult i32 %1522, %1528
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %14, align 1
  %1533 = and i32 %1529, 255
  %1534 = tail call i32 @llvm.ctpop.i32(i32 %1533)
  %1535 = trunc i32 %1534 to i8
  %1536 = and i8 %1535, 1
  %1537 = xor i8 %1536, 1
  store i8 %1537, i8* %21, align 1
  %1538 = xor i32 %1528, %1522
  %1539 = xor i32 %1538, %1529
  %1540 = lshr i32 %1539, 4
  %1541 = trunc i32 %1540 to i8
  %1542 = and i8 %1541, 1
  store i8 %1542, i8* %26, align 1
  %1543 = icmp eq i32 %1529, 0
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %29, align 1
  %1545 = lshr i32 %1529, 31
  %1546 = trunc i32 %1545 to i8
  store i8 %1546, i8* %32, align 1
  %1547 = lshr i32 %1522, 31
  %1548 = lshr i32 %1528, 31
  %1549 = xor i32 %1548, %1547
  %1550 = xor i32 %1545, %1547
  %1551 = add nuw nsw i32 %1550, %1549
  %1552 = icmp eq i32 %1551, 2
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %38, align 1
  %1554 = add i64 %1485, 17
  store i64 %1554, i64* %3, align 8
  store i32 %1529, i32* bitcast (%G_0x62d790_type* @G_0x62d790 to i32*), align 8
  br label %block_.L_410990

block_.L_410990:                                  ; preds = %block_.L_41097f, %block_410969
  %1555 = phi i64 [ %1524, %block_.L_41097f ], [ %1489, %block_410969 ]
  %1556 = phi i64 [ %1554, %block_.L_41097f ], [ %1521, %block_410969 ]
  store i64 ptrtoint (%G__0x4289fd_type* @G__0x4289fd to i64), i64* %RDI.i190, align 8
  %1557 = add i64 %1555, -96
  store i64 %1557, i64* %RSI.i, align 8
  %AL.i1450 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1450, align 1
  %1558 = add i64 %1556, -64736
  %1559 = add i64 %1556, 21
  %1560 = load i64, i64* %6, align 8
  %1561 = add i64 %1560, -8
  %1562 = inttoptr i64 %1561 to i64*
  store i64 %1559, i64* %1562, align 8
  store i64 %1561, i64* %6, align 8
  store i64 %1558, i64* %3, align 8
  %1563 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_41094c)
  %1564 = load i64, i64* %RBP.i, align 8
  %1565 = add i64 %1564, -188
  %1566 = load i32, i32* %EAX.i76, align 4
  %1567 = load i64, i64* %3, align 8
  %1568 = add i64 %1567, 6
  store i64 %1568, i64* %3, align 8
  %1569 = inttoptr i64 %1565 to i32*
  store i32 %1566, i32* %1569, align 4
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_4109ab

block_.L_4109ab:                                  ; preds = %block_.L_410990, %block_.L_410937
  %1570 = phi i64 [ %1462, %block_.L_410937 ], [ %.pre102, %block_.L_410990 ]
  %MEMORY.11 = phi %struct.Memory* [ %call2_41094c, %block_.L_410937 ], [ %1563, %block_.L_410990 ]
  store i64 ptrtoint (%G__0x429b45_type* @G__0x429b45 to i64), i64* %RSI.i, align 8
  %1571 = load i64, i64* %RBP.i, align 8
  %1572 = add i64 %1571, -8
  %1573 = add i64 %1570, 14
  store i64 %1573, i64* %3, align 8
  %1574 = inttoptr i64 %1572 to i64*
  %1575 = load i64, i64* %1574, align 8
  %1576 = add i64 %1575, 6
  store i64 %1576, i64* %RAX.i66, align 8
  %1577 = icmp ugt i64 %1575, -7
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %14, align 1
  %1579 = trunc i64 %1576 to i32
  %1580 = and i32 %1579, 255
  %1581 = tail call i32 @llvm.ctpop.i32(i32 %1580)
  %1582 = trunc i32 %1581 to i8
  %1583 = and i8 %1582, 1
  %1584 = xor i8 %1583, 1
  store i8 %1584, i8* %21, align 1
  %1585 = xor i64 %1576, %1575
  %1586 = lshr i64 %1585, 4
  %1587 = trunc i64 %1586 to i8
  %1588 = and i8 %1587, 1
  store i8 %1588, i8* %26, align 1
  %1589 = icmp eq i64 %1576, 0
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %29, align 1
  %1591 = lshr i64 %1576, 63
  %1592 = trunc i64 %1591 to i8
  store i8 %1592, i8* %32, align 1
  %1593 = lshr i64 %1575, 63
  %1594 = xor i64 %1591, %1593
  %1595 = add nuw nsw i64 %1594, %1591
  %1596 = icmp eq i64 %1595, 2
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %38, align 1
  store i64 %1576, i64* %RDI.i190, align 8
  %1598 = add i64 %1570, -64443
  %1599 = add i64 %1570, 26
  %1600 = load i64, i64* %6, align 8
  %1601 = add i64 %1600, -8
  %1602 = inttoptr i64 %1601 to i64*
  store i64 %1599, i64* %1602, align 8
  store i64 %1601, i64* %6, align 8
  store i64 %1598, i64* %3, align 8
  %call2_4109c0 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %1598, %struct.Memory* %MEMORY.11)
  %1603 = load i64, i64* %RAX.i66, align 8
  %1604 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1605 = trunc i64 %1603 to i32
  %1606 = and i32 %1605, 255
  %1607 = tail call i32 @llvm.ctpop.i32(i32 %1606)
  %1608 = trunc i32 %1607 to i8
  %1609 = and i8 %1608, 1
  %1610 = xor i8 %1609, 1
  store i8 %1610, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1611 = icmp eq i64 %1603, 0
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %29, align 1
  %1613 = lshr i64 %1603, 63
  %1614 = trunc i64 %1613 to i8
  store i8 %1614, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v177 = select i1 %1611, i64 143, i64 10
  %1615 = add i64 %1604, %.v177
  store i64 %1615, i64* %3, align 8
  br i1 %1611, label %block_.L_410a54, label %block_4109cf

block_4109cf:                                     ; preds = %block_.L_4109ab
  %1616 = load i32, i32* bitcast (%G_0x886b84_type* @G_0x886b84 to i32*), align 8
  %1617 = add i32 %1616, -1
  %1618 = icmp eq i32 %1616, 0
  %1619 = zext i1 %1618 to i8
  store i8 %1619, i8* %14, align 1
  %1620 = and i32 %1617, 255
  %1621 = tail call i32 @llvm.ctpop.i32(i32 %1620)
  %1622 = trunc i32 %1621 to i8
  %1623 = and i8 %1622, 1
  %1624 = xor i8 %1623, 1
  store i8 %1624, i8* %21, align 1
  %1625 = xor i32 %1617, %1616
  %1626 = lshr i32 %1625, 4
  %1627 = trunc i32 %1626 to i8
  %1628 = and i8 %1627, 1
  store i8 %1628, i8* %26, align 1
  %1629 = icmp eq i32 %1617, 0
  %1630 = zext i1 %1629 to i8
  store i8 %1630, i8* %29, align 1
  %1631 = lshr i32 %1617, 31
  %1632 = trunc i32 %1631 to i8
  store i8 %1632, i8* %32, align 1
  %1633 = lshr i32 %1616, 31
  %1634 = xor i32 %1631, %1633
  %1635 = add nuw nsw i32 %1634, %1633
  %1636 = icmp eq i32 %1635, 2
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %38, align 1
  %.v178 = select i1 %1629, i64 14, i64 36
  %1638 = add i64 %1615, %.v178
  %1639 = add i64 %1638, 7
  store i64 %1639, i64* %3, align 8
  br i1 %1629, label %block_4109dd, label %block_.L_4109f3

block_4109dd:                                     ; preds = %block_4109cf
  %1640 = load i32, i32* bitcast (%G_0x62d7ec_type* @G_0x62d7ec to i32*), align 8
  %1641 = zext i32 %1640 to i64
  store i64 %1641, i64* %RAX.i66, align 8
  %1642 = load i64, i64* %RBP.i, align 8
  %1643 = add i64 %1642, -12
  %1644 = add i64 %1638, 10
  store i64 %1644, i64* %3, align 8
  %1645 = inttoptr i64 %1643 to i32*
  %1646 = load i32, i32* %1645, align 4
  %1647 = add i32 %1646, %1640
  %1648 = zext i32 %1647 to i64
  store i64 %1648, i64* %RAX.i66, align 8
  %1649 = icmp ult i32 %1647, %1640
  %1650 = icmp ult i32 %1647, %1646
  %1651 = or i1 %1649, %1650
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %14, align 1
  %1653 = and i32 %1647, 255
  %1654 = tail call i32 @llvm.ctpop.i32(i32 %1653)
  %1655 = trunc i32 %1654 to i8
  %1656 = and i8 %1655, 1
  %1657 = xor i8 %1656, 1
  store i8 %1657, i8* %21, align 1
  %1658 = xor i32 %1646, %1640
  %1659 = xor i32 %1658, %1647
  %1660 = lshr i32 %1659, 4
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  store i8 %1662, i8* %26, align 1
  %1663 = icmp eq i32 %1647, 0
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %29, align 1
  %1665 = lshr i32 %1647, 31
  %1666 = trunc i32 %1665 to i8
  store i8 %1666, i8* %32, align 1
  %1667 = lshr i32 %1640, 31
  %1668 = lshr i32 %1646, 31
  %1669 = xor i32 %1665, %1667
  %1670 = xor i32 %1665, %1668
  %1671 = add nuw nsw i32 %1669, %1670
  %1672 = icmp eq i32 %1671, 2
  %1673 = zext i1 %1672 to i8
  store i8 %1673, i8* %38, align 1
  store i32 %1647, i32* bitcast (%G_0x62d7ac_type* @G_0x62d7ac to i32*), align 8
  %1674 = add i64 %1638, 39
  store i64 %1674, i64* %3, align 8
  br label %block_.L_410a04

block_.L_4109f3:                                  ; preds = %block_4109cf
  %1675 = load i32, i32* bitcast (%G_0x62d7f0_type* @G_0x62d7f0 to i32*), align 8
  %1676 = zext i32 %1675 to i64
  store i64 %1676, i64* %RAX.i66, align 8
  %1677 = load i64, i64* %RBP.i, align 8
  %1678 = add i64 %1677, -12
  %1679 = add i64 %1638, 10
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i32*
  %1681 = load i32, i32* %1680, align 4
  %1682 = sub i32 %1675, %1681
  %1683 = zext i32 %1682 to i64
  store i64 %1683, i64* %RAX.i66, align 8
  %1684 = icmp ult i32 %1675, %1681
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %14, align 1
  %1686 = and i32 %1682, 255
  %1687 = tail call i32 @llvm.ctpop.i32(i32 %1686)
  %1688 = trunc i32 %1687 to i8
  %1689 = and i8 %1688, 1
  %1690 = xor i8 %1689, 1
  store i8 %1690, i8* %21, align 1
  %1691 = xor i32 %1681, %1675
  %1692 = xor i32 %1691, %1682
  %1693 = lshr i32 %1692, 4
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  store i8 %1695, i8* %26, align 1
  %1696 = icmp eq i32 %1682, 0
  %1697 = zext i1 %1696 to i8
  store i8 %1697, i8* %29, align 1
  %1698 = lshr i32 %1682, 31
  %1699 = trunc i32 %1698 to i8
  store i8 %1699, i8* %32, align 1
  %1700 = lshr i32 %1675, 31
  %1701 = lshr i32 %1681, 31
  %1702 = xor i32 %1701, %1700
  %1703 = xor i32 %1698, %1700
  %1704 = add nuw nsw i32 %1703, %1702
  %1705 = icmp eq i32 %1704, 2
  %1706 = zext i1 %1705 to i8
  store i8 %1706, i8* %38, align 1
  %1707 = add i64 %1638, 17
  store i64 %1707, i64* %3, align 8
  store i32 %1682, i32* bitcast (%G_0x62d7b0_type* @G_0x62d7b0 to i32*), align 8
  br label %block_.L_410a04

block_.L_410a04:                                  ; preds = %block_.L_4109f3, %block_4109dd
  %1708 = phi i64 [ %1677, %block_.L_4109f3 ], [ %1642, %block_4109dd ]
  %1709 = phi i64 [ %1707, %block_.L_4109f3 ], [ %1674, %block_4109dd ]
  store i8 %1619, i8* %14, align 1
  store i8 %1624, i8* %21, align 1
  store i8 %1628, i8* %26, align 1
  store i8 %1630, i8* %29, align 1
  store i8 %1632, i8* %32, align 1
  store i8 %1637, i8* %38, align 1
  %.v179 = select i1 %1629, i64 14, i64 36
  %1710 = add i64 %1709, %.v179
  %1711 = add i64 %1710, 7
  store i64 %1711, i64* %3, align 8
  br i1 %1629, label %block_410a12, label %block_.L_410a28

block_410a12:                                     ; preds = %block_.L_410a04
  %1712 = load i32, i32* bitcast (%G_0x62d7e4_type* @G_0x62d7e4 to i32*), align 8
  %1713 = zext i32 %1712 to i64
  store i64 %1713, i64* %RAX.i66, align 8
  %1714 = add i64 %1708, -12
  %1715 = add i64 %1710, 10
  store i64 %1715, i64* %3, align 8
  %1716 = inttoptr i64 %1714 to i32*
  %1717 = load i32, i32* %1716, align 4
  %1718 = add i32 %1717, %1712
  %1719 = zext i32 %1718 to i64
  store i64 %1719, i64* %RAX.i66, align 8
  %1720 = icmp ult i32 %1718, %1712
  %1721 = icmp ult i32 %1718, %1717
  %1722 = or i1 %1720, %1721
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %14, align 1
  %1724 = and i32 %1718, 255
  %1725 = tail call i32 @llvm.ctpop.i32(i32 %1724)
  %1726 = trunc i32 %1725 to i8
  %1727 = and i8 %1726, 1
  %1728 = xor i8 %1727, 1
  store i8 %1728, i8* %21, align 1
  %1729 = xor i32 %1717, %1712
  %1730 = xor i32 %1729, %1718
  %1731 = lshr i32 %1730, 4
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  store i8 %1733, i8* %26, align 1
  %1734 = icmp eq i32 %1718, 0
  %1735 = zext i1 %1734 to i8
  store i8 %1735, i8* %29, align 1
  %1736 = lshr i32 %1718, 31
  %1737 = trunc i32 %1736 to i8
  store i8 %1737, i8* %32, align 1
  %1738 = lshr i32 %1712, 31
  %1739 = lshr i32 %1717, 31
  %1740 = xor i32 %1736, %1738
  %1741 = xor i32 %1736, %1739
  %1742 = add nuw nsw i32 %1740, %1741
  %1743 = icmp eq i32 %1742, 2
  %1744 = zext i1 %1743 to i8
  store i8 %1744, i8* %38, align 1
  store i32 %1718, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  %1745 = add i64 %1710, 39
  store i64 %1745, i64* %3, align 8
  br label %block_.L_410a39

block_.L_410a28:                                  ; preds = %block_.L_410a04
  %1746 = load i32, i32* bitcast (%G_0x62d7e8_type* @G_0x62d7e8 to i32*), align 8
  %1747 = zext i32 %1746 to i64
  store i64 %1747, i64* %RAX.i66, align 8
  %1748 = add i64 %1708, -12
  %1749 = add i64 %1710, 10
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to i32*
  %1751 = load i32, i32* %1750, align 4
  %1752 = sub i32 %1746, %1751
  %1753 = zext i32 %1752 to i64
  store i64 %1753, i64* %RAX.i66, align 8
  %1754 = icmp ult i32 %1746, %1751
  %1755 = zext i1 %1754 to i8
  store i8 %1755, i8* %14, align 1
  %1756 = and i32 %1752, 255
  %1757 = tail call i32 @llvm.ctpop.i32(i32 %1756)
  %1758 = trunc i32 %1757 to i8
  %1759 = and i8 %1758, 1
  %1760 = xor i8 %1759, 1
  store i8 %1760, i8* %21, align 1
  %1761 = xor i32 %1751, %1746
  %1762 = xor i32 %1761, %1752
  %1763 = lshr i32 %1762, 4
  %1764 = trunc i32 %1763 to i8
  %1765 = and i8 %1764, 1
  store i8 %1765, i8* %26, align 1
  %1766 = icmp eq i32 %1752, 0
  %1767 = zext i1 %1766 to i8
  store i8 %1767, i8* %29, align 1
  %1768 = lshr i32 %1752, 31
  %1769 = trunc i32 %1768 to i8
  store i8 %1769, i8* %32, align 1
  %1770 = lshr i32 %1746, 31
  %1771 = lshr i32 %1751, 31
  %1772 = xor i32 %1771, %1770
  %1773 = xor i32 %1768, %1770
  %1774 = add nuw nsw i32 %1773, %1772
  %1775 = icmp eq i32 %1774, 2
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %38, align 1
  %1777 = add i64 %1710, 17
  store i64 %1777, i64* %3, align 8
  store i32 %1752, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  br label %block_.L_410a39

block_.L_410a39:                                  ; preds = %block_.L_410a28, %block_410a12
  %1778 = phi i64 [ %1777, %block_.L_410a28 ], [ %1745, %block_410a12 ]
  store i64 ptrtoint (%G__0x428a1a_type* @G__0x428a1a to i64), i64* %RDI.i190, align 8
  %1779 = add i64 %1708, -96
  store i64 %1779, i64* %RSI.i, align 8
  %AL.i1389 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1389, align 1
  %1780 = add i64 %1778, -64905
  %1781 = add i64 %1778, 21
  %1782 = load i64, i64* %6, align 8
  %1783 = add i64 %1782, -8
  %1784 = inttoptr i64 %1783 to i64*
  store i64 %1781, i64* %1784, align 8
  store i64 %1783, i64* %6, align 8
  store i64 %1780, i64* %3, align 8
  %1785 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4109c0)
  %1786 = load i64, i64* %RBP.i, align 8
  %1787 = add i64 %1786, -192
  %1788 = load i32, i32* %EAX.i76, align 4
  %1789 = load i64, i64* %3, align 8
  %1790 = add i64 %1789, 6
  store i64 %1790, i64* %3, align 8
  %1791 = inttoptr i64 %1787 to i32*
  store i32 %1788, i32* %1791, align 4
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_410a54

block_.L_410a54:                                  ; preds = %block_.L_410a39, %block_.L_4109ab
  %1792 = phi i64 [ %1615, %block_.L_4109ab ], [ %.pre103, %block_.L_410a39 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_4109c0, %block_.L_4109ab ], [ %1785, %block_.L_410a39 ]
  store i64 ptrtoint (%G__0x429b3b_type* @G__0x429b3b to i64), i64* %RSI.i, align 8
  %1793 = load i64, i64* %RBP.i, align 8
  %1794 = add i64 %1793, -8
  %1795 = add i64 %1792, 14
  store i64 %1795, i64* %3, align 8
  %1796 = inttoptr i64 %1794 to i64*
  %1797 = load i64, i64* %1796, align 8
  %1798 = add i64 %1797, 6
  store i64 %1798, i64* %RAX.i66, align 8
  %1799 = icmp ugt i64 %1797, -7
  %1800 = zext i1 %1799 to i8
  store i8 %1800, i8* %14, align 1
  %1801 = trunc i64 %1798 to i32
  %1802 = and i32 %1801, 255
  %1803 = tail call i32 @llvm.ctpop.i32(i32 %1802)
  %1804 = trunc i32 %1803 to i8
  %1805 = and i8 %1804, 1
  %1806 = xor i8 %1805, 1
  store i8 %1806, i8* %21, align 1
  %1807 = xor i64 %1798, %1797
  %1808 = lshr i64 %1807, 4
  %1809 = trunc i64 %1808 to i8
  %1810 = and i8 %1809, 1
  store i8 %1810, i8* %26, align 1
  %1811 = icmp eq i64 %1798, 0
  %1812 = zext i1 %1811 to i8
  store i8 %1812, i8* %29, align 1
  %1813 = lshr i64 %1798, 63
  %1814 = trunc i64 %1813 to i8
  store i8 %1814, i8* %32, align 1
  %1815 = lshr i64 %1797, 63
  %1816 = xor i64 %1813, %1815
  %1817 = add nuw nsw i64 %1816, %1813
  %1818 = icmp eq i64 %1817, 2
  %1819 = zext i1 %1818 to i8
  store i8 %1819, i8* %38, align 1
  store i64 %1798, i64* %RDI.i190, align 8
  %1820 = add i64 %1792, -64612
  %1821 = add i64 %1792, 26
  %1822 = load i64, i64* %6, align 8
  %1823 = add i64 %1822, -8
  %1824 = inttoptr i64 %1823 to i64*
  store i64 %1821, i64* %1824, align 8
  store i64 %1823, i64* %6, align 8
  store i64 %1820, i64* %3, align 8
  %call2_410a69 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %1820, %struct.Memory* %MEMORY.14)
  %1825 = load i64, i64* %RAX.i66, align 8
  %1826 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1827 = trunc i64 %1825 to i32
  %1828 = and i32 %1827, 255
  %1829 = tail call i32 @llvm.ctpop.i32(i32 %1828)
  %1830 = trunc i32 %1829 to i8
  %1831 = and i8 %1830, 1
  %1832 = xor i8 %1831, 1
  store i8 %1832, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1833 = icmp eq i64 %1825, 0
  %1834 = zext i1 %1833 to i8
  store i8 %1834, i8* %29, align 1
  %1835 = lshr i64 %1825, 63
  %1836 = trunc i64 %1835 to i8
  store i8 %1836, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v180 = select i1 %1833, i64 143, i64 10
  %1837 = add i64 %1826, %.v180
  store i64 %1837, i64* %3, align 8
  br i1 %1833, label %block_.L_410afd, label %block_410a78

block_410a78:                                     ; preds = %block_.L_410a54
  %1838 = load i32, i32* bitcast (%G_0x886b84_type* @G_0x886b84 to i32*), align 8
  %1839 = add i32 %1838, -1
  %1840 = icmp eq i32 %1838, 0
  %1841 = zext i1 %1840 to i8
  store i8 %1841, i8* %14, align 1
  %1842 = and i32 %1839, 255
  %1843 = tail call i32 @llvm.ctpop.i32(i32 %1842)
  %1844 = trunc i32 %1843 to i8
  %1845 = and i8 %1844, 1
  %1846 = xor i8 %1845, 1
  store i8 %1846, i8* %21, align 1
  %1847 = xor i32 %1839, %1838
  %1848 = lshr i32 %1847, 4
  %1849 = trunc i32 %1848 to i8
  %1850 = and i8 %1849, 1
  store i8 %1850, i8* %26, align 1
  %1851 = icmp eq i32 %1839, 0
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %29, align 1
  %1853 = lshr i32 %1839, 31
  %1854 = trunc i32 %1853 to i8
  store i8 %1854, i8* %32, align 1
  %1855 = lshr i32 %1838, 31
  %1856 = xor i32 %1853, %1855
  %1857 = add nuw nsw i32 %1856, %1855
  %1858 = icmp eq i32 %1857, 2
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %38, align 1
  %.v181 = select i1 %1851, i64 14, i64 36
  %1860 = add i64 %1837, %.v181
  %1861 = add i64 %1860, 7
  store i64 %1861, i64* %3, align 8
  br i1 %1851, label %block_410a86, label %block_.L_410a9c

block_410a86:                                     ; preds = %block_410a78
  %1862 = load i32, i32* bitcast (%G_0x62d7dc_type* @G_0x62d7dc to i32*), align 8
  %1863 = zext i32 %1862 to i64
  store i64 %1863, i64* %RAX.i66, align 8
  %1864 = load i64, i64* %RBP.i, align 8
  %1865 = add i64 %1864, -12
  %1866 = add i64 %1860, 10
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1865 to i32*
  %1868 = load i32, i32* %1867, align 4
  %1869 = add i32 %1868, %1862
  %1870 = zext i32 %1869 to i64
  store i64 %1870, i64* %RAX.i66, align 8
  %1871 = icmp ult i32 %1869, %1862
  %1872 = icmp ult i32 %1869, %1868
  %1873 = or i1 %1871, %1872
  %1874 = zext i1 %1873 to i8
  store i8 %1874, i8* %14, align 1
  %1875 = and i32 %1869, 255
  %1876 = tail call i32 @llvm.ctpop.i32(i32 %1875)
  %1877 = trunc i32 %1876 to i8
  %1878 = and i8 %1877, 1
  %1879 = xor i8 %1878, 1
  store i8 %1879, i8* %21, align 1
  %1880 = xor i32 %1868, %1862
  %1881 = xor i32 %1880, %1869
  %1882 = lshr i32 %1881, 4
  %1883 = trunc i32 %1882 to i8
  %1884 = and i8 %1883, 1
  store i8 %1884, i8* %26, align 1
  %1885 = icmp eq i32 %1869, 0
  %1886 = zext i1 %1885 to i8
  store i8 %1886, i8* %29, align 1
  %1887 = lshr i32 %1869, 31
  %1888 = trunc i32 %1887 to i8
  store i8 %1888, i8* %32, align 1
  %1889 = lshr i32 %1862, 31
  %1890 = lshr i32 %1868, 31
  %1891 = xor i32 %1887, %1889
  %1892 = xor i32 %1887, %1890
  %1893 = add nuw nsw i32 %1891, %1892
  %1894 = icmp eq i32 %1893, 2
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %38, align 1
  store i32 %1869, i32* bitcast (%G_0x62d79c_type* @G_0x62d79c to i32*), align 8
  %1896 = add i64 %1860, 39
  store i64 %1896, i64* %3, align 8
  br label %block_.L_410aad

block_.L_410a9c:                                  ; preds = %block_410a78
  %1897 = load i32, i32* bitcast (%G_0x62d7e0_type* @G_0x62d7e0 to i32*), align 8
  %1898 = zext i32 %1897 to i64
  store i64 %1898, i64* %RAX.i66, align 8
  %1899 = load i64, i64* %RBP.i, align 8
  %1900 = add i64 %1899, -12
  %1901 = add i64 %1860, 10
  store i64 %1901, i64* %3, align 8
  %1902 = inttoptr i64 %1900 to i32*
  %1903 = load i32, i32* %1902, align 4
  %1904 = sub i32 %1897, %1903
  %1905 = zext i32 %1904 to i64
  store i64 %1905, i64* %RAX.i66, align 8
  %1906 = icmp ult i32 %1897, %1903
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %14, align 1
  %1908 = and i32 %1904, 255
  %1909 = tail call i32 @llvm.ctpop.i32(i32 %1908)
  %1910 = trunc i32 %1909 to i8
  %1911 = and i8 %1910, 1
  %1912 = xor i8 %1911, 1
  store i8 %1912, i8* %21, align 1
  %1913 = xor i32 %1903, %1897
  %1914 = xor i32 %1913, %1904
  %1915 = lshr i32 %1914, 4
  %1916 = trunc i32 %1915 to i8
  %1917 = and i8 %1916, 1
  store i8 %1917, i8* %26, align 1
  %1918 = icmp eq i32 %1904, 0
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %29, align 1
  %1920 = lshr i32 %1904, 31
  %1921 = trunc i32 %1920 to i8
  store i8 %1921, i8* %32, align 1
  %1922 = lshr i32 %1897, 31
  %1923 = lshr i32 %1903, 31
  %1924 = xor i32 %1923, %1922
  %1925 = xor i32 %1920, %1922
  %1926 = add nuw nsw i32 %1925, %1924
  %1927 = icmp eq i32 %1926, 2
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %38, align 1
  %1929 = add i64 %1860, 17
  store i64 %1929, i64* %3, align 8
  store i32 %1904, i32* bitcast (%G_0x62d7a0_type* @G_0x62d7a0 to i32*), align 8
  br label %block_.L_410aad

block_.L_410aad:                                  ; preds = %block_.L_410a9c, %block_410a86
  %1930 = phi i64 [ %1899, %block_.L_410a9c ], [ %1864, %block_410a86 ]
  %1931 = phi i64 [ %1929, %block_.L_410a9c ], [ %1896, %block_410a86 ]
  store i8 %1841, i8* %14, align 1
  store i8 %1846, i8* %21, align 1
  store i8 %1850, i8* %26, align 1
  store i8 %1852, i8* %29, align 1
  store i8 %1854, i8* %32, align 1
  store i8 %1859, i8* %38, align 1
  %.v182 = select i1 %1851, i64 14, i64 36
  %1932 = add i64 %1931, %.v182
  %1933 = add i64 %1932, 7
  store i64 %1933, i64* %3, align 8
  br i1 %1851, label %block_410abb, label %block_.L_410ad1

block_410abb:                                     ; preds = %block_.L_410aad
  %1934 = load i32, i32* bitcast (%G_0x62d7e4_type* @G_0x62d7e4 to i32*), align 8
  %1935 = zext i32 %1934 to i64
  store i64 %1935, i64* %RAX.i66, align 8
  %1936 = add i64 %1930, -12
  %1937 = add i64 %1932, 10
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i32*
  %1939 = load i32, i32* %1938, align 4
  %1940 = add i32 %1939, %1934
  %1941 = zext i32 %1940 to i64
  store i64 %1941, i64* %RAX.i66, align 8
  %1942 = icmp ult i32 %1940, %1934
  %1943 = icmp ult i32 %1940, %1939
  %1944 = or i1 %1942, %1943
  %1945 = zext i1 %1944 to i8
  store i8 %1945, i8* %14, align 1
  %1946 = and i32 %1940, 255
  %1947 = tail call i32 @llvm.ctpop.i32(i32 %1946)
  %1948 = trunc i32 %1947 to i8
  %1949 = and i8 %1948, 1
  %1950 = xor i8 %1949, 1
  store i8 %1950, i8* %21, align 1
  %1951 = xor i32 %1939, %1934
  %1952 = xor i32 %1951, %1940
  %1953 = lshr i32 %1952, 4
  %1954 = trunc i32 %1953 to i8
  %1955 = and i8 %1954, 1
  store i8 %1955, i8* %26, align 1
  %1956 = icmp eq i32 %1940, 0
  %1957 = zext i1 %1956 to i8
  store i8 %1957, i8* %29, align 1
  %1958 = lshr i32 %1940, 31
  %1959 = trunc i32 %1958 to i8
  store i8 %1959, i8* %32, align 1
  %1960 = lshr i32 %1934, 31
  %1961 = lshr i32 %1939, 31
  %1962 = xor i32 %1958, %1960
  %1963 = xor i32 %1958, %1961
  %1964 = add nuw nsw i32 %1962, %1963
  %1965 = icmp eq i32 %1964, 2
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %38, align 1
  store i32 %1940, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  %1967 = add i64 %1932, 39
  store i64 %1967, i64* %3, align 8
  br label %block_.L_410ae2

block_.L_410ad1:                                  ; preds = %block_.L_410aad
  %1968 = load i32, i32* bitcast (%G_0x62d7e8_type* @G_0x62d7e8 to i32*), align 8
  %1969 = zext i32 %1968 to i64
  store i64 %1969, i64* %RAX.i66, align 8
  %1970 = add i64 %1930, -12
  %1971 = add i64 %1932, 10
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1970 to i32*
  %1973 = load i32, i32* %1972, align 4
  %1974 = sub i32 %1968, %1973
  %1975 = zext i32 %1974 to i64
  store i64 %1975, i64* %RAX.i66, align 8
  %1976 = icmp ult i32 %1968, %1973
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %14, align 1
  %1978 = and i32 %1974, 255
  %1979 = tail call i32 @llvm.ctpop.i32(i32 %1978)
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  %1982 = xor i8 %1981, 1
  store i8 %1982, i8* %21, align 1
  %1983 = xor i32 %1973, %1968
  %1984 = xor i32 %1983, %1974
  %1985 = lshr i32 %1984, 4
  %1986 = trunc i32 %1985 to i8
  %1987 = and i8 %1986, 1
  store i8 %1987, i8* %26, align 1
  %1988 = icmp eq i32 %1974, 0
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %29, align 1
  %1990 = lshr i32 %1974, 31
  %1991 = trunc i32 %1990 to i8
  store i8 %1991, i8* %32, align 1
  %1992 = lshr i32 %1968, 31
  %1993 = lshr i32 %1973, 31
  %1994 = xor i32 %1993, %1992
  %1995 = xor i32 %1990, %1992
  %1996 = add nuw nsw i32 %1995, %1994
  %1997 = icmp eq i32 %1996, 2
  %1998 = zext i1 %1997 to i8
  store i8 %1998, i8* %38, align 1
  %1999 = add i64 %1932, 17
  store i64 %1999, i64* %3, align 8
  store i32 %1974, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  br label %block_.L_410ae2

block_.L_410ae2:                                  ; preds = %block_.L_410ad1, %block_410abb
  %2000 = phi i64 [ %1999, %block_.L_410ad1 ], [ %1967, %block_410abb ]
  store i64 ptrtoint (%G__0x428a37_type* @G__0x428a37 to i64), i64* %RDI.i190, align 8
  %2001 = add i64 %1930, -96
  store i64 %2001, i64* %RSI.i, align 8
  %AL.i1329 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1329, align 1
  %2002 = add i64 %2000, -65074
  %2003 = add i64 %2000, 21
  %2004 = load i64, i64* %6, align 8
  %2005 = add i64 %2004, -8
  %2006 = inttoptr i64 %2005 to i64*
  store i64 %2003, i64* %2006, align 8
  store i64 %2005, i64* %6, align 8
  store i64 %2002, i64* %3, align 8
  %2007 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_410a69)
  %2008 = load i64, i64* %RBP.i, align 8
  %2009 = add i64 %2008, -196
  %2010 = load i32, i32* %EAX.i76, align 4
  %2011 = load i64, i64* %3, align 8
  %2012 = add i64 %2011, 6
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2009 to i32*
  store i32 %2010, i32* %2013, align 4
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_410afd

block_.L_410afd:                                  ; preds = %block_.L_410ae2, %block_.L_410a54
  %2014 = phi i64 [ %1837, %block_.L_410a54 ], [ %.pre104, %block_.L_410ae2 ]
  %MEMORY.17 = phi %struct.Memory* [ %call2_410a69, %block_.L_410a54 ], [ %2007, %block_.L_410ae2 ]
  store i64 ptrtoint (%G__0x429b59_type* @G__0x429b59 to i64), i64* %RSI.i, align 8
  %2015 = load i64, i64* %RBP.i, align 8
  %2016 = add i64 %2015, -8
  %2017 = add i64 %2014, 14
  store i64 %2017, i64* %3, align 8
  %2018 = inttoptr i64 %2016 to i64*
  %2019 = load i64, i64* %2018, align 8
  %2020 = add i64 %2019, 6
  store i64 %2020, i64* %RAX.i66, align 8
  %2021 = icmp ugt i64 %2019, -7
  %2022 = zext i1 %2021 to i8
  store i8 %2022, i8* %14, align 1
  %2023 = trunc i64 %2020 to i32
  %2024 = and i32 %2023, 255
  %2025 = tail call i32 @llvm.ctpop.i32(i32 %2024)
  %2026 = trunc i32 %2025 to i8
  %2027 = and i8 %2026, 1
  %2028 = xor i8 %2027, 1
  store i8 %2028, i8* %21, align 1
  %2029 = xor i64 %2020, %2019
  %2030 = lshr i64 %2029, 4
  %2031 = trunc i64 %2030 to i8
  %2032 = and i8 %2031, 1
  store i8 %2032, i8* %26, align 1
  %2033 = icmp eq i64 %2020, 0
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %29, align 1
  %2035 = lshr i64 %2020, 63
  %2036 = trunc i64 %2035 to i8
  store i8 %2036, i8* %32, align 1
  %2037 = lshr i64 %2019, 63
  %2038 = xor i64 %2035, %2037
  %2039 = add nuw nsw i64 %2038, %2035
  %2040 = icmp eq i64 %2039, 2
  %2041 = zext i1 %2040 to i8
  store i8 %2041, i8* %38, align 1
  store i64 %2020, i64* %RDI.i190, align 8
  %2042 = add i64 %2014, -64781
  %2043 = add i64 %2014, 26
  %2044 = load i64, i64* %6, align 8
  %2045 = add i64 %2044, -8
  %2046 = inttoptr i64 %2045 to i64*
  store i64 %2043, i64* %2046, align 8
  store i64 %2045, i64* %6, align 8
  store i64 %2042, i64* %3, align 8
  %call2_410b12 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %2042, %struct.Memory* %MEMORY.17)
  %2047 = load i64, i64* %RAX.i66, align 8
  %2048 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2049 = trunc i64 %2047 to i32
  %2050 = and i32 %2049, 255
  %2051 = tail call i32 @llvm.ctpop.i32(i32 %2050)
  %2052 = trunc i32 %2051 to i8
  %2053 = and i8 %2052, 1
  %2054 = xor i8 %2053, 1
  store i8 %2054, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2055 = icmp eq i64 %2047, 0
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %29, align 1
  %2057 = lshr i64 %2047, 63
  %2058 = trunc i64 %2057 to i8
  store i8 %2058, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v183 = select i1 %2055, i64 90, i64 10
  %2059 = add i64 %2048, %.v183
  store i64 %2059, i64* %3, align 8
  br i1 %2055, label %block_.L_410b71, label %block_410b21

block_410b21:                                     ; preds = %block_.L_410afd
  %2060 = load i32, i32* bitcast (%G_0x886b84_type* @G_0x886b84 to i32*), align 8
  %2061 = add i32 %2060, -1
  %2062 = icmp eq i32 %2060, 0
  %2063 = zext i1 %2062 to i8
  store i8 %2063, i8* %14, align 1
  %2064 = and i32 %2061, 255
  %2065 = tail call i32 @llvm.ctpop.i32(i32 %2064)
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  %2068 = xor i8 %2067, 1
  store i8 %2068, i8* %21, align 1
  %2069 = xor i32 %2061, %2060
  %2070 = lshr i32 %2069, 4
  %2071 = trunc i32 %2070 to i8
  %2072 = and i8 %2071, 1
  store i8 %2072, i8* %26, align 1
  %2073 = icmp eq i32 %2061, 0
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %29, align 1
  %2075 = lshr i32 %2061, 31
  %2076 = trunc i32 %2075 to i8
  store i8 %2076, i8* %32, align 1
  %2077 = lshr i32 %2060, 31
  %2078 = xor i32 %2075, %2077
  %2079 = add nuw nsw i32 %2078, %2077
  %2080 = icmp eq i32 %2079, 2
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %38, align 1
  %.v184 = select i1 %2073, i64 14, i64 36
  %2082 = add i64 %2059, %.v184
  %2083 = add i64 %2082, 7
  store i64 %2083, i64* %3, align 8
  br i1 %2073, label %block_410b2f, label %block_.L_410b45

block_410b2f:                                     ; preds = %block_410b21
  %2084 = load i32, i32* bitcast (%G_0x62d7e4_type* @G_0x62d7e4 to i32*), align 8
  %2085 = zext i32 %2084 to i64
  store i64 %2085, i64* %RAX.i66, align 8
  %2086 = load i64, i64* %RBP.i, align 8
  %2087 = add i64 %2086, -12
  %2088 = add i64 %2082, 10
  store i64 %2088, i64* %3, align 8
  %2089 = inttoptr i64 %2087 to i32*
  %2090 = load i32, i32* %2089, align 4
  %2091 = add i32 %2090, %2084
  %2092 = zext i32 %2091 to i64
  store i64 %2092, i64* %RAX.i66, align 8
  %2093 = icmp ult i32 %2091, %2084
  %2094 = icmp ult i32 %2091, %2090
  %2095 = or i1 %2093, %2094
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %14, align 1
  %2097 = and i32 %2091, 255
  %2098 = tail call i32 @llvm.ctpop.i32(i32 %2097)
  %2099 = trunc i32 %2098 to i8
  %2100 = and i8 %2099, 1
  %2101 = xor i8 %2100, 1
  store i8 %2101, i8* %21, align 1
  %2102 = xor i32 %2090, %2084
  %2103 = xor i32 %2102, %2091
  %2104 = lshr i32 %2103, 4
  %2105 = trunc i32 %2104 to i8
  %2106 = and i8 %2105, 1
  store i8 %2106, i8* %26, align 1
  %2107 = icmp eq i32 %2091, 0
  %2108 = zext i1 %2107 to i8
  store i8 %2108, i8* %29, align 1
  %2109 = lshr i32 %2091, 31
  %2110 = trunc i32 %2109 to i8
  store i8 %2110, i8* %32, align 1
  %2111 = lshr i32 %2084, 31
  %2112 = lshr i32 %2090, 31
  %2113 = xor i32 %2109, %2111
  %2114 = xor i32 %2109, %2112
  %2115 = add nuw nsw i32 %2113, %2114
  %2116 = icmp eq i32 %2115, 2
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %38, align 1
  store i32 %2091, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  %2118 = add i64 %2082, 39
  store i64 %2118, i64* %3, align 8
  br label %block_.L_410b56

block_.L_410b45:                                  ; preds = %block_410b21
  %2119 = load i32, i32* bitcast (%G_0x62d7e8_type* @G_0x62d7e8 to i32*), align 8
  %2120 = zext i32 %2119 to i64
  store i64 %2120, i64* %RAX.i66, align 8
  %2121 = load i64, i64* %RBP.i, align 8
  %2122 = add i64 %2121, -12
  %2123 = add i64 %2082, 10
  store i64 %2123, i64* %3, align 8
  %2124 = inttoptr i64 %2122 to i32*
  %2125 = load i32, i32* %2124, align 4
  %2126 = sub i32 %2119, %2125
  %2127 = zext i32 %2126 to i64
  store i64 %2127, i64* %RAX.i66, align 8
  %2128 = icmp ult i32 %2119, %2125
  %2129 = zext i1 %2128 to i8
  store i8 %2129, i8* %14, align 1
  %2130 = and i32 %2126, 255
  %2131 = tail call i32 @llvm.ctpop.i32(i32 %2130)
  %2132 = trunc i32 %2131 to i8
  %2133 = and i8 %2132, 1
  %2134 = xor i8 %2133, 1
  store i8 %2134, i8* %21, align 1
  %2135 = xor i32 %2125, %2119
  %2136 = xor i32 %2135, %2126
  %2137 = lshr i32 %2136, 4
  %2138 = trunc i32 %2137 to i8
  %2139 = and i8 %2138, 1
  store i8 %2139, i8* %26, align 1
  %2140 = icmp eq i32 %2126, 0
  %2141 = zext i1 %2140 to i8
  store i8 %2141, i8* %29, align 1
  %2142 = lshr i32 %2126, 31
  %2143 = trunc i32 %2142 to i8
  store i8 %2143, i8* %32, align 1
  %2144 = lshr i32 %2119, 31
  %2145 = lshr i32 %2125, 31
  %2146 = xor i32 %2145, %2144
  %2147 = xor i32 %2142, %2144
  %2148 = add nuw nsw i32 %2147, %2146
  %2149 = icmp eq i32 %2148, 2
  %2150 = zext i1 %2149 to i8
  store i8 %2150, i8* %38, align 1
  %2151 = add i64 %2082, 17
  store i64 %2151, i64* %3, align 8
  store i32 %2126, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  br label %block_.L_410b56

block_.L_410b56:                                  ; preds = %block_.L_410b45, %block_410b2f
  %2152 = phi i64 [ %2121, %block_.L_410b45 ], [ %2086, %block_410b2f ]
  %2153 = phi i64 [ %2151, %block_.L_410b45 ], [ %2118, %block_410b2f ]
  store i64 ptrtoint (%G__0x428a52_type* @G__0x428a52 to i64), i64* %RDI.i190, align 8
  %2154 = add i64 %2152, -96
  store i64 %2154, i64* %RSI.i, align 8
  %AL.i1286 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1286, align 1
  %2155 = add i64 %2153, -65190
  %2156 = add i64 %2153, 21
  %2157 = load i64, i64* %6, align 8
  %2158 = add i64 %2157, -8
  %2159 = inttoptr i64 %2158 to i64*
  store i64 %2156, i64* %2159, align 8
  store i64 %2158, i64* %6, align 8
  store i64 %2155, i64* %3, align 8
  %2160 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_410b12)
  %2161 = load i64, i64* %RBP.i, align 8
  %2162 = add i64 %2161, -200
  %2163 = load i32, i32* %EAX.i76, align 4
  %2164 = load i64, i64* %3, align 8
  %2165 = add i64 %2164, 6
  store i64 %2165, i64* %3, align 8
  %2166 = inttoptr i64 %2162 to i32*
  store i32 %2163, i32* %2166, align 4
  %.pre105 = load i64, i64* %3, align 8
  br label %block_.L_410b71

block_.L_410b71:                                  ; preds = %block_.L_410b56, %block_.L_410afd
  %2167 = phi i64 [ %2059, %block_.L_410afd ], [ %.pre105, %block_.L_410b56 ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_410b12, %block_.L_410afd ], [ %2160, %block_.L_410b56 ]
  store i64 ptrtoint (%G__0x42877b_type* @G__0x42877b to i64), i64* %RSI.i, align 8
  %2168 = load i64, i64* %RBP.i, align 8
  %2169 = add i64 %2168, -8
  %2170 = add i64 %2167, 14
  store i64 %2170, i64* %3, align 8
  %2171 = inttoptr i64 %2169 to i64*
  %2172 = load i64, i64* %2171, align 8
  %2173 = add i64 %2172, 6
  store i64 %2173, i64* %RAX.i66, align 8
  %2174 = icmp ugt i64 %2172, -7
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %14, align 1
  %2176 = trunc i64 %2173 to i32
  %2177 = and i32 %2176, 255
  %2178 = tail call i32 @llvm.ctpop.i32(i32 %2177)
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  %2181 = xor i8 %2180, 1
  store i8 %2181, i8* %21, align 1
  %2182 = xor i64 %2173, %2172
  %2183 = lshr i64 %2182, 4
  %2184 = trunc i64 %2183 to i8
  %2185 = and i8 %2184, 1
  store i8 %2185, i8* %26, align 1
  %2186 = icmp eq i64 %2173, 0
  %2187 = zext i1 %2186 to i8
  store i8 %2187, i8* %29, align 1
  %2188 = lshr i64 %2173, 63
  %2189 = trunc i64 %2188 to i8
  store i8 %2189, i8* %32, align 1
  %2190 = lshr i64 %2172, 63
  %2191 = xor i64 %2188, %2190
  %2192 = add nuw nsw i64 %2191, %2188
  %2193 = icmp eq i64 %2192, 2
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %38, align 1
  store i64 %2173, i64* %RDI.i190, align 8
  %2195 = add i64 %2167, -64897
  %2196 = add i64 %2167, 26
  %2197 = load i64, i64* %6, align 8
  %2198 = add i64 %2197, -8
  %2199 = inttoptr i64 %2198 to i64*
  store i64 %2196, i64* %2199, align 8
  store i64 %2198, i64* %6, align 8
  store i64 %2195, i64* %3, align 8
  %call2_410b86 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %2195, %struct.Memory* %MEMORY.19)
  %2200 = load i64, i64* %RAX.i66, align 8
  %2201 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2202 = trunc i64 %2200 to i32
  %2203 = and i32 %2202, 255
  %2204 = tail call i32 @llvm.ctpop.i32(i32 %2203)
  %2205 = trunc i32 %2204 to i8
  %2206 = and i8 %2205, 1
  %2207 = xor i8 %2206, 1
  store i8 %2207, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2208 = icmp eq i64 %2200, 0
  %2209 = zext i1 %2208 to i8
  store i8 %2209, i8* %29, align 1
  %2210 = lshr i64 %2200, 63
  %2211 = trunc i64 %2210 to i8
  store i8 %2211, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v185 = select i1 %2208, i64 177, i64 10
  %2212 = add i64 %2201, %.v185
  store i64 %2212, i64* %3, align 8
  br i1 %2208, label %block_.L_410c3c, label %block_410b95

block_410b95:                                     ; preds = %block_.L_410b71
  %2213 = load i32, i32* bitcast (%G_0x886b84_type* @G_0x886b84 to i32*), align 8
  %2214 = add i32 %2213, -1
  %2215 = icmp eq i32 %2213, 0
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %14, align 1
  %2217 = and i32 %2214, 255
  %2218 = tail call i32 @llvm.ctpop.i32(i32 %2217)
  %2219 = trunc i32 %2218 to i8
  %2220 = and i8 %2219, 1
  %2221 = xor i8 %2220, 1
  store i8 %2221, i8* %21, align 1
  %2222 = xor i32 %2214, %2213
  %2223 = lshr i32 %2222, 4
  %2224 = trunc i32 %2223 to i8
  %2225 = and i8 %2224, 1
  store i8 %2225, i8* %26, align 1
  %2226 = icmp eq i32 %2214, 0
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %29, align 1
  %2228 = lshr i32 %2214, 31
  %2229 = trunc i32 %2228 to i8
  store i8 %2229, i8* %32, align 1
  %2230 = lshr i32 %2213, 31
  %2231 = xor i32 %2228, %2230
  %2232 = add nuw nsw i32 %2231, %2230
  %2233 = icmp eq i32 %2232, 2
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %38, align 1
  %.v186 = select i1 %2226, i64 14, i64 36
  %2235 = add i64 %2212, %.v186
  %2236 = add i64 %2235, 7
  store i64 %2236, i64* %3, align 8
  br i1 %2226, label %block_410ba3, label %block_.L_410bb9

block_410ba3:                                     ; preds = %block_410b95
  %2237 = load i32, i32* bitcast (%G_0x62d7c4_type* @G_0x62d7c4 to i32*), align 8
  %2238 = zext i32 %2237 to i64
  store i64 %2238, i64* %RAX.i66, align 8
  %2239 = load i64, i64* %RBP.i, align 8
  %2240 = add i64 %2239, -12
  %2241 = add i64 %2235, 10
  store i64 %2241, i64* %3, align 8
  %2242 = inttoptr i64 %2240 to i32*
  %2243 = load i32, i32* %2242, align 4
  %2244 = add i32 %2243, %2237
  %2245 = zext i32 %2244 to i64
  store i64 %2245, i64* %RAX.i66, align 8
  %2246 = icmp ult i32 %2244, %2237
  %2247 = icmp ult i32 %2244, %2243
  %2248 = or i1 %2246, %2247
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %14, align 1
  %2250 = and i32 %2244, 255
  %2251 = tail call i32 @llvm.ctpop.i32(i32 %2250)
  %2252 = trunc i32 %2251 to i8
  %2253 = and i8 %2252, 1
  %2254 = xor i8 %2253, 1
  store i8 %2254, i8* %21, align 1
  %2255 = xor i32 %2243, %2237
  %2256 = xor i32 %2255, %2244
  %2257 = lshr i32 %2256, 4
  %2258 = trunc i32 %2257 to i8
  %2259 = and i8 %2258, 1
  store i8 %2259, i8* %26, align 1
  %2260 = icmp eq i32 %2244, 0
  %2261 = zext i1 %2260 to i8
  store i8 %2261, i8* %29, align 1
  %2262 = lshr i32 %2244, 31
  %2263 = trunc i32 %2262 to i8
  store i8 %2263, i8* %32, align 1
  %2264 = lshr i32 %2237, 31
  %2265 = lshr i32 %2243, 31
  %2266 = xor i32 %2262, %2264
  %2267 = xor i32 %2262, %2265
  %2268 = add nuw nsw i32 %2266, %2267
  %2269 = icmp eq i32 %2268, 2
  %2270 = zext i1 %2269 to i8
  store i8 %2270, i8* %38, align 1
  store i32 %2244, i32* bitcast (%G_0x62d784_type* @G_0x62d784 to i32*), align 8
  %2271 = add i64 %2235, 39
  store i64 %2271, i64* %3, align 8
  br label %block_.L_410bca

block_.L_410bb9:                                  ; preds = %block_410b95
  %2272 = load i32, i32* bitcast (%G_0x62d7c8_type* @G_0x62d7c8 to i32*), align 8
  %2273 = zext i32 %2272 to i64
  store i64 %2273, i64* %RAX.i66, align 8
  %2274 = load i64, i64* %RBP.i, align 8
  %2275 = add i64 %2274, -12
  %2276 = add i64 %2235, 10
  store i64 %2276, i64* %3, align 8
  %2277 = inttoptr i64 %2275 to i32*
  %2278 = load i32, i32* %2277, align 4
  %2279 = sub i32 %2272, %2278
  %2280 = zext i32 %2279 to i64
  store i64 %2280, i64* %RAX.i66, align 8
  %2281 = icmp ult i32 %2272, %2278
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %14, align 1
  %2283 = and i32 %2279, 255
  %2284 = tail call i32 @llvm.ctpop.i32(i32 %2283)
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  %2287 = xor i8 %2286, 1
  store i8 %2287, i8* %21, align 1
  %2288 = xor i32 %2278, %2272
  %2289 = xor i32 %2288, %2279
  %2290 = lshr i32 %2289, 4
  %2291 = trunc i32 %2290 to i8
  %2292 = and i8 %2291, 1
  store i8 %2292, i8* %26, align 1
  %2293 = icmp eq i32 %2279, 0
  %2294 = zext i1 %2293 to i8
  store i8 %2294, i8* %29, align 1
  %2295 = lshr i32 %2279, 31
  %2296 = trunc i32 %2295 to i8
  store i8 %2296, i8* %32, align 1
  %2297 = lshr i32 %2272, 31
  %2298 = lshr i32 %2278, 31
  %2299 = xor i32 %2298, %2297
  %2300 = xor i32 %2295, %2297
  %2301 = add nuw nsw i32 %2300, %2299
  %2302 = icmp eq i32 %2301, 2
  %2303 = zext i1 %2302 to i8
  store i8 %2303, i8* %38, align 1
  %2304 = add i64 %2235, 17
  store i64 %2304, i64* %3, align 8
  store i32 %2279, i32* bitcast (%G_0x62d788_type* @G_0x62d788 to i32*), align 8
  br label %block_.L_410bca

block_.L_410bca:                                  ; preds = %block_.L_410bb9, %block_410ba3
  %2305 = phi i64 [ %2274, %block_.L_410bb9 ], [ %2239, %block_410ba3 ]
  %2306 = phi i64 [ %2304, %block_.L_410bb9 ], [ %2271, %block_410ba3 ]
  store i8 %2216, i8* %14, align 1
  store i8 %2221, i8* %21, align 1
  store i8 %2225, i8* %26, align 1
  store i8 %2227, i8* %29, align 1
  store i8 %2229, i8* %32, align 1
  store i8 %2234, i8* %38, align 1
  %.v187 = select i1 %2226, i64 14, i64 53
  %2307 = add i64 %2306, %.v187
  %2308 = add i64 %2307, 7
  store i64 %2308, i64* %3, align 8
  br i1 %2226, label %block_410bd8, label %block_.L_410bff

block_410bd8:                                     ; preds = %block_.L_410bca
  %2309 = load i32, i32* bitcast (%G_0x62d7e4_type* @G_0x62d7e4 to i32*), align 8
  %2310 = zext i32 %2309 to i64
  store i64 %2310, i64* %RAX.i66, align 8
  %2311 = add i64 %2305, -12
  %2312 = add i64 %2307, 10
  store i64 %2312, i64* %3, align 8
  %2313 = inttoptr i64 %2311 to i32*
  %2314 = load i32, i32* %2313, align 4
  %2315 = add i32 %2314, %2309
  %2316 = icmp ult i32 %2315, %2309
  %2317 = icmp ult i32 %2315, %2314
  %2318 = or i1 %2316, %2317
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %14, align 1
  %2320 = and i32 %2315, 255
  %2321 = tail call i32 @llvm.ctpop.i32(i32 %2320)
  %2322 = trunc i32 %2321 to i8
  %2323 = and i8 %2322, 1
  %2324 = xor i8 %2323, 1
  store i8 %2324, i8* %21, align 1
  %2325 = xor i32 %2314, %2309
  %2326 = xor i32 %2325, %2315
  %2327 = lshr i32 %2326, 4
  %2328 = trunc i32 %2327 to i8
  %2329 = and i8 %2328, 1
  store i8 %2329, i8* %26, align 1
  %2330 = icmp eq i32 %2315, 0
  %2331 = zext i1 %2330 to i8
  store i8 %2331, i8* %29, align 1
  %2332 = lshr i32 %2315, 31
  %2333 = trunc i32 %2332 to i8
  store i8 %2333, i8* %32, align 1
  %2334 = lshr i32 %2309, 31
  %2335 = lshr i32 %2314, 31
  %2336 = xor i32 %2332, %2334
  %2337 = xor i32 %2332, %2335
  %2338 = add nuw nsw i32 %2336, %2337
  %2339 = icmp eq i32 %2338, 2
  %2340 = zext i1 %2339 to i8
  store i8 %2340, i8* %38, align 1
  store i32 %2315, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  %2341 = load i32, i32* bitcast (%G_0x62d7ec_type* @G_0x62d7ec to i32*), align 8
  %2342 = zext i32 %2341 to i64
  store i64 %2342, i64* %RAX.i66, align 8
  %2343 = add i64 %2307, 27
  store i64 %2343, i64* %3, align 8
  %2344 = load i32, i32* %2313, align 4
  %2345 = add i32 %2344, %2341
  %2346 = zext i32 %2345 to i64
  store i64 %2346, i64* %RAX.i66, align 8
  %2347 = icmp ult i32 %2345, %2341
  %2348 = icmp ult i32 %2345, %2344
  %2349 = or i1 %2347, %2348
  %2350 = zext i1 %2349 to i8
  store i8 %2350, i8* %14, align 1
  %2351 = and i32 %2345, 255
  %2352 = tail call i32 @llvm.ctpop.i32(i32 %2351)
  %2353 = trunc i32 %2352 to i8
  %2354 = and i8 %2353, 1
  %2355 = xor i8 %2354, 1
  store i8 %2355, i8* %21, align 1
  %2356 = xor i32 %2344, %2341
  %2357 = xor i32 %2356, %2345
  %2358 = lshr i32 %2357, 4
  %2359 = trunc i32 %2358 to i8
  %2360 = and i8 %2359, 1
  store i8 %2360, i8* %26, align 1
  %2361 = icmp eq i32 %2345, 0
  %2362 = zext i1 %2361 to i8
  store i8 %2362, i8* %29, align 1
  %2363 = lshr i32 %2345, 31
  %2364 = trunc i32 %2363 to i8
  store i8 %2364, i8* %32, align 1
  %2365 = lshr i32 %2341, 31
  %2366 = lshr i32 %2344, 31
  %2367 = xor i32 %2363, %2365
  %2368 = xor i32 %2363, %2366
  %2369 = add nuw nsw i32 %2367, %2368
  %2370 = icmp eq i32 %2369, 2
  %2371 = zext i1 %2370 to i8
  store i8 %2371, i8* %38, align 1
  store i32 %2345, i32* bitcast (%G_0x62d7ac_type* @G_0x62d7ac to i32*), align 8
  %2372 = add i64 %2307, 73
  store i64 %2372, i64* %3, align 8
  br label %block_.L_410c21

block_.L_410bff:                                  ; preds = %block_.L_410bca
  %2373 = load i32, i32* bitcast (%G_0x62d7e8_type* @G_0x62d7e8 to i32*), align 8
  %2374 = zext i32 %2373 to i64
  store i64 %2374, i64* %RAX.i66, align 8
  %2375 = add i64 %2305, -12
  %2376 = add i64 %2307, 10
  store i64 %2376, i64* %3, align 8
  %2377 = inttoptr i64 %2375 to i32*
  %2378 = load i32, i32* %2377, align 4
  %2379 = sub i32 %2373, %2378
  %2380 = icmp ult i32 %2373, %2378
  %2381 = zext i1 %2380 to i8
  store i8 %2381, i8* %14, align 1
  %2382 = and i32 %2379, 255
  %2383 = tail call i32 @llvm.ctpop.i32(i32 %2382)
  %2384 = trunc i32 %2383 to i8
  %2385 = and i8 %2384, 1
  %2386 = xor i8 %2385, 1
  store i8 %2386, i8* %21, align 1
  %2387 = xor i32 %2378, %2373
  %2388 = xor i32 %2387, %2379
  %2389 = lshr i32 %2388, 4
  %2390 = trunc i32 %2389 to i8
  %2391 = and i8 %2390, 1
  store i8 %2391, i8* %26, align 1
  %2392 = icmp eq i32 %2379, 0
  %2393 = zext i1 %2392 to i8
  store i8 %2393, i8* %29, align 1
  %2394 = lshr i32 %2379, 31
  %2395 = trunc i32 %2394 to i8
  store i8 %2395, i8* %32, align 1
  %2396 = lshr i32 %2373, 31
  %2397 = lshr i32 %2378, 31
  %2398 = xor i32 %2397, %2396
  %2399 = xor i32 %2394, %2396
  %2400 = add nuw nsw i32 %2399, %2398
  %2401 = icmp eq i32 %2400, 2
  %2402 = zext i1 %2401 to i8
  store i8 %2402, i8* %38, align 1
  store i32 %2379, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  %2403 = load i32, i32* bitcast (%G_0x62d7f0_type* @G_0x62d7f0 to i32*), align 8
  %2404 = zext i32 %2403 to i64
  store i64 %2404, i64* %RAX.i66, align 8
  %2405 = add i64 %2307, 27
  store i64 %2405, i64* %3, align 8
  %2406 = load i32, i32* %2377, align 4
  %2407 = sub i32 %2403, %2406
  %2408 = zext i32 %2407 to i64
  store i64 %2408, i64* %RAX.i66, align 8
  %2409 = icmp ult i32 %2403, %2406
  %2410 = zext i1 %2409 to i8
  store i8 %2410, i8* %14, align 1
  %2411 = and i32 %2407, 255
  %2412 = tail call i32 @llvm.ctpop.i32(i32 %2411)
  %2413 = trunc i32 %2412 to i8
  %2414 = and i8 %2413, 1
  %2415 = xor i8 %2414, 1
  store i8 %2415, i8* %21, align 1
  %2416 = xor i32 %2406, %2403
  %2417 = xor i32 %2416, %2407
  %2418 = lshr i32 %2417, 4
  %2419 = trunc i32 %2418 to i8
  %2420 = and i8 %2419, 1
  store i8 %2420, i8* %26, align 1
  %2421 = icmp eq i32 %2407, 0
  %2422 = zext i1 %2421 to i8
  store i8 %2422, i8* %29, align 1
  %2423 = lshr i32 %2407, 31
  %2424 = trunc i32 %2423 to i8
  store i8 %2424, i8* %32, align 1
  %2425 = lshr i32 %2403, 31
  %2426 = lshr i32 %2406, 31
  %2427 = xor i32 %2426, %2425
  %2428 = xor i32 %2423, %2425
  %2429 = add nuw nsw i32 %2428, %2427
  %2430 = icmp eq i32 %2429, 2
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %38, align 1
  %2432 = add i64 %2307, 34
  store i64 %2432, i64* %3, align 8
  store i32 %2407, i32* bitcast (%G_0x62d7b0_type* @G_0x62d7b0 to i32*), align 8
  br label %block_.L_410c21

block_.L_410c21:                                  ; preds = %block_.L_410bff, %block_410bd8
  %2433 = phi i64 [ %2432, %block_.L_410bff ], [ %2372, %block_410bd8 ]
  store i64 ptrtoint (%G__0x428a6e_type* @G__0x428a6e to i64), i64* %RDI.i190, align 8
  %2434 = add i64 %2305, -96
  store i64 %2434, i64* %RSI.i, align 8
  %AL.i1212 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1212, align 1
  %2435 = add i64 %2433, -65393
  %2436 = add i64 %2433, 21
  %2437 = load i64, i64* %6, align 8
  %2438 = add i64 %2437, -8
  %2439 = inttoptr i64 %2438 to i64*
  store i64 %2436, i64* %2439, align 8
  store i64 %2438, i64* %6, align 8
  store i64 %2435, i64* %3, align 8
  %2440 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_410b86)
  %2441 = load i64, i64* %RBP.i, align 8
  %2442 = add i64 %2441, -204
  %2443 = load i32, i32* %EAX.i76, align 4
  %2444 = load i64, i64* %3, align 8
  %2445 = add i64 %2444, 6
  store i64 %2445, i64* %3, align 8
  %2446 = inttoptr i64 %2442 to i32*
  store i32 %2443, i32* %2446, align 4
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_410c3c

block_.L_410c3c:                                  ; preds = %block_.L_410c21, %block_.L_410b71
  %2447 = phi i64 [ %2212, %block_.L_410b71 ], [ %.pre106, %block_.L_410c21 ]
  %MEMORY.22 = phi %struct.Memory* [ %call2_410b86, %block_.L_410b71 ], [ %2440, %block_.L_410c21 ]
  store i64 ptrtoint (%G__0x429aeb_type* @G__0x429aeb to i64), i64* %RSI.i, align 8
  %2448 = load i64, i64* %RBP.i, align 8
  %2449 = add i64 %2448, -8
  %2450 = add i64 %2447, 14
  store i64 %2450, i64* %3, align 8
  %2451 = inttoptr i64 %2449 to i64*
  %2452 = load i64, i64* %2451, align 8
  %2453 = add i64 %2452, 6
  store i64 %2453, i64* %RAX.i66, align 8
  %2454 = icmp ugt i64 %2452, -7
  %2455 = zext i1 %2454 to i8
  store i8 %2455, i8* %14, align 1
  %2456 = trunc i64 %2453 to i32
  %2457 = and i32 %2456, 255
  %2458 = tail call i32 @llvm.ctpop.i32(i32 %2457)
  %2459 = trunc i32 %2458 to i8
  %2460 = and i8 %2459, 1
  %2461 = xor i8 %2460, 1
  store i8 %2461, i8* %21, align 1
  %2462 = xor i64 %2453, %2452
  %2463 = lshr i64 %2462, 4
  %2464 = trunc i64 %2463 to i8
  %2465 = and i8 %2464, 1
  store i8 %2465, i8* %26, align 1
  %2466 = icmp eq i64 %2453, 0
  %2467 = zext i1 %2466 to i8
  store i8 %2467, i8* %29, align 1
  %2468 = lshr i64 %2453, 63
  %2469 = trunc i64 %2468 to i8
  store i8 %2469, i8* %32, align 1
  %2470 = lshr i64 %2452, 63
  %2471 = xor i64 %2468, %2470
  %2472 = add nuw nsw i64 %2471, %2468
  %2473 = icmp eq i64 %2472, 2
  %2474 = zext i1 %2473 to i8
  store i8 %2474, i8* %38, align 1
  store i64 %2453, i64* %RDI.i190, align 8
  %2475 = add i64 %2447, -65100
  %2476 = add i64 %2447, 26
  %2477 = load i64, i64* %6, align 8
  %2478 = add i64 %2477, -8
  %2479 = inttoptr i64 %2478 to i64*
  store i64 %2476, i64* %2479, align 8
  store i64 %2478, i64* %6, align 8
  store i64 %2475, i64* %3, align 8
  %call2_410c51 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %2475, %struct.Memory* %MEMORY.22)
  %2480 = load i64, i64* %RAX.i66, align 8
  %2481 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2482 = trunc i64 %2480 to i32
  %2483 = and i32 %2482, 255
  %2484 = tail call i32 @llvm.ctpop.i32(i32 %2483)
  %2485 = trunc i32 %2484 to i8
  %2486 = and i8 %2485, 1
  %2487 = xor i8 %2486, 1
  store i8 %2487, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2488 = icmp eq i64 %2480, 0
  %2489 = zext i1 %2488 to i8
  store i8 %2489, i8* %29, align 1
  %2490 = lshr i64 %2480, 63
  %2491 = trunc i64 %2490 to i8
  store i8 %2491, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v188 = select i1 %2488, i64 158, i64 10
  %2492 = add i64 %2481, %.v188
  store i64 %2492, i64* %3, align 8
  br i1 %2488, label %block_.L_410cf4, label %block_410c60

block_410c60:                                     ; preds = %block_.L_410c3c
  %2493 = load i32, i32* bitcast (%G_0x886b84_type* @G_0x886b84 to i32*), align 8
  %2494 = add i32 %2493, -1
  %2495 = icmp eq i32 %2493, 0
  %2496 = zext i1 %2495 to i8
  store i8 %2496, i8* %14, align 1
  %2497 = and i32 %2494, 255
  %2498 = tail call i32 @llvm.ctpop.i32(i32 %2497)
  %2499 = trunc i32 %2498 to i8
  %2500 = and i8 %2499, 1
  %2501 = xor i8 %2500, 1
  store i8 %2501, i8* %21, align 1
  %2502 = xor i32 %2494, %2493
  %2503 = lshr i32 %2502, 4
  %2504 = trunc i32 %2503 to i8
  %2505 = and i8 %2504, 1
  store i8 %2505, i8* %26, align 1
  %2506 = icmp eq i32 %2494, 0
  %2507 = zext i1 %2506 to i8
  store i8 %2507, i8* %29, align 1
  %2508 = lshr i32 %2494, 31
  %2509 = trunc i32 %2508 to i8
  store i8 %2509, i8* %32, align 1
  %2510 = lshr i32 %2493, 31
  %2511 = xor i32 %2508, %2510
  %2512 = add nuw nsw i32 %2511, %2510
  %2513 = icmp eq i32 %2512, 2
  %2514 = zext i1 %2513 to i8
  store i8 %2514, i8* %38, align 1
  %.v189 = select i1 %2506, i64 14, i64 70
  %2515 = add i64 %2492, %.v189
  %2516 = add i64 %2515, 7
  store i64 %2516, i64* %3, align 8
  br i1 %2506, label %block_410c6e, label %block_.L_410ca6

block_410c6e:                                     ; preds = %block_410c60
  %2517 = load i32, i32* bitcast (%G_0x62d7c4_type* @G_0x62d7c4 to i32*), align 8
  %2518 = zext i32 %2517 to i64
  store i64 %2518, i64* %RAX.i66, align 8
  %2519 = load i64, i64* %RBP.i, align 8
  %2520 = add i64 %2519, -12
  %2521 = add i64 %2515, 10
  store i64 %2521, i64* %3, align 8
  %2522 = inttoptr i64 %2520 to i32*
  %2523 = load i32, i32* %2522, align 4
  %2524 = add i32 %2523, %2517
  %2525 = icmp ult i32 %2524, %2517
  %2526 = icmp ult i32 %2524, %2523
  %2527 = or i1 %2525, %2526
  %2528 = zext i1 %2527 to i8
  store i8 %2528, i8* %14, align 1
  %2529 = and i32 %2524, 255
  %2530 = tail call i32 @llvm.ctpop.i32(i32 %2529)
  %2531 = trunc i32 %2530 to i8
  %2532 = and i8 %2531, 1
  %2533 = xor i8 %2532, 1
  store i8 %2533, i8* %21, align 1
  %2534 = xor i32 %2523, %2517
  %2535 = xor i32 %2534, %2524
  %2536 = lshr i32 %2535, 4
  %2537 = trunc i32 %2536 to i8
  %2538 = and i8 %2537, 1
  store i8 %2538, i8* %26, align 1
  %2539 = icmp eq i32 %2524, 0
  %2540 = zext i1 %2539 to i8
  store i8 %2540, i8* %29, align 1
  %2541 = lshr i32 %2524, 31
  %2542 = trunc i32 %2541 to i8
  store i8 %2542, i8* %32, align 1
  %2543 = lshr i32 %2517, 31
  %2544 = lshr i32 %2523, 31
  %2545 = xor i32 %2541, %2543
  %2546 = xor i32 %2541, %2544
  %2547 = add nuw nsw i32 %2545, %2546
  %2548 = icmp eq i32 %2547, 2
  %2549 = zext i1 %2548 to i8
  store i8 %2549, i8* %38, align 1
  store i32 %2524, i32* bitcast (%G_0x62d784_type* @G_0x62d784 to i32*), align 8
  %2550 = load i32, i32* bitcast (%G_0x62d7ec_type* @G_0x62d7ec to i32*), align 8
  %2551 = zext i32 %2550 to i64
  store i64 %2551, i64* %RAX.i66, align 8
  %2552 = add i64 %2515, 27
  store i64 %2552, i64* %3, align 8
  %2553 = load i32, i32* %2522, align 4
  %2554 = add i32 %2553, %2550
  %2555 = icmp ult i32 %2554, %2550
  %2556 = icmp ult i32 %2554, %2553
  %2557 = or i1 %2555, %2556
  %2558 = zext i1 %2557 to i8
  store i8 %2558, i8* %14, align 1
  %2559 = and i32 %2554, 255
  %2560 = tail call i32 @llvm.ctpop.i32(i32 %2559)
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  %2563 = xor i8 %2562, 1
  store i8 %2563, i8* %21, align 1
  %2564 = xor i32 %2553, %2550
  %2565 = xor i32 %2564, %2554
  %2566 = lshr i32 %2565, 4
  %2567 = trunc i32 %2566 to i8
  %2568 = and i8 %2567, 1
  store i8 %2568, i8* %26, align 1
  %2569 = icmp eq i32 %2554, 0
  %2570 = zext i1 %2569 to i8
  store i8 %2570, i8* %29, align 1
  %2571 = lshr i32 %2554, 31
  %2572 = trunc i32 %2571 to i8
  store i8 %2572, i8* %32, align 1
  %2573 = lshr i32 %2550, 31
  %2574 = lshr i32 %2553, 31
  %2575 = xor i32 %2571, %2573
  %2576 = xor i32 %2571, %2574
  %2577 = add nuw nsw i32 %2575, %2576
  %2578 = icmp eq i32 %2577, 2
  %2579 = zext i1 %2578 to i8
  store i8 %2579, i8* %38, align 1
  store i32 %2554, i32* bitcast (%G_0x62d7ac_type* @G_0x62d7ac to i32*), align 8
  %2580 = load i32, i32* bitcast (%G_0x62d7e4_type* @G_0x62d7e4 to i32*), align 8
  %2581 = zext i32 %2580 to i64
  store i64 %2581, i64* %RAX.i66, align 8
  %2582 = add i64 %2515, 44
  store i64 %2582, i64* %3, align 8
  %2583 = load i32, i32* %2522, align 4
  %2584 = add i32 %2583, %2580
  %2585 = zext i32 %2584 to i64
  store i64 %2585, i64* %RAX.i66, align 8
  %2586 = icmp ult i32 %2584, %2580
  %2587 = icmp ult i32 %2584, %2583
  %2588 = or i1 %2586, %2587
  %2589 = zext i1 %2588 to i8
  store i8 %2589, i8* %14, align 1
  %2590 = and i32 %2584, 255
  %2591 = tail call i32 @llvm.ctpop.i32(i32 %2590)
  %2592 = trunc i32 %2591 to i8
  %2593 = and i8 %2592, 1
  %2594 = xor i8 %2593, 1
  store i8 %2594, i8* %21, align 1
  %2595 = xor i32 %2583, %2580
  %2596 = xor i32 %2595, %2584
  %2597 = lshr i32 %2596, 4
  %2598 = trunc i32 %2597 to i8
  %2599 = and i8 %2598, 1
  store i8 %2599, i8* %26, align 1
  %2600 = icmp eq i32 %2584, 0
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %29, align 1
  %2602 = lshr i32 %2584, 31
  %2603 = trunc i32 %2602 to i8
  store i8 %2603, i8* %32, align 1
  %2604 = lshr i32 %2580, 31
  %2605 = lshr i32 %2583, 31
  %2606 = xor i32 %2602, %2604
  %2607 = xor i32 %2602, %2605
  %2608 = add nuw nsw i32 %2606, %2607
  %2609 = icmp eq i32 %2608, 2
  %2610 = zext i1 %2609 to i8
  store i8 %2610, i8* %38, align 1
  store i32 %2584, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  %2611 = add i64 %2515, 107
  store i64 %2611, i64* %3, align 8
  br label %block_.L_410cd9

block_.L_410ca6:                                  ; preds = %block_410c60
  %2612 = load i32, i32* bitcast (%G_0x62d7c8_type* @G_0x62d7c8 to i32*), align 8
  %2613 = zext i32 %2612 to i64
  store i64 %2613, i64* %RAX.i66, align 8
  %2614 = load i64, i64* %RBP.i, align 8
  %2615 = add i64 %2614, -12
  %2616 = add i64 %2515, 10
  store i64 %2616, i64* %3, align 8
  %2617 = inttoptr i64 %2615 to i32*
  %2618 = load i32, i32* %2617, align 4
  %2619 = sub i32 %2612, %2618
  %2620 = icmp ult i32 %2612, %2618
  %2621 = zext i1 %2620 to i8
  store i8 %2621, i8* %14, align 1
  %2622 = and i32 %2619, 255
  %2623 = tail call i32 @llvm.ctpop.i32(i32 %2622)
  %2624 = trunc i32 %2623 to i8
  %2625 = and i8 %2624, 1
  %2626 = xor i8 %2625, 1
  store i8 %2626, i8* %21, align 1
  %2627 = xor i32 %2618, %2612
  %2628 = xor i32 %2627, %2619
  %2629 = lshr i32 %2628, 4
  %2630 = trunc i32 %2629 to i8
  %2631 = and i8 %2630, 1
  store i8 %2631, i8* %26, align 1
  %2632 = icmp eq i32 %2619, 0
  %2633 = zext i1 %2632 to i8
  store i8 %2633, i8* %29, align 1
  %2634 = lshr i32 %2619, 31
  %2635 = trunc i32 %2634 to i8
  store i8 %2635, i8* %32, align 1
  %2636 = lshr i32 %2612, 31
  %2637 = lshr i32 %2618, 31
  %2638 = xor i32 %2637, %2636
  %2639 = xor i32 %2634, %2636
  %2640 = add nuw nsw i32 %2639, %2638
  %2641 = icmp eq i32 %2640, 2
  %2642 = zext i1 %2641 to i8
  store i8 %2642, i8* %38, align 1
  store i32 %2619, i32* bitcast (%G_0x62d788_type* @G_0x62d788 to i32*), align 8
  %2643 = load i32, i32* bitcast (%G_0x62d7f0_type* @G_0x62d7f0 to i32*), align 8
  %2644 = zext i32 %2643 to i64
  store i64 %2644, i64* %RAX.i66, align 8
  %2645 = add i64 %2515, 27
  store i64 %2645, i64* %3, align 8
  %2646 = load i32, i32* %2617, align 4
  %2647 = sub i32 %2643, %2646
  %2648 = icmp ult i32 %2643, %2646
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %14, align 1
  %2650 = and i32 %2647, 255
  %2651 = tail call i32 @llvm.ctpop.i32(i32 %2650)
  %2652 = trunc i32 %2651 to i8
  %2653 = and i8 %2652, 1
  %2654 = xor i8 %2653, 1
  store i8 %2654, i8* %21, align 1
  %2655 = xor i32 %2646, %2643
  %2656 = xor i32 %2655, %2647
  %2657 = lshr i32 %2656, 4
  %2658 = trunc i32 %2657 to i8
  %2659 = and i8 %2658, 1
  store i8 %2659, i8* %26, align 1
  %2660 = icmp eq i32 %2647, 0
  %2661 = zext i1 %2660 to i8
  store i8 %2661, i8* %29, align 1
  %2662 = lshr i32 %2647, 31
  %2663 = trunc i32 %2662 to i8
  store i8 %2663, i8* %32, align 1
  %2664 = lshr i32 %2643, 31
  %2665 = lshr i32 %2646, 31
  %2666 = xor i32 %2665, %2664
  %2667 = xor i32 %2662, %2664
  %2668 = add nuw nsw i32 %2667, %2666
  %2669 = icmp eq i32 %2668, 2
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %38, align 1
  store i32 %2647, i32* bitcast (%G_0x62d7b0_type* @G_0x62d7b0 to i32*), align 8
  %2671 = load i32, i32* bitcast (%G_0x62d7e8_type* @G_0x62d7e8 to i32*), align 8
  %2672 = zext i32 %2671 to i64
  store i64 %2672, i64* %RAX.i66, align 8
  %2673 = add i64 %2515, 44
  store i64 %2673, i64* %3, align 8
  %2674 = load i32, i32* %2617, align 4
  %2675 = sub i32 %2671, %2674
  %2676 = zext i32 %2675 to i64
  store i64 %2676, i64* %RAX.i66, align 8
  %2677 = icmp ult i32 %2671, %2674
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %14, align 1
  %2679 = and i32 %2675, 255
  %2680 = tail call i32 @llvm.ctpop.i32(i32 %2679)
  %2681 = trunc i32 %2680 to i8
  %2682 = and i8 %2681, 1
  %2683 = xor i8 %2682, 1
  store i8 %2683, i8* %21, align 1
  %2684 = xor i32 %2674, %2671
  %2685 = xor i32 %2684, %2675
  %2686 = lshr i32 %2685, 4
  %2687 = trunc i32 %2686 to i8
  %2688 = and i8 %2687, 1
  store i8 %2688, i8* %26, align 1
  %2689 = icmp eq i32 %2675, 0
  %2690 = zext i1 %2689 to i8
  store i8 %2690, i8* %29, align 1
  %2691 = lshr i32 %2675, 31
  %2692 = trunc i32 %2691 to i8
  store i8 %2692, i8* %32, align 1
  %2693 = lshr i32 %2671, 31
  %2694 = lshr i32 %2674, 31
  %2695 = xor i32 %2694, %2693
  %2696 = xor i32 %2691, %2693
  %2697 = add nuw nsw i32 %2696, %2695
  %2698 = icmp eq i32 %2697, 2
  %2699 = zext i1 %2698 to i8
  store i8 %2699, i8* %38, align 1
  %2700 = add i64 %2515, 51
  store i64 %2700, i64* %3, align 8
  store i32 %2675, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  br label %block_.L_410cd9

block_.L_410cd9:                                  ; preds = %block_.L_410ca6, %block_410c6e
  %2701 = phi i64 [ %2700, %block_.L_410ca6 ], [ %2611, %block_410c6e ]
  store i64 ptrtoint (%G__0x428a89_type* @G__0x428a89 to i64), i64* %RDI.i190, align 8
  %2702 = load i64, i64* %RBP.i, align 8
  %2703 = add i64 %2702, -96
  store i64 %2703, i64* %RSI.i, align 8
  %AL.i1139 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1139, align 1
  %2704 = add i64 %2701, -65577
  %2705 = add i64 %2701, 21
  %2706 = load i64, i64* %6, align 8
  %2707 = add i64 %2706, -8
  %2708 = inttoptr i64 %2707 to i64*
  store i64 %2705, i64* %2708, align 8
  store i64 %2707, i64* %6, align 8
  store i64 %2704, i64* %3, align 8
  %2709 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_410c51)
  %2710 = load i64, i64* %RBP.i, align 8
  %2711 = add i64 %2710, -208
  %2712 = load i32, i32* %EAX.i76, align 4
  %2713 = load i64, i64* %3, align 8
  %2714 = add i64 %2713, 6
  store i64 %2714, i64* %3, align 8
  %2715 = inttoptr i64 %2711 to i32*
  store i32 %2712, i32* %2715, align 4
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_410cf4

block_.L_410cf4:                                  ; preds = %block_.L_410cd9, %block_.L_410c3c
  %2716 = phi i64 [ %2492, %block_.L_410c3c ], [ %.pre107, %block_.L_410cd9 ]
  %MEMORY.24 = phi %struct.Memory* [ %call2_410c51, %block_.L_410c3c ], [ %2709, %block_.L_410cd9 ]
  store i64 ptrtoint (%G__0x428971_type* @G__0x428971 to i64), i64* %RSI.i, align 8
  %2717 = load i64, i64* %RBP.i, align 8
  %2718 = add i64 %2717, -8
  %2719 = add i64 %2716, 14
  store i64 %2719, i64* %3, align 8
  %2720 = inttoptr i64 %2718 to i64*
  %2721 = load i64, i64* %2720, align 8
  %2722 = add i64 %2721, 6
  store i64 %2722, i64* %RAX.i66, align 8
  %2723 = icmp ugt i64 %2721, -7
  %2724 = zext i1 %2723 to i8
  store i8 %2724, i8* %14, align 1
  %2725 = trunc i64 %2722 to i32
  %2726 = and i32 %2725, 255
  %2727 = tail call i32 @llvm.ctpop.i32(i32 %2726)
  %2728 = trunc i32 %2727 to i8
  %2729 = and i8 %2728, 1
  %2730 = xor i8 %2729, 1
  store i8 %2730, i8* %21, align 1
  %2731 = xor i64 %2722, %2721
  %2732 = lshr i64 %2731, 4
  %2733 = trunc i64 %2732 to i8
  %2734 = and i8 %2733, 1
  store i8 %2734, i8* %26, align 1
  %2735 = icmp eq i64 %2722, 0
  %2736 = zext i1 %2735 to i8
  store i8 %2736, i8* %29, align 1
  %2737 = lshr i64 %2722, 63
  %2738 = trunc i64 %2737 to i8
  store i8 %2738, i8* %32, align 1
  %2739 = lshr i64 %2721, 63
  %2740 = xor i64 %2737, %2739
  %2741 = add nuw nsw i64 %2740, %2737
  %2742 = icmp eq i64 %2741, 2
  %2743 = zext i1 %2742 to i8
  store i8 %2743, i8* %38, align 1
  store i64 %2722, i64* %RDI.i190, align 8
  %2744 = add i64 %2716, -65284
  %2745 = add i64 %2716, 26
  %2746 = load i64, i64* %6, align 8
  %2747 = add i64 %2746, -8
  %2748 = inttoptr i64 %2747 to i64*
  store i64 %2745, i64* %2748, align 8
  store i64 %2747, i64* %6, align 8
  store i64 %2744, i64* %3, align 8
  %call2_410d09 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %2744, %struct.Memory* %MEMORY.24)
  %2749 = load i64, i64* %RAX.i66, align 8
  %2750 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2751 = trunc i64 %2749 to i32
  %2752 = and i32 %2751, 255
  %2753 = tail call i32 @llvm.ctpop.i32(i32 %2752)
  %2754 = trunc i32 %2753 to i8
  %2755 = and i8 %2754, 1
  %2756 = xor i8 %2755, 1
  store i8 %2756, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2757 = icmp eq i64 %2749, 0
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %29, align 1
  %2759 = lshr i64 %2749, 63
  %2760 = trunc i64 %2759 to i8
  store i8 %2760, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v190 = select i1 %2757, i64 124, i64 10
  %2761 = add i64 %2750, %.v190
  store i64 %2761, i64* %3, align 8
  br i1 %2757, label %block_.L_410d8a, label %block_410d18

block_410d18:                                     ; preds = %block_.L_410cf4
  %2762 = load i32, i32* bitcast (%G_0x886b84_type* @G_0x886b84 to i32*), align 8
  %2763 = add i32 %2762, -1
  %2764 = icmp eq i32 %2762, 0
  %2765 = zext i1 %2764 to i8
  store i8 %2765, i8* %14, align 1
  %2766 = and i32 %2763, 255
  %2767 = tail call i32 @llvm.ctpop.i32(i32 %2766)
  %2768 = trunc i32 %2767 to i8
  %2769 = and i8 %2768, 1
  %2770 = xor i8 %2769, 1
  store i8 %2770, i8* %21, align 1
  %2771 = xor i32 %2763, %2762
  %2772 = lshr i32 %2771, 4
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  store i8 %2774, i8* %26, align 1
  %2775 = icmp eq i32 %2763, 0
  %2776 = zext i1 %2775 to i8
  store i8 %2776, i8* %29, align 1
  %2777 = lshr i32 %2763, 31
  %2778 = trunc i32 %2777 to i8
  store i8 %2778, i8* %32, align 1
  %2779 = lshr i32 %2762, 31
  %2780 = xor i32 %2777, %2779
  %2781 = add nuw nsw i32 %2780, %2779
  %2782 = icmp eq i32 %2781, 2
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %38, align 1
  %.v191 = select i1 %2775, i64 14, i64 53
  %2784 = add i64 %2761, %.v191
  %2785 = add i64 %2784, 7
  store i64 %2785, i64* %3, align 8
  br i1 %2775, label %block_410d26, label %block_.L_410d4d

block_410d26:                                     ; preds = %block_410d18
  %2786 = load i32, i32* bitcast (%G_0x62d7dc_type* @G_0x62d7dc to i32*), align 8
  %2787 = zext i32 %2786 to i64
  store i64 %2787, i64* %RAX.i66, align 8
  %2788 = load i64, i64* %RBP.i, align 8
  %2789 = add i64 %2788, -12
  %2790 = add i64 %2784, 10
  store i64 %2790, i64* %3, align 8
  %2791 = inttoptr i64 %2789 to i32*
  %2792 = load i32, i32* %2791, align 4
  %2793 = add i32 %2792, %2786
  %2794 = icmp ult i32 %2793, %2786
  %2795 = icmp ult i32 %2793, %2792
  %2796 = or i1 %2794, %2795
  %2797 = zext i1 %2796 to i8
  store i8 %2797, i8* %14, align 1
  %2798 = and i32 %2793, 255
  %2799 = tail call i32 @llvm.ctpop.i32(i32 %2798)
  %2800 = trunc i32 %2799 to i8
  %2801 = and i8 %2800, 1
  %2802 = xor i8 %2801, 1
  store i8 %2802, i8* %21, align 1
  %2803 = xor i32 %2792, %2786
  %2804 = xor i32 %2803, %2793
  %2805 = lshr i32 %2804, 4
  %2806 = trunc i32 %2805 to i8
  %2807 = and i8 %2806, 1
  store i8 %2807, i8* %26, align 1
  %2808 = icmp eq i32 %2793, 0
  %2809 = zext i1 %2808 to i8
  store i8 %2809, i8* %29, align 1
  %2810 = lshr i32 %2793, 31
  %2811 = trunc i32 %2810 to i8
  store i8 %2811, i8* %32, align 1
  %2812 = lshr i32 %2786, 31
  %2813 = lshr i32 %2792, 31
  %2814 = xor i32 %2810, %2812
  %2815 = xor i32 %2810, %2813
  %2816 = add nuw nsw i32 %2814, %2815
  %2817 = icmp eq i32 %2816, 2
  %2818 = zext i1 %2817 to i8
  store i8 %2818, i8* %38, align 1
  store i32 %2793, i32* bitcast (%G_0x62d79c_type* @G_0x62d79c to i32*), align 8
  %2819 = load i32, i32* bitcast (%G_0x62d7e4_type* @G_0x62d7e4 to i32*), align 8
  %2820 = zext i32 %2819 to i64
  store i64 %2820, i64* %RAX.i66, align 8
  %2821 = add i64 %2784, 27
  store i64 %2821, i64* %3, align 8
  %2822 = load i32, i32* %2791, align 4
  %2823 = add i32 %2822, %2819
  %2824 = zext i32 %2823 to i64
  store i64 %2824, i64* %RAX.i66, align 8
  %2825 = icmp ult i32 %2823, %2819
  %2826 = icmp ult i32 %2823, %2822
  %2827 = or i1 %2825, %2826
  %2828 = zext i1 %2827 to i8
  store i8 %2828, i8* %14, align 1
  %2829 = and i32 %2823, 255
  %2830 = tail call i32 @llvm.ctpop.i32(i32 %2829)
  %2831 = trunc i32 %2830 to i8
  %2832 = and i8 %2831, 1
  %2833 = xor i8 %2832, 1
  store i8 %2833, i8* %21, align 1
  %2834 = xor i32 %2822, %2819
  %2835 = xor i32 %2834, %2823
  %2836 = lshr i32 %2835, 4
  %2837 = trunc i32 %2836 to i8
  %2838 = and i8 %2837, 1
  store i8 %2838, i8* %26, align 1
  %2839 = icmp eq i32 %2823, 0
  %2840 = zext i1 %2839 to i8
  store i8 %2840, i8* %29, align 1
  %2841 = lshr i32 %2823, 31
  %2842 = trunc i32 %2841 to i8
  store i8 %2842, i8* %32, align 1
  %2843 = lshr i32 %2819, 31
  %2844 = lshr i32 %2822, 31
  %2845 = xor i32 %2841, %2843
  %2846 = xor i32 %2841, %2844
  %2847 = add nuw nsw i32 %2845, %2846
  %2848 = icmp eq i32 %2847, 2
  %2849 = zext i1 %2848 to i8
  store i8 %2849, i8* %38, align 1
  store i32 %2823, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  %2850 = add i64 %2784, 73
  store i64 %2850, i64* %3, align 8
  br label %block_.L_410d6f

block_.L_410d4d:                                  ; preds = %block_410d18
  %2851 = load i32, i32* bitcast (%G_0x62d7e0_type* @G_0x62d7e0 to i32*), align 8
  %2852 = zext i32 %2851 to i64
  store i64 %2852, i64* %RAX.i66, align 8
  %2853 = load i64, i64* %RBP.i, align 8
  %2854 = add i64 %2853, -12
  %2855 = add i64 %2784, 10
  store i64 %2855, i64* %3, align 8
  %2856 = inttoptr i64 %2854 to i32*
  %2857 = load i32, i32* %2856, align 4
  %2858 = sub i32 %2851, %2857
  %2859 = icmp ult i32 %2851, %2857
  %2860 = zext i1 %2859 to i8
  store i8 %2860, i8* %14, align 1
  %2861 = and i32 %2858, 255
  %2862 = tail call i32 @llvm.ctpop.i32(i32 %2861)
  %2863 = trunc i32 %2862 to i8
  %2864 = and i8 %2863, 1
  %2865 = xor i8 %2864, 1
  store i8 %2865, i8* %21, align 1
  %2866 = xor i32 %2857, %2851
  %2867 = xor i32 %2866, %2858
  %2868 = lshr i32 %2867, 4
  %2869 = trunc i32 %2868 to i8
  %2870 = and i8 %2869, 1
  store i8 %2870, i8* %26, align 1
  %2871 = icmp eq i32 %2858, 0
  %2872 = zext i1 %2871 to i8
  store i8 %2872, i8* %29, align 1
  %2873 = lshr i32 %2858, 31
  %2874 = trunc i32 %2873 to i8
  store i8 %2874, i8* %32, align 1
  %2875 = lshr i32 %2851, 31
  %2876 = lshr i32 %2857, 31
  %2877 = xor i32 %2876, %2875
  %2878 = xor i32 %2873, %2875
  %2879 = add nuw nsw i32 %2878, %2877
  %2880 = icmp eq i32 %2879, 2
  %2881 = zext i1 %2880 to i8
  store i8 %2881, i8* %38, align 1
  store i32 %2858, i32* bitcast (%G_0x62d7a0_type* @G_0x62d7a0 to i32*), align 8
  %2882 = load i32, i32* bitcast (%G_0x62d7e8_type* @G_0x62d7e8 to i32*), align 8
  %2883 = zext i32 %2882 to i64
  store i64 %2883, i64* %RAX.i66, align 8
  %2884 = add i64 %2784, 27
  store i64 %2884, i64* %3, align 8
  %2885 = load i32, i32* %2856, align 4
  %2886 = sub i32 %2882, %2885
  %2887 = zext i32 %2886 to i64
  store i64 %2887, i64* %RAX.i66, align 8
  %2888 = icmp ult i32 %2882, %2885
  %2889 = zext i1 %2888 to i8
  store i8 %2889, i8* %14, align 1
  %2890 = and i32 %2886, 255
  %2891 = tail call i32 @llvm.ctpop.i32(i32 %2890)
  %2892 = trunc i32 %2891 to i8
  %2893 = and i8 %2892, 1
  %2894 = xor i8 %2893, 1
  store i8 %2894, i8* %21, align 1
  %2895 = xor i32 %2885, %2882
  %2896 = xor i32 %2895, %2886
  %2897 = lshr i32 %2896, 4
  %2898 = trunc i32 %2897 to i8
  %2899 = and i8 %2898, 1
  store i8 %2899, i8* %26, align 1
  %2900 = icmp eq i32 %2886, 0
  %2901 = zext i1 %2900 to i8
  store i8 %2901, i8* %29, align 1
  %2902 = lshr i32 %2886, 31
  %2903 = trunc i32 %2902 to i8
  store i8 %2903, i8* %32, align 1
  %2904 = lshr i32 %2882, 31
  %2905 = lshr i32 %2885, 31
  %2906 = xor i32 %2905, %2904
  %2907 = xor i32 %2902, %2904
  %2908 = add nuw nsw i32 %2907, %2906
  %2909 = icmp eq i32 %2908, 2
  %2910 = zext i1 %2909 to i8
  store i8 %2910, i8* %38, align 1
  %2911 = add i64 %2784, 34
  store i64 %2911, i64* %3, align 8
  store i32 %2886, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  br label %block_.L_410d6f

block_.L_410d6f:                                  ; preds = %block_.L_410d4d, %block_410d26
  %2912 = phi i64 [ %2853, %block_.L_410d4d ], [ %2788, %block_410d26 ]
  %2913 = phi i64 [ %2911, %block_.L_410d4d ], [ %2850, %block_410d26 ]
  store i64 ptrtoint (%G__0x428aa8_type* @G__0x428aa8 to i64), i64* %RDI.i190, align 8
  %2914 = add i64 %2912, -96
  store i64 %2914, i64* %RSI.i, align 8
  %AL.i1082 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i1082, align 1
  %2915 = add i64 %2913, -65727
  %2916 = add i64 %2913, 21
  %2917 = load i64, i64* %6, align 8
  %2918 = add i64 %2917, -8
  %2919 = inttoptr i64 %2918 to i64*
  store i64 %2916, i64* %2919, align 8
  store i64 %2918, i64* %6, align 8
  store i64 %2915, i64* %3, align 8
  %2920 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_410d09)
  %2921 = load i64, i64* %RBP.i, align 8
  %2922 = add i64 %2921, -212
  %2923 = load i32, i32* %EAX.i76, align 4
  %2924 = load i64, i64* %3, align 8
  %2925 = add i64 %2924, 6
  store i64 %2925, i64* %3, align 8
  %2926 = inttoptr i64 %2922 to i32*
  store i32 %2923, i32* %2926, align 4
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_410d8a

block_.L_410d8a:                                  ; preds = %block_.L_410d6f, %block_.L_410cf4
  %2927 = phi i64 [ %2761, %block_.L_410cf4 ], [ %.pre108, %block_.L_410d6f ]
  %MEMORY.26 = phi %struct.Memory* [ %call2_410d09, %block_.L_410cf4 ], [ %2920, %block_.L_410d6f ]
  %2928 = add i64 %2927, 2754
  br label %block_.L_41184c

block_.L_410d8f:                                  ; preds = %block_.L_410626
  store i64 ptrtoint (%G__0x428ae8_type* @G__0x428ae8 to i64), i64* %RSI.i, align 8
  store i64 1, i64* %RAX.i66, align 8
  store i64 1, i64* %RDX.i, align 8
  %2929 = load i64, i64* %RBP.i, align 8
  %2930 = add i64 %2929, -8
  %2931 = add i64 %744, 21
  store i64 %2931, i64* %3, align 8
  %2932 = inttoptr i64 %2930 to i64*
  %2933 = load i64, i64* %2932, align 8
  %2934 = add i64 %2933, 6
  store i64 %2934, i64* %RCX.i96, align 8
  %2935 = icmp ugt i64 %2933, -7
  %2936 = zext i1 %2935 to i8
  store i8 %2936, i8* %14, align 1
  %2937 = trunc i64 %2934 to i32
  %2938 = and i32 %2937, 255
  %2939 = tail call i32 @llvm.ctpop.i32(i32 %2938)
  %2940 = trunc i32 %2939 to i8
  %2941 = and i8 %2940, 1
  %2942 = xor i8 %2941, 1
  store i8 %2942, i8* %21, align 1
  %2943 = xor i64 %2934, %2933
  %2944 = lshr i64 %2943, 4
  %2945 = trunc i64 %2944 to i8
  %2946 = and i8 %2945, 1
  store i8 %2946, i8* %26, align 1
  %2947 = icmp eq i64 %2934, 0
  %2948 = zext i1 %2947 to i8
  store i8 %2948, i8* %29, align 1
  %2949 = lshr i64 %2934, 63
  %2950 = trunc i64 %2949 to i8
  store i8 %2950, i8* %32, align 1
  %2951 = lshr i64 %2933, 63
  %2952 = xor i64 %2949, %2951
  %2953 = add nuw nsw i64 %2952, %2949
  %2954 = icmp eq i64 %2953, 2
  %2955 = zext i1 %2954 to i8
  store i8 %2955, i8* %38, align 1
  store i64 %2934, i64* %RDI.i190, align 8
  %2956 = add i64 %744, -65839
  %2957 = add i64 %744, 33
  %2958 = load i64, i64* %6, align 8
  %2959 = add i64 %2958, -8
  %2960 = inttoptr i64 %2959 to i64*
  store i64 %2957, i64* %2960, align 8
  store i64 %2959, i64* %6, align 8
  store i64 %2956, i64* %3, align 8
  %2961 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %732)
  %2962 = load i32, i32* %EAX.i76, align 4
  %2963 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2964 = and i32 %2962, 255
  %2965 = tail call i32 @llvm.ctpop.i32(i32 %2964)
  %2966 = trunc i32 %2965 to i8
  %2967 = and i8 %2966, 1
  %2968 = xor i8 %2967, 1
  store i8 %2968, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2969 = icmp eq i32 %2962, 0
  %2970 = zext i1 %2969 to i8
  store i8 %2970, i8* %29, align 1
  %2971 = lshr i32 %2962, 31
  %2972 = trunc i32 %2971 to i8
  store i8 %2972, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v129 = select i1 %2969, i64 9, i64 1864
  %2973 = add i64 %2963, %.v129
  %2974 = add i64 %2973, 10
  store i64 %2974, i64* %3, align 8
  br i1 %2969, label %block_410db9, label %block_.L_4114f8

block_410db9:                                     ; preds = %block_.L_410d8f
  store i64 ptrtoint (%G__0x42896b_type* @G__0x42896b to i64), i64* %RSI.i, align 8
  %2975 = load i64, i64* %RBP.i, align 8
  %2976 = add i64 %2975, -8
  %2977 = add i64 %2973, 14
  store i64 %2977, i64* %3, align 8
  %2978 = inttoptr i64 %2976 to i64*
  %2979 = load i64, i64* %2978, align 8
  %2980 = add i64 %2979, 6
  store i64 %2980, i64* %RAX.i66, align 8
  %2981 = icmp ugt i64 %2979, -7
  %2982 = zext i1 %2981 to i8
  store i8 %2982, i8* %14, align 1
  %2983 = trunc i64 %2980 to i32
  %2984 = and i32 %2983, 255
  %2985 = tail call i32 @llvm.ctpop.i32(i32 %2984)
  %2986 = trunc i32 %2985 to i8
  %2987 = and i8 %2986, 1
  %2988 = xor i8 %2987, 1
  store i8 %2988, i8* %21, align 1
  %2989 = xor i64 %2980, %2979
  %2990 = lshr i64 %2989, 4
  %2991 = trunc i64 %2990 to i8
  %2992 = and i8 %2991, 1
  store i8 %2992, i8* %26, align 1
  %2993 = icmp eq i64 %2980, 0
  %2994 = zext i1 %2993 to i8
  store i8 %2994, i8* %29, align 1
  %2995 = lshr i64 %2980, 63
  %2996 = trunc i64 %2995 to i8
  store i8 %2996, i8* %32, align 1
  %2997 = lshr i64 %2979, 63
  %2998 = xor i64 %2995, %2997
  %2999 = add nuw nsw i64 %2998, %2995
  %3000 = icmp eq i64 %2999, 2
  %3001 = zext i1 %3000 to i8
  store i8 %3001, i8* %38, align 1
  store i64 %2980, i64* %RDI.i190, align 8
  %3002 = add i64 %2973, -65481
  %3003 = add i64 %2973, 26
  %3004 = load i64, i64* %6, align 8
  %3005 = add i64 %3004, -8
  %3006 = inttoptr i64 %3005 to i64*
  store i64 %3003, i64* %3006, align 8
  store i64 %3005, i64* %6, align 8
  store i64 %3002, i64* %3, align 8
  %call2_410dce = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %3002, %struct.Memory* %2961)
  %3007 = load i64, i64* %RAX.i66, align 8
  %3008 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3009 = trunc i64 %3007 to i32
  %3010 = and i32 %3009, 255
  %3011 = tail call i32 @llvm.ctpop.i32(i32 %3010)
  %3012 = trunc i32 %3011 to i8
  %3013 = and i8 %3012, 1
  %3014 = xor i8 %3013, 1
  store i8 %3014, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3015 = icmp eq i64 %3007, 0
  %3016 = zext i1 %3015 to i8
  store i8 %3016, i8* %29, align 1
  %3017 = lshr i64 %3007, 63
  %3018 = trunc i64 %3017 to i8
  store i8 %3018, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v144 = select i1 %3015, i64 10, i64 262
  %3019 = add i64 %3008, %.v144
  store i64 %3019, i64* %3, align 8
  br i1 %3015, label %block_410ddd, label %block_.L_410ed9

block_410ddd:                                     ; preds = %block_410db9
  store i64 ptrtoint (%G__0x429b31_type* @G__0x429b31 to i64), i64* %RSI.i, align 8
  %3020 = load i64, i64* %RBP.i, align 8
  %3021 = add i64 %3020, -8
  %3022 = add i64 %3019, 14
  store i64 %3022, i64* %3, align 8
  %3023 = inttoptr i64 %3021 to i64*
  %3024 = load i64, i64* %3023, align 8
  %3025 = add i64 %3024, 6
  store i64 %3025, i64* %RAX.i66, align 8
  %3026 = icmp ugt i64 %3024, -7
  %3027 = zext i1 %3026 to i8
  store i8 %3027, i8* %14, align 1
  %3028 = trunc i64 %3025 to i32
  %3029 = and i32 %3028, 255
  %3030 = tail call i32 @llvm.ctpop.i32(i32 %3029)
  %3031 = trunc i32 %3030 to i8
  %3032 = and i8 %3031, 1
  %3033 = xor i8 %3032, 1
  store i8 %3033, i8* %21, align 1
  %3034 = xor i64 %3025, %3024
  %3035 = lshr i64 %3034, 4
  %3036 = trunc i64 %3035 to i8
  %3037 = and i8 %3036, 1
  store i8 %3037, i8* %26, align 1
  %3038 = icmp eq i64 %3025, 0
  %3039 = zext i1 %3038 to i8
  store i8 %3039, i8* %29, align 1
  %3040 = lshr i64 %3025, 63
  %3041 = trunc i64 %3040 to i8
  store i8 %3041, i8* %32, align 1
  %3042 = lshr i64 %3024, 63
  %3043 = xor i64 %3040, %3042
  %3044 = add nuw nsw i64 %3043, %3040
  %3045 = icmp eq i64 %3044, 2
  %3046 = zext i1 %3045 to i8
  store i8 %3046, i8* %38, align 1
  store i64 %3025, i64* %RDI.i190, align 8
  %3047 = add i64 %3019, -65517
  %3048 = add i64 %3019, 26
  %3049 = load i64, i64* %6, align 8
  %3050 = add i64 %3049, -8
  %3051 = inttoptr i64 %3050 to i64*
  store i64 %3048, i64* %3051, align 8
  store i64 %3050, i64* %6, align 8
  store i64 %3047, i64* %3, align 8
  %call2_410df2 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %3047, %struct.Memory* %call2_410dce)
  %3052 = load i64, i64* %RAX.i66, align 8
  %3053 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3054 = trunc i64 %3052 to i32
  %3055 = and i32 %3054, 255
  %3056 = tail call i32 @llvm.ctpop.i32(i32 %3055)
  %3057 = trunc i32 %3056 to i8
  %3058 = and i8 %3057, 1
  %3059 = xor i8 %3058, 1
  store i8 %3059, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3060 = icmp eq i64 %3052, 0
  %3061 = zext i1 %3060 to i8
  store i8 %3061, i8* %29, align 1
  %3062 = lshr i64 %3052, 63
  %3063 = trunc i64 %3062 to i8
  store i8 %3063, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v163 = select i1 %3060, i64 10, i64 443
  %3064 = add i64 %3053, %.v163
  store i64 %3064, i64* %3, align 8
  br i1 %3060, label %block_410e01, label %block_.L_410fb2

block_410e01:                                     ; preds = %block_410ddd
  store i64 ptrtoint (%G__0x429b45_type* @G__0x429b45 to i64), i64* %RSI.i, align 8
  %3065 = load i64, i64* %RBP.i, align 8
  %3066 = add i64 %3065, -8
  %3067 = add i64 %3064, 14
  store i64 %3067, i64* %3, align 8
  %3068 = inttoptr i64 %3066 to i64*
  %3069 = load i64, i64* %3068, align 8
  %3070 = add i64 %3069, 6
  store i64 %3070, i64* %RAX.i66, align 8
  %3071 = icmp ugt i64 %3069, -7
  %3072 = zext i1 %3071 to i8
  store i8 %3072, i8* %14, align 1
  %3073 = trunc i64 %3070 to i32
  %3074 = and i32 %3073, 255
  %3075 = tail call i32 @llvm.ctpop.i32(i32 %3074)
  %3076 = trunc i32 %3075 to i8
  %3077 = and i8 %3076, 1
  %3078 = xor i8 %3077, 1
  store i8 %3078, i8* %21, align 1
  %3079 = xor i64 %3070, %3069
  %3080 = lshr i64 %3079, 4
  %3081 = trunc i64 %3080 to i8
  %3082 = and i8 %3081, 1
  store i8 %3082, i8* %26, align 1
  %3083 = icmp eq i64 %3070, 0
  %3084 = zext i1 %3083 to i8
  store i8 %3084, i8* %29, align 1
  %3085 = lshr i64 %3070, 63
  %3086 = trunc i64 %3085 to i8
  store i8 %3086, i8* %32, align 1
  %3087 = lshr i64 %3069, 63
  %3088 = xor i64 %3085, %3087
  %3089 = add nuw nsw i64 %3088, %3085
  %3090 = icmp eq i64 %3089, 2
  %3091 = zext i1 %3090 to i8
  store i8 %3091, i8* %38, align 1
  store i64 %3070, i64* %RDI.i190, align 8
  %3092 = add i64 %3064, -65553
  %3093 = add i64 %3064, 26
  %3094 = load i64, i64* %6, align 8
  %3095 = add i64 %3094, -8
  %3096 = inttoptr i64 %3095 to i64*
  store i64 %3093, i64* %3096, align 8
  store i64 %3095, i64* %6, align 8
  store i64 %3092, i64* %3, align 8
  %call2_410e16 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %3092, %struct.Memory* %call2_410df2)
  %3097 = load i64, i64* %RAX.i66, align 8
  %3098 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3099 = trunc i64 %3097 to i32
  %3100 = and i32 %3099, 255
  %3101 = tail call i32 @llvm.ctpop.i32(i32 %3100)
  %3102 = trunc i32 %3101 to i8
  %3103 = and i8 %3102, 1
  %3104 = xor i8 %3103, 1
  store i8 %3104, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3105 = icmp eq i64 %3097, 0
  %3106 = zext i1 %3105 to i8
  store i8 %3106, i8* %29, align 1
  %3107 = lshr i64 %3097, 63
  %3108 = trunc i64 %3107 to i8
  store i8 %3108, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v167 = select i1 %3105, i64 10, i64 407
  %3109 = add i64 %3098, %.v167
  store i64 %3109, i64* %3, align 8
  br i1 %3105, label %block_410e25, label %block_.L_410fb2

block_410e25:                                     ; preds = %block_410e01
  store i64 ptrtoint (%G__0x42877b_type* @G__0x42877b to i64), i64* %RSI.i, align 8
  %3110 = load i64, i64* %RBP.i, align 8
  %3111 = add i64 %3110, -8
  %3112 = add i64 %3109, 14
  store i64 %3112, i64* %3, align 8
  %3113 = inttoptr i64 %3111 to i64*
  %3114 = load i64, i64* %3113, align 8
  %3115 = add i64 %3114, 6
  store i64 %3115, i64* %RAX.i66, align 8
  %3116 = icmp ugt i64 %3114, -7
  %3117 = zext i1 %3116 to i8
  store i8 %3117, i8* %14, align 1
  %3118 = trunc i64 %3115 to i32
  %3119 = and i32 %3118, 255
  %3120 = tail call i32 @llvm.ctpop.i32(i32 %3119)
  %3121 = trunc i32 %3120 to i8
  %3122 = and i8 %3121, 1
  %3123 = xor i8 %3122, 1
  store i8 %3123, i8* %21, align 1
  %3124 = xor i64 %3115, %3114
  %3125 = lshr i64 %3124, 4
  %3126 = trunc i64 %3125 to i8
  %3127 = and i8 %3126, 1
  store i8 %3127, i8* %26, align 1
  %3128 = icmp eq i64 %3115, 0
  %3129 = zext i1 %3128 to i8
  store i8 %3129, i8* %29, align 1
  %3130 = lshr i64 %3115, 63
  %3131 = trunc i64 %3130 to i8
  store i8 %3131, i8* %32, align 1
  %3132 = lshr i64 %3114, 63
  %3133 = xor i64 %3130, %3132
  %3134 = add nuw nsw i64 %3133, %3130
  %3135 = icmp eq i64 %3134, 2
  %3136 = zext i1 %3135 to i8
  store i8 %3136, i8* %38, align 1
  store i64 %3115, i64* %RDI.i190, align 8
  %3137 = add i64 %3109, -65589
  %3138 = add i64 %3109, 26
  %3139 = load i64, i64* %6, align 8
  %3140 = add i64 %3139, -8
  %3141 = inttoptr i64 %3140 to i64*
  store i64 %3138, i64* %3141, align 8
  store i64 %3140, i64* %6, align 8
  store i64 %3137, i64* %3, align 8
  %call2_410e3a = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %3137, %struct.Memory* %call2_410e16)
  %3142 = load i64, i64* %RAX.i66, align 8
  %3143 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3144 = trunc i64 %3142 to i32
  %3145 = and i32 %3144, 255
  %3146 = tail call i32 @llvm.ctpop.i32(i32 %3145)
  %3147 = trunc i32 %3146 to i8
  %3148 = and i8 %3147, 1
  %3149 = xor i8 %3148, 1
  store i8 %3149, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3150 = icmp eq i64 %3142, 0
  %3151 = zext i1 %3150 to i8
  store i8 %3151, i8* %29, align 1
  %3152 = lshr i64 %3142, 63
  %3153 = trunc i64 %3152 to i8
  store i8 %3153, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v168 = select i1 %3150, i64 10, i64 371
  %3154 = add i64 %3143, %.v168
  store i64 %3154, i64* %3, align 8
  br i1 %3150, label %block_410e49, label %block_.L_410fb2

block_410e49:                                     ; preds = %block_410e25
  store i64 ptrtoint (%G__0x429b3b_type* @G__0x429b3b to i64), i64* %RSI.i, align 8
  %3155 = load i64, i64* %RBP.i, align 8
  %3156 = add i64 %3155, -8
  %3157 = add i64 %3154, 14
  store i64 %3157, i64* %3, align 8
  %3158 = inttoptr i64 %3156 to i64*
  %3159 = load i64, i64* %3158, align 8
  %3160 = add i64 %3159, 6
  store i64 %3160, i64* %RAX.i66, align 8
  %3161 = icmp ugt i64 %3159, -7
  %3162 = zext i1 %3161 to i8
  store i8 %3162, i8* %14, align 1
  %3163 = trunc i64 %3160 to i32
  %3164 = and i32 %3163, 255
  %3165 = tail call i32 @llvm.ctpop.i32(i32 %3164)
  %3166 = trunc i32 %3165 to i8
  %3167 = and i8 %3166, 1
  %3168 = xor i8 %3167, 1
  store i8 %3168, i8* %21, align 1
  %3169 = xor i64 %3160, %3159
  %3170 = lshr i64 %3169, 4
  %3171 = trunc i64 %3170 to i8
  %3172 = and i8 %3171, 1
  store i8 %3172, i8* %26, align 1
  %3173 = icmp eq i64 %3160, 0
  %3174 = zext i1 %3173 to i8
  store i8 %3174, i8* %29, align 1
  %3175 = lshr i64 %3160, 63
  %3176 = trunc i64 %3175 to i8
  store i8 %3176, i8* %32, align 1
  %3177 = lshr i64 %3159, 63
  %3178 = xor i64 %3175, %3177
  %3179 = add nuw nsw i64 %3178, %3175
  %3180 = icmp eq i64 %3179, 2
  %3181 = zext i1 %3180 to i8
  store i8 %3181, i8* %38, align 1
  store i64 %3160, i64* %RDI.i190, align 8
  %3182 = add i64 %3154, -65625
  %3183 = add i64 %3154, 26
  %3184 = load i64, i64* %6, align 8
  %3185 = add i64 %3184, -8
  %3186 = inttoptr i64 %3185 to i64*
  store i64 %3183, i64* %3186, align 8
  store i64 %3185, i64* %6, align 8
  store i64 %3182, i64* %3, align 8
  %call2_410e5e = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %3182, %struct.Memory* %call2_410e3a)
  %3187 = load i64, i64* %RAX.i66, align 8
  %3188 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3189 = trunc i64 %3187 to i32
  %3190 = and i32 %3189, 255
  %3191 = tail call i32 @llvm.ctpop.i32(i32 %3190)
  %3192 = trunc i32 %3191 to i8
  %3193 = and i8 %3192, 1
  %3194 = xor i8 %3193, 1
  store i8 %3194, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3195 = icmp eq i64 %3187, 0
  %3196 = zext i1 %3195 to i8
  store i8 %3196, i8* %29, align 1
  %3197 = lshr i64 %3187, 63
  %3198 = trunc i64 %3197 to i8
  store i8 %3198, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v169 = select i1 %3195, i64 10, i64 335
  %3199 = add i64 %3188, %.v169
  store i64 %3199, i64* %3, align 8
  br i1 %3195, label %block_410e6d, label %block_.L_410fb2

block_410e6d:                                     ; preds = %block_410e49
  store i64 ptrtoint (%G__0x429b59_type* @G__0x429b59 to i64), i64* %RSI.i, align 8
  %3200 = load i64, i64* %RBP.i, align 8
  %3201 = add i64 %3200, -8
  %3202 = add i64 %3199, 14
  store i64 %3202, i64* %3, align 8
  %3203 = inttoptr i64 %3201 to i64*
  %3204 = load i64, i64* %3203, align 8
  %3205 = add i64 %3204, 6
  store i64 %3205, i64* %RAX.i66, align 8
  %3206 = icmp ugt i64 %3204, -7
  %3207 = zext i1 %3206 to i8
  store i8 %3207, i8* %14, align 1
  %3208 = trunc i64 %3205 to i32
  %3209 = and i32 %3208, 255
  %3210 = tail call i32 @llvm.ctpop.i32(i32 %3209)
  %3211 = trunc i32 %3210 to i8
  %3212 = and i8 %3211, 1
  %3213 = xor i8 %3212, 1
  store i8 %3213, i8* %21, align 1
  %3214 = xor i64 %3205, %3204
  %3215 = lshr i64 %3214, 4
  %3216 = trunc i64 %3215 to i8
  %3217 = and i8 %3216, 1
  store i8 %3217, i8* %26, align 1
  %3218 = icmp eq i64 %3205, 0
  %3219 = zext i1 %3218 to i8
  store i8 %3219, i8* %29, align 1
  %3220 = lshr i64 %3205, 63
  %3221 = trunc i64 %3220 to i8
  store i8 %3221, i8* %32, align 1
  %3222 = lshr i64 %3204, 63
  %3223 = xor i64 %3220, %3222
  %3224 = add nuw nsw i64 %3223, %3220
  %3225 = icmp eq i64 %3224, 2
  %3226 = zext i1 %3225 to i8
  store i8 %3226, i8* %38, align 1
  store i64 %3205, i64* %RDI.i190, align 8
  %3227 = add i64 %3199, -65661
  %3228 = add i64 %3199, 26
  %3229 = load i64, i64* %6, align 8
  %3230 = add i64 %3229, -8
  %3231 = inttoptr i64 %3230 to i64*
  store i64 %3228, i64* %3231, align 8
  store i64 %3230, i64* %6, align 8
  store i64 %3227, i64* %3, align 8
  %call2_410e82 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %3227, %struct.Memory* %call2_410e5e)
  %3232 = load i64, i64* %RAX.i66, align 8
  %3233 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3234 = trunc i64 %3232 to i32
  %3235 = and i32 %3234, 255
  %3236 = tail call i32 @llvm.ctpop.i32(i32 %3235)
  %3237 = trunc i32 %3236 to i8
  %3238 = and i8 %3237, 1
  %3239 = xor i8 %3238, 1
  store i8 %3239, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3240 = icmp eq i64 %3232, 0
  %3241 = zext i1 %3240 to i8
  store i8 %3241, i8* %29, align 1
  %3242 = lshr i64 %3232, 63
  %3243 = trunc i64 %3242 to i8
  store i8 %3243, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v170 = select i1 %3240, i64 10, i64 299
  %3244 = add i64 %3233, %.v170
  store i64 %3244, i64* %3, align 8
  br i1 %3240, label %block_410e91, label %block_.L_410fb2

block_410e91:                                     ; preds = %block_410e6d
  store i64 ptrtoint (%G__0x429aeb_type* @G__0x429aeb to i64), i64* %RSI.i, align 8
  %3245 = load i64, i64* %RBP.i, align 8
  %3246 = add i64 %3245, -8
  %3247 = add i64 %3244, 14
  store i64 %3247, i64* %3, align 8
  %3248 = inttoptr i64 %3246 to i64*
  %3249 = load i64, i64* %3248, align 8
  %3250 = add i64 %3249, 6
  store i64 %3250, i64* %RAX.i66, align 8
  %3251 = icmp ugt i64 %3249, -7
  %3252 = zext i1 %3251 to i8
  store i8 %3252, i8* %14, align 1
  %3253 = trunc i64 %3250 to i32
  %3254 = and i32 %3253, 255
  %3255 = tail call i32 @llvm.ctpop.i32(i32 %3254)
  %3256 = trunc i32 %3255 to i8
  %3257 = and i8 %3256, 1
  %3258 = xor i8 %3257, 1
  store i8 %3258, i8* %21, align 1
  %3259 = xor i64 %3250, %3249
  %3260 = lshr i64 %3259, 4
  %3261 = trunc i64 %3260 to i8
  %3262 = and i8 %3261, 1
  store i8 %3262, i8* %26, align 1
  %3263 = icmp eq i64 %3250, 0
  %3264 = zext i1 %3263 to i8
  store i8 %3264, i8* %29, align 1
  %3265 = lshr i64 %3250, 63
  %3266 = trunc i64 %3265 to i8
  store i8 %3266, i8* %32, align 1
  %3267 = lshr i64 %3249, 63
  %3268 = xor i64 %3265, %3267
  %3269 = add nuw nsw i64 %3268, %3265
  %3270 = icmp eq i64 %3269, 2
  %3271 = zext i1 %3270 to i8
  store i8 %3271, i8* %38, align 1
  store i64 %3250, i64* %RDI.i190, align 8
  %3272 = add i64 %3244, -65697
  %3273 = add i64 %3244, 26
  %3274 = load i64, i64* %6, align 8
  %3275 = add i64 %3274, -8
  %3276 = inttoptr i64 %3275 to i64*
  store i64 %3273, i64* %3276, align 8
  store i64 %3275, i64* %6, align 8
  store i64 %3272, i64* %3, align 8
  %call2_410ea6 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %3272, %struct.Memory* %call2_410e82)
  %3277 = load i64, i64* %RAX.i66, align 8
  %3278 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3279 = trunc i64 %3277 to i32
  %3280 = and i32 %3279, 255
  %3281 = tail call i32 @llvm.ctpop.i32(i32 %3280)
  %3282 = trunc i32 %3281 to i8
  %3283 = and i8 %3282, 1
  %3284 = xor i8 %3283, 1
  store i8 %3284, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3285 = icmp eq i64 %3277, 0
  %3286 = zext i1 %3285 to i8
  store i8 %3286, i8* %29, align 1
  %3287 = lshr i64 %3277, 63
  %3288 = trunc i64 %3287 to i8
  store i8 %3288, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v171 = select i1 %3285, i64 10, i64 263
  %3289 = add i64 %3278, %.v171
  store i64 %3289, i64* %3, align 8
  br i1 %3285, label %block_410eb5, label %block_.L_410fb2

block_410eb5:                                     ; preds = %block_410e91
  store i64 ptrtoint (%G__0x428971_type* @G__0x428971 to i64), i64* %RSI.i, align 8
  %3290 = load i64, i64* %RBP.i, align 8
  %3291 = add i64 %3290, -8
  %3292 = add i64 %3289, 14
  store i64 %3292, i64* %3, align 8
  %3293 = inttoptr i64 %3291 to i64*
  %3294 = load i64, i64* %3293, align 8
  %3295 = add i64 %3294, 6
  store i64 %3295, i64* %RAX.i66, align 8
  %3296 = icmp ugt i64 %3294, -7
  %3297 = zext i1 %3296 to i8
  store i8 %3297, i8* %14, align 1
  %3298 = trunc i64 %3295 to i32
  %3299 = and i32 %3298, 255
  %3300 = tail call i32 @llvm.ctpop.i32(i32 %3299)
  %3301 = trunc i32 %3300 to i8
  %3302 = and i8 %3301, 1
  %3303 = xor i8 %3302, 1
  store i8 %3303, i8* %21, align 1
  %3304 = xor i64 %3295, %3294
  %3305 = lshr i64 %3304, 4
  %3306 = trunc i64 %3305 to i8
  %3307 = and i8 %3306, 1
  store i8 %3307, i8* %26, align 1
  %3308 = icmp eq i64 %3295, 0
  %3309 = zext i1 %3308 to i8
  store i8 %3309, i8* %29, align 1
  %3310 = lshr i64 %3295, 63
  %3311 = trunc i64 %3310 to i8
  store i8 %3311, i8* %32, align 1
  %3312 = lshr i64 %3294, 63
  %3313 = xor i64 %3310, %3312
  %3314 = add nuw nsw i64 %3313, %3310
  %3315 = icmp eq i64 %3314, 2
  %3316 = zext i1 %3315 to i8
  store i8 %3316, i8* %38, align 1
  store i64 %3295, i64* %RDI.i190, align 8
  %3317 = add i64 %3289, -65733
  %3318 = add i64 %3289, 26
  %3319 = load i64, i64* %6, align 8
  %3320 = add i64 %3319, -8
  %3321 = inttoptr i64 %3320 to i64*
  store i64 %3318, i64* %3321, align 8
  store i64 %3320, i64* %6, align 8
  store i64 %3317, i64* %3, align 8
  %call2_410eca = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %3317, %struct.Memory* %call2_410ea6)
  %3322 = load i64, i64* %RAX.i66, align 8
  %3323 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3324 = trunc i64 %3322 to i32
  %3325 = and i32 %3324, 255
  %3326 = tail call i32 @llvm.ctpop.i32(i32 %3325)
  %3327 = trunc i32 %3326 to i8
  %3328 = and i8 %3327, 1
  %3329 = xor i8 %3328, 1
  store i8 %3329, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3330 = icmp eq i64 %3322, 0
  %3331 = zext i1 %3330 to i8
  store i8 %3331, i8* %29, align 1
  %3332 = lshr i64 %3322, 63
  %3333 = trunc i64 %3332 to i8
  store i8 %3333, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v172 = select i1 %3330, i64 10, i64 227
  %3334 = add i64 %3323, %.v172
  store i64 %3334, i64* %3, align 8
  br i1 %3330, label %block_.L_410ed9, label %block_.L_410fb2

block_.L_410ed9:                                  ; preds = %block_410eb5, %block_410db9
  %3335 = phi i64 [ %3019, %block_410db9 ], [ %3334, %block_410eb5 ]
  %MEMORY.27 = phi %struct.Memory* [ %call2_410dce, %block_410db9 ], [ %call2_410eca, %block_410eb5 ]
  %3336 = load i32, i32* bitcast (%G_0x886b84_type* @G_0x886b84 to i32*), align 8
  %3337 = add i32 %3336, -1
  %3338 = icmp eq i32 %3336, 0
  %3339 = zext i1 %3338 to i8
  store i8 %3339, i8* %14, align 1
  %3340 = and i32 %3337, 255
  %3341 = tail call i32 @llvm.ctpop.i32(i32 %3340)
  %3342 = trunc i32 %3341 to i8
  %3343 = and i8 %3342, 1
  %3344 = xor i8 %3343, 1
  store i8 %3344, i8* %21, align 1
  %3345 = xor i32 %3337, %3336
  %3346 = lshr i32 %3345, 4
  %3347 = trunc i32 %3346 to i8
  %3348 = and i8 %3347, 1
  store i8 %3348, i8* %26, align 1
  %3349 = icmp eq i32 %3337, 0
  %3350 = zext i1 %3349 to i8
  store i8 %3350, i8* %29, align 1
  %3351 = lshr i32 %3337, 31
  %3352 = trunc i32 %3351 to i8
  store i8 %3352, i8* %32, align 1
  %3353 = lshr i32 %3336, 31
  %3354 = xor i32 %3351, %3353
  %3355 = add nuw nsw i32 %3354, %3353
  %3356 = icmp eq i32 %3355, 2
  %3357 = zext i1 %3356 to i8
  store i8 %3357, i8* %38, align 1
  %.v145 = select i1 %3349, i64 14, i64 104
  %3358 = add i64 %3335, %.v145
  %3359 = add i64 %3358, 7
  store i64 %3359, i64* %3, align 8
  br i1 %3349, label %block_410ee7, label %block_.L_410f41

block_410ee7:                                     ; preds = %block_.L_410ed9
  %3360 = load i32, i32* bitcast (%G_0x62d788_type* @G_0x62d788 to i32*), align 8
  %3361 = add i32 %3360, -20
  store i32 %3361, i32* bitcast (%G_0x62d788_type* @G_0x62d788 to i32*), align 8
  %3362 = load i32, i32* bitcast (%G_0x62d790_type* @G_0x62d790 to i32*), align 8
  %3363 = add i32 %3362, -50
  store i32 %3363, i32* bitcast (%G_0x62d790_type* @G_0x62d790 to i32*), align 8
  %3364 = load i32, i32* bitcast (%G_0x62d7b0_type* @G_0x62d7b0 to i32*), align 8
  %3365 = add i32 %3364, -50
  store i32 %3365, i32* bitcast (%G_0x62d7b0_type* @G_0x62d7b0 to i32*), align 8
  %3366 = load i32, i32* bitcast (%G_0x62d7a0_type* @G_0x62d7a0 to i32*), align 8
  %3367 = add i32 %3366, -50
  store i32 %3367, i32* bitcast (%G_0x62d7a0_type* @G_0x62d7a0 to i32*), align 8
  %3368 = load i32, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  %3369 = add i32 %3368, -100
  %3370 = zext i32 %3369 to i64
  store i64 %3370, i64* %RAX.i66, align 8
  %3371 = icmp ult i32 %3368, 100
  %3372 = zext i1 %3371 to i8
  store i8 %3372, i8* %14, align 1
  %3373 = and i32 %3369, 255
  %3374 = tail call i32 @llvm.ctpop.i32(i32 %3373)
  %3375 = trunc i32 %3374 to i8
  %3376 = and i8 %3375, 1
  %3377 = xor i8 %3376, 1
  store i8 %3377, i8* %21, align 1
  %3378 = xor i32 %3369, %3368
  %3379 = lshr i32 %3378, 4
  %3380 = trunc i32 %3379 to i8
  %3381 = and i8 %3380, 1
  store i8 %3381, i8* %26, align 1
  %3382 = icmp eq i32 %3369, 0
  %3383 = zext i1 %3382 to i8
  store i8 %3383, i8* %29, align 1
  %3384 = lshr i32 %3369, 31
  %3385 = trunc i32 %3384 to i8
  store i8 %3385, i8* %32, align 1
  %3386 = lshr i32 %3368, 31
  %3387 = xor i32 %3384, %3386
  %3388 = add nuw nsw i32 %3387, %3386
  %3389 = icmp eq i32 %3388, 2
  %3390 = zext i1 %3389 to i8
  store i8 %3390, i8* %38, align 1
  store i32 %3369, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  %3391 = add i64 %3358, 175
  store i64 %3391, i64* %3, align 8
  br label %block_.L_410f96

block_.L_410f41:                                  ; preds = %block_.L_410ed9
  %3392 = load i32, i32* bitcast (%G_0x62d784_type* @G_0x62d784 to i32*), align 8
  %3393 = add i32 %3392, 20
  store i32 %3393, i32* bitcast (%G_0x62d784_type* @G_0x62d784 to i32*), align 8
  %3394 = load i32, i32* bitcast (%G_0x62d78c_type* @G_0x62d78c to i32*), align 8
  %3395 = add i32 %3394, 50
  store i32 %3395, i32* bitcast (%G_0x62d78c_type* @G_0x62d78c to i32*), align 8
  %3396 = load i32, i32* bitcast (%G_0x62d7ac_type* @G_0x62d7ac to i32*), align 8
  %3397 = add i32 %3396, 50
  store i32 %3397, i32* bitcast (%G_0x62d7ac_type* @G_0x62d7ac to i32*), align 8
  %3398 = load i32, i32* bitcast (%G_0x62d79c_type* @G_0x62d79c to i32*), align 8
  %3399 = add i32 %3398, 50
  store i32 %3399, i32* bitcast (%G_0x62d79c_type* @G_0x62d79c to i32*), align 8
  %3400 = load i32, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  %3401 = add i32 %3400, 100
  %3402 = zext i32 %3401 to i64
  store i64 %3402, i64* %RAX.i66, align 8
  %3403 = icmp ugt i32 %3400, -101
  %3404 = zext i1 %3403 to i8
  store i8 %3404, i8* %14, align 1
  %3405 = and i32 %3401, 255
  %3406 = tail call i32 @llvm.ctpop.i32(i32 %3405)
  %3407 = trunc i32 %3406 to i8
  %3408 = and i8 %3407, 1
  %3409 = xor i8 %3408, 1
  store i8 %3409, i8* %21, align 1
  %3410 = xor i32 %3401, %3400
  %3411 = lshr i32 %3410, 4
  %3412 = trunc i32 %3411 to i8
  %3413 = and i8 %3412, 1
  store i8 %3413, i8* %26, align 1
  %3414 = icmp eq i32 %3401, 0
  %3415 = zext i1 %3414 to i8
  store i8 %3415, i8* %29, align 1
  %3416 = lshr i32 %3401, 31
  %3417 = trunc i32 %3416 to i8
  store i8 %3417, i8* %32, align 1
  %3418 = lshr i32 %3400, 31
  %3419 = xor i32 %3416, %3418
  %3420 = add nuw nsw i32 %3419, %3416
  %3421 = icmp eq i32 %3420, 2
  %3422 = zext i1 %3421 to i8
  store i8 %3422, i8* %38, align 1
  %3423 = add i64 %3358, 85
  store i64 %3423, i64* %3, align 8
  store i32 %3401, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  br label %block_.L_410f96

block_.L_410f96:                                  ; preds = %block_.L_410f41, %block_410ee7
  %3424 = phi i64 [ %3423, %block_.L_410f41 ], [ %3391, %block_410ee7 ]
  store i64 ptrtoint (%G__0x428ac4_type* @G__0x428ac4 to i64), i64* %RDI.i190, align 8
  %AL.i875 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i875, align 1
  %3425 = add i64 %3424, -66278
  %3426 = add i64 %3424, 17
  %3427 = load i64, i64* %6, align 8
  %3428 = add i64 %3427, -8
  %3429 = inttoptr i64 %3428 to i64*
  store i64 %3426, i64* %3429, align 8
  store i64 %3428, i64* %6, align 8
  store i64 %3425, i64* %3, align 8
  %3430 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.27)
  %3431 = load i64, i64* %RBP.i, align 8
  %3432 = add i64 %3431, -216
  %3433 = load i32, i32* %EAX.i76, align 4
  %3434 = load i64, i64* %3, align 8
  %3435 = add i64 %3434, 6
  store i64 %3435, i64* %3, align 8
  %3436 = inttoptr i64 %3432 to i32*
  store i32 %3433, i32* %3436, align 4
  %3437 = load i64, i64* %3, align 8
  %3438 = add i64 %3437, 243
  br label %block_.L_4110a0

block_.L_410fb2:                                  ; preds = %block_410eb5, %block_410e91, %block_410e6d, %block_410e49, %block_410e25, %block_410e01, %block_410ddd
  %3439 = phi i64 [ %3064, %block_410ddd ], [ %3109, %block_410e01 ], [ %3154, %block_410e25 ], [ %3199, %block_410e49 ], [ %3244, %block_410e6d ], [ %3289, %block_410e91 ], [ %3334, %block_410eb5 ]
  %MEMORY.29 = phi %struct.Memory* [ %call2_410df2, %block_410ddd ], [ %call2_410e16, %block_410e01 ], [ %call2_410e3a, %block_410e25 ], [ %call2_410e5e, %block_410e49 ], [ %call2_410e82, %block_410e6d ], [ %call2_410ea6, %block_410e91 ], [ %call2_410eca, %block_410eb5 ]
  store i64 ptrtoint (%G__0x428ae6_type* @G__0x428ae6 to i64), i64* %RSI.i, align 8
  %3440 = load i64, i64* %RBP.i, align 8
  %3441 = add i64 %3440, -8
  %3442 = add i64 %3439, 14
  store i64 %3442, i64* %3, align 8
  %3443 = inttoptr i64 %3441 to i64*
  %3444 = load i64, i64* %3443, align 8
  %3445 = add i64 %3444, 6
  store i64 %3445, i64* %RAX.i66, align 8
  %3446 = icmp ugt i64 %3444, -7
  %3447 = zext i1 %3446 to i8
  store i8 %3447, i8* %14, align 1
  %3448 = trunc i64 %3445 to i32
  %3449 = and i32 %3448, 255
  %3450 = tail call i32 @llvm.ctpop.i32(i32 %3449)
  %3451 = trunc i32 %3450 to i8
  %3452 = and i8 %3451, 1
  %3453 = xor i8 %3452, 1
  store i8 %3453, i8* %21, align 1
  %3454 = xor i64 %3445, %3444
  %3455 = lshr i64 %3454, 4
  %3456 = trunc i64 %3455 to i8
  %3457 = and i8 %3456, 1
  store i8 %3457, i8* %26, align 1
  %3458 = icmp eq i64 %3445, 0
  %3459 = zext i1 %3458 to i8
  store i8 %3459, i8* %29, align 1
  %3460 = lshr i64 %3445, 63
  %3461 = trunc i64 %3460 to i8
  store i8 %3461, i8* %32, align 1
  %3462 = lshr i64 %3444, 63
  %3463 = xor i64 %3460, %3462
  %3464 = add nuw nsw i64 %3463, %3460
  %3465 = icmp eq i64 %3464, 2
  %3466 = zext i1 %3465 to i8
  store i8 %3466, i8* %38, align 1
  store i64 %3445, i64* %RDI.i190, align 8
  %3467 = add i64 %3439, -65986
  %3468 = add i64 %3439, 26
  %3469 = load i64, i64* %6, align 8
  %3470 = add i64 %3469, -8
  %3471 = inttoptr i64 %3470 to i64*
  store i64 %3468, i64* %3471, align 8
  store i64 %3470, i64* %6, align 8
  store i64 %3467, i64* %3, align 8
  %call2_410fc7 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %3467, %struct.Memory* %MEMORY.29)
  %3472 = load i64, i64* %RAX.i66, align 8
  %3473 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3474 = trunc i64 %3472 to i32
  %3475 = and i32 %3474, 255
  %3476 = tail call i32 @llvm.ctpop.i32(i32 %3475)
  %3477 = trunc i32 %3476 to i8
  %3478 = and i8 %3477, 1
  %3479 = xor i8 %3478, 1
  store i8 %3479, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3480 = icmp eq i64 %3472, 0
  %3481 = zext i1 %3480 to i8
  store i8 %3481, i8* %29, align 1
  %3482 = lshr i64 %3472, 63
  %3483 = trunc i64 %3482 to i8
  store i8 %3483, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v164 = select i1 %3480, i64 45, i64 10
  %3484 = add i64 %3473, %.v164
  store i64 %3484, i64* %3, align 8
  br i1 %3480, label %block_.L_410ff9, label %block_410fd6

block_410fd6:                                     ; preds = %block_.L_410fb2
  %3485 = load i64, i64* %RBP.i, align 8
  %3486 = add i64 %3485, -96
  store i64 %3486, i64* %RDI.i190, align 8
  %3487 = add i64 %3485, -12
  %3488 = add i64 %3484, 11
  store i64 %3488, i64* %3, align 8
  %3489 = inttoptr i64 %3487 to i32*
  store i32 50000, i32* %3489, align 4
  %3490 = load i64, i64* %3, align 8
  store i64 and (i64 ptrtoint (%G__0x428aea_type* @G__0x428aea to i64), i64 4294967295), i64* %RAX.i66, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x428aea_type* @G__0x428aea to i64), i64 4294967295) to i32) to i64), i64* %RSI.i, align 8
  %3491 = add i64 %3490, -66417
  %3492 = add i64 %3490, 12
  %3493 = load i64, i64* %6, align 8
  %3494 = add i64 %3493, -8
  %3495 = inttoptr i64 %3494 to i64*
  store i64 %3492, i64* %3495, align 8
  store i64 %3494, i64* %6, align 8
  store i64 %3491, i64* %3, align 8
  %3496 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %call2_410fc7)
  %3497 = load i64, i64* %RBP.i, align 8
  %3498 = add i64 %3497, -224
  %3499 = load i64, i64* %RAX.i66, align 8
  %3500 = load i64, i64* %3, align 8
  %3501 = add i64 %3500, 7
  store i64 %3501, i64* %3, align 8
  %3502 = inttoptr i64 %3498 to i64*
  store i64 %3499, i64* %3502, align 8
  %3503 = load i64, i64* %3, align 8
  %3504 = add i64 %3503, 167
  br label %block_.L_41109b

block_.L_410ff9:                                  ; preds = %block_.L_410fb2
  store i64 ptrtoint (%G__0x428ae7_type* @G__0x428ae7 to i64), i64* %RSI.i, align 8
  %3505 = load i64, i64* %RBP.i, align 8
  %3506 = add i64 %3505, -8
  %3507 = add i64 %3484, 14
  store i64 %3507, i64* %3, align 8
  %3508 = inttoptr i64 %3506 to i64*
  %3509 = load i64, i64* %3508, align 8
  %3510 = add i64 %3509, 6
  store i64 %3510, i64* %RAX.i66, align 8
  %3511 = icmp ugt i64 %3509, -7
  %3512 = zext i1 %3511 to i8
  store i8 %3512, i8* %14, align 1
  %3513 = trunc i64 %3510 to i32
  %3514 = and i32 %3513, 255
  %3515 = tail call i32 @llvm.ctpop.i32(i32 %3514)
  %3516 = trunc i32 %3515 to i8
  %3517 = and i8 %3516, 1
  %3518 = xor i8 %3517, 1
  store i8 %3518, i8* %21, align 1
  %3519 = xor i64 %3510, %3509
  %3520 = lshr i64 %3519, 4
  %3521 = trunc i64 %3520 to i8
  %3522 = and i8 %3521, 1
  store i8 %3522, i8* %26, align 1
  %3523 = icmp eq i64 %3510, 0
  %3524 = zext i1 %3523 to i8
  store i8 %3524, i8* %29, align 1
  %3525 = lshr i64 %3510, 63
  %3526 = trunc i64 %3525 to i8
  store i8 %3526, i8* %32, align 1
  %3527 = lshr i64 %3509, 63
  %3528 = xor i64 %3525, %3527
  %3529 = add nuw nsw i64 %3528, %3525
  %3530 = icmp eq i64 %3529, 2
  %3531 = zext i1 %3530 to i8
  store i8 %3531, i8* %38, align 1
  store i64 %3510, i64* %RDI.i190, align 8
  %3532 = add i64 %3484, -66057
  %3533 = add i64 %3484, 26
  %3534 = load i64, i64* %6, align 8
  %3535 = add i64 %3534, -8
  %3536 = inttoptr i64 %3535 to i64*
  store i64 %3533, i64* %3536, align 8
  store i64 %3535, i64* %6, align 8
  store i64 %3532, i64* %3, align 8
  %call2_41100e = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %3532, %struct.Memory* %call2_410fc7)
  %3537 = load i64, i64* %RAX.i66, align 8
  %3538 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3539 = trunc i64 %3537 to i32
  %3540 = and i32 %3539, 255
  %3541 = tail call i32 @llvm.ctpop.i32(i32 %3540)
  %3542 = trunc i32 %3541 to i8
  %3543 = and i8 %3542, 1
  %3544 = xor i8 %3543, 1
  store i8 %3544, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3545 = icmp eq i64 %3537, 0
  %3546 = zext i1 %3545 to i8
  store i8 %3546, i8* %29, align 1
  %3547 = lshr i64 %3537, 63
  %3548 = trunc i64 %3547 to i8
  store i8 %3548, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v165 = select i1 %3545, i64 45, i64 10
  %3549 = add i64 %3538, %.v165
  store i64 %3549, i64* %3, align 8
  br i1 %3545, label %block_.L_411040, label %block_41101d

block_41101d:                                     ; preds = %block_.L_410ff9
  %3550 = load i64, i64* %RBP.i, align 8
  %3551 = add i64 %3550, -96
  store i64 %3551, i64* %RDI.i190, align 8
  %3552 = add i64 %3550, -12
  %3553 = add i64 %3549, 11
  store i64 %3553, i64* %3, align 8
  %3554 = inttoptr i64 %3552 to i32*
  store i32 1000, i32* %3554, align 4
  %3555 = load i64, i64* %3, align 8
  store i64 and (i64 ptrtoint (%G__0x428b1f_type* @G__0x428b1f to i64), i64 4294967295), i64* %RAX.i66, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x428b1f_type* @G__0x428b1f to i64), i64 4294967295) to i32) to i64), i64* %RSI.i, align 8
  %3556 = add i64 %3555, -66488
  %3557 = add i64 %3555, 12
  %3558 = load i64, i64* %6, align 8
  %3559 = add i64 %3558, -8
  %3560 = inttoptr i64 %3559 to i64*
  store i64 %3557, i64* %3560, align 8
  store i64 %3559, i64* %6, align 8
  store i64 %3556, i64* %3, align 8
  %3561 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %call2_41100e)
  %3562 = load i64, i64* %RBP.i, align 8
  %3563 = add i64 %3562, -232
  %3564 = load i64, i64* %RAX.i66, align 8
  %3565 = load i64, i64* %3, align 8
  %3566 = add i64 %3565, 7
  store i64 %3566, i64* %3, align 8
  %3567 = inttoptr i64 %3563 to i64*
  store i64 %3564, i64* %3567, align 8
  %3568 = load i64, i64* %3, align 8
  %3569 = add i64 %3568, 91
  br label %block_.L_411096

block_.L_411040:                                  ; preds = %block_.L_410ff9
  store i64 ptrtoint (%G__0x428ae8_type* @G__0x428ae8 to i64), i64* %RSI.i, align 8
  %3570 = load i64, i64* %RBP.i, align 8
  %3571 = add i64 %3570, -8
  %3572 = add i64 %3549, 14
  store i64 %3572, i64* %3, align 8
  %3573 = inttoptr i64 %3571 to i64*
  %3574 = load i64, i64* %3573, align 8
  %3575 = add i64 %3574, 6
  store i64 %3575, i64* %RAX.i66, align 8
  %3576 = icmp ugt i64 %3574, -7
  %3577 = zext i1 %3576 to i8
  store i8 %3577, i8* %14, align 1
  %3578 = trunc i64 %3575 to i32
  %3579 = and i32 %3578, 255
  %3580 = tail call i32 @llvm.ctpop.i32(i32 %3579)
  %3581 = trunc i32 %3580 to i8
  %3582 = and i8 %3581, 1
  %3583 = xor i8 %3582, 1
  store i8 %3583, i8* %21, align 1
  %3584 = xor i64 %3575, %3574
  %3585 = lshr i64 %3584, 4
  %3586 = trunc i64 %3585 to i8
  %3587 = and i8 %3586, 1
  store i8 %3587, i8* %26, align 1
  %3588 = icmp eq i64 %3575, 0
  %3589 = zext i1 %3588 to i8
  store i8 %3589, i8* %29, align 1
  %3590 = lshr i64 %3575, 63
  %3591 = trunc i64 %3590 to i8
  store i8 %3591, i8* %32, align 1
  %3592 = lshr i64 %3574, 63
  %3593 = xor i64 %3590, %3592
  %3594 = add nuw nsw i64 %3593, %3590
  %3595 = icmp eq i64 %3594, 2
  %3596 = zext i1 %3595 to i8
  store i8 %3596, i8* %38, align 1
  store i64 %3575, i64* %RDI.i190, align 8
  %3597 = add i64 %3549, -66128
  %3598 = add i64 %3549, 26
  %3599 = load i64, i64* %6, align 8
  %3600 = add i64 %3599, -8
  %3601 = inttoptr i64 %3600 to i64*
  store i64 %3598, i64* %3601, align 8
  store i64 %3600, i64* %6, align 8
  store i64 %3597, i64* %3, align 8
  %call2_411055 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %3597, %struct.Memory* %call2_41100e)
  %3602 = load i64, i64* %RAX.i66, align 8
  %3603 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3604 = trunc i64 %3602 to i32
  %3605 = and i32 %3604, 255
  %3606 = tail call i32 @llvm.ctpop.i32(i32 %3605)
  %3607 = trunc i32 %3606 to i8
  %3608 = and i8 %3607, 1
  %3609 = xor i8 %3608, 1
  store i8 %3609, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3610 = icmp eq i64 %3602, 0
  %3611 = zext i1 %3610 to i8
  store i8 %3611, i8* %29, align 1
  %3612 = lshr i64 %3602, 63
  %3613 = trunc i64 %3612 to i8
  store i8 %3613, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v166 = select i1 %3610, i64 45, i64 10
  %3614 = add i64 %3603, %.v166
  store i64 %3614, i64* %3, align 8
  br i1 %3610, label %block_.L_411087, label %block_411064

block_411064:                                     ; preds = %block_.L_411040
  %3615 = load i64, i64* %RBP.i, align 8
  %3616 = add i64 %3615, -96
  store i64 %3616, i64* %RDI.i190, align 8
  %3617 = add i64 %3615, -12
  %3618 = add i64 %3614, 11
  store i64 %3618, i64* %3, align 8
  %3619 = inttoptr i64 %3617 to i32*
  store i32 150, i32* %3619, align 4
  %3620 = load i64, i64* %3, align 8
  store i64 and (i64 ptrtoint (%G__0x428b53_type* @G__0x428b53 to i64), i64 4294967295), i64* %RAX.i66, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x428b53_type* @G__0x428b53 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i, align 8
  %3621 = add i64 %3620, -66559
  %3622 = add i64 %3620, 12
  %3623 = load i64, i64* %6, align 8
  %3624 = add i64 %3623, -8
  %3625 = inttoptr i64 %3624 to i64*
  store i64 %3622, i64* %3625, align 8
  store i64 %3624, i64* %6, align 8
  store i64 %3621, i64* %3, align 8
  %3626 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %call2_411055)
  %3627 = load i64, i64* %RBP.i, align 8
  %3628 = add i64 %3627, -240
  %3629 = load i64, i64* %RAX.i66, align 8
  %3630 = load i64, i64* %3, align 8
  %3631 = add i64 %3630, 7
  store i64 %3631, i64* %3, align 8
  %3632 = inttoptr i64 %3628 to i64*
  store i64 %3629, i64* %3632, align 8
  %3633 = load i64, i64* %3, align 8
  %3634 = add i64 %3633, 15
  store i64 %3634, i64* %3, align 8
  br label %block_.L_411091

block_.L_411087:                                  ; preds = %block_.L_411040
  %3635 = and i64 %3602, 4294967295
  store i64 %3635, i64* %RAX.i66, align 8
  store i8 0, i8* %14, align 1
  store i8 %3609, i8* %21, align 1
  %3636 = icmp eq i32 %3604, 0
  %3637 = zext i1 %3636 to i8
  store i8 %3637, i8* %29, align 1
  %3638 = lshr i32 %3604, 31
  %3639 = trunc i32 %3638 to i8
  store i8 %3639, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3640 = and i64 %3602, 4294967295
  store i64 %3640, i64* %RCX.i96, align 8
  %3641 = add i64 %3614, 10
  store i64 %3641, i64* %3, align 8
  %3642 = inttoptr i64 %3640 to i32*
  store i32 0, i32* %3642, align 4
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_411091

block_.L_411091:                                  ; preds = %block_.L_411087, %block_411064
  %3643 = phi i64 [ %.pre109, %block_.L_411087 ], [ %3634, %block_411064 ]
  %MEMORY.30 = phi %struct.Memory* [ %call2_411055, %block_.L_411087 ], [ %3626, %block_411064 ]
  %3644 = add i64 %3643, 5
  store i64 %3644, i64* %3, align 8
  br label %block_.L_411096

block_.L_411096:                                  ; preds = %block_.L_411091, %block_41101d
  %storemerge97 = phi i64 [ %3569, %block_41101d ], [ %3644, %block_.L_411091 ]
  %MEMORY.31 = phi %struct.Memory* [ %3561, %block_41101d ], [ %MEMORY.30, %block_.L_411091 ]
  %3645 = add i64 %storemerge97, 5
  store i64 %3645, i64* %3, align 8
  br label %block_.L_41109b

block_.L_41109b:                                  ; preds = %block_.L_411096, %block_410fd6
  %storemerge96 = phi i64 [ %3504, %block_410fd6 ], [ %3645, %block_.L_411096 ]
  %MEMORY.32 = phi %struct.Memory* [ %3496, %block_410fd6 ], [ %MEMORY.31, %block_.L_411096 ]
  %3646 = add i64 %storemerge96, 5
  store i64 %3646, i64* %3, align 8
  br label %block_.L_4110a0

block_.L_4110a0:                                  ; preds = %block_.L_41109b, %block_.L_410f96
  %storemerge94 = phi i64 [ %3438, %block_.L_410f96 ], [ %3646, %block_.L_41109b ]
  %MEMORY.33 = phi %struct.Memory* [ %3430, %block_.L_410f96 ], [ %MEMORY.32, %block_.L_41109b ]
  store i64 ptrtoint (%G__0x429b31_type* @G__0x429b31 to i64), i64* %RSI.i, align 8
  %3647 = load i64, i64* %RBP.i, align 8
  %3648 = add i64 %3647, -8
  %3649 = add i64 %storemerge94, 14
  store i64 %3649, i64* %3, align 8
  %3650 = inttoptr i64 %3648 to i64*
  %3651 = load i64, i64* %3650, align 8
  %3652 = add i64 %3651, 6
  store i64 %3652, i64* %RAX.i66, align 8
  %3653 = icmp ugt i64 %3651, -7
  %3654 = zext i1 %3653 to i8
  store i8 %3654, i8* %14, align 1
  %3655 = trunc i64 %3652 to i32
  %3656 = and i32 %3655, 255
  %3657 = tail call i32 @llvm.ctpop.i32(i32 %3656)
  %3658 = trunc i32 %3657 to i8
  %3659 = and i8 %3658, 1
  %3660 = xor i8 %3659, 1
  store i8 %3660, i8* %21, align 1
  %3661 = xor i64 %3652, %3651
  %3662 = lshr i64 %3661, 4
  %3663 = trunc i64 %3662 to i8
  %3664 = and i8 %3663, 1
  store i8 %3664, i8* %26, align 1
  %3665 = icmp eq i64 %3652, 0
  %3666 = zext i1 %3665 to i8
  store i8 %3666, i8* %29, align 1
  %3667 = lshr i64 %3652, 63
  %3668 = trunc i64 %3667 to i8
  store i8 %3668, i8* %32, align 1
  %3669 = lshr i64 %3651, 63
  %3670 = xor i64 %3667, %3669
  %3671 = add nuw nsw i64 %3670, %3667
  %3672 = icmp eq i64 %3671, 2
  %3673 = zext i1 %3672 to i8
  store i8 %3673, i8* %38, align 1
  store i64 %3652, i64* %RDI.i190, align 8
  %3674 = add i64 %storemerge94, -66224
  %3675 = add i64 %storemerge94, 26
  %3676 = load i64, i64* %6, align 8
  %3677 = add i64 %3676, -8
  %3678 = inttoptr i64 %3677 to i64*
  store i64 %3675, i64* %3678, align 8
  store i64 %3677, i64* %6, align 8
  store i64 %3674, i64* %3, align 8
  %call2_4110b5 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %3674, %struct.Memory* %MEMORY.33)
  %3679 = load i64, i64* %RAX.i66, align 8
  %3680 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3681 = trunc i64 %3679 to i32
  %3682 = and i32 %3681, 255
  %3683 = tail call i32 @llvm.ctpop.i32(i32 %3682)
  %3684 = trunc i32 %3683 to i8
  %3685 = and i8 %3684, 1
  %3686 = xor i8 %3685, 1
  store i8 %3686, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3687 = icmp eq i64 %3679, 0
  %3688 = zext i1 %3687 to i8
  store i8 %3688, i8* %29, align 1
  %3689 = lshr i64 %3679, 63
  %3690 = trunc i64 %3689 to i8
  store i8 %3690, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v146 = select i1 %3687, i64 90, i64 10
  %3691 = add i64 %3680, %.v146
  store i64 %3691, i64* %3, align 8
  br i1 %3687, label %block_.L_411114, label %block_4110c4

block_4110c4:                                     ; preds = %block_.L_4110a0
  %3692 = load i32, i32* bitcast (%G_0x886b84_type* @G_0x886b84 to i32*), align 8
  %3693 = add i32 %3692, -1
  %3694 = icmp eq i32 %3692, 0
  %3695 = zext i1 %3694 to i8
  store i8 %3695, i8* %14, align 1
  %3696 = and i32 %3693, 255
  %3697 = tail call i32 @llvm.ctpop.i32(i32 %3696)
  %3698 = trunc i32 %3697 to i8
  %3699 = and i8 %3698, 1
  %3700 = xor i8 %3699, 1
  store i8 %3700, i8* %21, align 1
  %3701 = xor i32 %3693, %3692
  %3702 = lshr i32 %3701, 4
  %3703 = trunc i32 %3702 to i8
  %3704 = and i8 %3703, 1
  store i8 %3704, i8* %26, align 1
  %3705 = icmp eq i32 %3693, 0
  %3706 = zext i1 %3705 to i8
  store i8 %3706, i8* %29, align 1
  %3707 = lshr i32 %3693, 31
  %3708 = trunc i32 %3707 to i8
  store i8 %3708, i8* %32, align 1
  %3709 = lshr i32 %3692, 31
  %3710 = xor i32 %3707, %3709
  %3711 = add nuw nsw i32 %3710, %3709
  %3712 = icmp eq i32 %3711, 2
  %3713 = zext i1 %3712 to i8
  store i8 %3713, i8* %38, align 1
  %.v147 = select i1 %3705, i64 14, i64 36
  %3714 = add i64 %3691, %.v147
  %3715 = add i64 %3714, 7
  store i64 %3715, i64* %3, align 8
  br i1 %3705, label %block_4110d2, label %block_.L_4110e8

block_4110d2:                                     ; preds = %block_4110c4
  %3716 = load i32, i32* bitcast (%G_0x62d7d0_type* @G_0x62d7d0 to i32*), align 8
  %3717 = zext i32 %3716 to i64
  store i64 %3717, i64* %RAX.i66, align 8
  %3718 = load i64, i64* %RBP.i, align 8
  %3719 = add i64 %3718, -12
  %3720 = add i64 %3714, 10
  store i64 %3720, i64* %3, align 8
  %3721 = inttoptr i64 %3719 to i32*
  %3722 = load i32, i32* %3721, align 4
  %3723 = sub i32 %3716, %3722
  %3724 = zext i32 %3723 to i64
  store i64 %3724, i64* %RAX.i66, align 8
  %3725 = icmp ult i32 %3716, %3722
  %3726 = zext i1 %3725 to i8
  store i8 %3726, i8* %14, align 1
  %3727 = and i32 %3723, 255
  %3728 = tail call i32 @llvm.ctpop.i32(i32 %3727)
  %3729 = trunc i32 %3728 to i8
  %3730 = and i8 %3729, 1
  %3731 = xor i8 %3730, 1
  store i8 %3731, i8* %21, align 1
  %3732 = xor i32 %3722, %3716
  %3733 = xor i32 %3732, %3723
  %3734 = lshr i32 %3733, 4
  %3735 = trunc i32 %3734 to i8
  %3736 = and i8 %3735, 1
  store i8 %3736, i8* %26, align 1
  %3737 = icmp eq i32 %3723, 0
  %3738 = zext i1 %3737 to i8
  store i8 %3738, i8* %29, align 1
  %3739 = lshr i32 %3723, 31
  %3740 = trunc i32 %3739 to i8
  store i8 %3740, i8* %32, align 1
  %3741 = lshr i32 %3716, 31
  %3742 = lshr i32 %3722, 31
  %3743 = xor i32 %3742, %3741
  %3744 = xor i32 %3739, %3741
  %3745 = add nuw nsw i32 %3744, %3743
  %3746 = icmp eq i32 %3745, 2
  %3747 = zext i1 %3746 to i8
  store i8 %3747, i8* %38, align 1
  store i32 %3723, i32* bitcast (%G_0x62d790_type* @G_0x62d790 to i32*), align 8
  %3748 = add i64 %3714, 39
  store i64 %3748, i64* %3, align 8
  br label %block_.L_4110f9

block_.L_4110e8:                                  ; preds = %block_4110c4
  %3749 = load i32, i32* bitcast (%G_0x62d7cc_type* @G_0x62d7cc to i32*), align 8
  %3750 = zext i32 %3749 to i64
  store i64 %3750, i64* %RAX.i66, align 8
  %3751 = load i64, i64* %RBP.i, align 8
  %3752 = add i64 %3751, -12
  %3753 = add i64 %3714, 10
  store i64 %3753, i64* %3, align 8
  %3754 = inttoptr i64 %3752 to i32*
  %3755 = load i32, i32* %3754, align 4
  %3756 = add i32 %3755, %3749
  %3757 = zext i32 %3756 to i64
  store i64 %3757, i64* %RAX.i66, align 8
  %3758 = icmp ult i32 %3756, %3749
  %3759 = icmp ult i32 %3756, %3755
  %3760 = or i1 %3758, %3759
  %3761 = zext i1 %3760 to i8
  store i8 %3761, i8* %14, align 1
  %3762 = and i32 %3756, 255
  %3763 = tail call i32 @llvm.ctpop.i32(i32 %3762)
  %3764 = trunc i32 %3763 to i8
  %3765 = and i8 %3764, 1
  %3766 = xor i8 %3765, 1
  store i8 %3766, i8* %21, align 1
  %3767 = xor i32 %3755, %3749
  %3768 = xor i32 %3767, %3756
  %3769 = lshr i32 %3768, 4
  %3770 = trunc i32 %3769 to i8
  %3771 = and i8 %3770, 1
  store i8 %3771, i8* %26, align 1
  %3772 = icmp eq i32 %3756, 0
  %3773 = zext i1 %3772 to i8
  store i8 %3773, i8* %29, align 1
  %3774 = lshr i32 %3756, 31
  %3775 = trunc i32 %3774 to i8
  store i8 %3775, i8* %32, align 1
  %3776 = lshr i32 %3749, 31
  %3777 = lshr i32 %3755, 31
  %3778 = xor i32 %3774, %3776
  %3779 = xor i32 %3774, %3777
  %3780 = add nuw nsw i32 %3778, %3779
  %3781 = icmp eq i32 %3780, 2
  %3782 = zext i1 %3781 to i8
  store i8 %3782, i8* %38, align 1
  %3783 = add i64 %3714, 17
  store i64 %3783, i64* %3, align 8
  store i32 %3756, i32* bitcast (%G_0x62d78c_type* @G_0x62d78c to i32*), align 8
  br label %block_.L_4110f9

block_.L_4110f9:                                  ; preds = %block_.L_4110e8, %block_4110d2
  %3784 = phi i64 [ %3751, %block_.L_4110e8 ], [ %3718, %block_4110d2 ]
  %3785 = phi i64 [ %3783, %block_.L_4110e8 ], [ %3748, %block_4110d2 ]
  store i64 ptrtoint (%G__0x4289fd_type* @G__0x4289fd to i64), i64* %RDI.i190, align 8
  %3786 = add i64 %3784, -96
  store i64 %3786, i64* %RSI.i, align 8
  %AL.i727 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i727, align 1
  %3787 = add i64 %3785, -66633
  %3788 = add i64 %3785, 21
  %3789 = load i64, i64* %6, align 8
  %3790 = add i64 %3789, -8
  %3791 = inttoptr i64 %3790 to i64*
  store i64 %3788, i64* %3791, align 8
  store i64 %3790, i64* %6, align 8
  store i64 %3787, i64* %3, align 8
  %3792 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4110b5)
  %3793 = load i64, i64* %RBP.i, align 8
  %3794 = add i64 %3793, -244
  %3795 = load i32, i32* %EAX.i76, align 4
  %3796 = load i64, i64* %3, align 8
  %3797 = add i64 %3796, 6
  store i64 %3797, i64* %3, align 8
  %3798 = inttoptr i64 %3794 to i32*
  store i32 %3795, i32* %3798, align 4
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_411114

block_.L_411114:                                  ; preds = %block_.L_4110f9, %block_.L_4110a0
  %3799 = phi i64 [ %3691, %block_.L_4110a0 ], [ %.pre110, %block_.L_4110f9 ]
  %MEMORY.35 = phi %struct.Memory* [ %call2_4110b5, %block_.L_4110a0 ], [ %3792, %block_.L_4110f9 ]
  store i64 ptrtoint (%G__0x429b45_type* @G__0x429b45 to i64), i64* %RSI.i, align 8
  %3800 = load i64, i64* %RBP.i, align 8
  %3801 = add i64 %3800, -8
  %3802 = add i64 %3799, 14
  store i64 %3802, i64* %3, align 8
  %3803 = inttoptr i64 %3801 to i64*
  %3804 = load i64, i64* %3803, align 8
  %3805 = add i64 %3804, 6
  store i64 %3805, i64* %RAX.i66, align 8
  %3806 = icmp ugt i64 %3804, -7
  %3807 = zext i1 %3806 to i8
  store i8 %3807, i8* %14, align 1
  %3808 = trunc i64 %3805 to i32
  %3809 = and i32 %3808, 255
  %3810 = tail call i32 @llvm.ctpop.i32(i32 %3809)
  %3811 = trunc i32 %3810 to i8
  %3812 = and i8 %3811, 1
  %3813 = xor i8 %3812, 1
  store i8 %3813, i8* %21, align 1
  %3814 = xor i64 %3805, %3804
  %3815 = lshr i64 %3814, 4
  %3816 = trunc i64 %3815 to i8
  %3817 = and i8 %3816, 1
  store i8 %3817, i8* %26, align 1
  %3818 = icmp eq i64 %3805, 0
  %3819 = zext i1 %3818 to i8
  store i8 %3819, i8* %29, align 1
  %3820 = lshr i64 %3805, 63
  %3821 = trunc i64 %3820 to i8
  store i8 %3821, i8* %32, align 1
  %3822 = lshr i64 %3804, 63
  %3823 = xor i64 %3820, %3822
  %3824 = add nuw nsw i64 %3823, %3820
  %3825 = icmp eq i64 %3824, 2
  %3826 = zext i1 %3825 to i8
  store i8 %3826, i8* %38, align 1
  store i64 %3805, i64* %RDI.i190, align 8
  %3827 = add i64 %3799, -66340
  %3828 = add i64 %3799, 26
  %3829 = load i64, i64* %6, align 8
  %3830 = add i64 %3829, -8
  %3831 = inttoptr i64 %3830 to i64*
  store i64 %3828, i64* %3831, align 8
  store i64 %3830, i64* %6, align 8
  store i64 %3827, i64* %3, align 8
  %call2_411129 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %3827, %struct.Memory* %MEMORY.35)
  %3832 = load i64, i64* %RAX.i66, align 8
  %3833 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3834 = trunc i64 %3832 to i32
  %3835 = and i32 %3834, 255
  %3836 = tail call i32 @llvm.ctpop.i32(i32 %3835)
  %3837 = trunc i32 %3836 to i8
  %3838 = and i8 %3837, 1
  %3839 = xor i8 %3838, 1
  store i8 %3839, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3840 = icmp eq i64 %3832, 0
  %3841 = zext i1 %3840 to i8
  store i8 %3841, i8* %29, align 1
  %3842 = lshr i64 %3832, 63
  %3843 = trunc i64 %3842 to i8
  store i8 %3843, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v148 = select i1 %3840, i64 143, i64 10
  %3844 = add i64 %3833, %.v148
  store i64 %3844, i64* %3, align 8
  br i1 %3840, label %block_.L_4111bd, label %block_411138

block_411138:                                     ; preds = %block_.L_411114
  %3845 = load i32, i32* bitcast (%G_0x886b84_type* @G_0x886b84 to i32*), align 8
  %3846 = add i32 %3845, -1
  %3847 = icmp eq i32 %3845, 0
  %3848 = zext i1 %3847 to i8
  store i8 %3848, i8* %14, align 1
  %3849 = and i32 %3846, 255
  %3850 = tail call i32 @llvm.ctpop.i32(i32 %3849)
  %3851 = trunc i32 %3850 to i8
  %3852 = and i8 %3851, 1
  %3853 = xor i8 %3852, 1
  store i8 %3853, i8* %21, align 1
  %3854 = xor i32 %3846, %3845
  %3855 = lshr i32 %3854, 4
  %3856 = trunc i32 %3855 to i8
  %3857 = and i8 %3856, 1
  store i8 %3857, i8* %26, align 1
  %3858 = icmp eq i32 %3846, 0
  %3859 = zext i1 %3858 to i8
  store i8 %3859, i8* %29, align 1
  %3860 = lshr i32 %3846, 31
  %3861 = trunc i32 %3860 to i8
  store i8 %3861, i8* %32, align 1
  %3862 = lshr i32 %3845, 31
  %3863 = xor i32 %3860, %3862
  %3864 = add nuw nsw i32 %3863, %3862
  %3865 = icmp eq i32 %3864, 2
  %3866 = zext i1 %3865 to i8
  store i8 %3866, i8* %38, align 1
  %.v149 = select i1 %3858, i64 14, i64 36
  %3867 = add i64 %3844, %.v149
  %3868 = add i64 %3867, 7
  store i64 %3868, i64* %3, align 8
  br i1 %3858, label %block_411146, label %block_.L_41115c

block_411146:                                     ; preds = %block_411138
  %3869 = load i32, i32* bitcast (%G_0x62d7f0_type* @G_0x62d7f0 to i32*), align 8
  %3870 = zext i32 %3869 to i64
  store i64 %3870, i64* %RAX.i66, align 8
  %3871 = load i64, i64* %RBP.i, align 8
  %3872 = add i64 %3871, -12
  %3873 = add i64 %3867, 10
  store i64 %3873, i64* %3, align 8
  %3874 = inttoptr i64 %3872 to i32*
  %3875 = load i32, i32* %3874, align 4
  %3876 = sub i32 %3869, %3875
  %3877 = zext i32 %3876 to i64
  store i64 %3877, i64* %RAX.i66, align 8
  %3878 = icmp ult i32 %3869, %3875
  %3879 = zext i1 %3878 to i8
  store i8 %3879, i8* %14, align 1
  %3880 = and i32 %3876, 255
  %3881 = tail call i32 @llvm.ctpop.i32(i32 %3880)
  %3882 = trunc i32 %3881 to i8
  %3883 = and i8 %3882, 1
  %3884 = xor i8 %3883, 1
  store i8 %3884, i8* %21, align 1
  %3885 = xor i32 %3875, %3869
  %3886 = xor i32 %3885, %3876
  %3887 = lshr i32 %3886, 4
  %3888 = trunc i32 %3887 to i8
  %3889 = and i8 %3888, 1
  store i8 %3889, i8* %26, align 1
  %3890 = icmp eq i32 %3876, 0
  %3891 = zext i1 %3890 to i8
  store i8 %3891, i8* %29, align 1
  %3892 = lshr i32 %3876, 31
  %3893 = trunc i32 %3892 to i8
  store i8 %3893, i8* %32, align 1
  %3894 = lshr i32 %3869, 31
  %3895 = lshr i32 %3875, 31
  %3896 = xor i32 %3895, %3894
  %3897 = xor i32 %3892, %3894
  %3898 = add nuw nsw i32 %3897, %3896
  %3899 = icmp eq i32 %3898, 2
  %3900 = zext i1 %3899 to i8
  store i8 %3900, i8* %38, align 1
  store i32 %3876, i32* bitcast (%G_0x62d7b0_type* @G_0x62d7b0 to i32*), align 8
  %3901 = add i64 %3867, 39
  store i64 %3901, i64* %3, align 8
  br label %block_.L_41116d

block_.L_41115c:                                  ; preds = %block_411138
  %3902 = load i32, i32* bitcast (%G_0x62d7ec_type* @G_0x62d7ec to i32*), align 8
  %3903 = zext i32 %3902 to i64
  store i64 %3903, i64* %RAX.i66, align 8
  %3904 = load i64, i64* %RBP.i, align 8
  %3905 = add i64 %3904, -12
  %3906 = add i64 %3867, 10
  store i64 %3906, i64* %3, align 8
  %3907 = inttoptr i64 %3905 to i32*
  %3908 = load i32, i32* %3907, align 4
  %3909 = add i32 %3908, %3902
  %3910 = zext i32 %3909 to i64
  store i64 %3910, i64* %RAX.i66, align 8
  %3911 = icmp ult i32 %3909, %3902
  %3912 = icmp ult i32 %3909, %3908
  %3913 = or i1 %3911, %3912
  %3914 = zext i1 %3913 to i8
  store i8 %3914, i8* %14, align 1
  %3915 = and i32 %3909, 255
  %3916 = tail call i32 @llvm.ctpop.i32(i32 %3915)
  %3917 = trunc i32 %3916 to i8
  %3918 = and i8 %3917, 1
  %3919 = xor i8 %3918, 1
  store i8 %3919, i8* %21, align 1
  %3920 = xor i32 %3908, %3902
  %3921 = xor i32 %3920, %3909
  %3922 = lshr i32 %3921, 4
  %3923 = trunc i32 %3922 to i8
  %3924 = and i8 %3923, 1
  store i8 %3924, i8* %26, align 1
  %3925 = icmp eq i32 %3909, 0
  %3926 = zext i1 %3925 to i8
  store i8 %3926, i8* %29, align 1
  %3927 = lshr i32 %3909, 31
  %3928 = trunc i32 %3927 to i8
  store i8 %3928, i8* %32, align 1
  %3929 = lshr i32 %3902, 31
  %3930 = lshr i32 %3908, 31
  %3931 = xor i32 %3927, %3929
  %3932 = xor i32 %3927, %3930
  %3933 = add nuw nsw i32 %3931, %3932
  %3934 = icmp eq i32 %3933, 2
  %3935 = zext i1 %3934 to i8
  store i8 %3935, i8* %38, align 1
  %3936 = add i64 %3867, 17
  store i64 %3936, i64* %3, align 8
  store i32 %3909, i32* bitcast (%G_0x62d7ac_type* @G_0x62d7ac to i32*), align 8
  br label %block_.L_41116d

block_.L_41116d:                                  ; preds = %block_.L_41115c, %block_411146
  %3937 = phi i64 [ %3904, %block_.L_41115c ], [ %3871, %block_411146 ]
  %3938 = phi i64 [ %3936, %block_.L_41115c ], [ %3901, %block_411146 ]
  store i8 %3848, i8* %14, align 1
  store i8 %3853, i8* %21, align 1
  store i8 %3857, i8* %26, align 1
  store i8 %3859, i8* %29, align 1
  store i8 %3861, i8* %32, align 1
  store i8 %3866, i8* %38, align 1
  %.v150 = select i1 %3858, i64 14, i64 36
  %3939 = add i64 %3938, %.v150
  %3940 = add i64 %3939, 7
  store i64 %3940, i64* %3, align 8
  br i1 %3858, label %block_41117b, label %block_.L_411191

block_41117b:                                     ; preds = %block_.L_41116d
  %3941 = load i32, i32* bitcast (%G_0x62d7e8_type* @G_0x62d7e8 to i32*), align 8
  %3942 = zext i32 %3941 to i64
  store i64 %3942, i64* %RAX.i66, align 8
  %3943 = add i64 %3937, -12
  %3944 = add i64 %3939, 10
  store i64 %3944, i64* %3, align 8
  %3945 = inttoptr i64 %3943 to i32*
  %3946 = load i32, i32* %3945, align 4
  %3947 = sub i32 %3941, %3946
  %3948 = zext i32 %3947 to i64
  store i64 %3948, i64* %RAX.i66, align 8
  %3949 = icmp ult i32 %3941, %3946
  %3950 = zext i1 %3949 to i8
  store i8 %3950, i8* %14, align 1
  %3951 = and i32 %3947, 255
  %3952 = tail call i32 @llvm.ctpop.i32(i32 %3951)
  %3953 = trunc i32 %3952 to i8
  %3954 = and i8 %3953, 1
  %3955 = xor i8 %3954, 1
  store i8 %3955, i8* %21, align 1
  %3956 = xor i32 %3946, %3941
  %3957 = xor i32 %3956, %3947
  %3958 = lshr i32 %3957, 4
  %3959 = trunc i32 %3958 to i8
  %3960 = and i8 %3959, 1
  store i8 %3960, i8* %26, align 1
  %3961 = icmp eq i32 %3947, 0
  %3962 = zext i1 %3961 to i8
  store i8 %3962, i8* %29, align 1
  %3963 = lshr i32 %3947, 31
  %3964 = trunc i32 %3963 to i8
  store i8 %3964, i8* %32, align 1
  %3965 = lshr i32 %3941, 31
  %3966 = lshr i32 %3946, 31
  %3967 = xor i32 %3966, %3965
  %3968 = xor i32 %3963, %3965
  %3969 = add nuw nsw i32 %3968, %3967
  %3970 = icmp eq i32 %3969, 2
  %3971 = zext i1 %3970 to i8
  store i8 %3971, i8* %38, align 1
  store i32 %3947, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  %3972 = add i64 %3939, 39
  store i64 %3972, i64* %3, align 8
  br label %block_.L_4111a2

block_.L_411191:                                  ; preds = %block_.L_41116d
  %3973 = load i32, i32* bitcast (%G_0x62d7e4_type* @G_0x62d7e4 to i32*), align 8
  %3974 = zext i32 %3973 to i64
  store i64 %3974, i64* %RAX.i66, align 8
  %3975 = add i64 %3937, -12
  %3976 = add i64 %3939, 10
  store i64 %3976, i64* %3, align 8
  %3977 = inttoptr i64 %3975 to i32*
  %3978 = load i32, i32* %3977, align 4
  %3979 = add i32 %3978, %3973
  %3980 = zext i32 %3979 to i64
  store i64 %3980, i64* %RAX.i66, align 8
  %3981 = icmp ult i32 %3979, %3973
  %3982 = icmp ult i32 %3979, %3978
  %3983 = or i1 %3981, %3982
  %3984 = zext i1 %3983 to i8
  store i8 %3984, i8* %14, align 1
  %3985 = and i32 %3979, 255
  %3986 = tail call i32 @llvm.ctpop.i32(i32 %3985)
  %3987 = trunc i32 %3986 to i8
  %3988 = and i8 %3987, 1
  %3989 = xor i8 %3988, 1
  store i8 %3989, i8* %21, align 1
  %3990 = xor i32 %3978, %3973
  %3991 = xor i32 %3990, %3979
  %3992 = lshr i32 %3991, 4
  %3993 = trunc i32 %3992 to i8
  %3994 = and i8 %3993, 1
  store i8 %3994, i8* %26, align 1
  %3995 = icmp eq i32 %3979, 0
  %3996 = zext i1 %3995 to i8
  store i8 %3996, i8* %29, align 1
  %3997 = lshr i32 %3979, 31
  %3998 = trunc i32 %3997 to i8
  store i8 %3998, i8* %32, align 1
  %3999 = lshr i32 %3973, 31
  %4000 = lshr i32 %3978, 31
  %4001 = xor i32 %3997, %3999
  %4002 = xor i32 %3997, %4000
  %4003 = add nuw nsw i32 %4001, %4002
  %4004 = icmp eq i32 %4003, 2
  %4005 = zext i1 %4004 to i8
  store i8 %4005, i8* %38, align 1
  %4006 = add i64 %3939, 17
  store i64 %4006, i64* %3, align 8
  store i32 %3979, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  br label %block_.L_4111a2

block_.L_4111a2:                                  ; preds = %block_.L_411191, %block_41117b
  %4007 = phi i64 [ %4006, %block_.L_411191 ], [ %3972, %block_41117b ]
  store i64 ptrtoint (%G__0x428a1a_type* @G__0x428a1a to i64), i64* %RDI.i190, align 8
  %4008 = add i64 %3937, -96
  store i64 %4008, i64* %RSI.i, align 8
  %AL.i665 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i665, align 1
  %4009 = add i64 %4007, -66802
  %4010 = add i64 %4007, 21
  %4011 = load i64, i64* %6, align 8
  %4012 = add i64 %4011, -8
  %4013 = inttoptr i64 %4012 to i64*
  store i64 %4010, i64* %4013, align 8
  store i64 %4012, i64* %6, align 8
  store i64 %4009, i64* %3, align 8
  %4014 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_411129)
  %4015 = load i64, i64* %RBP.i, align 8
  %4016 = add i64 %4015, -248
  %4017 = load i32, i32* %EAX.i76, align 4
  %4018 = load i64, i64* %3, align 8
  %4019 = add i64 %4018, 6
  store i64 %4019, i64* %3, align 8
  %4020 = inttoptr i64 %4016 to i32*
  store i32 %4017, i32* %4020, align 4
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_4111bd

block_.L_4111bd:                                  ; preds = %block_.L_4111a2, %block_.L_411114
  %4021 = phi i64 [ %3844, %block_.L_411114 ], [ %.pre111, %block_.L_4111a2 ]
  %MEMORY.38 = phi %struct.Memory* [ %call2_411129, %block_.L_411114 ], [ %4014, %block_.L_4111a2 ]
  store i64 ptrtoint (%G__0x429b3b_type* @G__0x429b3b to i64), i64* %RSI.i, align 8
  %4022 = load i64, i64* %RBP.i, align 8
  %4023 = add i64 %4022, -8
  %4024 = add i64 %4021, 14
  store i64 %4024, i64* %3, align 8
  %4025 = inttoptr i64 %4023 to i64*
  %4026 = load i64, i64* %4025, align 8
  %4027 = add i64 %4026, 6
  store i64 %4027, i64* %RAX.i66, align 8
  %4028 = icmp ugt i64 %4026, -7
  %4029 = zext i1 %4028 to i8
  store i8 %4029, i8* %14, align 1
  %4030 = trunc i64 %4027 to i32
  %4031 = and i32 %4030, 255
  %4032 = tail call i32 @llvm.ctpop.i32(i32 %4031)
  %4033 = trunc i32 %4032 to i8
  %4034 = and i8 %4033, 1
  %4035 = xor i8 %4034, 1
  store i8 %4035, i8* %21, align 1
  %4036 = xor i64 %4027, %4026
  %4037 = lshr i64 %4036, 4
  %4038 = trunc i64 %4037 to i8
  %4039 = and i8 %4038, 1
  store i8 %4039, i8* %26, align 1
  %4040 = icmp eq i64 %4027, 0
  %4041 = zext i1 %4040 to i8
  store i8 %4041, i8* %29, align 1
  %4042 = lshr i64 %4027, 63
  %4043 = trunc i64 %4042 to i8
  store i8 %4043, i8* %32, align 1
  %4044 = lshr i64 %4026, 63
  %4045 = xor i64 %4042, %4044
  %4046 = add nuw nsw i64 %4045, %4042
  %4047 = icmp eq i64 %4046, 2
  %4048 = zext i1 %4047 to i8
  store i8 %4048, i8* %38, align 1
  store i64 %4027, i64* %RDI.i190, align 8
  %4049 = add i64 %4021, -66509
  %4050 = add i64 %4021, 26
  %4051 = load i64, i64* %6, align 8
  %4052 = add i64 %4051, -8
  %4053 = inttoptr i64 %4052 to i64*
  store i64 %4050, i64* %4053, align 8
  store i64 %4052, i64* %6, align 8
  store i64 %4049, i64* %3, align 8
  %call2_4111d2 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %4049, %struct.Memory* %MEMORY.38)
  %4054 = load i64, i64* %RAX.i66, align 8
  %4055 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4056 = trunc i64 %4054 to i32
  %4057 = and i32 %4056, 255
  %4058 = tail call i32 @llvm.ctpop.i32(i32 %4057)
  %4059 = trunc i32 %4058 to i8
  %4060 = and i8 %4059, 1
  %4061 = xor i8 %4060, 1
  store i8 %4061, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4062 = icmp eq i64 %4054, 0
  %4063 = zext i1 %4062 to i8
  store i8 %4063, i8* %29, align 1
  %4064 = lshr i64 %4054, 63
  %4065 = trunc i64 %4064 to i8
  store i8 %4065, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v151 = select i1 %4062, i64 143, i64 10
  %4066 = add i64 %4055, %.v151
  store i64 %4066, i64* %3, align 8
  br i1 %4062, label %block_.L_411266, label %block_4111e1

block_4111e1:                                     ; preds = %block_.L_4111bd
  %4067 = load i32, i32* bitcast (%G_0x886b84_type* @G_0x886b84 to i32*), align 8
  %4068 = add i32 %4067, -1
  %4069 = icmp eq i32 %4067, 0
  %4070 = zext i1 %4069 to i8
  store i8 %4070, i8* %14, align 1
  %4071 = and i32 %4068, 255
  %4072 = tail call i32 @llvm.ctpop.i32(i32 %4071)
  %4073 = trunc i32 %4072 to i8
  %4074 = and i8 %4073, 1
  %4075 = xor i8 %4074, 1
  store i8 %4075, i8* %21, align 1
  %4076 = xor i32 %4068, %4067
  %4077 = lshr i32 %4076, 4
  %4078 = trunc i32 %4077 to i8
  %4079 = and i8 %4078, 1
  store i8 %4079, i8* %26, align 1
  %4080 = icmp eq i32 %4068, 0
  %4081 = zext i1 %4080 to i8
  store i8 %4081, i8* %29, align 1
  %4082 = lshr i32 %4068, 31
  %4083 = trunc i32 %4082 to i8
  store i8 %4083, i8* %32, align 1
  %4084 = lshr i32 %4067, 31
  %4085 = xor i32 %4082, %4084
  %4086 = add nuw nsw i32 %4085, %4084
  %4087 = icmp eq i32 %4086, 2
  %4088 = zext i1 %4087 to i8
  store i8 %4088, i8* %38, align 1
  %.v152 = select i1 %4080, i64 14, i64 36
  %4089 = add i64 %4066, %.v152
  %4090 = add i64 %4089, 7
  store i64 %4090, i64* %3, align 8
  br i1 %4080, label %block_4111ef, label %block_.L_411205

block_4111ef:                                     ; preds = %block_4111e1
  %4091 = load i32, i32* bitcast (%G_0x62d7e0_type* @G_0x62d7e0 to i32*), align 8
  %4092 = zext i32 %4091 to i64
  store i64 %4092, i64* %RAX.i66, align 8
  %4093 = load i64, i64* %RBP.i, align 8
  %4094 = add i64 %4093, -12
  %4095 = add i64 %4089, 10
  store i64 %4095, i64* %3, align 8
  %4096 = inttoptr i64 %4094 to i32*
  %4097 = load i32, i32* %4096, align 4
  %4098 = sub i32 %4091, %4097
  %4099 = zext i32 %4098 to i64
  store i64 %4099, i64* %RAX.i66, align 8
  %4100 = icmp ult i32 %4091, %4097
  %4101 = zext i1 %4100 to i8
  store i8 %4101, i8* %14, align 1
  %4102 = and i32 %4098, 255
  %4103 = tail call i32 @llvm.ctpop.i32(i32 %4102)
  %4104 = trunc i32 %4103 to i8
  %4105 = and i8 %4104, 1
  %4106 = xor i8 %4105, 1
  store i8 %4106, i8* %21, align 1
  %4107 = xor i32 %4097, %4091
  %4108 = xor i32 %4107, %4098
  %4109 = lshr i32 %4108, 4
  %4110 = trunc i32 %4109 to i8
  %4111 = and i8 %4110, 1
  store i8 %4111, i8* %26, align 1
  %4112 = icmp eq i32 %4098, 0
  %4113 = zext i1 %4112 to i8
  store i8 %4113, i8* %29, align 1
  %4114 = lshr i32 %4098, 31
  %4115 = trunc i32 %4114 to i8
  store i8 %4115, i8* %32, align 1
  %4116 = lshr i32 %4091, 31
  %4117 = lshr i32 %4097, 31
  %4118 = xor i32 %4117, %4116
  %4119 = xor i32 %4114, %4116
  %4120 = add nuw nsw i32 %4119, %4118
  %4121 = icmp eq i32 %4120, 2
  %4122 = zext i1 %4121 to i8
  store i8 %4122, i8* %38, align 1
  store i32 %4098, i32* bitcast (%G_0x62d7a0_type* @G_0x62d7a0 to i32*), align 8
  %4123 = add i64 %4089, 39
  store i64 %4123, i64* %3, align 8
  br label %block_.L_411216

block_.L_411205:                                  ; preds = %block_4111e1
  %4124 = load i32, i32* bitcast (%G_0x62d7dc_type* @G_0x62d7dc to i32*), align 8
  %4125 = zext i32 %4124 to i64
  store i64 %4125, i64* %RAX.i66, align 8
  %4126 = load i64, i64* %RBP.i, align 8
  %4127 = add i64 %4126, -12
  %4128 = add i64 %4089, 10
  store i64 %4128, i64* %3, align 8
  %4129 = inttoptr i64 %4127 to i32*
  %4130 = load i32, i32* %4129, align 4
  %4131 = add i32 %4130, %4124
  %4132 = zext i32 %4131 to i64
  store i64 %4132, i64* %RAX.i66, align 8
  %4133 = icmp ult i32 %4131, %4124
  %4134 = icmp ult i32 %4131, %4130
  %4135 = or i1 %4133, %4134
  %4136 = zext i1 %4135 to i8
  store i8 %4136, i8* %14, align 1
  %4137 = and i32 %4131, 255
  %4138 = tail call i32 @llvm.ctpop.i32(i32 %4137)
  %4139 = trunc i32 %4138 to i8
  %4140 = and i8 %4139, 1
  %4141 = xor i8 %4140, 1
  store i8 %4141, i8* %21, align 1
  %4142 = xor i32 %4130, %4124
  %4143 = xor i32 %4142, %4131
  %4144 = lshr i32 %4143, 4
  %4145 = trunc i32 %4144 to i8
  %4146 = and i8 %4145, 1
  store i8 %4146, i8* %26, align 1
  %4147 = icmp eq i32 %4131, 0
  %4148 = zext i1 %4147 to i8
  store i8 %4148, i8* %29, align 1
  %4149 = lshr i32 %4131, 31
  %4150 = trunc i32 %4149 to i8
  store i8 %4150, i8* %32, align 1
  %4151 = lshr i32 %4124, 31
  %4152 = lshr i32 %4130, 31
  %4153 = xor i32 %4149, %4151
  %4154 = xor i32 %4149, %4152
  %4155 = add nuw nsw i32 %4153, %4154
  %4156 = icmp eq i32 %4155, 2
  %4157 = zext i1 %4156 to i8
  store i8 %4157, i8* %38, align 1
  %4158 = add i64 %4089, 17
  store i64 %4158, i64* %3, align 8
  store i32 %4131, i32* bitcast (%G_0x62d79c_type* @G_0x62d79c to i32*), align 8
  br label %block_.L_411216

block_.L_411216:                                  ; preds = %block_.L_411205, %block_4111ef
  %4159 = phi i64 [ %4126, %block_.L_411205 ], [ %4093, %block_4111ef ]
  %4160 = phi i64 [ %4158, %block_.L_411205 ], [ %4123, %block_4111ef ]
  store i8 %4070, i8* %14, align 1
  store i8 %4075, i8* %21, align 1
  store i8 %4079, i8* %26, align 1
  store i8 %4081, i8* %29, align 1
  store i8 %4083, i8* %32, align 1
  store i8 %4088, i8* %38, align 1
  %.v153 = select i1 %4080, i64 14, i64 36
  %4161 = add i64 %4160, %.v153
  %4162 = add i64 %4161, 7
  store i64 %4162, i64* %3, align 8
  br i1 %4080, label %block_411224, label %block_.L_41123a

block_411224:                                     ; preds = %block_.L_411216
  %4163 = load i32, i32* bitcast (%G_0x62d7e8_type* @G_0x62d7e8 to i32*), align 8
  %4164 = zext i32 %4163 to i64
  store i64 %4164, i64* %RAX.i66, align 8
  %4165 = add i64 %4159, -12
  %4166 = add i64 %4161, 10
  store i64 %4166, i64* %3, align 8
  %4167 = inttoptr i64 %4165 to i32*
  %4168 = load i32, i32* %4167, align 4
  %4169 = sub i32 %4163, %4168
  %4170 = zext i32 %4169 to i64
  store i64 %4170, i64* %RAX.i66, align 8
  %4171 = icmp ult i32 %4163, %4168
  %4172 = zext i1 %4171 to i8
  store i8 %4172, i8* %14, align 1
  %4173 = and i32 %4169, 255
  %4174 = tail call i32 @llvm.ctpop.i32(i32 %4173)
  %4175 = trunc i32 %4174 to i8
  %4176 = and i8 %4175, 1
  %4177 = xor i8 %4176, 1
  store i8 %4177, i8* %21, align 1
  %4178 = xor i32 %4168, %4163
  %4179 = xor i32 %4178, %4169
  %4180 = lshr i32 %4179, 4
  %4181 = trunc i32 %4180 to i8
  %4182 = and i8 %4181, 1
  store i8 %4182, i8* %26, align 1
  %4183 = icmp eq i32 %4169, 0
  %4184 = zext i1 %4183 to i8
  store i8 %4184, i8* %29, align 1
  %4185 = lshr i32 %4169, 31
  %4186 = trunc i32 %4185 to i8
  store i8 %4186, i8* %32, align 1
  %4187 = lshr i32 %4163, 31
  %4188 = lshr i32 %4168, 31
  %4189 = xor i32 %4188, %4187
  %4190 = xor i32 %4185, %4187
  %4191 = add nuw nsw i32 %4190, %4189
  %4192 = icmp eq i32 %4191, 2
  %4193 = zext i1 %4192 to i8
  store i8 %4193, i8* %38, align 1
  store i32 %4169, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  %4194 = add i64 %4161, 39
  store i64 %4194, i64* %3, align 8
  br label %block_.L_41124b

block_.L_41123a:                                  ; preds = %block_.L_411216
  %4195 = load i32, i32* bitcast (%G_0x62d7e4_type* @G_0x62d7e4 to i32*), align 8
  %4196 = zext i32 %4195 to i64
  store i64 %4196, i64* %RAX.i66, align 8
  %4197 = add i64 %4159, -12
  %4198 = add i64 %4161, 10
  store i64 %4198, i64* %3, align 8
  %4199 = inttoptr i64 %4197 to i32*
  %4200 = load i32, i32* %4199, align 4
  %4201 = add i32 %4200, %4195
  %4202 = zext i32 %4201 to i64
  store i64 %4202, i64* %RAX.i66, align 8
  %4203 = icmp ult i32 %4201, %4195
  %4204 = icmp ult i32 %4201, %4200
  %4205 = or i1 %4203, %4204
  %4206 = zext i1 %4205 to i8
  store i8 %4206, i8* %14, align 1
  %4207 = and i32 %4201, 255
  %4208 = tail call i32 @llvm.ctpop.i32(i32 %4207)
  %4209 = trunc i32 %4208 to i8
  %4210 = and i8 %4209, 1
  %4211 = xor i8 %4210, 1
  store i8 %4211, i8* %21, align 1
  %4212 = xor i32 %4200, %4195
  %4213 = xor i32 %4212, %4201
  %4214 = lshr i32 %4213, 4
  %4215 = trunc i32 %4214 to i8
  %4216 = and i8 %4215, 1
  store i8 %4216, i8* %26, align 1
  %4217 = icmp eq i32 %4201, 0
  %4218 = zext i1 %4217 to i8
  store i8 %4218, i8* %29, align 1
  %4219 = lshr i32 %4201, 31
  %4220 = trunc i32 %4219 to i8
  store i8 %4220, i8* %32, align 1
  %4221 = lshr i32 %4195, 31
  %4222 = lshr i32 %4200, 31
  %4223 = xor i32 %4219, %4221
  %4224 = xor i32 %4219, %4222
  %4225 = add nuw nsw i32 %4223, %4224
  %4226 = icmp eq i32 %4225, 2
  %4227 = zext i1 %4226 to i8
  store i8 %4227, i8* %38, align 1
  %4228 = add i64 %4161, 17
  store i64 %4228, i64* %3, align 8
  store i32 %4201, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  br label %block_.L_41124b

block_.L_41124b:                                  ; preds = %block_.L_41123a, %block_411224
  %4229 = phi i64 [ %4228, %block_.L_41123a ], [ %4194, %block_411224 ]
  store i64 ptrtoint (%G__0x428a37_type* @G__0x428a37 to i64), i64* %RDI.i190, align 8
  %4230 = add i64 %4159, -96
  store i64 %4230, i64* %RSI.i, align 8
  %AL.i603 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i603, align 1
  %4231 = add i64 %4229, -66971
  %4232 = add i64 %4229, 21
  %4233 = load i64, i64* %6, align 8
  %4234 = add i64 %4233, -8
  %4235 = inttoptr i64 %4234 to i64*
  store i64 %4232, i64* %4235, align 8
  store i64 %4234, i64* %6, align 8
  store i64 %4231, i64* %3, align 8
  %4236 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4111d2)
  %4237 = load i64, i64* %RBP.i, align 8
  %4238 = add i64 %4237, -252
  %4239 = load i32, i32* %EAX.i76, align 4
  %4240 = load i64, i64* %3, align 8
  %4241 = add i64 %4240, 6
  store i64 %4241, i64* %3, align 8
  %4242 = inttoptr i64 %4238 to i32*
  store i32 %4239, i32* %4242, align 4
  %.pre112 = load i64, i64* %3, align 8
  br label %block_.L_411266

block_.L_411266:                                  ; preds = %block_.L_41124b, %block_.L_4111bd
  %4243 = phi i64 [ %4066, %block_.L_4111bd ], [ %.pre112, %block_.L_41124b ]
  %MEMORY.41 = phi %struct.Memory* [ %call2_4111d2, %block_.L_4111bd ], [ %4236, %block_.L_41124b ]
  store i64 ptrtoint (%G__0x429b59_type* @G__0x429b59 to i64), i64* %RSI.i, align 8
  %4244 = load i64, i64* %RBP.i, align 8
  %4245 = add i64 %4244, -8
  %4246 = add i64 %4243, 14
  store i64 %4246, i64* %3, align 8
  %4247 = inttoptr i64 %4245 to i64*
  %4248 = load i64, i64* %4247, align 8
  %4249 = add i64 %4248, 6
  store i64 %4249, i64* %RAX.i66, align 8
  %4250 = icmp ugt i64 %4248, -7
  %4251 = zext i1 %4250 to i8
  store i8 %4251, i8* %14, align 1
  %4252 = trunc i64 %4249 to i32
  %4253 = and i32 %4252, 255
  %4254 = tail call i32 @llvm.ctpop.i32(i32 %4253)
  %4255 = trunc i32 %4254 to i8
  %4256 = and i8 %4255, 1
  %4257 = xor i8 %4256, 1
  store i8 %4257, i8* %21, align 1
  %4258 = xor i64 %4249, %4248
  %4259 = lshr i64 %4258, 4
  %4260 = trunc i64 %4259 to i8
  %4261 = and i8 %4260, 1
  store i8 %4261, i8* %26, align 1
  %4262 = icmp eq i64 %4249, 0
  %4263 = zext i1 %4262 to i8
  store i8 %4263, i8* %29, align 1
  %4264 = lshr i64 %4249, 63
  %4265 = trunc i64 %4264 to i8
  store i8 %4265, i8* %32, align 1
  %4266 = lshr i64 %4248, 63
  %4267 = xor i64 %4264, %4266
  %4268 = add nuw nsw i64 %4267, %4264
  %4269 = icmp eq i64 %4268, 2
  %4270 = zext i1 %4269 to i8
  store i8 %4270, i8* %38, align 1
  store i64 %4249, i64* %RDI.i190, align 8
  %4271 = add i64 %4243, -66678
  %4272 = add i64 %4243, 26
  %4273 = load i64, i64* %6, align 8
  %4274 = add i64 %4273, -8
  %4275 = inttoptr i64 %4274 to i64*
  store i64 %4272, i64* %4275, align 8
  store i64 %4274, i64* %6, align 8
  store i64 %4271, i64* %3, align 8
  %call2_41127b = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %4271, %struct.Memory* %MEMORY.41)
  %4276 = load i64, i64* %RAX.i66, align 8
  %4277 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4278 = trunc i64 %4276 to i32
  %4279 = and i32 %4278, 255
  %4280 = tail call i32 @llvm.ctpop.i32(i32 %4279)
  %4281 = trunc i32 %4280 to i8
  %4282 = and i8 %4281, 1
  %4283 = xor i8 %4282, 1
  store i8 %4283, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4284 = icmp eq i64 %4276, 0
  %4285 = zext i1 %4284 to i8
  store i8 %4285, i8* %29, align 1
  %4286 = lshr i64 %4276, 63
  %4287 = trunc i64 %4286 to i8
  store i8 %4287, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v154 = select i1 %4284, i64 90, i64 10
  %4288 = add i64 %4277, %.v154
  store i64 %4288, i64* %3, align 8
  br i1 %4284, label %block_.L_4112da, label %block_41128a

block_41128a:                                     ; preds = %block_.L_411266
  %4289 = load i32, i32* bitcast (%G_0x886b84_type* @G_0x886b84 to i32*), align 8
  %4290 = add i32 %4289, -1
  %4291 = icmp eq i32 %4289, 0
  %4292 = zext i1 %4291 to i8
  store i8 %4292, i8* %14, align 1
  %4293 = and i32 %4290, 255
  %4294 = tail call i32 @llvm.ctpop.i32(i32 %4293)
  %4295 = trunc i32 %4294 to i8
  %4296 = and i8 %4295, 1
  %4297 = xor i8 %4296, 1
  store i8 %4297, i8* %21, align 1
  %4298 = xor i32 %4290, %4289
  %4299 = lshr i32 %4298, 4
  %4300 = trunc i32 %4299 to i8
  %4301 = and i8 %4300, 1
  store i8 %4301, i8* %26, align 1
  %4302 = icmp eq i32 %4290, 0
  %4303 = zext i1 %4302 to i8
  store i8 %4303, i8* %29, align 1
  %4304 = lshr i32 %4290, 31
  %4305 = trunc i32 %4304 to i8
  store i8 %4305, i8* %32, align 1
  %4306 = lshr i32 %4289, 31
  %4307 = xor i32 %4304, %4306
  %4308 = add nuw nsw i32 %4307, %4306
  %4309 = icmp eq i32 %4308, 2
  %4310 = zext i1 %4309 to i8
  store i8 %4310, i8* %38, align 1
  %.v155 = select i1 %4302, i64 14, i64 36
  %4311 = add i64 %4288, %.v155
  %4312 = add i64 %4311, 7
  store i64 %4312, i64* %3, align 8
  br i1 %4302, label %block_411298, label %block_.L_4112ae

block_411298:                                     ; preds = %block_41128a
  %4313 = load i32, i32* bitcast (%G_0x62d7e8_type* @G_0x62d7e8 to i32*), align 8
  %4314 = zext i32 %4313 to i64
  store i64 %4314, i64* %RAX.i66, align 8
  %4315 = load i64, i64* %RBP.i, align 8
  %4316 = add i64 %4315, -12
  %4317 = add i64 %4311, 10
  store i64 %4317, i64* %3, align 8
  %4318 = inttoptr i64 %4316 to i32*
  %4319 = load i32, i32* %4318, align 4
  %4320 = sub i32 %4313, %4319
  %4321 = zext i32 %4320 to i64
  store i64 %4321, i64* %RAX.i66, align 8
  %4322 = icmp ult i32 %4313, %4319
  %4323 = zext i1 %4322 to i8
  store i8 %4323, i8* %14, align 1
  %4324 = and i32 %4320, 255
  %4325 = tail call i32 @llvm.ctpop.i32(i32 %4324)
  %4326 = trunc i32 %4325 to i8
  %4327 = and i8 %4326, 1
  %4328 = xor i8 %4327, 1
  store i8 %4328, i8* %21, align 1
  %4329 = xor i32 %4319, %4313
  %4330 = xor i32 %4329, %4320
  %4331 = lshr i32 %4330, 4
  %4332 = trunc i32 %4331 to i8
  %4333 = and i8 %4332, 1
  store i8 %4333, i8* %26, align 1
  %4334 = icmp eq i32 %4320, 0
  %4335 = zext i1 %4334 to i8
  store i8 %4335, i8* %29, align 1
  %4336 = lshr i32 %4320, 31
  %4337 = trunc i32 %4336 to i8
  store i8 %4337, i8* %32, align 1
  %4338 = lshr i32 %4313, 31
  %4339 = lshr i32 %4319, 31
  %4340 = xor i32 %4339, %4338
  %4341 = xor i32 %4336, %4338
  %4342 = add nuw nsw i32 %4341, %4340
  %4343 = icmp eq i32 %4342, 2
  %4344 = zext i1 %4343 to i8
  store i8 %4344, i8* %38, align 1
  store i32 %4320, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  %4345 = add i64 %4311, 39
  store i64 %4345, i64* %3, align 8
  br label %block_.L_4112bf

block_.L_4112ae:                                  ; preds = %block_41128a
  %4346 = load i32, i32* bitcast (%G_0x62d7e4_type* @G_0x62d7e4 to i32*), align 8
  %4347 = zext i32 %4346 to i64
  store i64 %4347, i64* %RAX.i66, align 8
  %4348 = load i64, i64* %RBP.i, align 8
  %4349 = add i64 %4348, -12
  %4350 = add i64 %4311, 10
  store i64 %4350, i64* %3, align 8
  %4351 = inttoptr i64 %4349 to i32*
  %4352 = load i32, i32* %4351, align 4
  %4353 = add i32 %4352, %4346
  %4354 = zext i32 %4353 to i64
  store i64 %4354, i64* %RAX.i66, align 8
  %4355 = icmp ult i32 %4353, %4346
  %4356 = icmp ult i32 %4353, %4352
  %4357 = or i1 %4355, %4356
  %4358 = zext i1 %4357 to i8
  store i8 %4358, i8* %14, align 1
  %4359 = and i32 %4353, 255
  %4360 = tail call i32 @llvm.ctpop.i32(i32 %4359)
  %4361 = trunc i32 %4360 to i8
  %4362 = and i8 %4361, 1
  %4363 = xor i8 %4362, 1
  store i8 %4363, i8* %21, align 1
  %4364 = xor i32 %4352, %4346
  %4365 = xor i32 %4364, %4353
  %4366 = lshr i32 %4365, 4
  %4367 = trunc i32 %4366 to i8
  %4368 = and i8 %4367, 1
  store i8 %4368, i8* %26, align 1
  %4369 = icmp eq i32 %4353, 0
  %4370 = zext i1 %4369 to i8
  store i8 %4370, i8* %29, align 1
  %4371 = lshr i32 %4353, 31
  %4372 = trunc i32 %4371 to i8
  store i8 %4372, i8* %32, align 1
  %4373 = lshr i32 %4346, 31
  %4374 = lshr i32 %4352, 31
  %4375 = xor i32 %4371, %4373
  %4376 = xor i32 %4371, %4374
  %4377 = add nuw nsw i32 %4375, %4376
  %4378 = icmp eq i32 %4377, 2
  %4379 = zext i1 %4378 to i8
  store i8 %4379, i8* %38, align 1
  %4380 = add i64 %4311, 17
  store i64 %4380, i64* %3, align 8
  store i32 %4353, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  br label %block_.L_4112bf

block_.L_4112bf:                                  ; preds = %block_.L_4112ae, %block_411298
  %4381 = phi i64 [ %4348, %block_.L_4112ae ], [ %4315, %block_411298 ]
  %4382 = phi i64 [ %4380, %block_.L_4112ae ], [ %4345, %block_411298 ]
  store i64 ptrtoint (%G__0x428a52_type* @G__0x428a52 to i64), i64* %RDI.i190, align 8
  %4383 = add i64 %4381, -96
  store i64 %4383, i64* %RSI.i, align 8
  %AL.i559 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i559, align 1
  %4384 = add i64 %4382, -67087
  %4385 = add i64 %4382, 21
  %4386 = load i64, i64* %6, align 8
  %4387 = add i64 %4386, -8
  %4388 = inttoptr i64 %4387 to i64*
  store i64 %4385, i64* %4388, align 8
  store i64 %4387, i64* %6, align 8
  store i64 %4384, i64* %3, align 8
  %4389 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_41127b)
  %4390 = load i64, i64* %RBP.i, align 8
  %4391 = add i64 %4390, -256
  %4392 = load i32, i32* %EAX.i76, align 4
  %4393 = load i64, i64* %3, align 8
  %4394 = add i64 %4393, 6
  store i64 %4394, i64* %3, align 8
  %4395 = inttoptr i64 %4391 to i32*
  store i32 %4392, i32* %4395, align 4
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_4112da

block_.L_4112da:                                  ; preds = %block_.L_4112bf, %block_.L_411266
  %4396 = phi i64 [ %4288, %block_.L_411266 ], [ %.pre113, %block_.L_4112bf ]
  %MEMORY.43 = phi %struct.Memory* [ %call2_41127b, %block_.L_411266 ], [ %4389, %block_.L_4112bf ]
  store i64 ptrtoint (%G__0x42877b_type* @G__0x42877b to i64), i64* %RSI.i, align 8
  %4397 = load i64, i64* %RBP.i, align 8
  %4398 = add i64 %4397, -8
  %4399 = add i64 %4396, 14
  store i64 %4399, i64* %3, align 8
  %4400 = inttoptr i64 %4398 to i64*
  %4401 = load i64, i64* %4400, align 8
  %4402 = add i64 %4401, 6
  store i64 %4402, i64* %RAX.i66, align 8
  %4403 = icmp ugt i64 %4401, -7
  %4404 = zext i1 %4403 to i8
  store i8 %4404, i8* %14, align 1
  %4405 = trunc i64 %4402 to i32
  %4406 = and i32 %4405, 255
  %4407 = tail call i32 @llvm.ctpop.i32(i32 %4406)
  %4408 = trunc i32 %4407 to i8
  %4409 = and i8 %4408, 1
  %4410 = xor i8 %4409, 1
  store i8 %4410, i8* %21, align 1
  %4411 = xor i64 %4402, %4401
  %4412 = lshr i64 %4411, 4
  %4413 = trunc i64 %4412 to i8
  %4414 = and i8 %4413, 1
  store i8 %4414, i8* %26, align 1
  %4415 = icmp eq i64 %4402, 0
  %4416 = zext i1 %4415 to i8
  store i8 %4416, i8* %29, align 1
  %4417 = lshr i64 %4402, 63
  %4418 = trunc i64 %4417 to i8
  store i8 %4418, i8* %32, align 1
  %4419 = lshr i64 %4401, 63
  %4420 = xor i64 %4417, %4419
  %4421 = add nuw nsw i64 %4420, %4417
  %4422 = icmp eq i64 %4421, 2
  %4423 = zext i1 %4422 to i8
  store i8 %4423, i8* %38, align 1
  store i64 %4402, i64* %RDI.i190, align 8
  %4424 = add i64 %4396, -66794
  %4425 = add i64 %4396, 26
  %4426 = load i64, i64* %6, align 8
  %4427 = add i64 %4426, -8
  %4428 = inttoptr i64 %4427 to i64*
  store i64 %4425, i64* %4428, align 8
  store i64 %4427, i64* %6, align 8
  store i64 %4424, i64* %3, align 8
  %call2_4112ef = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %4424, %struct.Memory* %MEMORY.43)
  %4429 = load i64, i64* %RAX.i66, align 8
  %4430 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4431 = trunc i64 %4429 to i32
  %4432 = and i32 %4431, 255
  %4433 = tail call i32 @llvm.ctpop.i32(i32 %4432)
  %4434 = trunc i32 %4433 to i8
  %4435 = and i8 %4434, 1
  %4436 = xor i8 %4435, 1
  store i8 %4436, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4437 = icmp eq i64 %4429, 0
  %4438 = zext i1 %4437 to i8
  store i8 %4438, i8* %29, align 1
  %4439 = lshr i64 %4429, 63
  %4440 = trunc i64 %4439 to i8
  store i8 %4440, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v156 = select i1 %4437, i64 177, i64 10
  %4441 = add i64 %4430, %.v156
  store i64 %4441, i64* %3, align 8
  br i1 %4437, label %block_.L_4113a5, label %block_4112fe

block_4112fe:                                     ; preds = %block_.L_4112da
  %4442 = load i32, i32* bitcast (%G_0x886b84_type* @G_0x886b84 to i32*), align 8
  %4443 = add i32 %4442, -1
  %4444 = icmp eq i32 %4442, 0
  %4445 = zext i1 %4444 to i8
  store i8 %4445, i8* %14, align 1
  %4446 = and i32 %4443, 255
  %4447 = tail call i32 @llvm.ctpop.i32(i32 %4446)
  %4448 = trunc i32 %4447 to i8
  %4449 = and i8 %4448, 1
  %4450 = xor i8 %4449, 1
  store i8 %4450, i8* %21, align 1
  %4451 = xor i32 %4443, %4442
  %4452 = lshr i32 %4451, 4
  %4453 = trunc i32 %4452 to i8
  %4454 = and i8 %4453, 1
  store i8 %4454, i8* %26, align 1
  %4455 = icmp eq i32 %4443, 0
  %4456 = zext i1 %4455 to i8
  store i8 %4456, i8* %29, align 1
  %4457 = lshr i32 %4443, 31
  %4458 = trunc i32 %4457 to i8
  store i8 %4458, i8* %32, align 1
  %4459 = lshr i32 %4442, 31
  %4460 = xor i32 %4457, %4459
  %4461 = add nuw nsw i32 %4460, %4459
  %4462 = icmp eq i32 %4461, 2
  %4463 = zext i1 %4462 to i8
  store i8 %4463, i8* %38, align 1
  %.v157 = select i1 %4455, i64 14, i64 36
  %4464 = add i64 %4441, %.v157
  %4465 = add i64 %4464, 7
  store i64 %4465, i64* %3, align 8
  br i1 %4455, label %block_41130c, label %block_.L_411322

block_41130c:                                     ; preds = %block_4112fe
  %4466 = load i32, i32* bitcast (%G_0x62d7c8_type* @G_0x62d7c8 to i32*), align 8
  %4467 = zext i32 %4466 to i64
  store i64 %4467, i64* %RAX.i66, align 8
  %4468 = load i64, i64* %RBP.i, align 8
  %4469 = add i64 %4468, -12
  %4470 = add i64 %4464, 10
  store i64 %4470, i64* %3, align 8
  %4471 = inttoptr i64 %4469 to i32*
  %4472 = load i32, i32* %4471, align 4
  %4473 = sub i32 %4466, %4472
  %4474 = zext i32 %4473 to i64
  store i64 %4474, i64* %RAX.i66, align 8
  %4475 = icmp ult i32 %4466, %4472
  %4476 = zext i1 %4475 to i8
  store i8 %4476, i8* %14, align 1
  %4477 = and i32 %4473, 255
  %4478 = tail call i32 @llvm.ctpop.i32(i32 %4477)
  %4479 = trunc i32 %4478 to i8
  %4480 = and i8 %4479, 1
  %4481 = xor i8 %4480, 1
  store i8 %4481, i8* %21, align 1
  %4482 = xor i32 %4472, %4466
  %4483 = xor i32 %4482, %4473
  %4484 = lshr i32 %4483, 4
  %4485 = trunc i32 %4484 to i8
  %4486 = and i8 %4485, 1
  store i8 %4486, i8* %26, align 1
  %4487 = icmp eq i32 %4473, 0
  %4488 = zext i1 %4487 to i8
  store i8 %4488, i8* %29, align 1
  %4489 = lshr i32 %4473, 31
  %4490 = trunc i32 %4489 to i8
  store i8 %4490, i8* %32, align 1
  %4491 = lshr i32 %4466, 31
  %4492 = lshr i32 %4472, 31
  %4493 = xor i32 %4492, %4491
  %4494 = xor i32 %4489, %4491
  %4495 = add nuw nsw i32 %4494, %4493
  %4496 = icmp eq i32 %4495, 2
  %4497 = zext i1 %4496 to i8
  store i8 %4497, i8* %38, align 1
  store i32 %4473, i32* bitcast (%G_0x62d788_type* @G_0x62d788 to i32*), align 8
  %4498 = add i64 %4464, 39
  store i64 %4498, i64* %3, align 8
  br label %block_.L_411333

block_.L_411322:                                  ; preds = %block_4112fe
  %4499 = load i32, i32* bitcast (%G_0x62d7c4_type* @G_0x62d7c4 to i32*), align 8
  %4500 = zext i32 %4499 to i64
  store i64 %4500, i64* %RAX.i66, align 8
  %4501 = load i64, i64* %RBP.i, align 8
  %4502 = add i64 %4501, -12
  %4503 = add i64 %4464, 10
  store i64 %4503, i64* %3, align 8
  %4504 = inttoptr i64 %4502 to i32*
  %4505 = load i32, i32* %4504, align 4
  %4506 = add i32 %4505, %4499
  %4507 = zext i32 %4506 to i64
  store i64 %4507, i64* %RAX.i66, align 8
  %4508 = icmp ult i32 %4506, %4499
  %4509 = icmp ult i32 %4506, %4505
  %4510 = or i1 %4508, %4509
  %4511 = zext i1 %4510 to i8
  store i8 %4511, i8* %14, align 1
  %4512 = and i32 %4506, 255
  %4513 = tail call i32 @llvm.ctpop.i32(i32 %4512)
  %4514 = trunc i32 %4513 to i8
  %4515 = and i8 %4514, 1
  %4516 = xor i8 %4515, 1
  store i8 %4516, i8* %21, align 1
  %4517 = xor i32 %4505, %4499
  %4518 = xor i32 %4517, %4506
  %4519 = lshr i32 %4518, 4
  %4520 = trunc i32 %4519 to i8
  %4521 = and i8 %4520, 1
  store i8 %4521, i8* %26, align 1
  %4522 = icmp eq i32 %4506, 0
  %4523 = zext i1 %4522 to i8
  store i8 %4523, i8* %29, align 1
  %4524 = lshr i32 %4506, 31
  %4525 = trunc i32 %4524 to i8
  store i8 %4525, i8* %32, align 1
  %4526 = lshr i32 %4499, 31
  %4527 = lshr i32 %4505, 31
  %4528 = xor i32 %4524, %4526
  %4529 = xor i32 %4524, %4527
  %4530 = add nuw nsw i32 %4528, %4529
  %4531 = icmp eq i32 %4530, 2
  %4532 = zext i1 %4531 to i8
  store i8 %4532, i8* %38, align 1
  %4533 = add i64 %4464, 17
  store i64 %4533, i64* %3, align 8
  store i32 %4506, i32* bitcast (%G_0x62d784_type* @G_0x62d784 to i32*), align 8
  br label %block_.L_411333

block_.L_411333:                                  ; preds = %block_.L_411322, %block_41130c
  %4534 = phi i64 [ %4501, %block_.L_411322 ], [ %4468, %block_41130c ]
  %4535 = phi i64 [ %4533, %block_.L_411322 ], [ %4498, %block_41130c ]
  store i8 %4445, i8* %14, align 1
  store i8 %4450, i8* %21, align 1
  store i8 %4454, i8* %26, align 1
  store i8 %4456, i8* %29, align 1
  store i8 %4458, i8* %32, align 1
  store i8 %4463, i8* %38, align 1
  %.v158 = select i1 %4455, i64 14, i64 53
  %4536 = add i64 %4535, %.v158
  %4537 = add i64 %4536, 7
  store i64 %4537, i64* %3, align 8
  br i1 %4455, label %block_411341, label %block_.L_411368

block_411341:                                     ; preds = %block_.L_411333
  %4538 = load i32, i32* bitcast (%G_0x62d7e8_type* @G_0x62d7e8 to i32*), align 8
  %4539 = zext i32 %4538 to i64
  store i64 %4539, i64* %RAX.i66, align 8
  %4540 = add i64 %4534, -12
  %4541 = add i64 %4536, 10
  store i64 %4541, i64* %3, align 8
  %4542 = inttoptr i64 %4540 to i32*
  %4543 = load i32, i32* %4542, align 4
  %4544 = sub i32 %4538, %4543
  %4545 = icmp ult i32 %4538, %4543
  %4546 = zext i1 %4545 to i8
  store i8 %4546, i8* %14, align 1
  %4547 = and i32 %4544, 255
  %4548 = tail call i32 @llvm.ctpop.i32(i32 %4547)
  %4549 = trunc i32 %4548 to i8
  %4550 = and i8 %4549, 1
  %4551 = xor i8 %4550, 1
  store i8 %4551, i8* %21, align 1
  %4552 = xor i32 %4543, %4538
  %4553 = xor i32 %4552, %4544
  %4554 = lshr i32 %4553, 4
  %4555 = trunc i32 %4554 to i8
  %4556 = and i8 %4555, 1
  store i8 %4556, i8* %26, align 1
  %4557 = icmp eq i32 %4544, 0
  %4558 = zext i1 %4557 to i8
  store i8 %4558, i8* %29, align 1
  %4559 = lshr i32 %4544, 31
  %4560 = trunc i32 %4559 to i8
  store i8 %4560, i8* %32, align 1
  %4561 = lshr i32 %4538, 31
  %4562 = lshr i32 %4543, 31
  %4563 = xor i32 %4562, %4561
  %4564 = xor i32 %4559, %4561
  %4565 = add nuw nsw i32 %4564, %4563
  %4566 = icmp eq i32 %4565, 2
  %4567 = zext i1 %4566 to i8
  store i8 %4567, i8* %38, align 1
  store i32 %4544, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  %4568 = load i32, i32* bitcast (%G_0x62d7f0_type* @G_0x62d7f0 to i32*), align 8
  %4569 = zext i32 %4568 to i64
  store i64 %4569, i64* %RAX.i66, align 8
  %4570 = add i64 %4536, 27
  store i64 %4570, i64* %3, align 8
  %4571 = load i32, i32* %4542, align 4
  %4572 = sub i32 %4568, %4571
  %4573 = zext i32 %4572 to i64
  store i64 %4573, i64* %RAX.i66, align 8
  %4574 = icmp ult i32 %4568, %4571
  %4575 = zext i1 %4574 to i8
  store i8 %4575, i8* %14, align 1
  %4576 = and i32 %4572, 255
  %4577 = tail call i32 @llvm.ctpop.i32(i32 %4576)
  %4578 = trunc i32 %4577 to i8
  %4579 = and i8 %4578, 1
  %4580 = xor i8 %4579, 1
  store i8 %4580, i8* %21, align 1
  %4581 = xor i32 %4571, %4568
  %4582 = xor i32 %4581, %4572
  %4583 = lshr i32 %4582, 4
  %4584 = trunc i32 %4583 to i8
  %4585 = and i8 %4584, 1
  store i8 %4585, i8* %26, align 1
  %4586 = icmp eq i32 %4572, 0
  %4587 = zext i1 %4586 to i8
  store i8 %4587, i8* %29, align 1
  %4588 = lshr i32 %4572, 31
  %4589 = trunc i32 %4588 to i8
  store i8 %4589, i8* %32, align 1
  %4590 = lshr i32 %4568, 31
  %4591 = lshr i32 %4571, 31
  %4592 = xor i32 %4591, %4590
  %4593 = xor i32 %4588, %4590
  %4594 = add nuw nsw i32 %4593, %4592
  %4595 = icmp eq i32 %4594, 2
  %4596 = zext i1 %4595 to i8
  store i8 %4596, i8* %38, align 1
  store i32 %4572, i32* bitcast (%G_0x62d7b0_type* @G_0x62d7b0 to i32*), align 8
  %4597 = add i64 %4536, 73
  store i64 %4597, i64* %3, align 8
  br label %block_.L_41138a

block_.L_411368:                                  ; preds = %block_.L_411333
  %4598 = load i32, i32* bitcast (%G_0x62d7e4_type* @G_0x62d7e4 to i32*), align 8
  %4599 = zext i32 %4598 to i64
  store i64 %4599, i64* %RAX.i66, align 8
  %4600 = add i64 %4534, -12
  %4601 = add i64 %4536, 10
  store i64 %4601, i64* %3, align 8
  %4602 = inttoptr i64 %4600 to i32*
  %4603 = load i32, i32* %4602, align 4
  %4604 = add i32 %4603, %4598
  %4605 = icmp ult i32 %4604, %4598
  %4606 = icmp ult i32 %4604, %4603
  %4607 = or i1 %4605, %4606
  %4608 = zext i1 %4607 to i8
  store i8 %4608, i8* %14, align 1
  %4609 = and i32 %4604, 255
  %4610 = tail call i32 @llvm.ctpop.i32(i32 %4609)
  %4611 = trunc i32 %4610 to i8
  %4612 = and i8 %4611, 1
  %4613 = xor i8 %4612, 1
  store i8 %4613, i8* %21, align 1
  %4614 = xor i32 %4603, %4598
  %4615 = xor i32 %4614, %4604
  %4616 = lshr i32 %4615, 4
  %4617 = trunc i32 %4616 to i8
  %4618 = and i8 %4617, 1
  store i8 %4618, i8* %26, align 1
  %4619 = icmp eq i32 %4604, 0
  %4620 = zext i1 %4619 to i8
  store i8 %4620, i8* %29, align 1
  %4621 = lshr i32 %4604, 31
  %4622 = trunc i32 %4621 to i8
  store i8 %4622, i8* %32, align 1
  %4623 = lshr i32 %4598, 31
  %4624 = lshr i32 %4603, 31
  %4625 = xor i32 %4621, %4623
  %4626 = xor i32 %4621, %4624
  %4627 = add nuw nsw i32 %4625, %4626
  %4628 = icmp eq i32 %4627, 2
  %4629 = zext i1 %4628 to i8
  store i8 %4629, i8* %38, align 1
  store i32 %4604, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  %4630 = load i32, i32* bitcast (%G_0x62d7ec_type* @G_0x62d7ec to i32*), align 8
  %4631 = zext i32 %4630 to i64
  store i64 %4631, i64* %RAX.i66, align 8
  %4632 = add i64 %4536, 27
  store i64 %4632, i64* %3, align 8
  %4633 = load i32, i32* %4602, align 4
  %4634 = add i32 %4633, %4630
  %4635 = zext i32 %4634 to i64
  store i64 %4635, i64* %RAX.i66, align 8
  %4636 = icmp ult i32 %4634, %4630
  %4637 = icmp ult i32 %4634, %4633
  %4638 = or i1 %4636, %4637
  %4639 = zext i1 %4638 to i8
  store i8 %4639, i8* %14, align 1
  %4640 = and i32 %4634, 255
  %4641 = tail call i32 @llvm.ctpop.i32(i32 %4640)
  %4642 = trunc i32 %4641 to i8
  %4643 = and i8 %4642, 1
  %4644 = xor i8 %4643, 1
  store i8 %4644, i8* %21, align 1
  %4645 = xor i32 %4633, %4630
  %4646 = xor i32 %4645, %4634
  %4647 = lshr i32 %4646, 4
  %4648 = trunc i32 %4647 to i8
  %4649 = and i8 %4648, 1
  store i8 %4649, i8* %26, align 1
  %4650 = icmp eq i32 %4634, 0
  %4651 = zext i1 %4650 to i8
  store i8 %4651, i8* %29, align 1
  %4652 = lshr i32 %4634, 31
  %4653 = trunc i32 %4652 to i8
  store i8 %4653, i8* %32, align 1
  %4654 = lshr i32 %4630, 31
  %4655 = lshr i32 %4633, 31
  %4656 = xor i32 %4652, %4654
  %4657 = xor i32 %4652, %4655
  %4658 = add nuw nsw i32 %4656, %4657
  %4659 = icmp eq i32 %4658, 2
  %4660 = zext i1 %4659 to i8
  store i8 %4660, i8* %38, align 1
  %4661 = add i64 %4536, 34
  store i64 %4661, i64* %3, align 8
  store i32 %4634, i32* bitcast (%G_0x62d7ac_type* @G_0x62d7ac to i32*), align 8
  br label %block_.L_41138a

block_.L_41138a:                                  ; preds = %block_.L_411368, %block_411341
  %4662 = phi i64 [ %4661, %block_.L_411368 ], [ %4597, %block_411341 ]
  store i64 ptrtoint (%G__0x428a6e_type* @G__0x428a6e to i64), i64* %RDI.i190, align 8
  %4663 = add i64 %4534, -96
  store i64 %4663, i64* %RSI.i, align 8
  %AL.i483 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i483, align 1
  %4664 = add i64 %4662, -67290
  %4665 = add i64 %4662, 21
  %4666 = load i64, i64* %6, align 8
  %4667 = add i64 %4666, -8
  %4668 = inttoptr i64 %4667 to i64*
  store i64 %4665, i64* %4668, align 8
  store i64 %4667, i64* %6, align 8
  store i64 %4664, i64* %3, align 8
  %4669 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4112ef)
  %4670 = load i64, i64* %RBP.i, align 8
  %4671 = add i64 %4670, -260
  %4672 = load i32, i32* %EAX.i76, align 4
  %4673 = load i64, i64* %3, align 8
  %4674 = add i64 %4673, 6
  store i64 %4674, i64* %3, align 8
  %4675 = inttoptr i64 %4671 to i32*
  store i32 %4672, i32* %4675, align 4
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_4113a5

block_.L_4113a5:                                  ; preds = %block_.L_41138a, %block_.L_4112da
  %4676 = phi i64 [ %4441, %block_.L_4112da ], [ %.pre114, %block_.L_41138a ]
  %MEMORY.46 = phi %struct.Memory* [ %call2_4112ef, %block_.L_4112da ], [ %4669, %block_.L_41138a ]
  store i64 ptrtoint (%G__0x429aeb_type* @G__0x429aeb to i64), i64* %RSI.i, align 8
  %4677 = load i64, i64* %RBP.i, align 8
  %4678 = add i64 %4677, -8
  %4679 = add i64 %4676, 14
  store i64 %4679, i64* %3, align 8
  %4680 = inttoptr i64 %4678 to i64*
  %4681 = load i64, i64* %4680, align 8
  %4682 = add i64 %4681, 6
  store i64 %4682, i64* %RAX.i66, align 8
  %4683 = icmp ugt i64 %4681, -7
  %4684 = zext i1 %4683 to i8
  store i8 %4684, i8* %14, align 1
  %4685 = trunc i64 %4682 to i32
  %4686 = and i32 %4685, 255
  %4687 = tail call i32 @llvm.ctpop.i32(i32 %4686)
  %4688 = trunc i32 %4687 to i8
  %4689 = and i8 %4688, 1
  %4690 = xor i8 %4689, 1
  store i8 %4690, i8* %21, align 1
  %4691 = xor i64 %4682, %4681
  %4692 = lshr i64 %4691, 4
  %4693 = trunc i64 %4692 to i8
  %4694 = and i8 %4693, 1
  store i8 %4694, i8* %26, align 1
  %4695 = icmp eq i64 %4682, 0
  %4696 = zext i1 %4695 to i8
  store i8 %4696, i8* %29, align 1
  %4697 = lshr i64 %4682, 63
  %4698 = trunc i64 %4697 to i8
  store i8 %4698, i8* %32, align 1
  %4699 = lshr i64 %4681, 63
  %4700 = xor i64 %4697, %4699
  %4701 = add nuw nsw i64 %4700, %4697
  %4702 = icmp eq i64 %4701, 2
  %4703 = zext i1 %4702 to i8
  store i8 %4703, i8* %38, align 1
  store i64 %4682, i64* %RDI.i190, align 8
  %4704 = add i64 %4676, -66997
  %4705 = add i64 %4676, 26
  %4706 = load i64, i64* %6, align 8
  %4707 = add i64 %4706, -8
  %4708 = inttoptr i64 %4707 to i64*
  store i64 %4705, i64* %4708, align 8
  store i64 %4707, i64* %6, align 8
  store i64 %4704, i64* %3, align 8
  %call2_4113ba = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %4704, %struct.Memory* %MEMORY.46)
  %4709 = load i64, i64* %RAX.i66, align 8
  %4710 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4711 = trunc i64 %4709 to i32
  %4712 = and i32 %4711, 255
  %4713 = tail call i32 @llvm.ctpop.i32(i32 %4712)
  %4714 = trunc i32 %4713 to i8
  %4715 = and i8 %4714, 1
  %4716 = xor i8 %4715, 1
  store i8 %4716, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4717 = icmp eq i64 %4709, 0
  %4718 = zext i1 %4717 to i8
  store i8 %4718, i8* %29, align 1
  %4719 = lshr i64 %4709, 63
  %4720 = trunc i64 %4719 to i8
  store i8 %4720, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v159 = select i1 %4717, i64 158, i64 10
  %4721 = add i64 %4710, %.v159
  store i64 %4721, i64* %3, align 8
  br i1 %4717, label %block_.L_41145d, label %block_4113c9

block_4113c9:                                     ; preds = %block_.L_4113a5
  %4722 = load i32, i32* bitcast (%G_0x886b84_type* @G_0x886b84 to i32*), align 8
  %4723 = add i32 %4722, -1
  %4724 = icmp eq i32 %4722, 0
  %4725 = zext i1 %4724 to i8
  store i8 %4725, i8* %14, align 1
  %4726 = and i32 %4723, 255
  %4727 = tail call i32 @llvm.ctpop.i32(i32 %4726)
  %4728 = trunc i32 %4727 to i8
  %4729 = and i8 %4728, 1
  %4730 = xor i8 %4729, 1
  store i8 %4730, i8* %21, align 1
  %4731 = xor i32 %4723, %4722
  %4732 = lshr i32 %4731, 4
  %4733 = trunc i32 %4732 to i8
  %4734 = and i8 %4733, 1
  store i8 %4734, i8* %26, align 1
  %4735 = icmp eq i32 %4723, 0
  %4736 = zext i1 %4735 to i8
  store i8 %4736, i8* %29, align 1
  %4737 = lshr i32 %4723, 31
  %4738 = trunc i32 %4737 to i8
  store i8 %4738, i8* %32, align 1
  %4739 = lshr i32 %4722, 31
  %4740 = xor i32 %4737, %4739
  %4741 = add nuw nsw i32 %4740, %4739
  %4742 = icmp eq i32 %4741, 2
  %4743 = zext i1 %4742 to i8
  store i8 %4743, i8* %38, align 1
  %.v160 = select i1 %4735, i64 14, i64 70
  %4744 = add i64 %4721, %.v160
  %4745 = add i64 %4744, 7
  store i64 %4745, i64* %3, align 8
  br i1 %4735, label %block_4113d7, label %block_.L_41140f

block_4113d7:                                     ; preds = %block_4113c9
  %4746 = load i32, i32* bitcast (%G_0x62d7c8_type* @G_0x62d7c8 to i32*), align 8
  %4747 = zext i32 %4746 to i64
  store i64 %4747, i64* %RAX.i66, align 8
  %4748 = load i64, i64* %RBP.i, align 8
  %4749 = add i64 %4748, -12
  %4750 = add i64 %4744, 10
  store i64 %4750, i64* %3, align 8
  %4751 = inttoptr i64 %4749 to i32*
  %4752 = load i32, i32* %4751, align 4
  %4753 = sub i32 %4746, %4752
  %4754 = icmp ult i32 %4746, %4752
  %4755 = zext i1 %4754 to i8
  store i8 %4755, i8* %14, align 1
  %4756 = and i32 %4753, 255
  %4757 = tail call i32 @llvm.ctpop.i32(i32 %4756)
  %4758 = trunc i32 %4757 to i8
  %4759 = and i8 %4758, 1
  %4760 = xor i8 %4759, 1
  store i8 %4760, i8* %21, align 1
  %4761 = xor i32 %4752, %4746
  %4762 = xor i32 %4761, %4753
  %4763 = lshr i32 %4762, 4
  %4764 = trunc i32 %4763 to i8
  %4765 = and i8 %4764, 1
  store i8 %4765, i8* %26, align 1
  %4766 = icmp eq i32 %4753, 0
  %4767 = zext i1 %4766 to i8
  store i8 %4767, i8* %29, align 1
  %4768 = lshr i32 %4753, 31
  %4769 = trunc i32 %4768 to i8
  store i8 %4769, i8* %32, align 1
  %4770 = lshr i32 %4746, 31
  %4771 = lshr i32 %4752, 31
  %4772 = xor i32 %4771, %4770
  %4773 = xor i32 %4768, %4770
  %4774 = add nuw nsw i32 %4773, %4772
  %4775 = icmp eq i32 %4774, 2
  %4776 = zext i1 %4775 to i8
  store i8 %4776, i8* %38, align 1
  store i32 %4753, i32* bitcast (%G_0x62d788_type* @G_0x62d788 to i32*), align 8
  %4777 = load i32, i32* bitcast (%G_0x62d7f0_type* @G_0x62d7f0 to i32*), align 8
  %4778 = zext i32 %4777 to i64
  store i64 %4778, i64* %RAX.i66, align 8
  %4779 = add i64 %4744, 27
  store i64 %4779, i64* %3, align 8
  %4780 = load i32, i32* %4751, align 4
  %4781 = sub i32 %4777, %4780
  %4782 = icmp ult i32 %4777, %4780
  %4783 = zext i1 %4782 to i8
  store i8 %4783, i8* %14, align 1
  %4784 = and i32 %4781, 255
  %4785 = tail call i32 @llvm.ctpop.i32(i32 %4784)
  %4786 = trunc i32 %4785 to i8
  %4787 = and i8 %4786, 1
  %4788 = xor i8 %4787, 1
  store i8 %4788, i8* %21, align 1
  %4789 = xor i32 %4780, %4777
  %4790 = xor i32 %4789, %4781
  %4791 = lshr i32 %4790, 4
  %4792 = trunc i32 %4791 to i8
  %4793 = and i8 %4792, 1
  store i8 %4793, i8* %26, align 1
  %4794 = icmp eq i32 %4781, 0
  %4795 = zext i1 %4794 to i8
  store i8 %4795, i8* %29, align 1
  %4796 = lshr i32 %4781, 31
  %4797 = trunc i32 %4796 to i8
  store i8 %4797, i8* %32, align 1
  %4798 = lshr i32 %4777, 31
  %4799 = lshr i32 %4780, 31
  %4800 = xor i32 %4799, %4798
  %4801 = xor i32 %4796, %4798
  %4802 = add nuw nsw i32 %4801, %4800
  %4803 = icmp eq i32 %4802, 2
  %4804 = zext i1 %4803 to i8
  store i8 %4804, i8* %38, align 1
  store i32 %4781, i32* bitcast (%G_0x62d7b0_type* @G_0x62d7b0 to i32*), align 8
  %4805 = load i32, i32* bitcast (%G_0x62d7e8_type* @G_0x62d7e8 to i32*), align 8
  %4806 = zext i32 %4805 to i64
  store i64 %4806, i64* %RAX.i66, align 8
  %4807 = add i64 %4744, 44
  store i64 %4807, i64* %3, align 8
  %4808 = load i32, i32* %4751, align 4
  %4809 = sub i32 %4805, %4808
  %4810 = zext i32 %4809 to i64
  store i64 %4810, i64* %RAX.i66, align 8
  %4811 = icmp ult i32 %4805, %4808
  %4812 = zext i1 %4811 to i8
  store i8 %4812, i8* %14, align 1
  %4813 = and i32 %4809, 255
  %4814 = tail call i32 @llvm.ctpop.i32(i32 %4813)
  %4815 = trunc i32 %4814 to i8
  %4816 = and i8 %4815, 1
  %4817 = xor i8 %4816, 1
  store i8 %4817, i8* %21, align 1
  %4818 = xor i32 %4808, %4805
  %4819 = xor i32 %4818, %4809
  %4820 = lshr i32 %4819, 4
  %4821 = trunc i32 %4820 to i8
  %4822 = and i8 %4821, 1
  store i8 %4822, i8* %26, align 1
  %4823 = icmp eq i32 %4809, 0
  %4824 = zext i1 %4823 to i8
  store i8 %4824, i8* %29, align 1
  %4825 = lshr i32 %4809, 31
  %4826 = trunc i32 %4825 to i8
  store i8 %4826, i8* %32, align 1
  %4827 = lshr i32 %4805, 31
  %4828 = lshr i32 %4808, 31
  %4829 = xor i32 %4828, %4827
  %4830 = xor i32 %4825, %4827
  %4831 = add nuw nsw i32 %4830, %4829
  %4832 = icmp eq i32 %4831, 2
  %4833 = zext i1 %4832 to i8
  store i8 %4833, i8* %38, align 1
  store i32 %4809, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  %4834 = add i64 %4744, 107
  store i64 %4834, i64* %3, align 8
  br label %block_.L_411442

block_.L_41140f:                                  ; preds = %block_4113c9
  %4835 = load i32, i32* bitcast (%G_0x62d7c4_type* @G_0x62d7c4 to i32*), align 8
  %4836 = zext i32 %4835 to i64
  store i64 %4836, i64* %RAX.i66, align 8
  %4837 = load i64, i64* %RBP.i, align 8
  %4838 = add i64 %4837, -12
  %4839 = add i64 %4744, 10
  store i64 %4839, i64* %3, align 8
  %4840 = inttoptr i64 %4838 to i32*
  %4841 = load i32, i32* %4840, align 4
  %4842 = add i32 %4841, %4835
  %4843 = icmp ult i32 %4842, %4835
  %4844 = icmp ult i32 %4842, %4841
  %4845 = or i1 %4843, %4844
  %4846 = zext i1 %4845 to i8
  store i8 %4846, i8* %14, align 1
  %4847 = and i32 %4842, 255
  %4848 = tail call i32 @llvm.ctpop.i32(i32 %4847)
  %4849 = trunc i32 %4848 to i8
  %4850 = and i8 %4849, 1
  %4851 = xor i8 %4850, 1
  store i8 %4851, i8* %21, align 1
  %4852 = xor i32 %4841, %4835
  %4853 = xor i32 %4852, %4842
  %4854 = lshr i32 %4853, 4
  %4855 = trunc i32 %4854 to i8
  %4856 = and i8 %4855, 1
  store i8 %4856, i8* %26, align 1
  %4857 = icmp eq i32 %4842, 0
  %4858 = zext i1 %4857 to i8
  store i8 %4858, i8* %29, align 1
  %4859 = lshr i32 %4842, 31
  %4860 = trunc i32 %4859 to i8
  store i8 %4860, i8* %32, align 1
  %4861 = lshr i32 %4835, 31
  %4862 = lshr i32 %4841, 31
  %4863 = xor i32 %4859, %4861
  %4864 = xor i32 %4859, %4862
  %4865 = add nuw nsw i32 %4863, %4864
  %4866 = icmp eq i32 %4865, 2
  %4867 = zext i1 %4866 to i8
  store i8 %4867, i8* %38, align 1
  store i32 %4842, i32* bitcast (%G_0x62d784_type* @G_0x62d784 to i32*), align 8
  %4868 = load i32, i32* bitcast (%G_0x62d7ec_type* @G_0x62d7ec to i32*), align 8
  %4869 = zext i32 %4868 to i64
  store i64 %4869, i64* %RAX.i66, align 8
  %4870 = add i64 %4744, 27
  store i64 %4870, i64* %3, align 8
  %4871 = load i32, i32* %4840, align 4
  %4872 = add i32 %4871, %4868
  %4873 = icmp ult i32 %4872, %4868
  %4874 = icmp ult i32 %4872, %4871
  %4875 = or i1 %4873, %4874
  %4876 = zext i1 %4875 to i8
  store i8 %4876, i8* %14, align 1
  %4877 = and i32 %4872, 255
  %4878 = tail call i32 @llvm.ctpop.i32(i32 %4877)
  %4879 = trunc i32 %4878 to i8
  %4880 = and i8 %4879, 1
  %4881 = xor i8 %4880, 1
  store i8 %4881, i8* %21, align 1
  %4882 = xor i32 %4871, %4868
  %4883 = xor i32 %4882, %4872
  %4884 = lshr i32 %4883, 4
  %4885 = trunc i32 %4884 to i8
  %4886 = and i8 %4885, 1
  store i8 %4886, i8* %26, align 1
  %4887 = icmp eq i32 %4872, 0
  %4888 = zext i1 %4887 to i8
  store i8 %4888, i8* %29, align 1
  %4889 = lshr i32 %4872, 31
  %4890 = trunc i32 %4889 to i8
  store i8 %4890, i8* %32, align 1
  %4891 = lshr i32 %4868, 31
  %4892 = lshr i32 %4871, 31
  %4893 = xor i32 %4889, %4891
  %4894 = xor i32 %4889, %4892
  %4895 = add nuw nsw i32 %4893, %4894
  %4896 = icmp eq i32 %4895, 2
  %4897 = zext i1 %4896 to i8
  store i8 %4897, i8* %38, align 1
  store i32 %4872, i32* bitcast (%G_0x62d7ac_type* @G_0x62d7ac to i32*), align 8
  %4898 = load i32, i32* bitcast (%G_0x62d7e4_type* @G_0x62d7e4 to i32*), align 8
  %4899 = zext i32 %4898 to i64
  store i64 %4899, i64* %RAX.i66, align 8
  %4900 = add i64 %4744, 44
  store i64 %4900, i64* %3, align 8
  %4901 = load i32, i32* %4840, align 4
  %4902 = add i32 %4901, %4898
  %4903 = zext i32 %4902 to i64
  store i64 %4903, i64* %RAX.i66, align 8
  %4904 = icmp ult i32 %4902, %4898
  %4905 = icmp ult i32 %4902, %4901
  %4906 = or i1 %4904, %4905
  %4907 = zext i1 %4906 to i8
  store i8 %4907, i8* %14, align 1
  %4908 = and i32 %4902, 255
  %4909 = tail call i32 @llvm.ctpop.i32(i32 %4908)
  %4910 = trunc i32 %4909 to i8
  %4911 = and i8 %4910, 1
  %4912 = xor i8 %4911, 1
  store i8 %4912, i8* %21, align 1
  %4913 = xor i32 %4901, %4898
  %4914 = xor i32 %4913, %4902
  %4915 = lshr i32 %4914, 4
  %4916 = trunc i32 %4915 to i8
  %4917 = and i8 %4916, 1
  store i8 %4917, i8* %26, align 1
  %4918 = icmp eq i32 %4902, 0
  %4919 = zext i1 %4918 to i8
  store i8 %4919, i8* %29, align 1
  %4920 = lshr i32 %4902, 31
  %4921 = trunc i32 %4920 to i8
  store i8 %4921, i8* %32, align 1
  %4922 = lshr i32 %4898, 31
  %4923 = lshr i32 %4901, 31
  %4924 = xor i32 %4920, %4922
  %4925 = xor i32 %4920, %4923
  %4926 = add nuw nsw i32 %4924, %4925
  %4927 = icmp eq i32 %4926, 2
  %4928 = zext i1 %4927 to i8
  store i8 %4928, i8* %38, align 1
  %4929 = add i64 %4744, 51
  store i64 %4929, i64* %3, align 8
  store i32 %4902, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  br label %block_.L_411442

block_.L_411442:                                  ; preds = %block_.L_41140f, %block_4113d7
  %4930 = phi i64 [ %4929, %block_.L_41140f ], [ %4834, %block_4113d7 ]
  store i64 ptrtoint (%G__0x428a89_type* @G__0x428a89 to i64), i64* %RDI.i190, align 8
  %4931 = load i64, i64* %RBP.i, align 8
  %4932 = add i64 %4931, -96
  store i64 %4932, i64* %RSI.i, align 8
  %AL.i412 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i412, align 1
  %4933 = add i64 %4930, -67474
  %4934 = add i64 %4930, 21
  %4935 = load i64, i64* %6, align 8
  %4936 = add i64 %4935, -8
  %4937 = inttoptr i64 %4936 to i64*
  store i64 %4934, i64* %4937, align 8
  store i64 %4936, i64* %6, align 8
  store i64 %4933, i64* %3, align 8
  %4938 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4113ba)
  %4939 = load i64, i64* %RBP.i, align 8
  %4940 = add i64 %4939, -264
  %4941 = load i32, i32* %EAX.i76, align 4
  %4942 = load i64, i64* %3, align 8
  %4943 = add i64 %4942, 6
  store i64 %4943, i64* %3, align 8
  %4944 = inttoptr i64 %4940 to i32*
  store i32 %4941, i32* %4944, align 4
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_41145d

block_.L_41145d:                                  ; preds = %block_.L_411442, %block_.L_4113a5
  %4945 = phi i64 [ %4721, %block_.L_4113a5 ], [ %.pre115, %block_.L_411442 ]
  %MEMORY.48 = phi %struct.Memory* [ %call2_4113ba, %block_.L_4113a5 ], [ %4938, %block_.L_411442 ]
  store i64 ptrtoint (%G__0x428971_type* @G__0x428971 to i64), i64* %RSI.i, align 8
  %4946 = load i64, i64* %RBP.i, align 8
  %4947 = add i64 %4946, -8
  %4948 = add i64 %4945, 14
  store i64 %4948, i64* %3, align 8
  %4949 = inttoptr i64 %4947 to i64*
  %4950 = load i64, i64* %4949, align 8
  %4951 = add i64 %4950, 6
  store i64 %4951, i64* %RAX.i66, align 8
  %4952 = icmp ugt i64 %4950, -7
  %4953 = zext i1 %4952 to i8
  store i8 %4953, i8* %14, align 1
  %4954 = trunc i64 %4951 to i32
  %4955 = and i32 %4954, 255
  %4956 = tail call i32 @llvm.ctpop.i32(i32 %4955)
  %4957 = trunc i32 %4956 to i8
  %4958 = and i8 %4957, 1
  %4959 = xor i8 %4958, 1
  store i8 %4959, i8* %21, align 1
  %4960 = xor i64 %4951, %4950
  %4961 = lshr i64 %4960, 4
  %4962 = trunc i64 %4961 to i8
  %4963 = and i8 %4962, 1
  store i8 %4963, i8* %26, align 1
  %4964 = icmp eq i64 %4951, 0
  %4965 = zext i1 %4964 to i8
  store i8 %4965, i8* %29, align 1
  %4966 = lshr i64 %4951, 63
  %4967 = trunc i64 %4966 to i8
  store i8 %4967, i8* %32, align 1
  %4968 = lshr i64 %4950, 63
  %4969 = xor i64 %4966, %4968
  %4970 = add nuw nsw i64 %4969, %4966
  %4971 = icmp eq i64 %4970, 2
  %4972 = zext i1 %4971 to i8
  store i8 %4972, i8* %38, align 1
  store i64 %4951, i64* %RDI.i190, align 8
  %4973 = add i64 %4945, -67181
  %4974 = add i64 %4945, 26
  %4975 = load i64, i64* %6, align 8
  %4976 = add i64 %4975, -8
  %4977 = inttoptr i64 %4976 to i64*
  store i64 %4974, i64* %4977, align 8
  store i64 %4976, i64* %6, align 8
  store i64 %4973, i64* %3, align 8
  %call2_411472 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %4973, %struct.Memory* %MEMORY.48)
  %4978 = load i64, i64* %RAX.i66, align 8
  %4979 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %4980 = trunc i64 %4978 to i32
  %4981 = and i32 %4980, 255
  %4982 = tail call i32 @llvm.ctpop.i32(i32 %4981)
  %4983 = trunc i32 %4982 to i8
  %4984 = and i8 %4983, 1
  %4985 = xor i8 %4984, 1
  store i8 %4985, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4986 = icmp eq i64 %4978, 0
  %4987 = zext i1 %4986 to i8
  store i8 %4987, i8* %29, align 1
  %4988 = lshr i64 %4978, 63
  %4989 = trunc i64 %4988 to i8
  store i8 %4989, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v161 = select i1 %4986, i64 124, i64 10
  %4990 = add i64 %4979, %.v161
  store i64 %4990, i64* %3, align 8
  br i1 %4986, label %block_.L_4114f3, label %block_411481

block_411481:                                     ; preds = %block_.L_41145d
  %4991 = load i32, i32* bitcast (%G_0x886b84_type* @G_0x886b84 to i32*), align 8
  %4992 = add i32 %4991, -1
  %4993 = icmp eq i32 %4991, 0
  %4994 = zext i1 %4993 to i8
  store i8 %4994, i8* %14, align 1
  %4995 = and i32 %4992, 255
  %4996 = tail call i32 @llvm.ctpop.i32(i32 %4995)
  %4997 = trunc i32 %4996 to i8
  %4998 = and i8 %4997, 1
  %4999 = xor i8 %4998, 1
  store i8 %4999, i8* %21, align 1
  %5000 = xor i32 %4992, %4991
  %5001 = lshr i32 %5000, 4
  %5002 = trunc i32 %5001 to i8
  %5003 = and i8 %5002, 1
  store i8 %5003, i8* %26, align 1
  %5004 = icmp eq i32 %4992, 0
  %5005 = zext i1 %5004 to i8
  store i8 %5005, i8* %29, align 1
  %5006 = lshr i32 %4992, 31
  %5007 = trunc i32 %5006 to i8
  store i8 %5007, i8* %32, align 1
  %5008 = lshr i32 %4991, 31
  %5009 = xor i32 %5006, %5008
  %5010 = add nuw nsw i32 %5009, %5008
  %5011 = icmp eq i32 %5010, 2
  %5012 = zext i1 %5011 to i8
  store i8 %5012, i8* %38, align 1
  %.v162 = select i1 %5004, i64 14, i64 53
  %5013 = add i64 %4990, %.v162
  %5014 = add i64 %5013, 7
  store i64 %5014, i64* %3, align 8
  br i1 %5004, label %block_41148f, label %block_.L_4114b6

block_41148f:                                     ; preds = %block_411481
  %5015 = load i32, i32* bitcast (%G_0x62d7e0_type* @G_0x62d7e0 to i32*), align 8
  %5016 = zext i32 %5015 to i64
  store i64 %5016, i64* %RAX.i66, align 8
  %5017 = load i64, i64* %RBP.i, align 8
  %5018 = add i64 %5017, -12
  %5019 = add i64 %5013, 10
  store i64 %5019, i64* %3, align 8
  %5020 = inttoptr i64 %5018 to i32*
  %5021 = load i32, i32* %5020, align 4
  %5022 = sub i32 %5015, %5021
  %5023 = icmp ult i32 %5015, %5021
  %5024 = zext i1 %5023 to i8
  store i8 %5024, i8* %14, align 1
  %5025 = and i32 %5022, 255
  %5026 = tail call i32 @llvm.ctpop.i32(i32 %5025)
  %5027 = trunc i32 %5026 to i8
  %5028 = and i8 %5027, 1
  %5029 = xor i8 %5028, 1
  store i8 %5029, i8* %21, align 1
  %5030 = xor i32 %5021, %5015
  %5031 = xor i32 %5030, %5022
  %5032 = lshr i32 %5031, 4
  %5033 = trunc i32 %5032 to i8
  %5034 = and i8 %5033, 1
  store i8 %5034, i8* %26, align 1
  %5035 = icmp eq i32 %5022, 0
  %5036 = zext i1 %5035 to i8
  store i8 %5036, i8* %29, align 1
  %5037 = lshr i32 %5022, 31
  %5038 = trunc i32 %5037 to i8
  store i8 %5038, i8* %32, align 1
  %5039 = lshr i32 %5015, 31
  %5040 = lshr i32 %5021, 31
  %5041 = xor i32 %5040, %5039
  %5042 = xor i32 %5037, %5039
  %5043 = add nuw nsw i32 %5042, %5041
  %5044 = icmp eq i32 %5043, 2
  %5045 = zext i1 %5044 to i8
  store i8 %5045, i8* %38, align 1
  store i32 %5022, i32* bitcast (%G_0x62d7a0_type* @G_0x62d7a0 to i32*), align 8
  %5046 = load i32, i32* bitcast (%G_0x62d7e8_type* @G_0x62d7e8 to i32*), align 8
  %5047 = zext i32 %5046 to i64
  store i64 %5047, i64* %RAX.i66, align 8
  %5048 = add i64 %5013, 27
  store i64 %5048, i64* %3, align 8
  %5049 = load i32, i32* %5020, align 4
  %5050 = sub i32 %5046, %5049
  %5051 = zext i32 %5050 to i64
  store i64 %5051, i64* %RAX.i66, align 8
  %5052 = icmp ult i32 %5046, %5049
  %5053 = zext i1 %5052 to i8
  store i8 %5053, i8* %14, align 1
  %5054 = and i32 %5050, 255
  %5055 = tail call i32 @llvm.ctpop.i32(i32 %5054)
  %5056 = trunc i32 %5055 to i8
  %5057 = and i8 %5056, 1
  %5058 = xor i8 %5057, 1
  store i8 %5058, i8* %21, align 1
  %5059 = xor i32 %5049, %5046
  %5060 = xor i32 %5059, %5050
  %5061 = lshr i32 %5060, 4
  %5062 = trunc i32 %5061 to i8
  %5063 = and i8 %5062, 1
  store i8 %5063, i8* %26, align 1
  %5064 = icmp eq i32 %5050, 0
  %5065 = zext i1 %5064 to i8
  store i8 %5065, i8* %29, align 1
  %5066 = lshr i32 %5050, 31
  %5067 = trunc i32 %5066 to i8
  store i8 %5067, i8* %32, align 1
  %5068 = lshr i32 %5046, 31
  %5069 = lshr i32 %5049, 31
  %5070 = xor i32 %5069, %5068
  %5071 = xor i32 %5066, %5068
  %5072 = add nuw nsw i32 %5071, %5070
  %5073 = icmp eq i32 %5072, 2
  %5074 = zext i1 %5073 to i8
  store i8 %5074, i8* %38, align 1
  store i32 %5050, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  %5075 = add i64 %5013, 73
  store i64 %5075, i64* %3, align 8
  br label %block_.L_4114d8

block_.L_4114b6:                                  ; preds = %block_411481
  %5076 = load i32, i32* bitcast (%G_0x62d7dc_type* @G_0x62d7dc to i32*), align 8
  %5077 = zext i32 %5076 to i64
  store i64 %5077, i64* %RAX.i66, align 8
  %5078 = load i64, i64* %RBP.i, align 8
  %5079 = add i64 %5078, -12
  %5080 = add i64 %5013, 10
  store i64 %5080, i64* %3, align 8
  %5081 = inttoptr i64 %5079 to i32*
  %5082 = load i32, i32* %5081, align 4
  %5083 = add i32 %5082, %5076
  %5084 = icmp ult i32 %5083, %5076
  %5085 = icmp ult i32 %5083, %5082
  %5086 = or i1 %5084, %5085
  %5087 = zext i1 %5086 to i8
  store i8 %5087, i8* %14, align 1
  %5088 = and i32 %5083, 255
  %5089 = tail call i32 @llvm.ctpop.i32(i32 %5088)
  %5090 = trunc i32 %5089 to i8
  %5091 = and i8 %5090, 1
  %5092 = xor i8 %5091, 1
  store i8 %5092, i8* %21, align 1
  %5093 = xor i32 %5082, %5076
  %5094 = xor i32 %5093, %5083
  %5095 = lshr i32 %5094, 4
  %5096 = trunc i32 %5095 to i8
  %5097 = and i8 %5096, 1
  store i8 %5097, i8* %26, align 1
  %5098 = icmp eq i32 %5083, 0
  %5099 = zext i1 %5098 to i8
  store i8 %5099, i8* %29, align 1
  %5100 = lshr i32 %5083, 31
  %5101 = trunc i32 %5100 to i8
  store i8 %5101, i8* %32, align 1
  %5102 = lshr i32 %5076, 31
  %5103 = lshr i32 %5082, 31
  %5104 = xor i32 %5100, %5102
  %5105 = xor i32 %5100, %5103
  %5106 = add nuw nsw i32 %5104, %5105
  %5107 = icmp eq i32 %5106, 2
  %5108 = zext i1 %5107 to i8
  store i8 %5108, i8* %38, align 1
  store i32 %5083, i32* bitcast (%G_0x62d79c_type* @G_0x62d79c to i32*), align 8
  %5109 = load i32, i32* bitcast (%G_0x62d7e4_type* @G_0x62d7e4 to i32*), align 8
  %5110 = zext i32 %5109 to i64
  store i64 %5110, i64* %RAX.i66, align 8
  %5111 = add i64 %5013, 27
  store i64 %5111, i64* %3, align 8
  %5112 = load i32, i32* %5081, align 4
  %5113 = add i32 %5112, %5109
  %5114 = zext i32 %5113 to i64
  store i64 %5114, i64* %RAX.i66, align 8
  %5115 = icmp ult i32 %5113, %5109
  %5116 = icmp ult i32 %5113, %5112
  %5117 = or i1 %5115, %5116
  %5118 = zext i1 %5117 to i8
  store i8 %5118, i8* %14, align 1
  %5119 = and i32 %5113, 255
  %5120 = tail call i32 @llvm.ctpop.i32(i32 %5119)
  %5121 = trunc i32 %5120 to i8
  %5122 = and i8 %5121, 1
  %5123 = xor i8 %5122, 1
  store i8 %5123, i8* %21, align 1
  %5124 = xor i32 %5112, %5109
  %5125 = xor i32 %5124, %5113
  %5126 = lshr i32 %5125, 4
  %5127 = trunc i32 %5126 to i8
  %5128 = and i8 %5127, 1
  store i8 %5128, i8* %26, align 1
  %5129 = icmp eq i32 %5113, 0
  %5130 = zext i1 %5129 to i8
  store i8 %5130, i8* %29, align 1
  %5131 = lshr i32 %5113, 31
  %5132 = trunc i32 %5131 to i8
  store i8 %5132, i8* %32, align 1
  %5133 = lshr i32 %5109, 31
  %5134 = lshr i32 %5112, 31
  %5135 = xor i32 %5131, %5133
  %5136 = xor i32 %5131, %5134
  %5137 = add nuw nsw i32 %5135, %5136
  %5138 = icmp eq i32 %5137, 2
  %5139 = zext i1 %5138 to i8
  store i8 %5139, i8* %38, align 1
  %5140 = add i64 %5013, 34
  store i64 %5140, i64* %3, align 8
  store i32 %5113, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  br label %block_.L_4114d8

block_.L_4114d8:                                  ; preds = %block_.L_4114b6, %block_41148f
  %5141 = phi i64 [ %5078, %block_.L_4114b6 ], [ %5017, %block_41148f ]
  %5142 = phi i64 [ %5140, %block_.L_4114b6 ], [ %5075, %block_41148f ]
  store i64 ptrtoint (%G__0x428aa8_type* @G__0x428aa8 to i64), i64* %RDI.i190, align 8
  %5143 = add i64 %5141, -96
  store i64 %5143, i64* %RSI.i, align 8
  %AL.i354 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i354, align 1
  %5144 = add i64 %5142, -67624
  %5145 = add i64 %5142, 21
  %5146 = load i64, i64* %6, align 8
  %5147 = add i64 %5146, -8
  %5148 = inttoptr i64 %5147 to i64*
  store i64 %5145, i64* %5148, align 8
  store i64 %5147, i64* %6, align 8
  store i64 %5144, i64* %3, align 8
  %5149 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_411472)
  %5150 = load i64, i64* %RBP.i, align 8
  %5151 = add i64 %5150, -268
  %5152 = load i32, i32* %EAX.i76, align 4
  %5153 = load i64, i64* %3, align 8
  %5154 = add i64 %5153, 6
  store i64 %5154, i64* %3, align 8
  %5155 = inttoptr i64 %5151 to i32*
  store i32 %5152, i32* %5155, align 4
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_4114f3

block_.L_4114f3:                                  ; preds = %block_.L_4114d8, %block_.L_41145d
  %5156 = phi i64 [ %4990, %block_.L_41145d ], [ %.pre116, %block_.L_4114d8 ]
  %MEMORY.50 = phi %struct.Memory* [ %call2_411472, %block_.L_41145d ], [ %5149, %block_.L_4114d8 ]
  %5157 = add i64 %5156, 852
  br label %block_.L_411847

block_.L_4114f8:                                  ; preds = %block_.L_410d8f
  store i64 ptrtoint (%G__0x428b82_type* @G__0x428b82 to i64), i64* %RSI.i, align 8
  store i64 1, i64* %RAX.i66, align 8
  store i64 1, i64* %RDX.i, align 8
  %5158 = load i64, i64* %RBP.i, align 8
  %5159 = add i64 %5158, -8
  %5160 = add i64 %2973, 21
  store i64 %5160, i64* %3, align 8
  %5161 = inttoptr i64 %5159 to i64*
  %5162 = load i64, i64* %5161, align 8
  %5163 = add i64 %5162, 6
  store i64 %5163, i64* %RCX.i96, align 8
  %5164 = icmp ugt i64 %5162, -7
  %5165 = zext i1 %5164 to i8
  store i8 %5165, i8* %14, align 1
  %5166 = trunc i64 %5163 to i32
  %5167 = and i32 %5166, 255
  %5168 = tail call i32 @llvm.ctpop.i32(i32 %5167)
  %5169 = trunc i32 %5168 to i8
  %5170 = and i8 %5169, 1
  %5171 = xor i8 %5170, 1
  store i8 %5171, i8* %21, align 1
  %5172 = xor i64 %5163, %5162
  %5173 = lshr i64 %5172, 4
  %5174 = trunc i64 %5173 to i8
  %5175 = and i8 %5174, 1
  store i8 %5175, i8* %26, align 1
  %5176 = icmp eq i64 %5163, 0
  %5177 = zext i1 %5176 to i8
  store i8 %5177, i8* %29, align 1
  %5178 = lshr i64 %5163, 63
  %5179 = trunc i64 %5178 to i8
  store i8 %5179, i8* %32, align 1
  %5180 = lshr i64 %5162, 63
  %5181 = xor i64 %5178, %5180
  %5182 = add nuw nsw i64 %5181, %5178
  %5183 = icmp eq i64 %5182, 2
  %5184 = zext i1 %5183 to i8
  store i8 %5184, i8* %38, align 1
  store i64 %5163, i64* %RDI.i190, align 8
  %5185 = add i64 %2973, -67736
  %5186 = add i64 %2973, 33
  %5187 = load i64, i64* %6, align 8
  %5188 = add i64 %5187, -8
  %5189 = inttoptr i64 %5188 to i64*
  store i64 %5186, i64* %5189, align 8
  store i64 %5188, i64* %6, align 8
  store i64 %5185, i64* %3, align 8
  %5190 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %2961)
  %5191 = load i32, i32* %EAX.i76, align 4
  %5192 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5193 = and i32 %5191, 255
  %5194 = tail call i32 @llvm.ctpop.i32(i32 %5193)
  %5195 = trunc i32 %5194 to i8
  %5196 = and i8 %5195, 1
  %5197 = xor i8 %5196, 1
  store i8 %5197, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5198 = icmp eq i32 %5191, 0
  %5199 = zext i1 %5198 to i8
  store i8 %5199, i8* %29, align 1
  %5200 = lshr i32 %5191, 31
  %5201 = trunc i32 %5200 to i8
  store i8 %5201, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v130 = select i1 %5198, i64 159, i64 9
  %5202 = add i64 %5192, %.v130
  store i64 %5202, i64* %3, align 8
  br i1 %5198, label %block_.L_4115b8, label %block_411522

block_411522:                                     ; preds = %block_.L_4114f8
  store i64 ptrtoint (%G__0x428b84_type* @G__0x428b84 to i64), i64* %RSI.i, align 8
  %5203 = load i64, i64* %RBP.i, align 8
  %5204 = add i64 %5203, -8
  %5205 = add i64 %5202, 14
  store i64 %5205, i64* %3, align 8
  %5206 = inttoptr i64 %5204 to i64*
  %5207 = load i64, i64* %5206, align 8
  %5208 = add i64 %5207, 6
  store i64 %5208, i64* %RAX.i66, align 8
  %5209 = icmp ugt i64 %5207, -7
  %5210 = zext i1 %5209 to i8
  store i8 %5210, i8* %14, align 1
  %5211 = trunc i64 %5208 to i32
  %5212 = and i32 %5211, 255
  %5213 = tail call i32 @llvm.ctpop.i32(i32 %5212)
  %5214 = trunc i32 %5213 to i8
  %5215 = and i8 %5214, 1
  %5216 = xor i8 %5215, 1
  store i8 %5216, i8* %21, align 1
  %5217 = xor i64 %5208, %5207
  %5218 = lshr i64 %5217, 4
  %5219 = trunc i64 %5218 to i8
  %5220 = and i8 %5219, 1
  store i8 %5220, i8* %26, align 1
  %5221 = icmp eq i64 %5208, 0
  %5222 = zext i1 %5221 to i8
  store i8 %5222, i8* %29, align 1
  %5223 = lshr i64 %5208, 63
  %5224 = trunc i64 %5223 to i8
  store i8 %5224, i8* %32, align 1
  %5225 = lshr i64 %5207, 63
  %5226 = xor i64 %5223, %5225
  %5227 = add nuw nsw i64 %5226, %5223
  %5228 = icmp eq i64 %5227, 2
  %5229 = zext i1 %5228 to i8
  store i8 %5229, i8* %38, align 1
  store i64 %5208, i64* %RDI.i190, align 8
  %5230 = add i64 %5202, -67378
  %5231 = add i64 %5202, 26
  %5232 = load i64, i64* %6, align 8
  %5233 = add i64 %5232, -8
  %5234 = inttoptr i64 %5233 to i64*
  store i64 %5231, i64* %5234, align 8
  store i64 %5233, i64* %6, align 8
  store i64 %5230, i64* %3, align 8
  %call2_411537 = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %5230, %struct.Memory* %5190)
  %5235 = load i64, i64* %RAX.i66, align 8
  %5236 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5237 = trunc i64 %5235 to i32
  %5238 = and i32 %5237, 255
  %5239 = tail call i32 @llvm.ctpop.i32(i32 %5238)
  %5240 = trunc i32 %5239 to i8
  %5241 = and i8 %5240, 1
  %5242 = xor i8 %5241, 1
  store i8 %5242, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5243 = icmp eq i64 %5235, 0
  %5244 = zext i1 %5243 to i8
  store i8 %5244, i8* %29, align 1
  %5245 = lshr i64 %5235, 63
  %5246 = trunc i64 %5245 to i8
  store i8 %5246, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v131 = select i1 %5243, i64 10, i64 124
  %5247 = add i64 %5236, %.v131
  store i64 %5247, i64* %3, align 8
  br i1 %5243, label %block_411546, label %block_.L_4115b8

block_411546:                                     ; preds = %block_411522
  store i64 ptrtoint (%G__0x428b94_type* @G__0x428b94 to i64), i64* %RSI.i, align 8
  %5248 = load i64, i64* %RBP.i, align 8
  %5249 = add i64 %5248, -8
  %5250 = add i64 %5247, 14
  store i64 %5250, i64* %3, align 8
  %5251 = inttoptr i64 %5249 to i64*
  %5252 = load i64, i64* %5251, align 8
  %5253 = add i64 %5252, 6
  store i64 %5253, i64* %RAX.i66, align 8
  %5254 = icmp ugt i64 %5252, -7
  %5255 = zext i1 %5254 to i8
  store i8 %5255, i8* %14, align 1
  %5256 = trunc i64 %5253 to i32
  %5257 = and i32 %5256, 255
  %5258 = tail call i32 @llvm.ctpop.i32(i32 %5257)
  %5259 = trunc i32 %5258 to i8
  %5260 = and i8 %5259, 1
  %5261 = xor i8 %5260, 1
  store i8 %5261, i8* %21, align 1
  %5262 = xor i64 %5253, %5252
  %5263 = lshr i64 %5262, 4
  %5264 = trunc i64 %5263 to i8
  %5265 = and i8 %5264, 1
  store i8 %5265, i8* %26, align 1
  %5266 = icmp eq i64 %5253, 0
  %5267 = zext i1 %5266 to i8
  store i8 %5267, i8* %29, align 1
  %5268 = lshr i64 %5253, 63
  %5269 = trunc i64 %5268 to i8
  store i8 %5269, i8* %32, align 1
  %5270 = lshr i64 %5252, 63
  %5271 = xor i64 %5268, %5270
  %5272 = add nuw nsw i64 %5271, %5268
  %5273 = icmp eq i64 %5272, 2
  %5274 = zext i1 %5273 to i8
  store i8 %5274, i8* %38, align 1
  store i64 %5253, i64* %RDI.i190, align 8
  %5275 = add i64 %5247, -67414
  %5276 = add i64 %5247, 26
  %5277 = load i64, i64* %6, align 8
  %5278 = add i64 %5277, -8
  %5279 = inttoptr i64 %5278 to i64*
  store i64 %5276, i64* %5279, align 8
  store i64 %5278, i64* %6, align 8
  store i64 %5275, i64* %3, align 8
  %call2_41155b = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %5275, %struct.Memory* %call2_411537)
  %5280 = load i64, i64* %RAX.i66, align 8
  %5281 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5282 = trunc i64 %5280 to i32
  %5283 = and i32 %5282, 255
  %5284 = tail call i32 @llvm.ctpop.i32(i32 %5283)
  %5285 = trunc i32 %5284 to i8
  %5286 = and i8 %5285, 1
  %5287 = xor i8 %5286, 1
  store i8 %5287, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5288 = icmp eq i64 %5280, 0
  %5289 = zext i1 %5288 to i8
  store i8 %5289, i8* %29, align 1
  %5290 = lshr i64 %5280, 63
  %5291 = trunc i64 %5290 to i8
  store i8 %5291, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v141 = select i1 %5288, i64 46, i64 10
  %5292 = add i64 %5281, %.v141
  store i64 %5292, i64* %3, align 8
  br i1 %5288, label %block_.L_41158e, label %block_41156a

block_41156a:                                     ; preds = %block_411546
  store i64 ptrtoint (%G__0x428b9a_type* @G__0x428b9a to i64), i64* %RSI.i, align 8
  %5293 = load i64, i64* %RBP.i, align 8
  %5294 = add i64 %5293, -8
  %5295 = add i64 %5292, 14
  store i64 %5295, i64* %3, align 8
  %5296 = inttoptr i64 %5294 to i64*
  %5297 = load i64, i64* %5296, align 8
  %5298 = add i64 %5297, 6
  store i64 %5298, i64* %RAX.i66, align 8
  %5299 = icmp ugt i64 %5297, -7
  %5300 = zext i1 %5299 to i8
  store i8 %5300, i8* %14, align 1
  %5301 = trunc i64 %5298 to i32
  %5302 = and i32 %5301, 255
  %5303 = tail call i32 @llvm.ctpop.i32(i32 %5302)
  %5304 = trunc i32 %5303 to i8
  %5305 = and i8 %5304, 1
  %5306 = xor i8 %5305, 1
  store i8 %5306, i8* %21, align 1
  %5307 = xor i64 %5298, %5297
  %5308 = lshr i64 %5307, 4
  %5309 = trunc i64 %5308 to i8
  %5310 = and i8 %5309, 1
  store i8 %5310, i8* %26, align 1
  %5311 = icmp eq i64 %5298, 0
  %5312 = zext i1 %5311 to i8
  store i8 %5312, i8* %29, align 1
  %5313 = lshr i64 %5298, 63
  %5314 = trunc i64 %5313 to i8
  store i8 %5314, i8* %32, align 1
  %5315 = lshr i64 %5297, 63
  %5316 = xor i64 %5313, %5315
  %5317 = add nuw nsw i64 %5316, %5313
  %5318 = icmp eq i64 %5317, 2
  %5319 = zext i1 %5318 to i8
  store i8 %5319, i8* %38, align 1
  store i64 %5298, i64* %RDI.i190, align 8
  %5320 = add i64 %5292, -67450
  %5321 = add i64 %5292, 26
  %5322 = load i64, i64* %6, align 8
  %5323 = add i64 %5322, -8
  %5324 = inttoptr i64 %5323 to i64*
  store i64 %5321, i64* %5324, align 8
  store i64 %5323, i64* %6, align 8
  store i64 %5320, i64* %3, align 8
  %call2_41157f = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %5320, %struct.Memory* %call2_41155b)
  %5325 = load i64, i64* %RAX.i66, align 8
  %5326 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5327 = trunc i64 %5325 to i32
  %5328 = and i32 %5327, 255
  %5329 = tail call i32 @llvm.ctpop.i32(i32 %5328)
  %5330 = trunc i32 %5329 to i8
  %5331 = and i8 %5330, 1
  %5332 = xor i8 %5331, 1
  store i8 %5332, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5333 = icmp eq i64 %5325, 0
  %5334 = zext i1 %5333 to i8
  store i8 %5334, i8* %29, align 1
  %5335 = lshr i64 %5325, 63
  %5336 = trunc i64 %5335 to i8
  store i8 %5336, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v142 = select i1 %5333, i64 10, i64 52
  %5337 = add i64 %5326, %.v142
  store i64 %5337, i64* %3, align 8
  br i1 %5333, label %block_.L_41158e, label %block_.L_4115b8

block_.L_41158e:                                  ; preds = %block_41156a, %block_411546
  %5338 = phi i64 [ %5292, %block_411546 ], [ %5337, %block_41156a ]
  %MEMORY.51 = phi %struct.Memory* [ %call2_41155b, %block_411546 ], [ %call2_41157f, %block_41156a ]
  store i64 ptrtoint (%G__0x428b9f_type* @G__0x428b9f to i64), i64* %RSI.i, align 8
  store i64 1, i64* %RAX.i66, align 8
  store i64 1, i64* %RDX.i, align 8
  %5339 = load i64, i64* %RBP.i, align 8
  %5340 = add i64 %5339, -8
  %5341 = add i64 %5338, 21
  store i64 %5341, i64* %3, align 8
  %5342 = inttoptr i64 %5340 to i64*
  %5343 = load i64, i64* %5342, align 8
  %5344 = add i64 %5343, 6
  store i64 %5344, i64* %RCX.i96, align 8
  %5345 = icmp ugt i64 %5343, -7
  %5346 = zext i1 %5345 to i8
  store i8 %5346, i8* %14, align 1
  %5347 = trunc i64 %5344 to i32
  %5348 = and i32 %5347, 255
  %5349 = tail call i32 @llvm.ctpop.i32(i32 %5348)
  %5350 = trunc i32 %5349 to i8
  %5351 = and i8 %5350, 1
  %5352 = xor i8 %5351, 1
  store i8 %5352, i8* %21, align 1
  %5353 = xor i64 %5344, %5343
  %5354 = lshr i64 %5353, 4
  %5355 = trunc i64 %5354 to i8
  %5356 = and i8 %5355, 1
  store i8 %5356, i8* %26, align 1
  %5357 = icmp eq i64 %5344, 0
  %5358 = zext i1 %5357 to i8
  store i8 %5358, i8* %29, align 1
  %5359 = lshr i64 %5344, 63
  %5360 = trunc i64 %5359 to i8
  store i8 %5360, i8* %32, align 1
  %5361 = lshr i64 %5343, 63
  %5362 = xor i64 %5359, %5361
  %5363 = add nuw nsw i64 %5362, %5359
  %5364 = icmp eq i64 %5363, 2
  %5365 = zext i1 %5364 to i8
  store i8 %5365, i8* %38, align 1
  store i64 %5344, i64* %RDI.i190, align 8
  %5366 = add i64 %5338, -67886
  %5367 = add i64 %5338, 33
  %5368 = load i64, i64* %6, align 8
  %5369 = add i64 %5368, -8
  %5370 = inttoptr i64 %5369 to i64*
  store i64 %5367, i64* %5370, align 8
  store i64 %5369, i64* %6, align 8
  store i64 %5366, i64* %3, align 8
  %5371 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.51)
  %5372 = load i32, i32* %EAX.i76, align 4
  %5373 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5374 = and i32 %5372, 255
  %5375 = tail call i32 @llvm.ctpop.i32(i32 %5374)
  %5376 = trunc i32 %5375 to i8
  %5377 = and i8 %5376, 1
  %5378 = xor i8 %5377, 1
  store i8 %5378, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5379 = icmp eq i32 %5372, 0
  %5380 = zext i1 %5379 to i8
  store i8 %5380, i8* %29, align 1
  %5381 = lshr i32 %5372, 31
  %5382 = trunc i32 %5381 to i8
  store i8 %5382, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v143 = select i1 %5379, i64 9, i64 111
  %5383 = add i64 %5373, %.v143
  store i64 %5383, i64* %3, align 8
  br i1 %5379, label %block_.L_4115b8, label %block_.L_41161e

block_.L_4115b8:                                  ; preds = %block_.L_41158e, %block_41156a, %block_411522, %block_.L_4114f8
  %5384 = phi i64 [ %5202, %block_.L_4114f8 ], [ %5247, %block_411522 ], [ %5383, %block_.L_41158e ], [ %5337, %block_41156a ]
  %MEMORY.52 = phi %struct.Memory* [ %5190, %block_.L_4114f8 ], [ %call2_411537, %block_411522 ], [ %5371, %block_.L_41158e ], [ %call2_41157f, %block_41156a ]
  store i64 ptrtoint (%G__0x428ba1_type* @G__0x428ba1 to i64), i64* %RSI.i, align 8
  %5385 = load i64, i64* %RBP.i, align 8
  %5386 = add i64 %5385, -8
  %5387 = add i64 %5384, 14
  store i64 %5387, i64* %3, align 8
  %5388 = inttoptr i64 %5386 to i64*
  %5389 = load i64, i64* %5388, align 8
  %5390 = add i64 %5389, 6
  store i64 %5390, i64* %RAX.i66, align 8
  %5391 = icmp ugt i64 %5389, -7
  %5392 = zext i1 %5391 to i8
  store i8 %5392, i8* %14, align 1
  %5393 = trunc i64 %5390 to i32
  %5394 = and i32 %5393, 255
  %5395 = tail call i32 @llvm.ctpop.i32(i32 %5394)
  %5396 = trunc i32 %5395 to i8
  %5397 = and i8 %5396, 1
  %5398 = xor i8 %5397, 1
  store i8 %5398, i8* %21, align 1
  %5399 = xor i64 %5390, %5389
  %5400 = lshr i64 %5399, 4
  %5401 = trunc i64 %5400 to i8
  %5402 = and i8 %5401, 1
  store i8 %5402, i8* %26, align 1
  %5403 = icmp eq i64 %5390, 0
  %5404 = zext i1 %5403 to i8
  store i8 %5404, i8* %29, align 1
  %5405 = lshr i64 %5390, 63
  %5406 = trunc i64 %5405 to i8
  store i8 %5406, i8* %32, align 1
  %5407 = lshr i64 %5389, 63
  %5408 = xor i64 %5405, %5407
  %5409 = add nuw nsw i64 %5408, %5405
  %5410 = icmp eq i64 %5409, 2
  %5411 = zext i1 %5410 to i8
  store i8 %5411, i8* %38, align 1
  store i64 %5390, i64* %RDI.i190, align 8
  %5412 = add i64 %5384, -67528
  %5413 = add i64 %5384, 26
  %5414 = load i64, i64* %6, align 8
  %5415 = add i64 %5414, -8
  %5416 = inttoptr i64 %5415 to i64*
  store i64 %5413, i64* %5416, align 8
  store i64 %5415, i64* %6, align 8
  store i64 %5412, i64* %3, align 8
  %call2_4115cd = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %5412, %struct.Memory* %MEMORY.52)
  %5417 = load i64, i64* %RAX.i66, align 8
  %5418 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5419 = trunc i64 %5417 to i32
  %5420 = and i32 %5419, 255
  %5421 = tail call i32 @llvm.ctpop.i32(i32 %5420)
  %5422 = trunc i32 %5421 to i8
  %5423 = and i8 %5422, 1
  %5424 = xor i8 %5423, 1
  store i8 %5424, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5425 = icmp eq i64 %5417, 0
  %5426 = zext i1 %5425 to i8
  store i8 %5426, i8* %29, align 1
  %5427 = lshr i64 %5417, 63
  %5428 = trunc i64 %5427 to i8
  store i8 %5428, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v132 = select i1 %5425, i64 10, i64 76
  %5429 = add i64 %5418, %.v132
  store i64 %5429, i64* %3, align 8
  br i1 %5425, label %block_4115dc, label %block_.L_41161e

block_4115dc:                                     ; preds = %block_.L_4115b8
  store i64 ptrtoint (%G__0x428baa_type* @G__0x428baa to i64), i64* %RDI.i190, align 8
  %AL.i242 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i242, align 1
  %5430 = add i64 %5429, -67884
  %5431 = add i64 %5429, 17
  %5432 = load i64, i64* %6, align 8
  %5433 = add i64 %5432, -8
  %5434 = inttoptr i64 %5433 to i64*
  store i64 %5431, i64* %5434, align 8
  store i64 %5433, i64* %6, align 8
  store i64 %5430, i64* %3, align 8
  %5435 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4115cd)
  %5436 = load i64, i64* %RBP.i, align 8
  %5437 = add i64 %5436, -272
  %5438 = load i32, i32* %EAX.i76, align 4
  %5439 = load i64, i64* %3, align 8
  %5440 = add i64 %5439, 6
  store i64 %5440, i64* %3, align 8
  %5441 = inttoptr i64 %5437 to i32*
  store i32 %5438, i32* %5441, align 4
  %5442 = load i64, i64* %3, align 8
  %5443 = add i64 %5442, -5267
  %5444 = add i64 %5442, 5
  %5445 = load i64, i64* %6, align 8
  %5446 = add i64 %5445, -8
  %5447 = inttoptr i64 %5446 to i64*
  store i64 %5444, i64* %5447, align 8
  store i64 %5446, i64* %6, align 8
  store i64 %5443, i64* %3, align 8
  %call2_4115f3 = tail call %struct.Memory* @sub_410160.ResetHandValue(%struct.State* nonnull %0, i64 %5443, %struct.Memory* %5435)
  %5448 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x86bd90_type* @G_0x86bd90 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x86bd78_type* @G_0x86bd78 to i32*), align 8
  %5449 = add i64 %5448, 33
  store i64 %5449, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x86bd74_type* @G_0x86bd74 to i32*), align 8
  %5450 = add i64 %5448, 586
  br label %block_.L_411842

block_.L_41161e:                                  ; preds = %block_.L_4115b8, %block_.L_41158e
  %5451 = phi i64 [ %5429, %block_.L_4115b8 ], [ %5383, %block_.L_41158e ]
  %MEMORY.53 = phi %struct.Memory* [ %call2_4115cd, %block_.L_4115b8 ], [ %5371, %block_.L_41158e ]
  store i64 ptrtoint (%G__0x428be1_type* @G__0x428be1 to i64), i64* %RSI.i, align 8
  store i64 25, i64* %RAX.i66, align 8
  store i64 25, i64* %RDX.i, align 8
  %5452 = load i64, i64* %RBP.i, align 8
  %5453 = add i64 %5452, -8
  %5454 = add i64 %5451, 21
  store i64 %5454, i64* %3, align 8
  %5455 = inttoptr i64 %5453 to i64*
  %5456 = load i64, i64* %5455, align 8
  %5457 = add i64 %5456, 6
  store i64 %5457, i64* %RCX.i96, align 8
  %5458 = icmp ugt i64 %5456, -7
  %5459 = zext i1 %5458 to i8
  store i8 %5459, i8* %14, align 1
  %5460 = trunc i64 %5457 to i32
  %5461 = and i32 %5460, 255
  %5462 = tail call i32 @llvm.ctpop.i32(i32 %5461)
  %5463 = trunc i32 %5462 to i8
  %5464 = and i8 %5463, 1
  %5465 = xor i8 %5464, 1
  store i8 %5465, i8* %21, align 1
  %5466 = xor i64 %5457, %5456
  %5467 = lshr i64 %5466, 4
  %5468 = trunc i64 %5467 to i8
  %5469 = and i8 %5468, 1
  store i8 %5469, i8* %26, align 1
  %5470 = icmp eq i64 %5457, 0
  %5471 = zext i1 %5470 to i8
  store i8 %5471, i8* %29, align 1
  %5472 = lshr i64 %5457, 63
  %5473 = trunc i64 %5472 to i8
  store i8 %5473, i8* %32, align 1
  %5474 = lshr i64 %5456, 63
  %5475 = xor i64 %5472, %5474
  %5476 = add nuw nsw i64 %5475, %5472
  %5477 = icmp eq i64 %5476, 2
  %5478 = zext i1 %5477 to i8
  store i8 %5478, i8* %38, align 1
  store i64 %5457, i64* %RDI.i190, align 8
  %5479 = add i64 %5451, -68030
  %5480 = add i64 %5451, 33
  %5481 = load i64, i64* %6, align 8
  %5482 = add i64 %5481, -8
  %5483 = inttoptr i64 %5482 to i64*
  store i64 %5480, i64* %5483, align 8
  store i64 %5482, i64* %6, align 8
  store i64 %5479, i64* %3, align 8
  %5484 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.53)
  %5485 = load i32, i32* %EAX.i76, align 4
  %5486 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5487 = and i32 %5485, 255
  %5488 = tail call i32 @llvm.ctpop.i32(i32 %5487)
  %5489 = trunc i32 %5488 to i8
  %5490 = and i8 %5489, 1
  %5491 = xor i8 %5490, 1
  store i8 %5491, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5492 = icmp eq i32 %5485, 0
  %5493 = zext i1 %5492 to i8
  store i8 %5493, i8* %29, align 1
  %5494 = lshr i32 %5485, 31
  %5495 = trunc i32 %5494 to i8
  store i8 %5495, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v133 = select i1 %5492, i64 51, i64 9
  %5496 = add i64 %5486, %.v133
  store i64 %5496, i64* %3, align 8
  br i1 %5492, label %block_.L_411672, label %block_411648

block_411648:                                     ; preds = %block_.L_41161e
  store i64 ptrtoint (%G__0x428bfb_type* @G__0x428bfb to i64), i64* %RSI.i, align 8
  store i64 4, i64* %RAX.i66, align 8
  store i64 4, i64* %RDX.i, align 8
  %5497 = load i64, i64* %RBP.i, align 8
  %5498 = add i64 %5497, -8
  %5499 = add i64 %5496, 21
  store i64 %5499, i64* %3, align 8
  %5500 = inttoptr i64 %5498 to i64*
  %5501 = load i64, i64* %5500, align 8
  %5502 = add i64 %5501, 6
  store i64 %5502, i64* %RCX.i96, align 8
  %5503 = icmp ugt i64 %5501, -7
  %5504 = zext i1 %5503 to i8
  store i8 %5504, i8* %14, align 1
  %5505 = trunc i64 %5502 to i32
  %5506 = and i32 %5505, 255
  %5507 = tail call i32 @llvm.ctpop.i32(i32 %5506)
  %5508 = trunc i32 %5507 to i8
  %5509 = and i8 %5508, 1
  %5510 = xor i8 %5509, 1
  store i8 %5510, i8* %21, align 1
  %5511 = xor i64 %5502, %5501
  %5512 = lshr i64 %5511, 4
  %5513 = trunc i64 %5512 to i8
  %5514 = and i8 %5513, 1
  store i8 %5514, i8* %26, align 1
  %5515 = icmp eq i64 %5502, 0
  %5516 = zext i1 %5515 to i8
  store i8 %5516, i8* %29, align 1
  %5517 = lshr i64 %5502, 63
  %5518 = trunc i64 %5517 to i8
  store i8 %5518, i8* %32, align 1
  %5519 = lshr i64 %5501, 63
  %5520 = xor i64 %5517, %5519
  %5521 = add nuw nsw i64 %5520, %5517
  %5522 = icmp eq i64 %5521, 2
  %5523 = zext i1 %5522 to i8
  store i8 %5523, i8* %38, align 1
  store i64 %5502, i64* %RDI.i190, align 8
  %5524 = add i64 %5496, -68072
  %5525 = add i64 %5496, 33
  %5526 = load i64, i64* %6, align 8
  %5527 = add i64 %5526, -8
  %5528 = inttoptr i64 %5527 to i64*
  store i64 %5525, i64* %5528, align 8
  store i64 %5527, i64* %6, align 8
  store i64 %5524, i64* %3, align 8
  %5529 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %5484)
  %5530 = load i32, i32* %EAX.i76, align 4
  %5531 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5532 = and i32 %5530, 255
  %5533 = tail call i32 @llvm.ctpop.i32(i32 %5532)
  %5534 = trunc i32 %5533 to i8
  %5535 = and i8 %5534, 1
  %5536 = xor i8 %5535, 1
  store i8 %5536, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5537 = icmp eq i32 %5530, 0
  %5538 = zext i1 %5537 to i8
  store i8 %5538, i8* %29, align 1
  %5539 = lshr i32 %5530, 31
  %5540 = trunc i32 %5539 to i8
  store i8 %5540, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v134 = select i1 %5537, i64 9, i64 47
  %5541 = add i64 %5531, %.v134
  store i64 %5541, i64* %3, align 8
  br i1 %5537, label %block_.L_411672, label %block_.L_411698

block_.L_411672:                                  ; preds = %block_411648, %block_.L_41161e
  %5542 = phi i64 [ %5496, %block_.L_41161e ], [ %5541, %block_411648 ]
  %MEMORY.54 = phi %struct.Memory* [ %5484, %block_.L_41161e ], [ %5529, %block_411648 ]
  store i32 1, i32* bitcast (%G_0x886a60_type* @G_0x886a60 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x86bd90_type* @G_0x86bd90 to i32*), align 8
  %5543 = add i64 %5542, 33
  store i64 %5543, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0x86bd78_type* @G_0x86bd78 to i32*), align 8
  %5544 = add i64 %5542, 459
  br label %block_.L_41183d

block_.L_411698:                                  ; preds = %block_411648
  store i64 ptrtoint (%G__0x428c00_type* @G__0x428c00 to i64), i64* %RSI.i, align 8
  store i64 26, i64* %RAX.i66, align 8
  store i64 26, i64* %RDX.i, align 8
  %5545 = load i64, i64* %RBP.i, align 8
  %5546 = add i64 %5545, -8
  %5547 = add i64 %5541, 21
  store i64 %5547, i64* %3, align 8
  %5548 = inttoptr i64 %5546 to i64*
  %5549 = load i64, i64* %5548, align 8
  %5550 = add i64 %5549, 6
  store i64 %5550, i64* %RCX.i96, align 8
  %5551 = icmp ugt i64 %5549, -7
  %5552 = zext i1 %5551 to i8
  store i8 %5552, i8* %14, align 1
  %5553 = trunc i64 %5550 to i32
  %5554 = and i32 %5553, 255
  %5555 = tail call i32 @llvm.ctpop.i32(i32 %5554)
  %5556 = trunc i32 %5555 to i8
  %5557 = and i8 %5556, 1
  %5558 = xor i8 %5557, 1
  store i8 %5558, i8* %21, align 1
  %5559 = xor i64 %5550, %5549
  %5560 = lshr i64 %5559, 4
  %5561 = trunc i64 %5560 to i8
  %5562 = and i8 %5561, 1
  store i8 %5562, i8* %26, align 1
  %5563 = icmp eq i64 %5550, 0
  %5564 = zext i1 %5563 to i8
  store i8 %5564, i8* %29, align 1
  %5565 = lshr i64 %5550, 63
  %5566 = trunc i64 %5565 to i8
  store i8 %5566, i8* %32, align 1
  %5567 = lshr i64 %5549, 63
  %5568 = xor i64 %5565, %5567
  %5569 = add nuw nsw i64 %5568, %5565
  %5570 = icmp eq i64 %5569, 2
  %5571 = zext i1 %5570 to i8
  store i8 %5571, i8* %38, align 1
  store i64 %5550, i64* %RDI.i190, align 8
  %5572 = add i64 %5541, -68152
  %5573 = add i64 %5541, 33
  %5574 = load i64, i64* %6, align 8
  %5575 = add i64 %5574, -8
  %5576 = inttoptr i64 %5575 to i64*
  store i64 %5573, i64* %5576, align 8
  store i64 %5575, i64* %6, align 8
  store i64 %5572, i64* %3, align 8
  %5577 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %5529)
  %5578 = load i32, i32* %EAX.i76, align 4
  %5579 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5580 = and i32 %5578, 255
  %5581 = tail call i32 @llvm.ctpop.i32(i32 %5580)
  %5582 = trunc i32 %5581 to i8
  %5583 = and i8 %5582, 1
  %5584 = xor i8 %5583, 1
  store i8 %5584, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5585 = icmp eq i32 %5578, 0
  %5586 = zext i1 %5585 to i8
  store i8 %5586, i8* %29, align 1
  %5587 = lshr i32 %5578, 31
  %5588 = trunc i32 %5587 to i8
  store i8 %5588, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v135 = select i1 %5585, i64 9, i64 47
  %5589 = add i64 %5579, %.v135
  store i64 %5589, i64* %3, align 8
  br i1 %5585, label %block_4116c2, label %block_.L_4116e8

block_4116c2:                                     ; preds = %block_.L_411698
  store i32 1, i32* bitcast (%G_0x886a60_type* @G_0x886a60 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x86bd90_type* @G_0x86bd90 to i32*), align 8
  %5590 = add i64 %5589, 33
  store i64 %5590, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0x86bd74_type* @G_0x86bd74 to i32*), align 8
  %5591 = add i64 %5589, 374
  br label %block_.L_411838

block_.L_4116e8:                                  ; preds = %block_.L_411698
  store i64 ptrtoint (%G__0x428810_type* @G__0x428810 to i64), i64* %RSI.i, align 8
  store i64 5, i64* %RAX.i66, align 8
  store i64 5, i64* %RDX.i, align 8
  %5592 = load i64, i64* %RBP.i, align 8
  %5593 = add i64 %5592, -8
  %5594 = add i64 %5589, 21
  store i64 %5594, i64* %3, align 8
  %5595 = inttoptr i64 %5593 to i64*
  %5596 = load i64, i64* %5595, align 8
  %5597 = add i64 %5596, 6
  store i64 %5597, i64* %RCX.i96, align 8
  %5598 = icmp ugt i64 %5596, -7
  %5599 = zext i1 %5598 to i8
  store i8 %5599, i8* %14, align 1
  %5600 = trunc i64 %5597 to i32
  %5601 = and i32 %5600, 255
  %5602 = tail call i32 @llvm.ctpop.i32(i32 %5601)
  %5603 = trunc i32 %5602 to i8
  %5604 = and i8 %5603, 1
  %5605 = xor i8 %5604, 1
  store i8 %5605, i8* %21, align 1
  %5606 = xor i64 %5597, %5596
  %5607 = lshr i64 %5606, 4
  %5608 = trunc i64 %5607 to i8
  %5609 = and i8 %5608, 1
  store i8 %5609, i8* %26, align 1
  %5610 = icmp eq i64 %5597, 0
  %5611 = zext i1 %5610 to i8
  store i8 %5611, i8* %29, align 1
  %5612 = lshr i64 %5597, 63
  %5613 = trunc i64 %5612 to i8
  store i8 %5613, i8* %32, align 1
  %5614 = lshr i64 %5596, 63
  %5615 = xor i64 %5612, %5614
  %5616 = add nuw nsw i64 %5615, %5612
  %5617 = icmp eq i64 %5616, 2
  %5618 = zext i1 %5617 to i8
  store i8 %5618, i8* %38, align 1
  store i64 %5597, i64* %RDI.i190, align 8
  %5619 = add i64 %5589, -68232
  %5620 = add i64 %5589, 33
  %5621 = load i64, i64* %6, align 8
  %5622 = add i64 %5621, -8
  %5623 = inttoptr i64 %5622 to i64*
  store i64 %5620, i64* %5623, align 8
  store i64 %5622, i64* %6, align 8
  store i64 %5619, i64* %3, align 8
  %5624 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %5577)
  %5625 = load i32, i32* %EAX.i76, align 4
  %5626 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5627 = and i32 %5625, 255
  %5628 = tail call i32 @llvm.ctpop.i32(i32 %5627)
  %5629 = trunc i32 %5628 to i8
  %5630 = and i8 %5629, 1
  %5631 = xor i8 %5630, 1
  store i8 %5631, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5632 = icmp eq i32 %5625, 0
  %5633 = zext i1 %5632 to i8
  store i8 %5633, i8* %29, align 1
  %5634 = lshr i32 %5625, 31
  %5635 = trunc i32 %5634 to i8
  store i8 %5635, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v136 = select i1 %5632, i64 9, i64 14
  %5636 = add i64 %5626, %.v136
  store i64 %5636, i64* %3, align 8
  br i1 %5632, label %block_411712, label %block_.L_411717

block_411712:                                     ; preds = %block_.L_4116e8
  %5637 = add i64 %5636, 349
  br label %block_.L_41186f

block_.L_411717:                                  ; preds = %block_.L_4116e8
  store i64 ptrtoint (%G__0x428c1b_type* @G__0x428c1b to i64), i64* %RSI.i, align 8
  store i64 2, i64* %RAX.i66, align 8
  store i64 2, i64* %RDX.i, align 8
  %5638 = load i64, i64* %RBP.i, align 8
  %5639 = add i64 %5638, -8
  %5640 = add i64 %5636, 21
  store i64 %5640, i64* %3, align 8
  %5641 = inttoptr i64 %5639 to i64*
  %5642 = load i64, i64* %5641, align 8
  %5643 = add i64 %5642, 6
  store i64 %5643, i64* %RCX.i96, align 8
  %5644 = icmp ugt i64 %5642, -7
  %5645 = zext i1 %5644 to i8
  store i8 %5645, i8* %14, align 1
  %5646 = trunc i64 %5643 to i32
  %5647 = and i32 %5646, 255
  %5648 = tail call i32 @llvm.ctpop.i32(i32 %5647)
  %5649 = trunc i32 %5648 to i8
  %5650 = and i8 %5649, 1
  %5651 = xor i8 %5650, 1
  store i8 %5651, i8* %21, align 1
  %5652 = xor i64 %5643, %5642
  %5653 = lshr i64 %5652, 4
  %5654 = trunc i64 %5653 to i8
  %5655 = and i8 %5654, 1
  store i8 %5655, i8* %26, align 1
  %5656 = icmp eq i64 %5643, 0
  %5657 = zext i1 %5656 to i8
  store i8 %5657, i8* %29, align 1
  %5658 = lshr i64 %5643, 63
  %5659 = trunc i64 %5658 to i8
  store i8 %5659, i8* %32, align 1
  %5660 = lshr i64 %5642, 63
  %5661 = xor i64 %5658, %5660
  %5662 = add nuw nsw i64 %5661, %5658
  %5663 = icmp eq i64 %5662, 2
  %5664 = zext i1 %5663 to i8
  store i8 %5664, i8* %38, align 1
  store i64 %5643, i64* %RDI.i190, align 8
  %5665 = add i64 %5636, -68279
  %5666 = add i64 %5636, 33
  %5667 = load i64, i64* %6, align 8
  %5668 = add i64 %5667, -8
  %5669 = inttoptr i64 %5668 to i64*
  store i64 %5666, i64* %5669, align 8
  store i64 %5668, i64* %6, align 8
  store i64 %5665, i64* %3, align 8
  %5670 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %5624)
  %5671 = load i32, i32* %EAX.i76, align 4
  %5672 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5673 = and i32 %5671, 255
  %5674 = tail call i32 @llvm.ctpop.i32(i32 %5673)
  %5675 = trunc i32 %5674 to i8
  %5676 = and i8 %5675, 1
  %5677 = xor i8 %5676, 1
  store i8 %5677, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5678 = icmp eq i32 %5671, 0
  %5679 = zext i1 %5678 to i8
  store i8 %5679, i8* %29, align 1
  %5680 = lshr i32 %5671, 31
  %5681 = trunc i32 %5680 to i8
  store i8 %5681, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v137 = select i1 %5678, i64 9, i64 14
  %5682 = add i64 %5672, %.v137
  store i64 %5682, i64* %3, align 8
  br i1 %5678, label %block_411741, label %block_.L_411746

block_411741:                                     ; preds = %block_.L_411717
  %5683 = add i64 %5682, 302
  br label %block_.L_41186f

block_.L_411746:                                  ; preds = %block_.L_411717
  store i64 ptrtoint (%G__0x428c1e_type* @G__0x428c1e to i64), i64* %RSI.i, align 8
  store i64 2, i64* %RAX.i66, align 8
  store i64 2, i64* %RDX.i, align 8
  %5684 = load i64, i64* %RBP.i, align 8
  %5685 = add i64 %5684, -8
  %5686 = add i64 %5682, 21
  store i64 %5686, i64* %3, align 8
  %5687 = inttoptr i64 %5685 to i64*
  %5688 = load i64, i64* %5687, align 8
  %5689 = add i64 %5688, 6
  store i64 %5689, i64* %RCX.i96, align 8
  %5690 = icmp ugt i64 %5688, -7
  %5691 = zext i1 %5690 to i8
  store i8 %5691, i8* %14, align 1
  %5692 = trunc i64 %5689 to i32
  %5693 = and i32 %5692, 255
  %5694 = tail call i32 @llvm.ctpop.i32(i32 %5693)
  %5695 = trunc i32 %5694 to i8
  %5696 = and i8 %5695, 1
  %5697 = xor i8 %5696, 1
  store i8 %5697, i8* %21, align 1
  %5698 = xor i64 %5689, %5688
  %5699 = lshr i64 %5698, 4
  %5700 = trunc i64 %5699 to i8
  %5701 = and i8 %5700, 1
  store i8 %5701, i8* %26, align 1
  %5702 = icmp eq i64 %5689, 0
  %5703 = zext i1 %5702 to i8
  store i8 %5703, i8* %29, align 1
  %5704 = lshr i64 %5689, 63
  %5705 = trunc i64 %5704 to i8
  store i8 %5705, i8* %32, align 1
  %5706 = lshr i64 %5688, 63
  %5707 = xor i64 %5704, %5706
  %5708 = add nuw nsw i64 %5707, %5704
  %5709 = icmp eq i64 %5708, 2
  %5710 = zext i1 %5709 to i8
  store i8 %5710, i8* %38, align 1
  store i64 %5689, i64* %RDI.i190, align 8
  %5711 = add i64 %5682, -68326
  %5712 = add i64 %5682, 33
  %5713 = load i64, i64* %6, align 8
  %5714 = add i64 %5713, -8
  %5715 = inttoptr i64 %5714 to i64*
  store i64 %5712, i64* %5715, align 8
  store i64 %5714, i64* %6, align 8
  store i64 %5711, i64* %3, align 8
  %5716 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %5670)
  %5717 = load i32, i32* %EAX.i76, align 4
  %5718 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5719 = and i32 %5717, 255
  %5720 = tail call i32 @llvm.ctpop.i32(i32 %5719)
  %5721 = trunc i32 %5720 to i8
  %5722 = and i8 %5721, 1
  %5723 = xor i8 %5722, 1
  store i8 %5723, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5724 = icmp eq i32 %5717, 0
  %5725 = zext i1 %5724 to i8
  store i8 %5725, i8* %29, align 1
  %5726 = lshr i32 %5717, 31
  %5727 = trunc i32 %5726 to i8
  store i8 %5727, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v138 = select i1 %5724, i64 51, i64 9
  %5728 = add i64 %5718, %.v138
  store i64 %5728, i64* %3, align 8
  br i1 %5724, label %block_.L_41179a, label %block_411770

block_411770:                                     ; preds = %block_.L_411746
  store i64 ptrtoint (%G__0x428c21_type* @G__0x428c21 to i64), i64* %RSI.i, align 8
  store i64 5, i64* %RAX.i66, align 8
  store i64 5, i64* %RDX.i, align 8
  %5729 = load i64, i64* %RBP.i, align 8
  %5730 = add i64 %5729, -8
  %5731 = add i64 %5728, 21
  store i64 %5731, i64* %3, align 8
  %5732 = inttoptr i64 %5730 to i64*
  %5733 = load i64, i64* %5732, align 8
  %5734 = add i64 %5733, 6
  store i64 %5734, i64* %RCX.i96, align 8
  %5735 = icmp ugt i64 %5733, -7
  %5736 = zext i1 %5735 to i8
  store i8 %5736, i8* %14, align 1
  %5737 = trunc i64 %5734 to i32
  %5738 = and i32 %5737, 255
  %5739 = tail call i32 @llvm.ctpop.i32(i32 %5738)
  %5740 = trunc i32 %5739 to i8
  %5741 = and i8 %5740, 1
  %5742 = xor i8 %5741, 1
  store i8 %5742, i8* %21, align 1
  %5743 = xor i64 %5734, %5733
  %5744 = lshr i64 %5743, 4
  %5745 = trunc i64 %5744 to i8
  %5746 = and i8 %5745, 1
  store i8 %5746, i8* %26, align 1
  %5747 = icmp eq i64 %5734, 0
  %5748 = zext i1 %5747 to i8
  store i8 %5748, i8* %29, align 1
  %5749 = lshr i64 %5734, 63
  %5750 = trunc i64 %5749 to i8
  store i8 %5750, i8* %32, align 1
  %5751 = lshr i64 %5733, 63
  %5752 = xor i64 %5749, %5751
  %5753 = add nuw nsw i64 %5752, %5749
  %5754 = icmp eq i64 %5753, 2
  %5755 = zext i1 %5754 to i8
  store i8 %5755, i8* %38, align 1
  store i64 %5734, i64* %RDI.i190, align 8
  %5756 = add i64 %5728, -68368
  %5757 = add i64 %5728, 33
  %5758 = load i64, i64* %6, align 8
  %5759 = add i64 %5758, -8
  %5760 = inttoptr i64 %5759 to i64*
  store i64 %5757, i64* %5760, align 8
  store i64 %5759, i64* %6, align 8
  store i64 %5756, i64* %3, align 8
  %5761 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %5716)
  %5762 = load i32, i32* %EAX.i76, align 4
  %5763 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5764 = and i32 %5762, 255
  %5765 = tail call i32 @llvm.ctpop.i32(i32 %5764)
  %5766 = trunc i32 %5765 to i8
  %5767 = and i8 %5766, 1
  %5768 = xor i8 %5767, 1
  store i8 %5768, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5769 = icmp eq i32 %5762, 0
  %5770 = zext i1 %5769 to i8
  store i8 %5770, i8* %29, align 1
  %5771 = lshr i32 %5762, 31
  %5772 = trunc i32 %5771 to i8
  store i8 %5772, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v139 = select i1 %5769, i64 9, i64 37
  %5773 = add i64 %5763, %.v139
  store i64 %5773, i64* %3, align 8
  br i1 %5769, label %block_.L_41179a, label %block_.L_4117b6

block_.L_41179a:                                  ; preds = %block_411770, %block_.L_411746
  %5774 = phi i64 [ %5728, %block_.L_411746 ], [ %5773, %block_411770 ]
  %MEMORY.55 = phi %struct.Memory* [ %5716, %block_.L_411746 ], [ %5761, %block_411770 ]
  store i64 ptrtoint (%G__0x428c27_type* @G__0x428c27 to i64), i64* %RDI.i190, align 8
  %AL.i69 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i69, align 1
  %5775 = add i64 %5774, -68330
  %5776 = add i64 %5774, 17
  %5777 = load i64, i64* %6, align 8
  %5778 = add i64 %5777, -8
  %5779 = inttoptr i64 %5778 to i64*
  store i64 %5776, i64* %5779, align 8
  store i64 %5778, i64* %6, align 8
  store i64 %5775, i64* %3, align 8
  %5780 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.55)
  %5781 = load i64, i64* %RBP.i, align 8
  %5782 = add i64 %5781, -276
  %5783 = load i32, i32* %EAX.i76, align 4
  %5784 = load i64, i64* %3, align 8
  %5785 = add i64 %5784, 6
  store i64 %5785, i64* %3, align 8
  %5786 = inttoptr i64 %5782 to i32*
  store i32 %5783, i32* %5786, align 4
  %5787 = load i64, i64* %3, align 8
  %5788 = add i64 %5787, 120
  br label %block_.L_411829

block_.L_4117b6:                                  ; preds = %block_411770
  store i64 ptrtoint (%G__0x428c41_type* @G__0x428c41 to i64), i64* %RSI.i, align 8
  %5789 = load i64, i64* %RBP.i, align 8
  %5790 = add i64 %5789, -8
  %5791 = add i64 %5773, 14
  store i64 %5791, i64* %3, align 8
  %5792 = inttoptr i64 %5790 to i64*
  %5793 = load i64, i64* %5792, align 8
  %5794 = add i64 %5793, 6
  store i64 %5794, i64* %RAX.i66, align 8
  %5795 = icmp ugt i64 %5793, -7
  %5796 = zext i1 %5795 to i8
  store i8 %5796, i8* %14, align 1
  %5797 = trunc i64 %5794 to i32
  %5798 = and i32 %5797, 255
  %5799 = tail call i32 @llvm.ctpop.i32(i32 %5798)
  %5800 = trunc i32 %5799 to i8
  %5801 = and i8 %5800, 1
  %5802 = xor i8 %5801, 1
  store i8 %5802, i8* %21, align 1
  %5803 = xor i64 %5794, %5793
  %5804 = lshr i64 %5803, 4
  %5805 = trunc i64 %5804 to i8
  %5806 = and i8 %5805, 1
  store i8 %5806, i8* %26, align 1
  %5807 = icmp eq i64 %5794, 0
  %5808 = zext i1 %5807 to i8
  store i8 %5808, i8* %29, align 1
  %5809 = lshr i64 %5794, 63
  %5810 = trunc i64 %5809 to i8
  store i8 %5810, i8* %32, align 1
  %5811 = lshr i64 %5793, 63
  %5812 = xor i64 %5809, %5811
  %5813 = add nuw nsw i64 %5812, %5809
  %5814 = icmp eq i64 %5813, 2
  %5815 = zext i1 %5814 to i8
  store i8 %5815, i8* %38, align 1
  store i64 %5794, i64* %RDI.i190, align 8
  %5816 = add i64 %5773, -68038
  %5817 = add i64 %5773, 26
  %5818 = load i64, i64* %6, align 8
  %5819 = add i64 %5818, -8
  %5820 = inttoptr i64 %5819 to i64*
  store i64 %5817, i64* %5820, align 8
  store i64 %5819, i64* %6, align 8
  store i64 %5816, i64* %3, align 8
  %call2_4117cb = tail call %struct.Memory* @sub_400df0.strstr_plt(%struct.State* nonnull %0, i64 %5816, %struct.Memory* %5761)
  %5821 = load i64, i64* %RAX.i66, align 8
  %5822 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5823 = trunc i64 %5821 to i32
  %5824 = and i32 %5823, 255
  %5825 = tail call i32 @llvm.ctpop.i32(i32 %5824)
  %5826 = trunc i32 %5825 to i8
  %5827 = and i8 %5826, 1
  %5828 = xor i8 %5827, 1
  store i8 %5828, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5829 = icmp eq i64 %5821, 0
  %5830 = zext i1 %5829 to i8
  store i8 %5830, i8* %29, align 1
  %5831 = lshr i64 %5821, 63
  %5832 = trunc i64 %5831 to i8
  store i8 %5832, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v140 = select i1 %5829, i64 61, i64 10
  %5833 = add i64 %5822, %.v140
  %5834 = add i64 %5833, 10
  store i64 %5834, i64* %3, align 8
  br i1 %5829, label %block_.L_41180d, label %block_4117da

block_4117da:                                     ; preds = %block_.L_4117b6
  store i64 ptrtoint (%G__0x428c49_type* @G__0x428c49 to i64), i64* %RDI.i190, align 8
  %AL.i45 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i45, align 1
  %5835 = add i64 %5833, -68394
  %5836 = add i64 %5833, 17
  %5837 = load i64, i64* %6, align 8
  %5838 = add i64 %5837, -8
  %5839 = inttoptr i64 %5838 to i64*
  store i64 %5836, i64* %5839, align 8
  store i64 %5838, i64* %6, align 8
  store i64 %5835, i64* %3, align 8
  %5840 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4117cb)
  %5841 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x42873b_type* @G__0x42873b to i64), i64* %RDI.i190, align 8
  %5842 = load i64, i64* %RBP.i, align 8
  %5843 = add i64 %5842, -280
  %5844 = load i32, i32* %EAX.i76, align 4
  %5845 = add i64 %5841, 16
  store i64 %5845, i64* %3, align 8
  %5846 = inttoptr i64 %5843 to i32*
  store i32 %5844, i32* %5846, align 4
  %5847 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i45, align 1
  %5848 = add i64 %5847, -68427
  %5849 = add i64 %5847, 7
  %5850 = load i64, i64* %6, align 8
  %5851 = add i64 %5850, -8
  %5852 = inttoptr i64 %5851 to i64*
  store i64 %5849, i64* %5852, align 8
  store i64 %5851, i64* %6, align 8
  store i64 %5848, i64* %3, align 8
  %5853 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %5840)
  %5854 = load i64, i64* %RBP.i, align 8
  %5855 = add i64 %5854, -284
  %5856 = load i32, i32* %EAX.i76, align 4
  %5857 = load i64, i64* %3, align 8
  %5858 = add i64 %5857, 6
  store i64 %5858, i64* %3, align 8
  %5859 = inttoptr i64 %5855 to i32*
  store i32 %5856, i32* %5859, align 4
  %5860 = load i64, i64* %3, align 8
  %5861 = add i64 %5860, 28
  store i64 %5861, i64* %3, align 8
  br label %block_.L_411824

block_.L_41180d:                                  ; preds = %block_.L_4117b6
  store i64 ptrtoint (%G__0x428ca0_type* @G__0x428ca0 to i64), i64* %RDI.i190, align 8
  %AL.i = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i, align 1
  %5862 = add i64 %5833, -68445
  %5863 = add i64 %5833, 17
  %5864 = load i64, i64* %6, align 8
  %5865 = add i64 %5864, -8
  %5866 = inttoptr i64 %5865 to i64*
  store i64 %5863, i64* %5866, align 8
  store i64 %5865, i64* %6, align 8
  store i64 %5862, i64* %3, align 8
  %5867 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_4117cb)
  %5868 = load i64, i64* %RBP.i, align 8
  %5869 = add i64 %5868, -288
  %5870 = load i32, i32* %EAX.i76, align 4
  %5871 = load i64, i64* %3, align 8
  %5872 = add i64 %5871, 6
  store i64 %5872, i64* %3, align 8
  %5873 = inttoptr i64 %5869 to i32*
  store i32 %5870, i32* %5873, align 4
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_411824

block_.L_411824:                                  ; preds = %block_.L_41180d, %block_4117da
  %5874 = phi i64 [ %.pre117, %block_.L_41180d ], [ %5861, %block_4117da ]
  %MEMORY.56 = phi %struct.Memory* [ %5867, %block_.L_41180d ], [ %5853, %block_4117da ]
  %5875 = add i64 %5874, 5
  store i64 %5875, i64* %3, align 8
  br label %block_.L_411829

block_.L_411829:                                  ; preds = %block_.L_411824, %block_.L_41179a
  %storemerge101 = phi i64 [ %5788, %block_.L_41179a ], [ %5875, %block_.L_411824 ]
  %MEMORY.57 = phi %struct.Memory* [ %5780, %block_.L_41179a ], [ %MEMORY.56, %block_.L_411824 ]
  %5876 = add i64 %storemerge101, 15
  store i64 %5876, i64* %3, align 8
  br label %block_.L_411838

block_.L_411838:                                  ; preds = %block_.L_411829, %block_4116c2
  %storemerge100 = phi i64 [ %5591, %block_4116c2 ], [ %5876, %block_.L_411829 ]
  %MEMORY.58 = phi %struct.Memory* [ %5577, %block_4116c2 ], [ %MEMORY.57, %block_.L_411829 ]
  %5877 = add i64 %storemerge100, 5
  store i64 %5877, i64* %3, align 8
  br label %block_.L_41183d

block_.L_41183d:                                  ; preds = %block_.L_411838, %block_.L_411672
  %storemerge99 = phi i64 [ %5544, %block_.L_411672 ], [ %5877, %block_.L_411838 ]
  %MEMORY.59 = phi %struct.Memory* [ %MEMORY.54, %block_.L_411672 ], [ %MEMORY.58, %block_.L_411838 ]
  %5878 = add i64 %storemerge99, 5
  store i64 %5878, i64* %3, align 8
  br label %block_.L_411842

block_.L_411842:                                  ; preds = %block_.L_41183d, %block_4115dc
  %storemerge98 = phi i64 [ %5450, %block_4115dc ], [ %5878, %block_.L_41183d ]
  %MEMORY.60 = phi %struct.Memory* [ %call2_4115f3, %block_4115dc ], [ %MEMORY.59, %block_.L_41183d ]
  %5879 = add i64 %storemerge98, 5
  store i64 %5879, i64* %3, align 8
  br label %block_.L_411847

block_.L_411847:                                  ; preds = %block_.L_411842, %block_.L_4114f3
  %storemerge95 = phi i64 [ %5157, %block_.L_4114f3 ], [ %5879, %block_.L_411842 ]
  %MEMORY.61 = phi %struct.Memory* [ %MEMORY.50, %block_.L_4114f3 ], [ %MEMORY.60, %block_.L_411842 ]
  %5880 = add i64 %storemerge95, 5
  store i64 %5880, i64* %3, align 8
  br label %block_.L_41184c

block_.L_41184c:                                  ; preds = %block_.L_411847, %block_.L_410d8a
  %storemerge91 = phi i64 [ %2928, %block_.L_410d8a ], [ %5880, %block_.L_411847 ]
  %MEMORY.62 = phi %struct.Memory* [ %MEMORY.26, %block_.L_410d8a ], [ %MEMORY.61, %block_.L_411847 ]
  %5881 = add i64 %storemerge91, 5
  store i64 %5881, i64* %3, align 8
  br label %block_.L_411851

block_.L_411851:                                  ; preds = %block_.L_41184c, %block_4105f3
  %storemerge89 = phi i64 [ %699, %block_4105f3 ], [ %5881, %block_.L_41184c ]
  %MEMORY.63 = phi %struct.Memory* [ %691, %block_4105f3 ], [ %MEMORY.62, %block_.L_41184c ]
  %5882 = add i64 %storemerge89, 5
  store i64 %5882, i64* %3, align 8
  br label %block_.L_411856

block_.L_411856:                                  ; preds = %block_.L_411851, %block_410596
  %storemerge88 = phi i64 [ %626, %block_410596 ], [ %5882, %block_.L_411851 ]
  %MEMORY.64 = phi %struct.Memory* [ %618, %block_410596 ], [ %MEMORY.63, %block_.L_411851 ]
  %5883 = add i64 %storemerge88, 5
  store i64 %5883, i64* %3, align 8
  br label %block_.L_41185b

block_.L_41185b:                                  ; preds = %block_.L_411856, %block_41053a
  %storemerge87 = phi i64 [ %553, %block_41053a ], [ %5883, %block_.L_411856 ]
  %MEMORY.65 = phi %struct.Memory* [ %545, %block_41053a ], [ %MEMORY.64, %block_.L_411856 ]
  %5884 = add i64 %storemerge87, 5
  store i64 %5884, i64* %3, align 8
  br label %block_.L_411860

block_.L_411860:                                  ; preds = %block_.L_41185b, %block_.L_4104de
  %storemerge86 = phi i64 [ %493, %block_.L_4104de ], [ %5884, %block_.L_41185b ]
  %MEMORY.66 = phi %struct.Memory* [ %485, %block_.L_4104de ], [ %MEMORY.65, %block_.L_41185b ]
  %5885 = add i64 %storemerge86, 5
  store i64 %5885, i64* %3, align 8
  br label %block_.L_411865

block_.L_411865:                                  ; preds = %block_.L_411860, %block_.L_41045b
  %storemerge85 = phi i64 [ %388, %block_.L_41045b ], [ %5885, %block_.L_411860 ]
  %MEMORY.67 = phi %struct.Memory* [ %380, %block_.L_41045b ], [ %MEMORY.66, %block_.L_411860 ]
  %5886 = add i64 %storemerge85, 5
  store i64 %5886, i64* %3, align 8
  br label %block_.L_41186a

block_.L_41186a:                                  ; preds = %block_.L_411865, %block_4103d8
  %storemerge = phi i64 [ %283, %block_4103d8 ], [ %5886, %block_.L_411865 ]
  %MEMORY.68 = phi %struct.Memory* [ %275, %block_4103d8 ], [ %MEMORY.67, %block_.L_411865 ]
  %5887 = add i64 %storemerge, 5
  br label %block_.L_41186f

block_.L_41186f:                                  ; preds = %block_.L_41186a, %block_411741, %block_411712, %block_410395, %block_410344
  %.sink = phi i64 [ %5887, %block_.L_41186a ], [ %5683, %block_411741 ], [ %5637, %block_411712 ], [ %222, %block_410395 ], [ %140, %block_410344 ]
  %MEMORY.69 = phi %struct.Memory* [ %MEMORY.68, %block_.L_41186a ], [ %5670, %block_411741 ], [ %5624, %block_411712 ], [ %214, %block_410395 ], [ %132, %block_410344 ]
  %5888 = load i64, i64* %6, align 8
  %5889 = add i64 %5888, 288
  store i64 %5889, i64* %6, align 8
  %5890 = icmp ugt i64 %5888, -289
  %5891 = zext i1 %5890 to i8
  store i8 %5891, i8* %14, align 1
  %5892 = trunc i64 %5889 to i32
  %5893 = and i32 %5892, 255
  %5894 = tail call i32 @llvm.ctpop.i32(i32 %5893)
  %5895 = trunc i32 %5894 to i8
  %5896 = and i8 %5895, 1
  %5897 = xor i8 %5896, 1
  store i8 %5897, i8* %21, align 1
  %5898 = xor i64 %5889, %5888
  %5899 = lshr i64 %5898, 4
  %5900 = trunc i64 %5899 to i8
  %5901 = and i8 %5900, 1
  store i8 %5901, i8* %26, align 1
  %5902 = icmp eq i64 %5889, 0
  %5903 = zext i1 %5902 to i8
  store i8 %5903, i8* %29, align 1
  %5904 = lshr i64 %5889, 63
  %5905 = trunc i64 %5904 to i8
  store i8 %5905, i8* %32, align 1
  %5906 = lshr i64 %5888, 63
  %5907 = xor i64 %5904, %5906
  %5908 = add nuw nsw i64 %5907, %5904
  %5909 = icmp eq i64 %5908, 2
  %5910 = zext i1 %5909 to i8
  store i8 %5910, i8* %38, align 1
  %5911 = add i64 %.sink, 8
  store i64 %5911, i64* %3, align 8
  %5912 = add i64 %5888, 296
  %5913 = inttoptr i64 %5889 to i64*
  %5914 = load i64, i64* %5913, align 8
  store i64 %5914, i64* %RBP.i, align 8
  store i64 %5912, i64* %6, align 8
  %5915 = add i64 %.sink, 9
  store i64 %5915, i64* %3, align 8
  %5916 = inttoptr i64 %5912 to i64*
  %5917 = load i64, i64* %5916, align 8
  store i64 %5917, i64* %3, align 8
  %5918 = add i64 %5888, 304
  store i64 %5918, i64* %6, align 8
  ret %struct.Memory* %MEMORY.69
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
define %struct.Memory* @routine_subq__0x120___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -288
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 288
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
  %17 = xor i64 %6, %3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428778___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428778_type* @G__0x428778 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x427d10___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x427d10_type* @G__0x427d10 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x50___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 80, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x60__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movq__rsi__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x6___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 6
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -7
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
  %17 = xor i64 %6, %3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41035d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x42877d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x42877d_type* @G__0x42877d to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.printf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41186f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x85f154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %6 = add i32 %5, -1
  %7 = icmp eq i32 %5, 0
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
define %struct.Memory* @routine_je_.L_4103ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428810___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428810_type* @G__0x428810 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428816___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428816_type* @G__0x428816 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428851___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428851_type* @G__0x428851 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_410407(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428855___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428855_type* @G__0x428855 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x86bd90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x86bd90_type* @G_0x86bd90 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x86bd60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x86bd60_type* @G_0x86bd60 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41186a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x42888d___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x42888d_type* @G__0x42888d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41045b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4294da___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4294da_type* @G__0x4294da to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41048a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428890___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428890_type* @G__0x428890 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x86bd90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x86bd90_type* @G_0x86bd90 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4__0x86bd60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 4, i32* bitcast (%G_0x86bd60_type* @G_0x86bd60 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411865(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4288af___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4288af_type* @G__0x4288af to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4104de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4288b4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4288b4_type* @G__0x4288b4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_410510(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4288b9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4288b9_type* @G__0x4288b9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x886a60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x886a60_type* @G_0x886a60 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411860(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4288dc___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4288dc_type* @G__0x4288dc to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41056c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4288e1___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4288e1_type* @G__0x4288e1 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x886a60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x886a60_type* @G_0x886a60 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41185b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428905___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428905_type* @G__0x428905 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4105c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x42890b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x42890b_type* @G__0x42890b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x42892e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x42892e_type* @G__0x42892e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411856(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x42893d___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x42893d_type* @G__0x42893d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_410626(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428942___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428942_type* @G__0x428942 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x42895d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x42895d_type* @G__0x42895d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411851(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428998___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428998_type* @G__0x428998 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_410d8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x42896b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x42896b_type* @G__0x42896b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x6___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 6
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -7
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
  %17 = xor i64 %6, %3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strstr_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %3 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %3, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %3, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_410770(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x429b31___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429b31_type* @G__0x429b31 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_410849(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x429b45___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429b45_type* @G__0x429b45 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x42877b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x42877b_type* @G__0x42877b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x429b3b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429b3b_type* @G__0x429b3b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x429b59___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429b59_type* @G__0x429b59 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x429aeb___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429aeb_type* @G__0x429aeb to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428971___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428971_type* @G__0x428971 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x886b84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886b84_type* @G_0x886b84 to i32*), align 8
  %6 = add i32 %5, -1
  %7 = icmp eq i32 %5, 0
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
define %struct.Memory* @routine_jne_.L_4107d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x62d784___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d784_type* @G_0x62d784 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x19___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 25
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -26
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
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
define %struct.Memory* @routine_movl__eax__0x62d784(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62d784_type* @G_0x62d784 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62d78c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d78c_type* @G_0x62d78c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x32___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 50
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -51
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
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
define %struct.Memory* @routine_movl__eax__0x62d78c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62d78c_type* @G_0x62d78c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62d7ac___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d7ac_type* @G_0x62d7ac to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x62d7ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62d7ac_type* @G_0x62d7ac to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62d79c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d79c_type* @G_0x62d79c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x62d79c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62d79c_type* @G_0x62d79c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62d7a4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x64___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 100
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -101
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x62d7a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62d7a4_type* @G_0x62d7a4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41082d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62d788___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d788_type* @G_0x62d788 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x19___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -25
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 25
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x62d788(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62d788_type* @G_0x62d788 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62d790___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d790_type* @G_0x62d790 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x32___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -50
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 50
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x62d790(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62d790_type* @G_0x62d790 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62d7b0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d7b0_type* @G_0x62d7b0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x62d7b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62d7b0_type* @G_0x62d7b0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62d7a0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d7a0_type* @G_0x62d7a0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x62d7a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62d7a0_type* @G_0x62d7a0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62d7a8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x64___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -100
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 100
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
define %struct.Memory* @routine_movl__eax__0x62d7a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62d7a8_type* @G_0x62d7a8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428973___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428973_type* @G__0x428973 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_410937(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428996___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428996_type* @G__0x428996 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_410890(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x60__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc350__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 50000, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x42899a___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x42899a_type* @G__0x42899a to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_410932(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428997___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428997_type* @G__0x428997 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4108d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3e8__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1000, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4289a0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4289a0_type* @G__0x4289a0 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41092d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41091e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x96__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 150, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4289d1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4289d1_type* @G__0x4289d1 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_410928(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4109ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41097f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x62d7cc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d7cc_type* @G_0x62d7cc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_410990(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62d7d0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d7d0_type* @G_0x62d7d0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4289fd___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4289fd_type* @G__0x4289fd to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_410a54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4109f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x62d7ec___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d7ec_type* @G_0x62d7ec to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_410a04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62d7f0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d7f0_type* @G_0x62d7f0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_410a28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x62d7e4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d7e4_type* @G_0x62d7e4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_410a39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62d7e8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d7e8_type* @G_0x62d7e8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428a1a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428a1a_type* @G__0x428a1a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_410afd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_410a9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x62d7dc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d7dc_type* @G_0x62d7dc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_410aad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62d7e0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d7e0_type* @G_0x62d7e0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_410ad1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_410ae2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428a37___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428a37_type* @G__0x428a37 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_410b71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_410b45(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_410b56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428a52___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428a52_type* @G__0x428a52 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_410c3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_410bb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x62d7c4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d7c4_type* @G_0x62d7c4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_410bca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62d7c8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62d7c8_type* @G_0x62d7c8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_410bff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_410c21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428a6e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428a6e_type* @G__0x428a6e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_410cf4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_410ca6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_410cd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428a89___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428a89_type* @G__0x428a89 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_410d8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_410d4d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_410d6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428aa8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428aa8_type* @G__0x428aa8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41184c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428ae8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428ae8_type* @G__0x428ae8 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4114f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410ed9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410fb2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410f41(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 20
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_410f96(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -21
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
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
define %struct.Memory* @routine_movq__0x428ac4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428ac4_type* @G__0x428ac4 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -216
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4110a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428ae6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428ae6_type* @G__0x428ae6 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_410ff9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x428aea___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x428aea_type* @G__0x428aea to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41109b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428ae7___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428ae7_type* @G__0x428ae7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_411040(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x428b1f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x428b1f_type* @G__0x428b1f to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411096(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_411087(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x428b53___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x428b53_type* @G__0x428b53 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411091(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_411114(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4110e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4110f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -244
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4111bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41115c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41116d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411191(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4111a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_411266(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411205(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_411216(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41123a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41124b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -252
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4112da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4112ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4112bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -256
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4113a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411322(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_411333(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411368(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41138a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x104__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -260
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41145d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41140f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_411442(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -264
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4114f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4114b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4114d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x10c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -268
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411847(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428b82___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428b82_type* @G__0x428b82 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4115b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428b84___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428b84_type* @G__0x428b84 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4115b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428b94___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428b94_type* @G__0x428b94 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41158e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428b9a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428b9a_type* @G__0x428b9a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428b9f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428b9f_type* @G__0x428b9f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41161e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428ba1___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428ba1_type* @G__0x428ba1 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428baa___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428baa_type* @G__0x428baa to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.ResetHandValue(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x86bd78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x86bd78_type* @G_0x86bd78 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x86bd74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x86bd74_type* @G_0x86bd74 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411842(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428be1___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428be1_type* @G__0x428be1 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x19___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 25, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_411672(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428bfb___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428bfb_type* @G__0x428bfb to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411698(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x86bd78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x86bd78_type* @G_0x86bd78 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41183d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428c00___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428c00_type* @G__0x428c00 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1a___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 26, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4116e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x86bd74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x86bd74_type* @G_0x86bd74 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411838(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411717(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428c1b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428c1b_type* @G__0x428c1b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411746(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428c1e___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428c1e_type* @G__0x428c1e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41179a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428c21___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428c21_type* @G__0x428c21 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4117b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428c27___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428c27_type* @G__0x428c27 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x114__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -276
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411829(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428c41___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428c41_type* @G__0x428c41 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41180d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428c49___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428c49_type* @G__0x428c49 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x42873b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x42873b_type* @G__0x42873b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -280
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -284
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411824(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428ca0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428ca0_type* @G__0x428ca0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -288
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41182e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411833(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x120___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 288
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -289
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
  %17 = xor i64 %6, %3
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
