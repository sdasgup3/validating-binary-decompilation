; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1785__rip__4200299__type = type <{ [16 x i8] }>
%G_0x18a9__rip__4199983__type = type <{ [16 x i8] }>
%G_0x18b1__rip__4199991__type = type <{ [16 x i8] }>
%G_0x1bbc__rip__4199220__type = type <{ [16 x i8] }>
%G_0x1ce0__rip__4198904__type = type <{ [16 x i8] }>
%G_0x1ce8__rip__4198912__type = type <{ [16 x i8] }>
%G_0x2206__rip__4197586__type = type <{ [16 x i8] }>
%G_0x220e__rip__4197594__type = type <{ [16 x i8] }>
%G_0x2398__rip__4197172__type = type <{ [16 x i8] }>
%G_0x23af__rip__4197149__type = type <{ [16 x i8] }>
%G_0x243e__rip__4197090__type = type <{ [16 x i8] }>
%G_0x247e__rip__4197026__type = type <{ [16 x i8] }>
%G_0x24c0__rip__4196960__type = type <{ [16 x i8] }>
%G_0x2500__rip__4196896__type = type <{ [16 x i8] }>
%G_0x2750__rip__4196232__type = type <{ [16 x i8] }>
%G_0x2750__rip__4196240__type = type <{ [16 x i8] }>
%G_0x289b__rip__4195885__type = type <{ [16 x i8] }>
%G_0x604040_type = type <{ [8 x i8] }>
%G_0x604050_type = type <{ [4 x i8] }>
%G_0x604054_type = type <{ [4 x i8] }>
%G_0x604058_type = type <{ [4 x i8] }>
%G_0x62b480___rax_4__type = type <{ [16 x i8] }>
%G_0x62bad0_type = type <{ [16 x i8] }>
%G_0x62bad0___rcx_4__type = type <{ [16 x i8] }>
%G_0x62bb0c_type = type <{ [16 x i8] }>
%G_0x62bb0c___rcx_4__type = type <{ [16 x i8] }>
%G_0x62bb48_type = type <{ [4 x i8] }>
%G_0x62bb48___rcx_4__type = type <{ [4 x i8] }>
%G_0x62bb84_type = type <{ [16 x i8] }>
%G_0x62bb84___rcx_4__type = type <{ [16 x i8] }>
%G_0x62bb9c_type = type <{ [16 x i8] }>
%G_0x62bbb4_type = type <{ [16 x i8] }>
%G_0x62bbc0_type = type <{ [4 x i8] }>
%G_0x62bbc0___rcx_4__type = type <{ [4 x i8] }>
%G_0x62bbfc_type = type <{ [4 x i8] }>
%G_0x62bbfc___rcx_4__type = type <{ [4 x i8] }>
%G_0x62bcec_type = type <{ [8 x i8] }>
%G_0x62bcf0_type = type <{ [16 x i8] }>
%G_0x62bcf0___rax_4__type = type <{ [16 x i8] }>
%G_0x62bcf0___rcx_4__type = type <{ [16 x i8] }>
%G_0x62c010_type = type <{ [4 x i8] }>
%G_0x62c014_type = type <{ [8 x i8] }>
%G__0x402f30_type = type <{ [8 x i8] }>
%G__0x402f4a_type = type <{ [8 x i8] }>
%G__0x402f6b_type = type <{ [8 x i8] }>
%G__0x402f73_type = type <{ [8 x i8] }>
%G__0x402f7b_type = type <{ [8 x i8] }>
%G__0x402fb1_type = type <{ [8 x i8] }>
%G__0x402fc2_type = type <{ [8 x i8] }>
%G__0x402fd4_type = type <{ [8 x i8] }>
%G__0x402ffb_type = type <{ [8 x i8] }>
%G__0x40301e_type = type <{ [8 x i8] }>
%G__0x40303f_type = type <{ [8 x i8] }>
%G__0x403074_type = type <{ [8 x i8] }>
%G__0x4030aa_type = type <{ [8 x i8] }>
%G__0x4030e2_type = type <{ [8 x i8] }>
%G__0x4030ef_type = type <{ [8 x i8] }>
%G__0x40310d_type = type <{ [8 x i8] }>
%G__0x403127_type = type <{ [8 x i8] }>
%G__0x40314e_type = type <{ [8 x i8] }>
%G__0x40317d_type = type <{ [8 x i8] }>
%G__0x403191_type = type <{ [8 x i8] }>
%G__0x4031c0_type = type <{ [8 x i8] }>
%G__0x4031e9_type = type <{ [8 x i8] }>
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
@G_0x1785__rip__4200299_ = local_unnamed_addr global %G_0x1785__rip__4200299__type zeroinitializer
@G_0x18a9__rip__4199983_ = local_unnamed_addr global %G_0x18a9__rip__4199983__type zeroinitializer
@G_0x18b1__rip__4199991_ = local_unnamed_addr global %G_0x18b1__rip__4199991__type zeroinitializer
@G_0x1bbc__rip__4199220_ = local_unnamed_addr global %G_0x1bbc__rip__4199220__type zeroinitializer
@G_0x1ce0__rip__4198904_ = local_unnamed_addr global %G_0x1ce0__rip__4198904__type zeroinitializer
@G_0x1ce8__rip__4198912_ = local_unnamed_addr global %G_0x1ce8__rip__4198912__type zeroinitializer
@G_0x2206__rip__4197586_ = local_unnamed_addr global %G_0x2206__rip__4197586__type zeroinitializer
@G_0x220e__rip__4197594_ = local_unnamed_addr global %G_0x220e__rip__4197594__type zeroinitializer
@G_0x2398__rip__4197172_ = local_unnamed_addr global %G_0x2398__rip__4197172__type zeroinitializer
@G_0x23af__rip__4197149_ = local_unnamed_addr global %G_0x23af__rip__4197149__type zeroinitializer
@G_0x243e__rip__4197090_ = global %G_0x243e__rip__4197090__type zeroinitializer
@G_0x247e__rip__4197026_ = global %G_0x247e__rip__4197026__type zeroinitializer
@G_0x24c0__rip__4196960_ = global %G_0x24c0__rip__4196960__type zeroinitializer
@G_0x2500__rip__4196896_ = global %G_0x2500__rip__4196896__type zeroinitializer
@G_0x2750__rip__4196232_ = local_unnamed_addr global %G_0x2750__rip__4196232__type zeroinitializer
@G_0x2750__rip__4196240_ = local_unnamed_addr global %G_0x2750__rip__4196240__type zeroinitializer
@G_0x289b__rip__4195885_ = local_unnamed_addr global %G_0x289b__rip__4195885__type zeroinitializer
@G_0x604040 = local_unnamed_addr global %G_0x604040_type zeroinitializer
@G_0x604050 = local_unnamed_addr global %G_0x604050_type zeroinitializer
@G_0x604054 = local_unnamed_addr global %G_0x604054_type zeroinitializer
@G_0x604058 = local_unnamed_addr global %G_0x604058_type zeroinitializer
@G_0x62b480___rax_4_ = global %G_0x62b480___rax_4__type zeroinitializer
@G_0x62bad0 = local_unnamed_addr global %G_0x62bad0_type zeroinitializer
@G_0x62bad0___rcx_4_ = global %G_0x62bad0___rcx_4__type zeroinitializer
@G_0x62bb0c = local_unnamed_addr global %G_0x62bb0c_type zeroinitializer
@G_0x62bb0c___rcx_4_ = global %G_0x62bb0c___rcx_4__type zeroinitializer
@G_0x62bb48 = local_unnamed_addr global %G_0x62bb48_type zeroinitializer
@G_0x62bb48___rcx_4_ = global %G_0x62bb48___rcx_4__type zeroinitializer
@G_0x62bb84 = local_unnamed_addr global %G_0x62bb84_type zeroinitializer
@G_0x62bb84___rcx_4_ = global %G_0x62bb84___rcx_4__type zeroinitializer
@G_0x62bb9c = local_unnamed_addr global %G_0x62bb9c_type zeroinitializer
@G_0x62bbb4 = local_unnamed_addr global %G_0x62bbb4_type zeroinitializer
@G_0x62bbc0 = local_unnamed_addr global %G_0x62bbc0_type zeroinitializer
@G_0x62bbc0___rcx_4_ = global %G_0x62bbc0___rcx_4__type zeroinitializer
@G_0x62bbfc = local_unnamed_addr global %G_0x62bbfc_type zeroinitializer
@G_0x62bbfc___rcx_4_ = global %G_0x62bbfc___rcx_4__type zeroinitializer
@G_0x62bcec = local_unnamed_addr global %G_0x62bcec_type zeroinitializer
@G_0x62bcf0 = local_unnamed_addr global %G_0x62bcf0_type zeroinitializer
@G_0x62bcf0___rax_4_ = global %G_0x62bcf0___rax_4__type zeroinitializer
@G_0x62bcf0___rcx_4_ = global %G_0x62bcf0___rcx_4__type zeroinitializer
@G_0x62c010 = local_unnamed_addr global %G_0x62c010_type zeroinitializer
@G_0x62c014 = local_unnamed_addr global %G_0x62c014_type zeroinitializer
@G__0x402f30 = global %G__0x402f30_type zeroinitializer
@G__0x402f4a = global %G__0x402f4a_type zeroinitializer
@G__0x402f6b = global %G__0x402f6b_type zeroinitializer
@G__0x402f73 = global %G__0x402f73_type zeroinitializer
@G__0x402f7b = global %G__0x402f7b_type zeroinitializer
@G__0x402fb1 = global %G__0x402fb1_type zeroinitializer
@G__0x402fc2 = global %G__0x402fc2_type zeroinitializer
@G__0x402fd4 = global %G__0x402fd4_type zeroinitializer
@G__0x402ffb = global %G__0x402ffb_type zeroinitializer
@G__0x40301e = global %G__0x40301e_type zeroinitializer
@G__0x40303f = global %G__0x40303f_type zeroinitializer
@G__0x403074 = global %G__0x403074_type zeroinitializer
@G__0x4030aa = global %G__0x4030aa_type zeroinitializer
@G__0x4030e2 = global %G__0x4030e2_type zeroinitializer
@G__0x4030ef = global %G__0x4030ef_type zeroinitializer
@G__0x40310d = global %G__0x40310d_type zeroinitializer
@G__0x403127 = global %G__0x403127_type zeroinitializer
@G__0x40314e = global %G__0x40314e_type zeroinitializer
@G__0x40317d = global %G__0x40317d_type zeroinitializer
@G__0x403191 = global %G__0x403191_type zeroinitializer
@G__0x4031c0 = global %G__0x4031c0_type zeroinitializer
@G__0x4031e9 = global %G__0x4031e9_type zeroinitializer
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

declare %struct.Memory* @sub_4017b0.matgen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4005c0.second(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401980.dgefa(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401c90.dgesl(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402010.dmxpy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402810.epslon(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4028d0.print_time(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RSI.i265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 ptrtoint (%G__0x402f6b_type* @G__0x402f6b to i64), i64* %RSI.i265, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %19 = bitcast [32 x %union.VectorReg]* %18 to i8*
  %20 = load i32, i32* bitcast (%G_0x289b__rip__4195885__type* @G_0x289b__rip__4195885_ to i32*), align 8
  %21 = bitcast [32 x %union.VectorReg]* %18 to float*
  %22 = bitcast [32 x %union.VectorReg]* %18 to i32*
  store i32 %20, i32* %22, align 1
  %23 = getelementptr inbounds i8, i8* %19, i64 4
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %26 = bitcast i64* %25 to float*
  store float 0.000000e+00, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %19, i64 12
  %28 = bitcast i8* %27 to float*
  store float 0.000000e+00, float* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i291 = getelementptr inbounds %union.anon, %union.anon* %29, i64 0, i32 0
  store i64 ptrtoint (%G__0x402f4a_type* @G__0x402f4a to i64), i64* %RAX.i291, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i373 = getelementptr inbounds %union.anon, %union.anon* %30, i64 0, i32 0
  store i64 ptrtoint (%G__0x402f30_type* @G__0x402f30 to i64), i64* %RCX.i373, align 8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i385 = bitcast %union.anon* %31 to i32*
  %RDX.i386 = getelementptr inbounds %union.anon, %union.anon* %31, i64 0, i32 0
  store i64 0, i64* %RDX.i386, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %RDI.i642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %33 = getelementptr inbounds %union.anon, %union.anon* %32, i64 0, i32 0
  store i64 720, i64* %33, align 8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9.i = getelementptr inbounds %union.anon, %union.anon* %34, i64 0, i32 0
  %35 = add i64 %8, -832
  store i64 %35, i64* %R9.i, align 8
  %36 = add i64 %8, -4
  %37 = add i64 %10, 72
  store i64 %37, i64* %3, align 8
  %38 = inttoptr i64 %36 to i32*
  store i32 0, i32* %38, align 4
  %39 = load i64, i64* %R9.i, align 8
  %40 = load i64, i64* %3, align 8
  store i64 %39, i64* %RDI.i642, align 8
  %41 = load i64, i64* %RBP.i, align 8
  %42 = add i64 %41, -840
  %43 = load i64, i64* %RSI.i265, align 8
  %44 = add i64 %40, 10
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %EDX.i385, align 4
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* %3, align 8
  store i64 %47, i64* %RSI.i265, align 8
  %49 = load i64, i64* %33, align 8
  store i64 %49, i64* %RDX.i386, align 8
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -848
  %52 = load i64, i64* %RCX.i373, align 8
  %53 = add i64 %48, 12
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -852
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 8
  store i64 %58, i64* %3, align 8
  %59 = bitcast [32 x %union.VectorReg]* %18 to <2 x float>*
  %60 = load <2 x float>, <2 x float>* %59, align 1
  %61 = extractelement <2 x float> %60, i32 0
  %62 = inttoptr i64 %56 to float*
  store float %61, float* %62, align 4
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -864
  %65 = load i64, i64* %RAX.i291, align 8
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 7
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, -462
  %71 = add i64 %69, 5
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, -8
  %74 = inttoptr i64 %73 to i64*
  store i64 %71, i64* %74, align 8
  store i64 %73, i64* %6, align 8
  store i64 %70, i64* %3, align 8
  %75 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -832
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 7
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %77 to i8*
  store i8 32, i8* %80, align 1
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -848
  %83 = load i64, i64* %3, align 8
  %84 = add i64 %83, 7
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %82 to i64*
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %RAX.i291, align 8
  %87 = add i64 %81, -96
  %88 = add i64 %83, 11
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i64*
  store i64 %86, i64* %89, align 8
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -864
  %92 = load i64, i64* %3, align 8
  %93 = add i64 %92, 7
  store i64 %93, i64* %3, align 8
  %94 = inttoptr i64 %91 to i64*
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %RCX.i373, align 8
  %96 = add i64 %90, -104
  %97 = add i64 %92, 11
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i64*
  store i64 %95, i64* %98, align 8
  %99 = load i64, i64* %3, align 8
  store i32 201, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  store i32 200, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -852
  %102 = add i64 %99, 30
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i32*
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %105 = add i64 %100, -8
  %106 = add i64 %99, 35
  store i64 %106, i64* %3, align 8
  %107 = load <2 x float>, <2 x float>* %59, align 1
  %108 = extractelement <2 x float> %107, i32 0
  %109 = inttoptr i64 %105 to float*
  store float %108, float* %109, align 4
  %110 = load i64, i64* %3, align 8
  store i32 100, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %111 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %111, i64* %RDI.i642, align 8
  %112 = load i64, i64* %RBP.i, align 8
  %113 = add i64 %112, -840
  %114 = add i64 %110, 26
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %113 to i64*
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %RSI.i265, align 8
  %AL.i1589 = bitcast %union.anon* %29 to i8*
  store i8 0, i8* %AL.i1589, align 1
  %117 = add i64 %110, -515
  %118 = add i64 %110, 33
  %119 = load i64, i64* %6, align 8
  %120 = add i64 %119, -8
  %121 = inttoptr i64 %120 to i64*
  store i64 %118, i64* %121, align 8
  store i64 %120, i64* %6, align 8
  store i64 %117, i64* %3, align 8
  %122 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %75)
  %123 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402f73_type* @G__0x402f73 to i64), i64* %RSI.i265, align 8
  %124 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %124, i64* %RDI.i642, align 8
  %EAX.i1578 = bitcast %union.anon* %29 to i32*
  %125 = load i64, i64* %RBP.i, align 8
  %126 = add i64 %125, -868
  %127 = load i32, i32* %EAX.i1578, align 4
  %128 = add i64 %123, 24
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %126 to i32*
  store i32 %127, i32* %129, align 4
  %130 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %131 = add i64 %130, -572
  %132 = add i64 %130, 7
  %133 = load i64, i64* %6, align 8
  %134 = add i64 %133, -8
  %135 = inttoptr i64 %134 to i64*
  store i64 %132, i64* %135, align 8
  store i64 %134, i64* %6, align 8
  store i64 %131, i64* %3, align 8
  %136 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %122)
  %137 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402f7b_type* @G__0x402f7b to i64), i64* %RSI.i265, align 8
  %138 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %138, i64* %RDI.i642, align 8
  %139 = load i64, i64* %RBP.i, align 8
  %140 = add i64 %139, -872
  %141 = load i32, i32* %EAX.i1578, align 4
  %142 = add i64 %137, 24
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %140 to i32*
  store i32 %141, i32* %143, align 4
  %144 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %145 = add i64 %144, -603
  %146 = add i64 %144, 7
  %147 = load i64, i64* %6, align 8
  %148 = add i64 %147, -8
  %149 = inttoptr i64 %148 to i64*
  store i64 %146, i64* %149, align 8
  store i64 %148, i64* %6, align 8
  store i64 %145, i64* %3, align 8
  %150 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %136)
  %151 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402fb1_type* @G__0x402fb1 to i64), i64* %RSI.i265, align 8
  %152 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %152, i64* %RDI.i642, align 8
  %153 = load i64, i64* %RBP.i, align 8
  %154 = add i64 %153, -96
  %155 = add i64 %151, 22
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i64*
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %RDX.i386, align 8
  %158 = add i64 %153, -876
  %159 = load i32, i32* %EAX.i1578, align 4
  %160 = add i64 %151, 28
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %158 to i32*
  store i32 %159, i32* %161, align 4
  %162 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %163 = add i64 %162, -638
  %164 = add i64 %162, 7
  %165 = load i64, i64* %6, align 8
  %166 = add i64 %165, -8
  %167 = inttoptr i64 %166 to i64*
  store i64 %164, i64* %167, align 8
  store i64 %166, i64* %6, align 8
  store i64 %163, i64* %3, align 8
  %168 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %150)
  %169 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402fc2_type* @G__0x402fc2 to i64), i64* %RSI.i265, align 8
  %170 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %170, i64* %RDI.i642, align 8
  %171 = load i64, i64* %RBP.i, align 8
  %172 = add i64 %171, -104
  %173 = add i64 %169, 22
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i64*
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %RDX.i386, align 8
  %176 = add i64 %171, -880
  %177 = load i32, i32* %EAX.i1578, align 4
  %178 = add i64 %169, 28
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %176 to i32*
  store i32 %177, i32* %179, align 4
  %180 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %181 = add i64 %180, -673
  %182 = add i64 %180, 7
  %183 = load i64, i64* %6, align 8
  %184 = add i64 %183, -8
  %185 = inttoptr i64 %184 to i64*
  store i64 %182, i64* %185, align 8
  store i64 %184, i64* %6, align 8
  store i64 %181, i64* %3, align 8
  %186 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %168)
  %187 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -20
  store i64 %189, i64* %33, align 8
  %190 = load double, double* bitcast (%G_0x2750__rip__4196232__type* @G_0x2750__rip__4196232_ to double*), align 8
  %191 = bitcast [32 x %union.VectorReg]* %18 to double*
  %192 = bitcast i64* %25 to double*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %194 = bitcast %union.VectorReg* %193 to i8*
  %195 = load i64, i64* bitcast (%G_0x2750__rip__4196240__type* @G_0x2750__rip__4196240_ to i64*), align 8
  %196 = bitcast %union.VectorReg* %193 to double*
  %197 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %193, i64 0, i32 0, i32 0, i32 0, i64 0
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %199 = bitcast i64* %198 to double*
  store double 0.000000e+00, double* %199, align 1
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %201 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %202 = sext i32 %201 to i64
  %203 = mul nsw i64 %202, %202
  %204 = shl i64 %203, 32
  %205 = ashr exact i64 %204, 32
  %206 = mul nsw i64 %202, %205
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %208 = bitcast %union.VectorReg* %207 to i8*
  %209 = trunc i64 %206 to i32
  %210 = sitofp i32 %209 to double
  %211 = bitcast %union.VectorReg* %207 to double*
  store double %210, double* %211, align 1
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %213 = bitcast %union.VectorReg* %212 to i8*
  %214 = bitcast double %190 to <2 x i32>
  %215 = extractelement <2 x i32> %214, i32 0
  %216 = bitcast %union.VectorReg* %212 to i32*
  store i32 %215, i32* %216, align 1
  %217 = extractelement <2 x i32> %214, i32 1
  %218 = getelementptr inbounds i8, i8* %213, i64 4
  %219 = bitcast i8* %218 to i32*
  store i32 %217, i32* %219, align 1
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %221 = bitcast i64* %220 to i32*
  store i32 0, i32* %221, align 1
  %222 = getelementptr inbounds i8, i8* %213, i64 12
  %223 = bitcast i8* %222 to i32*
  store i32 0, i32* %223, align 1
  %224 = bitcast %union.VectorReg* %212 to double*
  %225 = load double, double* %224, align 1
  %226 = fmul double %225, %210
  %227 = bitcast i64 %195 to double
  %228 = fdiv double %226, %227
  %229 = trunc i64 %203 to i32
  %230 = and i64 %203, 4294967295
  store i64 %230, i64* %200, align 8
  %231 = icmp ne i64 %205, %203
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %12, align 1
  %233 = and i32 %229, 255
  %234 = tail call i32 @llvm.ctpop.i32(i32 %233)
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  %237 = xor i8 %236, 1
  store i8 %237, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %238 = lshr i32 %229, 31
  %239 = trunc i32 %238 to i8
  store i8 %239, i8* %16, align 1
  store i8 %232, i8* %17, align 1
  %240 = sitofp i32 %229 to double
  store double %240, double* %196, align 1
  %241 = bitcast i64* %25 to <2 x i32>*
  %242 = fmul double %190, %240
  %243 = fadd double %228, %242
  store double %243, double* %224, align 1
  %244 = bitcast double %242 to <2 x i32>
  %245 = fptrunc double %243 to float
  store float %245, float* %21, align 1
  %246 = extractelement <2 x i32> %244, i32 1
  %247 = bitcast i8* %23 to i32*
  store i32 %246, i32* %247, align 1
  %248 = bitcast i64* %25 to i32*
  store i32 0, i32* %248, align 1
  %249 = bitcast i8* %27 to i32*
  store i32 0, i32* %249, align 1
  %250 = add i64 %188, -12
  %251 = add i64 %187, 121
  store i64 %251, i64* %3, align 8
  %252 = load <2 x float>, <2 x float>* %59, align 1
  %253 = extractelement <2 x float> %252, i32 0
  %254 = inttoptr i64 %250 to float*
  store float %253, float* %254, align 4
  %255 = load i64, i64* %3, align 8
  %256 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %257 = zext i32 %256 to i64
  store i64 %257, i64* %RSI.i265, align 8
  %258 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %RDX.i386, align 8
  %260 = load i64, i64* %RBP.i, align 8
  %261 = add i64 %260, -884
  %262 = load i32, i32* %EAX.i1578, align 4
  %263 = add i64 %255, 20
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %261 to i32*
  store i32 %262, i32* %264, align 4
  %265 = load i64, i64* %3, align 8
  %266 = add i64 %265, 4027
  %267 = add i64 %265, 5
  %268 = load i64, i64* %6, align 8
  %269 = add i64 %268, -8
  %270 = inttoptr i64 %269 to i64*
  store i64 %267, i64* %270, align 8
  store i64 %269, i64* %6, align 8
  store i64 %266, i64* %3, align 8
  %call2_4007f5 = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %266, %struct.Memory* %186)
  %271 = load i64, i64* %3, align 8
  %272 = add i64 %271, -570
  %273 = add i64 %271, 5
  %274 = load i64, i64* %6, align 8
  %275 = add i64 %274, -8
  %276 = inttoptr i64 %275 to i64*
  store i64 %273, i64* %276, align 8
  store i64 %275, i64* %6, align 8
  store i64 %272, i64* %3, align 8
  %call2_4007fa = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %272, %struct.Memory* %call2_4007f5)
  %277 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %33, align 8
  %278 = load i64, i64* %RBP.i, align 8
  %279 = add i64 %278, -40
  %280 = add i64 %277, 35
  store i64 %280, i64* %3, align 8
  %281 = load <2 x float>, <2 x float>* %59, align 1
  %282 = extractelement <2 x float> %281, i32 0
  %283 = inttoptr i64 %279 to float*
  store float %282, float* %283, align 4
  %284 = load i64, i64* %3, align 8
  %285 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %286 = zext i32 %285 to i64
  store i64 %286, i64* %RSI.i265, align 8
  %287 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RDX.i386, align 8
  %289 = add i64 %284, 4446
  %290 = add i64 %284, 19
  %291 = load i64, i64* %6, align 8
  %292 = add i64 %291, -8
  %293 = inttoptr i64 %292 to i64*
  store i64 %290, i64* %293, align 8
  store i64 %292, i64* %6, align 8
  store i64 %289, i64* %3, align 8
  %call2_400830 = tail call %struct.Memory* @sub_401980.dgefa(%struct.State* %0, i64 %289, %struct.Memory* %call2_4007fa)
  %294 = load i64, i64* %3, align 8
  %295 = add i64 %294, -629
  %296 = add i64 %294, 5
  %297 = load i64, i64* %6, align 8
  %298 = add i64 %297, -8
  %299 = inttoptr i64 %298 to i64*
  store i64 %296, i64* %299, align 8
  store i64 %298, i64* %6, align 8
  store i64 %295, i64* %3, align 8
  %call2_400835 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %295, %struct.Memory* %call2_400830)
  %300 = load i64, i64* %RBP.i, align 8
  %301 = add i64 %300, -40
  %302 = load i64, i64* %3, align 8
  %303 = add i64 %302, 5
  store i64 %303, i64* %3, align 8
  %304 = load <2 x float>, <2 x float>* %59, align 1
  %305 = load <2 x i32>, <2 x i32>* %241, align 1
  %306 = inttoptr i64 %301 to float*
  %307 = load float, float* %306, align 4
  %308 = extractelement <2 x float> %304, i32 0
  %309 = fsub float %308, %307
  store float %309, float* %21, align 1
  %310 = bitcast <2 x float> %304 to <2 x i32>
  %311 = extractelement <2 x i32> %310, i32 1
  store i32 %311, i32* %247, align 1
  %312 = extractelement <2 x i32> %305, i32 0
  store i32 %312, i32* %248, align 1
  %313 = extractelement <2 x i32> %305, i32 1
  store i32 %313, i32* %249, align 1
  %314 = load <2 x float>, <2 x float>* %59, align 1
  %315 = extractelement <2 x float> %314, i32 0
  store float %315, float* bitcast (%G_0x62bad0_type* @G_0x62bad0 to float*), align 8
  %316 = add i64 %302, -634
  %317 = add i64 %302, 19
  %318 = load i64, i64* %6, align 8
  %319 = add i64 %318, -8
  %320 = inttoptr i64 %319 to i64*
  store i64 %317, i64* %320, align 8
  store i64 %319, i64* %6, align 8
  store i64 %316, i64* %3, align 8
  %call2_400848 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %316, %struct.Memory* %call2_400835)
  %321 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %33, align 8
  store i64 0, i64* %R9.i, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %322 = load i64, i64* %RBP.i, align 8
  %323 = add i64 %322, -40
  %324 = add i64 %321, 38
  store i64 %324, i64* %3, align 8
  %325 = load <2 x float>, <2 x float>* %59, align 1
  %326 = extractelement <2 x float> %325, i32 0
  %327 = inttoptr i64 %323 to float*
  store float %326, float* %327, align 4
  %328 = load i64, i64* %3, align 8
  %329 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RSI.i265, align 8
  %331 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %332 = zext i32 %331 to i64
  store i64 %332, i64* %RDX.i386, align 8
  %333 = add i64 %328, 5149
  %334 = add i64 %328, 19
  %335 = load i64, i64* %6, align 8
  %336 = add i64 %335, -8
  %337 = inttoptr i64 %336 to i64*
  store i64 %334, i64* %337, align 8
  store i64 %336, i64* %6, align 8
  store i64 %333, i64* %3, align 8
  %call2_400881 = tail call %struct.Memory* @sub_401c90.dgesl(%struct.State* %0, i64 %333, %struct.Memory* %call2_400848)
  %338 = load i64, i64* %3, align 8
  %339 = add i64 %338, -710
  %340 = add i64 %338, 5
  %341 = load i64, i64* %6, align 8
  %342 = add i64 %341, -8
  %343 = inttoptr i64 %342 to i64*
  store i64 %340, i64* %343, align 8
  store i64 %342, i64* %6, align 8
  store i64 %339, i64* %3, align 8
  %call2_400886 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %339, %struct.Memory* %call2_400881)
  %344 = load i64, i64* %RBP.i, align 8
  %345 = add i64 %344, -40
  %346 = load i64, i64* %3, align 8
  %347 = add i64 %346, 5
  store i64 %347, i64* %3, align 8
  %348 = load <2 x float>, <2 x float>* %59, align 1
  %349 = inttoptr i64 %345 to float*
  %350 = load float, float* %349, align 4
  %351 = extractelement <2 x float> %348, i32 0
  %352 = fsub float %351, %350
  store float %352, float* %21, align 1
  %353 = bitcast <2 x float> %348 to <2 x i32>
  %354 = extractelement <2 x i32> %353, i32 1
  store i32 %354, i32* %247, align 1
  %355 = load <2 x float>, <2 x float>* %59, align 1
  %356 = extractelement <2 x float> %355, i32 0
  store float %356, float* bitcast (%G_0x62bb0c_type* @G_0x62bb0c to float*), align 8
  %357 = load i32, i32* bitcast (%G_0x62bad0_type* @G_0x62bad0 to i32*), align 8
  store i32 %357, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %358 = load <2 x float>, <2 x float>* %59, align 1
  %359 = load <2 x i32>, <2 x i32>* %241, align 1
  %360 = extractelement <2 x float> %358, i32 0
  %361 = fadd float %360, %356
  store float %361, float* %21, align 1
  %362 = bitcast <2 x float> %358 to <2 x i32>
  %363 = extractelement <2 x i32> %362, i32 1
  store i32 %363, i32* %247, align 1
  %364 = extractelement <2 x i32> %359, i32 0
  store i32 %364, i32* %248, align 1
  %365 = extractelement <2 x i32> %359, i32 1
  store i32 %365, i32* %249, align 1
  %366 = add i64 %344, -16
  %367 = add i64 %346, 37
  store i64 %367, i64* %3, align 8
  %368 = load <2 x float>, <2 x float>* %59, align 1
  %369 = extractelement <2 x float> %368, i32 0
  %370 = inttoptr i64 %366 to float*
  store float %369, float* %370, align 4
  %371 = load i64, i64* %3, align 8
  %372 = add i64 %371, 11
  store i64 %372, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4008bb

block_.L_4008bb:                                  ; preds = %block_4008cf, %entry
  %373 = phi i32 [ %417, %block_4008cf ], [ 0, %entry ]
  %374 = phi i64 [ %440, %block_4008cf ], [ %372, %entry ]
  %375 = zext i32 %373 to i64
  store i64 %375, i64* %RAX.i291, align 8
  %376 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %377 = sub i32 %373, %376
  %378 = icmp ult i32 %373, %376
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %12, align 1
  %380 = and i32 %377, 255
  %381 = tail call i32 @llvm.ctpop.i32(i32 %380)
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  %384 = xor i8 %383, 1
  store i8 %384, i8* %13, align 1
  %385 = xor i32 %376, %373
  %386 = xor i32 %385, %377
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %14, align 1
  %390 = icmp eq i32 %377, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %15, align 1
  %392 = lshr i32 %377, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %16, align 1
  %394 = lshr i32 %373, 31
  %395 = lshr i32 %376, 31
  %396 = xor i32 %395, %394
  %397 = xor i32 %392, %394
  %398 = add nuw nsw i32 %397, %396
  %399 = icmp eq i32 %398, 2
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %17, align 1
  %401 = icmp ne i8 %393, 0
  %402 = xor i1 %401, %399
  %.v = select i1 %402, i64 20, i64 76
  %403 = add i64 %374, %.v
  store i64 %403, i64* %3, align 8
  br i1 %402, label %block_4008cf, label %block_.L_400907

block_4008cf:                                     ; preds = %block_.L_4008bb
  %404 = sext i32 %373 to i64
  store i64 %404, i64* %RAX.i291, align 8
  %405 = shl nsw i64 %404, 2
  %406 = add i64 %405, ptrtoint (%G_0x62b480___rax_4__type* @G_0x62b480___rax_4_ to i64)
  %407 = add i64 %403, 17
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i32*
  %409 = load i32, i32* %408, align 4
  store i32 %409, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %410 = add i64 %405, ptrtoint (%G_0x62bcf0___rax_4__type* @G_0x62bcf0___rax_4_ to i64)
  %411 = add i64 %403, 34
  store i64 %411, i64* %3, align 8
  %412 = load <2 x float>, <2 x float>* %59, align 1
  %413 = extractelement <2 x float> %412, i32 0
  %414 = inttoptr i64 %410 to float*
  store float %413, float* %414, align 4
  %415 = load i64, i64* %3, align 8
  %416 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %417 = add i32 %416, 1
  %418 = zext i32 %417 to i64
  store i64 %418, i64* %RAX.i291, align 8
  %419 = icmp eq i32 %416, -1
  %420 = icmp eq i32 %417, 0
  %421 = or i1 %419, %420
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %12, align 1
  %423 = and i32 %417, 255
  %424 = tail call i32 @llvm.ctpop.i32(i32 %423)
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  %427 = xor i8 %426, 1
  store i8 %427, i8* %13, align 1
  %428 = xor i32 %416, %417
  %429 = lshr i32 %428, 4
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  store i8 %431, i8* %14, align 1
  %432 = zext i1 %420 to i8
  store i8 %432, i8* %15, align 1
  %433 = lshr i32 %417, 31
  %434 = trunc i32 %433 to i8
  store i8 %434, i8* %16, align 1
  %435 = lshr i32 %416, 31
  %436 = xor i32 %433, %435
  %437 = add nuw nsw i32 %436, %433
  %438 = icmp eq i32 %437, 2
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %17, align 1
  store i32 %417, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %440 = add i64 %415, -54
  store i64 %440, i64* %3, align 8
  br label %block_.L_4008bb

block_.L_400907:                                  ; preds = %block_.L_4008bb
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %441 = load i64, i64* %RBP.i, align 8
  %442 = add i64 %441, -20
  store i64 %442, i64* %33, align 8
  %443 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %444 = zext i32 %443 to i64
  store i64 %444, i64* %RSI.i265, align 8
  %445 = zext i32 %376 to i64
  store i64 %445, i64* %RDX.i386, align 8
  %446 = add i64 %403, 3753
  %447 = add i64 %403, 43
  %448 = load i64, i64* %6, align 8
  %449 = add i64 %448, -8
  %450 = inttoptr i64 %449 to i64*
  store i64 %447, i64* %450, align 8
  store i64 %449, i64* %6, align 8
  store i64 %446, i64* %3, align 8
  %call2_40092d = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %446, %struct.Memory* %call2_400886)
  %451 = load i64, i64* %3, align 8
  %452 = add i64 %451, 11
  store i64 %452, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %453 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %18, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %454 = bitcast %union.anon* %30 to [2 x i32]*
  %455 = bitcast %union.anon* %30 to i32*
  %456 = getelementptr inbounds [2 x i32], [2 x i32]* %454, i64 0, i64 1
  br label %block_.L_40093d

block_.L_40093d:                                  ; preds = %block_400951, %block_.L_400907
  %457 = phi i32 [ %506, %block_400951 ], [ 0, %block_.L_400907 ]
  %458 = phi i64 [ %529, %block_400951 ], [ %452, %block_.L_400907 ]
  %459 = zext i32 %457 to i64
  store i64 %459, i64* %RAX.i291, align 8
  %460 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %461 = sub i32 %457, %460
  %462 = icmp ult i32 %457, %460
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %12, align 1
  %464 = and i32 %461, 255
  %465 = tail call i32 @llvm.ctpop.i32(i32 %464)
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  %468 = xor i8 %467, 1
  store i8 %468, i8* %13, align 1
  %469 = xor i32 %460, %457
  %470 = xor i32 %469, %461
  %471 = lshr i32 %470, 4
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  store i8 %473, i8* %14, align 1
  %474 = icmp eq i32 %461, 0
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %15, align 1
  %476 = lshr i32 %461, 31
  %477 = trunc i32 %476 to i8
  store i8 %477, i8* %16, align 1
  %478 = lshr i32 %457, 31
  %479 = lshr i32 %460, 31
  %480 = xor i32 %479, %478
  %481 = xor i32 %476, %478
  %482 = add nuw nsw i32 %481, %480
  %483 = icmp eq i32 %482, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %17, align 1
  %485 = icmp ne i8 %477, 0
  %486 = xor i1 %485, %483
  %.v19 = select i1 %486, i64 20, i64 90
  %487 = add i64 %458, %.v19
  store i64 %487, i64* %3, align 8
  br i1 %486, label %block_400951, label %block_.L_400997

block_400951:                                     ; preds = %block_.L_40093d
  %488 = sext i32 %457 to i64
  store i64 %488, i64* %RAX.i291, align 8
  %489 = shl nsw i64 %488, 2
  %490 = add i64 %489, ptrtoint (%G_0x62b480___rax_4__type* @G_0x62b480___rax_4_ to i64)
  %491 = add i64 %487, 17
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %490 to float*
  %493 = inttoptr i64 %490 to i32*
  %494 = load i32, i32* %493, align 4
  store i32 %494, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  %495 = load i64, i64* %453, align 1
  %496 = trunc i64 %495 to i32
  store i32 %496, i32* %455, align 1
  store i32 0, i32* %456, align 1
  %497 = load i64, i64* %RCX.i373, align 8
  %498 = and i64 %497, 4294967295
  %499 = xor i64 %498, 2147483648
  store i64 %499, i64* %RCX.i373, align 8
  %500 = trunc i64 %499 to i32
  store i32 %500, i32* %22, align 1
  store i32 0, i32* %247, align 1
  store i32 0, i32* %248, align 1
  store i32 0, i32* %249, align 1
  %501 = add i64 %487, 48
  store i64 %501, i64* %3, align 8
  %502 = load <2 x float>, <2 x float>* %59, align 1
  %503 = extractelement <2 x float> %502, i32 0
  store float %503, float* %492, align 4
  %504 = load i64, i64* %3, align 8
  %505 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %506 = add i32 %505, 1
  %507 = zext i32 %506 to i64
  store i64 %507, i64* %RAX.i291, align 8
  %508 = icmp eq i32 %505, -1
  %509 = icmp eq i32 %506, 0
  %510 = or i1 %508, %509
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %12, align 1
  %512 = and i32 %506, 255
  %513 = tail call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  store i8 %516, i8* %13, align 1
  %517 = xor i32 %505, %506
  %518 = lshr i32 %517, 4
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  store i8 %520, i8* %14, align 1
  %521 = zext i1 %509 to i8
  store i8 %521, i8* %15, align 1
  %522 = lshr i32 %506, 31
  %523 = trunc i32 %522 to i8
  store i8 %523, i8* %16, align 1
  %524 = lshr i32 %505, 31
  %525 = xor i32 %522, %524
  %526 = add nuw nsw i32 %525, %522
  %527 = icmp eq i32 %526, 2
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %17, align 1
  store i32 %506, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %529 = add i64 %504, -68
  store i64 %529, i64* %3, align 8
  br label %block_.L_40093d

block_.L_400997:                                  ; preds = %block_.L_40093d
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RSI.i265, align 8
  store i64 ptrtoint (%G__0x62bcf0_type* @G__0x62bcf0 to i64), i64* %33, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %R9.i, align 8
  %530 = zext i32 %460 to i64
  store i64 %530, i64* %RDI.i642, align 8
  store i64 %530, i64* %RDX.i386, align 8
  %531 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %532 = zext i32 %531 to i64
  store i64 %532, i64* %RCX.i373, align 8
  %533 = add i64 %487, 5753
  %534 = add i64 %487, 56
  %535 = load i64, i64* %6, align 8
  %536 = add i64 %535, -8
  %537 = inttoptr i64 %536 to i64*
  store i64 %534, i64* %537, align 8
  store i64 %536, i64* %6, align 8
  store i64 %533, i64* %3, align 8
  %call2_4009ca = tail call %struct.Memory* @sub_402010.dmxpy(%struct.State* %0, i64 %533, %struct.Memory* %call2_40092d)
  %538 = load i64, i64* %3, align 8
  store i32 0, i32* %22, align 1
  store i32 0, i32* %247, align 1
  store i32 0, i32* %248, align 1
  store i32 0, i32* %249, align 1
  %539 = load i64, i64* %RBP.i, align 8
  %540 = add i64 %539, -28
  %541 = add i64 %538, 8
  store i64 %541, i64* %3, align 8
  %542 = load <2 x float>, <2 x float>* %59, align 1
  %543 = extractelement <2 x float> %542, i32 0
  %544 = inttoptr i64 %540 to float*
  store float %543, float* %544, align 4
  %545 = load i64, i64* %RBP.i, align 8
  %546 = add i64 %545, -24
  %547 = load i64, i64* %3, align 8
  %548 = add i64 %547, 5
  store i64 %548, i64* %3, align 8
  %549 = load <2 x float>, <2 x float>* %59, align 1
  %550 = extractelement <2 x float> %549, i32 0
  %551 = inttoptr i64 %546 to float*
  store float %550, float* %551, align 4
  %552 = load i64, i64* %3, align 8
  %553 = add i64 %552, 11
  store i64 %553, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %554 = bitcast %union.VectorReg* %193 to float*
  %555 = getelementptr inbounds i8, i8* %194, i64 4
  %556 = bitcast i8* %555 to float*
  %557 = bitcast i64* %198 to float*
  %558 = getelementptr inbounds i8, i8* %194, i64 12
  %559 = bitcast i8* %558 to float*
  %560 = bitcast %union.VectorReg* %193 to <2 x float>*
  %561 = bitcast %union.VectorReg* %207 to float*
  %562 = getelementptr inbounds i8, i8* %208, i64 4
  %563 = bitcast i8* %562 to float*
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %565 = bitcast i64* %564 to float*
  %566 = getelementptr inbounds i8, i8* %208, i64 12
  %567 = bitcast i8* %566 to float*
  %568 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %207, i64 0, i32 0, i32 0, i32 0, i64 0
  %569 = bitcast %union.VectorReg* %193 to i32*
  %570 = bitcast i8* %555 to i32*
  %571 = bitcast i64* %198 to i32*
  %572 = bitcast i8* %558 to i32*
  br label %block_.L_4009e7

block_.L_4009e7:                                  ; preds = %block_.L_400aee, %block_.L_400997
  %573 = phi i32 [ 0, %block_.L_400997 ], [ %858, %block_.L_400aee ]
  %574 = phi i64 [ %553, %block_.L_400997 ], [ %881, %block_.L_400aee ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_4009ca, %block_.L_400997 ], [ %792, %block_.L_400aee ]
  %575 = zext i32 %573 to i64
  store i64 %575, i64* %RAX.i291, align 8
  %576 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %577 = sub i32 %573, %576
  %578 = icmp ult i32 %573, %576
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %12, align 1
  %580 = and i32 %577, 255
  %581 = tail call i32 @llvm.ctpop.i32(i32 %580)
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  %584 = xor i8 %583, 1
  store i8 %584, i8* %13, align 1
  %585 = xor i32 %576, %573
  %586 = xor i32 %585, %577
  %587 = lshr i32 %586, 4
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  store i8 %589, i8* %14, align 1
  %590 = icmp eq i32 %577, 0
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %15, align 1
  %592 = lshr i32 %577, 31
  %593 = trunc i32 %592 to i8
  store i8 %593, i8* %16, align 1
  %594 = lshr i32 %573, 31
  %595 = lshr i32 %576, 31
  %596 = xor i32 %595, %594
  %597 = xor i32 %592, %594
  %598 = add nuw nsw i32 %597, %596
  %599 = icmp eq i32 %598, 2
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %17, align 1
  %601 = icmp ne i8 %593, 0
  %602 = xor i1 %601, %599
  %.v20 = select i1 %602, i64 20, i64 302
  %603 = add i64 %574, %.v20
  store i64 %603, i64* %3, align 8
  br i1 %602, label %block_4009fb, label %block_.L_400b15

block_4009fb:                                     ; preds = %block_.L_4009e7
  %604 = load i64, i64* %RBP.i, align 8
  %605 = add i64 %604, -28
  %606 = add i64 %603, 5
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %605 to i32*
  %608 = load i32, i32* %607, align 4
  store i32 %608, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %609 = load <2 x float>, <2 x float>* %59, align 1
  %610 = extractelement <2 x float> %609, i32 0
  %611 = fpext float %610 to double
  store double %611, double* %191, align 1
  %612 = sext i32 %573 to i64
  store i64 %612, i64* %RAX.i291, align 8
  %613 = shl nsw i64 %612, 2
  %614 = add i64 %613, ptrtoint (%G_0x62b480___rax_4__type* @G_0x62b480___rax_4_ to i64)
  %615 = add i64 %603, 26
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i32*
  %617 = load i32, i32* %616, align 4
  store i32 %617, i32* %569, align 1
  store float 0.000000e+00, float* %556, align 1
  store float 0.000000e+00, float* %557, align 1
  store float 0.000000e+00, float* %559, align 1
  %618 = load <2 x float>, <2 x float>* %560, align 1
  %619 = extractelement <2 x float> %618, i32 0
  %620 = fpext float %619 to double
  %621 = load i32, i32* bitcast (%G_0x2500__rip__4196896__type* @G_0x2500__rip__4196896_ to i32*), align 8
  %622 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__4196896__type* @G_0x2500__rip__4196896_ to i64), i64 4) to i32*), align 4
  %623 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__4196896__type* @G_0x2500__rip__4196896_ to i64), i64 8) to i32*), align 8
  %624 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__4196896__type* @G_0x2500__rip__4196896_ to i64), i64 12) to i32*), align 4
  %625 = bitcast %union.VectorReg* %207 to i32*
  store i32 %621, i32* %625, align 1
  %626 = bitcast i8* %562 to i32*
  store i32 %622, i32* %626, align 1
  %627 = bitcast i64* %564 to i32*
  store i32 %623, i32* %627, align 1
  %628 = bitcast i8* %566 to i32*
  store i32 %624, i32* %628, align 1
  %629 = bitcast double %620 to i64
  %630 = load i64, i64* %198, align 1
  %631 = load i64, i64* %568, align 1
  %632 = load i64, i64* %564, align 1
  %633 = and i64 %631, %629
  %634 = and i64 %632, %630
  %635 = trunc i64 %633 to i32
  %636 = lshr i64 %633, 32
  %637 = trunc i64 %636 to i32
  store i32 %635, i32* %569, align 1
  store i32 %637, i32* %570, align 1
  %638 = trunc i64 %634 to i32
  store i32 %638, i32* %571, align 1
  %639 = lshr i64 %634, 32
  %640 = trunc i64 %639 to i32
  store i32 %640, i32* %572, align 1
  %641 = add i64 %603, 45
  store i64 %641, i64* %3, align 8
  %642 = load double, double* %196, align 1
  %643 = fcmp uno double %611, %642
  br i1 %643, label %644, label %654

; <label>:644:                                    ; preds = %block_4009fb
  %645 = fadd double %611, %642
  %646 = bitcast double %645 to i64
  %647 = and i64 %646, 9221120237041090560
  %648 = icmp eq i64 %647, 9218868437227405312
  %649 = and i64 %646, 2251799813685247
  %650 = icmp ne i64 %649, 0
  %651 = and i1 %648, %650
  br i1 %651, label %652, label %660

; <label>:652:                                    ; preds = %644
  %653 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %641, %struct.Memory* %MEMORY.2)
  %.pre = load i64, i64* %3, align 8
  %.pre2 = load i8, i8* %12, align 1
  %.pre3 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit1308

; <label>:654:                                    ; preds = %block_4009fb
  %655 = fcmp ogt double %611, %642
  br i1 %655, label %660, label %656

; <label>:656:                                    ; preds = %654
  %657 = fcmp olt double %611, %642
  br i1 %657, label %660, label %658

; <label>:658:                                    ; preds = %656
  %659 = fcmp oeq double %611, %642
  br i1 %659, label %660, label %664

; <label>:660:                                    ; preds = %658, %656, %654, %644
  %661 = phi i8 [ 0, %654 ], [ 0, %656 ], [ 1, %658 ], [ 1, %644 ]
  %662 = phi i8 [ 0, %654 ], [ 0, %656 ], [ 0, %658 ], [ 1, %644 ]
  %663 = phi i8 [ 0, %654 ], [ 1, %656 ], [ 0, %658 ], [ 1, %644 ]
  store i8 %661, i8* %15, align 1
  store i8 %662, i8* %13, align 1
  store i8 %663, i8* %12, align 1
  br label %664

; <label>:664:                                    ; preds = %660, %658
  %665 = phi i8 [ %661, %660 ], [ %591, %658 ]
  %666 = phi i8 [ %663, %660 ], [ %579, %658 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit1308

routine_ucomisd__xmm1___xmm0.exit1308:            ; preds = %664, %652
  %667 = phi i8 [ %.pre3, %652 ], [ %665, %664 ]
  %668 = phi i8 [ %.pre2, %652 ], [ %666, %664 ]
  %669 = phi i64 [ %.pre, %652 ], [ %641, %664 ]
  %670 = phi %struct.Memory* [ %653, %652 ], [ %MEMORY.2, %664 ]
  %671 = or i8 %667, %668
  %672 = icmp ne i8 %671, 0
  %.v21 = select i1 %672, i64 28, i64 6
  %673 = add i64 %669, %.v21
  store i64 %673, i64* %3, align 8
  br i1 %672, label %block_.L_400a44, label %block_400a2e

block_400a2e:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit1308
  %674 = load i64, i64* %RBP.i, align 8
  %675 = add i64 %674, -28
  %676 = add i64 %673, 5
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i32*
  %678 = load i32, i32* %677, align 4
  store i32 %678, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %679 = load <2 x float>, <2 x float>* %59, align 1
  %680 = extractelement <2 x float> %679, i32 0
  %681 = fpext float %680 to double
  store double %681, double* %191, align 1
  %682 = add i64 %674, -896
  %683 = add i64 %673, 17
  store i64 %683, i64* %3, align 8
  %684 = inttoptr i64 %682 to double*
  store double %681, double* %684, align 8
  %685 = load i64, i64* %3, align 8
  %686 = add i64 %685, 45
  store i64 %686, i64* %3, align 8
  br label %block_.L_400a6c

block_.L_400a44:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit1308
  %687 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %688 = sext i32 %687 to i64
  store i64 %688, i64* %RAX.i291, align 8
  %689 = shl nsw i64 %688, 2
  %690 = add i64 %689, ptrtoint (%G_0x62b480___rax_4__type* @G_0x62b480___rax_4_ to i64)
  %691 = add i64 %673, 17
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %690 to i32*
  %693 = load i32, i32* %692, align 4
  store i32 %693, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %694 = load <2 x float>, <2 x float>* %59, align 1
  %695 = extractelement <2 x float> %694, i32 0
  %696 = fpext float %695 to double
  %697 = load i32, i32* bitcast (%G_0x24c0__rip__4196960__type* @G_0x24c0__rip__4196960_ to i32*), align 8
  %698 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__4196960__type* @G_0x24c0__rip__4196960_ to i64), i64 4) to i32*), align 4
  %699 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__4196960__type* @G_0x24c0__rip__4196960_ to i64), i64 8) to i32*), align 8
  %700 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__4196960__type* @G_0x24c0__rip__4196960_ to i64), i64 12) to i32*), align 4
  store i32 %697, i32* %569, align 1
  store i32 %698, i32* %570, align 1
  store i32 %699, i32* %571, align 1
  store i32 %700, i32* %572, align 1
  %701 = bitcast double %696 to i64
  %702 = load i64, i64* %25, align 1
  %703 = load i64, i64* %197, align 1
  %704 = load i64, i64* %198, align 1
  %705 = and i64 %703, %701
  %706 = and i64 %704, %702
  %707 = trunc i64 %705 to i32
  %708 = lshr i64 %705, 32
  %709 = trunc i64 %708 to i32
  store i32 %707, i32* %22, align 1
  store i32 %709, i32* %247, align 1
  %710 = trunc i64 %706 to i32
  store i32 %710, i32* %248, align 1
  %711 = lshr i64 %706, 32
  %712 = trunc i64 %711 to i32
  store i32 %712, i32* %249, align 1
  %713 = load i64, i64* %RBP.i, align 8
  %714 = add i64 %713, -896
  %715 = add i64 %673, 40
  store i64 %715, i64* %3, align 8
  %716 = load i64, i64* %453, align 1
  %717 = inttoptr i64 %714 to i64*
  store i64 %716, i64* %717, align 8
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400a6c

block_.L_400a6c:                                  ; preds = %block_.L_400a44, %block_400a2e
  %718 = phi i64 [ %.pre4, %block_.L_400a44 ], [ %686, %block_400a2e ]
  %719 = load i64, i64* %RBP.i, align 8
  %720 = add i64 %719, -896
  %721 = add i64 %718, 8
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to double*
  %723 = load double, double* %722, align 8
  %724 = bitcast double %723 to <2 x i32>
  %725 = fptrunc double %723 to float
  store float %725, float* %21, align 1
  %726 = extractelement <2 x i32> %724, i32 1
  store i32 %726, i32* %247, align 1
  store i32 0, i32* %248, align 1
  store i32 0, i32* %249, align 1
  %727 = add i64 %719, -28
  %728 = add i64 %718, 17
  store i64 %728, i64* %3, align 8
  %729 = load <2 x float>, <2 x float>* %59, align 1
  %730 = extractelement <2 x float> %729, i32 0
  %731 = inttoptr i64 %727 to float*
  store float %730, float* %731, align 4
  %732 = load i64, i64* %RBP.i, align 8
  %733 = add i64 %732, -24
  %734 = load i64, i64* %3, align 8
  %735 = add i64 %734, 5
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %733 to i32*
  %737 = load i32, i32* %736, align 4
  store i32 %737, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %738 = load <2 x float>, <2 x float>* %59, align 1
  %739 = extractelement <2 x float> %738, i32 0
  %740 = fpext float %739 to double
  store double %740, double* %191, align 1
  %741 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %742 = sext i32 %741 to i64
  store i64 %742, i64* %RAX.i291, align 8
  %743 = shl nsw i64 %742, 2
  %744 = add i64 %743, ptrtoint (%G_0x62bcf0___rax_4__type* @G_0x62bcf0___rax_4_ to i64)
  %745 = add i64 %734, 26
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i32*
  %747 = load i32, i32* %746, align 4
  store i32 %747, i32* %569, align 1
  store float 0.000000e+00, float* %556, align 1
  store float 0.000000e+00, float* %557, align 1
  store float 0.000000e+00, float* %559, align 1
  %748 = load <2 x float>, <2 x float>* %560, align 1
  %749 = extractelement <2 x float> %748, i32 0
  %750 = fpext float %749 to double
  %751 = load i32, i32* bitcast (%G_0x247e__rip__4197026__type* @G_0x247e__rip__4197026_ to i32*), align 8
  %752 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__4197026__type* @G_0x247e__rip__4197026_ to i64), i64 4) to i32*), align 4
  %753 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__4197026__type* @G_0x247e__rip__4197026_ to i64), i64 8) to i32*), align 8
  %754 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__4197026__type* @G_0x247e__rip__4197026_ to i64), i64 12) to i32*), align 4
  store i32 %751, i32* %625, align 1
  store i32 %752, i32* %626, align 1
  store i32 %753, i32* %627, align 1
  store i32 %754, i32* %628, align 1
  %755 = bitcast double %750 to i64
  %756 = load i64, i64* %198, align 1
  %757 = load i64, i64* %568, align 1
  %758 = load i64, i64* %564, align 1
  %759 = and i64 %757, %755
  %760 = and i64 %758, %756
  %761 = trunc i64 %759 to i32
  %762 = lshr i64 %759, 32
  %763 = trunc i64 %762 to i32
  store i32 %761, i32* %569, align 1
  store i32 %763, i32* %570, align 1
  %764 = trunc i64 %760 to i32
  store i32 %764, i32* %571, align 1
  %765 = lshr i64 %760, 32
  %766 = trunc i64 %765 to i32
  store i32 %766, i32* %572, align 1
  %767 = add i64 %734, 45
  store i64 %767, i64* %3, align 8
  %768 = load double, double* %196, align 1
  %769 = fcmp uno double %740, %768
  br i1 %769, label %770, label %780

; <label>:770:                                    ; preds = %block_.L_400a6c
  %771 = fadd double %740, %768
  %772 = bitcast double %771 to i64
  %773 = and i64 %772, 9221120237041090560
  %774 = icmp eq i64 %773, 9218868437227405312
  %775 = and i64 %772, 2251799813685247
  %776 = icmp ne i64 %775, 0
  %777 = and i1 %774, %776
  br i1 %777, label %778, label %786

; <label>:778:                                    ; preds = %770
  %779 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %767, %struct.Memory* %670)
  %.pre5 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:780:                                    ; preds = %block_.L_400a6c
  %781 = fcmp ogt double %740, %768
  br i1 %781, label %786, label %782

; <label>:782:                                    ; preds = %780
  %783 = fcmp olt double %740, %768
  br i1 %783, label %786, label %784

; <label>:784:                                    ; preds = %782
  %785 = fcmp oeq double %740, %768
  br i1 %785, label %786, label %790

; <label>:786:                                    ; preds = %784, %782, %780, %770
  %787 = phi i8 [ 0, %780 ], [ 0, %782 ], [ 1, %784 ], [ 1, %770 ]
  %788 = phi i8 [ 0, %780 ], [ 0, %782 ], [ 0, %784 ], [ 1, %770 ]
  %789 = phi i8 [ 0, %780 ], [ 1, %782 ], [ 0, %784 ], [ 1, %770 ]
  store i8 %787, i8* %15, align 1
  store i8 %788, i8* %13, align 1
  store i8 %789, i8* %12, align 1
  br label %790

; <label>:790:                                    ; preds = %786, %784
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %790, %778
  %791 = phi i64 [ %.pre5, %778 ], [ %767, %790 ]
  %792 = phi %struct.Memory* [ %779, %778 ], [ %670, %790 ]
  %793 = load i8, i8* %12, align 1
  %794 = load i8, i8* %15, align 1
  %795 = or i8 %794, %793
  %796 = icmp ne i8 %795, 0
  %.v22 = select i1 %796, i64 28, i64 6
  %797 = add i64 %791, %.v22
  store i64 %797, i64* %3, align 8
  br i1 %796, label %block_.L_400ac6, label %block_400ab0

block_400ab0:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %798 = load i64, i64* %RBP.i, align 8
  %799 = add i64 %798, -24
  %800 = add i64 %797, 5
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i32*
  %802 = load i32, i32* %801, align 4
  store i32 %802, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %803 = load <2 x float>, <2 x float>* %59, align 1
  %804 = extractelement <2 x float> %803, i32 0
  %805 = fpext float %804 to double
  store double %805, double* %191, align 1
  %806 = add i64 %798, -904
  %807 = add i64 %797, 17
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %806 to double*
  store double %805, double* %808, align 8
  %809 = load i64, i64* %3, align 8
  %810 = add i64 %809, 45
  store i64 %810, i64* %3, align 8
  br label %block_.L_400aee

block_.L_400ac6:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %811 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %812 = sext i32 %811 to i64
  store i64 %812, i64* %RAX.i291, align 8
  %813 = shl nsw i64 %812, 2
  %814 = add i64 %813, ptrtoint (%G_0x62bcf0___rax_4__type* @G_0x62bcf0___rax_4_ to i64)
  %815 = add i64 %797, 17
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %814 to i32*
  %817 = load i32, i32* %816, align 4
  store i32 %817, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %818 = load <2 x float>, <2 x float>* %59, align 1
  %819 = extractelement <2 x float> %818, i32 0
  %820 = fpext float %819 to double
  %821 = load i32, i32* bitcast (%G_0x243e__rip__4197090__type* @G_0x243e__rip__4197090_ to i32*), align 8
  %822 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__4197090__type* @G_0x243e__rip__4197090_ to i64), i64 4) to i32*), align 4
  %823 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__4197090__type* @G_0x243e__rip__4197090_ to i64), i64 8) to i32*), align 8
  %824 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__4197090__type* @G_0x243e__rip__4197090_ to i64), i64 12) to i32*), align 4
  store i32 %821, i32* %569, align 1
  store i32 %822, i32* %570, align 1
  store i32 %823, i32* %571, align 1
  store i32 %824, i32* %572, align 1
  %825 = bitcast double %820 to i64
  %826 = load i64, i64* %25, align 1
  %827 = load i64, i64* %197, align 1
  %828 = load i64, i64* %198, align 1
  %829 = and i64 %827, %825
  %830 = and i64 %828, %826
  %831 = trunc i64 %829 to i32
  %832 = lshr i64 %829, 32
  %833 = trunc i64 %832 to i32
  store i32 %831, i32* %22, align 1
  store i32 %833, i32* %247, align 1
  %834 = trunc i64 %830 to i32
  store i32 %834, i32* %248, align 1
  %835 = lshr i64 %830, 32
  %836 = trunc i64 %835 to i32
  store i32 %836, i32* %249, align 1
  %837 = load i64, i64* %RBP.i, align 8
  %838 = add i64 %837, -904
  %839 = add i64 %797, 40
  store i64 %839, i64* %3, align 8
  %840 = load i64, i64* %453, align 1
  %841 = inttoptr i64 %838 to i64*
  store i64 %840, i64* %841, align 8
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_400aee

block_.L_400aee:                                  ; preds = %block_.L_400ac6, %block_400ab0
  %842 = phi i64 [ %.pre6, %block_.L_400ac6 ], [ %810, %block_400ab0 ]
  %843 = load i64, i64* %RBP.i, align 8
  %844 = add i64 %843, -904
  %845 = add i64 %842, 8
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %844 to double*
  %847 = load double, double* %846, align 8
  %848 = bitcast double %847 to <2 x i32>
  %849 = fptrunc double %847 to float
  store float %849, float* %21, align 1
  %850 = extractelement <2 x i32> %848, i32 1
  store i32 %850, i32* %247, align 1
  store i32 0, i32* %248, align 1
  store i32 0, i32* %249, align 1
  %851 = add i64 %843, -24
  %852 = add i64 %842, 17
  store i64 %852, i64* %3, align 8
  %853 = load <2 x float>, <2 x float>* %59, align 1
  %854 = extractelement <2 x float> %853, i32 0
  %855 = inttoptr i64 %851 to float*
  store float %854, float* %855, align 4
  %856 = load i64, i64* %3, align 8
  %857 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %858 = add i32 %857, 1
  %859 = zext i32 %858 to i64
  store i64 %859, i64* %RAX.i291, align 8
  %860 = icmp eq i32 %857, -1
  %861 = icmp eq i32 %858, 0
  %862 = or i1 %860, %861
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %12, align 1
  %864 = and i32 %858, 255
  %865 = tail call i32 @llvm.ctpop.i32(i32 %864)
  %866 = trunc i32 %865 to i8
  %867 = and i8 %866, 1
  %868 = xor i8 %867, 1
  store i8 %868, i8* %13, align 1
  %869 = xor i32 %857, %858
  %870 = lshr i32 %869, 4
  %871 = trunc i32 %870 to i8
  %872 = and i8 %871, 1
  store i8 %872, i8* %14, align 1
  %873 = zext i1 %861 to i8
  store i8 %873, i8* %15, align 1
  %874 = lshr i32 %858, 31
  %875 = trunc i32 %874 to i8
  store i8 %875, i8* %16, align 1
  %876 = lshr i32 %857, 31
  %877 = xor i32 %874, %876
  %878 = add nuw nsw i32 %877, %874
  %879 = icmp eq i32 %878, 2
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %17, align 1
  store i32 %858, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %881 = add i64 %856, -280
  store i64 %881, i64* %3, align 8
  br label %block_.L_4009e7

block_.L_400b15:                                  ; preds = %block_.L_4009e7
  %882 = load i32, i32* bitcast (%G_0x23af__rip__4197149__type* @G_0x23af__rip__4197149_ to i32*), align 8
  store i32 %882, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %883 = add i64 %603, 7419
  %884 = add i64 %603, 13
  %885 = load i64, i64* %6, align 8
  %886 = add i64 %885, -8
  %887 = inttoptr i64 %886 to i64*
  store i64 %884, i64* %887, align 8
  store i64 %886, i64* %6, align 8
  store i64 %883, i64* %3, align 8
  %call2_400b1d = tail call %struct.Memory* @sub_402810.epslon(%struct.State* %0, i64 %883, %struct.Memory* %MEMORY.2)
  %888 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402fd4_type* @G__0x402fd4 to i64), i64* %RSI.i265, align 8
  %889 = load i32, i32* bitcast (%G_0x2398__rip__4197172__type* @G_0x2398__rip__4197172_ to i32*), align 8
  store i32 %889, i32* %569, align 1
  store float 0.000000e+00, float* %556, align 1
  store float 0.000000e+00, float* %557, align 1
  store float 0.000000e+00, float* %559, align 1
  %890 = load i64, i64* %RBP.i, align 8
  %891 = add i64 %890, -36
  %892 = add i64 %888, 23
  store i64 %892, i64* %3, align 8
  %893 = load <2 x float>, <2 x float>* %59, align 1
  %894 = extractelement <2 x float> %893, i32 0
  %895 = inttoptr i64 %891 to float*
  store float %894, float* %895, align 4
  %896 = load i64, i64* %RBP.i, align 8
  %897 = add i64 %896, -28
  %898 = load i64, i64* %3, align 8
  %899 = add i64 %898, 5
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %897 to i32*
  %901 = load i32, i32* %900, align 4
  store i32 %901, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %902 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %903 = zext i32 %902 to i64
  store i64 %903, i64* %RAX.i291, align 8
  %904 = bitcast %union.VectorReg* %207 to <2 x i32>*
  %905 = load <2 x i32>, <2 x i32>* %904, align 1
  %906 = bitcast i64* %564 to <2 x i32>*
  %907 = load <2 x i32>, <2 x i32>* %906, align 1
  %908 = sitofp i32 %902 to float
  store float %908, float* %561, align 1
  %909 = extractelement <2 x i32> %905, i32 1
  %910 = bitcast i8* %562 to i32*
  store i32 %909, i32* %910, align 1
  %911 = extractelement <2 x i32> %907, i32 0
  %912 = bitcast i64* %564 to i32*
  store i32 %911, i32* %912, align 1
  %913 = extractelement <2 x i32> %907, i32 1
  %914 = bitcast i8* %566 to i32*
  store i32 %913, i32* %914, align 1
  %915 = add i64 %896, -20
  %916 = add i64 %898, 21
  store i64 %916, i64* %3, align 8
  %917 = bitcast %union.VectorReg* %207 to <2 x float>*
  %918 = load <2 x float>, <2 x float>* %917, align 1
  %919 = load <2 x i32>, <2 x i32>* %906, align 1
  %920 = inttoptr i64 %915 to float*
  %921 = load float, float* %920, align 4
  %922 = extractelement <2 x float> %918, i32 0
  %923 = fmul float %922, %921
  store float %923, float* %561, align 1
  %924 = bitcast <2 x float> %918 to <2 x i32>
  %925 = extractelement <2 x i32> %924, i32 1
  store i32 %925, i32* %910, align 1
  %926 = extractelement <2 x i32> %919, i32 0
  store i32 %926, i32* %912, align 1
  %927 = extractelement <2 x i32> %919, i32 1
  store i32 %927, i32* %914, align 1
  %928 = add i64 %896, -24
  %929 = add i64 %898, 26
  store i64 %929, i64* %3, align 8
  %930 = load <2 x float>, <2 x float>* %917, align 1
  %931 = load <2 x i32>, <2 x i32>* %906, align 1
  %932 = inttoptr i64 %928 to float*
  %933 = load float, float* %932, align 4
  %934 = extractelement <2 x float> %930, i32 0
  %935 = fmul float %934, %933
  store float %935, float* %561, align 1
  %936 = bitcast <2 x float> %930 to <2 x i32>
  %937 = extractelement <2 x i32> %936, i32 1
  store i32 %937, i32* %910, align 1
  %938 = extractelement <2 x i32> %931, i32 0
  store i32 %938, i32* %912, align 1
  %939 = extractelement <2 x i32> %931, i32 1
  store i32 %939, i32* %914, align 1
  %940 = add i64 %896, -36
  %941 = add i64 %898, 31
  store i64 %941, i64* %3, align 8
  %942 = load <2 x float>, <2 x float>* %917, align 1
  %943 = load <2 x i32>, <2 x i32>* %906, align 1
  %944 = inttoptr i64 %940 to float*
  %945 = load float, float* %944, align 4
  %946 = extractelement <2 x float> %942, i32 0
  %947 = fmul float %946, %945
  store float %947, float* %561, align 1
  %948 = bitcast <2 x float> %942 to <2 x i32>
  %949 = extractelement <2 x i32> %948, i32 1
  store i32 %949, i32* %910, align 1
  %950 = extractelement <2 x i32> %943, i32 0
  store i32 %950, i32* %912, align 1
  %951 = extractelement <2 x i32> %943, i32 1
  store i32 %951, i32* %914, align 1
  %952 = load <2 x float>, <2 x float>* %59, align 1
  %953 = load <2 x i32>, <2 x i32>* %241, align 1
  %954 = load <2 x float>, <2 x float>* %917, align 1
  %955 = extractelement <2 x float> %952, i32 0
  %956 = extractelement <2 x float> %954, i32 0
  %957 = fdiv float %955, %956
  store float %957, float* %21, align 1
  %958 = bitcast <2 x float> %952 to <2 x i32>
  %959 = extractelement <2 x i32> %958, i32 1
  store i32 %959, i32* %247, align 1
  %960 = extractelement <2 x i32> %953, i32 0
  store i32 %960, i32* %248, align 1
  %961 = extractelement <2 x i32> %953, i32 1
  store i32 %961, i32* %249, align 1
  %962 = add i64 %896, -32
  %963 = add i64 %898, 40
  store i64 %963, i64* %3, align 8
  %964 = load <2 x float>, <2 x float>* %59, align 1
  %965 = extractelement <2 x float> %964, i32 0
  %966 = inttoptr i64 %962 to float*
  store float %965, float* %966, align 4
  %967 = load i64, i64* %RBP.i, align 8
  %968 = add i64 %967, -36
  %969 = load i64, i64* %3, align 8
  %970 = add i64 %969, 5
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %968 to i32*
  %972 = load i32, i32* %971, align 4
  store i32 %972, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  %973 = add i64 %967, -48
  %974 = add i64 %969, 10
  store i64 %974, i64* %3, align 8
  %975 = load <2 x float>, <2 x float>* %59, align 1
  %976 = extractelement <2 x float> %975, i32 0
  %977 = inttoptr i64 %973 to float*
  store float %976, float* %977, align 4
  %978 = load i64, i64* %3, align 8
  %979 = load i32, i32* bitcast (%G_0x62bcf0_type* @G_0x62bcf0 to i32*), align 8
  store i32 %979, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %980 = load <2 x float>, <2 x float>* %59, align 1
  %981 = load <2 x i32>, <2 x i32>* %241, align 1
  %982 = load <2 x float>, <2 x float>* %560, align 1
  %983 = extractelement <2 x float> %980, i32 0
  %984 = extractelement <2 x float> %982, i32 0
  %985 = fsub float %983, %984
  store float %985, float* %21, align 1
  %986 = bitcast <2 x float> %980 to <2 x i32>
  %987 = extractelement <2 x i32> %986, i32 1
  store i32 %987, i32* %247, align 1
  %988 = extractelement <2 x i32> %981, i32 0
  store i32 %988, i32* %248, align 1
  %989 = extractelement <2 x i32> %981, i32 1
  store i32 %989, i32* %249, align 1
  %990 = load i64, i64* %RBP.i, align 8
  %991 = add i64 %990, -52
  %992 = add i64 %978, 18
  store i64 %992, i64* %3, align 8
  %993 = load <2 x float>, <2 x float>* %59, align 1
  %994 = extractelement <2 x float> %993, i32 0
  %995 = inttoptr i64 %991 to float*
  store float %994, float* %995, align 4
  %996 = load i64, i64* %3, align 8
  %997 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %998 = add i32 %997, -1
  %999 = zext i32 %998 to i64
  store i64 %999, i64* %RAX.i291, align 8
  %1000 = icmp eq i32 %997, 0
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %12, align 1
  %1002 = and i32 %998, 255
  %1003 = tail call i32 @llvm.ctpop.i32(i32 %1002)
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = xor i8 %1005, 1
  store i8 %1006, i8* %13, align 1
  %1007 = xor i32 %997, %998
  %1008 = lshr i32 %1007, 4
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  store i8 %1010, i8* %14, align 1
  %1011 = icmp eq i32 %998, 0
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %15, align 1
  %1013 = lshr i32 %998, 31
  %1014 = trunc i32 %1013 to i8
  store i8 %1014, i8* %16, align 1
  %1015 = lshr i32 %997, 31
  %1016 = xor i32 %1013, %1015
  %1017 = add nuw nsw i32 %1016, %1015
  %1018 = icmp eq i32 %1017, 2
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %17, align 1
  %1020 = sext i32 %998 to i64
  store i64 %1020, i64* %RCX.i373, align 8
  %1021 = shl nsw i64 %1020, 2
  %1022 = add i64 %1021, ptrtoint (%G_0x62bcf0___rcx_4__type* @G_0x62bcf0___rcx_4_ to i64)
  %1023 = add i64 %996, 22
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to i32*
  %1025 = load i32, i32* %1024, align 4
  store i32 %1025, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %1026 = load <2 x float>, <2 x float>* %59, align 1
  %1027 = load <2 x i32>, <2 x i32>* %241, align 1
  %1028 = load <2 x float>, <2 x float>* %560, align 1
  %1029 = extractelement <2 x float> %1026, i32 0
  %1030 = extractelement <2 x float> %1028, i32 0
  %1031 = fsub float %1029, %1030
  store float %1031, float* %21, align 1
  %1032 = bitcast <2 x float> %1026 to <2 x i32>
  %1033 = extractelement <2 x i32> %1032, i32 1
  store i32 %1033, i32* %247, align 1
  %1034 = extractelement <2 x i32> %1027, i32 0
  store i32 %1034, i32* %248, align 1
  %1035 = extractelement <2 x i32> %1027, i32 1
  store i32 %1035, i32* %249, align 1
  %1036 = load i64, i64* %RBP.i, align 8
  %1037 = add i64 %1036, -56
  %1038 = add i64 %996, 31
  store i64 %1038, i64* %3, align 8
  %1039 = load <2 x float>, <2 x float>* %59, align 1
  %1040 = extractelement <2 x float> %1039, i32 0
  %1041 = inttoptr i64 %1037 to float*
  store float %1040, float* %1041, align 4
  %1042 = load i64, i64* %3, align 8
  %1043 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1043, i64* %RDI.i642, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1044 = add i64 %1042, -1756
  %1045 = add i64 %1042, 15
  %1046 = load i64, i64* %6, align 8
  %1047 = add i64 %1046, -8
  %1048 = inttoptr i64 %1047 to i64*
  store i64 %1045, i64* %1048, align 8
  store i64 %1047, i64* %6, align 8
  store i64 %1044, i64* %3, align 8
  %1049 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_400b1d)
  %1050 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x402ffb_type* @G__0x402ffb to i64), i64* %RSI.i265, align 8
  %1051 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1051, i64* %RDI.i642, align 8
  %1052 = load i64, i64* %RBP.i, align 8
  %1053 = add i64 %1052, -908
  %1054 = load i32, i32* %EAX.i1578, align 4
  %1055 = add i64 %1050, 24
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1053 to i32*
  store i32 %1054, i32* %1056, align 4
  %1057 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1058 = add i64 %1057, -1795
  %1059 = add i64 %1057, 7
  %1060 = load i64, i64* %6, align 8
  %1061 = add i64 %1060, -8
  %1062 = inttoptr i64 %1061 to i64*
  store i64 %1059, i64* %1062, align 8
  store i64 %1061, i64* %6, align 8
  store i64 %1058, i64* %3, align 8
  %1063 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1049)
  %1064 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40301e_type* @G__0x40301e to i64), i64* %RSI.i265, align 8
  %1065 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1065, i64* %RDI.i642, align 8
  %1066 = load i64, i64* %RBP.i, align 8
  %1067 = add i64 %1066, -32
  %1068 = add i64 %1064, 23
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1067 to i32*
  %1070 = load i32, i32* %1069, align 4
  store i32 %1070, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %1071 = load <2 x float>, <2 x float>* %59, align 1
  %1072 = extractelement <2 x float> %1071, i32 0
  %1073 = fpext float %1072 to double
  store double %1073, double* %191, align 1
  %1074 = add i64 %1066, -28
  %1075 = add i64 %1064, 32
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to i32*
  %1077 = load i32, i32* %1076, align 4
  store i32 %1077, i32* %569, align 1
  store float 0.000000e+00, float* %556, align 1
  store float 0.000000e+00, float* %557, align 1
  store float 0.000000e+00, float* %559, align 1
  %1078 = load <2 x float>, <2 x float>* %560, align 1
  %1079 = extractelement <2 x float> %1078, i32 0
  %1080 = fpext float %1079 to double
  store double %1080, double* %196, align 1
  %1081 = add i64 %1066, -48
  %1082 = add i64 %1064, 41
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i32*
  %1084 = load i32, i32* %1083, align 4
  %1085 = bitcast %union.VectorReg* %207 to i32*
  store i32 %1084, i32* %1085, align 1
  store float 0.000000e+00, float* %563, align 1
  store float 0.000000e+00, float* %565, align 1
  store float 0.000000e+00, float* %567, align 1
  %1086 = load <2 x float>, <2 x float>* %917, align 1
  %1087 = extractelement <2 x float> %1086, i32 0
  %1088 = fpext float %1087 to double
  store double %1088, double* %211, align 1
  %1089 = add i64 %1066, -52
  %1090 = add i64 %1064, 50
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i32*
  %1092 = load i32, i32* %1091, align 4
  %1093 = bitcast %union.VectorReg* %212 to float*
  store i32 %1092, i32* %216, align 1
  %1094 = bitcast i8* %218 to float*
  store float 0.000000e+00, float* %1094, align 1
  %1095 = bitcast i64* %220 to float*
  store float 0.000000e+00, float* %1095, align 1
  %1096 = bitcast i8* %222 to float*
  store float 0.000000e+00, float* %1096, align 1
  %1097 = bitcast %union.VectorReg* %212 to <2 x float>*
  %1098 = load <2 x float>, <2 x float>* %1097, align 1
  %1099 = extractelement <2 x float> %1098, i32 0
  %1100 = fpext float %1099 to double
  store double %1100, double* %224, align 1
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %1102 = bitcast %union.VectorReg* %1101 to i8*
  %1103 = add i64 %1066, -56
  %1104 = add i64 %1064, 59
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i32*
  %1106 = load i32, i32* %1105, align 4
  %1107 = bitcast %union.VectorReg* %1101 to i32*
  store i32 %1106, i32* %1107, align 1
  %1108 = getelementptr inbounds i8, i8* %1102, i64 4
  %1109 = bitcast i8* %1108 to float*
  store float 0.000000e+00, float* %1109, align 1
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %1111 = bitcast i64* %1110 to float*
  store float 0.000000e+00, float* %1111, align 1
  %1112 = getelementptr inbounds i8, i8* %1102, i64 12
  %1113 = bitcast i8* %1112 to float*
  store float 0.000000e+00, float* %1113, align 1
  %1114 = bitcast %union.VectorReg* %1101 to <2 x float>*
  %1115 = load <2 x float>, <2 x float>* %1114, align 1
  %1116 = extractelement <2 x float> %1115, i32 0
  %1117 = fpext float %1116 to double
  %1118 = bitcast %union.VectorReg* %1101 to double*
  store double %1117, double* %1118, align 1
  %1119 = add i64 %1066, -912
  %1120 = load i32, i32* %EAX.i1578, align 4
  %1121 = add i64 %1064, 69
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1119 to i32*
  store i32 %1120, i32* %1122, align 4
  %1123 = load i64, i64* %3, align 8
  store i8 5, i8* %AL.i1589, align 1
  %1124 = add i64 %1123, -1871
  %1125 = add i64 %1123, 7
  %1126 = load i64, i64* %6, align 8
  %1127 = add i64 %1126, -8
  %1128 = inttoptr i64 %1127 to i64*
  store i64 %1125, i64* %1128, align 8
  store i64 %1127, i64* %6, align 8
  store i64 %1124, i64* %3, align 8
  %1129 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1063)
  %1130 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40303f_type* @G__0x40303f to i64), i64* %RSI.i265, align 8
  %1131 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1131, i64* %RDI.i642, align 8
  %1132 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1133 = zext i32 %1132 to i64
  store i64 %1133, i64* %RDX.i386, align 8
  %1134 = load i64, i64* %RBP.i, align 8
  %1135 = add i64 %1134, -916
  %1136 = load i32, i32* %EAX.i1578, align 4
  %1137 = add i64 %1130, 31
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1135 to i32*
  store i32 %1136, i32* %1138, align 4
  %1139 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1140 = add i64 %1139, -1909
  %1141 = add i64 %1139, 7
  %1142 = load i64, i64* %6, align 8
  %1143 = add i64 %1142, -8
  %1144 = inttoptr i64 %1143 to i64*
  store i64 %1141, i64* %1144, align 8
  store i64 %1143, i64* %6, align 8
  store i64 %1140, i64* %3, align 8
  %1145 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1129)
  %1146 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x403074_type* @G__0x403074 to i64), i64* %RSI.i265, align 8
  %1147 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1147, i64* %RDI.i642, align 8
  %1148 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1149 = zext i32 %1148 to i64
  store i64 %1149, i64* %RDX.i386, align 8
  %1150 = load i64, i64* %RBP.i, align 8
  %1151 = add i64 %1150, -920
  %1152 = load i32, i32* %EAX.i1578, align 4
  %1153 = add i64 %1146, 31
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1151 to i32*
  store i32 %1152, i32* %1154, align 4
  %1155 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1156 = add i64 %1155, -1947
  %1157 = add i64 %1155, 7
  %1158 = load i64, i64* %6, align 8
  %1159 = add i64 %1158, -8
  %1160 = inttoptr i64 %1159 to i64*
  store i64 %1157, i64* %1160, align 8
  store i64 %1159, i64* %6, align 8
  store i64 %1156, i64* %3, align 8
  %1161 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1145)
  %1162 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4030aa_type* @G__0x4030aa to i64), i64* %RSI.i265, align 8
  %1163 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1163, i64* %RDI.i642, align 8
  %1164 = load i64, i64* %RBP.i, align 8
  %1165 = add i64 %1164, -924
  %1166 = load i32, i32* %EAX.i1578, align 4
  %1167 = add i64 %1162, 24
  store i64 %1167, i64* %3, align 8
  %1168 = inttoptr i64 %1165 to i32*
  store i32 %1166, i32* %1168, align 4
  %1169 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1170 = add i64 %1169, -1978
  %1171 = add i64 %1169, 7
  %1172 = load i64, i64* %6, align 8
  %1173 = add i64 %1172, -8
  %1174 = inttoptr i64 %1173 to i64*
  store i64 %1171, i64* %1174, align 8
  store i64 %1173, i64* %6, align 8
  store i64 %1170, i64* %3, align 8
  %1175 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1161)
  %1176 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4030e2_type* @G__0x4030e2 to i64), i64* %RSI.i265, align 8
  %1177 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1177, i64* %RDI.i642, align 8
  %1178 = load i64, i64* %RBP.i, align 8
  %1179 = add i64 %1178, -928
  %1180 = load i32, i32* %EAX.i1578, align 4
  %1181 = add i64 %1176, 24
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1179 to i32*
  store i32 %1180, i32* %1182, align 4
  %1183 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1184 = add i64 %1183, -2009
  %1185 = add i64 %1183, 7
  %1186 = load i64, i64* %6, align 8
  %1187 = add i64 %1186, -8
  %1188 = inttoptr i64 %1187 to i64*
  store i64 %1185, i64* %1188, align 8
  store i64 %1187, i64* %6, align 8
  store i64 %1184, i64* %3, align 8
  %1189 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1175)
  %1190 = load i64, i64* %3, align 8
  store i32 0, i32* %22, align 1
  store i32 0, i32* %247, align 1
  store i32 0, i32* %248, align 1
  store i32 0, i32* %249, align 1
  %1191 = load i64, i64* %RBP.i, align 8
  %1192 = add i64 %1191, -16
  %1193 = add i64 %1190, 8
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1192 to i32*
  %1195 = load i32, i32* %1194, align 4
  store i32 %1195, i32* %569, align 1
  store float 0.000000e+00, float* %556, align 1
  store float 0.000000e+00, float* %557, align 1
  store float 0.000000e+00, float* %559, align 1
  %1196 = load <2 x float>, <2 x float>* %560, align 1
  %1197 = extractelement <2 x float> %1196, i32 0
  store float %1197, float* bitcast (%G_0x62bb48_type* @G_0x62bb48 to float*), align 8
  %1198 = add i64 %1190, 22
  store i64 %1198, i64* %3, align 8
  %1199 = load i32, i32* %1194, align 4
  store i32 %1199, i32* %569, align 1
  store float 0.000000e+00, float* %556, align 1
  store float 0.000000e+00, float* %557, align 1
  store float 0.000000e+00, float* %559, align 1
  %1200 = load <2 x float>, <2 x float>* %560, align 1
  %1201 = extractelement <2 x float> %1200, i32 0
  %1202 = fpext float %1201 to double
  store double %1202, double* %196, align 1
  %1203 = add i64 %1190, 30
  store i64 %1203, i64* %3, align 8
  %1204 = load double, double* %191, align 1
  %1205 = fcmp uno double %1202, %1204
  br i1 %1205, label %1206, label %1216

; <label>:1206:                                   ; preds = %block_.L_400b15
  %1207 = fadd double %1202, %1204
  %1208 = bitcast double %1207 to i64
  %1209 = and i64 %1208, 9221120237041090560
  %1210 = icmp eq i64 %1209, 9218868437227405312
  %1211 = and i64 %1208, 2251799813685247
  %1212 = icmp ne i64 %1211, 0
  %1213 = and i1 %1210, %1212
  br i1 %1213, label %1214, label %1222

; <label>:1214:                                   ; preds = %1206
  %1215 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1203, %struct.Memory* %1189)
  %.pre7 = load i64, i64* %RBP.i, align 8
  %.pre8 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1216:                                   ; preds = %block_.L_400b15
  %1217 = fcmp ogt double %1202, %1204
  br i1 %1217, label %1222, label %1218

; <label>:1218:                                   ; preds = %1216
  %1219 = fcmp olt double %1202, %1204
  br i1 %1219, label %1222, label %1220

; <label>:1220:                                   ; preds = %1218
  %1221 = fcmp oeq double %1202, %1204
  br i1 %1221, label %1222, label %1226

; <label>:1222:                                   ; preds = %1220, %1218, %1216, %1206
  %1223 = phi i8 [ 0, %1216 ], [ 0, %1218 ], [ 1, %1220 ], [ 1, %1206 ]
  %1224 = phi i8 [ 0, %1216 ], [ 0, %1218 ], [ 0, %1220 ], [ 1, %1206 ]
  %1225 = phi i8 [ 0, %1216 ], [ 1, %1218 ], [ 0, %1220 ], [ 1, %1206 ]
  store i8 %1223, i8* %15, align 1
  store i8 %1224, i8* %13, align 1
  store i8 %1225, i8* %12, align 1
  br label %1226

; <label>:1226:                                   ; preds = %1222, %1220
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1226, %1214
  %1227 = phi i64 [ %.pre8, %1214 ], [ %1203, %1226 ]
  %1228 = phi i64 [ %.pre7, %1214 ], [ %1191, %1226 ]
  %1229 = phi %struct.Memory* [ %1215, %1214 ], [ %1189, %1226 ]
  %1230 = add i64 %1228, -932
  %1231 = load i32, i32* %EAX.i1578, align 4
  %1232 = add i64 %1227, 6
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1230 to i32*
  store i32 %1231, i32* %1233, align 4
  %1234 = load i64, i64* %3, align 8
  %1235 = load i8, i8* %12, align 1
  %1236 = load i8, i8* %15, align 1
  %1237 = or i8 %1236, %1235
  %1238 = icmp ne i8 %1237, 0
  %.v23 = select i1 %1238, i64 96, i64 6
  %1239 = add i64 %1234, %.v23
  store i64 %1239, i64* %3, align 8
  br i1 %1238, label %block_.L_400d24, label %block_400cca

block_400cca:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %1240 = load double, double* bitcast (%G_0x2206__rip__4197586__type* @G_0x2206__rip__4197586_ to double*), align 8
  store double %1240, double* %191, align 1
  store double 0.000000e+00, double* %192, align 1
  %1241 = load double, double* bitcast (%G_0x220e__rip__4197594__type* @G_0x220e__rip__4197594_ to double*), align 8
  store double %1241, double* %196, align 1
  store double 0.000000e+00, double* %199, align 1
  %1242 = load i64, i64* %RBP.i, align 8
  %1243 = add i64 %1242, -12
  %1244 = add i64 %1239, 21
  store i64 %1244, i64* %3, align 8
  %1245 = inttoptr i64 %1243 to i32*
  %1246 = load i32, i32* %1245, align 4
  store i32 %1246, i32* %1085, align 1
  store float 0.000000e+00, float* %563, align 1
  store float 0.000000e+00, float* %565, align 1
  store float 0.000000e+00, float* %567, align 1
  %1247 = load <2 x float>, <2 x float>* %917, align 1
  %1248 = extractelement <2 x float> %1247, i32 0
  %1249 = fpext float %1248 to double
  store double %1249, double* %211, align 1
  %1250 = add i64 %1242, -16
  %1251 = add i64 %1239, 30
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  %1253 = load i32, i32* %1252, align 4
  store i32 %1253, i32* %216, align 1
  store float 0.000000e+00, float* %1094, align 1
  store float 0.000000e+00, float* %1095, align 1
  store float 0.000000e+00, float* %1096, align 1
  %1254 = load <2 x float>, <2 x float>* %1097, align 1
  %1255 = extractelement <2 x float> %1254, i32 0
  %1256 = fpext float %1255 to double
  store double %1256, double* %224, align 1
  %1257 = fmul double %1241, %1256
  %1258 = fdiv double %1249, %1257
  store double %1258, double* %211, align 1
  %1259 = bitcast double %1257 to <2 x i32>
  %1260 = fptrunc double %1258 to float
  store float %1260, float* %554, align 1
  %1261 = extractelement <2 x i32> %1259, i32 1
  store i32 %1261, i32* %570, align 1
  %1262 = load <2 x float>, <2 x float>* %560, align 1
  %1263 = extractelement <2 x float> %1262, i32 0
  store float %1263, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
  store float %1263, float* %554, align 1
  store float 0.000000e+00, float* %556, align 1
  store float 0.000000e+00, float* %557, align 1
  store float 0.000000e+00, float* %559, align 1
  %1264 = load <2 x float>, <2 x float>* %560, align 1
  %1265 = extractelement <2 x float> %1264, i32 0
  %1266 = fpext float %1265 to double
  store double %1266, double* %196, align 1
  %1267 = fdiv double %1240, %1266
  %1268 = bitcast double %1267 to <2 x i32>
  %1269 = fptrunc double %1267 to float
  store float %1269, float* %21, align 1
  %1270 = extractelement <2 x i32> %1268, i32 1
  store i32 %1270, i32* %247, align 1
  store i32 0, i32* %248, align 1
  store i32 0, i32* %249, align 1
  %1271 = load <2 x float>, <2 x float>* %59, align 1
  %1272 = extractelement <2 x float> %1271, i32 0
  store float %1272, float* bitcast (%G_0x62bbc0_type* @G_0x62bbc0 to float*), align 8
  %1273 = add i64 %1239, 111
  store i64 %1273, i64* %3, align 8
  br label %block_.L_400d39

block_.L_400d24:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  store i32 0, i32* %22, align 1
  store i32 0, i32* %247, align 1
  store i32 0, i32* %248, align 1
  store i32 0, i32* %249, align 1
  %1274 = load <2 x float>, <2 x float>* %59, align 1
  %1275 = extractelement <2 x float> %1274, i32 0
  store float %1275, float* bitcast (%G_0x62bb84_type* @G_0x62bb84 to float*), align 8
  %1276 = add i64 %1239, 21
  store i64 %1276, i64* %3, align 8
  store float %1275, float* bitcast (%G_0x62bbc0_type* @G_0x62bbc0 to float*), align 8
  %.pre9 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400d39

block_.L_400d39:                                  ; preds = %block_.L_400d24, %block_400cca
  %1277 = phi i64 [ %.pre9, %block_.L_400d24 ], [ %1242, %block_400cca ]
  %1278 = phi i64 [ %1276, %block_.L_400d24 ], [ %1273, %block_400cca ]
  store i64 0, i64* %RDI.i642, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1279 = add i64 %1277, -16
  %1280 = add i64 %1278, 7
  store i64 %1280, i64* %3, align 8
  %1281 = inttoptr i64 %1279 to i32*
  %1282 = load i32, i32* %1281, align 4
  store i32 %1282, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %1283 = add i64 %1277, -8
  %1284 = add i64 %1278, 12
  store i64 %1284, i64* %3, align 8
  %1285 = load <2 x float>, <2 x float>* %59, align 1
  %1286 = load <2 x i32>, <2 x i32>* %241, align 1
  %1287 = inttoptr i64 %1283 to float*
  %1288 = load float, float* %1287, align 4
  %1289 = extractelement <2 x float> %1285, i32 0
  %1290 = fdiv float %1289, %1288
  store float %1290, float* %21, align 1
  %1291 = bitcast <2 x float> %1285 to <2 x i32>
  %1292 = extractelement <2 x i32> %1291, i32 1
  store i32 %1292, i32* %247, align 1
  %1293 = extractelement <2 x i32> %1286, i32 0
  store i32 %1293, i32* %248, align 1
  %1294 = extractelement <2 x i32> %1286, i32 1
  store i32 %1294, i32* %249, align 1
  %1295 = load <2 x float>, <2 x float>* %59, align 1
  %1296 = extractelement <2 x float> %1295, i32 0
  store float %1296, float* bitcast (%G_0x62bbfc_type* @G_0x62bbfc to float*), align 8
  %1297 = add i64 %1278, 7063
  %1298 = add i64 %1278, 26
  %1299 = load i64, i64* %6, align 8
  %1300 = add i64 %1299, -8
  %1301 = inttoptr i64 %1300 to i64*
  store i64 %1298, i64* %1301, align 8
  store i64 %1300, i64* %6, align 8
  store i64 %1297, i64* %3, align 8
  %call2_400d4e = tail call %struct.Memory* @sub_4028d0.print_time(%struct.State* %0, i64 %1297, %struct.Memory* %1229)
  %1302 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4030ef_type* @G__0x4030ef to i64), i64* %RSI.i265, align 8
  %1303 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1303, i64* %RDI.i642, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1304 = add i64 %1302, -2195
  %1305 = add i64 %1302, 25
  %1306 = load i64, i64* %6, align 8
  %1307 = add i64 %1306, -8
  %1308 = inttoptr i64 %1307 to i64*
  store i64 %1305, i64* %1308, align 8
  store i64 %1307, i64* %6, align 8
  store i64 %1304, i64* %3, align 8
  %1309 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_400d4e)
  %1310 = load i64, i64* %RBP.i, align 8
  %1311 = add i64 %1310, -64
  %1312 = load i64, i64* %3, align 8
  %1313 = add i64 %1312, 7
  store i64 %1313, i64* %3, align 8
  %1314 = inttoptr i64 %1311 to i32*
  store i32 -3, i32* %1314, align 4
  %1315 = load i64, i64* %RBP.i, align 8
  %1316 = add i64 %1315, -68
  %1317 = load i64, i64* %3, align 8
  %1318 = add i64 %1317, 7
  store i64 %1318, i64* %3, align 8
  %1319 = inttoptr i64 %1316 to i32*
  store i32 100, i32* %1319, align 4
  %1320 = load i64, i64* %RBP.i, align 8
  %1321 = add i64 %1320, -936
  %1322 = load i32, i32* %EAX.i1578, align 4
  %1323 = load i64, i64* %3, align 8
  %1324 = add i64 %1323, 6
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1321 to i32*
  store i32 %1322, i32* %1325, align 4
  %1326 = bitcast %union.VectorReg* %193 to <2 x i32>*
  %1327 = bitcast i64* %198 to <2 x i32>*
  %.pre10 = load i64, i64* %3, align 8
  br label %block_.L_400d80

block_.L_400d80:                                  ; preds = %block_.L_400e43, %block_.L_400d39
  %1328 = phi i64 [ %.pre10, %block_.L_400d39 ], [ %1564, %block_.L_400e43 ]
  %MEMORY.6 = phi %struct.Memory* [ %1309, %block_.L_400d39 ], [ %1498, %block_.L_400e43 ]
  %1329 = add i64 %1328, -1984
  %1330 = add i64 %1328, 5
  %1331 = load i64, i64* %6, align 8
  %1332 = add i64 %1331, -8
  %1333 = inttoptr i64 %1332 to i64*
  store i64 %1330, i64* %1333, align 8
  store i64 %1332, i64* %6, align 8
  store i64 %1329, i64* %3, align 8
  %call2_400d80 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %1329, %struct.Memory* %MEMORY.6)
  %1334 = load i64, i64* %RBP.i, align 8
  %1335 = add i64 %1334, -80
  %1336 = load i64, i64* %3, align 8
  %1337 = add i64 %1336, 5
  store i64 %1337, i64* %3, align 8
  %1338 = load <2 x float>, <2 x float>* %59, align 1
  %1339 = extractelement <2 x float> %1338, i32 0
  %1340 = inttoptr i64 %1335 to float*
  store float %1339, float* %1340, align 4
  %1341 = load i64, i64* %RBP.i, align 8
  %1342 = add i64 %1341, -64
  %1343 = load i64, i64* %3, align 8
  %1344 = add i64 %1343, 3
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1342 to i32*
  %1346 = load i32, i32* %1345, align 4
  %1347 = add i32 %1346, 1
  %1348 = zext i32 %1347 to i64
  store i64 %1348, i64* %RAX.i291, align 8
  %1349 = icmp eq i32 %1346, -1
  %1350 = icmp eq i32 %1347, 0
  %1351 = or i1 %1349, %1350
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %12, align 1
  %1353 = and i32 %1347, 255
  %1354 = tail call i32 @llvm.ctpop.i32(i32 %1353)
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = xor i8 %1356, 1
  store i8 %1357, i8* %13, align 1
  %1358 = xor i32 %1346, %1347
  %1359 = lshr i32 %1358, 4
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  store i8 %1361, i8* %14, align 1
  %1362 = zext i1 %1350 to i8
  store i8 %1362, i8* %15, align 1
  %1363 = lshr i32 %1347, 31
  %1364 = trunc i32 %1363 to i8
  store i8 %1364, i8* %16, align 1
  %1365 = lshr i32 %1346, 31
  %1366 = xor i32 %1363, %1365
  %1367 = add nuw nsw i32 %1366, %1363
  %1368 = icmp eq i32 %1367, 2
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %17, align 1
  %1370 = add i64 %1343, 9
  store i64 %1370, i64* %3, align 8
  store i32 %1347, i32* %1345, align 4
  %1371 = load i64, i64* %3, align 8
  %1372 = add i64 %1371, 11
  store i64 %1372, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_400d9e

block_.L_400d9e:                                  ; preds = %block_400dae, %block_.L_400d80
  %1373 = phi i32 [ 0, %block_.L_400d80 ], [ %1420, %block_400dae ]
  %1374 = phi i64 [ %1372, %block_.L_400d80 ], [ %1443, %block_400dae ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_400d80, %block_.L_400d80 ], [ %call2_400dd4, %block_400dae ]
  %1375 = zext i32 %1373 to i64
  store i64 %1375, i64* %RAX.i291, align 8
  %1376 = load i64, i64* %RBP.i, align 8
  %1377 = add i64 %1376, -68
  %1378 = add i64 %1374, 10
  store i64 %1378, i64* %3, align 8
  %1379 = inttoptr i64 %1377 to i32*
  %1380 = load i32, i32* %1379, align 4
  %1381 = sub i32 %1373, %1380
  %1382 = icmp ult i32 %1373, %1380
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %12, align 1
  %1384 = and i32 %1381, 255
  %1385 = tail call i32 @llvm.ctpop.i32(i32 %1384)
  %1386 = trunc i32 %1385 to i8
  %1387 = and i8 %1386, 1
  %1388 = xor i8 %1387, 1
  store i8 %1388, i8* %13, align 1
  %1389 = xor i32 %1380, %1373
  %1390 = xor i32 %1389, %1381
  %1391 = lshr i32 %1390, 4
  %1392 = trunc i32 %1391 to i8
  %1393 = and i8 %1392, 1
  store i8 %1393, i8* %14, align 1
  %1394 = icmp eq i32 %1381, 0
  %1395 = zext i1 %1394 to i8
  store i8 %1395, i8* %15, align 1
  %1396 = lshr i32 %1381, 31
  %1397 = trunc i32 %1396 to i8
  store i8 %1397, i8* %16, align 1
  %1398 = lshr i32 %1373, 31
  %1399 = lshr i32 %1380, 31
  %1400 = xor i32 %1399, %1398
  %1401 = xor i32 %1396, %1398
  %1402 = add nuw nsw i32 %1401, %1400
  %1403 = icmp eq i32 %1402, 2
  %1404 = zext i1 %1403 to i8
  store i8 %1404, i8* %17, align 1
  %1405 = icmp ne i8 %1397, 0
  %1406 = xor i1 %1405, %1403
  %.v24 = select i1 %1406, i64 16, i64 81
  %1407 = add i64 %1374, %.v24
  store i64 %1407, i64* %3, align 8
  br i1 %1406, label %block_400dae, label %block_.L_400def

block_400dae:                                     ; preds = %block_.L_400d9e
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %1408 = add i64 %1376, -20
  store i64 %1408, i64* %33, align 8
  %1409 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1410 = zext i32 %1409 to i64
  store i64 %1410, i64* %RSI.i265, align 8
  %1411 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1412 = zext i32 %1411 to i64
  store i64 %1412, i64* %RDX.i386, align 8
  %1413 = add i64 %1407, 2562
  %1414 = add i64 %1407, 43
  %1415 = load i64, i64* %6, align 8
  %1416 = add i64 %1415, -8
  %1417 = inttoptr i64 %1416 to i64*
  store i64 %1414, i64* %1417, align 8
  store i64 %1416, i64* %6, align 8
  store i64 %1413, i64* %3, align 8
  %call2_400dd4 = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %1413, %struct.Memory* %MEMORY.7)
  %1418 = load i64, i64* %3, align 8
  %1419 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %1420 = add i32 %1419, 1
  %1421 = zext i32 %1420 to i64
  store i64 %1421, i64* %RAX.i291, align 8
  %1422 = icmp eq i32 %1419, -1
  %1423 = icmp eq i32 %1420, 0
  %1424 = or i1 %1422, %1423
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %12, align 1
  %1426 = and i32 %1420, 255
  %1427 = tail call i32 @llvm.ctpop.i32(i32 %1426)
  %1428 = trunc i32 %1427 to i8
  %1429 = and i8 %1428, 1
  %1430 = xor i8 %1429, 1
  store i8 %1430, i8* %13, align 1
  %1431 = xor i32 %1419, %1420
  %1432 = lshr i32 %1431, 4
  %1433 = trunc i32 %1432 to i8
  %1434 = and i8 %1433, 1
  store i8 %1434, i8* %14, align 1
  %1435 = zext i1 %1423 to i8
  store i8 %1435, i8* %15, align 1
  %1436 = lshr i32 %1420, 31
  %1437 = trunc i32 %1436 to i8
  store i8 %1437, i8* %16, align 1
  %1438 = lshr i32 %1419, 31
  %1439 = xor i32 %1436, %1438
  %1440 = add nuw nsw i32 %1439, %1436
  %1441 = icmp eq i32 %1440, 2
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %17, align 1
  store i32 %1420, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %1443 = add i64 %1418, -59
  store i64 %1443, i64* %3, align 8
  br label %block_.L_400d9e

block_.L_400def:                                  ; preds = %block_.L_400d9e
  %1444 = add i64 %1407, -2095
  %1445 = add i64 %1407, 5
  %1446 = load i64, i64* %6, align 8
  %1447 = add i64 %1446, -8
  %1448 = inttoptr i64 %1447 to i64*
  store i64 %1445, i64* %1448, align 8
  store i64 %1447, i64* %6, align 8
  store i64 %1444, i64* %3, align 8
  %call2_400def = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %1444, %struct.Memory* %MEMORY.7)
  %1449 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40310d_type* @G__0x40310d to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %569, align 1
  store i32 0, i32* %570, align 1
  store i32 0, i32* %571, align 1
  store i32 0, i32* %572, align 1
  %1450 = load i64, i64* %RBP.i, align 8
  %1451 = add i64 %1450, -84
  %1452 = add i64 %1449, 18
  store i64 %1452, i64* %3, align 8
  %1453 = load <2 x float>, <2 x float>* %59, align 1
  %1454 = extractelement <2 x float> %1453, i32 0
  %1455 = inttoptr i64 %1451 to float*
  store float %1454, float* %1455, align 4
  %1456 = load i64, i64* %RBP.i, align 8
  %1457 = add i64 %1456, -84
  %1458 = load i64, i64* %3, align 8
  %1459 = add i64 %1458, 5
  store i64 %1459, i64* %3, align 8
  %1460 = inttoptr i64 %1457 to i32*
  %1461 = load i32, i32* %1460, align 4
  store i32 %1461, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %1462 = add i64 %1456, -80
  %1463 = add i64 %1458, 10
  store i64 %1463, i64* %3, align 8
  %1464 = load <2 x float>, <2 x float>* %59, align 1
  %1465 = load <2 x i32>, <2 x i32>* %241, align 1
  %1466 = inttoptr i64 %1462 to float*
  %1467 = load float, float* %1466, align 4
  %1468 = extractelement <2 x float> %1464, i32 0
  %1469 = fsub float %1468, %1467
  store float %1469, float* %21, align 1
  %1470 = bitcast <2 x float> %1464 to <2 x i32>
  %1471 = extractelement <2 x i32> %1470, i32 1
  store i32 %1471, i32* %247, align 1
  %1472 = extractelement <2 x i32> %1465, i32 0
  store i32 %1472, i32* %248, align 1
  %1473 = extractelement <2 x i32> %1465, i32 1
  store i32 %1473, i32* %249, align 1
  %1474 = add i64 %1456, -72
  %1475 = add i64 %1458, 15
  store i64 %1475, i64* %3, align 8
  %1476 = load <2 x float>, <2 x float>* %59, align 1
  %1477 = extractelement <2 x float> %1476, i32 0
  %1478 = inttoptr i64 %1474 to float*
  store float %1477, float* %1478, align 4
  %1479 = load i64, i64* %3, align 8
  %1480 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1480, i64* %RDI.i642, align 8
  %1481 = load i64, i64* %RBP.i, align 8
  %1482 = add i64 %1481, -68
  %1483 = add i64 %1479, 11
  store i64 %1483, i64* %3, align 8
  %1484 = inttoptr i64 %1482 to i32*
  %1485 = load i32, i32* %1484, align 4
  %1486 = zext i32 %1485 to i64
  store i64 %1486, i64* %RDX.i386, align 8
  %1487 = load <2 x i32>, <2 x i32>* %1326, align 1
  %1488 = load <2 x i32>, <2 x i32>* %1327, align 1
  %1489 = extractelement <2 x i32> %1487, i32 0
  store i32 %1489, i32* %22, align 1
  %1490 = extractelement <2 x i32> %1487, i32 1
  store i32 %1490, i32* %247, align 1
  %1491 = extractelement <2 x i32> %1488, i32 0
  store i32 %1491, i32* %248, align 1
  %1492 = extractelement <2 x i32> %1488, i32 1
  store i32 %1492, i32* %249, align 1
  store i8 1, i8* %AL.i1589, align 1
  %1493 = add i64 %1479, -2389
  %1494 = add i64 %1479, 21
  %1495 = load i64, i64* %6, align 8
  %1496 = add i64 %1495, -8
  %1497 = inttoptr i64 %1496 to i64*
  store i64 %1494, i64* %1497, align 8
  store i64 %1496, i64* %6, align 8
  store i64 %1493, i64* %3, align 8
  %1498 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_400def)
  %1499 = load i64, i64* %RBP.i, align 8
  %1500 = add i64 %1499, -64
  %1501 = load i64, i64* %3, align 8
  %1502 = add i64 %1501, 4
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1500 to i32*
  %1504 = load i32, i32* %1503, align 4
  store i8 0, i8* %12, align 1
  %1505 = and i32 %1504, 255
  %1506 = tail call i32 @llvm.ctpop.i32(i32 %1505)
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  %1509 = xor i8 %1508, 1
  store i8 %1509, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1510 = icmp eq i32 %1504, 0
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %15, align 1
  %1512 = lshr i32 %1504, 31
  %1513 = trunc i32 %1512 to i8
  store i8 %1513, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1514 = add i64 %1499, -940
  %1515 = load i32, i32* %EAX.i1578, align 4
  %1516 = add i64 %1501, 10
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1514 to i32*
  store i32 %1515, i32* %1517, align 4
  %1518 = load i64, i64* %3, align 8
  %1519 = load i8, i8* %16, align 1
  %1520 = icmp ne i8 %1519, 0
  %1521 = load i8, i8* %17, align 1
  %1522 = icmp ne i8 %1521, 0
  %1523 = xor i1 %1520, %1522
  %.v25 = select i1 %1523, i64 6, i64 15
  %1524 = add i64 %1518, %.v25
  store i64 %1524, i64* %3, align 8
  br i1 %1523, label %block_400e3a, label %block_.L_400e43

block_400e3a:                                     ; preds = %block_.L_400def
  %1525 = load i64, i64* %RBP.i, align 8
  %1526 = add i64 %1525, -68
  %1527 = add i64 %1524, 3
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1526 to i32*
  %1529 = load i32, i32* %1528, align 4
  %1530 = shl i32 %1529, 1
  %1531 = icmp slt i32 %1529, 0
  %1532 = icmp slt i32 %1530, 0
  %1533 = xor i1 %1531, %1532
  %1534 = zext i32 %1530 to i64
  store i64 %1534, i64* %RAX.i291, align 8
  %.lobit = lshr i32 %1529, 31
  %1535 = trunc i32 %.lobit to i8
  store i8 %1535, i8* %12, align 1
  %1536 = and i32 %1530, 254
  %1537 = tail call i32 @llvm.ctpop.i32(i32 %1536)
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = xor i8 %1539, 1
  store i8 %1540, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1541 = icmp eq i32 %1530, 0
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %15, align 1
  %1543 = lshr i32 %1529, 30
  %1544 = trunc i32 %1543 to i8
  %1545 = and i8 %1544, 1
  store i8 %1545, i8* %16, align 1
  %1546 = zext i1 %1533 to i8
  store i8 %1546, i8* %17, align 1
  %1547 = add i64 %1524, 9
  store i64 %1547, i64* %3, align 8
  store i32 %1530, i32* %1528, align 4
  %.pre11 = load i64, i64* %3, align 8
  br label %block_.L_400e43

block_.L_400e43:                                  ; preds = %block_.L_400def, %block_400e3a
  %1548 = phi i64 [ %.pre11, %block_400e3a ], [ %1524, %block_.L_400def ]
  %1549 = load i64, i64* %RBP.i, align 8
  %1550 = add i64 %1549, -64
  %1551 = add i64 %1548, 9
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1550 to i32*
  %1553 = load i32, i32* %1552, align 4
  store i8 0, i8* %12, align 1
  %1554 = and i32 %1553, 255
  %1555 = tail call i32 @llvm.ctpop.i32(i32 %1554)
  %1556 = trunc i32 %1555 to i8
  %1557 = and i8 %1556, 1
  %1558 = xor i8 %1557, 1
  store i8 %1558, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1559 = icmp eq i32 %1553, 0
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %15, align 1
  %1561 = lshr i32 %1553, 31
  %1562 = trunc i32 %1561 to i8
  store i8 %1562, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1563 = icmp ne i8 %1562, 0
  %.v26 = select i1 %1563, i64 -195, i64 15
  %1564 = add i64 %1548, %.v26
  store i64 %1564, i64* %3, align 8
  br i1 %1563, label %block_.L_400d80, label %block_400e52

block_400e52:                                     ; preds = %block_.L_400e43
  store i64 ptrtoint (%G__0x403127_type* @G__0x403127 to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %22, align 1
  store i32 0, i32* %247, align 1
  store i32 0, i32* %248, align 1
  store i32 0, i32* %249, align 1
  %1565 = add i64 %1549, -72
  %1566 = add i64 %1564, 18
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1565 to float*
  %1568 = inttoptr i64 %1565 to i32*
  %1569 = load i32, i32* %1568, align 4
  store i32 %1569, i32* %569, align 1
  store float 0.000000e+00, float* %556, align 1
  store float 0.000000e+00, float* %557, align 1
  store float 0.000000e+00, float* %559, align 1
  %1570 = load <2 x float>, <2 x float>* %560, align 1
  %1571 = extractelement <2 x float> %1570, i32 0
  %1572 = fpext float %1571 to double
  store double %1572, double* %196, align 1
  %1573 = add i64 %1549, -68
  %1574 = add i64 %1564, 25
  store i64 %1574, i64* %3, align 8
  %1575 = inttoptr i64 %1573 to i32*
  %1576 = load i32, i32* %1575, align 4
  %1577 = zext i32 %1576 to i64
  store i64 %1577, i64* %RAX.i291, align 8
  %1578 = sitofp i32 %1576 to double
  store double %1578, double* %211, align 1
  %1579 = load <2 x i32>, <2 x i32>* %1327, align 1
  %1580 = fdiv double %1572, %1578
  %1581 = bitcast double %1580 to <2 x i32>
  %1582 = fptrunc double %1580 to float
  store float %1582, float* %554, align 1
  %1583 = extractelement <2 x i32> %1581, i32 1
  store i32 %1583, i32* %570, align 1
  %1584 = extractelement <2 x i32> %1579, i32 0
  store i32 %1584, i32* %571, align 1
  %1585 = extractelement <2 x i32> %1579, i32 1
  store i32 %1585, i32* %572, align 1
  %1586 = add i64 %1564, 42
  store i64 %1586, i64* %3, align 8
  %1587 = load <2 x float>, <2 x float>* %560, align 1
  %1588 = extractelement <2 x float> %1587, i32 0
  store float %1588, float* %1567, align 4
  %1589 = load i64, i64* %3, align 8
  %1590 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1590, i64* %RDI.i642, align 8
  store i8 1, i8* %AL.i1589, align 1
  %1591 = add i64 %1589, -2492
  %1592 = add i64 %1589, 15
  %1593 = load i64, i64* %6, align 8
  %1594 = add i64 %1593, -8
  %1595 = inttoptr i64 %1594 to i64*
  store i64 %1592, i64* %1595, align 8
  store i64 %1594, i64* %6, align 8
  store i64 %1591, i64* %3, align 8
  %1596 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1498)
  %1597 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40314e_type* @G__0x40314e to i64), i64* %RSI.i265, align 8
  %1598 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1598, i64* %RDI.i642, align 8
  %1599 = load i64, i64* %RBP.i, align 8
  %1600 = add i64 %1599, -944
  %1601 = load i32, i32* %EAX.i1578, align 4
  %1602 = add i64 %1597, 24
  store i64 %1602, i64* %3, align 8
  %1603 = inttoptr i64 %1600 to i32*
  store i32 %1601, i32* %1603, align 4
  %1604 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1605 = add i64 %1604, -2531
  %1606 = add i64 %1604, 7
  %1607 = load i64, i64* %6, align 8
  %1608 = add i64 %1607, -8
  %1609 = inttoptr i64 %1608 to i64*
  store i64 %1606, i64* %1609, align 8
  store i64 %1608, i64* %6, align 8
  store i64 %1605, i64* %3, align 8
  %1610 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1596)
  %1611 = load i64, i64* %RBP.i, align 8
  %1612 = add i64 %1611, -64
  %1613 = load i64, i64* %3, align 8
  %1614 = add i64 %1613, 7
  store i64 %1614, i64* %3, align 8
  %1615 = inttoptr i64 %1612 to i32*
  store i32 -3, i32* %1615, align 4
  %1616 = load i64, i64* %3, align 8
  store i32 100, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1617 = load i64, i64* %RBP.i, align 8
  %1618 = add i64 %1617, -948
  %1619 = load i32, i32* %EAX.i1578, align 4
  %1620 = add i64 %1616, 17
  store i64 %1620, i64* %3, align 8
  %1621 = inttoptr i64 %1618 to i32*
  store i32 %1619, i32* %1621, align 4
  %.pre12 = load i64, i64* %3, align 8
  br label %block_.L_400ec2

block_.L_400ec2:                                  ; preds = %block_.L_400fbc, %block_400e52
  %1622 = phi i64 [ %.pre12, %block_400e52 ], [ %1843, %block_.L_400fbc ]
  %MEMORY.9 = phi %struct.Memory* [ %1610, %block_400e52 ], [ %1781, %block_.L_400fbc ]
  %1623 = add i64 %1622, -2306
  %1624 = add i64 %1622, 5
  %1625 = load i64, i64* %6, align 8
  %1626 = add i64 %1625, -8
  %1627 = inttoptr i64 %1626 to i64*
  store i64 %1624, i64* %1627, align 8
  store i64 %1626, i64* %6, align 8
  store i64 %1623, i64* %3, align 8
  %call2_400ec2 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %1623, %struct.Memory* %MEMORY.9)
  %1628 = load i64, i64* %RBP.i, align 8
  %1629 = add i64 %1628, -80
  %1630 = load i64, i64* %3, align 8
  %1631 = add i64 %1630, 5
  store i64 %1631, i64* %3, align 8
  %1632 = load <2 x float>, <2 x float>* %59, align 1
  %1633 = extractelement <2 x float> %1632, i32 0
  %1634 = inttoptr i64 %1629 to float*
  store float %1633, float* %1634, align 4
  %1635 = load i64, i64* %RBP.i, align 8
  %1636 = add i64 %1635, -64
  %1637 = load i64, i64* %3, align 8
  %1638 = add i64 %1637, 3
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1636 to i32*
  %1640 = load i32, i32* %1639, align 4
  %1641 = add i32 %1640, 1
  %1642 = zext i32 %1641 to i64
  store i64 %1642, i64* %RAX.i291, align 8
  %1643 = icmp eq i32 %1640, -1
  %1644 = icmp eq i32 %1641, 0
  %1645 = or i1 %1643, %1644
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %12, align 1
  %1647 = and i32 %1641, 255
  %1648 = tail call i32 @llvm.ctpop.i32(i32 %1647)
  %1649 = trunc i32 %1648 to i8
  %1650 = and i8 %1649, 1
  %1651 = xor i8 %1650, 1
  store i8 %1651, i8* %13, align 1
  %1652 = xor i32 %1640, %1641
  %1653 = lshr i32 %1652, 4
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  store i8 %1655, i8* %14, align 1
  %1656 = zext i1 %1644 to i8
  store i8 %1656, i8* %15, align 1
  %1657 = lshr i32 %1641, 31
  %1658 = trunc i32 %1657 to i8
  store i8 %1658, i8* %16, align 1
  %1659 = lshr i32 %1640, 31
  %1660 = xor i32 %1657, %1659
  %1661 = add nuw nsw i32 %1660, %1657
  %1662 = icmp eq i32 %1661, 2
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %17, align 1
  %1664 = add i64 %1637, 9
  store i64 %1664, i64* %3, align 8
  store i32 %1641, i32* %1639, align 4
  %1665 = load i64, i64* %3, align 8
  %1666 = add i64 %1665, 11
  store i64 %1666, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_400ee0

block_.L_400ee0:                                  ; preds = %block_400ef4, %block_.L_400ec2
  %1667 = phi i32 [ 0, %block_.L_400ec2 ], [ %1721, %block_400ef4 ]
  %1668 = phi i64 [ %1666, %block_.L_400ec2 ], [ %1744, %block_400ef4 ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_400ec2, %block_.L_400ec2 ], [ %call2_400f4b, %block_400ef4 ]
  %1669 = zext i32 %1667 to i64
  store i64 %1669, i64* %RAX.i291, align 8
  %1670 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1671 = sub i32 %1667, %1670
  %1672 = icmp ult i32 %1667, %1670
  %1673 = zext i1 %1672 to i8
  store i8 %1673, i8* %12, align 1
  %1674 = and i32 %1671, 255
  %1675 = tail call i32 @llvm.ctpop.i32(i32 %1674)
  %1676 = trunc i32 %1675 to i8
  %1677 = and i8 %1676, 1
  %1678 = xor i8 %1677, 1
  store i8 %1678, i8* %13, align 1
  %1679 = xor i32 %1670, %1667
  %1680 = xor i32 %1679, %1671
  %1681 = lshr i32 %1680, 4
  %1682 = trunc i32 %1681 to i8
  %1683 = and i8 %1682, 1
  store i8 %1683, i8* %14, align 1
  %1684 = icmp eq i32 %1671, 0
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %15, align 1
  %1686 = lshr i32 %1671, 31
  %1687 = trunc i32 %1686 to i8
  store i8 %1687, i8* %16, align 1
  %1688 = lshr i32 %1667, 31
  %1689 = lshr i32 %1670, 31
  %1690 = xor i32 %1689, %1688
  %1691 = xor i32 %1686, %1688
  %1692 = add nuw nsw i32 %1691, %1690
  %1693 = icmp eq i32 %1692, 2
  %1694 = zext i1 %1693 to i8
  store i8 %1694, i8* %17, align 1
  %1695 = icmp ne i8 %1687, 0
  %1696 = xor i1 %1695, %1693
  %.v27 = select i1 %1696, i64 20, i64 134
  %1697 = add i64 %1668, %.v27
  store i64 %1697, i64* %3, align 8
  br i1 %1696, label %block_400ef4, label %block_.L_400f66

block_400ef4:                                     ; preds = %block_.L_400ee0
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %1698 = load i64, i64* %RBP.i, align 8
  %1699 = add i64 %1698, -20
  store i64 %1699, i64* %33, align 8
  %1700 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1701 = zext i32 %1700 to i64
  store i64 %1701, i64* %RSI.i265, align 8
  %1702 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1703 = zext i32 %1702 to i64
  store i64 %1703, i64* %RDX.i386, align 8
  %1704 = add i64 %1697, 2236
  %1705 = add i64 %1697, 43
  %1706 = load i64, i64* %6, align 8
  %1707 = add i64 %1706, -8
  %1708 = inttoptr i64 %1707 to i64*
  store i64 %1705, i64* %1708, align 8
  store i64 %1707, i64* %6, align 8
  store i64 %1704, i64* %3, align 8
  %call2_400f1a = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %1704, %struct.Memory* %MEMORY.10)
  %1709 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %33, align 8
  %1710 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1711 = zext i32 %1710 to i64
  store i64 %1711, i64* %RSI.i265, align 8
  %1712 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %1713 = zext i32 %1712 to i64
  store i64 %1713, i64* %RDX.i386, align 8
  %1714 = add i64 %1709, 2657
  %1715 = add i64 %1709, 49
  %1716 = load i64, i64* %6, align 8
  %1717 = add i64 %1716, -8
  %1718 = inttoptr i64 %1717 to i64*
  store i64 %1715, i64* %1718, align 8
  store i64 %1717, i64* %6, align 8
  store i64 %1714, i64* %3, align 8
  %call2_400f4b = tail call %struct.Memory* @sub_401980.dgefa(%struct.State* %0, i64 %1714, %struct.Memory* %call2_400f1a)
  %1719 = load i64, i64* %3, align 8
  %1720 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %1721 = add i32 %1720, 1
  %1722 = zext i32 %1721 to i64
  store i64 %1722, i64* %RAX.i291, align 8
  %1723 = icmp eq i32 %1720, -1
  %1724 = icmp eq i32 %1721, 0
  %1725 = or i1 %1723, %1724
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %12, align 1
  %1727 = and i32 %1721, 255
  %1728 = tail call i32 @llvm.ctpop.i32(i32 %1727)
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  %1731 = xor i8 %1730, 1
  store i8 %1731, i8* %13, align 1
  %1732 = xor i32 %1720, %1721
  %1733 = lshr i32 %1732, 4
  %1734 = trunc i32 %1733 to i8
  %1735 = and i8 %1734, 1
  store i8 %1735, i8* %14, align 1
  %1736 = zext i1 %1724 to i8
  store i8 %1736, i8* %15, align 1
  %1737 = lshr i32 %1721, 31
  %1738 = trunc i32 %1737 to i8
  store i8 %1738, i8* %16, align 1
  %1739 = lshr i32 %1720, 31
  %1740 = xor i32 %1737, %1739
  %1741 = add nuw nsw i32 %1740, %1737
  %1742 = icmp eq i32 %1741, 2
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %17, align 1
  store i32 %1721, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %1744 = add i64 %1719, -112
  store i64 %1744, i64* %3, align 8
  br label %block_.L_400ee0

block_.L_400f66:                                  ; preds = %block_.L_400ee0
  %1745 = add i64 %1697, -2470
  %1746 = add i64 %1697, 5
  %1747 = load i64, i64* %6, align 8
  %1748 = add i64 %1747, -8
  %1749 = inttoptr i64 %1748 to i64*
  store i64 %1746, i64* %1749, align 8
  store i64 %1748, i64* %6, align 8
  store i64 %1745, i64* %3, align 8
  %call2_400f66 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %1745, %struct.Memory* %MEMORY.10)
  %1750 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x40310d_type* @G__0x40310d to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %569, align 1
  store i32 0, i32* %570, align 1
  store i32 0, i32* %571, align 1
  store i32 0, i32* %572, align 1
  %1751 = load i64, i64* %RBP.i, align 8
  %1752 = add i64 %1751, -80
  %1753 = add i64 %1750, 18
  store i64 %1753, i64* %3, align 8
  %1754 = load <2 x float>, <2 x float>* %59, align 1
  %1755 = inttoptr i64 %1752 to float*
  %1756 = load float, float* %1755, align 4
  %1757 = extractelement <2 x float> %1754, i32 0
  %1758 = fsub float %1757, %1756
  store float %1758, float* %21, align 1
  %1759 = bitcast <2 x float> %1754 to <2 x i32>
  %1760 = extractelement <2 x i32> %1759, i32 1
  store i32 %1760, i32* %247, align 1
  %1761 = add i64 %1751, -84
  %1762 = add i64 %1750, 23
  store i64 %1762, i64* %3, align 8
  %1763 = load <2 x float>, <2 x float>* %59, align 1
  %1764 = extractelement <2 x float> %1763, i32 0
  %1765 = inttoptr i64 %1761 to float*
  store float %1764, float* %1765, align 4
  %1766 = load i64, i64* %3, align 8
  %1767 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1767, i64* %RDI.i642, align 8
  %1768 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1769 = zext i32 %1768 to i64
  store i64 %1769, i64* %RDX.i386, align 8
  %1770 = load <2 x i32>, <2 x i32>* %1326, align 1
  %1771 = load <2 x i32>, <2 x i32>* %1327, align 1
  %1772 = extractelement <2 x i32> %1770, i32 0
  store i32 %1772, i32* %22, align 1
  %1773 = extractelement <2 x i32> %1770, i32 1
  store i32 %1773, i32* %247, align 1
  %1774 = extractelement <2 x i32> %1771, i32 0
  store i32 %1774, i32* %248, align 1
  %1775 = extractelement <2 x i32> %1771, i32 1
  store i32 %1775, i32* %249, align 1
  store i8 1, i8* %AL.i1589, align 1
  %1776 = add i64 %1766, -2754
  %1777 = add i64 %1766, 25
  %1778 = load i64, i64* %6, align 8
  %1779 = add i64 %1778, -8
  %1780 = inttoptr i64 %1779 to i64*
  store i64 %1777, i64* %1780, align 8
  store i64 %1779, i64* %6, align 8
  store i64 %1776, i64* %3, align 8
  %1781 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_400f66)
  %1782 = load i64, i64* %RBP.i, align 8
  %1783 = add i64 %1782, -64
  %1784 = load i64, i64* %3, align 8
  %1785 = add i64 %1784, 4
  store i64 %1785, i64* %3, align 8
  %1786 = inttoptr i64 %1783 to i32*
  %1787 = load i32, i32* %1786, align 4
  store i8 0, i8* %12, align 1
  %1788 = and i32 %1787, 255
  %1789 = tail call i32 @llvm.ctpop.i32(i32 %1788)
  %1790 = trunc i32 %1789 to i8
  %1791 = and i8 %1790, 1
  %1792 = xor i8 %1791, 1
  store i8 %1792, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1793 = icmp eq i32 %1787, 0
  %1794 = zext i1 %1793 to i8
  store i8 %1794, i8* %15, align 1
  %1795 = lshr i32 %1787, 31
  %1796 = trunc i32 %1795 to i8
  store i8 %1796, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1797 = add i64 %1782, -952
  %1798 = load i32, i32* %EAX.i1578, align 4
  %1799 = add i64 %1784, 10
  store i64 %1799, i64* %3, align 8
  %1800 = inttoptr i64 %1797 to i32*
  store i32 %1798, i32* %1800, align 4
  %1801 = load i64, i64* %3, align 8
  %1802 = load i8, i8* %16, align 1
  %1803 = icmp ne i8 %1802, 0
  %1804 = load i8, i8* %17, align 1
  %1805 = icmp ne i8 %1804, 0
  %1806 = xor i1 %1803, %1805
  %.v28 = select i1 %1806, i64 6, i64 23
  %1807 = add i64 %1801, %.v28
  store i64 %1807, i64* %3, align 8
  br i1 %1806, label %block_400fab, label %block_.L_400fbc

block_400fab:                                     ; preds = %block_.L_400f66
  %1808 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1809 = shl i32 %1808, 1
  %1810 = icmp slt i32 %1808, 0
  %1811 = icmp slt i32 %1809, 0
  %1812 = xor i1 %1810, %1811
  %1813 = zext i32 %1809 to i64
  store i64 %1813, i64* %RAX.i291, align 8
  %.lobit29 = lshr i32 %1808, 31
  %1814 = trunc i32 %.lobit29 to i8
  store i8 %1814, i8* %12, align 1
  %1815 = and i32 %1809, 254
  %1816 = tail call i32 @llvm.ctpop.i32(i32 %1815)
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  %1819 = xor i8 %1818, 1
  store i8 %1819, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1820 = icmp eq i32 %1809, 0
  %1821 = zext i1 %1820 to i8
  store i8 %1821, i8* %15, align 1
  %1822 = lshr i32 %1808, 30
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  store i8 %1824, i8* %16, align 1
  %1825 = zext i1 %1812 to i8
  store i8 %1825, i8* %17, align 1
  %1826 = add i64 %1807, 17
  store i64 %1826, i64* %3, align 8
  store i32 %1809, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  br label %block_.L_400fbc

block_.L_400fbc:                                  ; preds = %block_.L_400f66, %block_400fab
  %1827 = phi i64 [ %1826, %block_400fab ], [ %1807, %block_.L_400f66 ]
  %1828 = load i64, i64* %RBP.i, align 8
  %1829 = add i64 %1828, -64
  %1830 = add i64 %1827, 9
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1829 to i32*
  %1832 = load i32, i32* %1831, align 4
  store i8 0, i8* %12, align 1
  %1833 = and i32 %1832, 255
  %1834 = tail call i32 @llvm.ctpop.i32(i32 %1833)
  %1835 = trunc i32 %1834 to i8
  %1836 = and i8 %1835, 1
  %1837 = xor i8 %1836, 1
  store i8 %1837, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1838 = icmp eq i32 %1832, 0
  %1839 = zext i1 %1838 to i8
  store i8 %1839, i8* %15, align 1
  %1840 = lshr i32 %1832, 31
  %1841 = trunc i32 %1840 to i8
  store i8 %1841, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1842 = icmp ne i8 %1841, 0
  %.v30 = select i1 %1842, i64 -250, i64 15
  %1843 = add i64 %1827, %.v30
  store i64 %1843, i64* %3, align 8
  br i1 %1842, label %block_.L_400ec2, label %block_400fcb

block_400fcb:                                     ; preds = %block_.L_400fbc
  store i32 1000, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  store i64 ptrtoint (%G__0x40317d_type* @G__0x40317d to i64), i64* %RSI.i265, align 8
  store i64 0, i64* %RDX.i386, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1844 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1844, i64* %RDI.i642, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1845 = add i64 %1843, -2827
  %1846 = add i64 %1843, 63
  %1847 = load i64, i64* %6, align 8
  %1848 = add i64 %1847, -8
  %1849 = inttoptr i64 %1848 to i64*
  store i64 %1846, i64* %1849, align 8
  store i64 %1848, i64* %6, align 8
  store i64 %1845, i64* %3, align 8
  %1850 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1781)
  %1851 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x403191_type* @G__0x403191 to i64), i64* %RSI.i265, align 8
  %1852 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1852, i64* %RDI.i642, align 8
  %1853 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %1854 = zext i32 %1853 to i64
  store i64 %1854, i64* %RDX.i386, align 8
  %1855 = load i64, i64* %RBP.i, align 8
  %1856 = add i64 %1855, -956
  %1857 = load i32, i32* %EAX.i1578, align 4
  %1858 = add i64 %1851, 31
  store i64 %1858, i64* %3, align 8
  %1859 = inttoptr i64 %1856 to i32*
  store i32 %1857, i32* %1859, align 4
  %1860 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1861 = add i64 %1860, -2921
  %1862 = add i64 %1860, 7
  %1863 = load i64, i64* %6, align 8
  %1864 = add i64 %1863, -8
  %1865 = inttoptr i64 %1864 to i64*
  store i64 %1862, i64* %1865, align 8
  store i64 %1864, i64* %6, align 8
  store i64 %1861, i64* %3, align 8
  %1866 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1850)
  %1867 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4030aa_type* @G__0x4030aa to i64), i64* %RSI.i265, align 8
  %1868 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1868, i64* %RDI.i642, align 8
  %1869 = load i64, i64* %RBP.i, align 8
  %1870 = add i64 %1869, -960
  %1871 = load i32, i32* %EAX.i1578, align 4
  %1872 = add i64 %1867, 24
  store i64 %1872, i64* %3, align 8
  %1873 = inttoptr i64 %1870 to i32*
  store i32 %1871, i32* %1873, align 4
  %1874 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1875 = add i64 %1874, -2952
  %1876 = add i64 %1874, 7
  %1877 = load i64, i64* %6, align 8
  %1878 = add i64 %1877, -8
  %1879 = inttoptr i64 %1878 to i64*
  store i64 %1876, i64* %1879, align 8
  store i64 %1878, i64* %6, align 8
  store i64 %1875, i64* %3, align 8
  %1880 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1866)
  %1881 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4030e2_type* @G__0x4030e2 to i64), i64* %RSI.i265, align 8
  %1882 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %1882, i64* %RDI.i642, align 8
  %1883 = load i64, i64* %RBP.i, align 8
  %1884 = add i64 %1883, -964
  %1885 = load i32, i32* %EAX.i1578, align 4
  %1886 = add i64 %1881, 24
  store i64 %1886, i64* %3, align 8
  %1887 = inttoptr i64 %1884 to i32*
  store i32 %1885, i32* %1887, align 4
  %1888 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %1889 = add i64 %1888, -2983
  %1890 = add i64 %1888, 7
  %1891 = load i64, i64* %6, align 8
  %1892 = add i64 %1891, -8
  %1893 = inttoptr i64 %1892 to i64*
  store i64 %1890, i64* %1893, align 8
  store i64 %1892, i64* %6, align 8
  store i64 %1889, i64* %3, align 8
  %1894 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1880)
  %1895 = load i64, i64* %3, align 8
  store i32 0, i32* %22, align 1
  store i32 0, i32* %247, align 1
  store i32 0, i32* %248, align 1
  store i32 0, i32* %249, align 1
  %1896 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1897 = zext i32 %1896 to i64
  store i64 %1897, i64* %RDX.i386, align 8
  %1898 = load <2 x i32>, <2 x i32>* %1326, align 1
  %1899 = load <2 x i32>, <2 x i32>* %1327, align 1
  %1900 = sitofp i32 %1896 to float
  store float %1900, float* %554, align 1
  %1901 = extractelement <2 x i32> %1898, i32 1
  store i32 %1901, i32* %570, align 1
  %1902 = extractelement <2 x i32> %1899, i32 0
  store i32 %1902, i32* %571, align 1
  %1903 = extractelement <2 x i32> %1899, i32 1
  store i32 %1903, i32* %572, align 1
  %1904 = load i64, i64* %RBP.i, align 8
  %1905 = add i64 %1904, -72
  %1906 = add i64 %1895, 19
  store i64 %1906, i64* %3, align 8
  %1907 = load <2 x float>, <2 x float>* %560, align 1
  %1908 = load <2 x i32>, <2 x i32>* %1327, align 1
  %1909 = inttoptr i64 %1905 to float*
  %1910 = load float, float* %1909, align 4
  %1911 = extractelement <2 x float> %1907, i32 0
  %1912 = fmul float %1911, %1910
  store float %1912, float* %554, align 1
  %1913 = bitcast <2 x float> %1907 to <2 x i32>
  %1914 = extractelement <2 x i32> %1913, i32 1
  store i32 %1914, i32* %570, align 1
  %1915 = extractelement <2 x i32> %1908, i32 0
  store i32 %1915, i32* %571, align 1
  %1916 = extractelement <2 x i32> %1908, i32 1
  store i32 %1916, i32* %572, align 1
  %1917 = add i64 %1904, -44
  %1918 = add i64 %1895, 24
  store i64 %1918, i64* %3, align 8
  %1919 = load <2 x float>, <2 x float>* %560, align 1
  %1920 = extractelement <2 x float> %1919, i32 0
  %1921 = inttoptr i64 %1917 to float*
  store float %1920, float* %1921, align 4
  %1922 = load i64, i64* %3, align 8
  %1923 = load <2 x float>, <2 x float>* %59, align 1
  %1924 = extractelement <2 x float> %1923, i32 0
  store float %1924, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  store i32 1, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %1925 = load i64, i64* %RBP.i, align 8
  %1926 = add i64 %1925, -968
  %1927 = load i32, i32* %EAX.i1578, align 4
  %1928 = add i64 %1922, 26
  store i64 %1928, i64* %3, align 8
  %1929 = inttoptr i64 %1926 to i32*
  store i32 %1927, i32* %1929, align 4
  %1930 = bitcast i64* %564 to double*
  %1931 = bitcast %union.VectorReg* %212 to <2 x i32>*
  %1932 = bitcast i64* %220 to <2 x i32>*
  %.pre13 = load i64, i64* %3, align 8
  %.pre14 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  br label %block_.L_4010a0

block_.L_4010a0:                                  ; preds = %block_.L_4011eb, %block_400fcb
  %1933 = phi i32 [ %.pre14, %block_400fcb ], [ %2383, %block_.L_4011eb ]
  %1934 = phi i64 [ %.pre13, %block_400fcb ], [ %2406, %block_.L_4011eb ]
  %MEMORY.13 = phi %struct.Memory* [ %1894, %block_400fcb ], [ %call2_401304, %block_.L_4011eb ]
  %1935 = add i32 %1933, -6
  %1936 = icmp ult i32 %1933, 6
  %1937 = zext i1 %1936 to i8
  store i8 %1937, i8* %12, align 1
  %1938 = and i32 %1935, 255
  %1939 = tail call i32 @llvm.ctpop.i32(i32 %1938)
  %1940 = trunc i32 %1939 to i8
  %1941 = and i8 %1940, 1
  %1942 = xor i8 %1941, 1
  store i8 %1942, i8* %13, align 1
  %1943 = xor i32 %1933, %1935
  %1944 = lshr i32 %1943, 4
  %1945 = trunc i32 %1944 to i8
  %1946 = and i8 %1945, 1
  store i8 %1946, i8* %14, align 1
  %1947 = icmp eq i32 %1935, 0
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %15, align 1
  %1949 = lshr i32 %1935, 31
  %1950 = trunc i32 %1949 to i8
  store i8 %1950, i8* %16, align 1
  %1951 = lshr i32 %1933, 31
  %1952 = xor i32 %1949, %1951
  %1953 = add nuw nsw i32 %1952, %1951
  %1954 = icmp eq i32 %1953, 2
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %17, align 1
  %1956 = icmp ne i8 %1950, 0
  %1957 = xor i1 %1956, %1954
  %.v31 = select i1 %1957, i64 14, i64 639
  %1958 = add i64 %1934, %.v31
  store i64 %1958, i64* %3, align 8
  br i1 %1957, label %block_4010ae, label %block_.L_40131f

block_4010ae:                                     ; preds = %block_.L_4010a0
  %1959 = add i64 %1958, -2798
  %1960 = add i64 %1958, 5
  %1961 = load i64, i64* %6, align 8
  %1962 = add i64 %1961, -8
  %1963 = inttoptr i64 %1962 to i64*
  store i64 %1960, i64* %1963, align 8
  store i64 %1962, i64* %6, align 8
  store i64 %1959, i64* %3, align 8
  %call2_4010ae = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %1959, %struct.Memory* %MEMORY.13)
  %1964 = load i64, i64* %RBP.i, align 8
  %1965 = add i64 %1964, -40
  %1966 = load i64, i64* %3, align 8
  %1967 = add i64 %1966, 5
  store i64 %1967, i64* %3, align 8
  %1968 = load <2 x float>, <2 x float>* %59, align 1
  %1969 = extractelement <2 x float> %1968, i32 0
  %1970 = inttoptr i64 %1965 to float*
  store float %1969, float* %1970, align 4
  %1971 = load i64, i64* %3, align 8
  %1972 = add i64 %1971, 11
  store i64 %1972, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4010c3

block_.L_4010c3:                                  ; preds = %block_4010d7, %block_4010ae
  %1973 = phi i32 [ 0, %block_4010ae ], [ %2027, %block_4010d7 ]
  %1974 = phi i64 [ %1972, %block_4010ae ], [ %2050, %block_4010d7 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_4010ae, %block_4010ae ], [ %call2_40112e, %block_4010d7 ]
  %1975 = zext i32 %1973 to i64
  store i64 %1975, i64* %RAX.i291, align 8
  %1976 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %1977 = sub i32 %1973, %1976
  %1978 = icmp ult i32 %1973, %1976
  %1979 = zext i1 %1978 to i8
  store i8 %1979, i8* %12, align 1
  %1980 = and i32 %1977, 255
  %1981 = tail call i32 @llvm.ctpop.i32(i32 %1980)
  %1982 = trunc i32 %1981 to i8
  %1983 = and i8 %1982, 1
  %1984 = xor i8 %1983, 1
  store i8 %1984, i8* %13, align 1
  %1985 = xor i32 %1976, %1973
  %1986 = xor i32 %1985, %1977
  %1987 = lshr i32 %1986, 4
  %1988 = trunc i32 %1987 to i8
  %1989 = and i8 %1988, 1
  store i8 %1989, i8* %14, align 1
  %1990 = icmp eq i32 %1977, 0
  %1991 = zext i1 %1990 to i8
  store i8 %1991, i8* %15, align 1
  %1992 = lshr i32 %1977, 31
  %1993 = trunc i32 %1992 to i8
  store i8 %1993, i8* %16, align 1
  %1994 = lshr i32 %1973, 31
  %1995 = lshr i32 %1976, 31
  %1996 = xor i32 %1995, %1994
  %1997 = xor i32 %1992, %1994
  %1998 = add nuw nsw i32 %1997, %1996
  %1999 = icmp eq i32 %1998, 2
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %17, align 1
  %2001 = icmp ne i8 %1993, 0
  %2002 = xor i1 %2001, %1999
  %.v32 = select i1 %2002, i64 20, i64 134
  %2003 = add i64 %1974, %.v32
  store i64 %2003, i64* %3, align 8
  br i1 %2002, label %block_4010d7, label %block_.L_401149

block_4010d7:                                     ; preds = %block_.L_4010c3
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %2004 = load i64, i64* %RBP.i, align 8
  %2005 = add i64 %2004, -20
  store i64 %2005, i64* %33, align 8
  %2006 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %2007 = zext i32 %2006 to i64
  store i64 %2007, i64* %RSI.i265, align 8
  %2008 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2009 = zext i32 %2008 to i64
  store i64 %2009, i64* %RDX.i386, align 8
  %2010 = add i64 %2003, 1753
  %2011 = add i64 %2003, 43
  %2012 = load i64, i64* %6, align 8
  %2013 = add i64 %2012, -8
  %2014 = inttoptr i64 %2013 to i64*
  store i64 %2011, i64* %2014, align 8
  store i64 %2013, i64* %6, align 8
  store i64 %2010, i64* %3, align 8
  %call2_4010fd = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %2010, %struct.Memory* %MEMORY.14)
  %2015 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %33, align 8
  %2016 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %2017 = zext i32 %2016 to i64
  store i64 %2017, i64* %RSI.i265, align 8
  %2018 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2019 = zext i32 %2018 to i64
  store i64 %2019, i64* %RDX.i386, align 8
  %2020 = add i64 %2015, 2174
  %2021 = add i64 %2015, 49
  %2022 = load i64, i64* %6, align 8
  %2023 = add i64 %2022, -8
  %2024 = inttoptr i64 %2023 to i64*
  store i64 %2021, i64* %2024, align 8
  store i64 %2023, i64* %6, align 8
  store i64 %2020, i64* %3, align 8
  %call2_40112e = tail call %struct.Memory* @sub_401980.dgefa(%struct.State* %0, i64 %2020, %struct.Memory* %call2_4010fd)
  %2025 = load i64, i64* %3, align 8
  %2026 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2027 = add i32 %2026, 1
  %2028 = zext i32 %2027 to i64
  store i64 %2028, i64* %RAX.i291, align 8
  %2029 = icmp eq i32 %2026, -1
  %2030 = icmp eq i32 %2027, 0
  %2031 = or i1 %2029, %2030
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %12, align 1
  %2033 = and i32 %2027, 255
  %2034 = tail call i32 @llvm.ctpop.i32(i32 %2033)
  %2035 = trunc i32 %2034 to i8
  %2036 = and i8 %2035, 1
  %2037 = xor i8 %2036, 1
  store i8 %2037, i8* %13, align 1
  %2038 = xor i32 %2026, %2027
  %2039 = lshr i32 %2038, 4
  %2040 = trunc i32 %2039 to i8
  %2041 = and i8 %2040, 1
  store i8 %2041, i8* %14, align 1
  %2042 = zext i1 %2030 to i8
  store i8 %2042, i8* %15, align 1
  %2043 = lshr i32 %2027, 31
  %2044 = trunc i32 %2043 to i8
  store i8 %2044, i8* %16, align 1
  %2045 = lshr i32 %2026, 31
  %2046 = xor i32 %2043, %2045
  %2047 = add nuw nsw i32 %2046, %2043
  %2048 = icmp eq i32 %2047, 2
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %17, align 1
  store i32 %2027, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2050 = add i64 %2025, -112
  store i64 %2050, i64* %3, align 8
  br label %block_.L_4010c3

block_.L_401149:                                  ; preds = %block_.L_4010c3
  %2051 = add i64 %2003, -2953
  %2052 = add i64 %2003, 5
  %2053 = load i64, i64* %6, align 8
  %2054 = add i64 %2053, -8
  %2055 = inttoptr i64 %2054 to i64*
  store i64 %2052, i64* %2055, align 8
  store i64 %2054, i64* %6, align 8
  store i64 %2051, i64* %3, align 8
  %call2_401149 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2051, %struct.Memory* %MEMORY.14)
  %2056 = load i64, i64* %RBP.i, align 8
  %2057 = add i64 %2056, -40
  %2058 = load i64, i64* %3, align 8
  %2059 = add i64 %2058, 5
  store i64 %2059, i64* %3, align 8
  %2060 = load <2 x float>, <2 x float>* %59, align 1
  %2061 = load <2 x i32>, <2 x i32>* %241, align 1
  %2062 = inttoptr i64 %2057 to float*
  %2063 = load float, float* %2062, align 4
  %2064 = extractelement <2 x float> %2060, i32 0
  %2065 = fsub float %2064, %2063
  store float %2065, float* %21, align 1
  %2066 = bitcast <2 x float> %2060 to <2 x i32>
  %2067 = extractelement <2 x i32> %2066, i32 1
  store i32 %2067, i32* %247, align 1
  %2068 = extractelement <2 x i32> %2061, i32 0
  store i32 %2068, i32* %248, align 1
  %2069 = extractelement <2 x i32> %2061, i32 1
  store i32 %2069, i32* %249, align 1
  %2070 = add i64 %2056, -44
  %2071 = add i64 %2058, 10
  store i64 %2071, i64* %3, align 8
  %2072 = load <2 x float>, <2 x float>* %59, align 1
  %2073 = load <2 x i32>, <2 x i32>* %241, align 1
  %2074 = inttoptr i64 %2070 to float*
  %2075 = load float, float* %2074, align 4
  %2076 = extractelement <2 x float> %2072, i32 0
  %2077 = fsub float %2076, %2075
  store float %2077, float* %21, align 1
  %2078 = bitcast <2 x float> %2072 to <2 x i32>
  %2079 = extractelement <2 x i32> %2078, i32 1
  store i32 %2079, i32* %247, align 1
  %2080 = extractelement <2 x i32> %2073, i32 0
  store i32 %2080, i32* %248, align 1
  %2081 = extractelement <2 x i32> %2073, i32 1
  store i32 %2081, i32* %249, align 1
  %2082 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2083 = zext i32 %2082 to i64
  store i64 %2083, i64* %RAX.i291, align 8
  %2084 = load <2 x i32>, <2 x i32>* %1326, align 1
  %2085 = load <2 x i32>, <2 x i32>* %1327, align 1
  %2086 = sitofp i32 %2082 to float
  store float %2086, float* %554, align 1
  %2087 = extractelement <2 x i32> %2084, i32 1
  store i32 %2087, i32* %570, align 1
  %2088 = extractelement <2 x i32> %2085, i32 0
  store i32 %2088, i32* %571, align 1
  %2089 = extractelement <2 x i32> %2085, i32 1
  store i32 %2089, i32* %572, align 1
  %2090 = load <2 x float>, <2 x float>* %59, align 1
  %2091 = load <2 x i32>, <2 x i32>* %241, align 1
  %2092 = load <2 x float>, <2 x float>* %560, align 1
  %2093 = extractelement <2 x float> %2090, i32 0
  %2094 = extractelement <2 x float> %2092, i32 0
  %2095 = fdiv float %2093, %2094
  store float %2095, float* %21, align 1
  %2096 = bitcast <2 x float> %2090 to <2 x i32>
  %2097 = extractelement <2 x i32> %2096, i32 1
  store i32 %2097, i32* %247, align 1
  %2098 = extractelement <2 x i32> %2091, i32 0
  store i32 %2098, i32* %248, align 1
  %2099 = extractelement <2 x i32> %2091, i32 1
  store i32 %2099, i32* %249, align 1
  %2100 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2101 = sext i32 %2100 to i64
  store i64 %2101, i64* %RCX.i373, align 8
  %2102 = shl nsw i64 %2101, 2
  %2103 = add i64 %2102, ptrtoint (%G_0x62bad0___rcx_4__type* @G_0x62bad0___rcx_4_ to i64)
  %2104 = add i64 %2058, 42
  store i64 %2104, i64* %3, align 8
  %2105 = load <2 x float>, <2 x float>* %59, align 1
  %2106 = extractelement <2 x float> %2105, i32 0
  %2107 = inttoptr i64 %2103 to float*
  store float %2106, float* %2107, align 4
  %2108 = load i64, i64* %3, align 8
  %2109 = add i64 %2108, -3000
  %2110 = add i64 %2108, 5
  %2111 = load i64, i64* %6, align 8
  %2112 = add i64 %2111, -8
  %2113 = inttoptr i64 %2112 to i64*
  store i64 %2110, i64* %2113, align 8
  store i64 %2112, i64* %6, align 8
  store i64 %2109, i64* %3, align 8
  %call2_401178 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2109, %struct.Memory* %call2_401149)
  %2114 = load i64, i64* %RBP.i, align 8
  %2115 = add i64 %2114, -40
  %2116 = load i64, i64* %3, align 8
  %2117 = add i64 %2116, 5
  store i64 %2117, i64* %3, align 8
  %2118 = load <2 x float>, <2 x float>* %59, align 1
  %2119 = extractelement <2 x float> %2118, i32 0
  %2120 = inttoptr i64 %2115 to float*
  store float %2119, float* %2120, align 4
  %2121 = load i64, i64* %3, align 8
  %2122 = add i64 %2121, 11
  store i64 %2122, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_40118d

block_.L_40118d:                                  ; preds = %block_4011a1, %block_.L_401149
  %2123 = phi i32 [ 0, %block_.L_401149 ], [ %2165, %block_4011a1 ]
  %2124 = phi i64 [ %2122, %block_.L_401149 ], [ %2188, %block_4011a1 ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_401178, %block_.L_401149 ], [ %call2_4011d0, %block_4011a1 ]
  %2125 = zext i32 %2123 to i64
  store i64 %2125, i64* %RAX.i291, align 8
  %2126 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2127 = sub i32 %2123, %2126
  %2128 = icmp ult i32 %2123, %2126
  %2129 = zext i1 %2128 to i8
  store i8 %2129, i8* %12, align 1
  %2130 = and i32 %2127, 255
  %2131 = tail call i32 @llvm.ctpop.i32(i32 %2130)
  %2132 = trunc i32 %2131 to i8
  %2133 = and i8 %2132, 1
  %2134 = xor i8 %2133, 1
  store i8 %2134, i8* %13, align 1
  %2135 = xor i32 %2126, %2123
  %2136 = xor i32 %2135, %2127
  %2137 = lshr i32 %2136, 4
  %2138 = trunc i32 %2137 to i8
  %2139 = and i8 %2138, 1
  store i8 %2139, i8* %14, align 1
  %2140 = icmp eq i32 %2127, 0
  %2141 = zext i1 %2140 to i8
  store i8 %2141, i8* %15, align 1
  %2142 = lshr i32 %2127, 31
  %2143 = trunc i32 %2142 to i8
  store i8 %2143, i8* %16, align 1
  %2144 = lshr i32 %2123, 31
  %2145 = lshr i32 %2126, 31
  %2146 = xor i32 %2145, %2144
  %2147 = xor i32 %2142, %2144
  %2148 = add nuw nsw i32 %2147, %2146
  %2149 = icmp eq i32 %2148, 2
  %2150 = zext i1 %2149 to i8
  store i8 %2150, i8* %17, align 1
  %2151 = icmp ne i8 %2143, 0
  %2152 = xor i1 %2151, %2149
  %.v33 = select i1 %2152, i64 20, i64 94
  %2153 = add i64 %2124, %.v33
  store i64 %2153, i64* %3, align 8
  br i1 %2152, label %block_4011a1, label %block_.L_4011eb

block_4011a1:                                     ; preds = %block_.L_40118d
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %33, align 8
  store i64 0, i64* %R9.i, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %2154 = load i32, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  %2155 = zext i32 %2154 to i64
  store i64 %2155, i64* %RSI.i265, align 8
  %2156 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2157 = zext i32 %2156 to i64
  store i64 %2157, i64* %RDX.i386, align 8
  %2158 = add i64 %2153, 2799
  %2159 = add i64 %2153, 52
  %2160 = load i64, i64* %6, align 8
  %2161 = add i64 %2160, -8
  %2162 = inttoptr i64 %2161 to i64*
  store i64 %2159, i64* %2162, align 8
  store i64 %2161, i64* %6, align 8
  store i64 %2158, i64* %3, align 8
  %call2_4011d0 = tail call %struct.Memory* @sub_401c90.dgesl(%struct.State* %0, i64 %2158, %struct.Memory* %MEMORY.15)
  %2163 = load i64, i64* %3, align 8
  %2164 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2165 = add i32 %2164, 1
  %2166 = zext i32 %2165 to i64
  store i64 %2166, i64* %RAX.i291, align 8
  %2167 = icmp eq i32 %2164, -1
  %2168 = icmp eq i32 %2165, 0
  %2169 = or i1 %2167, %2168
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %12, align 1
  %2171 = and i32 %2165, 255
  %2172 = tail call i32 @llvm.ctpop.i32(i32 %2171)
  %2173 = trunc i32 %2172 to i8
  %2174 = and i8 %2173, 1
  %2175 = xor i8 %2174, 1
  store i8 %2175, i8* %13, align 1
  %2176 = xor i32 %2164, %2165
  %2177 = lshr i32 %2176, 4
  %2178 = trunc i32 %2177 to i8
  %2179 = and i8 %2178, 1
  store i8 %2179, i8* %14, align 1
  %2180 = zext i1 %2168 to i8
  store i8 %2180, i8* %15, align 1
  %2181 = lshr i32 %2165, 31
  %2182 = trunc i32 %2181 to i8
  store i8 %2182, i8* %16, align 1
  %2183 = lshr i32 %2164, 31
  %2184 = xor i32 %2181, %2183
  %2185 = add nuw nsw i32 %2184, %2181
  %2186 = icmp eq i32 %2185, 2
  %2187 = zext i1 %2186 to i8
  store i8 %2187, i8* %17, align 1
  store i32 %2165, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2188 = add i64 %2163, -72
  store i64 %2188, i64* %3, align 8
  br label %block_.L_40118d

block_.L_4011eb:                                  ; preds = %block_.L_40118d
  %2189 = add i64 %2153, -3115
  %2190 = add i64 %2153, 5
  %2191 = load i64, i64* %6, align 8
  %2192 = add i64 %2191, -8
  %2193 = inttoptr i64 %2192 to i64*
  store i64 %2190, i64* %2193, align 8
  store i64 %2192, i64* %6, align 8
  store i64 %2189, i64* %3, align 8
  %call2_4011eb = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2189, %struct.Memory* %MEMORY.15)
  %2194 = load i64, i64* %3, align 8
  %2195 = load i64, i64* bitcast (%G_0x1ce0__rip__4198904__type* @G_0x1ce0__rip__4198904_ to i64*), align 8
  store i64 %2195, i64* %197, align 1
  store double 0.000000e+00, double* %199, align 1
  %2196 = load i64, i64* bitcast (%G_0x1ce8__rip__4198912__type* @G_0x1ce8__rip__4198912_ to i64*), align 8
  store i64 %2196, i64* %568, align 1
  store double 0.000000e+00, double* %1930, align 1
  %2197 = load i64, i64* %RBP.i, align 8
  %2198 = add i64 %2197, -40
  %2199 = add i64 %2194, 21
  store i64 %2199, i64* %3, align 8
  %2200 = load <2 x float>, <2 x float>* %59, align 1
  %2201 = load <2 x i32>, <2 x i32>* %241, align 1
  %2202 = inttoptr i64 %2198 to float*
  %2203 = load float, float* %2202, align 4
  %2204 = extractelement <2 x float> %2200, i32 0
  %2205 = fsub float %2204, %2203
  store float %2205, float* %21, align 1
  %2206 = bitcast <2 x float> %2200 to <2 x i32>
  %2207 = extractelement <2 x i32> %2206, i32 1
  store i32 %2207, i32* %247, align 1
  %2208 = extractelement <2 x i32> %2201, i32 0
  store i32 %2208, i32* %248, align 1
  %2209 = extractelement <2 x i32> %2201, i32 1
  store i32 %2209, i32* %249, align 1
  %2210 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2211 = zext i32 %2210 to i64
  store i64 %2211, i64* %RAX.i291, align 8
  %2212 = load <2 x i32>, <2 x i32>* %1931, align 1
  %2213 = load <2 x i32>, <2 x i32>* %1932, align 1
  %2214 = sitofp i32 %2210 to float
  store float %2214, float* %1093, align 1
  %2215 = extractelement <2 x i32> %2212, i32 1
  store i32 %2215, i32* %219, align 1
  %2216 = extractelement <2 x i32> %2213, i32 0
  store i32 %2216, i32* %221, align 1
  %2217 = extractelement <2 x i32> %2213, i32 1
  store i32 %2217, i32* %223, align 1
  %2218 = load <2 x float>, <2 x float>* %59, align 1
  %2219 = load <2 x i32>, <2 x i32>* %241, align 1
  %2220 = load <2 x float>, <2 x float>* %1097, align 1
  %2221 = extractelement <2 x float> %2218, i32 0
  %2222 = extractelement <2 x float> %2220, i32 0
  %2223 = fdiv float %2221, %2222
  store float %2223, float* %21, align 1
  %2224 = bitcast <2 x float> %2218 to <2 x i32>
  %2225 = extractelement <2 x i32> %2224, i32 1
  store i32 %2225, i32* %247, align 1
  %2226 = extractelement <2 x i32> %2219, i32 0
  store i32 %2226, i32* %248, align 1
  %2227 = extractelement <2 x i32> %2219, i32 1
  store i32 %2227, i32* %249, align 1
  %2228 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2229 = sext i32 %2228 to i64
  %2230 = shl nsw i64 %2229, 2
  %2231 = add i64 %2230, ptrtoint (%G_0x62bb0c___rcx_4__type* @G_0x62bb0c___rcx_4_ to i64)
  %2232 = add i64 %2194, 53
  store i64 %2232, i64* %3, align 8
  %2233 = load <2 x float>, <2 x float>* %59, align 1
  %2234 = extractelement <2 x float> %2233, i32 0
  %2235 = inttoptr i64 %2231 to float*
  store float %2234, float* %2235, align 4
  %2236 = load i64, i64* %3, align 8
  %2237 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2238 = sext i32 %2237 to i64
  store i64 %2238, i64* %RCX.i373, align 8
  %2239 = shl nsw i64 %2238, 2
  %2240 = add i64 %2239, ptrtoint (%G_0x62bad0___rcx_4__type* @G_0x62bad0___rcx_4_ to i64)
  %2241 = add i64 %2236, 17
  store i64 %2241, i64* %3, align 8
  %2242 = inttoptr i64 %2240 to i32*
  %2243 = load i32, i32* %2242, align 4
  store i32 %2243, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  store i64 %2238, i64* %RCX.i373, align 8
  %2244 = add i64 %2239, ptrtoint (%G_0x62bb0c___rcx_4__type* @G_0x62bb0c___rcx_4_ to i64)
  %2245 = add i64 %2236, 34
  store i64 %2245, i64* %3, align 8
  %2246 = load <2 x float>, <2 x float>* %59, align 1
  %2247 = load <2 x i32>, <2 x i32>* %241, align 1
  %2248 = inttoptr i64 %2244 to float*
  %2249 = load float, float* %2248, align 4
  %2250 = extractelement <2 x float> %2246, i32 0
  %2251 = fadd float %2250, %2249
  store float %2251, float* %21, align 1
  %2252 = bitcast <2 x float> %2246 to <2 x i32>
  %2253 = extractelement <2 x i32> %2252, i32 1
  store i32 %2253, i32* %247, align 1
  %2254 = extractelement <2 x i32> %2247, i32 0
  store i32 %2254, i32* %248, align 1
  %2255 = extractelement <2 x i32> %2247, i32 1
  store i32 %2255, i32* %249, align 1
  %2256 = load i64, i64* %RBP.i, align 8
  %2257 = add i64 %2256, -16
  %2258 = add i64 %2236, 39
  store i64 %2258, i64* %3, align 8
  %2259 = load <2 x float>, <2 x float>* %59, align 1
  %2260 = extractelement <2 x float> %2259, i32 0
  %2261 = inttoptr i64 %2257 to float*
  store float %2260, float* %2261, align 4
  %2262 = load i64, i64* %RBP.i, align 8
  %2263 = add i64 %2262, -16
  %2264 = load i64, i64* %3, align 8
  %2265 = add i64 %2264, 5
  store i64 %2265, i64* %3, align 8
  %2266 = inttoptr i64 %2263 to i32*
  %2267 = load i32, i32* %2266, align 4
  store i32 %2267, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2268 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2269 = sext i32 %2268 to i64
  store i64 %2269, i64* %RCX.i373, align 8
  %2270 = shl nsw i64 %2269, 2
  %2271 = add i64 %2270, ptrtoint (%G_0x62bb48___rcx_4__type* @G_0x62bb48___rcx_4_ to i64)
  %2272 = add i64 %2264, 22
  store i64 %2272, i64* %3, align 8
  %2273 = load <2 x float>, <2 x float>* %59, align 1
  %2274 = extractelement <2 x float> %2273, i32 0
  %2275 = inttoptr i64 %2271 to float*
  store float %2274, float* %2275, align 4
  %2276 = load i64, i64* %RBP.i, align 8
  %2277 = add i64 %2276, -12
  %2278 = load i64, i64* %3, align 8
  %2279 = add i64 %2278, 5
  store i64 %2279, i64* %3, align 8
  %2280 = inttoptr i64 %2277 to i32*
  %2281 = load i32, i32* %2280, align 4
  store i32 %2281, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2282 = load <2 x float>, <2 x float>* %59, align 1
  %2283 = extractelement <2 x float> %2282, i32 0
  %2284 = fpext float %2283 to double
  store double %2284, double* %191, align 1
  %2285 = add i64 %2276, -16
  %2286 = add i64 %2278, 14
  store i64 %2286, i64* %3, align 8
  %2287 = inttoptr i64 %2285 to i32*
  %2288 = load i32, i32* %2287, align 4
  store i32 %2288, i32* %216, align 1
  store float 0.000000e+00, float* %1094, align 1
  store float 0.000000e+00, float* %1095, align 1
  store float 0.000000e+00, float* %1096, align 1
  %2289 = load <2 x float>, <2 x float>* %1097, align 1
  %2290 = extractelement <2 x float> %2289, i32 0
  %2291 = fpext float %2290 to double
  store double %2291, double* %224, align 1
  %2292 = load double, double* %211, align 1
  %2293 = fmul double %2292, %2291
  store double %2293, double* %211, align 1
  %2294 = load <2 x i32>, <2 x i32>* %241, align 1
  %2295 = fdiv double %2284, %2293
  %2296 = bitcast double %2295 to <2 x i32>
  %2297 = fptrunc double %2295 to float
  store float %2297, float* %21, align 1
  %2298 = extractelement <2 x i32> %2296, i32 1
  store i32 %2298, i32* %247, align 1
  %2299 = extractelement <2 x i32> %2294, i32 0
  store i32 %2299, i32* %248, align 1
  %2300 = extractelement <2 x i32> %2294, i32 1
  store i32 %2300, i32* %249, align 1
  %2301 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2302 = sext i32 %2301 to i64
  %2303 = shl nsw i64 %2302, 2
  %2304 = add i64 %2303, ptrtoint (%G_0x62bb84___rcx_4__type* @G_0x62bb84___rcx_4_ to i64)
  %2305 = add i64 %2278, 47
  store i64 %2305, i64* %3, align 8
  %2306 = load <2 x float>, <2 x float>* %59, align 1
  %2307 = extractelement <2 x float> %2306, i32 0
  %2308 = inttoptr i64 %2304 to float*
  store float %2307, float* %2308, align 4
  %2309 = load i64, i64* %3, align 8
  %2310 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2311 = sext i32 %2310 to i64
  store i64 %2311, i64* %RCX.i373, align 8
  %2312 = shl nsw i64 %2311, 2
  %2313 = add i64 %2312, ptrtoint (%G_0x62bb84___rcx_4__type* @G_0x62bb84___rcx_4_ to i64)
  %2314 = add i64 %2309, 17
  store i64 %2314, i64* %3, align 8
  %2315 = inttoptr i64 %2313 to i32*
  %2316 = load i32, i32* %2315, align 4
  store i32 %2316, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2317 = load <2 x float>, <2 x float>* %59, align 1
  %2318 = extractelement <2 x float> %2317, i32 0
  %2319 = fpext float %2318 to double
  %2320 = load double, double* %196, align 1
  %2321 = fdiv double %2320, %2319
  store double %2321, double* %196, align 1
  %2322 = bitcast double %2319 to <2 x i32>
  %2323 = load <2 x i32>, <2 x i32>* %241, align 1
  %2324 = fptrunc double %2321 to float
  store float %2324, float* %21, align 1
  %2325 = extractelement <2 x i32> %2322, i32 1
  store i32 %2325, i32* %247, align 1
  %2326 = extractelement <2 x i32> %2323, i32 0
  store i32 %2326, i32* %248, align 1
  %2327 = extractelement <2 x i32> %2323, i32 1
  store i32 %2327, i32* %249, align 1
  store i64 %2311, i64* %RCX.i373, align 8
  %2328 = add i64 %2312, ptrtoint (%G_0x62bbc0___rcx_4__type* @G_0x62bbc0___rcx_4_ to i64)
  %2329 = add i64 %2309, 46
  store i64 %2329, i64* %3, align 8
  %2330 = load <2 x float>, <2 x float>* %59, align 1
  %2331 = extractelement <2 x float> %2330, i32 0
  %2332 = inttoptr i64 %2328 to float*
  store float %2331, float* %2332, align 4
  %2333 = load i64, i64* %RBP.i, align 8
  %2334 = add i64 %2333, -16
  %2335 = load i64, i64* %3, align 8
  %2336 = add i64 %2335, 5
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2334 to i32*
  %2338 = load i32, i32* %2337, align 4
  store i32 %2338, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2339 = add i64 %2333, -8
  %2340 = add i64 %2335, 10
  store i64 %2340, i64* %3, align 8
  %2341 = load <2 x float>, <2 x float>* %59, align 1
  %2342 = inttoptr i64 %2339 to float*
  %2343 = load float, float* %2342, align 4
  %2344 = extractelement <2 x float> %2341, i32 0
  %2345 = fdiv float %2344, %2343
  store float %2345, float* %21, align 1
  %2346 = bitcast <2 x float> %2341 to <2 x i32>
  %2347 = extractelement <2 x i32> %2346, i32 1
  store i32 %2347, i32* %247, align 1
  %2348 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2349 = sext i32 %2348 to i64
  %2350 = shl nsw i64 %2349, 2
  %2351 = add i64 %2350, ptrtoint (%G_0x62bbfc___rcx_4__type* @G_0x62bbfc___rcx_4_ to i64)
  %2352 = add i64 %2335, 27
  store i64 %2352, i64* %3, align 8
  %2353 = load <2 x float>, <2 x float>* %59, align 1
  %2354 = extractelement <2 x float> %2353, i32 0
  %2355 = inttoptr i64 %2351 to float*
  store float %2354, float* %2355, align 4
  %2356 = load i64, i64* %3, align 8
  %2357 = load i32, i32* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to i32*), align 8
  store i32 %2357, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2358 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2359 = sext i32 %2358 to i64
  store i64 %2359, i64* %RCX.i373, align 8
  %2360 = shl nsw i64 %2359, 2
  %2361 = add i64 %2360, ptrtoint (%G_0x62bb84___rcx_4__type* @G_0x62bb84___rcx_4_ to i64)
  %2362 = add i64 %2356, 26
  store i64 %2362, i64* %3, align 8
  %2363 = load <2 x float>, <2 x float>* %59, align 1
  %2364 = load <2 x i32>, <2 x i32>* %241, align 1
  %2365 = inttoptr i64 %2361 to float*
  %2366 = load float, float* %2365, align 4
  %2367 = extractelement <2 x float> %2363, i32 0
  %2368 = fadd float %2367, %2366
  store float %2368, float* %21, align 1
  %2369 = bitcast <2 x float> %2363 to <2 x i32>
  %2370 = extractelement <2 x i32> %2369, i32 1
  store i32 %2370, i32* %247, align 1
  %2371 = extractelement <2 x i32> %2364, i32 0
  store i32 %2371, i32* %248, align 1
  %2372 = extractelement <2 x i32> %2364, i32 1
  store i32 %2372, i32* %249, align 1
  %2373 = load <2 x float>, <2 x float>* %59, align 1
  %2374 = extractelement <2 x float> %2373, i32 0
  store float %2374, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  %2375 = zext i32 %2358 to i64
  store i64 %2375, i64* %RDI.i642, align 8
  %2376 = add i64 %2356, 5622
  %2377 = add i64 %2356, 47
  %2378 = load i64, i64* %6, align 8
  %2379 = add i64 %2378, -8
  %2380 = inttoptr i64 %2379 to i64*
  store i64 %2377, i64* %2380, align 8
  store i64 %2379, i64* %6, align 8
  store i64 %2376, i64* %3, align 8
  %call2_401304 = tail call %struct.Memory* @sub_4028d0.print_time(%struct.State* %0, i64 %2376, %struct.Memory* %call2_4011eb)
  %2381 = load i64, i64* %3, align 8
  %2382 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2383 = add i32 %2382, 1
  %2384 = zext i32 %2383 to i64
  store i64 %2384, i64* %RAX.i291, align 8
  %2385 = icmp eq i32 %2382, -1
  %2386 = icmp eq i32 %2383, 0
  %2387 = or i1 %2385, %2386
  %2388 = zext i1 %2387 to i8
  store i8 %2388, i8* %12, align 1
  %2389 = and i32 %2383, 255
  %2390 = tail call i32 @llvm.ctpop.i32(i32 %2389)
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  %2393 = xor i8 %2392, 1
  store i8 %2393, i8* %13, align 1
  %2394 = xor i32 %2382, %2383
  %2395 = lshr i32 %2394, 4
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  store i8 %2397, i8* %14, align 1
  %2398 = zext i1 %2386 to i8
  store i8 %2398, i8* %15, align 1
  %2399 = lshr i32 %2383, 31
  %2400 = trunc i32 %2399 to i8
  store i8 %2400, i8* %16, align 1
  %2401 = lshr i32 %2382, 31
  %2402 = xor i32 %2399, %2401
  %2403 = add nuw nsw i32 %2402, %2399
  %2404 = icmp eq i32 %2403, 2
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %17, align 1
  store i32 %2383, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2406 = add i64 %2381, -617
  store i64 %2406, i64* %3, align 8
  br label %block_.L_4010a0

block_.L_40131f:                                  ; preds = %block_.L_4010a0
  store i64 ptrtoint (%G__0x4031c0_type* @G__0x4031c0 to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %22, align 1
  store i32 0, i32* %247, align 1
  store i32 0, i32* %248, align 1
  store i32 0, i32* %249, align 1
  %2407 = load double, double* bitcast (%G_0x1bbc__rip__4199220__type* @G_0x1bbc__rip__4199220_ to double*), align 8
  %2408 = load i32, i32* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to i32*), align 8
  store i32 %2408, i32* %1085, align 1
  store float 0.000000e+00, float* %563, align 1
  store float 0.000000e+00, float* %565, align 1
  store float 0.000000e+00, float* %567, align 1
  %2409 = load <2 x float>, <2 x float>* %917, align 1
  %2410 = extractelement <2 x float> %2409, i32 0
  %2411 = fpext float %2410 to double
  %2412 = fdiv double %2411, %2407
  store double %2412, double* %211, align 1
  %2413 = bitcast double %2407 to <2 x i32>
  %2414 = fptrunc double %2412 to float
  store float %2414, float* %554, align 1
  %2415 = extractelement <2 x i32> %2413, i32 1
  store i32 %2415, i32* %570, align 1
  store i32 0, i32* %571, align 1
  store i32 0, i32* %572, align 1
  %2416 = load <2 x float>, <2 x float>* %560, align 1
  %2417 = extractelement <2 x float> %2416, i32 0
  store float %2417, float* bitcast (%G_0x62bb9c_type* @G_0x62bb9c to float*), align 8
  %2418 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2418, i64* %RDI.i642, align 8
  store i8 1, i8* %AL.i1589, align 1
  %2419 = add i64 %1958, -3679
  %2420 = add i64 %1958, 66
  %2421 = load i64, i64* %6, align 8
  %2422 = add i64 %2421, -8
  %2423 = inttoptr i64 %2422 to i64*
  store i64 %2420, i64* %2423, align 8
  store i64 %2422, i64* %6, align 8
  store i64 %2419, i64* %3, align 8
  %2424 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.13)
  %2425 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4031e9_type* @G__0x4031e9 to i64), i64* %RSI.i265, align 8
  %2426 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2426, i64* %RDI.i642, align 8
  %2427 = load i64, i64* %RBP.i, align 8
  %2428 = add i64 %2427, -972
  %2429 = load i32, i32* %EAX.i1578, align 4
  %2430 = add i64 %2425, 24
  store i64 %2430, i64* %3, align 8
  %2431 = inttoptr i64 %2428 to i32*
  store i32 %2429, i32* %2431, align 4
  %2432 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %2433 = add i64 %2432, -3769
  %2434 = add i64 %2432, 7
  %2435 = load i64, i64* %6, align 8
  %2436 = add i64 %2435, -8
  %2437 = inttoptr i64 %2436 to i64*
  store i64 %2434, i64* %2437, align 8
  store i64 %2436, i64* %6, align 8
  store i64 %2433, i64* %3, align 8
  %2438 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2424)
  %2439 = load i64, i64* %RBP.i, align 8
  %2440 = add i64 %2439, -976
  %2441 = load i32, i32* %EAX.i1578, align 4
  %2442 = load i64, i64* %3, align 8
  %2443 = add i64 %2442, 6
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2440 to i32*
  store i32 %2441, i32* %2444, align 4
  %2445 = load i64, i64* %3, align 8
  %2446 = add i64 %2445, -3526
  %2447 = add i64 %2445, 5
  %2448 = load i64, i64* %6, align 8
  %2449 = add i64 %2448, -8
  %2450 = inttoptr i64 %2449 to i64*
  store i64 %2447, i64* %2450, align 8
  store i64 %2449, i64* %6, align 8
  store i64 %2446, i64* %3, align 8
  %call2_401386 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2446, %struct.Memory* %2438)
  %2451 = load i64, i64* %RBP.i, align 8
  %2452 = add i64 %2451, -80
  %2453 = load i64, i64* %3, align 8
  %2454 = add i64 %2453, 5
  store i64 %2454, i64* %3, align 8
  %2455 = load <2 x float>, <2 x float>* %59, align 1
  %2456 = extractelement <2 x float> %2455, i32 0
  %2457 = inttoptr i64 %2452 to float*
  store float %2456, float* %2457, align 4
  %2458 = load i64, i64* %3, align 8
  %2459 = add i64 %2458, 11
  store i64 %2459, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_40139b

block_.L_40139b:                                  ; preds = %block_4013ab, %block_.L_40131f
  %2460 = phi i32 [ 0, %block_.L_40131f ], [ %2507, %block_4013ab ]
  %2461 = phi i64 [ %2459, %block_.L_40131f ], [ %2530, %block_4013ab ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_401386, %block_.L_40131f ], [ %call2_4013d1, %block_4013ab ]
  %2462 = zext i32 %2460 to i64
  store i64 %2462, i64* %RAX.i291, align 8
  %2463 = load i64, i64* %RBP.i, align 8
  %2464 = add i64 %2463, -68
  %2465 = add i64 %2461, 10
  store i64 %2465, i64* %3, align 8
  %2466 = inttoptr i64 %2464 to i32*
  %2467 = load i32, i32* %2466, align 4
  %2468 = sub i32 %2460, %2467
  %2469 = icmp ult i32 %2460, %2467
  %2470 = zext i1 %2469 to i8
  store i8 %2470, i8* %12, align 1
  %2471 = and i32 %2468, 255
  %2472 = tail call i32 @llvm.ctpop.i32(i32 %2471)
  %2473 = trunc i32 %2472 to i8
  %2474 = and i8 %2473, 1
  %2475 = xor i8 %2474, 1
  store i8 %2475, i8* %13, align 1
  %2476 = xor i32 %2467, %2460
  %2477 = xor i32 %2476, %2468
  %2478 = lshr i32 %2477, 4
  %2479 = trunc i32 %2478 to i8
  %2480 = and i8 %2479, 1
  store i8 %2480, i8* %14, align 1
  %2481 = icmp eq i32 %2468, 0
  %2482 = zext i1 %2481 to i8
  store i8 %2482, i8* %15, align 1
  %2483 = lshr i32 %2468, 31
  %2484 = trunc i32 %2483 to i8
  store i8 %2484, i8* %16, align 1
  %2485 = lshr i32 %2460, 31
  %2486 = lshr i32 %2467, 31
  %2487 = xor i32 %2486, %2485
  %2488 = xor i32 %2483, %2485
  %2489 = add nuw nsw i32 %2488, %2487
  %2490 = icmp eq i32 %2489, 2
  %2491 = zext i1 %2490 to i8
  store i8 %2491, i8* %17, align 1
  %2492 = icmp ne i8 %2484, 0
  %2493 = xor i1 %2492, %2490
  %.v34 = select i1 %2493, i64 16, i64 81
  %2494 = add i64 %2461, %.v34
  store i64 %2494, i64* %3, align 8
  br i1 %2493, label %block_4013ab, label %block_.L_4013ec

block_4013ab:                                     ; preds = %block_.L_40139b
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %2495 = add i64 %2463, -20
  store i64 %2495, i64* %33, align 8
  %2496 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2497 = zext i32 %2496 to i64
  store i64 %2497, i64* %RSI.i265, align 8
  %2498 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2499 = zext i32 %2498 to i64
  store i64 %2499, i64* %RDX.i386, align 8
  %2500 = add i64 %2494, 1029
  %2501 = add i64 %2494, 43
  %2502 = load i64, i64* %6, align 8
  %2503 = add i64 %2502, -8
  %2504 = inttoptr i64 %2503 to i64*
  store i64 %2501, i64* %2504, align 8
  store i64 %2503, i64* %6, align 8
  store i64 %2500, i64* %3, align 8
  %call2_4013d1 = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %2500, %struct.Memory* %MEMORY.16)
  %2505 = load i64, i64* %3, align 8
  %2506 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2507 = add i32 %2506, 1
  %2508 = zext i32 %2507 to i64
  store i64 %2508, i64* %RAX.i291, align 8
  %2509 = icmp eq i32 %2506, -1
  %2510 = icmp eq i32 %2507, 0
  %2511 = or i1 %2509, %2510
  %2512 = zext i1 %2511 to i8
  store i8 %2512, i8* %12, align 1
  %2513 = and i32 %2507, 255
  %2514 = tail call i32 @llvm.ctpop.i32(i32 %2513)
  %2515 = trunc i32 %2514 to i8
  %2516 = and i8 %2515, 1
  %2517 = xor i8 %2516, 1
  store i8 %2517, i8* %13, align 1
  %2518 = xor i32 %2506, %2507
  %2519 = lshr i32 %2518, 4
  %2520 = trunc i32 %2519 to i8
  %2521 = and i8 %2520, 1
  store i8 %2521, i8* %14, align 1
  %2522 = zext i1 %2510 to i8
  store i8 %2522, i8* %15, align 1
  %2523 = lshr i32 %2507, 31
  %2524 = trunc i32 %2523 to i8
  store i8 %2524, i8* %16, align 1
  %2525 = lshr i32 %2506, 31
  %2526 = xor i32 %2523, %2525
  %2527 = add nuw nsw i32 %2526, %2523
  %2528 = icmp eq i32 %2527, 2
  %2529 = zext i1 %2528 to i8
  store i8 %2529, i8* %17, align 1
  store i32 %2507, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2530 = add i64 %2505, -59
  store i64 %2530, i64* %3, align 8
  br label %block_.L_40139b

block_.L_4013ec:                                  ; preds = %block_.L_40139b
  %2531 = add i64 %2494, -3628
  %2532 = add i64 %2494, 5
  %2533 = load i64, i64* %6, align 8
  %2534 = add i64 %2533, -8
  %2535 = inttoptr i64 %2534 to i64*
  store i64 %2532, i64* %2535, align 8
  store i64 %2534, i64* %6, align 8
  store i64 %2531, i64* %3, align 8
  %call2_4013ec = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2531, %struct.Memory* %MEMORY.16)
  %2536 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x403127_type* @G__0x403127 to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %569, align 1
  store i32 0, i32* %570, align 1
  store i32 0, i32* %571, align 1
  store i32 0, i32* %572, align 1
  %2537 = load i64, i64* %RBP.i, align 8
  %2538 = add i64 %2537, -84
  %2539 = add i64 %2536, 18
  store i64 %2539, i64* %3, align 8
  %2540 = load <2 x float>, <2 x float>* %59, align 1
  %2541 = extractelement <2 x float> %2540, i32 0
  %2542 = inttoptr i64 %2538 to float*
  store float %2541, float* %2542, align 4
  %2543 = load i64, i64* %RBP.i, align 8
  %2544 = add i64 %2543, -84
  %2545 = load i64, i64* %3, align 8
  %2546 = add i64 %2545, 5
  store i64 %2546, i64* %3, align 8
  %2547 = inttoptr i64 %2544 to i32*
  %2548 = load i32, i32* %2547, align 4
  store i32 %2548, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2549 = add i64 %2543, -80
  %2550 = add i64 %2545, 10
  store i64 %2550, i64* %3, align 8
  %2551 = load <2 x float>, <2 x float>* %59, align 1
  %2552 = load <2 x i32>, <2 x i32>* %241, align 1
  %2553 = inttoptr i64 %2549 to float*
  %2554 = load float, float* %2553, align 4
  %2555 = extractelement <2 x float> %2551, i32 0
  %2556 = fsub float %2555, %2554
  store float %2556, float* %21, align 1
  %2557 = bitcast <2 x float> %2551 to <2 x i32>
  %2558 = extractelement <2 x i32> %2557, i32 1
  store i32 %2558, i32* %247, align 1
  %2559 = extractelement <2 x i32> %2552, i32 0
  store i32 %2559, i32* %248, align 1
  %2560 = extractelement <2 x i32> %2552, i32 1
  store i32 %2560, i32* %249, align 1
  %2561 = add i64 %2543, -76
  %2562 = add i64 %2545, 15
  store i64 %2562, i64* %3, align 8
  %2563 = load <2 x float>, <2 x float>* %59, align 1
  %2564 = extractelement <2 x float> %2563, i32 0
  %2565 = inttoptr i64 %2561 to float*
  store float %2564, float* %2565, align 4
  %2566 = load i64, i64* %RBP.i, align 8
  %2567 = add i64 %2566, -76
  %2568 = load i64, i64* %3, align 8
  %2569 = add i64 %2568, 5
  store i64 %2569, i64* %3, align 8
  %2570 = inttoptr i64 %2567 to float*
  %2571 = inttoptr i64 %2567 to i32*
  %2572 = load i32, i32* %2571, align 4
  store i32 %2572, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %2573 = load <2 x float>, <2 x float>* %59, align 1
  %2574 = extractelement <2 x float> %2573, i32 0
  %2575 = fpext float %2574 to double
  store double %2575, double* %191, align 1
  %2576 = add i64 %2566, -68
  %2577 = add i64 %2568, 12
  store i64 %2577, i64* %3, align 8
  %2578 = inttoptr i64 %2576 to i32*
  %2579 = load i32, i32* %2578, align 4
  %2580 = zext i32 %2579 to i64
  store i64 %2580, i64* %RAX.i291, align 8
  %2581 = sitofp i32 %2579 to double
  store double %2581, double* %211, align 1
  %2582 = fdiv double %2575, %2581
  %2583 = bitcast double %2582 to <2 x i32>
  %2584 = fptrunc double %2582 to float
  store float %2584, float* %21, align 1
  %2585 = extractelement <2 x i32> %2583, i32 1
  store i32 %2585, i32* %247, align 1
  %2586 = add i64 %2568, 29
  store i64 %2586, i64* %3, align 8
  %2587 = load <2 x float>, <2 x float>* %59, align 1
  %2588 = extractelement <2 x float> %2587, i32 0
  store float %2588, float* %2570, align 4
  %2589 = load i64, i64* %3, align 8
  %2590 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2590, i64* %RDI.i642, align 8
  %2591 = load <2 x i32>, <2 x i32>* %1326, align 1
  %2592 = load <2 x i32>, <2 x i32>* %1327, align 1
  %2593 = extractelement <2 x i32> %2591, i32 0
  store i32 %2593, i32* %22, align 1
  %2594 = extractelement <2 x i32> %2591, i32 1
  store i32 %2594, i32* %247, align 1
  %2595 = extractelement <2 x i32> %2592, i32 0
  store i32 %2595, i32* %248, align 1
  %2596 = extractelement <2 x i32> %2592, i32 1
  store i32 %2596, i32* %249, align 1
  store i8 1, i8* %AL.i1589, align 1
  %2597 = add i64 %2589, -3951
  %2598 = add i64 %2589, 18
  %2599 = load i64, i64* %6, align 8
  %2600 = add i64 %2599, -8
  %2601 = inttoptr i64 %2600 to i64*
  store i64 %2598, i64* %2601, align 8
  store i64 %2600, i64* %6, align 8
  store i64 %2597, i64* %3, align 8
  %2602 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_4013ec)
  %2603 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x403191_type* @G__0x403191 to i64), i64* %RSI.i265, align 8
  %2604 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2604, i64* %RDI.i642, align 8
  %2605 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2606 = zext i32 %2605 to i64
  store i64 %2606, i64* %RDX.i386, align 8
  %2607 = load i64, i64* %RBP.i, align 8
  %2608 = add i64 %2607, -980
  %2609 = load i32, i32* %EAX.i1578, align 4
  %2610 = add i64 %2603, 31
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2608 to i32*
  store i32 %2609, i32* %2611, align 4
  %2612 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %2613 = add i64 %2612, -4000
  %2614 = add i64 %2612, 7
  %2615 = load i64, i64* %6, align 8
  %2616 = add i64 %2615, -8
  %2617 = inttoptr i64 %2616 to i64*
  store i64 %2614, i64* %2617, align 8
  store i64 %2616, i64* %6, align 8
  store i64 %2613, i64* %3, align 8
  %2618 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2602)
  %2619 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4030aa_type* @G__0x4030aa to i64), i64* %RSI.i265, align 8
  %2620 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2620, i64* %RDI.i642, align 8
  %2621 = load i64, i64* %RBP.i, align 8
  %2622 = add i64 %2621, -984
  %2623 = load i32, i32* %EAX.i1578, align 4
  %2624 = add i64 %2619, 24
  store i64 %2624, i64* %3, align 8
  %2625 = inttoptr i64 %2622 to i32*
  store i32 %2623, i32* %2625, align 4
  %2626 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %2627 = add i64 %2626, -4031
  %2628 = add i64 %2626, 7
  %2629 = load i64, i64* %6, align 8
  %2630 = add i64 %2629, -8
  %2631 = inttoptr i64 %2630 to i64*
  store i64 %2628, i64* %2631, align 8
  store i64 %2630, i64* %6, align 8
  store i64 %2627, i64* %3, align 8
  %2632 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2618)
  %2633 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4030e2_type* @G__0x4030e2 to i64), i64* %RSI.i265, align 8
  %2634 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %2634, i64* %RDI.i642, align 8
  %2635 = load i64, i64* %RBP.i, align 8
  %2636 = add i64 %2635, -988
  %2637 = load i32, i32* %EAX.i1578, align 4
  %2638 = add i64 %2633, 24
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2636 to i32*
  store i32 %2637, i32* %2639, align 4
  %2640 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1589, align 1
  %2641 = add i64 %2640, -4062
  %2642 = add i64 %2640, 7
  %2643 = load i64, i64* %6, align 8
  %2644 = add i64 %2643, -8
  %2645 = inttoptr i64 %2644 to i64*
  store i64 %2642, i64* %2645, align 8
  store i64 %2644, i64* %6, align 8
  store i64 %2641, i64* %3, align 8
  %2646 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2632)
  %2647 = load i64, i64* %3, align 8
  store i32 0, i32* %22, align 1
  store i32 0, i32* %247, align 1
  store i32 0, i32* %248, align 1
  store i32 0, i32* %249, align 1
  %2648 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2649 = zext i32 %2648 to i64
  store i64 %2649, i64* %RDX.i386, align 8
  %2650 = load <2 x i32>, <2 x i32>* %1326, align 1
  %2651 = load <2 x i32>, <2 x i32>* %1327, align 1
  %2652 = sitofp i32 %2648 to float
  store float %2652, float* %554, align 1
  %2653 = extractelement <2 x i32> %2650, i32 1
  store i32 %2653, i32* %570, align 1
  %2654 = extractelement <2 x i32> %2651, i32 0
  store i32 %2654, i32* %571, align 1
  %2655 = extractelement <2 x i32> %2651, i32 1
  store i32 %2655, i32* %572, align 1
  %2656 = load i64, i64* %RBP.i, align 8
  %2657 = add i64 %2656, -76
  %2658 = add i64 %2647, 19
  store i64 %2658, i64* %3, align 8
  %2659 = load <2 x float>, <2 x float>* %560, align 1
  %2660 = load <2 x i32>, <2 x i32>* %1327, align 1
  %2661 = inttoptr i64 %2657 to float*
  %2662 = load float, float* %2661, align 4
  %2663 = extractelement <2 x float> %2659, i32 0
  %2664 = fmul float %2663, %2662
  store float %2664, float* %554, align 1
  %2665 = bitcast <2 x float> %2659 to <2 x i32>
  %2666 = extractelement <2 x i32> %2665, i32 1
  store i32 %2666, i32* %570, align 1
  %2667 = extractelement <2 x i32> %2660, i32 0
  store i32 %2667, i32* %571, align 1
  %2668 = extractelement <2 x i32> %2660, i32 1
  store i32 %2668, i32* %572, align 1
  %2669 = add i64 %2656, -44
  %2670 = add i64 %2647, 24
  store i64 %2670, i64* %3, align 8
  %2671 = load <2 x float>, <2 x float>* %560, align 1
  %2672 = extractelement <2 x float> %2671, i32 0
  %2673 = inttoptr i64 %2669 to float*
  store float %2672, float* %2673, align 4
  %2674 = load i64, i64* %3, align 8
  %2675 = load <2 x float>, <2 x float>* %59, align 1
  %2676 = extractelement <2 x float> %2675, i32 0
  store float %2676, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  store i32 7, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2677 = load i64, i64* %RBP.i, align 8
  %2678 = add i64 %2677, -992
  %2679 = load i32, i32* %EAX.i1578, align 4
  %2680 = add i64 %2674, 26
  store i64 %2680, i64* %3, align 8
  %2681 = inttoptr i64 %2678 to i32*
  store i32 %2679, i32* %2681, align 4
  %.pre15 = load i64, i64* %3, align 8
  %.pre16 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  br label %block_.L_4014d7

block_.L_4014d7:                                  ; preds = %block_.L_401622, %block_.L_4013ec
  %2682 = phi i32 [ %.pre16, %block_.L_4013ec ], [ %3132, %block_.L_401622 ]
  %2683 = phi i64 [ %.pre15, %block_.L_4013ec ], [ %3155, %block_.L_401622 ]
  %MEMORY.17 = phi %struct.Memory* [ %2646, %block_.L_4013ec ], [ %call2_40173b, %block_.L_401622 ]
  %2684 = add i32 %2682, -12
  %2685 = icmp ult i32 %2682, 12
  %2686 = zext i1 %2685 to i8
  store i8 %2686, i8* %12, align 1
  %2687 = and i32 %2684, 255
  %2688 = tail call i32 @llvm.ctpop.i32(i32 %2687)
  %2689 = trunc i32 %2688 to i8
  %2690 = and i8 %2689, 1
  %2691 = xor i8 %2690, 1
  store i8 %2691, i8* %13, align 1
  %2692 = xor i32 %2682, %2684
  %2693 = lshr i32 %2692, 4
  %2694 = trunc i32 %2693 to i8
  %2695 = and i8 %2694, 1
  store i8 %2695, i8* %14, align 1
  %2696 = icmp eq i32 %2684, 0
  %2697 = zext i1 %2696 to i8
  store i8 %2697, i8* %15, align 1
  %2698 = lshr i32 %2684, 31
  %2699 = trunc i32 %2698 to i8
  store i8 %2699, i8* %16, align 1
  %2700 = lshr i32 %2682, 31
  %2701 = xor i32 %2698, %2700
  %2702 = add nuw nsw i32 %2701, %2700
  %2703 = icmp eq i32 %2702, 2
  %2704 = zext i1 %2703 to i8
  store i8 %2704, i8* %17, align 1
  %2705 = icmp ne i8 %2699, 0
  %2706 = xor i1 %2705, %2703
  %.v35 = select i1 %2706, i64 14, i64 639
  %2707 = add i64 %2683, %.v35
  store i64 %2707, i64* %3, align 8
  br i1 %2706, label %block_4014e5, label %block_.L_401756

block_4014e5:                                     ; preds = %block_.L_4014d7
  %2708 = add i64 %2707, -3877
  %2709 = add i64 %2707, 5
  %2710 = load i64, i64* %6, align 8
  %2711 = add i64 %2710, -8
  %2712 = inttoptr i64 %2711 to i64*
  store i64 %2709, i64* %2712, align 8
  store i64 %2711, i64* %6, align 8
  store i64 %2708, i64* %3, align 8
  %call2_4014e5 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2708, %struct.Memory* %MEMORY.17)
  %2713 = load i64, i64* %RBP.i, align 8
  %2714 = add i64 %2713, -40
  %2715 = load i64, i64* %3, align 8
  %2716 = add i64 %2715, 5
  store i64 %2716, i64* %3, align 8
  %2717 = load <2 x float>, <2 x float>* %59, align 1
  %2718 = extractelement <2 x float> %2717, i32 0
  %2719 = inttoptr i64 %2714 to float*
  store float %2718, float* %2719, align 4
  %2720 = load i64, i64* %3, align 8
  %2721 = add i64 %2720, 11
  store i64 %2721, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4014fa

block_.L_4014fa:                                  ; preds = %block_40150e, %block_4014e5
  %2722 = phi i32 [ 0, %block_4014e5 ], [ %2776, %block_40150e ]
  %2723 = phi i64 [ %2721, %block_4014e5 ], [ %2799, %block_40150e ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_4014e5, %block_4014e5 ], [ %call2_401565, %block_40150e ]
  %2724 = zext i32 %2722 to i64
  store i64 %2724, i64* %RAX.i291, align 8
  %2725 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2726 = sub i32 %2722, %2725
  %2727 = icmp ult i32 %2722, %2725
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %12, align 1
  %2729 = and i32 %2726, 255
  %2730 = tail call i32 @llvm.ctpop.i32(i32 %2729)
  %2731 = trunc i32 %2730 to i8
  %2732 = and i8 %2731, 1
  %2733 = xor i8 %2732, 1
  store i8 %2733, i8* %13, align 1
  %2734 = xor i32 %2725, %2722
  %2735 = xor i32 %2734, %2726
  %2736 = lshr i32 %2735, 4
  %2737 = trunc i32 %2736 to i8
  %2738 = and i8 %2737, 1
  store i8 %2738, i8* %14, align 1
  %2739 = icmp eq i32 %2726, 0
  %2740 = zext i1 %2739 to i8
  store i8 %2740, i8* %15, align 1
  %2741 = lshr i32 %2726, 31
  %2742 = trunc i32 %2741 to i8
  store i8 %2742, i8* %16, align 1
  %2743 = lshr i32 %2722, 31
  %2744 = lshr i32 %2725, 31
  %2745 = xor i32 %2744, %2743
  %2746 = xor i32 %2741, %2743
  %2747 = add nuw nsw i32 %2746, %2745
  %2748 = icmp eq i32 %2747, 2
  %2749 = zext i1 %2748 to i8
  store i8 %2749, i8* %17, align 1
  %2750 = icmp ne i8 %2742, 0
  %2751 = xor i1 %2750, %2748
  %.v36 = select i1 %2751, i64 20, i64 134
  %2752 = add i64 %2723, %.v36
  store i64 %2752, i64* %3, align 8
  br i1 %2751, label %block_40150e, label %block_.L_401580

block_40150e:                                     ; preds = %block_.L_4014fa
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX.i373, align 8
  %2753 = load i64, i64* %RBP.i, align 8
  %2754 = add i64 %2753, -20
  store i64 %2754, i64* %33, align 8
  %2755 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2756 = zext i32 %2755 to i64
  store i64 %2756, i64* %RSI.i265, align 8
  %2757 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2758 = zext i32 %2757 to i64
  store i64 %2758, i64* %RDX.i386, align 8
  %2759 = add i64 %2752, 674
  %2760 = add i64 %2752, 43
  %2761 = load i64, i64* %6, align 8
  %2762 = add i64 %2761, -8
  %2763 = inttoptr i64 %2762 to i64*
  store i64 %2760, i64* %2763, align 8
  store i64 %2762, i64* %6, align 8
  store i64 %2759, i64* %3, align 8
  %call2_401534 = tail call %struct.Memory* @sub_4017b0.matgen(%struct.State* %0, i64 %2759, %struct.Memory* %MEMORY.18)
  %2764 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %33, align 8
  %2765 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2766 = zext i32 %2765 to i64
  store i64 %2766, i64* %RSI.i265, align 8
  %2767 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2768 = zext i32 %2767 to i64
  store i64 %2768, i64* %RDX.i386, align 8
  %2769 = add i64 %2764, 1095
  %2770 = add i64 %2764, 49
  %2771 = load i64, i64* %6, align 8
  %2772 = add i64 %2771, -8
  %2773 = inttoptr i64 %2772 to i64*
  store i64 %2770, i64* %2773, align 8
  store i64 %2772, i64* %6, align 8
  store i64 %2769, i64* %3, align 8
  %call2_401565 = tail call %struct.Memory* @sub_401980.dgefa(%struct.State* %0, i64 %2769, %struct.Memory* %call2_401534)
  %2774 = load i64, i64* %3, align 8
  %2775 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2776 = add i32 %2775, 1
  %2777 = zext i32 %2776 to i64
  store i64 %2777, i64* %RAX.i291, align 8
  %2778 = icmp eq i32 %2775, -1
  %2779 = icmp eq i32 %2776, 0
  %2780 = or i1 %2778, %2779
  %2781 = zext i1 %2780 to i8
  store i8 %2781, i8* %12, align 1
  %2782 = and i32 %2776, 255
  %2783 = tail call i32 @llvm.ctpop.i32(i32 %2782)
  %2784 = trunc i32 %2783 to i8
  %2785 = and i8 %2784, 1
  %2786 = xor i8 %2785, 1
  store i8 %2786, i8* %13, align 1
  %2787 = xor i32 %2775, %2776
  %2788 = lshr i32 %2787, 4
  %2789 = trunc i32 %2788 to i8
  %2790 = and i8 %2789, 1
  store i8 %2790, i8* %14, align 1
  %2791 = zext i1 %2779 to i8
  store i8 %2791, i8* %15, align 1
  %2792 = lshr i32 %2776, 31
  %2793 = trunc i32 %2792 to i8
  store i8 %2793, i8* %16, align 1
  %2794 = lshr i32 %2775, 31
  %2795 = xor i32 %2792, %2794
  %2796 = add nuw nsw i32 %2795, %2792
  %2797 = icmp eq i32 %2796, 2
  %2798 = zext i1 %2797 to i8
  store i8 %2798, i8* %17, align 1
  store i32 %2776, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2799 = add i64 %2774, -112
  store i64 %2799, i64* %3, align 8
  br label %block_.L_4014fa

block_.L_401580:                                  ; preds = %block_.L_4014fa
  %2800 = add i64 %2752, -4032
  %2801 = add i64 %2752, 5
  %2802 = load i64, i64* %6, align 8
  %2803 = add i64 %2802, -8
  %2804 = inttoptr i64 %2803 to i64*
  store i64 %2801, i64* %2804, align 8
  store i64 %2803, i64* %6, align 8
  store i64 %2800, i64* %3, align 8
  %call2_401580 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2800, %struct.Memory* %MEMORY.18)
  %2805 = load i64, i64* %RBP.i, align 8
  %2806 = add i64 %2805, -40
  %2807 = load i64, i64* %3, align 8
  %2808 = add i64 %2807, 5
  store i64 %2808, i64* %3, align 8
  %2809 = load <2 x float>, <2 x float>* %59, align 1
  %2810 = load <2 x i32>, <2 x i32>* %241, align 1
  %2811 = inttoptr i64 %2806 to float*
  %2812 = load float, float* %2811, align 4
  %2813 = extractelement <2 x float> %2809, i32 0
  %2814 = fsub float %2813, %2812
  store float %2814, float* %21, align 1
  %2815 = bitcast <2 x float> %2809 to <2 x i32>
  %2816 = extractelement <2 x i32> %2815, i32 1
  store i32 %2816, i32* %247, align 1
  %2817 = extractelement <2 x i32> %2810, i32 0
  store i32 %2817, i32* %248, align 1
  %2818 = extractelement <2 x i32> %2810, i32 1
  store i32 %2818, i32* %249, align 1
  %2819 = add i64 %2805, -44
  %2820 = add i64 %2807, 10
  store i64 %2820, i64* %3, align 8
  %2821 = load <2 x float>, <2 x float>* %59, align 1
  %2822 = load <2 x i32>, <2 x i32>* %241, align 1
  %2823 = inttoptr i64 %2819 to float*
  %2824 = load float, float* %2823, align 4
  %2825 = extractelement <2 x float> %2821, i32 0
  %2826 = fsub float %2825, %2824
  store float %2826, float* %21, align 1
  %2827 = bitcast <2 x float> %2821 to <2 x i32>
  %2828 = extractelement <2 x i32> %2827, i32 1
  store i32 %2828, i32* %247, align 1
  %2829 = extractelement <2 x i32> %2822, i32 0
  store i32 %2829, i32* %248, align 1
  %2830 = extractelement <2 x i32> %2822, i32 1
  store i32 %2830, i32* %249, align 1
  %2831 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2832 = zext i32 %2831 to i64
  store i64 %2832, i64* %RAX.i291, align 8
  %2833 = load <2 x i32>, <2 x i32>* %1326, align 1
  %2834 = load <2 x i32>, <2 x i32>* %1327, align 1
  %2835 = sitofp i32 %2831 to float
  store float %2835, float* %554, align 1
  %2836 = extractelement <2 x i32> %2833, i32 1
  store i32 %2836, i32* %570, align 1
  %2837 = extractelement <2 x i32> %2834, i32 0
  store i32 %2837, i32* %571, align 1
  %2838 = extractelement <2 x i32> %2834, i32 1
  store i32 %2838, i32* %572, align 1
  %2839 = load <2 x float>, <2 x float>* %59, align 1
  %2840 = load <2 x i32>, <2 x i32>* %241, align 1
  %2841 = load <2 x float>, <2 x float>* %560, align 1
  %2842 = extractelement <2 x float> %2839, i32 0
  %2843 = extractelement <2 x float> %2841, i32 0
  %2844 = fdiv float %2842, %2843
  store float %2844, float* %21, align 1
  %2845 = bitcast <2 x float> %2839 to <2 x i32>
  %2846 = extractelement <2 x i32> %2845, i32 1
  store i32 %2846, i32* %247, align 1
  %2847 = extractelement <2 x i32> %2840, i32 0
  store i32 %2847, i32* %248, align 1
  %2848 = extractelement <2 x i32> %2840, i32 1
  store i32 %2848, i32* %249, align 1
  %2849 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2850 = sext i32 %2849 to i64
  store i64 %2850, i64* %RCX.i373, align 8
  %2851 = shl nsw i64 %2850, 2
  %2852 = add i64 %2851, ptrtoint (%G_0x62bad0___rcx_4__type* @G_0x62bad0___rcx_4_ to i64)
  %2853 = add i64 %2807, 42
  store i64 %2853, i64* %3, align 8
  %2854 = load <2 x float>, <2 x float>* %59, align 1
  %2855 = extractelement <2 x float> %2854, i32 0
  %2856 = inttoptr i64 %2852 to float*
  store float %2855, float* %2856, align 4
  %2857 = load i64, i64* %3, align 8
  %2858 = add i64 %2857, -4079
  %2859 = add i64 %2857, 5
  %2860 = load i64, i64* %6, align 8
  %2861 = add i64 %2860, -8
  %2862 = inttoptr i64 %2861 to i64*
  store i64 %2859, i64* %2862, align 8
  store i64 %2861, i64* %6, align 8
  store i64 %2858, i64* %3, align 8
  %call2_4015af = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2858, %struct.Memory* %call2_401580)
  %2863 = load i64, i64* %RBP.i, align 8
  %2864 = add i64 %2863, -40
  %2865 = load i64, i64* %3, align 8
  %2866 = add i64 %2865, 5
  store i64 %2866, i64* %3, align 8
  %2867 = load <2 x float>, <2 x float>* %59, align 1
  %2868 = extractelement <2 x float> %2867, i32 0
  %2869 = inttoptr i64 %2864 to float*
  store float %2868, float* %2869, align 4
  %2870 = load i64, i64* %3, align 8
  %2871 = add i64 %2870, 11
  store i64 %2871, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  br label %block_.L_4015c4

block_.L_4015c4:                                  ; preds = %block_4015d8, %block_.L_401580
  %2872 = phi i32 [ 0, %block_.L_401580 ], [ %2914, %block_4015d8 ]
  %2873 = phi i64 [ %2871, %block_.L_401580 ], [ %2937, %block_4015d8 ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_4015af, %block_.L_401580 ], [ %call2_401607, %block_4015d8 ]
  %2874 = zext i32 %2872 to i64
  store i64 %2874, i64* %RAX.i291, align 8
  %2875 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2876 = sub i32 %2872, %2875
  %2877 = icmp ult i32 %2872, %2875
  %2878 = zext i1 %2877 to i8
  store i8 %2878, i8* %12, align 1
  %2879 = and i32 %2876, 255
  %2880 = tail call i32 @llvm.ctpop.i32(i32 %2879)
  %2881 = trunc i32 %2880 to i8
  %2882 = and i8 %2881, 1
  %2883 = xor i8 %2882, 1
  store i8 %2883, i8* %13, align 1
  %2884 = xor i32 %2875, %2872
  %2885 = xor i32 %2884, %2876
  %2886 = lshr i32 %2885, 4
  %2887 = trunc i32 %2886 to i8
  %2888 = and i8 %2887, 1
  store i8 %2888, i8* %14, align 1
  %2889 = icmp eq i32 %2876, 0
  %2890 = zext i1 %2889 to i8
  store i8 %2890, i8* %15, align 1
  %2891 = lshr i32 %2876, 31
  %2892 = trunc i32 %2891 to i8
  store i8 %2892, i8* %16, align 1
  %2893 = lshr i32 %2872, 31
  %2894 = lshr i32 %2875, 31
  %2895 = xor i32 %2894, %2893
  %2896 = xor i32 %2891, %2893
  %2897 = add nuw nsw i32 %2896, %2895
  %2898 = icmp eq i32 %2897, 2
  %2899 = zext i1 %2898 to i8
  store i8 %2899, i8* %17, align 1
  %2900 = icmp ne i8 %2892, 0
  %2901 = xor i1 %2900, %2898
  %.v37 = select i1 %2901, i64 20, i64 94
  %2902 = add i64 %2873, %.v37
  store i64 %2902, i64* %3, align 8
  br i1 %2901, label %block_4015d8, label %block_.L_401622

block_4015d8:                                     ; preds = %block_.L_4015c4
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI.i642, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX.i373, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %33, align 8
  store i64 0, i64* %R9.i, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %2903 = load i32, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  %2904 = zext i32 %2903 to i64
  store i64 %2904, i64* %RSI.i265, align 8
  %2905 = load i32, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  %2906 = zext i32 %2905 to i64
  store i64 %2906, i64* %RDX.i386, align 8
  %2907 = add i64 %2902, 1720
  %2908 = add i64 %2902, 52
  %2909 = load i64, i64* %6, align 8
  %2910 = add i64 %2909, -8
  %2911 = inttoptr i64 %2910 to i64*
  store i64 %2908, i64* %2911, align 8
  store i64 %2910, i64* %6, align 8
  store i64 %2907, i64* %3, align 8
  %call2_401607 = tail call %struct.Memory* @sub_401c90.dgesl(%struct.State* %0, i64 %2907, %struct.Memory* %MEMORY.19)
  %2912 = load i64, i64* %3, align 8
  %2913 = load i32, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2914 = add i32 %2913, 1
  %2915 = zext i32 %2914 to i64
  store i64 %2915, i64* %RAX.i291, align 8
  %2916 = icmp eq i32 %2913, -1
  %2917 = icmp eq i32 %2914, 0
  %2918 = or i1 %2916, %2917
  %2919 = zext i1 %2918 to i8
  store i8 %2919, i8* %12, align 1
  %2920 = and i32 %2914, 255
  %2921 = tail call i32 @llvm.ctpop.i32(i32 %2920)
  %2922 = trunc i32 %2921 to i8
  %2923 = and i8 %2922, 1
  %2924 = xor i8 %2923, 1
  store i8 %2924, i8* %13, align 1
  %2925 = xor i32 %2913, %2914
  %2926 = lshr i32 %2925, 4
  %2927 = trunc i32 %2926 to i8
  %2928 = and i8 %2927, 1
  store i8 %2928, i8* %14, align 1
  %2929 = zext i1 %2917 to i8
  store i8 %2929, i8* %15, align 1
  %2930 = lshr i32 %2914, 31
  %2931 = trunc i32 %2930 to i8
  store i8 %2931, i8* %16, align 1
  %2932 = lshr i32 %2913, 31
  %2933 = xor i32 %2930, %2932
  %2934 = add nuw nsw i32 %2933, %2930
  %2935 = icmp eq i32 %2934, 2
  %2936 = zext i1 %2935 to i8
  store i8 %2936, i8* %17, align 1
  store i32 %2914, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  %2937 = add i64 %2912, -72
  store i64 %2937, i64* %3, align 8
  br label %block_.L_4015c4

block_.L_401622:                                  ; preds = %block_.L_4015c4
  %2938 = add i64 %2902, -4194
  %2939 = add i64 %2902, 5
  %2940 = load i64, i64* %6, align 8
  %2941 = add i64 %2940, -8
  %2942 = inttoptr i64 %2941 to i64*
  store i64 %2939, i64* %2942, align 8
  store i64 %2941, i64* %6, align 8
  store i64 %2938, i64* %3, align 8
  %call2_401622 = tail call %struct.Memory* @sub_4005c0.second(%struct.State* %0, i64 %2938, %struct.Memory* %MEMORY.19)
  %2943 = load i64, i64* %3, align 8
  %2944 = load i64, i64* bitcast (%G_0x18a9__rip__4199983__type* @G_0x18a9__rip__4199983_ to i64*), align 8
  store i64 %2944, i64* %197, align 1
  store double 0.000000e+00, double* %199, align 1
  %2945 = load i64, i64* bitcast (%G_0x18b1__rip__4199991__type* @G_0x18b1__rip__4199991_ to i64*), align 8
  store i64 %2945, i64* %568, align 1
  store double 0.000000e+00, double* %1930, align 1
  %2946 = load i64, i64* %RBP.i, align 8
  %2947 = add i64 %2946, -40
  %2948 = add i64 %2943, 21
  store i64 %2948, i64* %3, align 8
  %2949 = load <2 x float>, <2 x float>* %59, align 1
  %2950 = load <2 x i32>, <2 x i32>* %241, align 1
  %2951 = inttoptr i64 %2947 to float*
  %2952 = load float, float* %2951, align 4
  %2953 = extractelement <2 x float> %2949, i32 0
  %2954 = fsub float %2953, %2952
  store float %2954, float* %21, align 1
  %2955 = bitcast <2 x float> %2949 to <2 x i32>
  %2956 = extractelement <2 x i32> %2955, i32 1
  store i32 %2956, i32* %247, align 1
  %2957 = extractelement <2 x i32> %2950, i32 0
  store i32 %2957, i32* %248, align 1
  %2958 = extractelement <2 x i32> %2950, i32 1
  store i32 %2958, i32* %249, align 1
  %2959 = load i32, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  %2960 = zext i32 %2959 to i64
  store i64 %2960, i64* %RAX.i291, align 8
  %2961 = load <2 x i32>, <2 x i32>* %1931, align 1
  %2962 = load <2 x i32>, <2 x i32>* %1932, align 1
  %2963 = sitofp i32 %2959 to float
  store float %2963, float* %1093, align 1
  %2964 = extractelement <2 x i32> %2961, i32 1
  store i32 %2964, i32* %219, align 1
  %2965 = extractelement <2 x i32> %2962, i32 0
  store i32 %2965, i32* %221, align 1
  %2966 = extractelement <2 x i32> %2962, i32 1
  store i32 %2966, i32* %223, align 1
  %2967 = load <2 x float>, <2 x float>* %59, align 1
  %2968 = load <2 x i32>, <2 x i32>* %241, align 1
  %2969 = load <2 x float>, <2 x float>* %1097, align 1
  %2970 = extractelement <2 x float> %2967, i32 0
  %2971 = extractelement <2 x float> %2969, i32 0
  %2972 = fdiv float %2970, %2971
  store float %2972, float* %21, align 1
  %2973 = bitcast <2 x float> %2967 to <2 x i32>
  %2974 = extractelement <2 x i32> %2973, i32 1
  store i32 %2974, i32* %247, align 1
  %2975 = extractelement <2 x i32> %2968, i32 0
  store i32 %2975, i32* %248, align 1
  %2976 = extractelement <2 x i32> %2968, i32 1
  store i32 %2976, i32* %249, align 1
  %2977 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2978 = sext i32 %2977 to i64
  %2979 = shl nsw i64 %2978, 2
  %2980 = add i64 %2979, ptrtoint (%G_0x62bb0c___rcx_4__type* @G_0x62bb0c___rcx_4_ to i64)
  %2981 = add i64 %2943, 53
  store i64 %2981, i64* %3, align 8
  %2982 = load <2 x float>, <2 x float>* %59, align 1
  %2983 = extractelement <2 x float> %2982, i32 0
  %2984 = inttoptr i64 %2980 to float*
  store float %2983, float* %2984, align 4
  %2985 = load i64, i64* %3, align 8
  %2986 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %2987 = sext i32 %2986 to i64
  store i64 %2987, i64* %RCX.i373, align 8
  %2988 = shl nsw i64 %2987, 2
  %2989 = add i64 %2988, ptrtoint (%G_0x62bad0___rcx_4__type* @G_0x62bad0___rcx_4_ to i64)
  %2990 = add i64 %2985, 17
  store i64 %2990, i64* %3, align 8
  %2991 = inttoptr i64 %2989 to i32*
  %2992 = load i32, i32* %2991, align 4
  store i32 %2992, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  store i64 %2987, i64* %RCX.i373, align 8
  %2993 = add i64 %2988, ptrtoint (%G_0x62bb0c___rcx_4__type* @G_0x62bb0c___rcx_4_ to i64)
  %2994 = add i64 %2985, 34
  store i64 %2994, i64* %3, align 8
  %2995 = load <2 x float>, <2 x float>* %59, align 1
  %2996 = load <2 x i32>, <2 x i32>* %241, align 1
  %2997 = inttoptr i64 %2993 to float*
  %2998 = load float, float* %2997, align 4
  %2999 = extractelement <2 x float> %2995, i32 0
  %3000 = fadd float %2999, %2998
  store float %3000, float* %21, align 1
  %3001 = bitcast <2 x float> %2995 to <2 x i32>
  %3002 = extractelement <2 x i32> %3001, i32 1
  store i32 %3002, i32* %247, align 1
  %3003 = extractelement <2 x i32> %2996, i32 0
  store i32 %3003, i32* %248, align 1
  %3004 = extractelement <2 x i32> %2996, i32 1
  store i32 %3004, i32* %249, align 1
  %3005 = load i64, i64* %RBP.i, align 8
  %3006 = add i64 %3005, -16
  %3007 = add i64 %2985, 39
  store i64 %3007, i64* %3, align 8
  %3008 = load <2 x float>, <2 x float>* %59, align 1
  %3009 = extractelement <2 x float> %3008, i32 0
  %3010 = inttoptr i64 %3006 to float*
  store float %3009, float* %3010, align 4
  %3011 = load i64, i64* %RBP.i, align 8
  %3012 = add i64 %3011, -16
  %3013 = load i64, i64* %3, align 8
  %3014 = add i64 %3013, 5
  store i64 %3014, i64* %3, align 8
  %3015 = inttoptr i64 %3012 to i32*
  %3016 = load i32, i32* %3015, align 4
  store i32 %3016, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %3017 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3018 = sext i32 %3017 to i64
  store i64 %3018, i64* %RCX.i373, align 8
  %3019 = shl nsw i64 %3018, 2
  %3020 = add i64 %3019, ptrtoint (%G_0x62bb48___rcx_4__type* @G_0x62bb48___rcx_4_ to i64)
  %3021 = add i64 %3013, 22
  store i64 %3021, i64* %3, align 8
  %3022 = load <2 x float>, <2 x float>* %59, align 1
  %3023 = extractelement <2 x float> %3022, i32 0
  %3024 = inttoptr i64 %3020 to float*
  store float %3023, float* %3024, align 4
  %3025 = load i64, i64* %RBP.i, align 8
  %3026 = add i64 %3025, -12
  %3027 = load i64, i64* %3, align 8
  %3028 = add i64 %3027, 5
  store i64 %3028, i64* %3, align 8
  %3029 = inttoptr i64 %3026 to i32*
  %3030 = load i32, i32* %3029, align 4
  store i32 %3030, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %3031 = load <2 x float>, <2 x float>* %59, align 1
  %3032 = extractelement <2 x float> %3031, i32 0
  %3033 = fpext float %3032 to double
  store double %3033, double* %191, align 1
  %3034 = add i64 %3025, -16
  %3035 = add i64 %3027, 14
  store i64 %3035, i64* %3, align 8
  %3036 = inttoptr i64 %3034 to i32*
  %3037 = load i32, i32* %3036, align 4
  store i32 %3037, i32* %216, align 1
  store float 0.000000e+00, float* %1094, align 1
  store float 0.000000e+00, float* %1095, align 1
  store float 0.000000e+00, float* %1096, align 1
  %3038 = load <2 x float>, <2 x float>* %1097, align 1
  %3039 = extractelement <2 x float> %3038, i32 0
  %3040 = fpext float %3039 to double
  store double %3040, double* %224, align 1
  %3041 = load double, double* %211, align 1
  %3042 = fmul double %3041, %3040
  store double %3042, double* %211, align 1
  %3043 = load <2 x i32>, <2 x i32>* %241, align 1
  %3044 = fdiv double %3033, %3042
  %3045 = bitcast double %3044 to <2 x i32>
  %3046 = fptrunc double %3044 to float
  store float %3046, float* %21, align 1
  %3047 = extractelement <2 x i32> %3045, i32 1
  store i32 %3047, i32* %247, align 1
  %3048 = extractelement <2 x i32> %3043, i32 0
  store i32 %3048, i32* %248, align 1
  %3049 = extractelement <2 x i32> %3043, i32 1
  store i32 %3049, i32* %249, align 1
  %3050 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3051 = sext i32 %3050 to i64
  %3052 = shl nsw i64 %3051, 2
  %3053 = add i64 %3052, ptrtoint (%G_0x62bb84___rcx_4__type* @G_0x62bb84___rcx_4_ to i64)
  %3054 = add i64 %3027, 47
  store i64 %3054, i64* %3, align 8
  %3055 = load <2 x float>, <2 x float>* %59, align 1
  %3056 = extractelement <2 x float> %3055, i32 0
  %3057 = inttoptr i64 %3053 to float*
  store float %3056, float* %3057, align 4
  %3058 = load i64, i64* %3, align 8
  %3059 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3060 = sext i32 %3059 to i64
  store i64 %3060, i64* %RCX.i373, align 8
  %3061 = shl nsw i64 %3060, 2
  %3062 = add i64 %3061, ptrtoint (%G_0x62bb84___rcx_4__type* @G_0x62bb84___rcx_4_ to i64)
  %3063 = add i64 %3058, 17
  store i64 %3063, i64* %3, align 8
  %3064 = inttoptr i64 %3062 to i32*
  %3065 = load i32, i32* %3064, align 4
  store i32 %3065, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %3066 = load <2 x float>, <2 x float>* %59, align 1
  %3067 = extractelement <2 x float> %3066, i32 0
  %3068 = fpext float %3067 to double
  %3069 = load double, double* %196, align 1
  %3070 = fdiv double %3069, %3068
  store double %3070, double* %196, align 1
  %3071 = bitcast double %3068 to <2 x i32>
  %3072 = load <2 x i32>, <2 x i32>* %241, align 1
  %3073 = fptrunc double %3070 to float
  store float %3073, float* %21, align 1
  %3074 = extractelement <2 x i32> %3071, i32 1
  store i32 %3074, i32* %247, align 1
  %3075 = extractelement <2 x i32> %3072, i32 0
  store i32 %3075, i32* %248, align 1
  %3076 = extractelement <2 x i32> %3072, i32 1
  store i32 %3076, i32* %249, align 1
  store i64 %3060, i64* %RCX.i373, align 8
  %3077 = add i64 %3061, ptrtoint (%G_0x62bbc0___rcx_4__type* @G_0x62bbc0___rcx_4_ to i64)
  %3078 = add i64 %3058, 46
  store i64 %3078, i64* %3, align 8
  %3079 = load <2 x float>, <2 x float>* %59, align 1
  %3080 = extractelement <2 x float> %3079, i32 0
  %3081 = inttoptr i64 %3077 to float*
  store float %3080, float* %3081, align 4
  %3082 = load i64, i64* %RBP.i, align 8
  %3083 = add i64 %3082, -16
  %3084 = load i64, i64* %3, align 8
  %3085 = add i64 %3084, 5
  store i64 %3085, i64* %3, align 8
  %3086 = inttoptr i64 %3083 to i32*
  %3087 = load i32, i32* %3086, align 4
  store i32 %3087, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %3088 = add i64 %3082, -8
  %3089 = add i64 %3084, 10
  store i64 %3089, i64* %3, align 8
  %3090 = load <2 x float>, <2 x float>* %59, align 1
  %3091 = inttoptr i64 %3088 to float*
  %3092 = load float, float* %3091, align 4
  %3093 = extractelement <2 x float> %3090, i32 0
  %3094 = fdiv float %3093, %3092
  store float %3094, float* %21, align 1
  %3095 = bitcast <2 x float> %3090 to <2 x i32>
  %3096 = extractelement <2 x i32> %3095, i32 1
  store i32 %3096, i32* %247, align 1
  %3097 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3098 = sext i32 %3097 to i64
  %3099 = shl nsw i64 %3098, 2
  %3100 = add i64 %3099, ptrtoint (%G_0x62bbfc___rcx_4__type* @G_0x62bbfc___rcx_4_ to i64)
  %3101 = add i64 %3084, 27
  store i64 %3101, i64* %3, align 8
  %3102 = load <2 x float>, <2 x float>* %59, align 1
  %3103 = extractelement <2 x float> %3102, i32 0
  %3104 = inttoptr i64 %3100 to float*
  store float %3103, float* %3104, align 4
  %3105 = load i64, i64* %3, align 8
  %3106 = load i32, i32* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to i32*), align 8
  store i32 %3106, i32* %22, align 1
  store float 0.000000e+00, float* %24, align 1
  store float 0.000000e+00, float* %26, align 1
  store float 0.000000e+00, float* %28, align 1
  %3107 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3108 = sext i32 %3107 to i64
  store i64 %3108, i64* %RCX.i373, align 8
  %3109 = shl nsw i64 %3108, 2
  %3110 = add i64 %3109, ptrtoint (%G_0x62bb84___rcx_4__type* @G_0x62bb84___rcx_4_ to i64)
  %3111 = add i64 %3105, 26
  store i64 %3111, i64* %3, align 8
  %3112 = load <2 x float>, <2 x float>* %59, align 1
  %3113 = load <2 x i32>, <2 x i32>* %241, align 1
  %3114 = inttoptr i64 %3110 to float*
  %3115 = load float, float* %3114, align 4
  %3116 = extractelement <2 x float> %3112, i32 0
  %3117 = fadd float %3116, %3115
  store float %3117, float* %21, align 1
  %3118 = bitcast <2 x float> %3112 to <2 x i32>
  %3119 = extractelement <2 x i32> %3118, i32 1
  store i32 %3119, i32* %247, align 1
  %3120 = extractelement <2 x i32> %3113, i32 0
  store i32 %3120, i32* %248, align 1
  %3121 = extractelement <2 x i32> %3113, i32 1
  store i32 %3121, i32* %249, align 1
  %3122 = load <2 x float>, <2 x float>* %59, align 1
  %3123 = extractelement <2 x float> %3122, i32 0
  store float %3123, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  %3124 = zext i32 %3107 to i64
  store i64 %3124, i64* %RDI.i642, align 8
  %3125 = add i64 %3105, 4543
  %3126 = add i64 %3105, 47
  %3127 = load i64, i64* %6, align 8
  %3128 = add i64 %3127, -8
  %3129 = inttoptr i64 %3128 to i64*
  store i64 %3126, i64* %3129, align 8
  store i64 %3128, i64* %6, align 8
  store i64 %3125, i64* %3, align 8
  %call2_40173b = tail call %struct.Memory* @sub_4028d0.print_time(%struct.State* %0, i64 %3125, %struct.Memory* %call2_401622)
  %3130 = load i64, i64* %3, align 8
  %3131 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3132 = add i32 %3131, 1
  %3133 = zext i32 %3132 to i64
  store i64 %3133, i64* %RAX.i291, align 8
  %3134 = icmp eq i32 %3131, -1
  %3135 = icmp eq i32 %3132, 0
  %3136 = or i1 %3134, %3135
  %3137 = zext i1 %3136 to i8
  store i8 %3137, i8* %12, align 1
  %3138 = and i32 %3132, 255
  %3139 = tail call i32 @llvm.ctpop.i32(i32 %3138)
  %3140 = trunc i32 %3139 to i8
  %3141 = and i8 %3140, 1
  %3142 = xor i8 %3141, 1
  store i8 %3142, i8* %13, align 1
  %3143 = xor i32 %3131, %3132
  %3144 = lshr i32 %3143, 4
  %3145 = trunc i32 %3144 to i8
  %3146 = and i8 %3145, 1
  store i8 %3146, i8* %14, align 1
  %3147 = zext i1 %3135 to i8
  store i8 %3147, i8* %15, align 1
  %3148 = lshr i32 %3132, 31
  %3149 = trunc i32 %3148 to i8
  store i8 %3149, i8* %16, align 1
  %3150 = lshr i32 %3131, 31
  %3151 = xor i32 %3148, %3150
  %3152 = add nuw nsw i32 %3151, %3148
  %3153 = icmp eq i32 %3152, 2
  %3154 = zext i1 %3153 to i8
  store i8 %3154, i8* %17, align 1
  store i32 %3132, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %3155 = add i64 %3130, -617
  store i64 %3155, i64* %3, align 8
  br label %block_.L_4014d7

block_.L_401756:                                  ; preds = %block_.L_4014d7
  store i64 ptrtoint (%G__0x4031c0_type* @G__0x4031c0 to i64), i64* %RSI.i265, align 8
  store i32 0, i32* %22, align 1
  store i32 0, i32* %247, align 1
  store i32 0, i32* %248, align 1
  store i32 0, i32* %249, align 1
  %3156 = load double, double* bitcast (%G_0x1785__rip__4200299__type* @G_0x1785__rip__4200299_ to double*), align 8
  %3157 = load i32, i32* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to i32*), align 8
  store i32 %3157, i32* %1085, align 1
  store float 0.000000e+00, float* %563, align 1
  store float 0.000000e+00, float* %565, align 1
  store float 0.000000e+00, float* %567, align 1
  %3158 = load <2 x float>, <2 x float>* %917, align 1
  %3159 = extractelement <2 x float> %3158, i32 0
  %3160 = fpext float %3159 to double
  %3161 = fdiv double %3160, %3156
  store double %3161, double* %211, align 1
  %3162 = bitcast double %3156 to <2 x i32>
  %3163 = fptrunc double %3161 to float
  store float %3163, float* %554, align 1
  %3164 = extractelement <2 x i32> %3162, i32 1
  store i32 %3164, i32* %570, align 1
  store i32 0, i32* %571, align 1
  store i32 0, i32* %572, align 1
  %3165 = load <2 x float>, <2 x float>* %560, align 1
  %3166 = extractelement <2 x float> %3165, i32 0
  store float %3166, float* bitcast (%G_0x62bbb4_type* @G_0x62bbb4 to float*), align 8
  %3167 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %3167, i64* %RDI.i642, align 8
  store i8 1, i8* %AL.i1589, align 1
  %3168 = add i64 %2707, -4758
  %3169 = add i64 %2707, 66
  %3170 = load i64, i64* %6, align 8
  %3171 = add i64 %3170, -8
  %3172 = inttoptr i64 %3171 to i64*
  store i64 %3169, i64* %3172, align 8
  store i64 %3171, i64* %6, align 8
  store i64 %3168, i64* %3, align 8
  %3173 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.17)
  %3174 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i373, align 8
  %3175 = load i64, i64* %RBP.i, align 8
  %3176 = add i64 %3175, -996
  %3177 = load i32, i32* %EAX.i1578, align 4
  %3178 = add i64 %3174, 8
  store i64 %3178, i64* %3, align 8
  %3179 = inttoptr i64 %3176 to i32*
  store i32 %3177, i32* %3179, align 4
  %3180 = load i32, i32* %455, align 4
  %3181 = zext i32 %3180 to i64
  %3182 = load i64, i64* %3, align 8
  store i64 %3181, i64* %RAX.i291, align 8
  %3183 = load i64, i64* %6, align 8
  %3184 = add i64 %3183, 1008
  store i64 %3184, i64* %6, align 8
  %3185 = icmp ugt i64 %3183, -1009
  %3186 = zext i1 %3185 to i8
  store i8 %3186, i8* %12, align 1
  %3187 = trunc i64 %3184 to i32
  %3188 = and i32 %3187, 255
  %3189 = tail call i32 @llvm.ctpop.i32(i32 %3188)
  %3190 = trunc i32 %3189 to i8
  %3191 = and i8 %3190, 1
  %3192 = xor i8 %3191, 1
  store i8 %3192, i8* %13, align 1
  %3193 = xor i64 %3183, 16
  %3194 = xor i64 %3193, %3184
  %3195 = lshr i64 %3194, 4
  %3196 = trunc i64 %3195 to i8
  %3197 = and i8 %3196, 1
  store i8 %3197, i8* %14, align 1
  %3198 = icmp eq i64 %3184, 0
  %3199 = zext i1 %3198 to i8
  store i8 %3199, i8* %15, align 1
  %3200 = lshr i64 %3184, 63
  %3201 = trunc i64 %3200 to i8
  store i8 %3201, i8* %16, align 1
  %3202 = lshr i64 %3183, 63
  %3203 = xor i64 %3200, %3202
  %3204 = add nuw nsw i64 %3203, %3200
  %3205 = icmp eq i64 %3204, 2
  %3206 = zext i1 %3205 to i8
  store i8 %3206, i8* %17, align 1
  %3207 = add i64 %3182, 10
  store i64 %3207, i64* %3, align 8
  %3208 = add i64 %3183, 1016
  %3209 = inttoptr i64 %3184 to i64*
  %3210 = load i64, i64* %3209, align 8
  store i64 %3210, i64* %RBP.i, align 8
  store i64 %3208, i64* %6, align 8
  %3211 = add i64 %3182, 11
  store i64 %3211, i64* %3, align 8
  %3212 = inttoptr i64 %3208 to i64*
  %3213 = load i64, i64* %3212, align 8
  store i64 %3213, i64* %3, align 8
  %3214 = add i64 %3183, 1024
  store i64 %3214, i64* %6, align 8
  ret %struct.Memory* %3173
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

define %struct.Memory* @routine_subq__0x3f0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x402f6b___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f6b_type* @G__0x402f6b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x289b__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x289b__rip__4195885__type* @G_0x289b__rip__4195885_ to i32*), align 8
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

define %struct.Memory* @routine_movq__0x402f4a___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f4a_type* @G__0x402f4a to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x402f30___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f30_type* @G__0x402f30 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__edx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x2d0___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 720, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_leaq_MINUS0x340__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__r9___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsi__MINUS0x348__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__r8___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rcx__MINUS0x350__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x354__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rax__MINUS0x360__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.memset_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movb__0x20__MINUS0x340__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x350__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x360__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rcx__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0xc9__0x604050(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 201, i32* bitcast (%G_0x604050_type* @G_0x604050 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc8__0x604054(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 200, i32* bitcast (%G_0x604054_type* @G_0x604054 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x354__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x64__0x604058(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 100, i32* bitcast (%G_0x604058_type* @G_0x604058 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x604040___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x604040_type* @G_0x604040 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x348__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq__0x402f73___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f73_type* @G__0x402f73 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x364__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x402f7b___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402f7b_type* @G__0x402f7b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x368__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x402fb1___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402fb1_type* @G__0x402fb1 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x36c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x402fc2___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402fc2_type* @G__0x402fc2 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x370__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x604060___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x62b480___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x14__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_0x2750__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x2750__rip__4196232__type* @G_0x2750__rip__4196232_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x2750__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x2750__rip__4196240__type* @G_0x2750__rip__4196240_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x604058___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imull_0x604058___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvtsi2sdl__r10d___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movaps__xmm0___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd__xmm2___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_divsd__xmm1___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvtsi2sdl__r10d___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm0___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvtsd2ss__xmm3___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_0x604050___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_0x604058___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x374__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.matgen(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_callq_.second(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq__0x62b7a0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62b7a0_type* @G__0x62b7a0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x62bac0___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62bac0_type* @G__0x62bac0 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.dgefa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_subss_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__0x62bad0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x62b480___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.dgesl(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movss__xmm0__0x62bb0c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss_0x62bad0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addss_0x62bb0c___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x0__0x62bcec(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62bcec_type* @G_0x62bcec to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x62bcec___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_0x604058___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400907(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq_0x62bcec___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss_0x62b480___rax_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, ptrtoint (%G_0x62b480___rax_4__type* @G_0x62b480___rax_4_ to i64)
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

define %struct.Memory* @routine_movss__xmm0__0x62bcf0___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, ptrtoint (%G_0x62bcf0___rax_4__type* @G_0x62bcf0___rax_4_ to i64)
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

define %struct.Memory* @routine_movl__eax__0x62bcec(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_4008bb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400997(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movd__xmm0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_xorl__0x80000000___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movd__ecx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__0x62b480___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, ptrtoint (%G_0x62b480___rax_4__type* @G_0x62b480___rax_4_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_40093d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x62b480___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62b480_type* @G__0x62b480 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x62bcf0___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62bcf0_type* @G__0x62bcf0 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x604060___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x604060_type* @G__0x604060 to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x604058___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_0x604050___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.dmxpy(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to i32*
  store i32 0, i32* %10, align 1
  %11 = bitcast i64* %7 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 12
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400b15(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x62b480___rax_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, ptrtoint (%G_0x62b480___rax_4__type* @G_0x62b480___rax_4_ to i64)
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
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x2500__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x2500__rip__4196896__type* @G_0x2500__rip__4196896_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__4196896__type* @G_0x2500__rip__4196896_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__4196896__type* @G_0x2500__rip__4196896_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x2500__rip__4196896__type* @G_0x2500__rip__4196896_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pand__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400478
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

; <label>:22:                                     ; preds = %block_400478
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

define %struct.Memory* @routine_jbe_.L_400a44(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %11 = add i64 %3, %.v
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x380__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400a6c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x24c0__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x24c0__rip__4196960__type* @G_0x24c0__rip__4196960_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__4196960__type* @G_0x24c0__rip__4196960_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__4196960__type* @G_0x24c0__rip__4196960_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x24c0__rip__4196960__type* @G_0x24c0__rip__4196960_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pand__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x380__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %12 = bitcast <2 x i32> %8 to double
  %13 = fptrunc double %12 to float
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

define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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

define %struct.Memory* @routine_movss_0x62bcf0___rax_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, ptrtoint (%G_0x62bcf0___rax_4__type* @G_0x62bcf0___rax_4_ to i64)
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
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %16 = bitcast i64* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %4, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x247e__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x247e__rip__4197026__type* @G_0x247e__rip__4197026_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__4197026__type* @G_0x247e__rip__4197026_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__4197026__type* @G_0x247e__rip__4197026_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x247e__rip__4197026__type* @G_0x247e__rip__4197026_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_400ac6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %11 = add i64 %3, %.v
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x388__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400aee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x62bcf0___rax_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, ptrtoint (%G_0x62bcf0___rax_4__type* @G_0x62bcf0___rax_4_ to i64)
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

define %struct.Memory* @routine_movaps_0x243e__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x243e__rip__4197090__type* @G_0x243e__rip__4197090_ to i32*), align 8
  %8 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__4197090__type* @G_0x243e__rip__4197090_ to i64), i64 4) to i32*), align 4
  %9 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__4197090__type* @G_0x243e__rip__4197090_ to i64), i64 8) to i32*), align 8
  %10 = load i32, i32* inttoptr (i64 add (i64 ptrtoint (%G_0x243e__rip__4197090__type* @G_0x243e__rip__4197090_ to i64), i64 12) to i32*), align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %8, i32* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to i32*
  store i32 %9, i32* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 %10, i32* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x388__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_4009e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x23af__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x23af__rip__4197149__type* @G_0x23af__rip__4197149_ to i32*), align 8
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

define %struct.Memory* @routine_callq_.epslon(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq__0x402fd4___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402fd4_type* @G__0x402fd4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x2398__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x2398__rip__4197172__type* @G_0x2398__rip__4197172_ to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_0x604058___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvtsi2ssl__eax___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss_MINUS0x14__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulss_MINUS0x18__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulss_MINUS0x24__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_divss__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss_0x62bcf0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss_0x62bcf0___rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, ptrtoint (%G_0x62bcf0___rcx_4__type* @G_0x62bcf0___rcx_4_ to i64)
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x402ffb___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x402ffb_type* @G__0x402ffb to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x38c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x40301e___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40301e_type* @G__0x40301e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
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

define %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x30__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -48
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm2___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x34__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm3___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x38__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -56
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm4___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x390__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movb__0x5___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 5, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x40303f___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40303f_type* @G__0x40303f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x394__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x403074___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x403074_type* @G__0x403074 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x604050___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x398__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4030aa___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4030aa_type* @G__0x4030aa to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x39c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4030e2___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4030e2_type* @G__0x4030e2 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3a0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm1__0x62bb48(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

; <label>:12:                                     ; preds = %block_400478
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

; <label>:22:                                     ; preds = %block_400478
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

define %struct.Memory* @routine_movl__eax__MINUS0x3a4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jbe_.L_400d24(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %11 = add i64 %3, %.v
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x2206__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x2206__rip__4197586__type* @G_0x2206__rip__4197586_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x220e__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x220e__rip__4197594__type* @G_0x220e__rip__4197594_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0xc__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm3___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvtsd2ss__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm1__0x62bb84(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss_0x62bb84___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62bb84_type* @G_0x62bb84 to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x62bbc0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400d39(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x62bb84(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_xorl__edi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_divss_MINUS0x8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__0x62bbfc(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.print_time(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq__0x4030ef___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4030ef_type* @G__0x4030ef to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xfffffffd__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x64__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x3a8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400def(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400d9e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x40310d___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40310d_type* @G__0x40310d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to i32*
  store i32 0, i32* %10, align 1
  %11 = bitcast i64* %7 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 12
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss_MINUS0x54__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subss_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x3ac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400e43(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_shll__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
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

define %struct.Memory* @routine_jmpq_.L_400e48(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_400d80(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x403127___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x403127_type* @G__0x403127 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x48__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -72
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %12 = bitcast <2 x i32> %8 to double
  %13 = fptrunc double %12 to float
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x40314e___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40314e_type* @G__0x40314e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3b0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x64__0x62c010(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 100, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3b4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_0x62c010___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400f66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400ee0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x62c010___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x3b8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400fbc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl_0x62c010___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__0x62c010(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400fc1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_400ec2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3e8__0x62c010(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1000, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x62c010(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jne_.L_400fef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x62c010(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x62c010_type* @G_0x62c010 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x40317d___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40317d_type* @G__0x40317d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x403191___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x403191_type* @G__0x403191 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3bc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x3c0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x3c4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvtsi2ssl__edx___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss_MINUS0x48__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__0x62bb9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x1__0x62c014(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3c8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x6__0x62c014(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %16 = xor i32 %5, %6
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

define %struct.Memory* @routine_jge_.L_40131f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_401149(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_4010c3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subss_MINUS0x2c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvtsi2ssl__eax___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_0x62c014___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x62bad0___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, ptrtoint (%G_0x62bad0___rcx_4__type* @G_0x62bad0___rcx_4_ to i64)
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

define %struct.Memory* @routine_jge_.L_4011eb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_40118d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1ce0__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1ce0__rip__4198904__type* @G_0x1ce0__rip__4198904_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1ce8__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1ce8__rip__4198912__type* @G_0x1ce8__rip__4198912_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssl__eax___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss__xmm3___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__0x62bb0c___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, ptrtoint (%G_0x62bb0c___rcx_4__type* @G_0x62bb0c___rcx_4_ to i64)
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

define %struct.Memory* @routine_movss_0x62bad0___rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, ptrtoint (%G_0x62bad0___rcx_4__type* @G_0x62bad0___rcx_4_ to i64)
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

define %struct.Memory* @routine_addss_0x62bb0c___rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, ptrtoint (%G_0x62bb0c___rcx_4__type* @G_0x62bb0c___rcx_4_ to i64)
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

define %struct.Memory* @routine_movss__xmm0__0x62bb48___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, ptrtoint (%G_0x62bb48___rcx_4__type* @G_0x62bb48___rcx_4_ to i64)
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

define %struct.Memory* @routine_movss_MINUS0xc__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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

define %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_divsd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__0x62bb84___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, ptrtoint (%G_0x62bb84___rcx_4__type* @G_0x62bb84___rcx_4_ to i64)
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

define %struct.Memory* @routine_movss_0x62bb84___rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, ptrtoint (%G_0x62bb84___rcx_4__type* @G_0x62bb84___rcx_4_ to i64)
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

define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__0x62bbc0___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, ptrtoint (%G_0x62bbc0___rcx_4__type* @G_0x62bbc0___rcx_4_ to i64)
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

define %struct.Memory* @routine_movss__xmm0__0x62bbfc___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, ptrtoint (%G_0x62bbfc___rcx_4__type* @G_0x62bbfc___rcx_4_ to i64)
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

define %struct.Memory* @routine_movss_0x62bb9c___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addss_0x62bb84___rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, ptrtoint (%G_0x62bb84___rcx_4__type* @G_0x62bb84___rcx_4_ to i64)
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

define %struct.Memory* @routine_movl_0x62c014___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_0x62c014___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__0x62c014(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_4010a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4031c0___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4031c0_type* @G__0x4031c0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1bbc__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1bbc__rip__4199220__type* @G_0x1bbc__rip__4199220_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x62bb9c___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0x62bb9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4031e9___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4031e9_type* @G__0x4031e9 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3cc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x3d0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_4013ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq__0x62c020___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62c020_type* @G__0x62c020 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x604054___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_40139b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss_MINUS0x4c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
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

define %struct.Memory* @routine_movl_0x604054___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x3d4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x3d8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x3dc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulss_MINUS0x4c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movss__xmm0__0x62bbb4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x7__0x62c014(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 7, i32* bitcast (%G_0x62c014_type* @G_0x62c014 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3e0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0xc__0x62c014(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %16 = xor i32 %5, %6
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

define %struct.Memory* @routine_jge_.L_401756(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_401580(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_4014fa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_401622(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_4015c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x18a9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x18a9__rip__4199983__type* @G_0x18a9__rip__4199983_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x18b1__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x18b1__rip__4199991__type* @G_0x18b1__rip__4199991_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x62bbb4___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_4014d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1785__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1785__rip__4200299__type* @G_0x1785__rip__4200299_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x62bbb4___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0x62bbb4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x3e4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addq__0x3f0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
