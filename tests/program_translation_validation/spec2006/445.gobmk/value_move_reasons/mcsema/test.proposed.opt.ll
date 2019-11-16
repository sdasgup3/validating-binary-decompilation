; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x62334__rip__type = type <{ [8 x i8] }>
%G_0x623be__rip__type = type <{ [8 x i8] }>
%G_0x62404__rip__type = type <{ [8 x i8] }>
%G_0x62406__rip__type = type <{ [4 x i8] }>
%G_0x62411__rip__type = type <{ [8 x i8] }>
%G_0x62436__rip__type = type <{ [4 x i8] }>
%G_0x62657__rip__type = type <{ [8 x i8] }>
%G_0x62669__rip__type = type <{ [8 x i8] }>
%G_0x626bc__rip__type = type <{ [8 x i8] }>
%G_0x626c1__rip__type = type <{ [8 x i8] }>
%G_0x626ea__rip__type = type <{ [8 x i8] }>
%G_0x6272e__rip__type = type <{ [8 x i8] }>
%G_0x6276c__rip__type = type <{ [8 x i8] }>
%G_0x62812__rip__type = type <{ [8 x i8] }>
%G_0x6298a__rip__type = type <{ [8 x i8] }>
%G_0x62a03__rip__type = type <{ [8 x i8] }>
%G_0x62ab5__rip__type = type <{ [8 x i8] }>
%G_0x62b20__rip__type = type <{ [8 x i8] }>
%G_0x62b55__rip__type = type <{ [8 x i8] }>
%G_0x62b75__rip__type = type <{ [8 x i8] }>
%G_0x62ba5__rip__type = type <{ [8 x i8] }>
%G_0x62bb5__rip__type = type <{ [8 x i8] }>
%G_0x62c20__rip__type = type <{ [8 x i8] }>
%G_0x62c5f__rip__type = type <{ [8 x i8] }>
%G_0x62c7f__rip__type = type <{ [8 x i8] }>
%G_0x62c8e__rip__type = type <{ [8 x i8] }>
%G_0x62caf__rip__type = type <{ [8 x i8] }>
%G_0x62ccd__rip__type = type <{ [8 x i8] }>
%G_0x62e72__rip__type = type <{ [8 x i8] }>
%G_0x62e96__rip__type = type <{ [8 x i8] }>
%G_0x99c0a0_type = type <{ [8 x i8] }>
%G_0xab0edc_type = type <{ [1 x i8] }>
%G_0xab0f20_type = type <{ [1 x i8] }>
%G_0xab0f28_type = type <{ [1 x i8] }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
%G__0x480f80_type = type <{ [8 x i8] }>
%G__0x57a100_type = type <{ [8 x i8] }>
%G__0x581e84_type = type <{ [8 x i8] }>
%G__0x582044_type = type <{ [8 x i8] }>
%G__0x58208a_type = type <{ [8 x i8] }>
%G__0x5820d3_type = type <{ [8 x i8] }>
%G__0x5820ea_type = type <{ [8 x i8] }>
%G__0x5820fd_type = type <{ [8 x i8] }>
%G__0x582137_type = type <{ [8 x i8] }>
%G__0x582155_type = type <{ [8 x i8] }>
%G__0x58217d_type = type <{ [8 x i8] }>
%G__0x5821b4_type = type <{ [8 x i8] }>
%G__0x5821da_type = type <{ [8 x i8] }>
%G__0x582200_type = type <{ [8 x i8] }>
%G__0xb9d8f0_type = type <{ [8 x i8] }>
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
@G_0x62334__rip_ = global %G_0x62334__rip__type zeroinitializer
@G_0x623be__rip_ = global %G_0x623be__rip__type zeroinitializer
@G_0x62404__rip_ = global %G_0x62404__rip__type zeroinitializer
@G_0x62406__rip_ = global %G_0x62406__rip__type zeroinitializer
@G_0x62411__rip_ = global %G_0x62411__rip__type zeroinitializer
@G_0x62436__rip_ = global %G_0x62436__rip__type zeroinitializer
@G_0x62657__rip_ = global %G_0x62657__rip__type zeroinitializer
@G_0x62669__rip_ = global %G_0x62669__rip__type zeroinitializer
@G_0x626bc__rip_ = global %G_0x626bc__rip__type zeroinitializer
@G_0x626c1__rip_ = global %G_0x626c1__rip__type zeroinitializer
@G_0x626ea__rip_ = global %G_0x626ea__rip__type zeroinitializer
@G_0x6272e__rip_ = global %G_0x6272e__rip__type zeroinitializer
@G_0x6276c__rip_ = global %G_0x6276c__rip__type zeroinitializer
@G_0x62812__rip_ = global %G_0x62812__rip__type zeroinitializer
@G_0x6298a__rip_ = global %G_0x6298a__rip__type zeroinitializer
@G_0x62a03__rip_ = global %G_0x62a03__rip__type zeroinitializer
@G_0x62ab5__rip_ = global %G_0x62ab5__rip__type zeroinitializer
@G_0x62b20__rip_ = global %G_0x62b20__rip__type zeroinitializer
@G_0x62b55__rip_ = global %G_0x62b55__rip__type zeroinitializer
@G_0x62b75__rip_ = global %G_0x62b75__rip__type zeroinitializer
@G_0x62ba5__rip_ = global %G_0x62ba5__rip__type zeroinitializer
@G_0x62bb5__rip_ = global %G_0x62bb5__rip__type zeroinitializer
@G_0x62c20__rip_ = global %G_0x62c20__rip__type zeroinitializer
@G_0x62c5f__rip_ = global %G_0x62c5f__rip__type zeroinitializer
@G_0x62c7f__rip_ = global %G_0x62c7f__rip__type zeroinitializer
@G_0x62c8e__rip_ = global %G_0x62c8e__rip__type zeroinitializer
@G_0x62caf__rip_ = global %G_0x62caf__rip__type zeroinitializer
@G_0x62ccd__rip_ = global %G_0x62ccd__rip__type zeroinitializer
@G_0x62e72__rip_ = global %G_0x62e72__rip__type zeroinitializer
@G_0x62e96__rip_ = global %G_0x62e96__rip__type zeroinitializer
@G_0x99c0a0 = local_unnamed_addr global %G_0x99c0a0_type zeroinitializer
@G_0xab0edc = local_unnamed_addr global %G_0xab0edc_type zeroinitializer
@G_0xab0f20 = local_unnamed_addr global %G_0xab0f20_type zeroinitializer
@G_0xab0f28 = local_unnamed_addr global %G_0xab0f28_type zeroinitializer
@G_0xb54ce4 = local_unnamed_addr global %G_0xb54ce4_type zeroinitializer
@G__0x480f80 = global %G__0x480f80_type zeroinitializer
@G__0x57a100 = global %G__0x57a100_type zeroinitializer
@G__0x581e84 = global %G__0x581e84_type zeroinitializer
@G__0x582044 = global %G__0x582044_type zeroinitializer
@G__0x58208a = global %G__0x58208a_type zeroinitializer
@G__0x5820d3 = global %G__0x5820d3_type zeroinitializer
@G__0x5820ea = global %G__0x5820ea_type zeroinitializer
@G__0x5820fd = global %G__0x5820fd_type zeroinitializer
@G__0x582137 = global %G__0x582137_type zeroinitializer
@G__0x582155 = global %G__0x582155_type zeroinitializer
@G__0x58217d = global %G__0x58217d_type zeroinitializer
@G__0x5821b4 = global %G__0x5821b4_type zeroinitializer
@G__0x5821da = global %G__0x5821da_type zeroinitializer
@G__0x582200 = global %G__0x582200_type zeroinitializer
@G__0xb9d8f0 = global %G__0xb9d8f0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @pow(i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_437800.is_antisuji_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4e2700.gg_sort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_437120.discard_redundant_move_reasons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_481030.estimate_territorial_value(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_483400.estimate_strategical_value(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_484d10.compute_shape_factor(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_484e90.move_connects_strings(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ead0.is_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4850c0.value_moves_confirm_safety(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_427a70.move_considered(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @value_move_reasons(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -216
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %18 to i32*
  %19 = add i64 %7, -16
  %20 = load i32, i32* %EDI.i, align 4
  %21 = add i64 %10, 13
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %23 to i32*
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -12
  %26 = load i32, i32* %ESI.i, align 4
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 3
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %25 to i32*
  store i32 %26, i32* %29, align 4
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %31 = load i64, i64* %RBP.i, align 8
  %32 = add i64 %31, -16
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 5
  store i64 %34, i64* %3, align 8
  %35 = bitcast [32 x %union.VectorReg]* %30 to <2 x float>*
  %36 = load <2 x float>, <2 x float>* %35, align 1
  %37 = extractelement <2 x float> %36, i32 0
  %38 = inttoptr i64 %32 to float*
  store float %37, float* %38, align 4
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %40 = load i64, i64* %RBP.i, align 8
  %41 = add i64 %40, -20
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 5
  store i64 %43, i64* %3, align 8
  %44 = bitcast %union.VectorReg* %39 to <2 x float>*
  %45 = load <2 x float>, <2 x float>* %44, align 1
  %46 = extractelement <2 x float> %45, i32 0
  %47 = inttoptr i64 %41 to float*
  store float %46, float* %47, align 4
  %48 = load i64, i64* %3, align 8
  %49 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %12, align 1
  %50 = and i32 %49, 255
  %51 = tail call i32 @llvm.ctpop.i32(i32 %50)
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  %54 = xor i8 %53, 1
  store i8 %54, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %55 = icmp eq i32 %49, 0
  %56 = zext i1 %55 to i8
  store i8 %56, i8* %15, align 1
  %57 = lshr i32 %49, 31
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v217 = select i1 %55, i64 14, i64 19
  %59 = add i64 %48, %.v217
  store i64 %59, i64* %3, align 8
  br i1 %55, label %block_480029, label %block_.L_48002e

block_480029:                                     ; preds = %entry
  %60 = add i64 %59, 45
  store i64 %60, i64* %3, align 8
  %.pre162 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  %.pre163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  br label %block_.L_480056

block_.L_48002e:                                  ; preds = %entry
  %RDI.i440 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 ptrtoint (%G__0x581e84_type* @G__0x581e84 to i64), i64* %RDI.i440, align 8
  %RSI.i491 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  store i64 2391, i64* %RSI.i491, align 8
  %RDX.i522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i522, align 8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i548 = getelementptr inbounds %union.anon, %union.anon* %61, i64 0, i32 0
  store i64 4294967295, i64* %RAX.i548, align 8
  %RCX.i628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4294967295, i64* %RCX.i628, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %62, align 8
  %63 = add i64 %59, -188318
  %64 = add i64 %59, 40
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %64, i64* %67, align 8
  store i64 %66, i64* %6, align 8
  store i64 %63, i64* %3, align 8
  %call2_480051 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %63, %struct.Memory* %2)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_480056

block_.L_480056:                                  ; preds = %block_.L_48002e, %block_480029
  %EAX.i819.pre-phi.in = phi %union.anon* [ %61, %block_.L_48002e ], [ %.pre163, %block_480029 ]
  %RDI.i776.pre-phi = phi i64* [ %RDI.i440, %block_.L_48002e ], [ %.pre162, %block_480029 ]
  %68 = phi i64 [ %.pre, %block_.L_48002e ], [ %60, %block_480029 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_480051, %block_.L_48002e ], [ %2, %block_480029 ]
  %EAX.i819.pre-phi = bitcast %union.anon* %EAX.i819.pre-phi.in to i32*
  %69 = load i64, i64* %RBP.i, align 8
  %70 = add i64 %69, -8
  %71 = add i64 %68, 3
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %70 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %RDI.i776.pre-phi, align 8
  %75 = add i64 %68, -297046
  %76 = add i64 %68, 8
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64 %76, i64* %79, align 8
  store i64 %78, i64* %6, align 8
  store i64 %75, i64* %3, align 8
  %call2_480059 = tail call %struct.Memory* @sub_437800.is_antisuji_move(%struct.State* nonnull %0, i64 %75, %struct.Memory* %MEMORY.0)
  %80 = load i32, i32* %EAX.i819.pre-phi, align 4
  %81 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %82 = and i32 %80, 255
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82)
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %87 = icmp eq i32 %80, 0
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %15, align 1
  %89 = lshr i32 %80, 31
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v218 = select i1 %87, i64 22, i64 9
  %91 = add i64 %81, %.v218
  store i64 %91, i64* %3, align 8
  br i1 %87, label %block_.L_480074, label %block_480067

block_480067:                                     ; preds = %block_.L_480056
  %92 = bitcast [32 x %union.VectorReg]* %30 to i8*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %94 = bitcast [32 x %union.VectorReg]* %30 to i32*
  %95 = getelementptr inbounds i8, i8* %92, i64 4
  %96 = getelementptr inbounds i8, i8* %92, i64 12
  %97 = bitcast [32 x %union.VectorReg]* %30 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %97, align 1
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -4
  %100 = add i64 %91, 8
  store i64 %100, i64* %3, align 8
  %101 = load <2 x float>, <2 x float>* %35, align 1
  %102 = extractelement <2 x float> %101, i32 0
  %103 = inttoptr i64 %99 to float*
  store float %102, float* %103, align 4
  %104 = load i64, i64* %3, align 8
  %105 = add i64 %104, 3833
  store i64 %105, i64* %3, align 8
  %.pre168 = bitcast i8* %95 to float*
  %.pre171 = bitcast i64* %93 to float*
  %.pre174 = bitcast i8* %96 to float*
  br label %block_.L_480f68

block_.L_480074:                                  ; preds = %block_.L_480056
  %106 = load i32, i32* bitcast (%G_0xab0f20_type* @G_0xab0f20 to i32*), align 8
  store i8 0, i8* %12, align 1
  %107 = and i32 %106, 255
  %108 = tail call i32 @llvm.ctpop.i32(i32 %107)
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %112 = icmp eq i32 %106, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %15, align 1
  %114 = lshr i32 %106, 31
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v219 = select i1 %112, i64 28, i64 14
  %116 = add i64 %91, %.v219
  store i64 %116, i64* %3, align 8
  br i1 %112, label %block_.L_480090, label %block_480082

block_480082:                                     ; preds = %block_.L_480074
  %117 = load i32, i32* bitcast (%G_0xab0edc_type* @G_0xab0edc to i32*), align 8
  store i8 0, i8* %12, align 1
  %118 = and i32 %117, 255
  %119 = tail call i32 @llvm.ctpop.i32(i32 %118)
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  store i8 %122, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %123 = icmp eq i32 %117, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %15, align 1
  %125 = lshr i32 %117, 31
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v220 = select i1 %123, i64 288, i64 14
  %127 = add i64 %116, %.v220
  store i64 %127, i64* %3, align 8
  br i1 %123, label %block_480082.block_.L_4801a2_crit_edge, label %block_.L_480090

block_480082.block_.L_4801a2_crit_edge:           ; preds = %block_480082
  %.pre191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre195 = bitcast [32 x %union.VectorReg]* %30 to i8*
  %.pre197 = bitcast [32 x %union.VectorReg]* %30 to i32*
  %.pre199 = getelementptr inbounds i8, i8* %.pre195, i64 4
  %.pre201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %.pre203 = getelementptr inbounds i8, i8* %.pre195, i64 12
  br label %block_.L_4801a2

block_.L_480090:                                  ; preds = %block_480082, %block_.L_480074
  %128 = phi i64 [ %127, %block_480082 ], [ %116, %block_.L_480074 ]
  %RAX.i1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1585, align 8
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1657 = getelementptr inbounds %union.anon, %union.anon* %129, i64 0, i32 0
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -8
  %132 = add i64 %128, 14
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %135, 564
  store i64 %136, i64* %RCX.i1657, align 8
  %137 = lshr i64 %136, 63
  %138 = add i64 %136, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %138, i64* %RAX.i1585, align 8
  %139 = icmp ult i64 %138, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %140 = icmp ult i64 %138, %136
  %141 = or i1 %139, %140
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %12, align 1
  %143 = trunc i64 %138 to i32
  %144 = and i32 %143, 252
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144)
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %13, align 1
  %149 = xor i64 %136, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %150 = xor i64 %149, %138
  %151 = lshr i64 %150, 4
  %152 = trunc i64 %151 to i8
  %153 = and i8 %152, 1
  store i8 %153, i8* %14, align 1
  %154 = icmp eq i64 %138, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %15, align 1
  %156 = lshr i64 %138, 63
  %157 = trunc i64 %156 to i8
  store i8 %157, i8* %16, align 1
  %158 = xor i64 %156, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %159 = xor i64 %156, %137
  %160 = add nuw nsw i64 %158, %159
  %161 = icmp eq i64 %160, 2
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %17, align 1
  %163 = add i64 %136, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 72)
  %164 = add i64 %128, 28
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i32*
  %166 = load i32, i32* %165, align 4
  store i8 0, i8* %12, align 1
  %167 = and i32 %166, 255
  %168 = tail call i32 @llvm.ctpop.i32(i32 %167)
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  %171 = xor i8 %170, 1
  store i8 %171, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %172 = icmp eq i32 %166, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %15, align 1
  %174 = lshr i32 %166, 31
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %176 = icmp ne i8 %175, 0
  %.v = select i1 %176, i64 6, i64 48
  %177 = add i64 %164, %.v
  store i64 %177, i64* %3, align 8
  br i1 %176, label %block_4800b2, label %block_.L_4800dc

block_4800b2:                                     ; preds = %block_.L_480090
  %178 = bitcast [32 x %union.VectorReg]* %30 to i8*
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %180 = bitcast [32 x %union.VectorReg]* %30 to i32*
  %181 = getelementptr inbounds i8, i8* %178, i64 4
  %182 = getelementptr inbounds i8, i8* %178, i64 12
  %183 = bitcast [32 x %union.VectorReg]* %30 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %183, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1585, align 8
  %184 = add i64 %177, 17
  store i64 %184, i64* %3, align 8
  %185 = load i32, i32* %133, align 4
  %186 = sext i32 %185 to i64
  %187 = mul nsw i64 %186, 564
  store i64 %187, i64* %RCX.i1657, align 8
  %188 = lshr i64 %187, 63
  %189 = add i64 %187, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %189, i64* %RAX.i1585, align 8
  %190 = icmp ult i64 %189, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %191 = icmp ult i64 %189, %187
  %192 = or i1 %190, %191
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %12, align 1
  %194 = trunc i64 %189 to i32
  %195 = and i32 %194, 252
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195)
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %13, align 1
  %200 = xor i64 %187, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %201 = xor i64 %200, %189
  %202 = lshr i64 %201, 4
  %203 = trunc i64 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %14, align 1
  %205 = icmp eq i64 %189, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %15, align 1
  %207 = lshr i64 %189, 63
  %208 = trunc i64 %207 to i8
  store i8 %208, i8* %16, align 1
  %209 = xor i64 %207, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %210 = xor i64 %207, %188
  %211 = add nuw nsw i64 %209, %210
  %212 = icmp eq i64 %211, 2
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %17, align 1
  %214 = add i64 %187, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 60)
  %215 = add i64 %177, 32
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %214 to float*
  %217 = load float, float* %216, align 4
  %218 = fpext float %217 to double
  %219 = bitcast %union.VectorReg* %39 to double*
  store double %218, double* %219, align 1
  %220 = add i64 %177, 36
  store i64 %220, i64* %3, align 8
  %221 = bitcast [32 x %union.VectorReg]* %30 to double*
  %222 = load double, double* %221, align 1
  %223 = fcmp uno double %218, %222
  br i1 %223, label %224, label %234

; <label>:224:                                    ; preds = %block_4800b2
  %225 = fadd double %218, %222
  %226 = bitcast double %225 to i64
  %227 = and i64 %226, 9221120237041090560
  %228 = icmp eq i64 %227, 9218868437227405312
  %229 = and i64 %226, 2251799813685247
  %230 = icmp ne i64 %229, 0
  %231 = and i1 %228, %230
  br i1 %231, label %232, label %240

; <label>:232:                                    ; preds = %224
  %233 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %220, %struct.Memory* %call2_480059)
  %.pre67 = load i64, i64* %3, align 8
  %.pre68 = load i8, i8* %12, align 1
  %.pre69 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit1843

; <label>:234:                                    ; preds = %block_4800b2
  %235 = fcmp ogt double %218, %222
  br i1 %235, label %240, label %236

; <label>:236:                                    ; preds = %234
  %237 = fcmp olt double %218, %222
  br i1 %237, label %240, label %238

; <label>:238:                                    ; preds = %236
  %239 = fcmp oeq double %218, %222
  br i1 %239, label %240, label %244

; <label>:240:                                    ; preds = %238, %236, %234, %224
  %241 = phi i8 [ 0, %234 ], [ 0, %236 ], [ 1, %238 ], [ 1, %224 ]
  %242 = phi i8 [ 0, %234 ], [ 0, %236 ], [ 0, %238 ], [ 1, %224 ]
  %243 = phi i8 [ 0, %234 ], [ 1, %236 ], [ 0, %238 ], [ 1, %224 ]
  store i8 %241, i8* %15, align 1
  store i8 %242, i8* %13, align 1
  store i8 %243, i8* %12, align 1
  br label %244

; <label>:244:                                    ; preds = %240, %238
  %245 = phi i8 [ %241, %240 ], [ %206, %238 ]
  %246 = phi i8 [ %243, %240 ], [ %193, %238 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit1843

routine_ucomisd__xmm0___xmm1.exit1843:            ; preds = %244, %232
  %247 = phi i8 [ %.pre69, %232 ], [ %245, %244 ]
  %248 = phi i8 [ %.pre68, %232 ], [ %246, %244 ]
  %249 = phi i64 [ %.pre67, %232 ], [ %220, %244 ]
  %250 = phi %struct.Memory* [ %233, %232 ], [ %call2_480059, %244 ]
  %251 = or i8 %247, %248
  %252 = icmp ne i8 %251, 0
  %.v255 = select i1 %252, i64 204, i64 6
  %253 = add i64 %249, %.v255
  store i64 %253, i64* %3, align 8
  br i1 %252, label %block_.L_4801a2, label %routine_ucomisd__xmm0___xmm1.exit1843.block_.L_4800dc_crit_edge

routine_ucomisd__xmm0___xmm1.exit1843.block_.L_4800dc_crit_edge: ; preds = %routine_ucomisd__xmm0___xmm1.exit1843
  %.pre70 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4800dc

block_.L_4800dc:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit1843.block_.L_4800dc_crit_edge, %block_.L_480090
  %254 = phi i64 [ %177, %block_.L_480090 ], [ %253, %routine_ucomisd__xmm0___xmm1.exit1843.block_.L_4800dc_crit_edge ]
  %255 = phi i64 [ %130, %block_.L_480090 ], [ %.pre70, %routine_ucomisd__xmm0___xmm1.exit1843.block_.L_4800dc_crit_edge ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_480059, %block_.L_480090 ], [ %250, %routine_ucomisd__xmm0___xmm1.exit1843.block_.L_4800dc_crit_edge ]
  %256 = add i64 %255, -32
  %257 = add i64 %254, 7
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to i32*
  store i32 0, i32* %258, align 4
  %AL.i1832 = bitcast %union.anon* %EAX.i819.pre-phi.in to i8*
  %CL.i1833 = bitcast %union.anon* %129 to i8*
  %RDX.i1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i1827 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_4800e3

block_.L_4800e3:                                  ; preds = %block_.L_48012b, %block_.L_4800dc
  %259 = phi i64 [ %514, %block_.L_48012b ], [ %.pre71, %block_.L_4800dc ]
  store i64 0, i64* %RAX.i1585, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %CL.i1833, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RDX.i1830, align 8
  %260 = load i64, i64* %RBP.i, align 8
  %261 = add i64 %260, -8
  %262 = add i64 %259, 18
  store i64 %262, i64* %3, align 8
  %263 = inttoptr i64 %261 to i32*
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = mul nsw i64 %265, 564
  store i64 %266, i64* %RSI.i1827, align 8
  %267 = lshr i64 %266, 63
  %268 = add i64 %266, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %268, i64* %RDX.i1830, align 8
  %269 = icmp ult i64 %268, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %270 = icmp ult i64 %268, %266
  %271 = or i1 %269, %270
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %12, align 1
  %273 = trunc i64 %268 to i32
  %274 = and i32 %273, 252
  %275 = tail call i32 @llvm.ctpop.i32(i32 %274)
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  %278 = xor i8 %277, 1
  store i8 %278, i8* %13, align 1
  %279 = xor i64 %266, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %280 = xor i64 %279, %268
  %281 = lshr i64 %280, 4
  %282 = trunc i64 %281 to i8
  %283 = and i8 %282, 1
  store i8 %283, i8* %14, align 1
  %284 = icmp eq i64 %268, 0
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %15, align 1
  %286 = lshr i64 %268, 63
  %287 = trunc i64 %286 to i8
  store i8 %287, i8* %16, align 1
  %288 = xor i64 %286, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %289 = xor i64 %286, %267
  %290 = add nuw nsw i64 %288, %289
  %291 = icmp eq i64 %290, 2
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %17, align 1
  %293 = add i64 %260, -32
  %294 = add i64 %259, 32
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i32*
  %296 = load i32, i32* %295, align 4
  %297 = sext i32 %296 to i64
  store i64 %297, i64* %RSI.i1827, align 8
  %298 = shl nsw i64 %297, 2
  %299 = add i64 %266, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 72)
  %300 = add i64 %299, %298
  %301 = add i64 %259, 37
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %300 to i32*
  %303 = load i32, i32* %302, align 4
  store i8 0, i8* %12, align 1
  %304 = and i32 %303, 255
  %305 = tail call i32 @llvm.ctpop.i32(i32 %304)
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  store i8 %308, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %309 = icmp eq i32 %303, 0
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %15, align 1
  %311 = lshr i32 %303, 31
  %312 = trunc i32 %311 to i8
  store i8 %312, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %313 = add i64 %260, -65
  %314 = load i8, i8* %CL.i1833, align 1
  %315 = add i64 %259, 40
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %313 to i8*
  store i8 %314, i8* %316, align 1
  %317 = load i64, i64* %3, align 8
  %318 = add i64 %317, 16
  %319 = add i64 %317, 6
  %320 = load i8, i8* %16, align 1
  %321 = icmp ne i8 %320, 0
  %322 = load i8, i8* %17, align 1
  %323 = icmp ne i8 %322, 0
  %324 = xor i1 %321, %323
  %325 = select i1 %324, i64 %318, i64 %319
  store i64 %325, i64* %3, align 8
  br i1 %324, label %block_.L_48011b, label %block_480111

block_480111:                                     ; preds = %block_.L_4800e3
  %326 = load i64, i64* %RBP.i, align 8
  %327 = add i64 %326, -32
  %328 = add i64 %325, 4
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %327 to i32*
  %330 = load i32, i32* %329, align 4
  %331 = add i32 %330, -120
  %332 = icmp ult i32 %330, 120
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %12, align 1
  %334 = and i32 %331, 255
  %335 = tail call i32 @llvm.ctpop.i32(i32 %334)
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  store i8 %338, i8* %13, align 1
  %339 = xor i32 %330, 16
  %340 = xor i32 %339, %331
  %341 = lshr i32 %340, 4
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  store i8 %343, i8* %14, align 1
  %344 = icmp eq i32 %331, 0
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %15, align 1
  %346 = lshr i32 %331, 31
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %16, align 1
  %348 = lshr i32 %330, 31
  %349 = xor i32 %346, %348
  %350 = add nuw nsw i32 %349, %348
  %351 = icmp eq i32 %350, 2
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %17, align 1
  %353 = icmp ne i8 %347, 0
  %354 = xor i1 %351, %353
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %AL.i1832, align 1
  %356 = add i64 %326, -65
  %357 = add i64 %325, 10
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i8*
  store i8 %355, i8* %358, align 1
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_48011b

block_.L_48011b:                                  ; preds = %block_480111, %block_.L_4800e3
  %359 = phi i64 [ %.pre72, %block_480111 ], [ %318, %block_.L_4800e3 ]
  %360 = load i64, i64* %RBP.i, align 8
  %361 = add i64 %360, -65
  %362 = add i64 %359, 3
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i8*
  %364 = load i8, i8* %363, align 1
  store i8 %364, i8* %AL.i1832, align 1
  %365 = and i8 %364, 1
  store i8 0, i8* %12, align 1
  %366 = zext i8 %365 to i32
  %367 = tail call i32 @llvm.ctpop.i32(i32 %366)
  %368 = trunc i32 %367 to i8
  %369 = xor i8 %368, 1
  store i8 %369, i8* %13, align 1
  %370 = xor i8 %365, 1
  store i8 %370, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %371 = icmp eq i8 %370, 0
  %.v221 = select i1 %371, i64 16, i64 11
  %372 = add i64 %359, %.v221
  store i64 %372, i64* %3, align 8
  br i1 %371, label %block_.L_48012b, label %block_480126

block_480126:                                     ; preds = %block_.L_48011b
  store i64 4, i64* %RAX.i1585, align 8
  store i64 4, i64* %RDX.i1830, align 8
  store i64 ptrtoint (%G__0x480f80_type* @G__0x480f80 to i64), i64* %RCX.i1657, align 8
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RSI.i1827, align 8
  %373 = add i64 %360, -8
  %374 = add i64 %372, 50
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = sext i32 %376 to i64
  %378 = mul nsw i64 %377, 564
  store i64 %378, i64* %RDI.i776.pre-phi, align 8
  %379 = add i64 %378, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %380 = lshr i64 %379, 63
  %381 = add i64 %378, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 72)
  store i64 %381, i64* %RSI.i1827, align 8
  %382 = icmp ugt i64 %379, -73
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %12, align 1
  %384 = trunc i64 %381 to i32
  %385 = and i32 %384, 252
  %386 = tail call i32 @llvm.ctpop.i32(i32 %385)
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  store i8 %389, i8* %13, align 1
  %390 = xor i64 %381, %379
  %391 = lshr i64 %390, 4
  %392 = trunc i64 %391 to i8
  %393 = and i8 %392, 1
  store i8 %393, i8* %14, align 1
  %394 = icmp eq i64 %381, 0
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %15, align 1
  %396 = lshr i64 %381, 63
  %397 = trunc i64 %396 to i8
  store i8 %397, i8* %16, align 1
  %398 = xor i64 %396, %380
  %399 = add nuw nsw i64 %398, %396
  %400 = icmp eq i64 %399, 2
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %17, align 1
  %402 = load i64, i64* %RBP.i, align 8
  %403 = add i64 %402, -32
  %404 = add i64 %372, 68
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = sext i32 %406 to i64
  %408 = add i64 %402, -80
  %409 = add i64 %372, 72
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i64*
  store i64 %407, i64* %410, align 8
  %411 = load i64, i64* %RSI.i1827, align 8
  %412 = load i64, i64* %3, align 8
  store i64 %411, i64* %RDI.i776.pre-phi, align 8
  %413 = load i64, i64* %RBP.i, align 8
  %414 = add i64 %413, -80
  %415 = add i64 %412, 7
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i64*
  %417 = load i64, i64* %416, align 8
  store i64 %417, i64* %RSI.i1827, align 8
  %418 = add i64 %412, 402834
  %419 = add i64 %412, 12
  %420 = load i64, i64* %6, align 8
  %421 = add i64 %420, -8
  %422 = inttoptr i64 %421 to i64*
  store i64 %419, i64* %422, align 8
  store i64 %421, i64* %6, align 8
  store i64 %418, i64* %3, align 8
  %call2_480175 = tail call %struct.Memory* @sub_4e2700.gg_sort(%struct.State* nonnull %0, i64 %418, %struct.Memory* %MEMORY.2)
  %423 = load i64, i64* %RBP.i, align 8
  %424 = add i64 %423, -8
  %425 = load i64, i64* %3, align 8
  %426 = add i64 %425, 3
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %424 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RDI.i776.pre-phi, align 8
  %430 = add i64 %425, -299098
  %431 = add i64 %425, 8
  %432 = load i64, i64* %6, align 8
  %433 = add i64 %432, -8
  %434 = inttoptr i64 %433 to i64*
  store i64 %431, i64* %434, align 8
  store i64 %433, i64* %6, align 8
  store i64 %430, i64* %3, align 8
  %call2_48017d = tail call %struct.Memory* @sub_437120.discard_redundant_move_reasons(%struct.State* nonnull %0, i64 %430, %struct.Memory* %call2_480175)
  %435 = load i64, i64* %RBP.i, align 8
  %436 = add i64 %435, -8
  %437 = load i64, i64* %3, align 8
  %438 = add i64 %437, 3
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %436 to i32*
  %440 = load i32, i32* %439, align 4
  %441 = zext i32 %440 to i64
  store i64 %441, i64* %RDI.i776.pre-phi, align 8
  %442 = add i64 %435, -12
  %443 = add i64 %437, 6
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = zext i32 %445 to i64
  store i64 %446, i64* %RSI.i1827, align 8
  %447 = bitcast [32 x %union.VectorReg]* %30 to i8*
  %448 = add i64 %435, -20
  %449 = add i64 %437, 11
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to i32*
  %451 = load i32, i32* %450, align 4
  %452 = bitcast [32 x %union.VectorReg]* %30 to i32*
  store i32 %451, i32* %452, align 1
  %453 = getelementptr inbounds i8, i8* %447, i64 4
  %454 = bitcast i8* %453 to float*
  store float 0.000000e+00, float* %454, align 1
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %456 = bitcast i64* %455 to float*
  store float 0.000000e+00, float* %456, align 1
  %457 = getelementptr inbounds i8, i8* %447, i64 12
  %458 = bitcast i8* %457 to float*
  store float 0.000000e+00, float* %458, align 1
  %459 = add i64 %437, 3758
  %460 = add i64 %437, 16
  %461 = load i64, i64* %6, align 8
  %462 = add i64 %461, -8
  %463 = inttoptr i64 %462 to i64*
  store i64 %460, i64* %463, align 8
  store i64 %462, i64* %6, align 8
  store i64 %459, i64* %3, align 8
  %call2_48018d = tail call %struct.Memory* @sub_481030.estimate_territorial_value(%struct.State* nonnull %0, i64 %459, %struct.Memory* %call2_48017d)
  %464 = load i64, i64* %RBP.i, align 8
  %465 = add i64 %464, -8
  %466 = load i64, i64* %3, align 8
  %467 = add i64 %466, 3
  store i64 %467, i64* %3, align 8
  %468 = inttoptr i64 %465 to i32*
  %469 = load i32, i32* %468, align 4
  %470 = zext i32 %469 to i64
  store i64 %470, i64* %RDI.i776.pre-phi, align 8
  %471 = add i64 %464, -12
  %472 = add i64 %466, 6
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %471 to i32*
  %474 = load i32, i32* %473, align 4
  %475 = zext i32 %474 to i64
  store i64 %475, i64* %RSI.i1827, align 8
  %476 = add i64 %464, -20
  %477 = add i64 %466, 11
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i32*
  %479 = load i32, i32* %478, align 4
  store i32 %479, i32* %452, align 1
  store float 0.000000e+00, float* %454, align 1
  store float 0.000000e+00, float* %456, align 1
  store float 0.000000e+00, float* %458, align 1
  %480 = add i64 %466, 12910
  %481 = add i64 %466, 16
  %482 = load i64, i64* %6, align 8
  %483 = add i64 %482, -8
  %484 = inttoptr i64 %483 to i64*
  store i64 %481, i64* %484, align 8
  store i64 %483, i64* %6, align 8
  store i64 %480, i64* %3, align 8
  %call2_48019d = tail call %struct.Memory* @sub_483400.estimate_strategical_value(%struct.State* nonnull %0, i64 %480, %struct.Memory* %call2_48018d)
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_4801a2

block_.L_48012b:                                  ; preds = %block_.L_48011b
  %485 = add i64 %360, -32
  %486 = add i64 %372, 3
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = add i32 %488, 1
  %490 = zext i32 %489 to i64
  store i64 %490, i64* %RAX.i1585, align 8
  %491 = icmp eq i32 %488, -1
  %492 = icmp eq i32 %489, 0
  %493 = or i1 %491, %492
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %12, align 1
  %495 = and i32 %489, 255
  %496 = tail call i32 @llvm.ctpop.i32(i32 %495)
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  store i8 %499, i8* %13, align 1
  %500 = xor i32 %489, %488
  %501 = lshr i32 %500, 4
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  store i8 %503, i8* %14, align 1
  %504 = zext i1 %492 to i8
  store i8 %504, i8* %15, align 1
  %505 = lshr i32 %489, 31
  %506 = trunc i32 %505 to i8
  store i8 %506, i8* %16, align 1
  %507 = lshr i32 %488, 31
  %508 = xor i32 %505, %507
  %509 = add nuw nsw i32 %508, %505
  %510 = icmp eq i32 %509, 2
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %17, align 1
  %512 = add i64 %372, 9
  store i64 %512, i64* %3, align 8
  store i32 %489, i32* %487, align 4
  %513 = load i64, i64* %3, align 8
  %514 = add i64 %513, -81
  store i64 %514, i64* %3, align 8
  br label %block_.L_4800e3

block_.L_4801a2:                                  ; preds = %block_480082.block_.L_4801a2_crit_edge, %block_480126, %routine_ucomisd__xmm0___xmm1.exit1843
  %.pre-phi204 = phi i8* [ %.pre203, %block_480082.block_.L_4801a2_crit_edge ], [ %457, %block_480126 ], [ %182, %routine_ucomisd__xmm0___xmm1.exit1843 ]
  %.pre-phi202 = phi i64* [ %.pre201, %block_480082.block_.L_4801a2_crit_edge ], [ %455, %block_480126 ], [ %179, %routine_ucomisd__xmm0___xmm1.exit1843 ]
  %.pre-phi200 = phi i8* [ %.pre199, %block_480082.block_.L_4801a2_crit_edge ], [ %453, %block_480126 ], [ %181, %routine_ucomisd__xmm0___xmm1.exit1843 ]
  %.pre-phi198 = phi i32* [ %.pre197, %block_480082.block_.L_4801a2_crit_edge ], [ %452, %block_480126 ], [ %180, %routine_ucomisd__xmm0___xmm1.exit1843 ]
  %RCX.i1729.pre-phi = phi i64* [ %.pre194, %block_480082.block_.L_4801a2_crit_edge ], [ %RCX.i1657, %block_480126 ], [ %RCX.i1657, %routine_ucomisd__xmm0___xmm1.exit1843 ]
  %RAX.i1732.pre-phi = phi i64* [ %.pre191, %block_480082.block_.L_4801a2_crit_edge ], [ %RAX.i1585, %block_480126 ], [ %RAX.i1585, %routine_ucomisd__xmm0___xmm1.exit1843 ]
  %515 = phi i64 [ %127, %block_480082.block_.L_4801a2_crit_edge ], [ %.pre73, %block_480126 ], [ %253, %routine_ucomisd__xmm0___xmm1.exit1843 ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_480059, %block_480082.block_.L_4801a2_crit_edge ], [ %call2_48019d, %block_480126 ], [ %250, %routine_ucomisd__xmm0___xmm1.exit1843 ]
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %516 = load i64, i64* %RBP.i, align 8
  %517 = add i64 %516, -8
  %518 = add i64 %515, 14
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %517 to i32*
  %520 = load i32, i32* %519, align 4
  %521 = sext i32 %520 to i64
  %522 = mul nsw i64 %521, 564
  store i64 %522, i64* %RCX.i1729.pre-phi, align 8
  %523 = lshr i64 %522, 63
  %RDX.i1725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %524 = add i64 %522, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %524, i64* %RDX.i1725, align 8
  %525 = icmp ult i64 %524, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %526 = icmp ult i64 %524, %522
  %527 = or i1 %525, %526
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %12, align 1
  %529 = trunc i64 %524 to i32
  %530 = and i32 %529, 252
  %531 = tail call i32 @llvm.ctpop.i32(i32 %530)
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  %534 = xor i8 %533, 1
  store i8 %534, i8* %13, align 1
  %535 = xor i64 %522, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %536 = xor i64 %535, %524
  %537 = lshr i64 %536, 4
  %538 = trunc i64 %537 to i8
  %539 = and i8 %538, 1
  store i8 %539, i8* %14, align 1
  %540 = icmp eq i64 %524, 0
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %15, align 1
  %542 = lshr i64 %524, 63
  %543 = trunc i64 %542 to i8
  store i8 %543, i8* %16, align 1
  %544 = xor i64 %542, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %545 = xor i64 %542, %523
  %546 = add nuw nsw i64 %544, %545
  %547 = icmp eq i64 %546, 2
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %17, align 1
  %549 = add i64 %522, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 12)
  %550 = add i64 %515, 32
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i32*
  %552 = load i32, i32* %551, align 4
  %553 = bitcast [32 x %union.VectorReg]* %30 to float*
  store i32 %552, i32* %.pre-phi198, align 1
  %554 = bitcast i8* %.pre-phi200 to float*
  store float 0.000000e+00, float* %554, align 1
  %555 = bitcast i64* %.pre-phi202 to float*
  store float 0.000000e+00, float* %555, align 1
  %556 = bitcast i8* %.pre-phi204 to float*
  store float 0.000000e+00, float* %556, align 1
  %557 = add i64 %515, 36
  store i64 %557, i64* %3, align 8
  %558 = load i32, i32* %519, align 4
  %559 = sext i32 %558 to i64
  %560 = mul nsw i64 %559, 564
  store i64 %560, i64* %RCX.i1729.pre-phi, align 8
  %561 = lshr i64 %560, 63
  %562 = load i64, i64* %RAX.i1732.pre-phi, align 8
  %563 = add i64 %560, %562
  store i64 %563, i64* %RAX.i1732.pre-phi, align 8
  %564 = icmp ult i64 %563, %562
  %565 = icmp ult i64 %563, %560
  %566 = or i1 %564, %565
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %12, align 1
  %568 = trunc i64 %563 to i32
  %569 = and i32 %568, 255
  %570 = tail call i32 @llvm.ctpop.i32(i32 %569)
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  %573 = xor i8 %572, 1
  store i8 %573, i8* %13, align 1
  %574 = xor i64 %560, %562
  %575 = xor i64 %574, %563
  %576 = lshr i64 %575, 4
  %577 = trunc i64 %576 to i8
  %578 = and i8 %577, 1
  store i8 %578, i8* %14, align 1
  %579 = icmp eq i64 %563, 0
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %15, align 1
  %581 = lshr i64 %563, 63
  %582 = trunc i64 %581 to i8
  store i8 %582, i8* %16, align 1
  %583 = lshr i64 %562, 63
  %584 = xor i64 %581, %583
  %585 = xor i64 %581, %561
  %586 = add nuw nsw i64 %584, %585
  %587 = icmp eq i64 %586, 2
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %17, align 1
  %589 = add i64 %563, 16
  %590 = add i64 %515, 51
  store i64 %590, i64* %3, align 8
  %591 = load <2 x float>, <2 x float>* %35, align 1
  %592 = bitcast i64* %.pre-phi202 to <2 x i32>*
  %593 = load <2 x i32>, <2 x i32>* %592, align 1
  %594 = inttoptr i64 %589 to float*
  %595 = load float, float* %594, align 4
  %596 = extractelement <2 x float> %591, i32 0
  %597 = fadd float %596, %595
  store float %597, float* %553, align 1
  %598 = bitcast <2 x float> %591 to <2 x i32>
  %599 = extractelement <2 x i32> %598, i32 1
  %600 = bitcast i8* %.pre-phi200 to i32*
  store i32 %599, i32* %600, align 1
  %601 = extractelement <2 x i32> %593, i32 0
  %602 = bitcast i64* %.pre-phi202 to i32*
  store i32 %601, i32* %602, align 1
  %603 = extractelement <2 x i32> %593, i32 1
  %604 = bitcast i8* %.pre-phi204 to i32*
  store i32 %603, i32* %604, align 1
  %605 = load i64, i64* %RBP.i, align 8
  %606 = add i64 %605, -24
  %607 = add i64 %515, 56
  store i64 %607, i64* %3, align 8
  %608 = load <2 x float>, <2 x float>* %35, align 1
  %609 = extractelement <2 x float> %608, i32 0
  %610 = inttoptr i64 %606 to float*
  store float %609, float* %610, align 4
  %611 = load i64, i64* %RBP.i, align 8
  %612 = add i64 %611, -8
  %613 = load i64, i64* %3, align 8
  %614 = add i64 %613, 3
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %612 to i32*
  %616 = load i32, i32* %615, align 4
  %617 = zext i32 %616 to i64
  store i64 %617, i64* %RDI.i776.pre-phi, align 8
  %618 = add i64 %613, 19254
  %619 = add i64 %613, 8
  %620 = load i64, i64* %6, align 8
  %621 = add i64 %620, -8
  %622 = inttoptr i64 %621 to i64*
  store i64 %619, i64* %622, align 8
  store i64 %621, i64* %6, align 8
  store i64 %618, i64* %3, align 8
  %call2_4801dd = tail call %struct.Memory* @sub_484d10.compute_shape_factor(%struct.State* nonnull %0, i64 %618, %struct.Memory* %MEMORY.5)
  %623 = bitcast %union.VectorReg* %39 to i8*
  %624 = load i64, i64* %3, align 8
  %625 = add i64 %624, ptrtoint (%G_0x62e96__rip__type* @G_0x62e96__rip_ to i64)
  %626 = add i64 %624, 8
  store i64 %626, i64* %3, align 8
  %627 = inttoptr i64 %625 to i64*
  %628 = load i64, i64* %627, align 8
  %629 = bitcast %union.VectorReg* %39 to double*
  %630 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %39, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %628, i64* %630, align 1
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %632 = bitcast i64* %631 to double*
  store double 0.000000e+00, double* %632, align 1
  %633 = load i64, i64* %RBP.i, align 8
  %634 = add i64 %633, -28
  %635 = add i64 %624, 13
  store i64 %635, i64* %3, align 8
  %636 = load <2 x float>, <2 x float>* %35, align 1
  %637 = extractelement <2 x float> %636, i32 0
  %638 = inttoptr i64 %634 to float*
  store float %637, float* %638, align 4
  %639 = load i64, i64* %RBP.i, align 8
  %640 = add i64 %639, -24
  %641 = load i64, i64* %3, align 8
  %642 = add i64 %641, 5
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %640 to float*
  %644 = load float, float* %643, align 4
  %645 = fpext float %644 to double
  %646 = bitcast [32 x %union.VectorReg]* %30 to double*
  store double %645, double* %646, align 1
  %647 = add i64 %641, 9
  store i64 %647, i64* %3, align 8
  %648 = load double, double* %629, align 1
  %649 = fcmp uno double %648, %645
  br i1 %649, label %650, label %660

; <label>:650:                                    ; preds = %block_.L_4801a2
  %651 = fadd double %645, %648
  %652 = bitcast double %651 to i64
  %653 = and i64 %652, 9221120237041090560
  %654 = icmp eq i64 %653, 9218868437227405312
  %655 = and i64 %652, 2251799813685247
  %656 = icmp ne i64 %655, 0
  %657 = and i1 %654, %656
  br i1 %657, label %658, label %666

; <label>:658:                                    ; preds = %650
  %659 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %647, %struct.Memory* %call2_4801dd)
  %.pre74 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit1687

; <label>:660:                                    ; preds = %block_.L_4801a2
  %661 = fcmp ogt double %648, %645
  br i1 %661, label %666, label %662

; <label>:662:                                    ; preds = %660
  %663 = fcmp olt double %648, %645
  br i1 %663, label %666, label %664

; <label>:664:                                    ; preds = %662
  %665 = fcmp oeq double %648, %645
  br i1 %665, label %666, label %670

; <label>:666:                                    ; preds = %664, %662, %660, %650
  %667 = phi i8 [ 0, %660 ], [ 0, %662 ], [ 1, %664 ], [ 1, %650 ]
  %668 = phi i8 [ 0, %660 ], [ 0, %662 ], [ 0, %664 ], [ 1, %650 ]
  %669 = phi i8 [ 0, %660 ], [ 1, %662 ], [ 0, %664 ], [ 1, %650 ]
  store i8 %667, i8* %15, align 1
  store i8 %668, i8* %13, align 1
  store i8 %669, i8* %12, align 1
  br label %670

; <label>:670:                                    ; preds = %666, %664
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit1687

routine_ucomisd__xmm0___xmm1.exit1687:            ; preds = %670, %658
  %671 = phi i64 [ %.pre74, %658 ], [ %647, %670 ]
  %672 = phi %struct.Memory* [ %659, %658 ], [ %call2_4801dd, %670 ]
  %673 = add i64 %671, 37
  %674 = add i64 %671, 6
  %675 = load i8, i8* %12, align 1
  %676 = load i8, i8* %15, align 1
  %677 = or i8 %676, %675
  %678 = icmp ne i8 %677, 0
  %679 = select i1 %678, i64 %673, i64 %674
  store i64 %679, i64* %3, align 8
  br i1 %678, label %block_.L_48021d, label %block_4801fe

block_4801fe:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit1687
  %680 = add i64 %679, ptrtoint (%G_0x62e72__rip__type* @G_0x62e72__rip_ to i64)
  %681 = add i64 %679, 8
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i64*
  %683 = load i64, i64* %682, align 8
  %684 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %683, i64* %684, align 1
  %685 = bitcast i64* %.pre-phi202 to double*
  store double 0.000000e+00, double* %685, align 1
  %686 = load i64, i64* %RBP.i, align 8
  %687 = add i64 %686, -24
  %688 = add i64 %679, 13
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to float*
  %690 = load float, float* %689, align 4
  %691 = fpext float %690 to double
  store double %691, double* %629, align 1
  %692 = add i64 %679, 17
  store i64 %692, i64* %3, align 8
  %693 = bitcast i64 %683 to double
  %694 = fcmp uno double %691, %693
  br i1 %694, label %695, label %705

; <label>:695:                                    ; preds = %block_4801fe
  %696 = fadd double %691, %693
  %697 = bitcast double %696 to i64
  %698 = and i64 %697, 9221120237041090560
  %699 = icmp eq i64 %698, 9218868437227405312
  %700 = and i64 %697, 2251799813685247
  %701 = icmp ne i64 %700, 0
  %702 = and i1 %699, %701
  br i1 %702, label %703, label %711

; <label>:703:                                    ; preds = %695
  %704 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %692, %struct.Memory* %672)
  %.pre75 = load i64, i64* %3, align 8
  %.pre76 = load i8, i8* %12, align 1
  %.pre77 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit1675

; <label>:705:                                    ; preds = %block_4801fe
  %706 = fcmp ogt double %691, %693
  br i1 %706, label %711, label %707

; <label>:707:                                    ; preds = %705
  %708 = fcmp olt double %691, %693
  br i1 %708, label %711, label %709

; <label>:709:                                    ; preds = %707
  %710 = fcmp oeq double %691, %693
  br i1 %710, label %711, label %715

; <label>:711:                                    ; preds = %709, %707, %705, %695
  %712 = phi i8 [ 0, %705 ], [ 0, %707 ], [ 1, %709 ], [ 1, %695 ]
  %713 = phi i8 [ 0, %705 ], [ 0, %707 ], [ 0, %709 ], [ 1, %695 ]
  %714 = phi i8 [ 0, %705 ], [ 1, %707 ], [ 0, %709 ], [ 1, %695 ]
  store i8 %712, i8* %15, align 1
  store i8 %713, i8* %13, align 1
  store i8 %714, i8* %12, align 1
  br label %715

; <label>:715:                                    ; preds = %711, %709
  %716 = phi i8 [ %712, %711 ], [ %676, %709 ]
  %717 = phi i8 [ %714, %711 ], [ %675, %709 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit1675

routine_ucomisd__xmm0___xmm1.exit1675:            ; preds = %715, %703
  %718 = phi i8 [ %.pre77, %703 ], [ %716, %715 ]
  %719 = phi i8 [ %.pre76, %703 ], [ %717, %715 ]
  %720 = phi i64 [ %.pre75, %703 ], [ %692, %715 ]
  %721 = phi %struct.Memory* [ %704, %703 ], [ %672, %715 ]
  %722 = or i8 %718, %719
  %723 = icmp ne i8 %722, 0
  %.v222 = select i1 %723, i64 14, i64 6
  %724 = add i64 %720, %.v222
  store i64 %724, i64* %3, align 8
  br i1 %723, label %block_.L_48021d, label %block_480215

block_480215:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit1675
  store i32 0, i32* %.pre-phi198, align 1
  store i32 0, i32* %600, align 1
  store i32 0, i32* %602, align 1
  store i32 0, i32* %604, align 1
  %725 = load i64, i64* %RBP.i, align 8
  %726 = add i64 %725, -24
  %727 = add i64 %724, 8
  store i64 %727, i64* %3, align 8
  %728 = load <2 x float>, <2 x float>* %35, align 1
  %729 = extractelement <2 x float> %728, i32 0
  %730 = inttoptr i64 %726 to float*
  store float %729, float* %730, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_48021d

block_.L_48021d:                                  ; preds = %block_480215, %routine_ucomisd__xmm0___xmm1.exit1675, %routine_ucomisd__xmm0___xmm1.exit1687
  %731 = phi i64 [ %673, %routine_ucomisd__xmm0___xmm1.exit1687 ], [ %724, %routine_ucomisd__xmm0___xmm1.exit1675 ], [ %.pre78, %block_480215 ]
  %MEMORY.6 = phi %struct.Memory* [ %672, %routine_ucomisd__xmm0___xmm1.exit1687 ], [ %721, %routine_ucomisd__xmm0___xmm1.exit1675 ], [ %721, %block_480215 ]
  store i32 0, i32* %.pre-phi198, align 1
  store i32 0, i32* %600, align 1
  store i32 0, i32* %602, align 1
  store i32 0, i32* %604, align 1
  %732 = load i64, i64* %RBP.i, align 8
  %733 = add i64 %732, -24
  %734 = add i64 %731, 8
  store i64 %734, i64* %3, align 8
  %735 = inttoptr i64 %733 to float*
  %736 = load float, float* %735, align 4
  %737 = fpext float %736 to double
  store double %737, double* %629, align 1
  %738 = add i64 %731, 12
  store i64 %738, i64* %3, align 8
  %739 = load double, double* %646, align 1
  %740 = fcmp uno double %737, %739
  br i1 %740, label %741, label %751

; <label>:741:                                    ; preds = %block_.L_48021d
  %742 = fadd double %737, %739
  %743 = bitcast double %742 to i64
  %744 = and i64 %743, 9221120237041090560
  %745 = icmp eq i64 %744, 9218868437227405312
  %746 = and i64 %743, 2251799813685247
  %747 = icmp ne i64 %746, 0
  %748 = and i1 %745, %747
  br i1 %748, label %749, label %757

; <label>:749:                                    ; preds = %741
  %750 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %738, %struct.Memory* %MEMORY.6)
  %.pre79 = load i64, i64* %3, align 8
  %.pre80 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit1655

; <label>:751:                                    ; preds = %block_.L_48021d
  %752 = fcmp ogt double %737, %739
  br i1 %752, label %757, label %753

; <label>:753:                                    ; preds = %751
  %754 = fcmp olt double %737, %739
  br i1 %754, label %757, label %755

; <label>:755:                                    ; preds = %753
  %756 = fcmp oeq double %737, %739
  br i1 %756, label %757, label %761

; <label>:757:                                    ; preds = %755, %753, %751, %741
  %758 = phi i8 [ 0, %751 ], [ 0, %753 ], [ 1, %755 ], [ 1, %741 ]
  %759 = phi i8 [ 0, %751 ], [ 0, %753 ], [ 0, %755 ], [ 1, %741 ]
  %760 = phi i8 [ 0, %751 ], [ 1, %753 ], [ 0, %755 ], [ 1, %741 ]
  store i8 %758, i8* %15, align 1
  store i8 %759, i8* %13, align 1
  store i8 %760, i8* %12, align 1
  br label %761

; <label>:761:                                    ; preds = %757, %755
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit1655

routine_ucomisd__xmm0___xmm1.exit1655:            ; preds = %761, %749
  %762 = phi i64 [ %.pre80, %749 ], [ %732, %761 ]
  %763 = phi i64 [ %.pre79, %749 ], [ %738, %761 ]
  %764 = phi %struct.Memory* [ %750, %749 ], [ %MEMORY.6, %761 ]
  %765 = load i8, i8* %12, align 1
  %766 = load i8, i8* %15, align 1
  %767 = or i8 %766, %765
  %768 = icmp ne i8 %767, 0
  %.v257 = select i1 %768, i64 1986, i64 6
  %769 = add i64 %763, %.v257
  %770 = add i64 %769, 10
  store i64 %770, i64* %3, align 8
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  br i1 %768, label %block_.L_4809eb, label %block_48022f

block_48022f:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit1655
  %771 = add i64 %762, -8
  %772 = add i64 %769, 14
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i32*
  %774 = load i32, i32* %773, align 4
  %775 = sext i32 %774 to i64
  %776 = mul nsw i64 %775, 564
  store i64 %776, i64* %RCX.i1729.pre-phi, align 8
  %777 = lshr i64 %776, 63
  %778 = add i64 %776, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %778, i64* %RDX.i1725, align 8
  %779 = icmp ult i64 %778, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %780 = icmp ult i64 %778, %776
  %781 = or i1 %779, %780
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %12, align 1
  %783 = trunc i64 %778 to i32
  %784 = and i32 %783, 252
  %785 = tail call i32 @llvm.ctpop.i32(i32 %784)
  %786 = trunc i32 %785 to i8
  %787 = and i8 %786, 1
  %788 = xor i8 %787, 1
  store i8 %788, i8* %13, align 1
  %789 = xor i64 %776, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %790 = xor i64 %789, %778
  %791 = lshr i64 %790, 4
  %792 = trunc i64 %791 to i8
  %793 = and i8 %792, 1
  store i8 %793, i8* %14, align 1
  %794 = icmp eq i64 %778, 0
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %15, align 1
  %796 = lshr i64 %778, 63
  %797 = trunc i64 %796 to i8
  store i8 %797, i8* %16, align 1
  %798 = xor i64 %796, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %799 = xor i64 %796, %777
  %800 = add nuw nsw i64 %798, %799
  %801 = icmp eq i64 %800, 2
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %17, align 1
  %803 = add i64 %776, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 36)
  %804 = add i64 %769, 32
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  %806 = load i32, i32* %805, align 4
  store i32 %806, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %807 = add i64 %769, 36
  store i64 %807, i64* %3, align 8
  %808 = load i32, i32* %773, align 4
  %809 = sext i32 %808 to i64
  %810 = mul nsw i64 %809, 564
  store i64 %810, i64* %RCX.i1729.pre-phi, align 8
  %811 = lshr i64 %810, 63
  %812 = load i64, i64* %RAX.i1732.pre-phi, align 8
  %813 = add i64 %810, %812
  store i64 %813, i64* %RAX.i1732.pre-phi, align 8
  %814 = icmp ult i64 %813, %812
  %815 = icmp ult i64 %813, %810
  %816 = or i1 %814, %815
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %12, align 1
  %818 = trunc i64 %813 to i32
  %819 = and i32 %818, 255
  %820 = tail call i32 @llvm.ctpop.i32(i32 %819)
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = xor i8 %822, 1
  store i8 %823, i8* %13, align 1
  %824 = xor i64 %810, %812
  %825 = xor i64 %824, %813
  %826 = lshr i64 %825, 4
  %827 = trunc i64 %826 to i8
  %828 = and i8 %827, 1
  store i8 %828, i8* %14, align 1
  %829 = icmp eq i64 %813, 0
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %15, align 1
  %831 = lshr i64 %813, 63
  %832 = trunc i64 %831 to i8
  store i8 %832, i8* %16, align 1
  %833 = lshr i64 %812, 63
  %834 = xor i64 %831, %833
  %835 = xor i64 %831, %811
  %836 = add nuw nsw i64 %834, %835
  %837 = icmp eq i64 %836, 2
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %17, align 1
  %839 = add i64 %813, 40
  %840 = add i64 %769, 51
  store i64 %840, i64* %3, align 8
  %841 = load <2 x float>, <2 x float>* %35, align 1
  %842 = load <2 x i32>, <2 x i32>* %592, align 1
  %843 = inttoptr i64 %839 to float*
  %844 = load float, float* %843, align 4
  %845 = extractelement <2 x float> %841, i32 0
  %846 = fadd float %845, %844
  store float %846, float* %553, align 1
  %847 = bitcast <2 x float> %841 to <2 x i32>
  %848 = extractelement <2 x i32> %847, i32 1
  store i32 %848, i32* %600, align 1
  %849 = extractelement <2 x i32> %842, i32 0
  store i32 %849, i32* %602, align 1
  %850 = extractelement <2 x i32> %842, i32 1
  store i32 %850, i32* %604, align 1
  %851 = load i64, i64* %RBP.i, align 8
  %852 = add i64 %851, -40
  %853 = add i64 %769, 56
  store i64 %853, i64* %3, align 8
  %854 = load <2 x float>, <2 x float>* %35, align 1
  %855 = extractelement <2 x float> %854, i32 0
  %856 = inttoptr i64 %852 to float*
  store float %855, float* %856, align 4
  %857 = load i64, i64* %3, align 8
  %858 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %859 = and i32 %858, 255
  %860 = tail call i32 @llvm.ctpop.i32(i32 %859)
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  %863 = xor i8 %862, 1
  store i8 %863, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %864 = icmp eq i32 %858, 0
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %15, align 1
  %866 = lshr i32 %858, 31
  %867 = trunc i32 %866 to i8
  store i8 %867, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v223 = select i1 %864, i64 14, i64 19
  %868 = add i64 %857, %.v223
  store i64 %868, i64* %3, align 8
  br i1 %864, label %block_480275, label %block_.L_48027a

block_480275:                                     ; preds = %block_48022f
  %869 = add i64 %868, 62
  store i64 %869, i64* %3, align 8
  br label %block_.L_4802b3

block_.L_48027a:                                  ; preds = %block_48022f
  store i64 ptrtoint (%G__0x582044_type* @G__0x582044 to i64), i64* %RDI.i776.pre-phi, align 8
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %RSI.i1612 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %870 = load i64, i64* %RBP.i, align 8
  %871 = add i64 %870, -8
  %872 = add i64 %868, 23
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i32*
  %874 = load i32, i32* %873, align 4
  %875 = zext i32 %874 to i64
  store i64 %875, i64* %RSI.i1612, align 8
  %876 = add i64 %870, -40
  %877 = add i64 %868, 28
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %876 to float*
  %879 = load float, float* %878, align 4
  %880 = fpext float %879 to double
  store double %880, double* %646, align 1
  %881 = add i64 %868, 32
  store i64 %881, i64* %3, align 8
  %882 = load i32, i32* %873, align 4
  %883 = sext i32 %882 to i64
  %884 = mul nsw i64 %883, 564
  store i64 %884, i64* %RCX.i1729.pre-phi, align 8
  %885 = lshr i64 %884, 63
  %886 = add i64 %884, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %886, i64* %RAX.i1732.pre-phi, align 8
  %887 = icmp ult i64 %886, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %888 = icmp ult i64 %886, %884
  %889 = or i1 %887, %888
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %12, align 1
  %891 = trunc i64 %886 to i32
  %892 = and i32 %891, 252
  %893 = tail call i32 @llvm.ctpop.i32(i32 %892)
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  %896 = xor i8 %895, 1
  store i8 %896, i8* %13, align 1
  %897 = xor i64 %884, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %898 = xor i64 %897, %886
  %899 = lshr i64 %898, 4
  %900 = trunc i64 %899 to i8
  %901 = and i8 %900, 1
  store i8 %901, i8* %14, align 1
  %902 = icmp eq i64 %886, 0
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %15, align 1
  %904 = lshr i64 %886, 63
  %905 = trunc i64 %904 to i8
  store i8 %905, i8* %16, align 1
  %906 = xor i64 %904, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %907 = xor i64 %904, %885
  %908 = add nuw nsw i64 %906, %907
  %909 = icmp eq i64 %908, 2
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %17, align 1
  %911 = add i64 %884, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 40)
  %912 = add i64 %868, 47
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to float*
  %914 = load float, float* %913, align 4
  %915 = fpext float %914 to double
  store double %915, double* %629, align 1
  %AL.i1596 = bitcast %union.anon* %EAX.i819.pre-phi.in to i8*
  store i8 2, i8* %AL.i1596, align 1
  %916 = add i64 %868, -189642
  %917 = add i64 %868, 54
  %918 = load i64, i64* %6, align 8
  %919 = add i64 %918, -8
  %920 = inttoptr i64 %919 to i64*
  store i64 %917, i64* %920, align 8
  store i64 %919, i64* %6, align 8
  store i64 %916, i64* %3, align 8
  %call2_4802ab = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %916, %struct.Memory* %764)
  %921 = load i64, i64* %RBP.i, align 8
  %922 = add i64 %921, -84
  %923 = load i32, i32* %EAX.i819.pre-phi, align 4
  %924 = load i64, i64* %3, align 8
  %925 = add i64 %924, 3
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %922 to i32*
  store i32 %923, i32* %926, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_4802b3

block_.L_4802b3:                                  ; preds = %block_.L_48027a, %block_480275
  %927 = phi i64 [ %.pre81, %block_.L_48027a ], [ %869, %block_480275 ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_4802ab, %block_.L_48027a ], [ %764, %block_480275 ]
  %928 = add i64 %927, ptrtoint (%G_0x62ccd__rip__type* @G_0x62ccd__rip_ to i64)
  %929 = add i64 %927, 8
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %928 to i64*
  %931 = load i64, i64* %930, align 8
  %932 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %931, i64* %932, align 1
  %933 = bitcast i64* %.pre-phi202 to double*
  store double 0.000000e+00, double* %933, align 1
  %934 = load i64, i64* %RBP.i, align 8
  %935 = add i64 %934, -24
  %936 = add i64 %927, 13
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to float*
  %938 = load float, float* %937, align 4
  %939 = fpext float %938 to double
  store double %939, double* %629, align 1
  %940 = add i64 %927, 17
  store i64 %940, i64* %3, align 8
  %941 = bitcast i64 %931 to double
  %942 = fcmp uno double %939, %941
  br i1 %942, label %943, label %953

; <label>:943:                                    ; preds = %block_.L_4802b3
  %944 = fadd double %939, %941
  %945 = bitcast double %944 to i64
  %946 = and i64 %945, 9221120237041090560
  %947 = icmp eq i64 %946, 9218868437227405312
  %948 = and i64 %945, 2251799813685247
  %949 = icmp ne i64 %948, 0
  %950 = and i1 %947, %949
  br i1 %950, label %951, label %959

; <label>:951:                                    ; preds = %943
  %952 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %940, %struct.Memory* %MEMORY.7)
  %.pre82 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit1583

; <label>:953:                                    ; preds = %block_.L_4802b3
  %954 = fcmp ogt double %939, %941
  br i1 %954, label %959, label %955

; <label>:955:                                    ; preds = %953
  %956 = fcmp olt double %939, %941
  br i1 %956, label %959, label %957

; <label>:957:                                    ; preds = %955
  %958 = fcmp oeq double %939, %941
  br i1 %958, label %959, label %963

; <label>:959:                                    ; preds = %957, %955, %953, %943
  %960 = phi i8 [ 0, %953 ], [ 0, %955 ], [ 1, %957 ], [ 1, %943 ]
  %961 = phi i8 [ 0, %953 ], [ 0, %955 ], [ 0, %957 ], [ 1, %943 ]
  %962 = phi i8 [ 0, %953 ], [ 1, %955 ], [ 0, %957 ], [ 1, %943 ]
  store i8 %960, i8* %15, align 1
  store i8 %961, i8* %13, align 1
  store i8 %962, i8* %12, align 1
  br label %963

; <label>:963:                                    ; preds = %959, %957
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit1583

routine_ucomisd__xmm0___xmm1.exit1583:            ; preds = %963, %951
  %964 = phi i64 [ %.pre82, %951 ], [ %940, %963 ]
  %965 = phi %struct.Memory* [ %952, %951 ], [ %MEMORY.7, %963 ]
  %966 = add i64 %964, 53
  %967 = add i64 %964, 6
  %968 = load i8, i8* %12, align 1
  %969 = icmp eq i8 %968, 0
  %970 = select i1 %969, i64 %966, i64 %967
  store i64 %970, i64* %3, align 8
  br i1 %969, label %block_.L_4802f9, label %block_4802ca

block_4802ca:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit1583
  %971 = add i64 %970, ptrtoint (%G_0x62c8e__rip__type* @G_0x62c8e__rip_ to i64)
  %972 = add i64 %970, 8
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i64*
  %974 = load i64, i64* %973, align 8
  store i64 %974, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %975 = load i64, i64* %RBP.i, align 8
  %976 = add i64 %975, -8
  %977 = add i64 %970, 22
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i32*
  %979 = load i32, i32* %978, align 4
  %980 = sext i32 %979 to i64
  %981 = mul nsw i64 %980, 564
  store i64 %981, i64* %RCX.i1729.pre-phi, align 8
  %982 = lshr i64 %981, 63
  %983 = add i64 %981, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %983, i64* %RAX.i1732.pre-phi, align 8
  %984 = icmp ult i64 %983, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %985 = icmp ult i64 %983, %981
  %986 = or i1 %984, %985
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %12, align 1
  %988 = trunc i64 %983 to i32
  %989 = and i32 %988, 252
  %990 = tail call i32 @llvm.ctpop.i32(i32 %989)
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  %993 = xor i8 %992, 1
  store i8 %993, i8* %13, align 1
  %994 = xor i64 %981, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %995 = xor i64 %994, %983
  %996 = lshr i64 %995, 4
  %997 = trunc i64 %996 to i8
  %998 = and i8 %997, 1
  store i8 %998, i8* %14, align 1
  %999 = icmp eq i64 %983, 0
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %15, align 1
  %1001 = lshr i64 %983, 63
  %1002 = trunc i64 %1001 to i8
  store i8 %1002, i8* %16, align 1
  %1003 = xor i64 %1001, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %1004 = xor i64 %1001, %982
  %1005 = add nuw nsw i64 %1003, %1004
  %1006 = icmp eq i64 %1005, 2
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %17, align 1
  %1008 = add i64 %981, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 44)
  %1009 = add i64 %970, 37
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1008 to float*
  %1011 = load float, float* %1010, align 4
  %1012 = fpext float %1011 to double
  store double %1012, double* %629, align 1
  %1013 = add i64 %970, 41
  store i64 %1013, i64* %3, align 8
  %1014 = bitcast i64 %974 to double
  %1015 = fcmp uno double %1012, %1014
  br i1 %1015, label %1016, label %1026

; <label>:1016:                                   ; preds = %block_4802ca
  %1017 = fadd double %1012, %1014
  %1018 = bitcast double %1017 to i64
  %1019 = and i64 %1018, 9221120237041090560
  %1020 = icmp eq i64 %1019, 9218868437227405312
  %1021 = and i64 %1018, 2251799813685247
  %1022 = icmp ne i64 %1021, 0
  %1023 = and i1 %1020, %1022
  br i1 %1023, label %1024, label %1032

; <label>:1024:                                   ; preds = %1016
  %1025 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1013, %struct.Memory* %965)
  %.pre83 = load i64, i64* %3, align 8
  %.pre84 = load i8, i8* %12, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit1562

; <label>:1026:                                   ; preds = %block_4802ca
  %1027 = fcmp ogt double %1012, %1014
  br i1 %1027, label %1032, label %1028

; <label>:1028:                                   ; preds = %1026
  %1029 = fcmp olt double %1012, %1014
  br i1 %1029, label %1032, label %1030

; <label>:1030:                                   ; preds = %1028
  %1031 = fcmp oeq double %1012, %1014
  br i1 %1031, label %1032, label %1036

; <label>:1032:                                   ; preds = %1030, %1028, %1026, %1016
  %1033 = phi i8 [ 0, %1026 ], [ 0, %1028 ], [ 1, %1030 ], [ 1, %1016 ]
  %1034 = phi i8 [ 0, %1026 ], [ 0, %1028 ], [ 0, %1030 ], [ 1, %1016 ]
  %1035 = phi i8 [ 0, %1026 ], [ 1, %1028 ], [ 0, %1030 ], [ 1, %1016 ]
  store i8 %1033, i8* %15, align 1
  store i8 %1034, i8* %13, align 1
  store i8 %1035, i8* %12, align 1
  br label %1036

; <label>:1036:                                   ; preds = %1032, %1030
  %1037 = phi i8 [ %1035, %1032 ], [ %987, %1030 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit1562

routine_ucomisd__xmm0___xmm1.exit1562:            ; preds = %1036, %1024
  %1038 = phi i8 [ %.pre84, %1024 ], [ %1037, %1036 ]
  %1039 = phi i64 [ %.pre83, %1024 ], [ %1013, %1036 ]
  %1040 = phi %struct.Memory* [ %1025, %1024 ], [ %965, %1036 ]
  %1041 = icmp ne i8 %1038, 0
  %.v224 = select i1 %1041, i64 819, i64 6
  %1042 = add i64 %1039, %.v224
  store i64 %1042, i64* %3, align 8
  %cmpBr_4802f3 = icmp eq i8 %1038, 1
  br i1 %cmpBr_4802f3, label %block_.L_480626, label %block_.L_4802f9

block_.L_4802f9:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit1562, %routine_ucomisd__xmm0___xmm1.exit1583
  %1043 = phi i64 [ %966, %routine_ucomisd__xmm0___xmm1.exit1583 ], [ %1042, %routine_ucomisd__xmm0___xmm1.exit1562 ]
  %MEMORY.8 = phi %struct.Memory* [ %965, %routine_ucomisd__xmm0___xmm1.exit1583 ], [ %1040, %routine_ucomisd__xmm0___xmm1.exit1562 ]
  %1044 = add i64 %1043, ptrtoint (%G_0x62c5f__rip__type* @G_0x62c5f__rip_ to i64)
  %1045 = add i64 %1043, 8
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i64*
  %1047 = load i64, i64* %1046, align 8
  store i64 %1047, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  %1048 = add i64 %1043, add (i64 ptrtoint (%G_0x62c7f__rip__type* @G_0x62c7f__rip_ to i64), i64 8)
  %1049 = add i64 %1043, 16
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i64*
  %1051 = load i64, i64* %1050, align 8
  store i64 %1051, i64* %630, align 1
  store double 0.000000e+00, double* %632, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %1053 = bitcast %union.VectorReg* %1052 to i8*
  %1054 = load i64, i64* %RBP.i, align 8
  %1055 = add i64 %1054, -24
  %1056 = add i64 %1043, 31
  store i64 %1056, i64* %3, align 8
  %1057 = inttoptr i64 %1055 to i32*
  %1058 = load i32, i32* %1057, align 4
  %1059 = bitcast %union.VectorReg* %1052 to float*
  %1060 = bitcast %union.VectorReg* %1052 to i32*
  store i32 %1058, i32* %1060, align 1
  %1061 = getelementptr inbounds i8, i8* %1053, i64 4
  %1062 = bitcast i8* %1061 to float*
  store float 0.000000e+00, float* %1062, align 1
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %1064 = bitcast i64* %1063 to float*
  store float 0.000000e+00, float* %1064, align 1
  %1065 = getelementptr inbounds i8, i8* %1053, i64 12
  %1066 = bitcast i8* %1065 to float*
  store float 0.000000e+00, float* %1066, align 1
  %1067 = add i64 %1054, -44
  %1068 = add i64 %1043, 36
  store i64 %1068, i64* %3, align 8
  %1069 = bitcast %union.VectorReg* %1052 to <2 x float>*
  %1070 = load <2 x float>, <2 x float>* %1069, align 1
  %1071 = extractelement <2 x float> %1070, i32 0
  %1072 = inttoptr i64 %1067 to float*
  store float %1071, float* %1072, align 4
  %1073 = load i64, i64* %RBP.i, align 8
  %1074 = add i64 %1073, -40
  %1075 = load i64, i64* %3, align 8
  %1076 = add i64 %1075, 5
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1074 to float*
  %1078 = load float, float* %1077, align 4
  %1079 = fpext float %1078 to double
  %1080 = bitcast %union.VectorReg* %1052 to double*
  store double %1079, double* %1080, align 1
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %1082 = bitcast %union.VectorReg* %1081 to i8*
  %1083 = bitcast %union.VectorReg* %39 to <2 x i32>*
  %1084 = load <2 x i32>, <2 x i32>* %1083, align 1
  %1085 = bitcast i64* %631 to <2 x i32>*
  %1086 = load <2 x i32>, <2 x i32>* %1085, align 1
  %1087 = extractelement <2 x i32> %1084, i32 0
  %1088 = bitcast %union.VectorReg* %1081 to i32*
  store i32 %1087, i32* %1088, align 1
  %1089 = extractelement <2 x i32> %1084, i32 1
  %1090 = getelementptr inbounds i8, i8* %1082, i64 4
  %1091 = bitcast i8* %1090 to i32*
  store i32 %1089, i32* %1091, align 1
  %1092 = extractelement <2 x i32> %1086, i32 0
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %1094 = bitcast i64* %1093 to i32*
  store i32 %1092, i32* %1094, align 1
  %1095 = extractelement <2 x i32> %1086, i32 1
  %1096 = getelementptr inbounds i8, i8* %1082, i64 12
  %1097 = bitcast i8* %1096 to i32*
  store i32 %1095, i32* %1097, align 1
  %1098 = bitcast %union.VectorReg* %1081 to double*
  %1099 = load double, double* %1098, align 1
  %1100 = fmul double %1099, %1079
  store double %1100, double* %1098, align 1
  %1101 = add i64 %1073, -8
  %1102 = add i64 %1075, 16
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i32*
  %1104 = load i32, i32* %1103, align 4
  %1105 = sext i32 %1104 to i64
  %1106 = mul nsw i64 %1105, 564
  store i64 %1106, i64* %RCX.i1729.pre-phi, align 8
  %1107 = lshr i64 %1106, 63
  %1108 = load i64, i64* %RAX.i1732.pre-phi, align 8
  %1109 = add i64 %1106, %1108
  store i64 %1109, i64* %RAX.i1732.pre-phi, align 8
  %1110 = icmp ult i64 %1109, %1108
  %1111 = icmp ult i64 %1109, %1106
  %1112 = or i1 %1110, %1111
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %12, align 1
  %1114 = trunc i64 %1109 to i32
  %1115 = and i32 %1114, 255
  %1116 = tail call i32 @llvm.ctpop.i32(i32 %1115)
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  %1119 = xor i8 %1118, 1
  store i8 %1119, i8* %13, align 1
  %1120 = xor i64 %1106, %1108
  %1121 = xor i64 %1120, %1109
  %1122 = lshr i64 %1121, 4
  %1123 = trunc i64 %1122 to i8
  %1124 = and i8 %1123, 1
  store i8 %1124, i8* %14, align 1
  %1125 = icmp eq i64 %1109, 0
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %15, align 1
  %1127 = lshr i64 %1109, 63
  %1128 = trunc i64 %1127 to i8
  store i8 %1128, i8* %16, align 1
  %1129 = lshr i64 %1108, 63
  %1130 = xor i64 %1127, %1129
  %1131 = xor i64 %1127, %1107
  %1132 = add nuw nsw i64 %1130, %1131
  %1133 = icmp eq i64 %1132, 2
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %17, align 1
  %1135 = add i64 %1109, 44
  %1136 = add i64 %1075, 31
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to float*
  %1138 = load float, float* %1137, align 4
  %1139 = fpext float %1138 to double
  store double %1139, double* %1080, align 1
  %1140 = load double, double* %629, align 1
  %1141 = fmul double %1139, %1140
  store double %1141, double* %629, align 1
  %1142 = fadd double %1141, %1100
  store double %1142, double* %1098, align 1
  %1143 = load i64, i64* %RBP.i, align 8
  %1144 = add i64 %1143, -24
  %1145 = add i64 %1075, 44
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to float*
  %1147 = load float, float* %1146, align 4
  %1148 = fpext float %1147 to double
  store double %1148, double* %629, align 1
  %1149 = load double, double* %646, align 1
  %1150 = fmul double %1148, %1149
  store double %1150, double* %646, align 1
  %1151 = add i64 %1143, -40
  %1152 = add i64 %1075, 53
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to float*
  %1154 = load float, float* %1153, align 4
  %1155 = fpext float %1154 to double
  store double %1155, double* %629, align 1
  %1156 = fadd double %1155, %1150
  store double %1156, double* %646, align 1
  %1157 = add i64 %1075, 61
  store i64 %1157, i64* %3, align 8
  %1158 = fcmp uno double %1156, %1142
  br i1 %1158, label %1159, label %1169

; <label>:1159:                                   ; preds = %block_.L_4802f9
  %1160 = fadd double %1156, %1142
  %1161 = bitcast double %1160 to i64
  %1162 = and i64 %1161, 9221120237041090560
  %1163 = icmp eq i64 %1162, 9218868437227405312
  %1164 = and i64 %1161, 2251799813685247
  %1165 = icmp ne i64 %1164, 0
  %1166 = and i1 %1163, %1165
  br i1 %1166, label %1167, label %1175

; <label>:1167:                                   ; preds = %1159
  %1168 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1157, %struct.Memory* %MEMORY.8)
  %.pre85 = load i64, i64* %3, align 8
  %.pre86 = load i8, i8* %12, align 1
  %.pre87 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm3___xmm0.exit1506

; <label>:1169:                                   ; preds = %block_.L_4802f9
  %1170 = fcmp ogt double %1156, %1142
  br i1 %1170, label %1175, label %1171

; <label>:1171:                                   ; preds = %1169
  %1172 = fcmp olt double %1156, %1142
  br i1 %1172, label %1175, label %1173

; <label>:1173:                                   ; preds = %1171
  %1174 = fcmp oeq double %1156, %1142
  br i1 %1174, label %1175, label %1179

; <label>:1175:                                   ; preds = %1173, %1171, %1169, %1159
  %1176 = phi i8 [ 0, %1169 ], [ 0, %1171 ], [ 1, %1173 ], [ 1, %1159 ]
  %1177 = phi i8 [ 0, %1169 ], [ 0, %1171 ], [ 0, %1173 ], [ 1, %1159 ]
  %1178 = phi i8 [ 0, %1169 ], [ 1, %1171 ], [ 0, %1173 ], [ 1, %1159 ]
  store i8 %1176, i8* %15, align 1
  store i8 %1177, i8* %13, align 1
  store i8 %1178, i8* %12, align 1
  br label %1179

; <label>:1179:                                   ; preds = %1175, %1173
  %1180 = phi i8 [ %1176, %1175 ], [ %1126, %1173 ]
  %1181 = phi i8 [ %1178, %1175 ], [ %1113, %1173 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm3___xmm0.exit1506

routine_ucomisd__xmm3___xmm0.exit1506:            ; preds = %1179, %1167
  %1182 = phi i8 [ %.pre87, %1167 ], [ %1180, %1179 ]
  %1183 = phi i8 [ %.pre86, %1167 ], [ %1181, %1179 ]
  %1184 = phi i64 [ %.pre85, %1167 ], [ %1157, %1179 ]
  %1185 = phi %struct.Memory* [ %1168, %1167 ], [ %MEMORY.8, %1179 ]
  %1186 = or i8 %1182, %1183
  %1187 = icmp ne i8 %1186, 0
  %.v225 = select i1 %1187, i64 73, i64 6
  %1188 = add i64 %1184, %.v225
  store i64 %1188, i64* %3, align 8
  br i1 %1187, label %block_.L_4803a3, label %block_480360

block_480360:                                     ; preds = %routine_ucomisd__xmm3___xmm0.exit1506
  %1189 = add i64 %1188, ptrtoint (%G_0x62c20__rip__type* @G_0x62c20__rip_ to i64)
  %1190 = add i64 %1188, 8
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i64*
  %1192 = load i64, i64* %1191, align 8
  store i64 %1192, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %1193 = load i64, i64* %RBP.i, align 8
  %1194 = add i64 %1193, -40
  %1195 = add i64 %1188, 23
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to float*
  %1197 = load float, float* %1196, align 4
  %1198 = fpext float %1197 to double
  store double %1198, double* %629, align 1
  %1199 = bitcast i64 %1192 to <2 x i32>
  %1200 = extractelement <2 x i32> %1199, i32 0
  store i32 %1200, i32* %1060, align 1
  %1201 = extractelement <2 x i32> %1199, i32 1
  %1202 = bitcast i8* %1061 to i32*
  store i32 %1201, i32* %1202, align 1
  %1203 = bitcast i64* %1063 to i32*
  store i32 0, i32* %1203, align 1
  %1204 = bitcast i8* %1065 to i32*
  store i32 0, i32* %1204, align 1
  %1205 = load double, double* %1080, align 1
  %1206 = fmul double %1205, %1198
  store double %1206, double* %1080, align 1
  %1207 = add i64 %1193, -8
  %1208 = add i64 %1188, 34
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1207 to i32*
  %1210 = load i32, i32* %1209, align 4
  %1211 = sext i32 %1210 to i64
  %1212 = mul nsw i64 %1211, 564
  store i64 %1212, i64* %RCX.i1729.pre-phi, align 8
  %1213 = lshr i64 %1212, 63
  %1214 = add i64 %1212, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %1214, i64* %RAX.i1732.pre-phi, align 8
  %1215 = icmp ult i64 %1214, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1216 = icmp ult i64 %1214, %1212
  %1217 = or i1 %1215, %1216
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %12, align 1
  %1219 = trunc i64 %1214 to i32
  %1220 = and i32 %1219, 252
  %1221 = tail call i32 @llvm.ctpop.i32(i32 %1220)
  %1222 = trunc i32 %1221 to i8
  %1223 = and i8 %1222, 1
  %1224 = xor i8 %1223, 1
  store i8 %1224, i8* %13, align 1
  %1225 = xor i64 %1212, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1226 = xor i64 %1225, %1214
  %1227 = lshr i64 %1226, 4
  %1228 = trunc i64 %1227 to i8
  %1229 = and i8 %1228, 1
  store i8 %1229, i8* %14, align 1
  %1230 = icmp eq i64 %1214, 0
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %15, align 1
  %1232 = lshr i64 %1214, 63
  %1233 = trunc i64 %1232 to i8
  store i8 %1233, i8* %16, align 1
  %1234 = xor i64 %1232, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %1235 = xor i64 %1232, %1213
  %1236 = add nuw nsw i64 %1234, %1235
  %1237 = icmp eq i64 %1236, 2
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %17, align 1
  %1239 = add i64 %1212, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 44)
  %1240 = add i64 %1188, 49
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1239 to float*
  %1242 = load float, float* %1241, align 4
  %1243 = fpext float %1242 to double
  store double %1243, double* %629, align 1
  %1244 = load double, double* %646, align 1
  %1245 = fmul double %1243, %1244
  store double %1245, double* %646, align 1
  %1246 = fadd double %1245, %1206
  store double %1246, double* %1080, align 1
  %1247 = load i64, i64* %RBP.i, align 8
  %1248 = add i64 %1247, -96
  %1249 = add i64 %1188, 62
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1248 to double*
  store double %1246, double* %1250, align 8
  %1251 = load i64, i64* %3, align 8
  %1252 = add i64 %1251, 36
  store i64 %1252, i64* %3, align 8
  br label %block_.L_4803c2

block_.L_4803a3:                                  ; preds = %routine_ucomisd__xmm3___xmm0.exit1506
  %1253 = add i64 %1188, ptrtoint (%G_0x62bb5__rip__type* @G_0x62bb5__rip_ to i64)
  %1254 = add i64 %1188, 8
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i64*
  %1256 = load i64, i64* %1255, align 8
  store i64 %1256, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  %1257 = load i64, i64* %RBP.i, align 8
  %1258 = add i64 %1257, -24
  %1259 = add i64 %1188, 13
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to float*
  %1261 = load float, float* %1260, align 4
  %1262 = fpext float %1261 to double
  store double %1262, double* %629, align 1
  %1263 = bitcast i64 %1256 to double
  %1264 = fmul double %1262, %1263
  store double %1264, double* %646, align 1
  store i64 0, i64* %.pre-phi202, align 1
  %1265 = add i64 %1257, -40
  %1266 = add i64 %1188, 22
  store i64 %1266, i64* %3, align 8
  %1267 = inttoptr i64 %1265 to float*
  %1268 = load float, float* %1267, align 4
  %1269 = fpext float %1268 to double
  store double %1269, double* %629, align 1
  %1270 = fadd double %1269, %1264
  store double %1270, double* %646, align 1
  store i64 0, i64* %.pre-phi202, align 1
  %1271 = add i64 %1257, -96
  %1272 = add i64 %1188, 31
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to double*
  store double %1270, double* %1273, align 8
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_4803c2

block_.L_4803c2:                                  ; preds = %block_.L_4803a3, %block_480360
  %1274 = phi i64 [ %.pre88, %block_.L_4803a3 ], [ %1252, %block_480360 ]
  %1275 = load i64, i64* %RBP.i, align 8
  %1276 = add i64 %1275, -96
  %1277 = add i64 %1274, 5
  store i64 %1277, i64* %3, align 8
  %1278 = inttoptr i64 %1276 to i64*
  %1279 = load i64, i64* %1278, align 8
  store i64 %1279, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %1280 = add i64 %1274, add (i64 ptrtoint (%G_0x62caf__rip__type* @G_0x62caf__rip_ to i64), i64 15)
  %1281 = add i64 %1274, 23
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1280 to i64*
  %1283 = load i64, i64* %1282, align 8
  store i64 %1283, i64* %630, align 1
  store double 0.000000e+00, double* %632, align 1
  %1284 = add i64 %1275, -24
  %1285 = add i64 %1274, 28
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to float*
  %1287 = load float, float* %1286, align 4
  %1288 = fpext float %1287 to double
  store double %1288, double* %1080, align 1
  %1289 = bitcast i64 %1283 to double
  %1290 = fmul double %1288, %1289
  store double %1290, double* %629, align 1
  store i64 0, i64* %631, align 1
  %1291 = add i64 %1275, -8
  %1292 = add i64 %1274, 36
  store i64 %1292, i64* %3, align 8
  %1293 = inttoptr i64 %1291 to i32*
  %1294 = load i32, i32* %1293, align 4
  %1295 = sext i32 %1294 to i64
  %1296 = mul nsw i64 %1295, 564
  store i64 %1296, i64* %RCX.i1729.pre-phi, align 8
  %1297 = lshr i64 %1296, 63
  %1298 = add i64 %1296, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %1298, i64* %RAX.i1732.pre-phi, align 8
  %1299 = icmp ult i64 %1298, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1300 = icmp ult i64 %1298, %1296
  %1301 = or i1 %1299, %1300
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %12, align 1
  %1303 = trunc i64 %1298 to i32
  %1304 = and i32 %1303, 252
  %1305 = tail call i32 @llvm.ctpop.i32(i32 %1304)
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  %1308 = xor i8 %1307, 1
  store i8 %1308, i8* %13, align 1
  %1309 = xor i64 %1296, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1310 = xor i64 %1309, %1298
  %1311 = lshr i64 %1310, 4
  %1312 = trunc i64 %1311 to i8
  %1313 = and i8 %1312, 1
  store i8 %1313, i8* %14, align 1
  %1314 = icmp eq i64 %1298, 0
  %1315 = zext i1 %1314 to i8
  store i8 %1315, i8* %15, align 1
  %1316 = lshr i64 %1298, 63
  %1317 = trunc i64 %1316 to i8
  store i8 %1317, i8* %16, align 1
  %1318 = xor i64 %1316, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %1319 = xor i64 %1316, %1297
  %1320 = add nuw nsw i64 %1318, %1319
  %1321 = icmp eq i64 %1320, 2
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %17, align 1
  %1323 = add i64 %1296, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 44)
  %1324 = add i64 %1274, 51
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1323 to float*
  %1326 = load float, float* %1325, align 4
  %1327 = fpext float %1326 to double
  store double %1327, double* %1080, align 1
  %1328 = fadd double %1327, %1290
  store double %1328, double* %629, align 1
  store i64 0, i64* %631, align 1
  %1329 = add i64 %1274, 59
  store i64 %1329, i64* %3, align 8
  %1330 = load double, double* %646, align 1
  %1331 = fcmp uno double %1328, %1330
  br i1 %1331, label %1332, label %1342

; <label>:1332:                                   ; preds = %block_.L_4803c2
  %1333 = fadd double %1328, %1330
  %1334 = bitcast double %1333 to i64
  %1335 = and i64 %1334, 9221120237041090560
  %1336 = icmp eq i64 %1335, 9218868437227405312
  %1337 = and i64 %1334, 2251799813685247
  %1338 = icmp ne i64 %1337, 0
  %1339 = and i1 %1336, %1338
  br i1 %1339, label %1340, label %1348

; <label>:1340:                                   ; preds = %1332
  %1341 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1329, %struct.Memory* %1185)
  %.pre89 = load i64, i64* %3, align 8
  %.pre90 = load i8, i8* %12, align 1
  %.pre91 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit1422

; <label>:1342:                                   ; preds = %block_.L_4803c2
  %1343 = fcmp ogt double %1328, %1330
  br i1 %1343, label %1348, label %1344

; <label>:1344:                                   ; preds = %1342
  %1345 = fcmp olt double %1328, %1330
  br i1 %1345, label %1348, label %1346

; <label>:1346:                                   ; preds = %1344
  %1347 = fcmp oeq double %1328, %1330
  br i1 %1347, label %1348, label %1352

; <label>:1348:                                   ; preds = %1346, %1344, %1342, %1332
  %1349 = phi i8 [ 0, %1342 ], [ 0, %1344 ], [ 1, %1346 ], [ 1, %1332 ]
  %1350 = phi i8 [ 0, %1342 ], [ 0, %1344 ], [ 0, %1346 ], [ 1, %1332 ]
  %1351 = phi i8 [ 0, %1342 ], [ 1, %1344 ], [ 0, %1346 ], [ 1, %1332 ]
  store i8 %1349, i8* %15, align 1
  store i8 %1350, i8* %13, align 1
  store i8 %1351, i8* %12, align 1
  br label %1352

; <label>:1352:                                   ; preds = %1348, %1346
  %1353 = phi i8 [ %1349, %1348 ], [ %1315, %1346 ]
  %1354 = phi i8 [ %1351, %1348 ], [ %1302, %1346 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit1422

routine_ucomisd__xmm0___xmm1.exit1422:            ; preds = %1352, %1340
  %1355 = phi i8 [ %.pre91, %1340 ], [ %1353, %1352 ]
  %1356 = phi i8 [ %.pre90, %1340 ], [ %1354, %1352 ]
  %1357 = phi i64 [ %.pre89, %1340 ], [ %1329, %1352 ]
  %1358 = phi %struct.Memory* [ %1341, %1340 ], [ %1185, %1352 ]
  %1359 = or i8 %1355, %1356
  %1360 = icmp ne i8 %1359, 0
  %.v226 = select i1 %1360, i64 212, i64 6
  %1361 = add i64 %1357, %.v226
  store i64 %1361, i64* %3, align 8
  br i1 %1360, label %block_.L_4804d1, label %block_480403

block_480403:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit1422
  %1362 = add i64 %1361, ptrtoint (%G_0x62b55__rip__type* @G_0x62b55__rip_ to i64)
  %1363 = add i64 %1361, 8
  store i64 %1363, i64* %3, align 8
  %1364 = inttoptr i64 %1362 to i64*
  %1365 = load i64, i64* %1364, align 8
  store i64 %1365, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  %1366 = add i64 %1361, add (i64 ptrtoint (%G_0x62b75__rip__type* @G_0x62b75__rip_ to i64), i64 8)
  %1367 = add i64 %1361, 16
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i64*
  %1369 = load i64, i64* %1368, align 8
  store i64 %1369, i64* %630, align 1
  store double 0.000000e+00, double* %632, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %1370 = load i64, i64* %RBP.i, align 8
  %1371 = add i64 %1370, -40
  %1372 = add i64 %1361, 31
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1371 to float*
  %1374 = load float, float* %1373, align 4
  %1375 = fpext float %1374 to double
  store double %1375, double* %1080, align 1
  %1376 = bitcast i64 %1369 to <2 x i32>
  %1377 = extractelement <2 x i32> %1376, i32 0
  store i32 %1377, i32* %1088, align 1
  %1378 = extractelement <2 x i32> %1376, i32 1
  store i32 %1378, i32* %1091, align 1
  store i32 0, i32* %1094, align 1
  store i32 0, i32* %1097, align 1
  %1379 = load double, double* %1098, align 1
  %1380 = fmul double %1379, %1375
  store double %1380, double* %1098, align 1
  %1381 = add i64 %1370, -8
  %1382 = add i64 %1361, 42
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1381 to i32*
  %1384 = load i32, i32* %1383, align 4
  %1385 = sext i32 %1384 to i64
  %1386 = mul nsw i64 %1385, 564
  store i64 %1386, i64* %RCX.i1729.pre-phi, align 8
  %1387 = lshr i64 %1386, 63
  %1388 = add i64 %1386, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %1388, i64* %RAX.i1732.pre-phi, align 8
  %1389 = icmp ult i64 %1388, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1390 = icmp ult i64 %1388, %1386
  %1391 = or i1 %1389, %1390
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %12, align 1
  %1393 = trunc i64 %1388 to i32
  %1394 = and i32 %1393, 252
  %1395 = tail call i32 @llvm.ctpop.i32(i32 %1394)
  %1396 = trunc i32 %1395 to i8
  %1397 = and i8 %1396, 1
  %1398 = xor i8 %1397, 1
  store i8 %1398, i8* %13, align 1
  %1399 = xor i64 %1386, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1400 = xor i64 %1399, %1388
  %1401 = lshr i64 %1400, 4
  %1402 = trunc i64 %1401 to i8
  %1403 = and i8 %1402, 1
  store i8 %1403, i8* %14, align 1
  %1404 = icmp eq i64 %1388, 0
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %15, align 1
  %1406 = lshr i64 %1388, 63
  %1407 = trunc i64 %1406 to i8
  store i8 %1407, i8* %16, align 1
  %1408 = xor i64 %1406, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %1409 = xor i64 %1406, %1387
  %1410 = add nuw nsw i64 %1408, %1409
  %1411 = icmp eq i64 %1410, 2
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %17, align 1
  %1413 = add i64 %1386, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 44)
  %1414 = add i64 %1361, 57
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1413 to float*
  %1416 = load float, float* %1415, align 4
  %1417 = fpext float %1416 to double
  store double %1417, double* %1080, align 1
  %1418 = load double, double* %629, align 1
  %1419 = fmul double %1417, %1418
  store double %1419, double* %629, align 1
  %1420 = fadd double %1419, %1380
  store double %1420, double* %1098, align 1
  %1421 = load i64, i64* %RBP.i, align 8
  %1422 = add i64 %1421, -24
  %1423 = add i64 %1361, 70
  store i64 %1423, i64* %3, align 8
  %1424 = inttoptr i64 %1422 to float*
  %1425 = load float, float* %1424, align 4
  %1426 = fpext float %1425 to double
  store double %1426, double* %629, align 1
  %1427 = load double, double* %646, align 1
  %1428 = fmul double %1426, %1427
  store double %1428, double* %646, align 1
  %1429 = add i64 %1421, -40
  %1430 = add i64 %1361, 79
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to float*
  %1432 = load float, float* %1431, align 4
  %1433 = fpext float %1432 to double
  store double %1433, double* %629, align 1
  %1434 = fadd double %1433, %1428
  store double %1434, double* %646, align 1
  %1435 = add i64 %1361, 87
  store i64 %1435, i64* %3, align 8
  %1436 = fcmp uno double %1434, %1420
  br i1 %1436, label %1437, label %1447

; <label>:1437:                                   ; preds = %block_480403
  %1438 = fadd double %1434, %1420
  %1439 = bitcast double %1438 to i64
  %1440 = and i64 %1439, 9221120237041090560
  %1441 = icmp eq i64 %1440, 9218868437227405312
  %1442 = and i64 %1439, 2251799813685247
  %1443 = icmp ne i64 %1442, 0
  %1444 = and i1 %1441, %1443
  br i1 %1444, label %1445, label %1453

; <label>:1445:                                   ; preds = %1437
  %1446 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1435, %struct.Memory* %1358)
  %.pre92 = load i64, i64* %3, align 8
  %.pre93 = load i8, i8* %12, align 1
  %.pre94 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm3___xmm0.exit

; <label>:1447:                                   ; preds = %block_480403
  %1448 = fcmp ogt double %1434, %1420
  br i1 %1448, label %1453, label %1449

; <label>:1449:                                   ; preds = %1447
  %1450 = fcmp olt double %1434, %1420
  br i1 %1450, label %1453, label %1451

; <label>:1451:                                   ; preds = %1449
  %1452 = fcmp oeq double %1434, %1420
  br i1 %1452, label %1453, label %1457

; <label>:1453:                                   ; preds = %1451, %1449, %1447, %1437
  %1454 = phi i8 [ 0, %1447 ], [ 0, %1449 ], [ 1, %1451 ], [ 1, %1437 ]
  %1455 = phi i8 [ 0, %1447 ], [ 0, %1449 ], [ 0, %1451 ], [ 1, %1437 ]
  %1456 = phi i8 [ 0, %1447 ], [ 1, %1449 ], [ 0, %1451 ], [ 1, %1437 ]
  store i8 %1454, i8* %15, align 1
  store i8 %1455, i8* %13, align 1
  store i8 %1456, i8* %12, align 1
  br label %1457

; <label>:1457:                                   ; preds = %1453, %1451
  %1458 = phi i8 [ %1454, %1453 ], [ %1405, %1451 ]
  %1459 = phi i8 [ %1456, %1453 ], [ %1392, %1451 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm3___xmm0.exit

routine_ucomisd__xmm3___xmm0.exit:                ; preds = %1457, %1445
  %1460 = phi i8 [ %.pre94, %1445 ], [ %1458, %1457 ]
  %1461 = phi i8 [ %.pre93, %1445 ], [ %1459, %1457 ]
  %1462 = phi i64 [ %.pre92, %1445 ], [ %1435, %1457 ]
  %1463 = phi %struct.Memory* [ %1446, %1445 ], [ %1358, %1457 ]
  %1464 = or i8 %1460, %1461
  %1465 = icmp ne i8 %1464, 0
  %.v227 = select i1 %1465, i64 73, i64 6
  %1466 = add i64 %1462, %.v227
  store i64 %1466, i64* %3, align 8
  br i1 %1465, label %block_.L_4804a3, label %block_480460

block_480460:                                     ; preds = %routine_ucomisd__xmm3___xmm0.exit
  %1467 = add i64 %1466, ptrtoint (%G_0x62b20__rip__type* @G_0x62b20__rip_ to i64)
  %1468 = add i64 %1466, 8
  store i64 %1468, i64* %3, align 8
  %1469 = inttoptr i64 %1467 to i64*
  %1470 = load i64, i64* %1469, align 8
  store i64 %1470, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %1471 = load i64, i64* %RBP.i, align 8
  %1472 = add i64 %1471, -40
  %1473 = add i64 %1466, 23
  store i64 %1473, i64* %3, align 8
  %1474 = inttoptr i64 %1472 to float*
  %1475 = load float, float* %1474, align 4
  %1476 = fpext float %1475 to double
  store double %1476, double* %629, align 1
  %1477 = bitcast i64 %1470 to <2 x i32>
  %1478 = extractelement <2 x i32> %1477, i32 0
  store i32 %1478, i32* %1060, align 1
  %1479 = extractelement <2 x i32> %1477, i32 1
  %1480 = bitcast i8* %1061 to i32*
  store i32 %1479, i32* %1480, align 1
  %1481 = bitcast i64* %1063 to i32*
  store i32 0, i32* %1481, align 1
  %1482 = bitcast i8* %1065 to i32*
  store i32 0, i32* %1482, align 1
  %1483 = load double, double* %1080, align 1
  %1484 = fmul double %1483, %1476
  store double %1484, double* %1080, align 1
  %1485 = add i64 %1471, -8
  %1486 = add i64 %1466, 34
  store i64 %1486, i64* %3, align 8
  %1487 = inttoptr i64 %1485 to i32*
  %1488 = load i32, i32* %1487, align 4
  %1489 = sext i32 %1488 to i64
  %1490 = mul nsw i64 %1489, 564
  store i64 %1490, i64* %RCX.i1729.pre-phi, align 8
  %1491 = lshr i64 %1490, 63
  %1492 = add i64 %1490, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %1492, i64* %RAX.i1732.pre-phi, align 8
  %1493 = icmp ult i64 %1492, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1494 = icmp ult i64 %1492, %1490
  %1495 = or i1 %1493, %1494
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %12, align 1
  %1497 = trunc i64 %1492 to i32
  %1498 = and i32 %1497, 252
  %1499 = tail call i32 @llvm.ctpop.i32(i32 %1498)
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = xor i8 %1501, 1
  store i8 %1502, i8* %13, align 1
  %1503 = xor i64 %1490, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1504 = xor i64 %1503, %1492
  %1505 = lshr i64 %1504, 4
  %1506 = trunc i64 %1505 to i8
  %1507 = and i8 %1506, 1
  store i8 %1507, i8* %14, align 1
  %1508 = icmp eq i64 %1492, 0
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %15, align 1
  %1510 = lshr i64 %1492, 63
  %1511 = trunc i64 %1510 to i8
  store i8 %1511, i8* %16, align 1
  %1512 = xor i64 %1510, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %1513 = xor i64 %1510, %1491
  %1514 = add nuw nsw i64 %1512, %1513
  %1515 = icmp eq i64 %1514, 2
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %17, align 1
  %1517 = add i64 %1490, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 44)
  %1518 = add i64 %1466, 49
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1517 to float*
  %1520 = load float, float* %1519, align 4
  %1521 = fpext float %1520 to double
  store double %1521, double* %629, align 1
  %1522 = load double, double* %646, align 1
  %1523 = fmul double %1521, %1522
  store double %1523, double* %646, align 1
  %1524 = fadd double %1523, %1484
  store double %1524, double* %1080, align 1
  %1525 = load i64, i64* %RBP.i, align 8
  %1526 = add i64 %1525, -104
  %1527 = add i64 %1466, 62
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1526 to double*
  store double %1524, double* %1528, align 8
  %1529 = load i64, i64* %3, align 8
  %1530 = add i64 %1529, 36
  store i64 %1530, i64* %3, align 8
  br label %block_.L_4804c2

block_.L_4804a3:                                  ; preds = %routine_ucomisd__xmm3___xmm0.exit
  %1531 = add i64 %1466, ptrtoint (%G_0x62ab5__rip__type* @G_0x62ab5__rip_ to i64)
  %1532 = add i64 %1466, 8
  store i64 %1532, i64* %3, align 8
  %1533 = inttoptr i64 %1531 to i64*
  %1534 = load i64, i64* %1533, align 8
  store i64 %1534, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  %1535 = load i64, i64* %RBP.i, align 8
  %1536 = add i64 %1535, -24
  %1537 = add i64 %1466, 13
  store i64 %1537, i64* %3, align 8
  %1538 = inttoptr i64 %1536 to float*
  %1539 = load float, float* %1538, align 4
  %1540 = fpext float %1539 to double
  store double %1540, double* %629, align 1
  %1541 = bitcast i64 %1534 to double
  %1542 = fmul double %1540, %1541
  store double %1542, double* %646, align 1
  store i64 0, i64* %.pre-phi202, align 1
  %1543 = add i64 %1535, -40
  %1544 = add i64 %1466, 22
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to float*
  %1546 = load float, float* %1545, align 4
  %1547 = fpext float %1546 to double
  store double %1547, double* %629, align 1
  %1548 = fadd double %1547, %1542
  store double %1548, double* %646, align 1
  store i64 0, i64* %.pre-phi202, align 1
  %1549 = add i64 %1535, -104
  %1550 = add i64 %1466, 31
  store i64 %1550, i64* %3, align 8
  %1551 = inttoptr i64 %1549 to double*
  store double %1548, double* %1551, align 8
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_4804c2

block_.L_4804c2:                                  ; preds = %block_.L_4804a3, %block_480460
  %1552 = phi i64 [ %.pre95, %block_.L_4804a3 ], [ %1530, %block_480460 ]
  %1553 = load i64, i64* %RBP.i, align 8
  %1554 = add i64 %1553, -104
  %1555 = add i64 %1552, 5
  store i64 %1555, i64* %3, align 8
  %1556 = inttoptr i64 %1554 to i64*
  %1557 = load i64, i64* %1556, align 8
  store i64 %1557, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  %1558 = add i64 %1553, -112
  %1559 = add i64 %1552, 10
  store i64 %1559, i64* %3, align 8
  %1560 = inttoptr i64 %1558 to i64*
  store i64 %1557, i64* %1560, align 8
  %1561 = load i64, i64* %3, align 8
  %1562 = add i64 %1561, 60
  store i64 %1562, i64* %3, align 8
  br label %block_.L_480508

block_.L_4804d1:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit1422
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %1563 = add i64 %1361, add (i64 ptrtoint (%G_0x62ba5__rip__type* @G_0x62ba5__rip_ to i64), i64 10)
  %1564 = add i64 %1361, 18
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i64*
  %1566 = load i64, i64* %1565, align 8
  store i64 %1566, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  %1567 = load i64, i64* %RBP.i, align 8
  %1568 = add i64 %1567, -24
  %1569 = add i64 %1361, 23
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1568 to float*
  %1571 = load float, float* %1570, align 4
  %1572 = fpext float %1571 to double
  store double %1572, double* %629, align 1
  %1573 = bitcast i64 %1566 to double
  %1574 = fmul double %1572, %1573
  store double %1574, double* %646, align 1
  store i64 0, i64* %.pre-phi202, align 1
  %1575 = add i64 %1567, -8
  %1576 = add i64 %1361, 31
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1575 to i32*
  %1578 = load i32, i32* %1577, align 4
  %1579 = sext i32 %1578 to i64
  %1580 = mul nsw i64 %1579, 564
  store i64 %1580, i64* %RCX.i1729.pre-phi, align 8
  %1581 = lshr i64 %1580, 63
  %1582 = add i64 %1580, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %1582, i64* %RAX.i1732.pre-phi, align 8
  %1583 = icmp ult i64 %1582, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1584 = icmp ult i64 %1582, %1580
  %1585 = or i1 %1583, %1584
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %12, align 1
  %1587 = trunc i64 %1582 to i32
  %1588 = and i32 %1587, 252
  %1589 = tail call i32 @llvm.ctpop.i32(i32 %1588)
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = xor i8 %1591, 1
  store i8 %1592, i8* %13, align 1
  %1593 = xor i64 %1580, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1594 = xor i64 %1593, %1582
  %1595 = lshr i64 %1594, 4
  %1596 = trunc i64 %1595 to i8
  %1597 = and i8 %1596, 1
  store i8 %1597, i8* %14, align 1
  %1598 = icmp eq i64 %1582, 0
  %1599 = zext i1 %1598 to i8
  store i8 %1599, i8* %15, align 1
  %1600 = lshr i64 %1582, 63
  %1601 = trunc i64 %1600 to i8
  store i8 %1601, i8* %16, align 1
  %1602 = xor i64 %1600, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %1603 = xor i64 %1600, %1581
  %1604 = add nuw nsw i64 %1602, %1603
  %1605 = icmp eq i64 %1604, 2
  %1606 = zext i1 %1605 to i8
  store i8 %1606, i8* %17, align 1
  %1607 = add i64 %1580, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 44)
  %1608 = add i64 %1361, 46
  store i64 %1608, i64* %3, align 8
  %1609 = inttoptr i64 %1607 to float*
  %1610 = load float, float* %1609, align 4
  %1611 = fpext float %1610 to double
  store double %1611, double* %629, align 1
  %1612 = fadd double %1611, %1574
  store double %1612, double* %646, align 1
  store i64 0, i64* %.pre-phi202, align 1
  %1613 = add i64 %1567, -112
  %1614 = add i64 %1361, 55
  store i64 %1614, i64* %3, align 8
  %1615 = inttoptr i64 %1613 to double*
  store double %1612, double* %1615, align 8
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_480508

block_.L_480508:                                  ; preds = %block_.L_4804d1, %block_.L_4804c2
  %1616 = phi i64 [ %.pre96, %block_.L_4804d1 ], [ %1562, %block_.L_4804c2 ]
  %MEMORY.11 = phi %struct.Memory* [ %1358, %block_.L_4804d1 ], [ %1463, %block_.L_4804c2 ]
  %1617 = load i64, i64* %RBP.i, align 8
  %1618 = add i64 %1617, -112
  %1619 = add i64 %1616, 5
  store i64 %1619, i64* %3, align 8
  %1620 = inttoptr i64 %1618 to i64*
  %1621 = load i64, i64* %1620, align 8
  store i64 %1621, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  %1622 = bitcast %union.VectorReg* %39 to i32*
  %1623 = getelementptr inbounds i8, i8* %623, i64 4
  %1624 = bitcast i8* %1623 to i32*
  %1625 = bitcast i64* %631 to i32*
  %1626 = getelementptr inbounds i8, i8* %623, i64 12
  %1627 = bitcast i8* %1626 to i32*
  %1628 = bitcast %union.VectorReg* %39 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1628, align 1
  %1629 = bitcast i64 %1621 to <2 x i32>
  %.cast = bitcast i64 %1621 to double
  %1630 = fptrunc double %.cast to float
  store float %1630, float* %553, align 1
  %1631 = extractelement <2 x i32> %1629, i32 1
  store i32 %1631, i32* %600, align 1
  store i32 0, i32* %602, align 1
  store i32 0, i32* %604, align 1
  %1632 = add i64 %1617, -48
  %1633 = add i64 %1616, 17
  store i64 %1633, i64* %3, align 8
  %1634 = load <2 x float>, <2 x float>* %35, align 1
  %1635 = extractelement <2 x float> %1634, i32 0
  %1636 = inttoptr i64 %1632 to float*
  store float %1635, float* %1636, align 4
  %1637 = load i64, i64* %RBP.i, align 8
  %1638 = add i64 %1637, -48
  %1639 = load i64, i64* %3, align 8
  %1640 = add i64 %1639, 5
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1638 to i32*
  %1642 = load i32, i32* %1641, align 4
  store i32 %1642, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %1643 = add i64 %1637, -24
  %1644 = add i64 %1639, 10
  store i64 %1644, i64* %3, align 8
  %1645 = load <2 x float>, <2 x float>* %35, align 1
  %1646 = load <2 x i32>, <2 x i32>* %592, align 1
  %1647 = inttoptr i64 %1643 to float*
  %1648 = load float, float* %1647, align 4
  %1649 = extractelement <2 x float> %1645, i32 0
  %1650 = fadd float %1649, %1648
  store float %1650, float* %553, align 1
  %1651 = bitcast <2 x float> %1645 to <2 x i32>
  %1652 = extractelement <2 x i32> %1651, i32 1
  store i32 %1652, i32* %600, align 1
  %1653 = extractelement <2 x i32> %1646, i32 0
  store i32 %1653, i32* %602, align 1
  %1654 = extractelement <2 x i32> %1646, i32 1
  store i32 %1654, i32* %604, align 1
  %1655 = add i64 %1639, 15
  store i64 %1655, i64* %3, align 8
  %1656 = load <2 x float>, <2 x float>* %35, align 1
  %1657 = extractelement <2 x float> %1656, i32 0
  store float %1657, float* %1647, align 4
  %1658 = load i64, i64* %RBP.i, align 8
  %1659 = add i64 %1658, -48
  %1660 = load i64, i64* %3, align 8
  %1661 = add i64 %1660, 5
  store i64 %1661, i64* %3, align 8
  %1662 = inttoptr i64 %1659 to float*
  %1663 = load float, float* %1662, align 4
  %1664 = fpext float %1663 to double
  store double %1664, double* %646, align 1
  %1665 = add i64 %1660, 9
  store i64 %1665, i64* %3, align 8
  %1666 = load double, double* %629, align 1
  %1667 = fcmp uno double %1664, %1666
  br i1 %1667, label %1668, label %1678

; <label>:1668:                                   ; preds = %block_.L_480508
  %1669 = fadd double %1664, %1666
  %1670 = bitcast double %1669 to i64
  %1671 = and i64 %1670, 9221120237041090560
  %1672 = icmp eq i64 %1671, 9218868437227405312
  %1673 = and i64 %1670, 2251799813685247
  %1674 = icmp ne i64 %1673, 0
  %1675 = and i1 %1672, %1674
  br i1 %1675, label %1676, label %1684

; <label>:1676:                                   ; preds = %1668
  %1677 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1665, %struct.Memory* %MEMORY.11)
  %.pre97 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit1258

; <label>:1678:                                   ; preds = %block_.L_480508
  %1679 = fcmp ogt double %1664, %1666
  br i1 %1679, label %1684, label %1680

; <label>:1680:                                   ; preds = %1678
  %1681 = fcmp olt double %1664, %1666
  br i1 %1681, label %1684, label %1682

; <label>:1682:                                   ; preds = %1680
  %1683 = fcmp oeq double %1664, %1666
  br i1 %1683, label %1684, label %1688

; <label>:1684:                                   ; preds = %1682, %1680, %1678, %1668
  %1685 = phi i8 [ 0, %1678 ], [ 0, %1680 ], [ 1, %1682 ], [ 1, %1668 ]
  %1686 = phi i8 [ 0, %1678 ], [ 0, %1680 ], [ 0, %1682 ], [ 1, %1668 ]
  %1687 = phi i8 [ 0, %1678 ], [ 1, %1680 ], [ 0, %1682 ], [ 1, %1668 ]
  store i8 %1685, i8* %15, align 1
  store i8 %1686, i8* %13, align 1
  store i8 %1687, i8* %12, align 1
  br label %1688

; <label>:1688:                                   ; preds = %1684, %1682
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit1258

routine_ucomisd__xmm1___xmm0.exit1258:            ; preds = %1688, %1676
  %1689 = phi i64 [ %.pre97, %1676 ], [ %1665, %1688 ]
  %1690 = phi %struct.Memory* [ %1677, %1676 ], [ %MEMORY.11, %1688 ]
  %1691 = add i64 %1689, 17
  %1692 = add i64 %1689, 6
  %1693 = load i8, i8* %15, align 1
  %1694 = icmp eq i8 %1693, 0
  %1695 = select i1 %1694, i64 %1691, i64 %1692
  store i64 %1695, i64* %3, align 8
  br i1 %1694, label %block_.L_480542, label %block_480537

block_480537:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit1258
  %1696 = load i8, i8* %13, align 1
  %1697 = icmp ne i8 %1696, 0
  %.v258 = select i1 %1697, i64 11, i64 6
  %1698 = add i64 %1695, %.v258
  store i64 %1698, i64* %3, align 8
  %cmpBr_480537 = icmp eq i8 %1696, 1
  br i1 %cmpBr_480537, label %block_.L_480542, label %block_48053d

block_48053d:                                     ; preds = %block_480537
  %1699 = add i64 %1698, 91
  br label %block_.L_480598

block_.L_480542:                                  ; preds = %block_480537, %routine_ucomisd__xmm1___xmm0.exit1258
  %1700 = phi i64 [ %1698, %block_480537 ], [ %1691, %routine_ucomisd__xmm1___xmm0.exit1258 ]
  %1701 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1702 = and i32 %1701, 255
  %1703 = tail call i32 @llvm.ctpop.i32(i32 %1702)
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  %1706 = xor i8 %1705, 1
  store i8 %1706, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1707 = icmp eq i32 %1701, 0
  %1708 = zext i1 %1707 to i8
  store i8 %1708, i8* %15, align 1
  %1709 = lshr i32 %1701, 31
  %1710 = trunc i32 %1709 to i8
  store i8 %1710, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v254 = select i1 %1707, i64 14, i64 19
  %1711 = add i64 %1700, %.v254
  store i64 %1711, i64* %3, align 8
  br i1 %1707, label %block_480550, label %block_.L_480555

block_480550:                                     ; preds = %block_.L_480542
  %1712 = add i64 %1711, 67
  store i64 %1712, i64* %3, align 8
  br label %block_.L_480593

block_.L_480555:                                  ; preds = %block_.L_480542
  store i64 ptrtoint (%G__0x58208a_type* @G__0x58208a to i64), i64* %RDI.i776.pre-phi, align 8
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %RSI.i1243 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %1713 = load i64, i64* %RBP.i, align 8
  %1714 = add i64 %1713, -8
  %1715 = add i64 %1711, 23
  store i64 %1715, i64* %3, align 8
  %1716 = inttoptr i64 %1714 to i32*
  %1717 = load i32, i32* %1716, align 4
  %1718 = zext i32 %1717 to i64
  store i64 %1718, i64* %RSI.i1243, align 8
  %1719 = add i64 %1713, -48
  %1720 = add i64 %1711, 28
  store i64 %1720, i64* %3, align 8
  %1721 = inttoptr i64 %1719 to float*
  %1722 = load float, float* %1721, align 4
  %1723 = fpext float %1722 to double
  store double %1723, double* %646, align 1
  %1724 = add i64 %1713, -40
  %1725 = add i64 %1711, 33
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1724 to float*
  %1727 = load float, float* %1726, align 4
  %1728 = fpext float %1727 to double
  store double %1728, double* %629, align 1
  %1729 = add i64 %1711, 37
  store i64 %1729, i64* %3, align 8
  %1730 = load i32, i32* %1716, align 4
  %1731 = sext i32 %1730 to i64
  %1732 = mul nsw i64 %1731, 564
  store i64 %1732, i64* %RCX.i1729.pre-phi, align 8
  %1733 = lshr i64 %1732, 63
  %1734 = add i64 %1732, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %1734, i64* %RAX.i1732.pre-phi, align 8
  %1735 = icmp ult i64 %1734, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1736 = icmp ult i64 %1734, %1732
  %1737 = or i1 %1735, %1736
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %12, align 1
  %1739 = trunc i64 %1734 to i32
  %1740 = and i32 %1739, 252
  %1741 = tail call i32 @llvm.ctpop.i32(i32 %1740)
  %1742 = trunc i32 %1741 to i8
  %1743 = and i8 %1742, 1
  %1744 = xor i8 %1743, 1
  store i8 %1744, i8* %13, align 1
  %1745 = xor i64 %1732, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1746 = xor i64 %1745, %1734
  %1747 = lshr i64 %1746, 4
  %1748 = trunc i64 %1747 to i8
  %1749 = and i8 %1748, 1
  store i8 %1749, i8* %14, align 1
  %1750 = icmp eq i64 %1734, 0
  %1751 = zext i1 %1750 to i8
  store i8 %1751, i8* %15, align 1
  %1752 = lshr i64 %1734, 63
  %1753 = trunc i64 %1752 to i8
  store i8 %1753, i8* %16, align 1
  %1754 = xor i64 %1752, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %1755 = xor i64 %1752, %1733
  %1756 = add nuw nsw i64 %1754, %1755
  %1757 = icmp eq i64 %1756, 2
  %1758 = zext i1 %1757 to i8
  store i8 %1758, i8* %17, align 1
  %1759 = add i64 %1732, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 44)
  %1760 = add i64 %1711, 52
  store i64 %1760, i64* %3, align 8
  %1761 = inttoptr i64 %1759 to float*
  %1762 = load float, float* %1761, align 4
  %1763 = fpext float %1762 to double
  store double %1763, double* %1080, align 1
  %AL.i1224 = bitcast %union.anon* %EAX.i819.pre-phi.in to i8*
  store i8 3, i8* %AL.i1224, align 1
  %1764 = add i64 %1711, -190373
  %1765 = add i64 %1711, 59
  %1766 = load i64, i64* %6, align 8
  %1767 = add i64 %1766, -8
  %1768 = inttoptr i64 %1767 to i64*
  store i64 %1765, i64* %1768, align 8
  store i64 %1767, i64* %6, align 8
  store i64 %1764, i64* %3, align 8
  %call2_48058b = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1764, %struct.Memory* %1690)
  %1769 = load i64, i64* %RBP.i, align 8
  %1770 = add i64 %1769, -116
  %1771 = load i32, i32* %EAX.i819.pre-phi, align 4
  %1772 = load i64, i64* %3, align 8
  %1773 = add i64 %1772, 3
  store i64 %1773, i64* %3, align 8
  %1774 = inttoptr i64 %1770 to i32*
  store i32 %1771, i32* %1774, align 4
  %.pre98 = load i64, i64* %3, align 8
  br label %block_.L_480593

block_.L_480593:                                  ; preds = %block_.L_480555, %block_480550
  %1775 = phi i64 [ %.pre98, %block_.L_480555 ], [ %1712, %block_480550 ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_48058b, %block_.L_480555 ], [ %1690, %block_480550 ]
  %1776 = add i64 %1775, 5
  store i64 %1776, i64* %3, align 8
  br label %block_.L_480598

block_.L_480598:                                  ; preds = %block_.L_480593, %block_48053d
  %storemerge = phi i64 [ %1699, %block_48053d ], [ %1776, %block_.L_480593 ]
  %MEMORY.14 = phi %struct.Memory* [ %1690, %block_48053d ], [ %MEMORY.13, %block_.L_480593 ]
  store i32 0, i32* %.pre-phi198, align 1
  store i32 0, i32* %600, align 1
  store i32 0, i32* %602, align 1
  store i32 0, i32* %604, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %1777 = load i64, i64* %RBP.i, align 8
  %1778 = add i64 %1777, -40
  %1779 = add i64 %storemerge, 18
  store i64 %1779, i64* %3, align 8
  %1780 = inttoptr i64 %1778 to i32*
  %1781 = load i32, i32* %1780, align 4
  %1782 = bitcast %union.VectorReg* %39 to float*
  store i32 %1781, i32* %1622, align 1
  %1783 = bitcast i8* %1623 to float*
  store float 0.000000e+00, float* %1783, align 1
  %1784 = bitcast i64* %631 to float*
  store float 0.000000e+00, float* %1784, align 1
  %1785 = bitcast i8* %1626 to float*
  store float 0.000000e+00, float* %1785, align 1
  %1786 = add i64 %1777, -8
  %1787 = add i64 %storemerge, 22
  store i64 %1787, i64* %3, align 8
  %1788 = inttoptr i64 %1786 to i32*
  %1789 = load i32, i32* %1788, align 4
  %1790 = sext i32 %1789 to i64
  %1791 = mul nsw i64 %1790, 564
  store i64 %1791, i64* %RCX.i1729.pre-phi, align 8
  %1792 = lshr i64 %1791, 63
  %1793 = add i64 %1791, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %1793, i64* %RDX.i1725, align 8
  %1794 = icmp ult i64 %1793, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1795 = icmp ult i64 %1793, %1791
  %1796 = or i1 %1794, %1795
  %1797 = zext i1 %1796 to i8
  store i8 %1797, i8* %12, align 1
  %1798 = trunc i64 %1793 to i32
  %1799 = and i32 %1798, 252
  %1800 = tail call i32 @llvm.ctpop.i32(i32 %1799)
  %1801 = trunc i32 %1800 to i8
  %1802 = and i8 %1801, 1
  %1803 = xor i8 %1802, 1
  store i8 %1803, i8* %13, align 1
  %1804 = xor i64 %1791, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1805 = xor i64 %1804, %1793
  %1806 = lshr i64 %1805, 4
  %1807 = trunc i64 %1806 to i8
  %1808 = and i8 %1807, 1
  store i8 %1808, i8* %14, align 1
  %1809 = icmp eq i64 %1793, 0
  %1810 = zext i1 %1809 to i8
  store i8 %1810, i8* %15, align 1
  %1811 = lshr i64 %1793, 63
  %1812 = trunc i64 %1811 to i8
  store i8 %1812, i8* %16, align 1
  %1813 = xor i64 %1811, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %1814 = xor i64 %1811, %1792
  %1815 = add nuw nsw i64 %1813, %1814
  %1816 = icmp eq i64 %1815, 2
  %1817 = zext i1 %1816 to i8
  store i8 %1817, i8* %17, align 1
  %1818 = add i64 %1791, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 44)
  %1819 = add i64 %storemerge, 40
  store i64 %1819, i64* %3, align 8
  %1820 = load <2 x float>, <2 x float>* %44, align 1
  %1821 = load <2 x i32>, <2 x i32>* %1085, align 1
  %1822 = inttoptr i64 %1818 to float*
  %1823 = load float, float* %1822, align 4
  %1824 = extractelement <2 x float> %1820, i32 0
  %1825 = fadd float %1824, %1823
  store float %1825, float* %1782, align 1
  %1826 = bitcast <2 x float> %1820 to <2 x i32>
  %1827 = extractelement <2 x i32> %1826, i32 1
  store i32 %1827, i32* %1624, align 1
  %1828 = extractelement <2 x i32> %1821, i32 0
  store i32 %1828, i32* %1625, align 1
  %1829 = extractelement <2 x i32> %1821, i32 1
  store i32 %1829, i32* %1627, align 1
  %1830 = load i64, i64* %RBP.i, align 8
  %1831 = add i64 %1830, -24
  %1832 = add i64 %storemerge, 45
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i32*
  %1834 = load i32, i32* %1833, align 4
  store i32 %1834, i32* %1060, align 1
  store float 0.000000e+00, float* %1062, align 1
  store float 0.000000e+00, float* %1064, align 1
  store float 0.000000e+00, float* %1066, align 1
  %1835 = add i64 %1830, -44
  %1836 = add i64 %storemerge, 50
  store i64 %1836, i64* %3, align 8
  %1837 = load <2 x float>, <2 x float>* %1069, align 1
  %1838 = bitcast i64* %1063 to <2 x i32>*
  %1839 = load <2 x i32>, <2 x i32>* %1838, align 1
  %1840 = inttoptr i64 %1835 to float*
  %1841 = load float, float* %1840, align 4
  %1842 = extractelement <2 x float> %1837, i32 0
  %1843 = fsub float %1842, %1841
  store float %1843, float* %1059, align 1
  %1844 = bitcast <2 x float> %1837 to <2 x i32>
  %1845 = extractelement <2 x i32> %1844, i32 1
  %1846 = bitcast i8* %1061 to i32*
  store i32 %1845, i32* %1846, align 1
  %1847 = extractelement <2 x i32> %1839, i32 0
  %1848 = bitcast i64* %1063 to i32*
  store i32 %1847, i32* %1848, align 1
  %1849 = extractelement <2 x i32> %1839, i32 1
  %1850 = bitcast i8* %1065 to i32*
  store i32 %1849, i32* %1850, align 1
  %1851 = load <2 x float>, <2 x float>* %44, align 1
  %1852 = load <2 x i32>, <2 x i32>* %1085, align 1
  %1853 = load <2 x float>, <2 x float>* %1069, align 1
  %1854 = extractelement <2 x float> %1851, i32 0
  %1855 = extractelement <2 x float> %1853, i32 0
  %1856 = fsub float %1854, %1855
  store float %1856, float* %1782, align 1
  %1857 = bitcast <2 x float> %1851 to <2 x i32>
  %1858 = extractelement <2 x i32> %1857, i32 1
  store i32 %1858, i32* %1624, align 1
  %1859 = extractelement <2 x i32> %1852, i32 0
  store i32 %1859, i32* %1625, align 1
  %1860 = extractelement <2 x i32> %1852, i32 1
  store i32 %1860, i32* %1627, align 1
  %1861 = add i64 %1830, -8
  %1862 = add i64 %storemerge, 58
  store i64 %1862, i64* %3, align 8
  %1863 = inttoptr i64 %1861 to i32*
  %1864 = load i32, i32* %1863, align 4
  %1865 = sext i32 %1864 to i64
  %1866 = mul nsw i64 %1865, 564
  store i64 %1866, i64* %RCX.i1729.pre-phi, align 8
  %1867 = lshr i64 %1866, 63
  %1868 = load i64, i64* %RAX.i1732.pre-phi, align 8
  %1869 = add i64 %1866, %1868
  store i64 %1869, i64* %RDX.i1725, align 8
  %1870 = icmp ult i64 %1869, %1868
  %1871 = icmp ult i64 %1869, %1866
  %1872 = or i1 %1870, %1871
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %12, align 1
  %1874 = trunc i64 %1869 to i32
  %1875 = and i32 %1874, 255
  %1876 = tail call i32 @llvm.ctpop.i32(i32 %1875)
  %1877 = trunc i32 %1876 to i8
  %1878 = and i8 %1877, 1
  %1879 = xor i8 %1878, 1
  store i8 %1879, i8* %13, align 1
  %1880 = xor i64 %1866, %1868
  %1881 = xor i64 %1880, %1869
  %1882 = lshr i64 %1881, 4
  %1883 = trunc i64 %1882 to i8
  %1884 = and i8 %1883, 1
  store i8 %1884, i8* %14, align 1
  %1885 = icmp eq i64 %1869, 0
  %1886 = zext i1 %1885 to i8
  store i8 %1886, i8* %15, align 1
  %1887 = lshr i64 %1869, 63
  %1888 = trunc i64 %1887 to i8
  store i8 %1888, i8* %16, align 1
  %1889 = lshr i64 %1868, 63
  %1890 = xor i64 %1887, %1889
  %1891 = xor i64 %1887, %1867
  %1892 = add nuw nsw i64 %1890, %1891
  %1893 = icmp eq i64 %1892, 2
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %17, align 1
  %1895 = add i64 %1869, 8
  %1896 = add i64 %storemerge, 76
  store i64 %1896, i64* %3, align 8
  %1897 = load <2 x float>, <2 x float>* %44, align 1
  %1898 = extractelement <2 x float> %1897, i32 0
  %1899 = inttoptr i64 %1895 to float*
  store float %1898, float* %1899, align 4
  %1900 = load i64, i64* %RBP.i, align 8
  %1901 = add i64 %1900, -8
  %1902 = load i64, i64* %3, align 8
  %1903 = add i64 %1902, 4
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1901 to i32*
  %1905 = load i32, i32* %1904, align 4
  %1906 = sext i32 %1905 to i64
  %1907 = mul nsw i64 %1906, 564
  store i64 %1907, i64* %RCX.i1729.pre-phi, align 8
  %1908 = lshr i64 %1907, 63
  %1909 = load i64, i64* %RAX.i1732.pre-phi, align 8
  %1910 = add i64 %1907, %1909
  store i64 %1910, i64* %RAX.i1732.pre-phi, align 8
  %1911 = icmp ult i64 %1910, %1909
  %1912 = icmp ult i64 %1910, %1907
  %1913 = or i1 %1911, %1912
  %1914 = zext i1 %1913 to i8
  store i8 %1914, i8* %12, align 1
  %1915 = trunc i64 %1910 to i32
  %1916 = and i32 %1915, 255
  %1917 = tail call i32 @llvm.ctpop.i32(i32 %1916)
  %1918 = trunc i32 %1917 to i8
  %1919 = and i8 %1918, 1
  %1920 = xor i8 %1919, 1
  store i8 %1920, i8* %13, align 1
  %1921 = xor i64 %1907, %1909
  %1922 = xor i64 %1921, %1910
  %1923 = lshr i64 %1922, 4
  %1924 = trunc i64 %1923 to i8
  %1925 = and i8 %1924, 1
  store i8 %1925, i8* %14, align 1
  %1926 = icmp eq i64 %1910, 0
  %1927 = zext i1 %1926 to i8
  store i8 %1927, i8* %15, align 1
  %1928 = lshr i64 %1910, 63
  %1929 = trunc i64 %1928 to i8
  store i8 %1929, i8* %16, align 1
  %1930 = lshr i64 %1909, 63
  %1931 = xor i64 %1928, %1930
  %1932 = xor i64 %1928, %1908
  %1933 = add nuw nsw i64 %1931, %1932
  %1934 = icmp eq i64 %1933, 2
  %1935 = zext i1 %1934 to i8
  store i8 %1935, i8* %17, align 1
  %1936 = add i64 %1910, 8
  %1937 = add i64 %1902, 19
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to float*
  %1939 = load float, float* %1938, align 4
  %1940 = fpext float %1939 to double
  store double %1940, double* %629, align 1
  %1941 = add i64 %1902, 23
  store i64 %1941, i64* %3, align 8
  %1942 = load double, double* %646, align 1
  %1943 = fcmp uno double %1942, %1940
  br i1 %1943, label %1944, label %1954

; <label>:1944:                                   ; preds = %block_.L_480598
  %1945 = fadd double %1940, %1942
  %1946 = bitcast double %1945 to i64
  %1947 = and i64 %1946, 9221120237041090560
  %1948 = icmp eq i64 %1947, 9218868437227405312
  %1949 = and i64 %1946, 2251799813685247
  %1950 = icmp ne i64 %1949, 0
  %1951 = and i1 %1948, %1950
  br i1 %1951, label %1952, label %1960

; <label>:1952:                                   ; preds = %1944
  %1953 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1941, %struct.Memory* %MEMORY.14)
  %.pre99 = load i64, i64* %3, align 8
  %.pre100 = load i8, i8* %12, align 1
  %.pre101 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit1158

; <label>:1954:                                   ; preds = %block_.L_480598
  %1955 = fcmp ogt double %1942, %1940
  br i1 %1955, label %1960, label %1956

; <label>:1956:                                   ; preds = %1954
  %1957 = fcmp olt double %1942, %1940
  br i1 %1957, label %1960, label %1958

; <label>:1958:                                   ; preds = %1956
  %1959 = fcmp oeq double %1942, %1940
  br i1 %1959, label %1960, label %1964

; <label>:1960:                                   ; preds = %1958, %1956, %1954, %1944
  %1961 = phi i8 [ 0, %1954 ], [ 0, %1956 ], [ 1, %1958 ], [ 1, %1944 ]
  %1962 = phi i8 [ 0, %1954 ], [ 0, %1956 ], [ 0, %1958 ], [ 1, %1944 ]
  %1963 = phi i8 [ 0, %1954 ], [ 1, %1956 ], [ 0, %1958 ], [ 1, %1944 ]
  store i8 %1961, i8* %15, align 1
  store i8 %1962, i8* %13, align 1
  store i8 %1963, i8* %12, align 1
  br label %1964

; <label>:1964:                                   ; preds = %1960, %1958
  %1965 = phi i8 [ %1961, %1960 ], [ %1927, %1958 ]
  %1966 = phi i8 [ %1963, %1960 ], [ %1914, %1958 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit1158

routine_ucomisd__xmm1___xmm0.exit1158:            ; preds = %1964, %1952
  %1967 = phi i8 [ %.pre101, %1952 ], [ %1965, %1964 ]
  %1968 = phi i8 [ %.pre100, %1952 ], [ %1966, %1964 ]
  %1969 = phi i64 [ %.pre99, %1952 ], [ %1941, %1964 ]
  %1970 = phi %struct.Memory* [ %1953, %1952 ], [ %MEMORY.14, %1964 ]
  %1971 = or i8 %1967, %1968
  %1972 = icmp ne i8 %1971, 0
  %.v228 = select i1 %1972, i64 38, i64 6
  %1973 = add i64 %1969, %.v228
  store i64 %1973, i64* %3, align 8
  br i1 %1972, label %block_.L_480621, label %block_480601

block_480601:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit1158
  store i32 0, i32* %.pre-phi198, align 1
  store i32 0, i32* %600, align 1
  store i32 0, i32* %602, align 1
  store i32 0, i32* %604, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %1974 = load i64, i64* %RBP.i, align 8
  %1975 = add i64 %1974, -8
  %1976 = add i64 %1973, 17
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i32*
  %1978 = load i32, i32* %1977, align 4
  %1979 = sext i32 %1978 to i64
  %1980 = mul nsw i64 %1979, 564
  store i64 %1980, i64* %RCX.i1729.pre-phi, align 8
  %1981 = lshr i64 %1980, 63
  %1982 = add i64 %1980, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %1982, i64* %RAX.i1732.pre-phi, align 8
  %1983 = icmp ult i64 %1982, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1984 = icmp ult i64 %1982, %1980
  %1985 = or i1 %1983, %1984
  %1986 = zext i1 %1985 to i8
  store i8 %1986, i8* %12, align 1
  %1987 = trunc i64 %1982 to i32
  %1988 = and i32 %1987, 252
  %1989 = tail call i32 @llvm.ctpop.i32(i32 %1988)
  %1990 = trunc i32 %1989 to i8
  %1991 = and i8 %1990, 1
  %1992 = xor i8 %1991, 1
  store i8 %1992, i8* %13, align 1
  %1993 = xor i64 %1980, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %1994 = xor i64 %1993, %1982
  %1995 = lshr i64 %1994, 4
  %1996 = trunc i64 %1995 to i8
  %1997 = and i8 %1996, 1
  store i8 %1997, i8* %14, align 1
  %1998 = icmp eq i64 %1982, 0
  %1999 = zext i1 %1998 to i8
  store i8 %1999, i8* %15, align 1
  %2000 = lshr i64 %1982, 63
  %2001 = trunc i64 %2000 to i8
  store i8 %2001, i8* %16, align 1
  %2002 = xor i64 %2000, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %2003 = xor i64 %2000, %1981
  %2004 = add nuw nsw i64 %2002, %2003
  %2005 = icmp eq i64 %2004, 2
  %2006 = zext i1 %2005 to i8
  store i8 %2006, i8* %17, align 1
  %2007 = add i64 %1980, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 8)
  %2008 = add i64 %1973, 32
  store i64 %2008, i64* %3, align 8
  %2009 = load <2 x float>, <2 x float>* %35, align 1
  %2010 = extractelement <2 x float> %2009, i32 0
  %2011 = inttoptr i64 %2007 to float*
  store float %2010, float* %2011, align 4
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_480621

block_.L_480621:                                  ; preds = %block_480601, %routine_ucomisd__xmm1___xmm0.exit1158
  %2012 = phi i64 [ %.pre102, %block_480601 ], [ %1973, %routine_ucomisd__xmm1___xmm0.exit1158 ]
  %2013 = add i64 %2012, 87
  store i64 %2013, i64* %3, align 8
  br label %block_.L_480678

block_.L_480626:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit1562
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %2014 = load i64, i64* %RBP.i, align 8
  %2015 = add i64 %2014, -28
  %2016 = add i64 %1042, 15
  store i64 %2016, i64* %3, align 8
  %2017 = inttoptr i64 %2015 to i32*
  %2018 = load i32, i32* %2017, align 4
  store i32 %2018, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %2019 = add i64 %2014, -8
  %2020 = add i64 %1042, 19
  store i64 %2020, i64* %3, align 8
  %2021 = inttoptr i64 %2019 to i32*
  %2022 = load i32, i32* %2021, align 4
  %2023 = sext i32 %2022 to i64
  %2024 = mul nsw i64 %2023, 564
  store i64 %2024, i64* %RCX.i1729.pre-phi, align 8
  %2025 = lshr i64 %2024, 63
  %2026 = add i64 %2024, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %2026, i64* %RDX.i1725, align 8
  %2027 = icmp ult i64 %2026, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %2028 = icmp ult i64 %2026, %2024
  %2029 = or i1 %2027, %2028
  %2030 = zext i1 %2029 to i8
  store i8 %2030, i8* %12, align 1
  %2031 = trunc i64 %2026 to i32
  %2032 = and i32 %2031, 252
  %2033 = tail call i32 @llvm.ctpop.i32(i32 %2032)
  %2034 = trunc i32 %2033 to i8
  %2035 = and i8 %2034, 1
  %2036 = xor i8 %2035, 1
  store i8 %2036, i8* %13, align 1
  %2037 = xor i64 %2024, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %2038 = xor i64 %2037, %2026
  %2039 = lshr i64 %2038, 4
  %2040 = trunc i64 %2039 to i8
  %2041 = and i8 %2040, 1
  store i8 %2041, i8* %14, align 1
  %2042 = icmp eq i64 %2026, 0
  %2043 = zext i1 %2042 to i8
  store i8 %2043, i8* %15, align 1
  %2044 = lshr i64 %2026, 63
  %2045 = trunc i64 %2044 to i8
  store i8 %2045, i8* %16, align 1
  %2046 = xor i64 %2044, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %2047 = xor i64 %2044, %2025
  %2048 = add nuw nsw i64 %2046, %2047
  %2049 = icmp eq i64 %2048, 2
  %2050 = zext i1 %2049 to i8
  store i8 %2050, i8* %17, align 1
  %2051 = add i64 %2024, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 36)
  %2052 = add i64 %1042, 37
  store i64 %2052, i64* %3, align 8
  %2053 = inttoptr i64 %2051 to i32*
  %2054 = load i32, i32* %2053, align 4
  %2055 = bitcast %union.VectorReg* %39 to float*
  %2056 = bitcast %union.VectorReg* %39 to i32*
  store i32 %2054, i32* %2056, align 1
  %2057 = getelementptr inbounds i8, i8* %623, i64 4
  %2058 = bitcast i8* %2057 to float*
  store float 0.000000e+00, float* %2058, align 1
  %2059 = bitcast i64* %631 to float*
  store float 0.000000e+00, float* %2059, align 1
  %2060 = getelementptr inbounds i8, i8* %623, i64 12
  %2061 = bitcast i8* %2060 to float*
  store float 0.000000e+00, float* %2061, align 1
  %2062 = add i64 %1042, 41
  store i64 %2062, i64* %3, align 8
  %2063 = load i32, i32* %2021, align 4
  %2064 = sext i32 %2063 to i64
  %2065 = mul nsw i64 %2064, 564
  store i64 %2065, i64* %RCX.i1729.pre-phi, align 8
  %2066 = lshr i64 %2065, 63
  %2067 = load i64, i64* %RAX.i1732.pre-phi, align 8
  %2068 = add i64 %2065, %2067
  store i64 %2068, i64* %RDX.i1725, align 8
  %2069 = icmp ult i64 %2068, %2067
  %2070 = icmp ult i64 %2068, %2065
  %2071 = or i1 %2069, %2070
  %2072 = zext i1 %2071 to i8
  store i8 %2072, i8* %12, align 1
  %2073 = trunc i64 %2068 to i32
  %2074 = and i32 %2073, 255
  %2075 = tail call i32 @llvm.ctpop.i32(i32 %2074)
  %2076 = trunc i32 %2075 to i8
  %2077 = and i8 %2076, 1
  %2078 = xor i8 %2077, 1
  store i8 %2078, i8* %13, align 1
  %2079 = xor i64 %2065, %2067
  %2080 = xor i64 %2079, %2068
  %2081 = lshr i64 %2080, 4
  %2082 = trunc i64 %2081 to i8
  %2083 = and i8 %2082, 1
  store i8 %2083, i8* %14, align 1
  %2084 = icmp eq i64 %2068, 0
  %2085 = zext i1 %2084 to i8
  store i8 %2085, i8* %15, align 1
  %2086 = lshr i64 %2068, 63
  %2087 = trunc i64 %2086 to i8
  store i8 %2087, i8* %16, align 1
  %2088 = lshr i64 %2067, 63
  %2089 = xor i64 %2086, %2088
  %2090 = xor i64 %2086, %2066
  %2091 = add nuw nsw i64 %2089, %2090
  %2092 = icmp eq i64 %2091, 2
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %17, align 1
  %2094 = add i64 %2068, 44
  %2095 = add i64 %1042, 59
  store i64 %2095, i64* %3, align 8
  %2096 = load <2 x float>, <2 x float>* %44, align 1
  %2097 = bitcast i64* %631 to <2 x i32>*
  %2098 = load <2 x i32>, <2 x i32>* %2097, align 1
  %2099 = inttoptr i64 %2094 to float*
  %2100 = load float, float* %2099, align 4
  %2101 = extractelement <2 x float> %2096, i32 0
  %2102 = fadd float %2101, %2100
  store float %2102, float* %2055, align 1
  %2103 = bitcast <2 x float> %2096 to <2 x i32>
  %2104 = extractelement <2 x i32> %2103, i32 1
  %2105 = bitcast i8* %2057 to i32*
  store i32 %2104, i32* %2105, align 1
  %2106 = extractelement <2 x i32> %2098, i32 0
  %2107 = bitcast i64* %631 to i32*
  store i32 %2106, i32* %2107, align 1
  %2108 = extractelement <2 x i32> %2098, i32 1
  %2109 = bitcast i8* %2060 to i32*
  store i32 %2108, i32* %2109, align 1
  %2110 = load <2 x float>, <2 x float>* %35, align 1
  %2111 = load <2 x i32>, <2 x i32>* %592, align 1
  %2112 = load <2 x float>, <2 x float>* %44, align 1
  %2113 = extractelement <2 x float> %2110, i32 0
  %2114 = extractelement <2 x float> %2112, i32 0
  %2115 = fmul float %2113, %2114
  store float %2115, float* %553, align 1
  %2116 = bitcast <2 x float> %2110 to <2 x i32>
  %2117 = extractelement <2 x i32> %2116, i32 1
  store i32 %2117, i32* %600, align 1
  %2118 = extractelement <2 x i32> %2111, i32 0
  store i32 %2118, i32* %602, align 1
  %2119 = extractelement <2 x i32> %2111, i32 1
  store i32 %2119, i32* %604, align 1
  %2120 = load i64, i64* %RBP.i, align 8
  %2121 = add i64 %2120, -8
  %2122 = add i64 %1042, 67
  store i64 %2122, i64* %3, align 8
  %2123 = inttoptr i64 %2121 to i32*
  %2124 = load i32, i32* %2123, align 4
  %2125 = sext i32 %2124 to i64
  %2126 = mul nsw i64 %2125, 564
  store i64 %2126, i64* %RCX.i1729.pre-phi, align 8
  %2127 = lshr i64 %2126, 63
  %2128 = load i64, i64* %RAX.i1732.pre-phi, align 8
  %2129 = add i64 %2126, %2128
  store i64 %2129, i64* %RAX.i1732.pre-phi, align 8
  %2130 = icmp ult i64 %2129, %2128
  %2131 = icmp ult i64 %2129, %2126
  %2132 = or i1 %2130, %2131
  %2133 = zext i1 %2132 to i8
  store i8 %2133, i8* %12, align 1
  %2134 = trunc i64 %2129 to i32
  %2135 = and i32 %2134, 255
  %2136 = tail call i32 @llvm.ctpop.i32(i32 %2135)
  %2137 = trunc i32 %2136 to i8
  %2138 = and i8 %2137, 1
  %2139 = xor i8 %2138, 1
  store i8 %2139, i8* %13, align 1
  %2140 = xor i64 %2126, %2128
  %2141 = xor i64 %2140, %2129
  %2142 = lshr i64 %2141, 4
  %2143 = trunc i64 %2142 to i8
  %2144 = and i8 %2143, 1
  store i8 %2144, i8* %14, align 1
  %2145 = icmp eq i64 %2129, 0
  %2146 = zext i1 %2145 to i8
  store i8 %2146, i8* %15, align 1
  %2147 = lshr i64 %2129, 63
  %2148 = trunc i64 %2147 to i8
  store i8 %2148, i8* %16, align 1
  %2149 = lshr i64 %2128, 63
  %2150 = xor i64 %2147, %2149
  %2151 = xor i64 %2147, %2127
  %2152 = add nuw nsw i64 %2150, %2151
  %2153 = icmp eq i64 %2152, 2
  %2154 = zext i1 %2153 to i8
  store i8 %2154, i8* %17, align 1
  %2155 = add i64 %2129, 8
  %2156 = add i64 %1042, 82
  store i64 %2156, i64* %3, align 8
  %2157 = load <2 x float>, <2 x float>* %35, align 1
  %2158 = extractelement <2 x float> %2157, i32 0
  %2159 = inttoptr i64 %2155 to float*
  store float %2158, float* %2159, align 4
  %.pre103 = load i64, i64* %3, align 8
  %.pre176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %.pre178 = bitcast %union.VectorReg* %.pre176 to double*
  %.pre180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %.pre182 = bitcast %union.VectorReg* %39 to <2 x i32>*
  br label %block_.L_480678

block_.L_480678:                                  ; preds = %block_.L_480626, %block_.L_480621
  %.pre-phi190 = phi i32* [ %2109, %block_.L_480626 ], [ %1627, %block_.L_480621 ]
  %.pre-phi188 = phi i32* [ %2107, %block_.L_480626 ], [ %1625, %block_.L_480621 ]
  %.pre-phi187 = phi i32* [ %2105, %block_.L_480626 ], [ %1624, %block_.L_480621 ]
  %.pre-phi185 = phi float* [ %2055, %block_.L_480626 ], [ %1782, %block_.L_480621 ]
  %.pre-phi184 = phi <2 x i32>* [ %2097, %block_.L_480626 ], [ %1085, %block_.L_480621 ]
  %.pre-phi183 = phi <2 x i32>* [ %.pre182, %block_.L_480626 ], [ %1083, %block_.L_480621 ]
  %.pre-phi181 = phi i64* [ %.pre180, %block_.L_480626 ], [ %1063, %block_.L_480621 ]
  %.pre-phi179 = phi double* [ %.pre178, %block_.L_480626 ], [ %1080, %block_.L_480621 ]
  %2160 = phi i64 [ %.pre103, %block_.L_480626 ], [ %2013, %block_.L_480621 ]
  %MEMORY.16 = phi %struct.Memory* [ %1040, %block_.L_480626 ], [ %1970, %block_.L_480621 ]
  store i32 0, i32* %.pre-phi198, align 1
  store i32 0, i32* %600, align 1
  store i32 0, i32* %602, align 1
  store i32 0, i32* %604, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %2161 = add i64 %2160, add (i64 ptrtoint (%G_0x62a03__rip__type* @G_0x62a03__rip_ to i64), i64 13)
  %2162 = add i64 %2160, 21
  store i64 %2162, i64* %3, align 8
  %2163 = inttoptr i64 %2161 to i64*
  %2164 = load i64, i64* %2163, align 8
  store i64 %2164, i64* %630, align 1
  store double 0.000000e+00, double* %632, align 1
  %2165 = load i64, i64* %RBP.i, align 8
  %2166 = add i64 %2165, -8
  %2167 = add i64 %2160, 25
  store i64 %2167, i64* %3, align 8
  %2168 = inttoptr i64 %2166 to i32*
  %2169 = load i32, i32* %2168, align 4
  %2170 = sext i32 %2169 to i64
  %2171 = mul nsw i64 %2170, 564
  store i64 %2171, i64* %RCX.i1729.pre-phi, align 8
  %2172 = lshr i64 %2171, 63
  %2173 = add i64 %2171, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %2173, i64* %RDX.i1725, align 8
  %2174 = icmp ult i64 %2173, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %2175 = icmp ult i64 %2173, %2171
  %2176 = or i1 %2174, %2175
  %2177 = zext i1 %2176 to i8
  store i8 %2177, i8* %12, align 1
  %2178 = trunc i64 %2173 to i32
  %2179 = and i32 %2178, 252
  %2180 = tail call i32 @llvm.ctpop.i32(i32 %2179)
  %2181 = trunc i32 %2180 to i8
  %2182 = and i8 %2181, 1
  %2183 = xor i8 %2182, 1
  store i8 %2183, i8* %13, align 1
  %2184 = xor i64 %2171, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %2185 = xor i64 %2184, %2173
  %2186 = lshr i64 %2185, 4
  %2187 = trunc i64 %2186 to i8
  %2188 = and i8 %2187, 1
  store i8 %2188, i8* %14, align 1
  %2189 = icmp eq i64 %2173, 0
  %2190 = zext i1 %2189 to i8
  store i8 %2190, i8* %15, align 1
  %2191 = lshr i64 %2173, 63
  %2192 = trunc i64 %2191 to i8
  store i8 %2192, i8* %16, align 1
  %2193 = xor i64 %2191, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %2194 = xor i64 %2191, %2172
  %2195 = add nuw nsw i64 %2193, %2194
  %2196 = icmp eq i64 %2195, 2
  %2197 = zext i1 %2196 to i8
  store i8 %2197, i8* %17, align 1
  %2198 = add i64 %2171, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 48)
  %2199 = add i64 %2160, 43
  store i64 %2199, i64* %3, align 8
  %2200 = inttoptr i64 %2198 to float*
  %2201 = load float, float* %2200, align 4
  %2202 = fpext float %2201 to double
  store double %2202, double* %.pre-phi179, align 1
  %2203 = bitcast i64 %2164 to double
  %2204 = fmul double %2202, %2203
  store double %2204, double* %629, align 1
  store i64 0, i64* %631, align 1
  %2205 = add i64 %2165, -24
  %2206 = add i64 %2160, 52
  store i64 %2206, i64* %3, align 8
  %2207 = inttoptr i64 %2205 to float*
  %2208 = load float, float* %2207, align 4
  %2209 = fpext float %2208 to double
  %2210 = fadd double %2209, %2204
  store double %2210, double* %.pre-phi179, align 1
  %2211 = bitcast double %2204 to <2 x i32>
  %2212 = fptrunc double %2210 to float
  store float %2212, float* %.pre-phi185, align 1
  %2213 = extractelement <2 x i32> %2211, i32 1
  store i32 %2213, i32* %.pre-phi187, align 1
  store i32 0, i32* %.pre-phi188, align 1
  store i32 0, i32* %.pre-phi190, align 1
  %2214 = load i64, i64* %RBP.i, align 8
  %2215 = add i64 %2214, -24
  %2216 = add i64 %2160, 65
  store i64 %2216, i64* %3, align 8
  %2217 = load <2 x float>, <2 x float>* %44, align 1
  %2218 = extractelement <2 x float> %2217, i32 0
  %2219 = inttoptr i64 %2215 to float*
  store float %2218, float* %2219, align 4
  %2220 = load i64, i64* %RBP.i, align 8
  %2221 = add i64 %2220, -8
  %2222 = load i64, i64* %3, align 8
  %2223 = add i64 %2222, 4
  store i64 %2223, i64* %3, align 8
  %2224 = inttoptr i64 %2221 to i32*
  %2225 = load i32, i32* %2224, align 4
  %2226 = sext i32 %2225 to i64
  %2227 = mul nsw i64 %2226, 564
  store i64 %2227, i64* %RCX.i1729.pre-phi, align 8
  %2228 = lshr i64 %2227, 63
  %2229 = load i64, i64* %RAX.i1732.pre-phi, align 8
  %2230 = add i64 %2227, %2229
  store i64 %2230, i64* %RAX.i1732.pre-phi, align 8
  %2231 = icmp ult i64 %2230, %2229
  %2232 = icmp ult i64 %2230, %2227
  %2233 = or i1 %2231, %2232
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %12, align 1
  %2235 = trunc i64 %2230 to i32
  %2236 = and i32 %2235, 255
  %2237 = tail call i32 @llvm.ctpop.i32(i32 %2236)
  %2238 = trunc i32 %2237 to i8
  %2239 = and i8 %2238, 1
  %2240 = xor i8 %2239, 1
  store i8 %2240, i8* %13, align 1
  %2241 = xor i64 %2227, %2229
  %2242 = xor i64 %2241, %2230
  %2243 = lshr i64 %2242, 4
  %2244 = trunc i64 %2243 to i8
  %2245 = and i8 %2244, 1
  store i8 %2245, i8* %14, align 1
  %2246 = icmp eq i64 %2230, 0
  %2247 = zext i1 %2246 to i8
  store i8 %2247, i8* %15, align 1
  %2248 = lshr i64 %2230, 63
  %2249 = trunc i64 %2248 to i8
  store i8 %2249, i8* %16, align 1
  %2250 = lshr i64 %2229, 63
  %2251 = xor i64 %2248, %2250
  %2252 = xor i64 %2248, %2228
  %2253 = add nuw nsw i64 %2251, %2252
  %2254 = icmp eq i64 %2253, 2
  %2255 = zext i1 %2254 to i8
  store i8 %2255, i8* %17, align 1
  %2256 = add i64 %2230, 48
  %2257 = add i64 %2222, 19
  store i64 %2257, i64* %3, align 8
  %2258 = inttoptr i64 %2256 to float*
  %2259 = load float, float* %2258, align 4
  %2260 = fpext float %2259 to double
  store double %2260, double* %629, align 1
  %2261 = add i64 %2222, 23
  store i64 %2261, i64* %3, align 8
  %2262 = load double, double* %646, align 1
  %2263 = fcmp uno double %2260, %2262
  br i1 %2263, label %2264, label %2274

; <label>:2264:                                   ; preds = %block_.L_480678
  %2265 = fadd double %2260, %2262
  %2266 = bitcast double %2265 to i64
  %2267 = and i64 %2266, 9221120237041090560
  %2268 = icmp eq i64 %2267, 9218868437227405312
  %2269 = and i64 %2266, 2251799813685247
  %2270 = icmp ne i64 %2269, 0
  %2271 = and i1 %2268, %2270
  br i1 %2271, label %2272, label %2280

; <label>:2272:                                   ; preds = %2264
  %2273 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2261, %struct.Memory* %MEMORY.16)
  %.pre104 = load i64, i64* %3, align 8
  %.pre105 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit1039

; <label>:2274:                                   ; preds = %block_.L_480678
  %2275 = fcmp ogt double %2260, %2262
  br i1 %2275, label %2280, label %2276

; <label>:2276:                                   ; preds = %2274
  %2277 = fcmp olt double %2260, %2262
  br i1 %2277, label %2280, label %2278

; <label>:2278:                                   ; preds = %2276
  %2279 = fcmp oeq double %2260, %2262
  br i1 %2279, label %2280, label %2284

; <label>:2280:                                   ; preds = %2278, %2276, %2274, %2264
  %2281 = phi i8 [ 0, %2274 ], [ 0, %2276 ], [ 1, %2278 ], [ 1, %2264 ]
  %2282 = phi i8 [ 0, %2274 ], [ 0, %2276 ], [ 0, %2278 ], [ 1, %2264 ]
  %2283 = phi i8 [ 0, %2274 ], [ 1, %2276 ], [ 0, %2278 ], [ 1, %2264 ]
  store i8 %2281, i8* %15, align 1
  store i8 %2282, i8* %13, align 1
  store i8 %2283, i8* %12, align 1
  br label %2284

; <label>:2284:                                   ; preds = %2280, %2278
  %2285 = phi i8 [ %2281, %2280 ], [ %2247, %2278 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit1039

routine_ucomisd__xmm0___xmm1.exit1039:            ; preds = %2284, %2272
  %2286 = phi i8 [ %.pre105, %2272 ], [ %2285, %2284 ]
  %2287 = phi i64 [ %.pre104, %2272 ], [ %2261, %2284 ]
  %2288 = phi %struct.Memory* [ %2273, %2272 ], [ %MEMORY.16, %2284 ]
  %2289 = icmp eq i8 %2286, 0
  %.v229 = select i1 %2289, i64 17, i64 6
  %2290 = add i64 %2287, %.v229
  store i64 %2290, i64* %3, align 8
  br i1 %2289, label %block_.L_4806e1, label %block_4806d6

block_4806d6:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit1039
  %2291 = load i8, i8* %13, align 1
  %2292 = icmp ne i8 %2291, 0
  %.v259 = select i1 %2292, i64 11, i64 6
  %2293 = add i64 %2290, %.v259
  store i64 %2293, i64* %3, align 8
  %cmpBr_4806d6 = icmp eq i8 %2291, 1
  br i1 %cmpBr_4806d6, label %block_.L_4806e1, label %block_4806dc

block_4806dc:                                     ; preds = %block_4806d6
  %2294 = add i64 %2293, 93
  br label %block_.L_480739

block_.L_4806e1:                                  ; preds = %block_4806d6, %routine_ucomisd__xmm0___xmm1.exit1039
  %2295 = phi i64 [ %2293, %block_4806d6 ], [ %2290, %routine_ucomisd__xmm0___xmm1.exit1039 ]
  %2296 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %2297 = and i32 %2296, 255
  %2298 = tail call i32 @llvm.ctpop.i32(i32 %2297)
  %2299 = trunc i32 %2298 to i8
  %2300 = and i8 %2299, 1
  %2301 = xor i8 %2300, 1
  store i8 %2301, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2302 = icmp eq i32 %2296, 0
  %2303 = zext i1 %2302 to i8
  store i8 %2303, i8* %15, align 1
  %2304 = lshr i32 %2296, 31
  %2305 = trunc i32 %2304 to i8
  store i8 %2305, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v253 = select i1 %2302, i64 14, i64 19
  %2306 = add i64 %2295, %.v253
  store i64 %2306, i64* %3, align 8
  br i1 %2302, label %block_4806ef, label %block_.L_4806f4

block_4806ef:                                     ; preds = %block_.L_4806e1
  %2307 = add i64 %2306, 69
  store i64 %2307, i64* %3, align 8
  br label %block_.L_480734

block_.L_4806f4:                                  ; preds = %block_.L_4806e1
  store i64 ptrtoint (%G__0x5820d3_type* @G__0x5820d3 to i64), i64* %RDI.i776.pre-phi, align 8
  %2308 = add i64 %2306, add (i64 ptrtoint (%G_0x6298a__rip__type* @G_0x6298a__rip_ to i64), i64 10)
  %2309 = add i64 %2306, 18
  store i64 %2309, i64* %3, align 8
  %2310 = inttoptr i64 %2308 to i64*
  %2311 = load i64, i64* %2310, align 8
  store i64 %2311, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %RSI.i1022 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %2312 = load i64, i64* %RBP.i, align 8
  %2313 = add i64 %2312, -8
  %2314 = add i64 %2306, 31
  store i64 %2314, i64* %3, align 8
  %2315 = inttoptr i64 %2313 to i32*
  %2316 = load i32, i32* %2315, align 4
  %2317 = zext i32 %2316 to i64
  store i64 %2317, i64* %RSI.i1022, align 8
  %2318 = add i64 %2306, 35
  store i64 %2318, i64* %3, align 8
  %2319 = load i32, i32* %2315, align 4
  %2320 = sext i32 %2319 to i64
  %2321 = mul nsw i64 %2320, 564
  store i64 %2321, i64* %RCX.i1729.pre-phi, align 8
  %2322 = lshr i64 %2321, 63
  %2323 = add i64 %2321, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %2323, i64* %RAX.i1732.pre-phi, align 8
  %2324 = icmp ult i64 %2323, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %2325 = icmp ult i64 %2323, %2321
  %2326 = or i1 %2324, %2325
  %2327 = zext i1 %2326 to i8
  store i8 %2327, i8* %12, align 1
  %2328 = trunc i64 %2323 to i32
  %2329 = and i32 %2328, 252
  %2330 = tail call i32 @llvm.ctpop.i32(i32 %2329)
  %2331 = trunc i32 %2330 to i8
  %2332 = and i8 %2331, 1
  %2333 = xor i8 %2332, 1
  store i8 %2333, i8* %13, align 1
  %2334 = xor i64 %2321, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %2335 = xor i64 %2334, %2323
  %2336 = lshr i64 %2335, 4
  %2337 = trunc i64 %2336 to i8
  %2338 = and i8 %2337, 1
  store i8 %2338, i8* %14, align 1
  %2339 = icmp eq i64 %2323, 0
  %2340 = zext i1 %2339 to i8
  store i8 %2340, i8* %15, align 1
  %2341 = lshr i64 %2323, 63
  %2342 = trunc i64 %2341 to i8
  store i8 %2342, i8* %16, align 1
  %2343 = xor i64 %2341, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %2344 = xor i64 %2341, %2322
  %2345 = add nuw nsw i64 %2343, %2344
  %2346 = icmp eq i64 %2345, 2
  %2347 = zext i1 %2346 to i8
  store i8 %2347, i8* %17, align 1
  %2348 = add i64 %2321, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 48)
  %2349 = add i64 %2306, 50
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2348 to float*
  %2351 = load float, float* %2350, align 4
  %2352 = fpext float %2351 to double
  store double %2352, double* %629, align 1
  %2353 = bitcast i64 %2311 to double
  %2354 = fmul double %2352, %2353
  store double %2354, double* %646, align 1
  store i64 0, i64* %.pre-phi202, align 1
  %AL.i1006 = bitcast %union.anon* %EAX.i819.pre-phi.in to i8*
  store i8 1, i8* %AL.i1006, align 1
  %2355 = add i64 %2306, -190788
  %2356 = add i64 %2306, 61
  %2357 = load i64, i64* %6, align 8
  %2358 = add i64 %2357, -8
  %2359 = inttoptr i64 %2358 to i64*
  store i64 %2356, i64* %2359, align 8
  store i64 %2358, i64* %6, align 8
  store i64 %2355, i64* %3, align 8
  %call2_48072c = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2355, %struct.Memory* %2288)
  %2360 = load i64, i64* %RBP.i, align 8
  %2361 = add i64 %2360, -120
  %2362 = load i32, i32* %EAX.i819.pre-phi, align 4
  %2363 = load i64, i64* %3, align 8
  %2364 = add i64 %2363, 3
  store i64 %2364, i64* %3, align 8
  %2365 = inttoptr i64 %2361 to i32*
  store i32 %2362, i32* %2365, align 4
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_480734

block_.L_480734:                                  ; preds = %block_.L_4806f4, %block_4806ef
  %2366 = phi i64 [ %.pre106, %block_.L_4806f4 ], [ %2307, %block_4806ef ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_48072c, %block_.L_4806f4 ], [ %2288, %block_4806ef ]
  %2367 = add i64 %2366, 5
  store i64 %2367, i64* %3, align 8
  br label %block_.L_480739

block_.L_480739:                                  ; preds = %block_.L_480734, %block_4806dc
  %storemerge53 = phi i64 [ %2294, %block_4806dc ], [ %2367, %block_.L_480734 ]
  %MEMORY.19 = phi %struct.Memory* [ %2288, %block_4806dc ], [ %MEMORY.18, %block_.L_480734 ]
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %2368 = load i64, i64* %RBP.i, align 8
  %2369 = add i64 %2368, -8
  %2370 = add i64 %storemerge53, 14
  store i64 %2370, i64* %3, align 8
  %2371 = inttoptr i64 %2369 to i32*
  %2372 = load i32, i32* %2371, align 4
  %2373 = sext i32 %2372 to i64
  %2374 = mul nsw i64 %2373, 564
  store i64 %2374, i64* %RCX.i1729.pre-phi, align 8
  %2375 = lshr i64 %2374, 63
  %2376 = add i64 %2374, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %2376, i64* %RDX.i1725, align 8
  %2377 = icmp ult i64 %2376, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %2378 = icmp ult i64 %2376, %2374
  %2379 = or i1 %2377, %2378
  %2380 = zext i1 %2379 to i8
  store i8 %2380, i8* %12, align 1
  %2381 = trunc i64 %2376 to i32
  %2382 = and i32 %2381, 252
  %2383 = tail call i32 @llvm.ctpop.i32(i32 %2382)
  %2384 = trunc i32 %2383 to i8
  %2385 = and i8 %2384, 1
  %2386 = xor i8 %2385, 1
  store i8 %2386, i8* %13, align 1
  %2387 = xor i64 %2374, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %2388 = xor i64 %2387, %2376
  %2389 = lshr i64 %2388, 4
  %2390 = trunc i64 %2389 to i8
  %2391 = and i8 %2390, 1
  store i8 %2391, i8* %14, align 1
  %2392 = icmp eq i64 %2376, 0
  %2393 = zext i1 %2392 to i8
  store i8 %2393, i8* %15, align 1
  %2394 = lshr i64 %2376, 63
  %2395 = trunc i64 %2394 to i8
  store i8 %2395, i8* %16, align 1
  %2396 = xor i64 %2394, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %2397 = xor i64 %2394, %2375
  %2398 = add nuw nsw i64 %2396, %2397
  %2399 = icmp eq i64 %2398, 2
  %2400 = zext i1 %2399 to i8
  store i8 %2400, i8* %17, align 1
  %RSI.i986 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %2401 = add i64 %2374, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 28)
  %2402 = add i64 %storemerge53, 30
  store i64 %2402, i64* %3, align 8
  %2403 = inttoptr i64 %2401 to i32*
  %2404 = load i32, i32* %2403, align 4
  %2405 = zext i32 %2404 to i64
  store i64 %2405, i64* %RSI.i986, align 8
  %2406 = add i64 %storemerge53, 34
  store i64 %2406, i64* %3, align 8
  %2407 = load i32, i32* %2371, align 4
  %2408 = sext i32 %2407 to i64
  %2409 = mul nsw i64 %2408, 564
  store i64 %2409, i64* %RCX.i1729.pre-phi, align 8
  %2410 = lshr i64 %2409, 63
  %2411 = load i64, i64* %RAX.i1732.pre-phi, align 8
  %2412 = add i64 %2409, %2411
  store i64 %2412, i64* %RAX.i1732.pre-phi, align 8
  %2413 = icmp ult i64 %2412, %2411
  %2414 = icmp ult i64 %2412, %2409
  %2415 = or i1 %2413, %2414
  %2416 = zext i1 %2415 to i8
  store i8 %2416, i8* %12, align 1
  %2417 = trunc i64 %2412 to i32
  %2418 = and i32 %2417, 255
  %2419 = tail call i32 @llvm.ctpop.i32(i32 %2418)
  %2420 = trunc i32 %2419 to i8
  %2421 = and i8 %2420, 1
  %2422 = xor i8 %2421, 1
  store i8 %2422, i8* %13, align 1
  %2423 = xor i64 %2409, %2411
  %2424 = xor i64 %2423, %2412
  %2425 = lshr i64 %2424, 4
  %2426 = trunc i64 %2425 to i8
  %2427 = and i8 %2426, 1
  store i8 %2427, i8* %14, align 1
  %2428 = icmp eq i64 %2412, 0
  %2429 = zext i1 %2428 to i8
  store i8 %2429, i8* %15, align 1
  %2430 = lshr i64 %2412, 63
  %2431 = trunc i64 %2430 to i8
  store i8 %2431, i8* %16, align 1
  %2432 = lshr i64 %2411, 63
  %2433 = xor i64 %2430, %2432
  %2434 = xor i64 %2430, %2410
  %2435 = add nuw nsw i64 %2433, %2434
  %2436 = icmp eq i64 %2435, 2
  %2437 = zext i1 %2436 to i8
  store i8 %2437, i8* %17, align 1
  %2438 = add i64 %2412, 32
  %2439 = add i64 %storemerge53, 47
  store i64 %2439, i64* %3, align 8
  %2440 = inttoptr i64 %2438 to i32*
  %2441 = load i32, i32* %2440, align 4
  %2442 = add i32 %2441, %2404
  %2443 = zext i32 %2442 to i64
  store i64 %2443, i64* %RSI.i986, align 8
  %2444 = and i32 %2442, 255
  %2445 = tail call i32 @llvm.ctpop.i32(i32 %2444)
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  %2448 = xor i8 %2447, 1
  %2449 = icmp eq i32 %2442, 0
  %2450 = zext i1 %2449 to i8
  %2451 = lshr i32 %2442, 31
  %2452 = trunc i32 %2451 to i8
  store i8 0, i8* %12, align 1
  store i8 %2448, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 %2450, i8* %15, align 1
  store i8 %2452, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2453 = icmp ne i8 %2452, 0
  %2454 = or i1 %2449, %2453
  %.v230 = select i1 %2454, i64 271, i64 56
  %2455 = add i64 %storemerge53, %.v230
  store i64 %2455, i64* %3, align 8
  br i1 %2454, label %block_.L_480848, label %block_480771

block_480771:                                     ; preds = %block_.L_480739
  %2456 = load i64, i64* %RBP.i, align 8
  %2457 = add i64 %2456, -24
  %2458 = add i64 %2455, 5
  store i64 %2458, i64* %3, align 8
  %2459 = inttoptr i64 %2457 to i32*
  %2460 = load i32, i32* %2459, align 4
  store i32 %2460, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %2461 = add i64 %2456, -52
  %2462 = add i64 %2455, 10
  store i64 %2462, i64* %3, align 8
  %2463 = load <2 x float>, <2 x float>* %35, align 1
  %2464 = extractelement <2 x float> %2463, i32 0
  %2465 = inttoptr i64 %2461 to float*
  store float %2464, float* %2465, align 4
  %2466 = load i64, i64* %RBP.i, align 8
  %2467 = add i64 %2466, -28
  %2468 = load i64, i64* %3, align 8
  %2469 = add i64 %2468, 5
  store i64 %2469, i64* %3, align 8
  %2470 = inttoptr i64 %2467 to i32*
  %2471 = load i32, i32* %2470, align 4
  store i32 %2471, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %2472 = add i64 %2466, -24
  %2473 = add i64 %2468, 10
  store i64 %2473, i64* %3, align 8
  %2474 = load <2 x float>, <2 x float>* %35, align 1
  %2475 = load <2 x i32>, <2 x i32>* %592, align 1
  %2476 = inttoptr i64 %2472 to float*
  %2477 = load float, float* %2476, align 4
  %2478 = extractelement <2 x float> %2474, i32 0
  %2479 = fmul float %2478, %2477
  store float %2479, float* %553, align 1
  %2480 = bitcast <2 x float> %2474 to <2 x i32>
  %2481 = extractelement <2 x i32> %2480, i32 1
  store i32 %2481, i32* %600, align 1
  %2482 = extractelement <2 x i32> %2475, i32 0
  store i32 %2482, i32* %602, align 1
  %2483 = extractelement <2 x i32> %2475, i32 1
  store i32 %2483, i32* %604, align 1
  %2484 = add i64 %2468, 15
  store i64 %2484, i64* %3, align 8
  %2485 = load <2 x float>, <2 x float>* %35, align 1
  %2486 = extractelement <2 x float> %2485, i32 0
  store float %2486, float* %2476, align 4
  %2487 = load i64, i64* %3, align 8
  %2488 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %2489 = and i32 %2488, 255
  %2490 = tail call i32 @llvm.ctpop.i32(i32 %2489)
  %2491 = trunc i32 %2490 to i8
  %2492 = and i8 %2491, 1
  %2493 = xor i8 %2492, 1
  store i8 %2493, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2494 = icmp eq i32 %2488, 0
  %2495 = zext i1 %2494 to i8
  store i8 %2495, i8* %15, align 1
  %2496 = lshr i32 %2488, 31
  %2497 = trunc i32 %2496 to i8
  store i8 %2497, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v231 = select i1 %2494, i64 185, i64 14
  %2498 = add i64 %2487, %.v231
  store i64 %2498, i64* %3, align 8
  br i1 %2494, label %block_.L_480843, label %block_480798

block_480798:                                     ; preds = %block_480771
  store i64 ptrtoint (%G__0x5820ea_type* @G__0x5820ea to i64), i64* %RDI.i776.pre-phi, align 8
  %2499 = load i64, i64* %RBP.i, align 8
  %2500 = add i64 %2499, -8
  %2501 = add i64 %2498, 13
  store i64 %2501, i64* %3, align 8
  %2502 = inttoptr i64 %2500 to i32*
  %2503 = load i32, i32* %2502, align 4
  %2504 = zext i32 %2503 to i64
  store i64 %2504, i64* %RSI.i986, align 8
  %2505 = add i64 %2499, -24
  %2506 = add i64 %2498, 18
  store i64 %2506, i64* %3, align 8
  %2507 = inttoptr i64 %2505 to i32*
  %2508 = load i32, i32* %2507, align 4
  store i32 %2508, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %2509 = add i64 %2499, -52
  %2510 = add i64 %2498, 23
  store i64 %2510, i64* %3, align 8
  %2511 = load <2 x float>, <2 x float>* %35, align 1
  %2512 = load <2 x i32>, <2 x i32>* %592, align 1
  %2513 = inttoptr i64 %2509 to float*
  %2514 = load float, float* %2513, align 4
  %2515 = extractelement <2 x float> %2511, i32 0
  %2516 = fsub float %2515, %2514
  store float %2516, float* %553, align 1
  %2517 = bitcast <2 x float> %2511 to <2 x i32>
  %2518 = extractelement <2 x i32> %2517, i32 1
  store i32 %2518, i32* %600, align 1
  %2519 = extractelement <2 x i32> %2512, i32 0
  store i32 %2519, i32* %602, align 1
  %2520 = extractelement <2 x i32> %2512, i32 1
  store i32 %2520, i32* %604, align 1
  %2521 = load <2 x float>, <2 x float>* %35, align 1
  %2522 = extractelement <2 x float> %2521, i32 0
  %2523 = fpext float %2522 to double
  store double %2523, double* %646, align 1
  %AL.i938 = bitcast %union.anon* %EAX.i819.pre-phi.in to i8*
  store i8 1, i8* %AL.i938, align 1
  %2524 = add i64 %2498, -190952
  %2525 = add i64 %2498, 34
  %2526 = load i64, i64* %6, align 8
  %2527 = add i64 %2526, -8
  %2528 = inttoptr i64 %2527 to i64*
  store i64 %2525, i64* %2528, align 8
  store i64 %2527, i64* %6, align 8
  store i64 %2524, i64* %3, align 8
  %call2_4807b5 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2524, %struct.Memory* %MEMORY.19)
  %2529 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5820fd_type* @G__0x5820fd to i64), i64* %RSI.i986, align 8
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RDI.i776.pre-phi, align 8
  %2530 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %2530, i64* %RCX.i1729.pre-phi, align 8
  %2531 = load i64, i64* %RBP.i, align 8
  %2532 = add i64 %2531, -8
  %2533 = add i64 %2529, 32
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to i32*
  %2535 = load i32, i32* %2534, align 4
  %2536 = sext i32 %2535 to i64
  %2537 = mul nsw i64 %2536, 564
  store i64 %2537, i64* %RDX.i1725, align 8
  %2538 = lshr i64 %2537, 63
  %R8.i924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %2539 = add i64 %2537, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %2539, i64* %R8.i924, align 8
  %2540 = icmp ult i64 %2539, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %2541 = icmp ult i64 %2539, %2537
  %2542 = or i1 %2540, %2541
  %2543 = zext i1 %2542 to i8
  store i8 %2543, i8* %12, align 1
  %2544 = trunc i64 %2539 to i32
  %2545 = and i32 %2544, 252
  %2546 = tail call i32 @llvm.ctpop.i32(i32 %2545)
  %2547 = trunc i32 %2546 to i8
  %2548 = and i8 %2547, 1
  %2549 = xor i8 %2548, 1
  store i8 %2549, i8* %13, align 1
  %2550 = xor i64 %2537, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %2551 = xor i64 %2550, %2539
  %2552 = lshr i64 %2551, 4
  %2553 = trunc i64 %2552 to i8
  %2554 = and i8 %2553, 1
  store i8 %2554, i8* %14, align 1
  %2555 = icmp eq i64 %2539, 0
  %2556 = zext i1 %2555 to i8
  store i8 %2556, i8* %15, align 1
  %2557 = lshr i64 %2539, 63
  %2558 = trunc i64 %2557 to i8
  store i8 %2558, i8* %16, align 1
  %2559 = xor i64 %2557, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %2560 = xor i64 %2557, %2538
  %2561 = add nuw nsw i64 %2559, %2560
  %2562 = icmp eq i64 %2561, 2
  %2563 = zext i1 %2562 to i8
  store i8 %2563, i8* %17, align 1
  %2564 = add i64 %2537, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 20)
  %2565 = add i64 %2529, 51
  store i64 %2565, i64* %3, align 8
  %2566 = inttoptr i64 %2564 to float*
  %2567 = load float, float* %2566, align 4
  %2568 = fpext float %2567 to double
  store double %2568, double* %646, align 1
  %2569 = add i64 %2529, 55
  store i64 %2569, i64* %3, align 8
  %2570 = load i32, i32* %2534, align 4
  %2571 = sext i32 %2570 to i64
  %2572 = mul nsw i64 %2571, 564
  store i64 %2572, i64* %RDX.i1725, align 8
  %2573 = lshr i64 %2572, 63
  %2574 = load i64, i64* %RDI.i776.pre-phi, align 8
  %2575 = add i64 %2572, %2574
  store i64 %2575, i64* %R8.i924, align 8
  %2576 = icmp ult i64 %2575, %2574
  %2577 = icmp ult i64 %2575, %2572
  %2578 = or i1 %2576, %2577
  %2579 = zext i1 %2578 to i8
  store i8 %2579, i8* %12, align 1
  %2580 = trunc i64 %2575 to i32
  %2581 = and i32 %2580, 255
  %2582 = tail call i32 @llvm.ctpop.i32(i32 %2581)
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  %2585 = xor i8 %2584, 1
  store i8 %2585, i8* %13, align 1
  %2586 = xor i64 %2572, %2574
  %2587 = xor i64 %2586, %2575
  %2588 = lshr i64 %2587, 4
  %2589 = trunc i64 %2588 to i8
  %2590 = and i8 %2589, 1
  store i8 %2590, i8* %14, align 1
  %2591 = icmp eq i64 %2575, 0
  %2592 = zext i1 %2591 to i8
  store i8 %2592, i8* %15, align 1
  %2593 = lshr i64 %2575, 63
  %2594 = trunc i64 %2593 to i8
  store i8 %2594, i8* %16, align 1
  %2595 = lshr i64 %2574, 63
  %2596 = xor i64 %2593, %2595
  %2597 = xor i64 %2593, %2573
  %2598 = add nuw nsw i64 %2596, %2597
  %2599 = icmp eq i64 %2598, 2
  %2600 = zext i1 %2599 to i8
  store i8 %2600, i8* %17, align 1
  %2601 = add i64 %2575, 28
  %2602 = add i64 %2529, 72
  store i64 %2602, i64* %3, align 8
  %2603 = inttoptr i64 %2601 to i32*
  %2604 = load i32, i32* %2603, align 4
  %2605 = zext i32 %2604 to i64
  store i64 %2605, i64* %RDX.i1725, align 8
  %2606 = load i64, i64* %RBP.i, align 8
  %2607 = add i64 %2606, -8
  %2608 = add i64 %2529, 76
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2607 to i32*
  %2610 = load i32, i32* %2609, align 4
  %2611 = sext i32 %2610 to i64
  %2612 = mul nsw i64 %2611, 564
  store i64 %2612, i64* %R8.i924, align 8
  %2613 = lshr i64 %2612, 63
  %R9.i896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %2614 = add i64 %2612, %2574
  store i64 %2614, i64* %R9.i896, align 8
  %2615 = icmp ult i64 %2614, %2574
  %2616 = icmp ult i64 %2614, %2612
  %2617 = or i1 %2615, %2616
  %2618 = zext i1 %2617 to i8
  store i8 %2618, i8* %12, align 1
  %2619 = trunc i64 %2614 to i32
  %2620 = and i32 %2619, 255
  %2621 = tail call i32 @llvm.ctpop.i32(i32 %2620)
  %2622 = trunc i32 %2621 to i8
  %2623 = and i8 %2622, 1
  %2624 = xor i8 %2623, 1
  store i8 %2624, i8* %13, align 1
  %2625 = xor i64 %2612, %2574
  %2626 = xor i64 %2625, %2614
  %2627 = lshr i64 %2626, 4
  %2628 = trunc i64 %2627 to i8
  %2629 = and i8 %2628, 1
  store i8 %2629, i8* %14, align 1
  %2630 = icmp eq i64 %2614, 0
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %15, align 1
  %2632 = lshr i64 %2614, 63
  %2633 = trunc i64 %2632 to i8
  store i8 %2633, i8* %16, align 1
  %2634 = xor i64 %2632, %2595
  %2635 = xor i64 %2632, %2613
  %2636 = add nuw nsw i64 %2634, %2635
  %2637 = icmp eq i64 %2636, 2
  %2638 = zext i1 %2637 to i8
  store i8 %2638, i8* %17, align 1
  %2639 = add i64 %2614, 24
  %2640 = add i64 %2529, 95
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2639 to float*
  %2642 = load float, float* %2641, align 4
  %2643 = fpext float %2642 to double
  store double %2643, double* %629, align 1
  %2644 = add i64 %2529, 99
  store i64 %2644, i64* %3, align 8
  %2645 = load i32, i32* %2609, align 4
  %2646 = sext i32 %2645 to i64
  %2647 = mul nsw i64 %2646, 564
  store i64 %2647, i64* %R8.i924, align 8
  %2648 = lshr i64 %2647, 63
  %2649 = load i64, i64* %RDI.i776.pre-phi, align 8
  %2650 = add i64 %2647, %2649
  store i64 %2650, i64* %RDI.i776.pre-phi, align 8
  %2651 = icmp ult i64 %2650, %2649
  %2652 = icmp ult i64 %2650, %2647
  %2653 = or i1 %2651, %2652
  %2654 = zext i1 %2653 to i8
  store i8 %2654, i8* %12, align 1
  %2655 = trunc i64 %2650 to i32
  %2656 = and i32 %2655, 255
  %2657 = tail call i32 @llvm.ctpop.i32(i32 %2656)
  %2658 = trunc i32 %2657 to i8
  %2659 = and i8 %2658, 1
  %2660 = xor i8 %2659, 1
  store i8 %2660, i8* %13, align 1
  %2661 = xor i64 %2647, %2649
  %2662 = xor i64 %2661, %2650
  %2663 = lshr i64 %2662, 4
  %2664 = trunc i64 %2663 to i8
  %2665 = and i8 %2664, 1
  store i8 %2665, i8* %14, align 1
  %2666 = icmp eq i64 %2650, 0
  %2667 = zext i1 %2666 to i8
  store i8 %2667, i8* %15, align 1
  %2668 = lshr i64 %2650, 63
  %2669 = trunc i64 %2668 to i8
  store i8 %2669, i8* %16, align 1
  %2670 = lshr i64 %2649, 63
  %2671 = xor i64 %2668, %2670
  %2672 = xor i64 %2668, %2648
  %2673 = add nuw nsw i64 %2671, %2672
  %2674 = icmp eq i64 %2673, 2
  %2675 = zext i1 %2674 to i8
  store i8 %2675, i8* %17, align 1
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %2677 = add i64 %2650, 32
  %2678 = add i64 %2529, 113
  store i64 %2678, i64* %3, align 8
  %2679 = inttoptr i64 %2677 to i32*
  %2680 = load i32, i32* %2679, align 4
  %2681 = zext i32 %2680 to i64
  store i64 %2681, i64* %2676, align 8
  %2682 = load i64, i64* %RBP.i, align 8
  %2683 = add i64 %2682, -28
  %2684 = add i64 %2529, 118
  store i64 %2684, i64* %3, align 8
  %2685 = inttoptr i64 %2683 to float*
  %2686 = load float, float* %2685, align 4
  %2687 = fpext float %2686 to double
  store double %2687, double* %.pre-phi179, align 1
  %2688 = load i64, i64* %RCX.i1729.pre-phi, align 8
  store i64 %2688, i64* %RDI.i776.pre-phi, align 8
  store i64 %2681, i64* %RCX.i1729.pre-phi, align 8
  %2689 = add i64 %2682, -124
  %2690 = load i32, i32* %EAX.i819.pre-phi, align 4
  %2691 = add i64 %2529, 127
  store i64 %2691, i64* %3, align 8
  %2692 = inttoptr i64 %2689 to i32*
  store i32 %2690, i32* %2692, align 4
  %2693 = load i64, i64* %3, align 8
  store i8 3, i8* %AL.i938, align 1
  %2694 = add i64 %2693, -522089
  %2695 = add i64 %2693, 7
  %2696 = load i64, i64* %6, align 8
  %2697 = add i64 %2696, -8
  %2698 = inttoptr i64 %2697 to i64*
  store i64 %2695, i64* %2698, align 8
  store i64 %2697, i64* %6, align 8
  store i64 %2694, i64* %3, align 8
  %2699 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_4807b5)
  %2700 = load i64, i64* %RBP.i, align 8
  %2701 = add i64 %2700, -128
  %2702 = load i32, i32* %EAX.i819.pre-phi, align 4
  %2703 = load i64, i64* %3, align 8
  %2704 = add i64 %2703, 3
  store i64 %2704, i64* %3, align 8
  %2705 = inttoptr i64 %2701 to i32*
  store i32 %2702, i32* %2705, align 4
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_480843

block_.L_480843:                                  ; preds = %block_480798, %block_480771
  %2706 = phi i64 [ %2498, %block_480771 ], [ %.pre107, %block_480798 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.19, %block_480771 ], [ %2699, %block_480798 ]
  %2707 = add i64 %2706, 5
  store i64 %2707, i64* %3, align 8
  br label %block_.L_480848

block_.L_480848:                                  ; preds = %block_.L_480843, %block_.L_480739
  %2708 = phi i64 [ %2455, %block_.L_480739 ], [ %2707, %block_.L_480843 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.19, %block_.L_480739 ], [ %MEMORY.20, %block_.L_480843 ]
  %2709 = load i64, i64* %RBP.i, align 8
  %2710 = add i64 %2709, -8
  %2711 = add i64 %2708, 3
  store i64 %2711, i64* %3, align 8
  %2712 = inttoptr i64 %2710 to i32*
  %2713 = load i32, i32* %2712, align 4
  %2714 = zext i32 %2713 to i64
  store i64 %2714, i64* %RDI.i776.pre-phi, align 8
  %2715 = add i64 %2709, -12
  %2716 = add i64 %2708, 6
  store i64 %2716, i64* %3, align 8
  %2717 = inttoptr i64 %2715 to i32*
  %2718 = load i32, i32* %2717, align 4
  %2719 = zext i32 %2718 to i64
  store i64 %2719, i64* %RSI.i986, align 8
  %2720 = add i64 %2708, 17992
  %2721 = add i64 %2708, 11
  %2722 = load i64, i64* %6, align 8
  %2723 = add i64 %2722, -8
  %2724 = inttoptr i64 %2723 to i64*
  store i64 %2721, i64* %2724, align 8
  store i64 %2723, i64* %6, align 8
  store i64 %2720, i64* %3, align 8
  %call2_48084e = tail call %struct.Memory* @sub_484e90.move_connects_strings(%struct.State* nonnull %0, i64 %2720, %struct.Memory* %MEMORY.21)
  %2725 = load i64, i64* %3, align 8
  store i64 3, i64* %RSI.i986, align 8
  %2726 = load i64, i64* %RBP.i, align 8
  %2727 = add i64 %2726, -8
  %2728 = add i64 %2725, 8
  store i64 %2728, i64* %3, align 8
  %2729 = inttoptr i64 %2727 to i32*
  %2730 = load i32, i32* %2729, align 4
  %2731 = zext i32 %2730 to i64
  store i64 %2731, i64* %RDI.i776.pre-phi, align 8
  %2732 = add i64 %2726, -12
  %2733 = add i64 %2725, 11
  store i64 %2733, i64* %3, align 8
  %2734 = inttoptr i64 %2732 to i32*
  %2735 = load i32, i32* %2734, align 4
  %2736 = sub i32 3, %2735
  %2737 = zext i32 %2736 to i64
  store i64 %2737, i64* %RSI.i986, align 8
  %2738 = icmp ugt i32 %2735, 3
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %12, align 1
  %2740 = and i32 %2736, 255
  %2741 = tail call i32 @llvm.ctpop.i32(i32 %2740)
  %2742 = trunc i32 %2741 to i8
  %2743 = and i8 %2742, 1
  %2744 = xor i8 %2743, 1
  store i8 %2744, i8* %13, align 1
  %2745 = xor i32 %2735, %2736
  %2746 = lshr i32 %2745, 4
  %2747 = trunc i32 %2746 to i8
  %2748 = and i8 %2747, 1
  store i8 %2748, i8* %14, align 1
  %2749 = icmp eq i32 %2736, 0
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %15, align 1
  %2751 = lshr i32 %2736, 31
  %2752 = trunc i32 %2751 to i8
  store i8 %2752, i8* %16, align 1
  %2753 = lshr i32 %2735, 31
  %2754 = add nuw nsw i32 %2751, %2753
  %2755 = icmp eq i32 %2754, 2
  %2756 = zext i1 %2755 to i8
  store i8 %2756, i8* %17, align 1
  %2757 = add i64 %2726, -132
  %2758 = load i32, i32* %EAX.i819.pre-phi, align 4
  %2759 = add i64 %2725, 17
  store i64 %2759, i64* %3, align 8
  %2760 = inttoptr i64 %2757 to i32*
  store i32 %2758, i32* %2760, align 4
  %2761 = load i64, i64* %3, align 8
  %2762 = add i64 %2761, 17964
  %2763 = add i64 %2761, 5
  %2764 = load i64, i64* %6, align 8
  %2765 = add i64 %2764, -8
  %2766 = inttoptr i64 %2765 to i64*
  store i64 %2763, i64* %2766, align 8
  store i64 %2765, i64* %6, align 8
  store i64 %2762, i64* %3, align 8
  %call2_480864 = tail call %struct.Memory* @sub_484e90.move_connects_strings(%struct.State* nonnull %0, i64 %2762, %struct.Memory* %call2_48084e)
  %2767 = load i64, i64* %RBP.i, align 8
  %2768 = add i64 %2767, -132
  %2769 = load i64, i64* %3, align 8
  %2770 = add i64 %2769, 6
  store i64 %2770, i64* %3, align 8
  %2771 = inttoptr i64 %2768 to i32*
  %2772 = load i32, i32* %2771, align 4
  %2773 = load i32, i32* %EAX.i819.pre-phi, align 4
  %2774 = add i32 %2773, %2772
  %2775 = zext i32 %2774 to i64
  store i64 %2775, i64* %RSI.i986, align 8
  %2776 = icmp ult i32 %2774, %2772
  %2777 = icmp ult i32 %2774, %2773
  %2778 = or i1 %2776, %2777
  %2779 = zext i1 %2778 to i8
  store i8 %2779, i8* %12, align 1
  %2780 = and i32 %2774, 255
  %2781 = tail call i32 @llvm.ctpop.i32(i32 %2780)
  %2782 = trunc i32 %2781 to i8
  %2783 = and i8 %2782, 1
  %2784 = xor i8 %2783, 1
  store i8 %2784, i8* %13, align 1
  %2785 = xor i32 %2773, %2772
  %2786 = xor i32 %2785, %2774
  %2787 = lshr i32 %2786, 4
  %2788 = trunc i32 %2787 to i8
  %2789 = and i8 %2788, 1
  store i8 %2789, i8* %14, align 1
  %2790 = icmp eq i32 %2774, 0
  %2791 = zext i1 %2790 to i8
  store i8 %2791, i8* %15, align 1
  %2792 = lshr i32 %2774, 31
  %2793 = trunc i32 %2792 to i8
  store i8 %2793, i8* %16, align 1
  %2794 = lshr i32 %2772, 31
  %2795 = lshr i32 %2773, 31
  %2796 = xor i32 %2792, %2794
  %2797 = xor i32 %2792, %2795
  %2798 = add nuw nsw i32 %2796, %2797
  %2799 = icmp eq i32 %2798, 2
  %2800 = zext i1 %2799 to i8
  store i8 %2800, i8* %17, align 1
  %2801 = add i64 %2767, -36
  %2802 = add i64 %2769, 11
  store i64 %2802, i64* %3, align 8
  %2803 = inttoptr i64 %2801 to i32*
  store i32 %2774, i32* %2803, align 4
  %2804 = load i64, i64* %RBP.i, align 8
  %2805 = add i64 %2804, -36
  %2806 = load i64, i64* %3, align 8
  %2807 = add i64 %2806, 4
  store i64 %2807, i64* %3, align 8
  %2808 = inttoptr i64 %2805 to i32*
  %2809 = load i32, i32* %2808, align 4
  store i8 0, i8* %12, align 1
  %2810 = and i32 %2809, 255
  %2811 = tail call i32 @llvm.ctpop.i32(i32 %2810)
  %2812 = trunc i32 %2811 to i8
  %2813 = and i8 %2812, 1
  %2814 = xor i8 %2813, 1
  store i8 %2814, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2815 = icmp eq i32 %2809, 0
  %2816 = zext i1 %2815 to i8
  store i8 %2816, i8* %15, align 1
  %2817 = lshr i32 %2809, 31
  %2818 = trunc i32 %2817 to i8
  store i8 %2818, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2819 = icmp ne i8 %2818, 0
  %2820 = or i1 %2815, %2819
  %.v232 = select i1 %2820, i64 370, i64 10
  %2821 = add i64 %2806, %.v232
  store i64 %2821, i64* %3, align 8
  br i1 %2820, label %block_.L_4809e6, label %block_48087e

block_48087e:                                     ; preds = %block_.L_480848
  %2822 = add i64 %2821, ptrtoint (%G_0x62812__rip__type* @G_0x62812__rip_ to i64)
  %2823 = add i64 %2821, 8
  store i64 %2823, i64* %3, align 8
  %2824 = inttoptr i64 %2822 to i64*
  %2825 = load i64, i64* %2824, align 8
  store i64 %2825, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  %2826 = add i64 %2821, 13
  store i64 %2826, i64* %3, align 8
  %2827 = load <2 x i32>, <2 x i32>* %.pre-phi183, align 1
  %2828 = load <2 x i32>, <2 x i32>* %.pre-phi184, align 1
  %2829 = load i32, i32* %2808, align 4
  %2830 = sitofp i32 %2829 to float
  store float %2830, float* %.pre-phi185, align 1
  %2831 = extractelement <2 x i32> %2827, i32 1
  store i32 %2831, i32* %.pre-phi187, align 1
  %2832 = extractelement <2 x i32> %2828, i32 0
  store i32 %2832, i32* %.pre-phi188, align 1
  %2833 = extractelement <2 x i32> %2828, i32 1
  store i32 %2833, i32* %.pre-phi190, align 1
  %2834 = load <2 x float>, <2 x float>* %44, align 1
  %2835 = extractelement <2 x float> %2834, i32 0
  %2836 = fpext float %2835 to double
  store double %2836, double* %629, align 1
  %2837 = add i64 %2821, -522238
  %2838 = add i64 %2821, 22
  %2839 = load i64, i64* %6, align 8
  %2840 = add i64 %2839, -8
  %2841 = inttoptr i64 %2840 to i64*
  store i64 %2838, i64* %2841, align 8
  store i64 %2840, i64* %6, align 8
  store i64 %2837, i64* %3, align 8
  %2842 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %call2_480864)
  %2843 = load i64, i64* %3, align 8
  %2844 = add i64 %2843, ptrtoint (%G_0x6276c__rip__type* @G_0x6276c__rip_ to i64)
  %2845 = add i64 %2843, 8
  store i64 %2845, i64* %3, align 8
  %2846 = inttoptr i64 %2844 to i64*
  %2847 = load i64, i64* %2846, align 8
  store i64 %2847, i64* %630, align 1
  store double 0.000000e+00, double* %632, align 1
  %2848 = add i64 %2843, add (i64 ptrtoint (%G_0x626bc__rip__type* @G_0x626bc__rip_ to i64), i64 8)
  %2849 = add i64 %2843, 16
  store i64 %2849, i64* %3, align 8
  %2850 = inttoptr i64 %2848 to i64*
  %2851 = load i64, i64* %2850, align 8
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %2851, i64* %2852, align 1
  %2853 = bitcast i64* %.pre-phi181 to double*
  store double 0.000000e+00, double* %2853, align 1
  %2854 = load double, double* %646, align 1
  %2855 = bitcast i64* %.pre-phi202 to <2 x i32>*
  %2856 = load <2 x i32>, <2 x i32>* %2855, align 1
  %2857 = bitcast i64 %2851 to double
  %2858 = fsub double %2854, %2857
  store double %2858, double* %646, align 1
  %.cast54 = bitcast double %2858 to <2 x i32>
  %2859 = fptrunc double %2858 to float
  store float %2859, float* %553, align 1
  %2860 = extractelement <2 x i32> %.cast54, i32 1
  store i32 %2860, i32* %600, align 1
  %2861 = extractelement <2 x i32> %2856, i32 0
  store i32 %2861, i32* %602, align 1
  %2862 = extractelement <2 x i32> %2856, i32 1
  store i32 %2862, i32* %604, align 1
  %2863 = load i64, i64* %RBP.i, align 8
  %2864 = add i64 %2863, -56
  %2865 = add i64 %2843, 29
  store i64 %2865, i64* %3, align 8
  %2866 = load <2 x float>, <2 x float>* %35, align 1
  %2867 = extractelement <2 x float> %2866, i32 0
  %2868 = inttoptr i64 %2864 to float*
  store float %2867, float* %2868, align 4
  %2869 = load i64, i64* %RBP.i, align 8
  %2870 = add i64 %2869, -24
  %2871 = load i64, i64* %3, align 8
  %2872 = add i64 %2871, 5
  store i64 %2872, i64* %3, align 8
  %2873 = inttoptr i64 %2870 to float*
  %2874 = load float, float* %2873, align 4
  %2875 = fpext float %2874 to double
  store double %2875, double* %646, align 1
  %2876 = add i64 %2871, 9
  store i64 %2876, i64* %3, align 8
  %2877 = load double, double* %629, align 1
  %2878 = fcmp uno double %2877, %2875
  br i1 %2878, label %2879, label %2889

; <label>:2879:                                   ; preds = %block_48087e
  %2880 = fadd double %2875, %2877
  %2881 = bitcast double %2880 to i64
  %2882 = and i64 %2881, 9221120237041090560
  %2883 = icmp eq i64 %2882, 9218868437227405312
  %2884 = and i64 %2881, 2251799813685247
  %2885 = icmp ne i64 %2884, 0
  %2886 = and i1 %2883, %2885
  br i1 %2886, label %2887, label %2895

; <label>:2887:                                   ; preds = %2879
  %2888 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2876, %struct.Memory* %2842)
  %.pre108 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit800

; <label>:2889:                                   ; preds = %block_48087e
  %2890 = fcmp ogt double %2877, %2875
  br i1 %2890, label %2895, label %2891

; <label>:2891:                                   ; preds = %2889
  %2892 = fcmp olt double %2877, %2875
  br i1 %2892, label %2895, label %2893

; <label>:2893:                                   ; preds = %2891
  %2894 = fcmp oeq double %2877, %2875
  br i1 %2894, label %2895, label %2899

; <label>:2895:                                   ; preds = %2893, %2891, %2889, %2879
  %2896 = phi i8 [ 0, %2889 ], [ 0, %2891 ], [ 1, %2893 ], [ 1, %2879 ]
  %2897 = phi i8 [ 0, %2889 ], [ 0, %2891 ], [ 0, %2893 ], [ 1, %2879 ]
  %2898 = phi i8 [ 0, %2889 ], [ 1, %2891 ], [ 0, %2893 ], [ 1, %2879 ]
  store i8 %2896, i8* %15, align 1
  store i8 %2897, i8* %13, align 1
  store i8 %2898, i8* %12, align 1
  br label %2899

; <label>:2899:                                   ; preds = %2895, %2893
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit800

routine_ucomisd__xmm0___xmm1.exit800:             ; preds = %2899, %2887
  %2900 = phi i64 [ %.pre108, %2887 ], [ %2876, %2899 ]
  %2901 = phi %struct.Memory* [ %2888, %2887 ], [ %2842, %2899 ]
  %2902 = load i8, i8* %12, align 1
  %2903 = load i8, i8* %15, align 1
  %2904 = or i8 %2903, %2902
  %2905 = icmp ne i8 %2904, 0
  %.v260 = select i1 %2905, i64 24, i64 6
  %2906 = add i64 %2900, %.v260
  store i64 %2906, i64* %3, align 8
  br i1 %2905, label %block_.L_4808d2, label %block_4808c0

block_4808c0:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit800
  %2907 = load i64, i64* %RBP.i, align 8
  %2908 = add i64 %2907, -24
  %2909 = add i64 %2906, 5
  store i64 %2909, i64* %3, align 8
  %2910 = inttoptr i64 %2908 to float*
  %2911 = load float, float* %2910, align 4
  %2912 = fpext float %2911 to double
  store double %2912, double* %646, align 1
  %2913 = add i64 %2907, -144
  %2914 = add i64 %2906, 13
  store i64 %2914, i64* %3, align 8
  %2915 = inttoptr i64 %2913 to double*
  store double %2912, double* %2915, align 8
  %2916 = load i64, i64* %3, align 8
  %2917 = add i64 %2916, 26
  br label %block_.L_4808e7

block_.L_4808d2:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit800
  %2918 = add i64 %2906, ptrtoint (%G_0x6272e__rip__type* @G_0x6272e__rip_ to i64)
  %2919 = add i64 %2906, 8
  store i64 %2919, i64* %3, align 8
  %2920 = inttoptr i64 %2918 to i64*
  %2921 = load i64, i64* %2920, align 8
  store i64 %2921, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  %2922 = load i64, i64* %RBP.i, align 8
  %2923 = add i64 %2922, -144
  %2924 = add i64 %2906, 16
  store i64 %2924, i64* %3, align 8
  %2925 = inttoptr i64 %2923 to i64*
  store i64 %2921, i64* %2925, align 8
  %2926 = load i64, i64* %3, align 8
  %2927 = add i64 %2926, 5
  store i64 %2927, i64* %3, align 8
  br label %block_.L_4808e7

block_.L_4808e7:                                  ; preds = %block_.L_4808d2, %block_4808c0
  %storemerge56 = phi i64 [ %2917, %block_4808c0 ], [ %2927, %block_.L_4808d2 ]
  %2928 = load i64, i64* %RBP.i, align 8
  %2929 = add i64 %2928, -144
  %2930 = add i64 %storemerge56, 8
  store i64 %2930, i64* %3, align 8
  %2931 = inttoptr i64 %2929 to i64*
  %2932 = load i64, i64* %2931, align 8
  store i64 %2932, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  %2933 = add i64 %storemerge56, add (i64 ptrtoint (%G_0x62669__rip__type* @G_0x62669__rip_ to i64), i64 8)
  %2934 = add i64 %storemerge56, 16
  store i64 %2934, i64* %3, align 8
  %2935 = inttoptr i64 %2933 to i64*
  %2936 = load i64, i64* %2935, align 8
  store i64 %2936, i64* %630, align 1
  store double 0.000000e+00, double* %632, align 1
  %2937 = add i64 %storemerge56, 20
  store i64 %2937, i64* %3, align 8
  %.cast57 = bitcast i64 %2936 to double
  %2938 = bitcast i64 %2932 to double
  %2939 = fcmp uno double %.cast57, %2938
  br i1 %2939, label %2940, label %2950

; <label>:2940:                                   ; preds = %block_.L_4808e7
  %2941 = fadd double %.cast57, %2938
  %2942 = bitcast double %2941 to i64
  %2943 = and i64 %2942, 9221120237041090560
  %2944 = icmp eq i64 %2943, 9218868437227405312
  %2945 = and i64 %2942, 2251799813685247
  %2946 = icmp ne i64 %2945, 0
  %2947 = and i1 %2944, %2946
  br i1 %2947, label %2948, label %2956

; <label>:2948:                                   ; preds = %2940
  %2949 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2937, %struct.Memory* %2901)
  %.pre109 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit774

; <label>:2950:                                   ; preds = %block_.L_4808e7
  %2951 = fcmp ogt double %.cast57, %2938
  br i1 %2951, label %2956, label %2952

; <label>:2952:                                   ; preds = %2950
  %2953 = fcmp olt double %.cast57, %2938
  br i1 %2953, label %2956, label %2954

; <label>:2954:                                   ; preds = %2952
  %2955 = fcmp oeq double %.cast57, %2938
  br i1 %2955, label %2956, label %2960

; <label>:2956:                                   ; preds = %2954, %2952, %2950, %2940
  %2957 = phi i8 [ 0, %2950 ], [ 0, %2952 ], [ 1, %2954 ], [ 1, %2940 ]
  %2958 = phi i8 [ 0, %2950 ], [ 0, %2952 ], [ 0, %2954 ], [ 1, %2940 ]
  %2959 = phi i8 [ 0, %2950 ], [ 1, %2952 ], [ 0, %2954 ], [ 1, %2940 ]
  store i8 %2957, i8* %15, align 1
  store i8 %2958, i8* %13, align 1
  store i8 %2959, i8* %12, align 1
  br label %2960

; <label>:2960:                                   ; preds = %2956, %2954
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit774

routine_ucomisd__xmm0___xmm1.exit774:             ; preds = %2960, %2948
  %2961 = phi i64 [ %.pre109, %2948 ], [ %2937, %2960 ]
  %2962 = phi %struct.Memory* [ %2949, %2948 ], [ %2901, %2960 ]
  %2963 = load i8, i8* %12, align 1
  %2964 = load i8, i8* %15, align 1
  %2965 = or i8 %2964, %2963
  %2966 = icmp ne i8 %2965, 0
  %.v261 = select i1 %2966, i64 27, i64 6
  %2967 = add i64 %2961, %.v261
  store i64 %2967, i64* %3, align 8
  br i1 %2966, label %block_.L_480916, label %block_480901

block_480901:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit774
  %2968 = add i64 %2967, ptrtoint (%G_0x62657__rip__type* @G_0x62657__rip_ to i64)
  %2969 = add i64 %2967, 8
  store i64 %2969, i64* %3, align 8
  %2970 = inttoptr i64 %2968 to i64*
  %2971 = load i64, i64* %2970, align 8
  store i64 %2971, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  %2972 = load i64, i64* %RBP.i, align 8
  %2973 = add i64 %2972, -152
  %2974 = add i64 %2967, 16
  store i64 %2974, i64* %3, align 8
  %2975 = inttoptr i64 %2973 to i64*
  store i64 %2971, i64* %2975, align 8
  %2976 = load i64, i64* %3, align 8
  %2977 = add i64 %2976, 83
  store i64 %2977, i64* %3, align 8
  br label %block_.L_480964

block_.L_480916:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit774
  %2978 = add i64 %2967, ptrtoint (%G_0x626ea__rip__type* @G_0x626ea__rip_ to i64)
  %2979 = add i64 %2967, 8
  store i64 %2979, i64* %3, align 8
  %2980 = inttoptr i64 %2978 to i64*
  %2981 = load i64, i64* %2980, align 8
  store i64 %2981, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  %2982 = load i64, i64* %RBP.i, align 8
  %2983 = add i64 %2982, -24
  %2984 = add i64 %2967, 13
  store i64 %2984, i64* %3, align 8
  %2985 = inttoptr i64 %2983 to float*
  %2986 = load float, float* %2985, align 4
  %2987 = fpext float %2986 to double
  store double %2987, double* %629, align 1
  %2988 = add i64 %2967, 17
  store i64 %2988, i64* %3, align 8
  %2989 = bitcast i64 %2981 to double
  %2990 = fcmp uno double %2989, %2987
  br i1 %2990, label %2991, label %3001

; <label>:2991:                                   ; preds = %block_.L_480916
  %2992 = fadd double %2987, %2989
  %2993 = bitcast double %2992 to i64
  %2994 = and i64 %2993, 9221120237041090560
  %2995 = icmp eq i64 %2994, 9218868437227405312
  %2996 = and i64 %2993, 2251799813685247
  %2997 = icmp ne i64 %2996, 0
  %2998 = and i1 %2995, %2997
  br i1 %2998, label %2999, label %3007

; <label>:2999:                                   ; preds = %2991
  %3000 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2988, %struct.Memory* %2962)
  %.pre110 = load i64, i64* %3, align 8
  %.pre111 = load i8, i8* %12, align 1
  %.pre112 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:3001:                                   ; preds = %block_.L_480916
  %3002 = fcmp ogt double %2989, %2987
  br i1 %3002, label %3007, label %3003

; <label>:3003:                                   ; preds = %3001
  %3004 = fcmp olt double %2989, %2987
  br i1 %3004, label %3007, label %3005

; <label>:3005:                                   ; preds = %3003
  %3006 = fcmp oeq double %2989, %2987
  br i1 %3006, label %3007, label %3011

; <label>:3007:                                   ; preds = %3005, %3003, %3001, %2991
  %3008 = phi i8 [ 0, %3001 ], [ 0, %3003 ], [ 1, %3005 ], [ 1, %2991 ]
  %3009 = phi i8 [ 0, %3001 ], [ 0, %3003 ], [ 0, %3005 ], [ 1, %2991 ]
  %3010 = phi i8 [ 0, %3001 ], [ 1, %3003 ], [ 0, %3005 ], [ 1, %2991 ]
  store i8 %3008, i8* %15, align 1
  store i8 %3009, i8* %13, align 1
  store i8 %3010, i8* %12, align 1
  br label %3011

; <label>:3011:                                   ; preds = %3007, %3005
  %3012 = phi i8 [ %3008, %3007 ], [ %2964, %3005 ]
  %3013 = phi i8 [ %3010, %3007 ], [ %2963, %3005 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %3011, %2999
  %3014 = phi i8 [ %.pre112, %2999 ], [ %3012, %3011 ]
  %3015 = phi i8 [ %.pre111, %2999 ], [ %3013, %3011 ]
  %3016 = phi i64 [ %.pre110, %2999 ], [ %2988, %3011 ]
  %3017 = phi %struct.Memory* [ %3000, %2999 ], [ %2962, %3011 ]
  %3018 = or i8 %3014, %3015
  %3019 = icmp ne i8 %3018, 0
  %.v252 = select i1 %3019, i64 24, i64 6
  %3020 = add i64 %3016, %.v252
  store i64 %3020, i64* %3, align 8
  br i1 %3019, label %block_.L_48093f, label %block_48092d

block_48092d:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %3021 = load i64, i64* %RBP.i, align 8
  %3022 = add i64 %3021, -24
  %3023 = add i64 %3020, 5
  store i64 %3023, i64* %3, align 8
  %3024 = inttoptr i64 %3022 to float*
  %3025 = load float, float* %3024, align 4
  %3026 = fpext float %3025 to double
  store double %3026, double* %646, align 1
  %3027 = add i64 %3021, -160
  %3028 = add i64 %3020, 13
  store i64 %3028, i64* %3, align 8
  %3029 = inttoptr i64 %3027 to double*
  store double %3026, double* %3029, align 8
  %3030 = load i64, i64* %3, align 8
  %3031 = add i64 %3030, 26
  br label %block_.L_480954

block_.L_48093f:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %3032 = add i64 %3020, ptrtoint (%G_0x626c1__rip__type* @G_0x626c1__rip_ to i64)
  %3033 = add i64 %3020, 8
  store i64 %3033, i64* %3, align 8
  %3034 = inttoptr i64 %3032 to i64*
  %3035 = load i64, i64* %3034, align 8
  store i64 %3035, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  %3036 = load i64, i64* %RBP.i, align 8
  %3037 = add i64 %3036, -160
  %3038 = add i64 %3020, 16
  store i64 %3038, i64* %3, align 8
  %3039 = inttoptr i64 %3037 to i64*
  store i64 %3035, i64* %3039, align 8
  %3040 = load i64, i64* %3, align 8
  %3041 = add i64 %3040, 5
  store i64 %3041, i64* %3, align 8
  br label %block_.L_480954

block_.L_480954:                                  ; preds = %block_.L_48093f, %block_48092d
  %storemerge63 = phi i64 [ %3031, %block_48092d ], [ %3041, %block_.L_48093f ]
  %3042 = load i64, i64* %RBP.i, align 8
  %3043 = add i64 %3042, -160
  %3044 = add i64 %storemerge63, 8
  store i64 %3044, i64* %3, align 8
  %3045 = inttoptr i64 %3043 to i64*
  %3046 = load i64, i64* %3045, align 8
  store i64 %3046, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  %3047 = add i64 %3042, -152
  %3048 = add i64 %storemerge63, 16
  store i64 %3048, i64* %3, align 8
  %3049 = inttoptr i64 %3047 to i64*
  store i64 %3046, i64* %3049, align 8
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_480964

block_.L_480964:                                  ; preds = %block_.L_480954, %block_480901
  %3050 = phi i64 [ %.pre113, %block_.L_480954 ], [ %2977, %block_480901 ]
  %MEMORY.24 = phi %struct.Memory* [ %3017, %block_.L_480954 ], [ %2962, %block_480901 ]
  %3051 = load i64, i64* %RBP.i, align 8
  %3052 = add i64 %3051, -152
  %3053 = add i64 %3050, 8
  store i64 %3053, i64* %3, align 8
  %3054 = inttoptr i64 %3052 to i64*
  %3055 = load i64, i64* %3054, align 8
  store i64 %3055, i64* %932, align 1
  store double 0.000000e+00, double* %933, align 1
  %.cast58 = bitcast i64 %3055 to <2 x i32>
  %.cast59 = bitcast i64 %3055 to double
  %3056 = fptrunc double %.cast59 to float
  store float %3056, float* %553, align 1
  %3057 = extractelement <2 x i32> %.cast58, i32 1
  store i32 %3057, i32* %600, align 1
  store i32 0, i32* %602, align 1
  store i32 0, i32* %604, align 1
  %3058 = add i64 %3051, -60
  %3059 = add i64 %3050, 17
  store i64 %3059, i64* %3, align 8
  %3060 = load <2 x float>, <2 x float>* %35, align 1
  %3061 = extractelement <2 x float> %3060, i32 0
  %3062 = inttoptr i64 %3058 to float*
  store float %3061, float* %3062, align 4
  %3063 = load i64, i64* %3, align 8
  %3064 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %3065 = and i32 %3064, 255
  %3066 = tail call i32 @llvm.ctpop.i32(i32 %3065)
  %3067 = trunc i32 %3066 to i8
  %3068 = and i8 %3067, 1
  %3069 = xor i8 %3068, 1
  store i8 %3069, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3070 = icmp eq i32 %3064, 0
  %3071 = zext i1 %3070 to i8
  store i8 %3071, i8* %15, align 1
  %3072 = lshr i32 %3064, 31
  %3073 = trunc i32 %3072 to i8
  store i8 %3073, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v233 = select i1 %3070, i64 93, i64 14
  %3074 = add i64 %3063, %.v233
  store i64 %3074, i64* %3, align 8
  br i1 %3070, label %block_.L_4809d2, label %block_480983

block_480983:                                     ; preds = %block_.L_480964
  store i64 ptrtoint (%G__0x582137_type* @G__0x582137 to i64), i64* %RDI.i776.pre-phi, align 8
  %3075 = load i64, i64* %RBP.i, align 8
  %3076 = add i64 %3075, -8
  %3077 = add i64 %3074, 13
  store i64 %3077, i64* %3, align 8
  %3078 = inttoptr i64 %3076 to i32*
  %3079 = load i32, i32* %3078, align 4
  %3080 = zext i32 %3079 to i64
  store i64 %3080, i64* %RSI.i986, align 8
  %3081 = add i64 %3075, -60
  %3082 = add i64 %3074, 18
  store i64 %3082, i64* %3, align 8
  %3083 = inttoptr i64 %3081 to i32*
  %3084 = load i32, i32* %3083, align 4
  store i32 %3084, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %3085 = add i64 %3075, -56
  %3086 = add i64 %3074, 23
  store i64 %3086, i64* %3, align 8
  %3087 = load <2 x float>, <2 x float>* %35, align 1
  %3088 = load <2 x i32>, <2 x i32>* %592, align 1
  %3089 = inttoptr i64 %3085 to float*
  %3090 = load float, float* %3089, align 4
  %3091 = extractelement <2 x float> %3087, i32 0
  %3092 = fmul float %3091, %3090
  store float %3092, float* %553, align 1
  %3093 = bitcast <2 x float> %3087 to <2 x i32>
  %3094 = extractelement <2 x i32> %3093, i32 1
  store i32 %3094, i32* %600, align 1
  %3095 = extractelement <2 x i32> %3088, i32 0
  store i32 %3095, i32* %602, align 1
  %3096 = extractelement <2 x i32> %3088, i32 1
  store i32 %3096, i32* %604, align 1
  %3097 = load <2 x float>, <2 x float>* %35, align 1
  %3098 = extractelement <2 x float> %3097, i32 0
  %3099 = fpext float %3098 to double
  store double %3099, double* %646, align 1
  %AL.i709 = bitcast %union.anon* %EAX.i819.pre-phi.in to i8*
  store i8 1, i8* %AL.i709, align 1
  %3100 = add i64 %3074, -191443
  %3101 = add i64 %3074, 34
  %3102 = load i64, i64* %6, align 8
  %3103 = add i64 %3102, -8
  %3104 = inttoptr i64 %3103 to i64*
  store i64 %3101, i64* %3104, align 8
  store i64 %3103, i64* %6, align 8
  store i64 %3100, i64* %3, align 8
  %call2_4809a0 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3100, %struct.Memory* %MEMORY.24)
  %3105 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x582155_type* @G__0x582155 to i64), i64* %RSI.i986, align 8
  %3106 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %3106, i64* %RDI.i776.pre-phi, align 8
  %3107 = load i64, i64* %RBP.i, align 8
  %3108 = add i64 %3107, -36
  %3109 = add i64 %3105, 21
  store i64 %3109, i64* %3, align 8
  %3110 = inttoptr i64 %3108 to i32*
  %3111 = load i32, i32* %3110, align 4
  %3112 = zext i32 %3111 to i64
  store i64 %3112, i64* %RDX.i1725, align 8
  %3113 = add i64 %3107, -56
  %3114 = add i64 %3105, 26
  store i64 %3114, i64* %3, align 8
  %3115 = inttoptr i64 %3113 to float*
  %3116 = load float, float* %3115, align 4
  %3117 = fpext float %3116 to double
  store double %3117, double* %646, align 1
  %3118 = add i64 %3107, -164
  %3119 = load i32, i32* %EAX.i819.pre-phi, align 4
  %3120 = add i64 %3105, 32
  store i64 %3120, i64* %3, align 8
  %3121 = inttoptr i64 %3118 to i32*
  store i32 %3119, i32* %3121, align 4
  %3122 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i709, align 1
  %3123 = add i64 %3122, -522485
  %3124 = add i64 %3122, 7
  %3125 = load i64, i64* %6, align 8
  %3126 = add i64 %3125, -8
  %3127 = inttoptr i64 %3126 to i64*
  store i64 %3124, i64* %3127, align 8
  store i64 %3126, i64* %6, align 8
  store i64 %3123, i64* %3, align 8
  %3128 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_4809a0)
  %3129 = load i64, i64* %RBP.i, align 8
  %3130 = add i64 %3129, -168
  %3131 = load i32, i32* %EAX.i819.pre-phi, align 4
  %3132 = load i64, i64* %3, align 8
  %3133 = add i64 %3132, 6
  store i64 %3133, i64* %3, align 8
  %3134 = inttoptr i64 %3130 to i32*
  store i32 %3131, i32* %3134, align 4
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_4809d2

block_.L_4809d2:                                  ; preds = %block_480983, %block_.L_480964
  %3135 = phi i64 [ %3074, %block_.L_480964 ], [ %.pre114, %block_480983 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.24, %block_.L_480964 ], [ %3128, %block_480983 ]
  %3136 = load i64, i64* %RBP.i, align 8
  %3137 = add i64 %3136, -60
  %3138 = add i64 %3135, 5
  store i64 %3138, i64* %3, align 8
  %3139 = inttoptr i64 %3137 to i32*
  %3140 = load i32, i32* %3139, align 4
  store i32 %3140, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %3141 = add i64 %3136, -56
  %3142 = add i64 %3135, 10
  store i64 %3142, i64* %3, align 8
  %3143 = load <2 x float>, <2 x float>* %35, align 1
  %3144 = load <2 x i32>, <2 x i32>* %592, align 1
  %3145 = inttoptr i64 %3141 to float*
  %3146 = load float, float* %3145, align 4
  %3147 = extractelement <2 x float> %3143, i32 0
  %3148 = fmul float %3147, %3146
  store float %3148, float* %553, align 1
  %3149 = bitcast <2 x float> %3143 to <2 x i32>
  %3150 = extractelement <2 x i32> %3149, i32 1
  store i32 %3150, i32* %600, align 1
  %3151 = extractelement <2 x i32> %3144, i32 0
  store i32 %3151, i32* %602, align 1
  %3152 = extractelement <2 x i32> %3144, i32 1
  store i32 %3152, i32* %604, align 1
  %3153 = add i64 %3136, -24
  %3154 = add i64 %3135, 15
  store i64 %3154, i64* %3, align 8
  %3155 = load <2 x float>, <2 x float>* %35, align 1
  %3156 = load <2 x i32>, <2 x i32>* %592, align 1
  %3157 = inttoptr i64 %3153 to float*
  %3158 = load float, float* %3157, align 4
  %3159 = extractelement <2 x float> %3155, i32 0
  %3160 = fadd float %3159, %3158
  store float %3160, float* %553, align 1
  %3161 = bitcast <2 x float> %3155 to <2 x i32>
  %3162 = extractelement <2 x i32> %3161, i32 1
  store i32 %3162, i32* %600, align 1
  %3163 = extractelement <2 x i32> %3156, i32 0
  store i32 %3163, i32* %602, align 1
  %3164 = extractelement <2 x i32> %3156, i32 1
  store i32 %3164, i32* %604, align 1
  %3165 = add i64 %3135, 20
  store i64 %3165, i64* %3, align 8
  %3166 = load <2 x float>, <2 x float>* %35, align 1
  %3167 = extractelement <2 x float> %3166, i32 0
  store float %3167, float* %3157, align 4
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_4809e6

block_.L_4809e6:                                  ; preds = %block_.L_4809d2, %block_.L_480848
  %3168 = phi i64 [ %2821, %block_.L_480848 ], [ %.pre115, %block_.L_4809d2 ]
  %MEMORY.26 = phi %struct.Memory* [ %call2_480864, %block_.L_480848 ], [ %MEMORY.25, %block_.L_4809d2 ]
  %3169 = add i64 %3168, 248
  store i64 %3169, i64* %3, align 8
  br label %block_.L_480ade

block_.L_4809eb:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit1655
  %3170 = add i64 %762, -28
  %3171 = add i64 %769, 15
  store i64 %3171, i64* %3, align 8
  %3172 = inttoptr i64 %3170 to i32*
  %3173 = load i32, i32* %3172, align 4
  store i32 %3173, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %3174 = add i64 %762, -8
  %3175 = add i64 %769, 19
  store i64 %3175, i64* %3, align 8
  %3176 = inttoptr i64 %3174 to i32*
  %3177 = load i32, i32* %3176, align 4
  %3178 = sext i32 %3177 to i64
  %3179 = mul nsw i64 %3178, 564
  store i64 %3179, i64* %RCX.i1729.pre-phi, align 8
  %3180 = lshr i64 %3179, 63
  %3181 = add i64 %3179, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %3181, i64* %RDX.i1725, align 8
  %3182 = icmp ult i64 %3181, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %3183 = icmp ult i64 %3181, %3179
  %3184 = or i1 %3182, %3183
  %3185 = zext i1 %3184 to i8
  store i8 %3185, i8* %12, align 1
  %3186 = trunc i64 %3181 to i32
  %3187 = and i32 %3186, 252
  %3188 = tail call i32 @llvm.ctpop.i32(i32 %3187)
  %3189 = trunc i32 %3188 to i8
  %3190 = and i8 %3189, 1
  %3191 = xor i8 %3190, 1
  store i8 %3191, i8* %13, align 1
  %3192 = xor i64 %3179, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %3193 = xor i64 %3192, %3181
  %3194 = lshr i64 %3193, 4
  %3195 = trunc i64 %3194 to i8
  %3196 = and i8 %3195, 1
  store i8 %3196, i8* %14, align 1
  %3197 = icmp eq i64 %3181, 0
  %3198 = zext i1 %3197 to i8
  store i8 %3198, i8* %15, align 1
  %3199 = lshr i64 %3181, 63
  %3200 = trunc i64 %3199 to i8
  store i8 %3200, i8* %16, align 1
  %3201 = xor i64 %3199, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %3202 = xor i64 %3199, %3180
  %3203 = add nuw nsw i64 %3201, %3202
  %3204 = icmp eq i64 %3203, 2
  %3205 = zext i1 %3204 to i8
  store i8 %3205, i8* %17, align 1
  %3206 = add i64 %3179, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 36)
  %3207 = add i64 %769, 37
  store i64 %3207, i64* %3, align 8
  %3208 = inttoptr i64 %3206 to i32*
  %3209 = load i32, i32* %3208, align 4
  %3210 = bitcast %union.VectorReg* %39 to float*
  %3211 = bitcast %union.VectorReg* %39 to i32*
  store i32 %3209, i32* %3211, align 1
  %3212 = getelementptr inbounds i8, i8* %623, i64 4
  %3213 = bitcast i8* %3212 to float*
  store float 0.000000e+00, float* %3213, align 1
  %3214 = bitcast i64* %631 to float*
  store float 0.000000e+00, float* %3214, align 1
  %3215 = getelementptr inbounds i8, i8* %623, i64 12
  %3216 = bitcast i8* %3215 to float*
  store float 0.000000e+00, float* %3216, align 1
  %3217 = add i64 %769, 41
  store i64 %3217, i64* %3, align 8
  %3218 = load i32, i32* %3176, align 4
  %3219 = sext i32 %3218 to i64
  %3220 = mul nsw i64 %3219, 564
  store i64 %3220, i64* %RCX.i1729.pre-phi, align 8
  %3221 = lshr i64 %3220, 63
  %3222 = load i64, i64* %RAX.i1732.pre-phi, align 8
  %3223 = add i64 %3220, %3222
  store i64 %3223, i64* %RDX.i1725, align 8
  %3224 = icmp ult i64 %3223, %3222
  %3225 = icmp ult i64 %3223, %3220
  %3226 = or i1 %3224, %3225
  %3227 = zext i1 %3226 to i8
  store i8 %3227, i8* %12, align 1
  %3228 = trunc i64 %3223 to i32
  %3229 = and i32 %3228, 255
  %3230 = tail call i32 @llvm.ctpop.i32(i32 %3229)
  %3231 = trunc i32 %3230 to i8
  %3232 = and i8 %3231, 1
  %3233 = xor i8 %3232, 1
  store i8 %3233, i8* %13, align 1
  %3234 = xor i64 %3220, %3222
  %3235 = xor i64 %3234, %3223
  %3236 = lshr i64 %3235, 4
  %3237 = trunc i64 %3236 to i8
  %3238 = and i8 %3237, 1
  store i8 %3238, i8* %14, align 1
  %3239 = icmp eq i64 %3223, 0
  %3240 = zext i1 %3239 to i8
  store i8 %3240, i8* %15, align 1
  %3241 = lshr i64 %3223, 63
  %3242 = trunc i64 %3241 to i8
  store i8 %3242, i8* %16, align 1
  %3243 = lshr i64 %3222, 63
  %3244 = xor i64 %3241, %3243
  %3245 = xor i64 %3241, %3221
  %3246 = add nuw nsw i64 %3244, %3245
  %3247 = icmp eq i64 %3246, 2
  %3248 = zext i1 %3247 to i8
  store i8 %3248, i8* %17, align 1
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %3250 = bitcast %union.VectorReg* %3249 to i8*
  %3251 = add i64 %3223, 36
  %3252 = add i64 %769, 59
  store i64 %3252, i64* %3, align 8
  %3253 = inttoptr i64 %3251 to i32*
  %3254 = load i32, i32* %3253, align 4
  %3255 = bitcast %union.VectorReg* %3249 to i32*
  store i32 %3254, i32* %3255, align 1
  %3256 = getelementptr inbounds i8, i8* %3250, i64 4
  %3257 = bitcast i8* %3256 to float*
  store float 0.000000e+00, float* %3257, align 1
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %3259 = bitcast i64* %3258 to float*
  store float 0.000000e+00, float* %3259, align 1
  %3260 = getelementptr inbounds i8, i8* %3250, i64 12
  %3261 = bitcast i8* %3260 to float*
  store float 0.000000e+00, float* %3261, align 1
  %3262 = load i64, i64* %RBP.i, align 8
  %3263 = add i64 %3262, -8
  %3264 = add i64 %769, 63
  store i64 %3264, i64* %3, align 8
  %3265 = inttoptr i64 %3263 to i32*
  %3266 = load i32, i32* %3265, align 4
  %3267 = sext i32 %3266 to i64
  %3268 = mul nsw i64 %3267, 564
  store i64 %3268, i64* %RCX.i1729.pre-phi, align 8
  %3269 = lshr i64 %3268, 63
  %3270 = add i64 %3268, %3222
  store i64 %3270, i64* %RAX.i1732.pre-phi, align 8
  %3271 = icmp ult i64 %3270, %3222
  %3272 = icmp ult i64 %3270, %3268
  %3273 = or i1 %3271, %3272
  %3274 = zext i1 %3273 to i8
  store i8 %3274, i8* %12, align 1
  %3275 = trunc i64 %3270 to i32
  %3276 = and i32 %3275, 255
  %3277 = tail call i32 @llvm.ctpop.i32(i32 %3276)
  %3278 = trunc i32 %3277 to i8
  %3279 = and i8 %3278, 1
  %3280 = xor i8 %3279, 1
  store i8 %3280, i8* %13, align 1
  %3281 = xor i64 %3268, %3222
  %3282 = xor i64 %3281, %3270
  %3283 = lshr i64 %3282, 4
  %3284 = trunc i64 %3283 to i8
  %3285 = and i8 %3284, 1
  store i8 %3285, i8* %14, align 1
  %3286 = icmp eq i64 %3270, 0
  %3287 = zext i1 %3286 to i8
  store i8 %3287, i8* %15, align 1
  %3288 = lshr i64 %3270, 63
  %3289 = trunc i64 %3288 to i8
  store i8 %3289, i8* %16, align 1
  %3290 = xor i64 %3288, %3243
  %3291 = xor i64 %3288, %3269
  %3292 = add nuw nsw i64 %3290, %3291
  %3293 = icmp eq i64 %3292, 2
  %3294 = zext i1 %3293 to i8
  store i8 %3294, i8* %17, align 1
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %3296 = bitcast %union.VectorReg* %3295 to i8*
  %3297 = add i64 %3270, 44
  %3298 = add i64 %769, 78
  store i64 %3298, i64* %3, align 8
  %3299 = inttoptr i64 %3297 to i32*
  %3300 = load i32, i32* %3299, align 4
  %3301 = bitcast %union.VectorReg* %3295 to i32*
  store i32 %3300, i32* %3301, align 1
  %3302 = getelementptr inbounds i8, i8* %3296, i64 4
  %3303 = bitcast i8* %3302 to float*
  store float 0.000000e+00, float* %3303, align 1
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %3305 = bitcast i64* %3304 to float*
  store float 0.000000e+00, float* %3305, align 1
  %3306 = getelementptr inbounds i8, i8* %3296, i64 12
  %3307 = bitcast i8* %3306 to float*
  store float 0.000000e+00, float* %3307, align 1
  %3308 = add i64 %769, 81
  store i64 %3308, i64* %3, align 8
  %3309 = bitcast %union.VectorReg* %3295 to <2 x float>*
  %3310 = load <2 x float>, <2 x float>* %3309, align 1
  %3311 = extractelement <2 x float> %3310, i32 0
  %3312 = bitcast %union.VectorReg* %3249 to <2 x float>*
  %3313 = load <2 x float>, <2 x float>* %3312, align 1
  %3314 = extractelement <2 x float> %3313, i32 0
  %3315 = fcmp uno float %3311, %3314
  br i1 %3315, label %3316, label %3326

; <label>:3316:                                   ; preds = %block_.L_4809eb
  %3317 = fadd float %3311, %3314
  %3318 = bitcast float %3317 to i32
  %3319 = and i32 %3318, 2143289344
  %3320 = icmp eq i32 %3319, 2139095040
  %3321 = and i32 %3318, 4194303
  %3322 = icmp ne i32 %3321, 0
  %3323 = and i1 %3320, %3322
  br i1 %3323, label %3324, label %3332

; <label>:3324:                                   ; preds = %3316
  %3325 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3308, %struct.Memory* %764)
  %.pre116 = load i64, i64* %RBP.i, align 8
  %.pre117 = load i64, i64* %3, align 8
  br label %routine_ucomiss__xmm2___xmm3.exit

; <label>:3326:                                   ; preds = %block_.L_4809eb
  %3327 = fcmp ogt float %3311, %3314
  br i1 %3327, label %3332, label %3328

; <label>:3328:                                   ; preds = %3326
  %3329 = fcmp olt float %3311, %3314
  br i1 %3329, label %3332, label %3330

; <label>:3330:                                   ; preds = %3328
  %3331 = fcmp oeq float %3311, %3314
  br i1 %3331, label %3332, label %3336

; <label>:3332:                                   ; preds = %3330, %3328, %3326, %3316
  %3333 = phi i8 [ 0, %3326 ], [ 0, %3328 ], [ 1, %3330 ], [ 1, %3316 ]
  %3334 = phi i8 [ 0, %3326 ], [ 0, %3328 ], [ 0, %3330 ], [ 1, %3316 ]
  %3335 = phi i8 [ 0, %3326 ], [ 1, %3328 ], [ 0, %3330 ], [ 1, %3316 ]
  store i8 %3333, i8* %15, align 1
  store i8 %3334, i8* %13, align 1
  store i8 %3335, i8* %12, align 1
  br label %3336

; <label>:3336:                                   ; preds = %3332, %3330
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss__xmm2___xmm3.exit

routine_ucomiss__xmm2___xmm3.exit:                ; preds = %3336, %3324
  %3337 = phi i64 [ %.pre117, %3324 ], [ %3308, %3336 ]
  %3338 = phi i64 [ %.pre116, %3324 ], [ %3262, %3336 ]
  %3339 = phi %struct.Memory* [ %3325, %3324 ], [ %764, %3336 ]
  %3340 = add i64 %3338, -172
  %3341 = add i64 %3337, 8
  store i64 %3341, i64* %3, align 8
  %3342 = load <2 x float>, <2 x float>* %44, align 1
  %3343 = extractelement <2 x float> %3342, i32 0
  %3344 = inttoptr i64 %3340 to float*
  store float %3343, float* %3344, align 4
  %3345 = load i64, i64* %RBP.i, align 8
  %3346 = add i64 %3345, -176
  %3347 = load i64, i64* %3, align 8
  %3348 = add i64 %3347, 8
  store i64 %3348, i64* %3, align 8
  %3349 = load <2 x float>, <2 x float>* %35, align 1
  %3350 = extractelement <2 x float> %3349, i32 0
  %3351 = inttoptr i64 %3346 to float*
  store float %3350, float* %3351, align 4
  %3352 = load i64, i64* %3, align 8
  %3353 = load i8, i8* %12, align 1
  %3354 = load i8, i8* %15, align 1
  %3355 = or i8 %3354, %3353
  %3356 = icmp ne i8 %3355, 0
  %.v262 = select i1 %3356, i64 48, i64 6
  %3357 = add i64 %3352, %.v262
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %3358 = load i64, i64* %RBP.i, align 8
  %3359 = add i64 %3358, -8
  %3360 = add i64 %3357, 14
  store i64 %3360, i64* %3, align 8
  %3361 = inttoptr i64 %3359 to i32*
  %3362 = load i32, i32* %3361, align 4
  %3363 = sext i32 %3362 to i64
  %3364 = mul nsw i64 %3363, 564
  store i64 %3364, i64* %RCX.i1729.pre-phi, align 8
  %3365 = lshr i64 %3364, 63
  %3366 = add i64 %3357, 24
  store i64 %3366, i64* %3, align 8
  %3367 = add i64 %3364, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %3367, i64* %RAX.i1732.pre-phi, align 8
  %3368 = icmp ult i64 %3367, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %3369 = icmp ult i64 %3367, %3364
  %3370 = or i1 %3368, %3369
  %3371 = zext i1 %3370 to i8
  store i8 %3371, i8* %12, align 1
  %3372 = trunc i64 %3367 to i32
  %3373 = and i32 %3372, 252
  %3374 = tail call i32 @llvm.ctpop.i32(i32 %3373)
  %3375 = trunc i32 %3374 to i8
  %3376 = and i8 %3375, 1
  %3377 = xor i8 %3376, 1
  store i8 %3377, i8* %13, align 1
  %3378 = xor i64 %3364, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %3379 = xor i64 %3378, %3367
  %3380 = lshr i64 %3379, 4
  %3381 = trunc i64 %3380 to i8
  %3382 = and i8 %3381, 1
  store i8 %3382, i8* %14, align 1
  %3383 = icmp eq i64 %3367, 0
  %3384 = zext i1 %3383 to i8
  store i8 %3384, i8* %15, align 1
  %3385 = lshr i64 %3367, 63
  %3386 = trunc i64 %3385 to i8
  store i8 %3386, i8* %16, align 1
  %3387 = xor i64 %3385, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %3388 = xor i64 %3385, %3365
  %3389 = add nuw nsw i64 %3387, %3388
  %3390 = icmp eq i64 %3389, 2
  %3391 = zext i1 %3390 to i8
  store i8 %3391, i8* %17, align 1
  br i1 %3356, label %block_.L_480a7c, label %block_480a52

block_480a52:                                     ; preds = %routine_ucomiss__xmm2___xmm3.exit
  %3392 = add i64 %3364, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 36)
  %3393 = add i64 %3357, 29
  store i64 %3393, i64* %3, align 8
  %3394 = inttoptr i64 %3392 to i32*
  %3395 = load i32, i32* %3394, align 4
  store i32 %3395, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %3396 = add i64 %3358, -180
  %3397 = add i64 %3357, 37
  store i64 %3397, i64* %3, align 8
  %3398 = load <2 x float>, <2 x float>* %35, align 1
  %3399 = extractelement <2 x float> %3398, i32 0
  %3400 = inttoptr i64 %3396 to float*
  store float %3399, float* %3400, align 4
  %3401 = load i64, i64* %3, align 8
  %3402 = add i64 %3401, 42
  store i64 %3402, i64* %3, align 8
  br label %block_.L_480aa1

block_.L_480a7c:                                  ; preds = %routine_ucomiss__xmm2___xmm3.exit
  %3403 = add i64 %3364, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 44)
  %3404 = add i64 %3357, 29
  store i64 %3404, i64* %3, align 8
  %3405 = inttoptr i64 %3403 to i32*
  %3406 = load i32, i32* %3405, align 4
  store i32 %3406, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %3407 = add i64 %3358, -180
  %3408 = add i64 %3357, 37
  store i64 %3408, i64* %3, align 8
  %3409 = load <2 x float>, <2 x float>* %35, align 1
  %3410 = extractelement <2 x float> %3409, i32 0
  %3411 = inttoptr i64 %3407 to float*
  store float %3410, float* %3411, align 4
  %.pre118 = load i64, i64* %3, align 8
  br label %block_.L_480aa1

block_.L_480aa1:                                  ; preds = %block_.L_480a7c, %block_480a52
  %3412 = phi i64 [ %.pre118, %block_.L_480a7c ], [ %3402, %block_480a52 ]
  %3413 = load i64, i64* %RBP.i, align 8
  %3414 = add i64 %3413, -180
  %3415 = add i64 %3412, 8
  store i64 %3415, i64* %3, align 8
  %3416 = inttoptr i64 %3414 to i32*
  %3417 = load i32, i32* %3416, align 4
  store i32 %3417, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %3418 = add i64 %3413, -172
  %3419 = add i64 %3412, 26
  store i64 %3419, i64* %3, align 8
  %3420 = inttoptr i64 %3418 to i32*
  %3421 = load i32, i32* %3420, align 4
  store i32 %3421, i32* %3211, align 1
  store float 0.000000e+00, float* %3213, align 1
  store float 0.000000e+00, float* %3214, align 1
  store float 0.000000e+00, float* %3216, align 1
  %3422 = load <2 x float>, <2 x float>* %44, align 1
  %3423 = bitcast i64* %631 to <2 x i32>*
  %3424 = load <2 x i32>, <2 x i32>* %3423, align 1
  %3425 = load <2 x float>, <2 x float>* %35, align 1
  %3426 = extractelement <2 x float> %3422, i32 0
  %3427 = extractelement <2 x float> %3425, i32 0
  %3428 = fadd float %3426, %3427
  store float %3428, float* %3210, align 1
  %3429 = bitcast <2 x float> %3422 to <2 x i32>
  %3430 = extractelement <2 x i32> %3429, i32 1
  %3431 = bitcast i8* %3212 to i32*
  store i32 %3430, i32* %3431, align 1
  %3432 = extractelement <2 x i32> %3424, i32 0
  %3433 = bitcast i64* %631 to i32*
  store i32 %3432, i32* %3433, align 1
  %3434 = extractelement <2 x i32> %3424, i32 1
  %3435 = bitcast i8* %3215 to i32*
  store i32 %3434, i32* %3435, align 1
  %3436 = add i64 %3413, -176
  %3437 = add i64 %3412, 38
  store i64 %3437, i64* %3, align 8
  %3438 = inttoptr i64 %3436 to i32*
  %3439 = load i32, i32* %3438, align 4
  store i32 %3439, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %3440 = load <2 x float>, <2 x float>* %35, align 1
  %3441 = load <2 x i32>, <2 x i32>* %592, align 1
  %3442 = load <2 x float>, <2 x float>* %44, align 1
  %3443 = extractelement <2 x float> %3440, i32 0
  %3444 = extractelement <2 x float> %3442, i32 0
  %3445 = fmul float %3443, %3444
  store float %3445, float* %553, align 1
  %3446 = bitcast <2 x float> %3440 to <2 x i32>
  %3447 = extractelement <2 x i32> %3446, i32 1
  store i32 %3447, i32* %600, align 1
  %3448 = extractelement <2 x i32> %3441, i32 0
  store i32 %3448, i32* %602, align 1
  %3449 = extractelement <2 x i32> %3441, i32 1
  store i32 %3449, i32* %604, align 1
  %3450 = add i64 %3413, -8
  %3451 = add i64 %3412, 46
  store i64 %3451, i64* %3, align 8
  %3452 = inttoptr i64 %3450 to i32*
  %3453 = load i32, i32* %3452, align 4
  %3454 = sext i32 %3453 to i64
  %3455 = mul nsw i64 %3454, 564
  store i64 %3455, i64* %RCX.i1729.pre-phi, align 8
  %3456 = lshr i64 %3455, 63
  %3457 = add i64 %3455, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %3457, i64* %RAX.i1732.pre-phi, align 8
  %3458 = icmp ult i64 %3457, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %3459 = icmp ult i64 %3457, %3455
  %3460 = or i1 %3458, %3459
  %3461 = zext i1 %3460 to i8
  store i8 %3461, i8* %12, align 1
  %3462 = trunc i64 %3457 to i32
  %3463 = and i32 %3462, 252
  %3464 = tail call i32 @llvm.ctpop.i32(i32 %3463)
  %3465 = trunc i32 %3464 to i8
  %3466 = and i8 %3465, 1
  %3467 = xor i8 %3466, 1
  store i8 %3467, i8* %13, align 1
  %3468 = xor i64 %3455, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %3469 = xor i64 %3468, %3457
  %3470 = lshr i64 %3469, 4
  %3471 = trunc i64 %3470 to i8
  %3472 = and i8 %3471, 1
  store i8 %3472, i8* %14, align 1
  %3473 = icmp eq i64 %3457, 0
  %3474 = zext i1 %3473 to i8
  store i8 %3474, i8* %15, align 1
  %3475 = lshr i64 %3457, 63
  %3476 = trunc i64 %3475 to i8
  store i8 %3476, i8* %16, align 1
  %3477 = xor i64 %3475, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %3478 = xor i64 %3475, %3456
  %3479 = add nuw nsw i64 %3477, %3478
  %3480 = icmp eq i64 %3479, 2
  %3481 = zext i1 %3480 to i8
  store i8 %3481, i8* %17, align 1
  %3482 = add i64 %3455, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 8)
  %3483 = add i64 %3412, 61
  store i64 %3483, i64* %3, align 8
  %3484 = load <2 x float>, <2 x float>* %35, align 1
  %3485 = extractelement <2 x float> %3484, i32 0
  %3486 = inttoptr i64 %3482 to float*
  store float %3485, float* %3486, align 4
  %.pre119 = load i64, i64* %3, align 8
  br label %block_.L_480ade

block_.L_480ade:                                  ; preds = %block_.L_480aa1, %block_.L_4809e6
  %3487 = phi i64 [ %.pre119, %block_.L_480aa1 ], [ %3169, %block_.L_4809e6 ]
  %MEMORY.28 = phi %struct.Memory* [ %3339, %block_.L_480aa1 ], [ %MEMORY.26, %block_.L_4809e6 ]
  store i32 0, i32* %.pre-phi198, align 1
  store i32 0, i32* %600, align 1
  store i32 0, i32* %602, align 1
  store i32 0, i32* %604, align 1
  %3488 = load i64, i64* %RBP.i, align 8
  %3489 = add i64 %3488, -16
  %3490 = add i64 %3487, 8
  store i64 %3490, i64* %3, align 8
  %3491 = inttoptr i64 %3489 to float*
  %3492 = load float, float* %3491, align 4
  %3493 = fpext float %3492 to double
  store double %3493, double* %629, align 1
  %3494 = add i64 %3487, 12
  store i64 %3494, i64* %3, align 8
  %3495 = load double, double* %646, align 1
  %3496 = fcmp uno double %3493, %3495
  br i1 %3496, label %3497, label %3507

; <label>:3497:                                   ; preds = %block_.L_480ade
  %3498 = fadd double %3493, %3495
  %3499 = bitcast double %3498 to i64
  %3500 = and i64 %3499, 9221120237041090560
  %3501 = icmp eq i64 %3500, 9218868437227405312
  %3502 = and i64 %3499, 2251799813685247
  %3503 = icmp ne i64 %3502, 0
  %3504 = and i1 %3501, %3503
  br i1 %3504, label %3505, label %3513

; <label>:3505:                                   ; preds = %3497
  %3506 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3494, %struct.Memory* %MEMORY.28)
  %.pre120 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit546

; <label>:3507:                                   ; preds = %block_.L_480ade
  %3508 = fcmp ogt double %3493, %3495
  br i1 %3508, label %3513, label %3509

; <label>:3509:                                   ; preds = %3507
  %3510 = fcmp olt double %3493, %3495
  br i1 %3510, label %3513, label %3511

; <label>:3511:                                   ; preds = %3509
  %3512 = fcmp oeq double %3493, %3495
  br i1 %3512, label %3513, label %3517

; <label>:3513:                                   ; preds = %3511, %3509, %3507, %3497
  %3514 = phi i8 [ 0, %3507 ], [ 0, %3509 ], [ 1, %3511 ], [ 1, %3497 ]
  %3515 = phi i8 [ 0, %3507 ], [ 0, %3509 ], [ 0, %3511 ], [ 1, %3497 ]
  %3516 = phi i8 [ 0, %3507 ], [ 1, %3509 ], [ 0, %3511 ], [ 1, %3497 ]
  store i8 %3514, i8* %15, align 1
  store i8 %3515, i8* %13, align 1
  store i8 %3516, i8* %12, align 1
  br label %3517

; <label>:3517:                                   ; preds = %3513, %3511
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit546

routine_ucomisd__xmm0___xmm1.exit546:             ; preds = %3517, %3505
  %3518 = phi i64 [ %.pre120, %3505 ], [ %3494, %3517 ]
  %3519 = phi %struct.Memory* [ %3506, %3505 ], [ %MEMORY.28, %3517 ]
  %3520 = add i64 %3518, 477
  %3521 = add i64 %3518, 6
  %3522 = load i8, i8* %12, align 1
  %3523 = load i8, i8* %15, align 1
  %3524 = or i8 %3523, %3522
  %3525 = icmp ne i8 %3524, 0
  %3526 = select i1 %3525, i64 %3520, i64 %3521
  store i64 %3526, i64* %3, align 8
  br i1 %3525, label %block_.L_480cc7, label %block_480af0

block_480af0:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit546
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %3527 = load i64, i64* %RBP.i, align 8
  %3528 = add i64 %3527, -8
  %3529 = add i64 %3526, 14
  store i64 %3529, i64* %3, align 8
  %3530 = inttoptr i64 %3528 to i32*
  %3531 = load i32, i32* %3530, align 4
  %3532 = sext i32 %3531 to i64
  %3533 = mul nsw i64 %3532, 564
  store i64 %3533, i64* %RCX.i1729.pre-phi, align 8
  %3534 = lshr i64 %3533, 63
  %3535 = add i64 %3533, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %3535, i64* %RAX.i1732.pre-phi, align 8
  %3536 = icmp ult i64 %3535, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %3537 = icmp ult i64 %3535, %3533
  %3538 = or i1 %3536, %3537
  %3539 = zext i1 %3538 to i8
  store i8 %3539, i8* %12, align 1
  %3540 = trunc i64 %3535 to i32
  %3541 = and i32 %3540, 252
  %3542 = tail call i32 @llvm.ctpop.i32(i32 %3541)
  %3543 = trunc i32 %3542 to i8
  %3544 = and i8 %3543, 1
  %3545 = xor i8 %3544, 1
  store i8 %3545, i8* %13, align 1
  %3546 = xor i64 %3533, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %3547 = xor i64 %3546, %3535
  %3548 = lshr i64 %3547, 4
  %3549 = trunc i64 %3548 to i8
  %3550 = and i8 %3549, 1
  store i8 %3550, i8* %14, align 1
  %3551 = icmp eq i64 %3535, 0
  %3552 = zext i1 %3551 to i8
  store i8 %3552, i8* %15, align 1
  %3553 = lshr i64 %3535, 63
  %3554 = trunc i64 %3553 to i8
  store i8 %3554, i8* %16, align 1
  %3555 = xor i64 %3553, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %3556 = xor i64 %3553, %3534
  %3557 = add nuw nsw i64 %3555, %3556
  %3558 = icmp eq i64 %3557, 2
  %3559 = zext i1 %3558 to i8
  store i8 %3559, i8* %17, align 1
  %3560 = add i64 %3533, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 556)
  %3561 = add i64 %3526, 31
  store i64 %3561, i64* %3, align 8
  %3562 = inttoptr i64 %3560 to i32*
  %3563 = load i32, i32* %3562, align 4
  store i8 0, i8* %12, align 1
  %3564 = and i32 %3563, 255
  %3565 = tail call i32 @llvm.ctpop.i32(i32 %3564)
  %3566 = trunc i32 %3565 to i8
  %3567 = and i8 %3566, 1
  %3568 = xor i8 %3567, 1
  store i8 %3568, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3569 = icmp eq i32 %3563, 0
  %3570 = zext i1 %3569 to i8
  store i8 %3570, i8* %15, align 1
  %3571 = lshr i32 %3563, 31
  %3572 = trunc i32 %3571 to i8
  store i8 %3572, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v234 = select i1 %3569, i64 471, i64 37
  %3573 = add i64 %3526, %.v234
  store i64 %3573, i64* %3, align 8
  br i1 %3569, label %block_.L_480cc7, label %block_480b15

block_480b15:                                     ; preds = %block_480af0
  %3574 = add i64 %3527, -24
  %3575 = add i64 %3573, 5
  store i64 %3575, i64* %3, align 8
  %3576 = inttoptr i64 %3574 to i32*
  %3577 = load i32, i32* %3576, align 4
  store i32 %3577, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %3578 = add i64 %3527, -16
  %3579 = add i64 %3573, 10
  store i64 %3579, i64* %3, align 8
  %3580 = inttoptr i64 %3578 to i32*
  %3581 = load i32, i32* %3580, align 4
  %3582 = bitcast %union.VectorReg* %39 to i32*
  store i32 %3581, i32* %3582, align 1
  %3583 = getelementptr inbounds i8, i8* %623, i64 4
  %3584 = bitcast i8* %3583 to float*
  store float 0.000000e+00, float* %3584, align 1
  %3585 = bitcast i64* %631 to float*
  store float 0.000000e+00, float* %3585, align 1
  %3586 = getelementptr inbounds i8, i8* %623, i64 12
  %3587 = bitcast i8* %3586 to float*
  store float 0.000000e+00, float* %3587, align 1
  %3588 = add i64 %3573, 13
  store i64 %3588, i64* %3, align 8
  %3589 = load <2 x float>, <2 x float>* %44, align 1
  %3590 = extractelement <2 x float> %3589, i32 0
  %3591 = load <2 x float>, <2 x float>* %35, align 1
  %3592 = extractelement <2 x float> %3591, i32 0
  %3593 = fcmp uno float %3590, %3592
  br i1 %3593, label %3594, label %3604

; <label>:3594:                                   ; preds = %block_480b15
  %3595 = fadd float %3590, %3592
  %3596 = bitcast float %3595 to i32
  %3597 = and i32 %3596, 2143289344
  %3598 = icmp eq i32 %3597, 2139095040
  %3599 = and i32 %3596, 4194303
  %3600 = icmp ne i32 %3599, 0
  %3601 = and i1 %3598, %3600
  br i1 %3601, label %3602, label %3610

; <label>:3602:                                   ; preds = %3594
  %3603 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3588, %struct.Memory* %3519)
  %.pre121 = load i64, i64* %3, align 8
  %.pre122 = load i8, i8* %12, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit520

; <label>:3604:                                   ; preds = %block_480b15
  %3605 = fcmp ogt float %3590, %3592
  br i1 %3605, label %3610, label %3606

; <label>:3606:                                   ; preds = %3604
  %3607 = fcmp olt float %3590, %3592
  br i1 %3607, label %3610, label %3608

; <label>:3608:                                   ; preds = %3606
  %3609 = fcmp oeq float %3590, %3592
  br i1 %3609, label %3610, label %3614

; <label>:3610:                                   ; preds = %3608, %3606, %3604, %3594
  %3611 = phi i8 [ 0, %3604 ], [ 0, %3606 ], [ 1, %3608 ], [ 1, %3594 ]
  %3612 = phi i8 [ 0, %3604 ], [ 0, %3606 ], [ 0, %3608 ], [ 1, %3594 ]
  %3613 = phi i8 [ 0, %3604 ], [ 1, %3606 ], [ 0, %3608 ], [ 1, %3594 ]
  store i8 %3611, i8* %15, align 1
  store i8 %3612, i8* %13, align 1
  store i8 %3613, i8* %12, align 1
  br label %3614

; <label>:3614:                                   ; preds = %3610, %3608
  %3615 = phi i8 [ %3613, %3610 ], [ 0, %3608 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit520

routine_ucomiss__xmm0___xmm1.exit520:             ; preds = %3614, %3602
  %3616 = phi i8 [ %.pre122, %3602 ], [ %3615, %3614 ]
  %3617 = phi i64 [ %.pre121, %3602 ], [ %3588, %3614 ]
  %3618 = phi %struct.Memory* [ %3603, %3602 ], [ %3519, %3614 ]
  %3619 = icmp ne i8 %3616, 0
  %.v235 = select i1 %3619, i64 421, i64 6
  %3620 = add i64 %3617, %.v235
  store i64 %3620, i64* %3, align 8
  %cmpBr_480b22 = icmp eq i8 %3616, 1
  br i1 %cmpBr_480b22, label %block_.L_480cc7, label %block_480b28

block_480b28:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit520
  %3621 = load i64, i64* %RBP.i, align 8
  %3622 = add i64 %3621, -8
  %3623 = add i64 %3620, 4
  store i64 %3623, i64* %3, align 8
  %3624 = inttoptr i64 %3622 to i32*
  %3625 = load i32, i32* %3624, align 4
  %3626 = sext i32 %3625 to i64
  store i64 %3626, i64* %RAX.i1732.pre-phi, align 8
  %3627 = add nsw i64 %3626, 12099168
  %3628 = add i64 %3620, 12
  store i64 %3628, i64* %3, align 8
  %3629 = inttoptr i64 %3627 to i8*
  %3630 = load i8, i8* %3629, align 1
  %3631 = zext i8 %3630 to i64
  store i64 %3631, i64* %RCX.i1729.pre-phi, align 8
  %3632 = zext i8 %3630 to i32
  store i8 0, i8* %12, align 1
  %3633 = tail call i32 @llvm.ctpop.i32(i32 %3632)
  %3634 = trunc i32 %3633 to i8
  %3635 = and i8 %3634, 1
  %3636 = xor i8 %3635, 1
  store i8 %3636, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3637 = icmp eq i8 %3630, 0
  %3638 = zext i1 %3637 to i8
  store i8 %3638, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v236 = select i1 %3637, i64 21, i64 415
  %3639 = add i64 %3620, %.v236
  store i64 %3639, i64* %3, align 8
  br i1 %3637, label %block_480b3d, label %block_.L_480cc7

block_480b3d:                                     ; preds = %block_480b28
  store i32 0, i32* %.pre-phi198, align 1
  store i32 0, i32* %600, align 1
  store i32 0, i32* %602, align 1
  store i32 0, i32* %604, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %3640 = add i64 %3639, 17
  store i64 %3640, i64* %3, align 8
  %3641 = load i32, i32* %3624, align 4
  %3642 = sext i32 %3641 to i64
  %3643 = mul nsw i64 %3642, 564
  store i64 %3643, i64* %RCX.i1729.pre-phi, align 8
  %3644 = lshr i64 %3643, 63
  %3645 = add i64 %3643, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %3645, i64* %RAX.i1732.pre-phi, align 8
  %3646 = icmp ult i64 %3645, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %3647 = icmp ult i64 %3645, %3643
  %3648 = or i1 %3646, %3647
  %3649 = zext i1 %3648 to i8
  store i8 %3649, i8* %12, align 1
  %3650 = trunc i64 %3645 to i32
  %3651 = and i32 %3650, 252
  %3652 = tail call i32 @llvm.ctpop.i32(i32 %3651)
  %3653 = trunc i32 %3652 to i8
  %3654 = and i8 %3653, 1
  %3655 = xor i8 %3654, 1
  store i8 %3655, i8* %13, align 1
  %3656 = xor i64 %3643, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %3657 = xor i64 %3656, %3645
  %3658 = lshr i64 %3657, 4
  %3659 = trunc i64 %3658 to i8
  %3660 = and i8 %3659, 1
  store i8 %3660, i8* %14, align 1
  %3661 = icmp eq i64 %3645, 0
  %3662 = zext i1 %3661 to i8
  store i8 %3662, i8* %15, align 1
  %3663 = lshr i64 %3645, 63
  %3664 = trunc i64 %3663 to i8
  store i8 %3664, i8* %16, align 1
  %3665 = xor i64 %3663, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %3666 = xor i64 %3663, %3644
  %3667 = add nuw nsw i64 %3665, %3666
  %3668 = icmp eq i64 %3667, 2
  %3669 = zext i1 %3668 to i8
  store i8 %3669, i8* %17, align 1
  %3670 = add i64 %3643, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 8)
  %3671 = add i64 %3639, 32
  store i64 %3671, i64* %3, align 8
  %3672 = inttoptr i64 %3670 to float*
  %3673 = load float, float* %3672, align 4
  %3674 = fpext float %3673 to double
  store double %3674, double* %629, align 1
  %3675 = add i64 %3639, 36
  store i64 %3675, i64* %3, align 8
  %3676 = load double, double* %646, align 1
  %3677 = fcmp uno double %3674, %3676
  br i1 %3677, label %3678, label %3688

; <label>:3678:                                   ; preds = %block_480b3d
  %3679 = fadd double %3674, %3676
  %3680 = bitcast double %3679 to i64
  %3681 = and i64 %3680, 9221120237041090560
  %3682 = icmp eq i64 %3681, 9218868437227405312
  %3683 = and i64 %3680, 2251799813685247
  %3684 = icmp ne i64 %3683, 0
  %3685 = and i1 %3682, %3684
  br i1 %3685, label %3686, label %3694

; <label>:3686:                                   ; preds = %3678
  %3687 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3675, %struct.Memory* %3618)
  %.pre123 = load i64, i64* %3, align 8
  %.pre124 = load i8, i8* %12, align 1
  %.pre125 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:3688:                                   ; preds = %block_480b3d
  %3689 = fcmp ogt double %3674, %3676
  br i1 %3689, label %3694, label %3690

; <label>:3690:                                   ; preds = %3688
  %3691 = fcmp olt double %3674, %3676
  br i1 %3691, label %3694, label %3692

; <label>:3692:                                   ; preds = %3690
  %3693 = fcmp oeq double %3674, %3676
  br i1 %3693, label %3694, label %3698

; <label>:3694:                                   ; preds = %3692, %3690, %3688, %3678
  %3695 = phi i8 [ 0, %3688 ], [ 0, %3690 ], [ 1, %3692 ], [ 1, %3678 ]
  %3696 = phi i8 [ 0, %3688 ], [ 0, %3690 ], [ 0, %3692 ], [ 1, %3678 ]
  %3697 = phi i8 [ 0, %3688 ], [ 1, %3690 ], [ 0, %3692 ], [ 1, %3678 ]
  store i8 %3695, i8* %15, align 1
  store i8 %3696, i8* %13, align 1
  store i8 %3697, i8* %12, align 1
  br label %3698

; <label>:3698:                                   ; preds = %3694, %3692
  %3699 = phi i8 [ %3695, %3694 ], [ %3662, %3692 ]
  %3700 = phi i8 [ %3697, %3694 ], [ %3649, %3692 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %3698, %3686
  %3701 = phi i8 [ %.pre125, %3686 ], [ %3699, %3698 ]
  %3702 = phi i8 [ %.pre124, %3686 ], [ %3700, %3698 ]
  %3703 = phi i64 [ %.pre123, %3686 ], [ %3675, %3698 ]
  %3704 = phi %struct.Memory* [ %3687, %3686 ], [ %3618, %3698 ]
  %3705 = or i8 %3701, %3702
  %3706 = icmp ne i8 %3705, 0
  %.v247 = select i1 %3706, i64 358, i64 6
  %3707 = add i64 %3703, %.v247
  store i64 %3707, i64* %3, align 8
  br i1 %3706, label %block_.L_480cc7, label %block_480b67

block_480b67:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %3708 = load i64, i64* %RBP.i, align 8
  %3709 = add i64 %3708, -8
  %3710 = add i64 %3707, 3
  store i64 %3710, i64* %3, align 8
  %3711 = inttoptr i64 %3709 to i32*
  %3712 = load i32, i32* %3711, align 4
  %3713 = zext i32 %3712 to i64
  store i64 %3713, i64* %RDI.i776.pre-phi, align 8
  %RSI.i481 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %3714 = add i64 %3708, -12
  %3715 = add i64 %3707, 6
  store i64 %3715, i64* %3, align 8
  %3716 = inttoptr i64 %3714 to i32*
  %3717 = load i32, i32* %3716, align 4
  %3718 = zext i32 %3717 to i64
  store i64 %3718, i64* %RSI.i481, align 8
  %3719 = add i64 %3707, -467095
  %3720 = add i64 %3707, 11
  %3721 = load i64, i64* %6, align 8
  %3722 = add i64 %3721, -8
  %3723 = inttoptr i64 %3722 to i64*
  store i64 %3720, i64* %3723, align 8
  store i64 %3722, i64* %6, align 8
  store i64 %3719, i64* %3, align 8
  %call2_480b6d = tail call %struct.Memory* @sub_40ead0.is_legal(%struct.State* nonnull %0, i64 %3719, %struct.Memory* %3704)
  %3724 = load i32, i32* %EAX.i819.pre-phi, align 4
  %3725 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %3726 = and i32 %3724, 255
  %3727 = tail call i32 @llvm.ctpop.i32(i32 %3726)
  %3728 = trunc i32 %3727 to i8
  %3729 = and i8 %3728, 1
  %3730 = xor i8 %3729, 1
  store i8 %3730, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3731 = icmp eq i32 %3724, 0
  %3732 = zext i1 %3731 to i8
  store i8 %3732, i8* %15, align 1
  %3733 = lshr i32 %3724, 31
  %3734 = trunc i32 %3733 to i8
  store i8 %3734, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v248 = select i1 %3731, i64 341, i64 9
  %3735 = add i64 %3725, %.v248
  store i64 %3735, i64* %3, align 8
  br i1 %3731, label %block_.L_480cc7, label %block_480b7b

block_480b7b:                                     ; preds = %block_480b67
  %3736 = load i64, i64* %RBP.i, align 8
  %3737 = add i64 %3736, -8
  %3738 = add i64 %3735, 3
  store i64 %3738, i64* %3, align 8
  %3739 = inttoptr i64 %3737 to i32*
  %3740 = load i32, i32* %3739, align 4
  %3741 = zext i32 %3740 to i64
  store i64 %3741, i64* %RDI.i776.pre-phi, align 8
  %3742 = add i64 %3736, -12
  %3743 = add i64 %3735, 6
  store i64 %3743, i64* %3, align 8
  %3744 = inttoptr i64 %3742 to i32*
  %3745 = load i32, i32* %3744, align 4
  %3746 = zext i32 %3745 to i64
  store i64 %3746, i64* %RSI.i481, align 8
  %3747 = add i64 %3735, 17733
  %3748 = add i64 %3735, 11
  %3749 = load i64, i64* %6, align 8
  %3750 = add i64 %3749, -8
  %3751 = inttoptr i64 %3750 to i64*
  store i64 %3748, i64* %3751, align 8
  store i64 %3750, i64* %6, align 8
  store i64 %3747, i64* %3, align 8
  %call2_480b81 = tail call %struct.Memory* @sub_4850c0.value_moves_confirm_safety(%struct.State* nonnull %0, i64 %3747, %struct.Memory* %call2_480b6d)
  %3752 = load i32, i32* %EAX.i819.pre-phi, align 4
  %3753 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %3754 = and i32 %3752, 255
  %3755 = tail call i32 @llvm.ctpop.i32(i32 %3754)
  %3756 = trunc i32 %3755 to i8
  %3757 = and i8 %3756, 1
  %3758 = xor i8 %3757, 1
  store i8 %3758, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3759 = icmp eq i32 %3752, 0
  %3760 = zext i1 %3759 to i8
  store i8 %3760, i8* %15, align 1
  %3761 = lshr i32 %3752, 31
  %3762 = trunc i32 %3761 to i8
  store i8 %3762, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v249 = select i1 %3759, i64 321, i64 9
  %3763 = add i64 %3753, %.v249
  store i64 %3763, i64* %3, align 8
  br i1 %3759, label %block_.L_480cc7, label %block_480b8f

block_480b8f:                                     ; preds = %block_480b7b
  %3764 = add i64 %3763, ptrtoint (%G_0x62411__rip__type* @G_0x62411__rip_ to i64)
  %3765 = add i64 %3763, 8
  store i64 %3765, i64* %3, align 8
  %3766 = inttoptr i64 %3764 to i64*
  %3767 = load i64, i64* %3766, align 8
  %3768 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3767, i64* %3768, align 1
  %3769 = bitcast i64* %.pre-phi202 to double*
  store double 0.000000e+00, double* %3769, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %3770 = load i64, i64* %RBP.i, align 8
  %3771 = add i64 %3770, -16
  %3772 = add i64 %3763, 23
  store i64 %3772, i64* %3, align 8
  %3773 = inttoptr i64 %3771 to float*
  %3774 = load float, float* %3773, align 4
  %3775 = fpext float %3774 to double
  store double %3775, double* %629, align 1
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %3777 = add i64 %3770, -24
  %3778 = add i64 %3763, 28
  store i64 %3778, i64* %3, align 8
  %3779 = inttoptr i64 %3777 to float*
  %3780 = load float, float* %3779, align 4
  %3781 = fpext float %3780 to double
  %3782 = bitcast %union.VectorReg* %3776 to double*
  store double %3781, double* %3782, align 1
  %3783 = add i64 %3770, -8
  %3784 = add i64 %3763, 32
  store i64 %3784, i64* %3, align 8
  %3785 = inttoptr i64 %3783 to i32*
  %3786 = load i32, i32* %3785, align 4
  %3787 = sext i32 %3786 to i64
  %3788 = mul nsw i64 %3787, 564
  store i64 %3788, i64* %RCX.i1729.pre-phi, align 8
  %3789 = lshr i64 %3788, 63
  %3790 = add i64 %3788, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %3790, i64* %RAX.i1732.pre-phi, align 8
  %3791 = icmp ult i64 %3790, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %3792 = icmp ult i64 %3790, %3788
  %3793 = or i1 %3791, %3792
  %3794 = zext i1 %3793 to i8
  store i8 %3794, i8* %12, align 1
  %3795 = trunc i64 %3790 to i32
  %3796 = and i32 %3795, 252
  %3797 = tail call i32 @llvm.ctpop.i32(i32 %3796)
  %3798 = trunc i32 %3797 to i8
  %3799 = and i8 %3798, 1
  %3800 = xor i8 %3799, 1
  store i8 %3800, i8* %13, align 1
  %3801 = xor i64 %3788, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %3802 = xor i64 %3801, %3790
  %3803 = lshr i64 %3802, 4
  %3804 = trunc i64 %3803 to i8
  %3805 = and i8 %3804, 1
  store i8 %3805, i8* %14, align 1
  %3806 = icmp eq i64 %3790, 0
  %3807 = zext i1 %3806 to i8
  store i8 %3807, i8* %15, align 1
  %3808 = lshr i64 %3790, 63
  %3809 = trunc i64 %3808 to i8
  store i8 %3809, i8* %16, align 1
  %3810 = xor i64 %3808, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %3811 = xor i64 %3808, %3789
  %3812 = add nuw nsw i64 %3810, %3811
  %3813 = icmp eq i64 %3812, 2
  %3814 = zext i1 %3813 to i8
  store i8 %3814, i8* %17, align 1
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %3816 = add i64 %3788, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 8)
  %3817 = add i64 %3763, 47
  store i64 %3817, i64* %3, align 8
  %3818 = inttoptr i64 %3816 to float*
  %3819 = load float, float* %3818, align 4
  %3820 = fpext float %3819 to double
  %3821 = bitcast %union.VectorReg* %3815 to double*
  store double %3820, double* %3821, align 1
  %3822 = load double, double* %646, align 1
  %3823 = fmul double %3820, %3822
  store double %3823, double* %646, align 1
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %3825 = fadd double %3781, %3823
  store double %3825, double* %3782, align 1
  %3826 = add i64 %3763, 59
  store i64 %3826, i64* %3, align 8
  %3827 = load double, double* %629, align 1
  %3828 = fcmp uno double %3825, %3827
  br i1 %3828, label %3829, label %3839

; <label>:3829:                                   ; preds = %block_480b8f
  %3830 = fadd double %3825, %3827
  %3831 = bitcast double %3830 to i64
  %3832 = and i64 %3831, 9221120237041090560
  %3833 = icmp eq i64 %3832, 9218868437227405312
  %3834 = and i64 %3831, 2251799813685247
  %3835 = icmp ne i64 %3834, 0
  %3836 = and i1 %3833, %3835
  br i1 %3836, label %3837, label %3845

; <label>:3837:                                   ; preds = %3829
  %3838 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3826, %struct.Memory* %call2_480b81)
  %.pre126 = load i64, i64* %3, align 8
  %.pre127 = load i8, i8* %12, align 1
  %.pre128 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm1___xmm2.exit

; <label>:3839:                                   ; preds = %block_480b8f
  %3840 = fcmp ogt double %3825, %3827
  br i1 %3840, label %3845, label %3841

; <label>:3841:                                   ; preds = %3839
  %3842 = fcmp olt double %3825, %3827
  br i1 %3842, label %3845, label %3843

; <label>:3843:                                   ; preds = %3841
  %3844 = fcmp oeq double %3825, %3827
  br i1 %3844, label %3845, label %3849

; <label>:3845:                                   ; preds = %3843, %3841, %3839, %3829
  %3846 = phi i8 [ 0, %3839 ], [ 0, %3841 ], [ 1, %3843 ], [ 1, %3829 ]
  %3847 = phi i8 [ 0, %3839 ], [ 0, %3841 ], [ 0, %3843 ], [ 1, %3829 ]
  %3848 = phi i8 [ 0, %3839 ], [ 1, %3841 ], [ 0, %3843 ], [ 1, %3829 ]
  store i8 %3846, i8* %15, align 1
  store i8 %3847, i8* %13, align 1
  store i8 %3848, i8* %12, align 1
  br label %3849

; <label>:3849:                                   ; preds = %3845, %3843
  %3850 = phi i8 [ %3846, %3845 ], [ %3807, %3843 ]
  %3851 = phi i8 [ %3848, %3845 ], [ %3794, %3843 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm2.exit

routine_ucomisd__xmm1___xmm2.exit:                ; preds = %3849, %3837
  %3852 = phi i8 [ %.pre128, %3837 ], [ %3850, %3849 ]
  %3853 = phi i8 [ %.pre127, %3837 ], [ %3851, %3849 ]
  %3854 = phi i64 [ %.pre126, %3837 ], [ %3826, %3849 ]
  %3855 = phi %struct.Memory* [ %3838, %3837 ], [ %call2_480b81, %3849 ]
  %3856 = or i8 %3852, %3853
  %3857 = icmp ne i8 %3856, 0
  %.v250 = select i1 %3857, i64 24, i64 6
  %3858 = add i64 %3854, %.v250
  store i64 %3858, i64* %3, align 8
  br i1 %3857, label %block_.L_480be2, label %block_480bd0

block_480bd0:                                     ; preds = %routine_ucomisd__xmm1___xmm2.exit
  %3859 = load i64, i64* %RBP.i, align 8
  %3860 = add i64 %3859, -16
  %3861 = add i64 %3858, 5
  store i64 %3861, i64* %3, align 8
  %3862 = inttoptr i64 %3860 to float*
  %3863 = load float, float* %3862, align 4
  %3864 = fpext float %3863 to double
  store double %3864, double* %646, align 1
  %3865 = add i64 %3859, -192
  %3866 = add i64 %3858, 13
  store i64 %3866, i64* %3, align 8
  %3867 = inttoptr i64 %3865 to double*
  store double %3864, double* %3867, align 8
  %3868 = load i64, i64* %3, align 8
  %3869 = add i64 %3868, 63
  store i64 %3869, i64* %3, align 8
  br label %block_.L_480c1c

block_.L_480be2:                                  ; preds = %routine_ucomisd__xmm1___xmm2.exit
  %3870 = add i64 %3858, ptrtoint (%G_0x623be__rip__type* @G_0x623be__rip_ to i64)
  %3871 = add i64 %3858, 8
  store i64 %3871, i64* %3, align 8
  %3872 = inttoptr i64 %3870 to i64*
  %3873 = load i64, i64* %3872, align 8
  store i64 %3873, i64* %3768, align 1
  store double 0.000000e+00, double* %3769, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %3874 = load i64, i64* %RBP.i, align 8
  %3875 = add i64 %3874, -24
  %3876 = add i64 %3858, 23
  store i64 %3876, i64* %3, align 8
  %3877 = inttoptr i64 %3875 to float*
  %3878 = load float, float* %3877, align 4
  %3879 = fpext float %3878 to double
  store double %3879, double* %629, align 1
  %3880 = add i64 %3874, -8
  %3881 = add i64 %3858, 27
  store i64 %3881, i64* %3, align 8
  %3882 = inttoptr i64 %3880 to i32*
  %3883 = load i32, i32* %3882, align 4
  %3884 = sext i32 %3883 to i64
  %3885 = mul nsw i64 %3884, 564
  store i64 %3885, i64* %RCX.i1729.pre-phi, align 8
  %3886 = lshr i64 %3885, 63
  %3887 = add i64 %3885, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %3887, i64* %RAX.i1732.pre-phi, align 8
  %3888 = icmp ult i64 %3887, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %3889 = icmp ult i64 %3887, %3885
  %3890 = or i1 %3888, %3889
  %3891 = zext i1 %3890 to i8
  store i8 %3891, i8* %12, align 1
  %3892 = trunc i64 %3887 to i32
  %3893 = and i32 %3892, 252
  %3894 = tail call i32 @llvm.ctpop.i32(i32 %3893)
  %3895 = trunc i32 %3894 to i8
  %3896 = and i8 %3895, 1
  %3897 = xor i8 %3896, 1
  store i8 %3897, i8* %13, align 1
  %3898 = xor i64 %3885, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %3899 = xor i64 %3898, %3887
  %3900 = lshr i64 %3899, 4
  %3901 = trunc i64 %3900 to i8
  %3902 = and i8 %3901, 1
  store i8 %3902, i8* %14, align 1
  %3903 = icmp eq i64 %3887, 0
  %3904 = zext i1 %3903 to i8
  store i8 %3904, i8* %15, align 1
  %3905 = lshr i64 %3887, 63
  %3906 = trunc i64 %3905 to i8
  store i8 %3906, i8* %16, align 1
  %3907 = xor i64 %3905, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %3908 = xor i64 %3905, %3886
  %3909 = add nuw nsw i64 %3907, %3908
  %3910 = icmp eq i64 %3909, 2
  %3911 = zext i1 %3910 to i8
  store i8 %3911, i8* %17, align 1
  %3912 = add i64 %3885, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 8)
  %3913 = add i64 %3858, 42
  store i64 %3913, i64* %3, align 8
  %3914 = inttoptr i64 %3912 to float*
  %3915 = load float, float* %3914, align 4
  %3916 = fpext float %3915 to double
  store double %3916, double* %3782, align 1
  %3917 = bitcast i64 %3873 to double
  %3918 = fmul double %3916, %3917
  store double %3918, double* %646, align 1
  store i64 0, i64* %.pre-phi202, align 1
  %3919 = fadd double %3918, %3879
  store double %3919, double* %629, align 1
  %3920 = add i64 %3874, -192
  %3921 = add i64 %3858, 58
  store i64 %3921, i64* %3, align 8
  %3922 = inttoptr i64 %3920 to double*
  store double %3919, double* %3922, align 8
  %.pre129 = load i64, i64* %3, align 8
  br label %block_.L_480c1c

block_.L_480c1c:                                  ; preds = %block_.L_480be2, %block_480bd0
  %3923 = phi i64 [ %.pre129, %block_.L_480be2 ], [ %3869, %block_480bd0 ]
  %3924 = load i64, i64* %RBP.i, align 8
  %3925 = add i64 %3924, -192
  %3926 = add i64 %3923, 8
  store i64 %3926, i64* %3, align 8
  %3927 = inttoptr i64 %3925 to i64*
  %3928 = load i64, i64* %3927, align 8
  store i64 %3928, i64* %3768, align 1
  store double 0.000000e+00, double* %3769, align 1
  %3929 = add i64 %3923, add (i64 ptrtoint (%G_0x62334__rip__type* @G_0x62334__rip_ to i64), i64 8)
  %3930 = add i64 %3923, 16
  store i64 %3930, i64* %3, align 8
  %3931 = inttoptr i64 %3929 to i64*
  %3932 = load i64, i64* %3931, align 8
  store i64 %3932, i64* %630, align 1
  store double 0.000000e+00, double* %632, align 1
  %3933 = add i64 %3923, add (i64 ptrtoint (%G_0x62404__rip__type* @G_0x62404__rip_ to i64), i64 16)
  %3934 = add i64 %3923, 24
  store i64 %3934, i64* %3, align 8
  %3935 = inttoptr i64 %3933 to i64*
  %3936 = load i64, i64* %3935, align 8
  %3937 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %3776, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3936, i64* %3937, align 1
  %3938 = bitcast i64* %3824 to double*
  store double 0.000000e+00, double* %3938, align 1
  %3939 = bitcast i64 %3928 to <2 x i32>
  %.cast60 = bitcast i64 %3928 to double
  %3940 = fptrunc double %.cast60 to float
  store float %3940, float* %553, align 1
  %3941 = extractelement <2 x i32> %3939, i32 1
  store i32 %3941, i32* %600, align 1
  store i32 0, i32* %602, align 1
  store i32 0, i32* %604, align 1
  %3942 = add i64 %3924, -64
  %3943 = add i64 %3923, 33
  store i64 %3943, i64* %3, align 8
  %3944 = load <2 x float>, <2 x float>* %35, align 1
  %3945 = extractelement <2 x float> %3944, i32 0
  %3946 = inttoptr i64 %3942 to float*
  store float %3945, float* %3946, align 4
  %3947 = load i64, i64* %RBP.i, align 8
  %3948 = add i64 %3947, -16
  %3949 = load i64, i64* %3, align 8
  %3950 = add i64 %3949, 5
  store i64 %3950, i64* %3, align 8
  %3951 = inttoptr i64 %3948 to i32*
  %3952 = load i32, i32* %3951, align 4
  store i32 %3952, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %3953 = add i64 %3947, -24
  %3954 = add i64 %3949, 10
  store i64 %3954, i64* %3, align 8
  %3955 = load <2 x float>, <2 x float>* %35, align 1
  %3956 = load <2 x i32>, <2 x i32>* %592, align 1
  %3957 = inttoptr i64 %3953 to float*
  %3958 = load float, float* %3957, align 4
  %3959 = extractelement <2 x float> %3955, i32 0
  %3960 = fsub float %3959, %3958
  store float %3960, float* %553, align 1
  %3961 = bitcast <2 x float> %3955 to <2 x i32>
  %3962 = extractelement <2 x i32> %3961, i32 1
  store i32 %3962, i32* %600, align 1
  %3963 = extractelement <2 x i32> %3956, i32 0
  store i32 %3963, i32* %602, align 1
  %3964 = extractelement <2 x i32> %3956, i32 1
  store i32 %3964, i32* %604, align 1
  %3965 = load <2 x float>, <2 x float>* %35, align 1
  %3966 = extractelement <2 x float> %3965, i32 0
  %3967 = fpext float %3966 to double
  store double %3967, double* %646, align 1
  %3968 = load double, double* %3782, align 1
  %3969 = fmul double %3967, %3968
  store double %3969, double* %3782, align 1
  %3970 = add i64 %3949, 23
  store i64 %3970, i64* %3, align 8
  %3971 = inttoptr i64 %3948 to float*
  %3972 = load float, float* %3971, align 4
  %3973 = fpext float %3972 to double
  store double %3973, double* %646, align 1
  %3974 = fdiv double %3969, %3973
  store double %3974, double* %3782, align 1
  %3975 = load double, double* %629, align 1
  %3976 = fsub double %3975, %3974
  store double %3976, double* %629, align 1
  %3977 = add i64 %3947, -64
  %3978 = add i64 %3949, 36
  store i64 %3978, i64* %3, align 8
  %3979 = inttoptr i64 %3977 to float*
  %3980 = load float, float* %3979, align 4
  %3981 = fpext float %3980 to double
  %3982 = bitcast i64* %.pre-phi202 to <2 x i32>*
  %3983 = load <2 x i32>, <2 x i32>* %3982, align 1
  %3984 = fmul double %3981, %3976
  store double %3984, double* %646, align 1
  %.cast61 = bitcast double %3984 to <2 x i32>
  %3985 = fptrunc double %3984 to float
  store float %3985, float* %553, align 1
  %3986 = extractelement <2 x i32> %.cast61, i32 1
  store i32 %3986, i32* %600, align 1
  %3987 = extractelement <2 x i32> %3983, i32 0
  store i32 %3987, i32* %602, align 1
  %3988 = extractelement <2 x i32> %3983, i32 1
  store i32 %3988, i32* %604, align 1
  %3989 = add i64 %3949, 49
  store i64 %3989, i64* %3, align 8
  %3990 = load <2 x float>, <2 x float>* %35, align 1
  %3991 = extractelement <2 x float> %3990, i32 0
  store float %3991, float* %3979, align 4
  %3992 = load i64, i64* %RBP.i, align 8
  %3993 = add i64 %3992, -64
  %3994 = load i64, i64* %3, align 8
  %3995 = add i64 %3994, 5
  store i64 %3995, i64* %3, align 8
  %3996 = inttoptr i64 %3993 to i32*
  %3997 = load i32, i32* %3996, align 4
  store i32 %3997, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %3998 = add i64 %3992, -24
  %3999 = add i64 %3994, 9
  store i64 %3999, i64* %3, align 8
  %4000 = load <2 x float>, <2 x float>* %35, align 1
  %4001 = extractelement <2 x float> %4000, i32 0
  %4002 = inttoptr i64 %3998 to float*
  %4003 = load float, float* %4002, align 4
  %4004 = fcmp uno float %4001, %4003
  br i1 %4004, label %4005, label %4015

; <label>:4005:                                   ; preds = %block_.L_480c1c
  %4006 = fadd float %4001, %4003
  %4007 = bitcast float %4006 to i32
  %4008 = and i32 %4007, 2143289344
  %4009 = icmp eq i32 %4008, 2139095040
  %4010 = and i32 %4007, 4194303
  %4011 = icmp ne i32 %4010, 0
  %4012 = and i1 %4009, %4011
  br i1 %4012, label %4013, label %4021

; <label>:4013:                                   ; preds = %4005
  %4014 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3999, %struct.Memory* %3855)
  %.pre130 = load i64, i64* %3, align 8
  br label %routine_ucomiss_MINUS0x18__rbp____xmm0.exit

; <label>:4015:                                   ; preds = %block_.L_480c1c
  %4016 = fcmp ogt float %4001, %4003
  br i1 %4016, label %4021, label %4017

; <label>:4017:                                   ; preds = %4015
  %4018 = fcmp olt float %4001, %4003
  br i1 %4018, label %4021, label %4019

; <label>:4019:                                   ; preds = %4017
  %4020 = fcmp oeq float %4001, %4003
  br i1 %4020, label %4021, label %4025

; <label>:4021:                                   ; preds = %4019, %4017, %4015, %4005
  %4022 = phi i8 [ 0, %4015 ], [ 0, %4017 ], [ 1, %4019 ], [ 1, %4005 ]
  %4023 = phi i8 [ 0, %4015 ], [ 0, %4017 ], [ 0, %4019 ], [ 1, %4005 ]
  %4024 = phi i8 [ 0, %4015 ], [ 1, %4017 ], [ 0, %4019 ], [ 1, %4005 ]
  store i8 %4022, i8* %15, align 1
  store i8 %4023, i8* %13, align 1
  store i8 %4024, i8* %12, align 1
  br label %4025

; <label>:4025:                                   ; preds = %4021, %4019
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss_MINUS0x18__rbp____xmm0.exit

routine_ucomiss_MINUS0x18__rbp____xmm0.exit:      ; preds = %4025, %4013
  %4026 = phi i64 [ %.pre130, %4013 ], [ %3999, %4025 ]
  %4027 = phi %struct.Memory* [ %4014, %4013 ], [ %3855, %4025 ]
  %4028 = add i64 %4026, 75
  %4029 = add i64 %4026, 6
  %4030 = load i8, i8* %12, align 1
  %4031 = load i8, i8* %15, align 1
  %4032 = or i8 %4031, %4030
  %4033 = icmp ne i8 %4032, 0
  %4034 = select i1 %4033, i64 %4028, i64 %4029
  store i64 %4034, i64* %3, align 8
  br i1 %4033, label %block_.L_480cc2, label %block_480c7d

block_480c7d:                                     ; preds = %routine_ucomiss_MINUS0x18__rbp____xmm0.exit
  %4035 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %4036 = and i32 %4035, 255
  %4037 = tail call i32 @llvm.ctpop.i32(i32 %4036)
  %4038 = trunc i32 %4037 to i8
  %4039 = and i8 %4038, 1
  %4040 = xor i8 %4039, 1
  store i8 %4040, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4041 = icmp eq i32 %4035, 0
  %4042 = zext i1 %4041 to i8
  store i8 %4042, i8* %15, align 1
  %4043 = lshr i32 %4035, 31
  %4044 = trunc i32 %4043 to i8
  store i8 %4044, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v251 = select i1 %4041, i64 14, i64 19
  %4045 = add i64 %4034, %.v251
  store i64 %4045, i64* %3, align 8
  br i1 %4041, label %block_480c8b, label %block_.L_480c90

block_480c8b:                                     ; preds = %block_480c7d
  %4046 = add i64 %4045, 45
  store i64 %4046, i64* %3, align 8
  br label %block_.L_480cb8

block_.L_480c90:                                  ; preds = %block_480c7d
  store i64 ptrtoint (%G__0x58217d_type* @G__0x58217d to i64), i64* %RDI.i776.pre-phi, align 8
  %4047 = load i64, i64* %RBP.i, align 8
  %4048 = add i64 %4047, -8
  %4049 = add i64 %4045, 13
  store i64 %4049, i64* %3, align 8
  %4050 = inttoptr i64 %4048 to i32*
  %4051 = load i32, i32* %4050, align 4
  %4052 = zext i32 %4051 to i64
  store i64 %4052, i64* %RSI.i481, align 8
  %4053 = add i64 %4047, -64
  %4054 = add i64 %4045, 18
  store i64 %4054, i64* %3, align 8
  %4055 = inttoptr i64 %4053 to i32*
  %4056 = load i32, i32* %4055, align 4
  store i32 %4056, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %4057 = add i64 %4047, -24
  %4058 = add i64 %4045, 23
  store i64 %4058, i64* %3, align 8
  %4059 = load <2 x float>, <2 x float>* %35, align 1
  %4060 = load <2 x i32>, <2 x i32>* %592, align 1
  %4061 = inttoptr i64 %4057 to float*
  %4062 = load float, float* %4061, align 4
  %4063 = extractelement <2 x float> %4059, i32 0
  %4064 = fsub float %4063, %4062
  store float %4064, float* %553, align 1
  %4065 = bitcast <2 x float> %4059 to <2 x i32>
  %4066 = extractelement <2 x i32> %4065, i32 1
  store i32 %4066, i32* %600, align 1
  %4067 = extractelement <2 x i32> %4060, i32 0
  store i32 %4067, i32* %602, align 1
  %4068 = extractelement <2 x i32> %4060, i32 1
  store i32 %4068, i32* %604, align 1
  %4069 = load <2 x float>, <2 x float>* %35, align 1
  %4070 = extractelement <2 x float> %4069, i32 0
  %4071 = fpext float %4070 to double
  store double %4071, double* %646, align 1
  %AL.i331 = bitcast %union.anon* %EAX.i819.pre-phi.in to i8*
  store i8 1, i8* %AL.i331, align 1
  %4072 = add i64 %4045, -192224
  %4073 = add i64 %4045, 34
  %4074 = load i64, i64* %6, align 8
  %4075 = add i64 %4074, -8
  %4076 = inttoptr i64 %4075 to i64*
  store i64 %4073, i64* %4076, align 8
  store i64 %4075, i64* %6, align 8
  store i64 %4072, i64* %3, align 8
  %call2_480cad = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %4072, %struct.Memory* %4027)
  %4077 = load i64, i64* %RBP.i, align 8
  %4078 = add i64 %4077, -196
  %4079 = load i32, i32* %EAX.i819.pre-phi, align 4
  %4080 = load i64, i64* %3, align 8
  %4081 = add i64 %4080, 6
  store i64 %4081, i64* %3, align 8
  %4082 = inttoptr i64 %4078 to i32*
  store i32 %4079, i32* %4082, align 4
  %.pre131 = load i64, i64* %3, align 8
  br label %block_.L_480cb8

block_.L_480cb8:                                  ; preds = %block_.L_480c90, %block_480c8b
  %4083 = phi i64 [ %.pre131, %block_.L_480c90 ], [ %4046, %block_480c8b ]
  %MEMORY.30 = phi %struct.Memory* [ %call2_480cad, %block_.L_480c90 ], [ %4027, %block_480c8b ]
  %4084 = load i64, i64* %RBP.i, align 8
  %4085 = add i64 %4084, -64
  %4086 = add i64 %4083, 5
  store i64 %4086, i64* %3, align 8
  %4087 = inttoptr i64 %4085 to i32*
  %4088 = load i32, i32* %4087, align 4
  store i32 %4088, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %4089 = add i64 %4084, -24
  %4090 = add i64 %4083, 10
  store i64 %4090, i64* %3, align 8
  %4091 = load <2 x float>, <2 x float>* %35, align 1
  %4092 = extractelement <2 x float> %4091, i32 0
  %4093 = inttoptr i64 %4089 to float*
  store float %4092, float* %4093, align 4
  %.pre132 = load i64, i64* %3, align 8
  br label %block_.L_480cc2

block_.L_480cc2:                                  ; preds = %block_.L_480cb8, %routine_ucomiss_MINUS0x18__rbp____xmm0.exit
  %4094 = phi i64 [ %4028, %routine_ucomiss_MINUS0x18__rbp____xmm0.exit ], [ %.pre132, %block_.L_480cb8 ]
  %MEMORY.31 = phi %struct.Memory* [ %4027, %routine_ucomiss_MINUS0x18__rbp____xmm0.exit ], [ %MEMORY.30, %block_.L_480cb8 ]
  %4095 = add i64 %4094, 5
  store i64 %4095, i64* %3, align 8
  br label %block_.L_480cc7

block_.L_480cc7:                                  ; preds = %block_480b28, %block_.L_480cc2, %block_480b7b, %block_480b67, %routine_ucomisd__xmm0___xmm1.exit, %routine_ucomiss__xmm0___xmm1.exit520, %block_480af0, %routine_ucomisd__xmm0___xmm1.exit546
  %4096 = phi i64 [ %3520, %routine_ucomisd__xmm0___xmm1.exit546 ], [ %3573, %block_480af0 ], [ %3620, %routine_ucomiss__xmm0___xmm1.exit520 ], [ %3639, %block_480b28 ], [ %3707, %routine_ucomisd__xmm0___xmm1.exit ], [ %3735, %block_480b67 ], [ %3763, %block_480b7b ], [ %4095, %block_.L_480cc2 ]
  %MEMORY.32 = phi %struct.Memory* [ %3519, %routine_ucomisd__xmm0___xmm1.exit546 ], [ %3519, %block_480af0 ], [ %3618, %routine_ucomiss__xmm0___xmm1.exit520 ], [ %3618, %block_480b28 ], [ %3704, %routine_ucomisd__xmm0___xmm1.exit ], [ %call2_480b6d, %block_480b67 ], [ %call2_480b81, %block_480b7b ], [ %MEMORY.31, %block_.L_480cc2 ]
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %4097 = load i64, i64* %RBP.i, align 8
  %4098 = add i64 %4097, -8
  %4099 = add i64 %4096, 14
  store i64 %4099, i64* %3, align 8
  %4100 = inttoptr i64 %4098 to i32*
  %4101 = load i32, i32* %4100, align 4
  %4102 = sext i32 %4101 to i64
  %4103 = mul nsw i64 %4102, 564
  store i64 %4103, i64* %RCX.i1729.pre-phi, align 8
  %4104 = lshr i64 %4103, 63
  %4105 = add i64 %4103, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %4105, i64* %RDX.i1725, align 8
  %4106 = icmp ult i64 %4105, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4107 = icmp ult i64 %4105, %4103
  %4108 = or i1 %4106, %4107
  %4109 = zext i1 %4108 to i8
  store i8 %4109, i8* %12, align 1
  %4110 = trunc i64 %4105 to i32
  %4111 = and i32 %4110, 252
  %4112 = tail call i32 @llvm.ctpop.i32(i32 %4111)
  %4113 = trunc i32 %4112 to i8
  %4114 = and i8 %4113, 1
  %4115 = xor i8 %4114, 1
  store i8 %4115, i8* %13, align 1
  %4116 = xor i64 %4103, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4117 = xor i64 %4116, %4105
  %4118 = lshr i64 %4117, 4
  %4119 = trunc i64 %4118 to i8
  %4120 = and i8 %4119, 1
  store i8 %4120, i8* %14, align 1
  %4121 = icmp eq i64 %4105, 0
  %4122 = zext i1 %4121 to i8
  store i8 %4122, i8* %15, align 1
  %4123 = lshr i64 %4105, 63
  %4124 = trunc i64 %4123 to i8
  store i8 %4124, i8* %16, align 1
  %4125 = xor i64 %4123, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %4126 = xor i64 %4123, %4104
  %4127 = add nuw nsw i64 %4125, %4126
  %4128 = icmp eq i64 %4127, 2
  %4129 = zext i1 %4128 to i8
  store i8 %4129, i8* %17, align 1
  %4130 = add i64 %4103, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 52)
  %4131 = add i64 %4096, 32
  store i64 %4131, i64* %3, align 8
  %4132 = inttoptr i64 %4130 to i32*
  %4133 = load i32, i32* %4132, align 4
  store i32 %4133, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %4134 = add i64 %4096, 36
  store i64 %4134, i64* %3, align 8
  %4135 = load i32, i32* %4100, align 4
  %4136 = sext i32 %4135 to i64
  %4137 = mul nsw i64 %4136, 564
  store i64 %4137, i64* %RCX.i1729.pre-phi, align 8
  %4138 = lshr i64 %4137, 63
  %4139 = load i64, i64* %RAX.i1732.pre-phi, align 8
  %4140 = add i64 %4137, %4139
  store i64 %4140, i64* %RAX.i1732.pre-phi, align 8
  %4141 = icmp ult i64 %4140, %4139
  %4142 = icmp ult i64 %4140, %4137
  %4143 = or i1 %4141, %4142
  %4144 = zext i1 %4143 to i8
  store i8 %4144, i8* %12, align 1
  %4145 = trunc i64 %4140 to i32
  %4146 = and i32 %4145, 255
  %4147 = tail call i32 @llvm.ctpop.i32(i32 %4146)
  %4148 = trunc i32 %4147 to i8
  %4149 = and i8 %4148, 1
  %4150 = xor i8 %4149, 1
  store i8 %4150, i8* %13, align 1
  %4151 = xor i64 %4137, %4139
  %4152 = xor i64 %4151, %4140
  %4153 = lshr i64 %4152, 4
  %4154 = trunc i64 %4153 to i8
  %4155 = and i8 %4154, 1
  store i8 %4155, i8* %14, align 1
  %4156 = icmp eq i64 %4140, 0
  %4157 = zext i1 %4156 to i8
  store i8 %4157, i8* %15, align 1
  %4158 = lshr i64 %4140, 63
  %4159 = trunc i64 %4158 to i8
  store i8 %4159, i8* %16, align 1
  %4160 = lshr i64 %4139, 63
  %4161 = xor i64 %4158, %4160
  %4162 = xor i64 %4158, %4138
  %4163 = add nuw nsw i64 %4161, %4162
  %4164 = icmp eq i64 %4163, 2
  %4165 = zext i1 %4164 to i8
  store i8 %4165, i8* %17, align 1
  %4166 = add i64 %4140, 56
  %4167 = add i64 %4096, 50
  store i64 %4167, i64* %3, align 8
  %4168 = load <2 x float>, <2 x float>* %35, align 1
  %4169 = extractelement <2 x float> %4168, i32 0
  %4170 = inttoptr i64 %4166 to float*
  %4171 = load float, float* %4170, align 4
  %4172 = fcmp uno float %4169, %4171
  br i1 %4172, label %4173, label %4183

; <label>:4173:                                   ; preds = %block_.L_480cc7
  %4174 = fadd float %4169, %4171
  %4175 = bitcast float %4174 to i32
  %4176 = and i32 %4175, 2143289344
  %4177 = icmp eq i32 %4176, 2139095040
  %4178 = and i32 %4175, 4194303
  %4179 = icmp ne i32 %4178, 0
  %4180 = and i1 %4177, %4179
  br i1 %4180, label %4181, label %4189

; <label>:4181:                                   ; preds = %4173
  %4182 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4167, %struct.Memory* %MEMORY.32)
  %.pre133 = load i64, i64* %3, align 8
  %.pre134 = load i8, i8* %12, align 1
  %.pre135 = load i8, i8* %15, align 1
  br label %routine_ucomiss_0x38__rax____xmm0.exit293

; <label>:4183:                                   ; preds = %block_.L_480cc7
  %4184 = fcmp ogt float %4169, %4171
  br i1 %4184, label %4189, label %4185

; <label>:4185:                                   ; preds = %4183
  %4186 = fcmp olt float %4169, %4171
  br i1 %4186, label %4189, label %4187

; <label>:4187:                                   ; preds = %4185
  %4188 = fcmp oeq float %4169, %4171
  br i1 %4188, label %4189, label %4193

; <label>:4189:                                   ; preds = %4187, %4185, %4183, %4173
  %4190 = phi i8 [ 0, %4183 ], [ 0, %4185 ], [ 1, %4187 ], [ 1, %4173 ]
  %4191 = phi i8 [ 0, %4183 ], [ 0, %4185 ], [ 0, %4187 ], [ 1, %4173 ]
  %4192 = phi i8 [ 0, %4183 ], [ 1, %4185 ], [ 0, %4187 ], [ 1, %4173 ]
  store i8 %4190, i8* %15, align 1
  store i8 %4191, i8* %13, align 1
  store i8 %4192, i8* %12, align 1
  br label %4193

; <label>:4193:                                   ; preds = %4189, %4187
  %4194 = phi i8 [ %4190, %4189 ], [ %4157, %4187 ]
  %4195 = phi i8 [ %4192, %4189 ], [ %4144, %4187 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss_0x38__rax____xmm0.exit293

routine_ucomiss_0x38__rax____xmm0.exit293:        ; preds = %4193, %4181
  %4196 = phi i8 [ %.pre135, %4181 ], [ %4194, %4193 ]
  %4197 = phi i8 [ %.pre134, %4181 ], [ %4195, %4193 ]
  %4198 = phi i64 [ %.pre133, %4181 ], [ %4167, %4193 ]
  %4199 = phi %struct.Memory* [ %4182, %4181 ], [ %MEMORY.32, %4193 ]
  %4200 = or i8 %4196, %4197
  %4201 = icmp ne i8 %4200, 0
  %.v237 = select i1 %4201, i64 57, i64 6
  %4202 = add i64 %4198, %.v237
  store i64 %4202, i64* %3, align 8
  br i1 %4201, label %block_.L_480d32, label %block_480cff

block_480cff:                                     ; preds = %routine_ucomiss_0x38__rax____xmm0.exit293
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %4203 = load i64, i64* %RBP.i, align 8
  %4204 = add i64 %4203, -8
  %4205 = add i64 %4202, 14
  store i64 %4205, i64* %3, align 8
  %4206 = inttoptr i64 %4204 to i32*
  %4207 = load i32, i32* %4206, align 4
  %4208 = sext i32 %4207 to i64
  %4209 = mul nsw i64 %4208, 564
  store i64 %4209, i64* %RCX.i1729.pre-phi, align 8
  %4210 = lshr i64 %4209, 63
  %4211 = add i64 %4209, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %4211, i64* %RDX.i1725, align 8
  %4212 = icmp ult i64 %4211, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4213 = icmp ult i64 %4211, %4209
  %4214 = or i1 %4212, %4213
  %4215 = zext i1 %4214 to i8
  store i8 %4215, i8* %12, align 1
  %4216 = trunc i64 %4211 to i32
  %4217 = and i32 %4216, 252
  %4218 = tail call i32 @llvm.ctpop.i32(i32 %4217)
  %4219 = trunc i32 %4218 to i8
  %4220 = and i8 %4219, 1
  %4221 = xor i8 %4220, 1
  store i8 %4221, i8* %13, align 1
  %4222 = xor i64 %4209, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4223 = xor i64 %4222, %4211
  %4224 = lshr i64 %4223, 4
  %4225 = trunc i64 %4224 to i8
  %4226 = and i8 %4225, 1
  store i8 %4226, i8* %14, align 1
  %4227 = icmp eq i64 %4211, 0
  %4228 = zext i1 %4227 to i8
  store i8 %4228, i8* %15, align 1
  %4229 = lshr i64 %4211, 63
  %4230 = trunc i64 %4229 to i8
  store i8 %4230, i8* %16, align 1
  %4231 = xor i64 %4229, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %4232 = xor i64 %4229, %4210
  %4233 = add nuw nsw i64 %4231, %4232
  %4234 = icmp eq i64 %4233, 2
  %4235 = zext i1 %4234 to i8
  store i8 %4235, i8* %17, align 1
  %4236 = add i64 %4209, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 52)
  %4237 = add i64 %4202, 32
  store i64 %4237, i64* %3, align 8
  %4238 = inttoptr i64 %4236 to i32*
  %4239 = load i32, i32* %4238, align 4
  store i32 %4239, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %4240 = add i64 %4202, 36
  store i64 %4240, i64* %3, align 8
  %4241 = load i32, i32* %4206, align 4
  %4242 = sext i32 %4241 to i64
  %4243 = mul nsw i64 %4242, 564
  store i64 %4243, i64* %RCX.i1729.pre-phi, align 8
  %4244 = lshr i64 %4243, 63
  %4245 = load i64, i64* %RAX.i1732.pre-phi, align 8
  %4246 = add i64 %4243, %4245
  store i64 %4246, i64* %RAX.i1732.pre-phi, align 8
  %4247 = icmp ult i64 %4246, %4245
  %4248 = icmp ult i64 %4246, %4243
  %4249 = or i1 %4247, %4248
  %4250 = zext i1 %4249 to i8
  store i8 %4250, i8* %12, align 1
  %4251 = trunc i64 %4246 to i32
  %4252 = and i32 %4251, 255
  %4253 = tail call i32 @llvm.ctpop.i32(i32 %4252)
  %4254 = trunc i32 %4253 to i8
  %4255 = and i8 %4254, 1
  %4256 = xor i8 %4255, 1
  store i8 %4256, i8* %13, align 1
  %4257 = xor i64 %4243, %4245
  %4258 = xor i64 %4257, %4246
  %4259 = lshr i64 %4258, 4
  %4260 = trunc i64 %4259 to i8
  %4261 = and i8 %4260, 1
  store i8 %4261, i8* %14, align 1
  %4262 = icmp eq i64 %4246, 0
  %4263 = zext i1 %4262 to i8
  store i8 %4263, i8* %15, align 1
  %4264 = lshr i64 %4246, 63
  %4265 = trunc i64 %4264 to i8
  store i8 %4265, i8* %16, align 1
  %4266 = lshr i64 %4245, 63
  %4267 = xor i64 %4264, %4266
  %4268 = xor i64 %4264, %4244
  %4269 = add nuw nsw i64 %4267, %4268
  %4270 = icmp eq i64 %4269, 2
  %4271 = zext i1 %4270 to i8
  store i8 %4271, i8* %17, align 1
  %4272 = add i64 %4246, 56
  %4273 = add i64 %4202, 51
  store i64 %4273, i64* %3, align 8
  %4274 = load <2 x float>, <2 x float>* %35, align 1
  %4275 = extractelement <2 x float> %4274, i32 0
  %4276 = inttoptr i64 %4272 to float*
  store float %4275, float* %4276, align 4
  %.pre136 = load i64, i64* %3, align 8
  br label %block_.L_480d32

block_.L_480d32:                                  ; preds = %block_480cff, %routine_ucomiss_0x38__rax____xmm0.exit293
  %4277 = phi i64 [ %.pre136, %block_480cff ], [ %4202, %routine_ucomiss_0x38__rax____xmm0.exit293 ]
  %4278 = add i64 %4277, ptrtoint (%G_0x62436__rip__type* @G_0x62436__rip_ to i64)
  %4279 = add i64 %4277, 8
  store i64 %4279, i64* %3, align 8
  %4280 = inttoptr i64 %4278 to i32*
  %4281 = load i32, i32* %4280, align 4
  store i32 %4281, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %4282 = load i64, i64* %RBP.i, align 8
  %4283 = add i64 %4282, -8
  %4284 = add i64 %4277, 22
  store i64 %4284, i64* %3, align 8
  %4285 = inttoptr i64 %4283 to i32*
  %4286 = load i32, i32* %4285, align 4
  %4287 = sext i32 %4286 to i64
  %4288 = mul nsw i64 %4287, 564
  store i64 %4288, i64* %RCX.i1729.pre-phi, align 8
  %4289 = lshr i64 %4288, 63
  %4290 = add i64 %4288, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %4290, i64* %RAX.i1732.pre-phi, align 8
  %4291 = icmp ult i64 %4290, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4292 = icmp ult i64 %4290, %4288
  %4293 = or i1 %4291, %4292
  %4294 = zext i1 %4293 to i8
  store i8 %4294, i8* %12, align 1
  %4295 = trunc i64 %4290 to i32
  %4296 = and i32 %4295, 252
  %4297 = tail call i32 @llvm.ctpop.i32(i32 %4296)
  %4298 = trunc i32 %4297 to i8
  %4299 = and i8 %4298, 1
  %4300 = xor i8 %4299, 1
  store i8 %4300, i8* %13, align 1
  %4301 = xor i64 %4288, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4302 = xor i64 %4301, %4290
  %4303 = lshr i64 %4302, 4
  %4304 = trunc i64 %4303 to i8
  %4305 = and i8 %4304, 1
  store i8 %4305, i8* %14, align 1
  %4306 = icmp eq i64 %4290, 0
  %4307 = zext i1 %4306 to i8
  store i8 %4307, i8* %15, align 1
  %4308 = lshr i64 %4290, 63
  %4309 = trunc i64 %4308 to i8
  store i8 %4309, i8* %16, align 1
  %4310 = xor i64 %4308, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %4311 = xor i64 %4308, %4289
  %4312 = add nuw nsw i64 %4310, %4311
  %4313 = icmp eq i64 %4312, 2
  %4314 = zext i1 %4313 to i8
  store i8 %4314, i8* %17, align 1
  %4315 = add i64 %4288, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 52)
  %4316 = add i64 %4277, 36
  store i64 %4316, i64* %3, align 8
  %4317 = load <2 x float>, <2 x float>* %35, align 1
  %4318 = extractelement <2 x float> %4317, i32 0
  %4319 = inttoptr i64 %4315 to float*
  %4320 = load float, float* %4319, align 4
  %4321 = fcmp uno float %4318, %4320
  br i1 %4321, label %4322, label %4332

; <label>:4322:                                   ; preds = %block_.L_480d32
  %4323 = fadd float %4318, %4320
  %4324 = bitcast float %4323 to i32
  %4325 = and i32 %4324, 2143289344
  %4326 = icmp eq i32 %4325, 2139095040
  %4327 = and i32 %4324, 4194303
  %4328 = icmp ne i32 %4327, 0
  %4329 = and i1 %4326, %4328
  br i1 %4329, label %4330, label %4338

; <label>:4330:                                   ; preds = %4322
  %4331 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4316, %struct.Memory* %4199)
  %.pre137 = load i64, i64* %3, align 8
  %.pre138 = load i8, i8* %12, align 1
  %.pre139 = load i8, i8* %15, align 1
  br label %routine_ucomiss_0x34__rax____xmm0.exit

; <label>:4332:                                   ; preds = %block_.L_480d32
  %4333 = fcmp ogt float %4318, %4320
  br i1 %4333, label %4338, label %4334

; <label>:4334:                                   ; preds = %4332
  %4335 = fcmp olt float %4318, %4320
  br i1 %4335, label %4338, label %4336

; <label>:4336:                                   ; preds = %4334
  %4337 = fcmp oeq float %4318, %4320
  br i1 %4337, label %4338, label %4342

; <label>:4338:                                   ; preds = %4336, %4334, %4332, %4322
  %4339 = phi i8 [ 0, %4332 ], [ 0, %4334 ], [ 1, %4336 ], [ 1, %4322 ]
  %4340 = phi i8 [ 0, %4332 ], [ 0, %4334 ], [ 0, %4336 ], [ 1, %4322 ]
  %4341 = phi i8 [ 0, %4332 ], [ 1, %4334 ], [ 0, %4336 ], [ 1, %4322 ]
  store i8 %4339, i8* %15, align 1
  store i8 %4340, i8* %13, align 1
  store i8 %4341, i8* %12, align 1
  br label %4342

; <label>:4342:                                   ; preds = %4338, %4336
  %4343 = phi i8 [ %4339, %4338 ], [ %4307, %4336 ]
  %4344 = phi i8 [ %4341, %4338 ], [ %4294, %4336 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss_0x34__rax____xmm0.exit

routine_ucomiss_0x34__rax____xmm0.exit:           ; preds = %4342, %4330
  %4345 = phi i8 [ %.pre139, %4330 ], [ %4343, %4342 ]
  %4346 = phi i8 [ %.pre138, %4330 ], [ %4344, %4342 ]
  %4347 = phi i64 [ %.pre137, %4330 ], [ %4316, %4342 ]
  %4348 = phi %struct.Memory* [ %4331, %4330 ], [ %4199, %4342 ]
  %4349 = or i8 %4345, %4346
  %4350 = icmp ne i8 %4349, 0
  %.v238 = select i1 %4350, i64 57, i64 6
  %4351 = add i64 %4347, %.v238
  store i64 %4351, i64* %3, align 8
  br i1 %4350, label %routine_ucomiss_0x34__rax____xmm0.exit.block_.L_480d8f_crit_edge, label %block_480d5c

routine_ucomiss_0x34__rax____xmm0.exit.block_.L_480d8f_crit_edge: ; preds = %routine_ucomiss_0x34__rax____xmm0.exit
  %.pre205 = bitcast %union.VectorReg* %39 to i32*
  %.pre207 = getelementptr inbounds i8, i8* %623, i64 4
  %.pre209 = bitcast i8* %.pre207 to float*
  %.pre211 = bitcast i64* %631 to float*
  %.pre213 = getelementptr inbounds i8, i8* %623, i64 12
  %.pre215 = bitcast i8* %.pre213 to float*
  br label %block_.L_480d8f

block_480d5c:                                     ; preds = %routine_ucomiss_0x34__rax____xmm0.exit
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %4352 = add i64 %4351, add (i64 ptrtoint (%G_0x62406__rip__type* @G_0x62406__rip_ to i64), i64 10)
  %4353 = add i64 %4351, 18
  store i64 %4353, i64* %3, align 8
  %4354 = inttoptr i64 %4352 to i32*
  %4355 = load i32, i32* %4354, align 4
  store i32 %4355, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %4356 = load i64, i64* %RBP.i, align 8
  %4357 = add i64 %4356, -24
  %4358 = add i64 %4351, 23
  store i64 %4358, i64* %3, align 8
  %4359 = inttoptr i64 %4357 to i32*
  %4360 = load i32, i32* %4359, align 4
  %4361 = bitcast %union.VectorReg* %39 to float*
  %4362 = bitcast %union.VectorReg* %39 to i32*
  store i32 %4360, i32* %4362, align 1
  %4363 = getelementptr inbounds i8, i8* %623, i64 4
  %4364 = bitcast i8* %4363 to float*
  store float 0.000000e+00, float* %4364, align 1
  %4365 = bitcast i64* %631 to float*
  store float 0.000000e+00, float* %4365, align 1
  %4366 = getelementptr inbounds i8, i8* %623, i64 12
  %4367 = bitcast i8* %4366 to float*
  store float 0.000000e+00, float* %4367, align 1
  %4368 = load <2 x float>, <2 x float>* %44, align 1
  %4369 = bitcast i64* %631 to <2 x i32>*
  %4370 = load <2 x i32>, <2 x i32>* %4369, align 1
  %4371 = load <2 x float>, <2 x float>* %35, align 1
  %4372 = extractelement <2 x float> %4368, i32 0
  %4373 = extractelement <2 x float> %4371, i32 0
  %4374 = fdiv float %4372, %4373
  store float %4374, float* %4361, align 1
  %4375 = bitcast <2 x float> %4368 to <2 x i32>
  %4376 = extractelement <2 x i32> %4375, i32 1
  %4377 = bitcast i8* %4363 to i32*
  store i32 %4376, i32* %4377, align 1
  %4378 = extractelement <2 x i32> %4370, i32 0
  %4379 = bitcast i64* %631 to i32*
  store i32 %4378, i32* %4379, align 1
  %4380 = extractelement <2 x i32> %4370, i32 1
  %4381 = bitcast i8* %4366 to i32*
  store i32 %4380, i32* %4381, align 1
  %4382 = add i64 %4356, -8
  %4383 = add i64 %4351, 31
  store i64 %4383, i64* %3, align 8
  %4384 = inttoptr i64 %4382 to i32*
  %4385 = load i32, i32* %4384, align 4
  %4386 = sext i32 %4385 to i64
  %4387 = mul nsw i64 %4386, 564
  store i64 %4387, i64* %RCX.i1729.pre-phi, align 8
  %4388 = lshr i64 %4387, 63
  %4389 = add i64 %4387, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %4389, i64* %RAX.i1732.pre-phi, align 8
  %4390 = icmp ult i64 %4389, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4391 = icmp ult i64 %4389, %4387
  %4392 = or i1 %4390, %4391
  %4393 = zext i1 %4392 to i8
  store i8 %4393, i8* %12, align 1
  %4394 = trunc i64 %4389 to i32
  %4395 = and i32 %4394, 252
  %4396 = tail call i32 @llvm.ctpop.i32(i32 %4395)
  %4397 = trunc i32 %4396 to i8
  %4398 = and i8 %4397, 1
  %4399 = xor i8 %4398, 1
  store i8 %4399, i8* %13, align 1
  %4400 = xor i64 %4387, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4401 = xor i64 %4400, %4389
  %4402 = lshr i64 %4401, 4
  %4403 = trunc i64 %4402 to i8
  %4404 = and i8 %4403, 1
  store i8 %4404, i8* %14, align 1
  %4405 = icmp eq i64 %4389, 0
  %4406 = zext i1 %4405 to i8
  store i8 %4406, i8* %15, align 1
  %4407 = lshr i64 %4389, 63
  %4408 = trunc i64 %4407 to i8
  store i8 %4408, i8* %16, align 1
  %4409 = xor i64 %4407, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %4410 = xor i64 %4407, %4388
  %4411 = add nuw nsw i64 %4409, %4410
  %4412 = icmp eq i64 %4411, 2
  %4413 = zext i1 %4412 to i8
  store i8 %4413, i8* %17, align 1
  %4414 = add i64 %4387, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 52)
  %4415 = add i64 %4351, 46
  store i64 %4415, i64* %3, align 8
  %4416 = load <2 x float>, <2 x float>* %44, align 1
  %4417 = load <2 x i32>, <2 x i32>* %4369, align 1
  %4418 = inttoptr i64 %4414 to float*
  %4419 = load float, float* %4418, align 4
  %4420 = extractelement <2 x float> %4416, i32 0
  %4421 = fadd float %4420, %4419
  store float %4421, float* %4361, align 1
  %4422 = bitcast <2 x float> %4416 to <2 x i32>
  %4423 = extractelement <2 x i32> %4422, i32 1
  store i32 %4423, i32* %4377, align 1
  %4424 = extractelement <2 x i32> %4417, i32 0
  store i32 %4424, i32* %4379, align 1
  %4425 = extractelement <2 x i32> %4417, i32 1
  store i32 %4425, i32* %4381, align 1
  %4426 = add i64 %4351, 51
  store i64 %4426, i64* %3, align 8
  %4427 = load <2 x float>, <2 x float>* %44, align 1
  %4428 = extractelement <2 x float> %4427, i32 0
  store float %4428, float* %4418, align 4
  %.pre140 = load i64, i64* %3, align 8
  br label %block_.L_480d8f

block_.L_480d8f:                                  ; preds = %routine_ucomiss_0x34__rax____xmm0.exit.block_.L_480d8f_crit_edge, %block_480d5c
  %.pre-phi216 = phi float* [ %.pre215, %routine_ucomiss_0x34__rax____xmm0.exit.block_.L_480d8f_crit_edge ], [ %4367, %block_480d5c ]
  %.pre-phi212 = phi float* [ %.pre211, %routine_ucomiss_0x34__rax____xmm0.exit.block_.L_480d8f_crit_edge ], [ %4365, %block_480d5c ]
  %.pre-phi210 = phi float* [ %.pre209, %routine_ucomiss_0x34__rax____xmm0.exit.block_.L_480d8f_crit_edge ], [ %4364, %block_480d5c ]
  %.pre-phi206 = phi i32* [ %.pre205, %routine_ucomiss_0x34__rax____xmm0.exit.block_.L_480d8f_crit_edge ], [ %4362, %block_480d5c ]
  %4429 = phi i64 [ %4351, %routine_ucomiss_0x34__rax____xmm0.exit.block_.L_480d8f_crit_edge ], [ %.pre140, %block_480d5c ]
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %4430 = load i64, i64* %RBP.i, align 8
  %4431 = add i64 %4430, -24
  %4432 = add i64 %4429, 15
  store i64 %4432, i64* %3, align 8
  %4433 = inttoptr i64 %4431 to i32*
  %4434 = load i32, i32* %4433, align 4
  store i32 %4434, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %4435 = add i64 %4430, -8
  %4436 = add i64 %4429, 19
  store i64 %4436, i64* %3, align 8
  %4437 = inttoptr i64 %4435 to i32*
  %4438 = load i32, i32* %4437, align 4
  %4439 = sext i32 %4438 to i64
  %4440 = mul nsw i64 %4439, 564
  store i64 %4440, i64* %RCX.i1729.pre-phi, align 8
  %4441 = lshr i64 %4440, 63
  %4442 = add i64 %4440, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %4442, i64* %RAX.i1732.pre-phi, align 8
  %4443 = icmp ult i64 %4442, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4444 = icmp ult i64 %4442, %4440
  %4445 = or i1 %4443, %4444
  %4446 = zext i1 %4445 to i8
  store i8 %4446, i8* %12, align 1
  %4447 = trunc i64 %4442 to i32
  %4448 = and i32 %4447, 252
  %4449 = tail call i32 @llvm.ctpop.i32(i32 %4448)
  %4450 = trunc i32 %4449 to i8
  %4451 = and i8 %4450, 1
  %4452 = xor i8 %4451, 1
  store i8 %4452, i8* %13, align 1
  %4453 = xor i64 %4440, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4454 = xor i64 %4453, %4442
  %4455 = lshr i64 %4454, 4
  %4456 = trunc i64 %4455 to i8
  %4457 = and i8 %4456, 1
  store i8 %4457, i8* %14, align 1
  %4458 = icmp eq i64 %4442, 0
  %4459 = zext i1 %4458 to i8
  store i8 %4459, i8* %15, align 1
  %4460 = lshr i64 %4442, 63
  %4461 = trunc i64 %4460 to i8
  store i8 %4461, i8* %16, align 1
  %4462 = xor i64 %4460, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %4463 = xor i64 %4460, %4441
  %4464 = add nuw nsw i64 %4462, %4463
  %4465 = icmp eq i64 %4464, 2
  %4466 = zext i1 %4465 to i8
  store i8 %4466, i8* %17, align 1
  %4467 = add i64 %4440, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 52)
  %4468 = add i64 %4429, 34
  store i64 %4468, i64* %3, align 8
  %4469 = inttoptr i64 %4467 to i32*
  %4470 = load i32, i32* %4469, align 4
  store i32 %4470, i32* %.pre-phi206, align 1
  store float 0.000000e+00, float* %.pre-phi210, align 1
  store float 0.000000e+00, float* %.pre-phi212, align 1
  store float 0.000000e+00, float* %.pre-phi216, align 1
  %4471 = add i64 %4429, 37
  store i64 %4471, i64* %3, align 8
  %4472 = load <2 x float>, <2 x float>* %44, align 1
  %4473 = extractelement <2 x float> %4472, i32 0
  %4474 = load <2 x float>, <2 x float>* %35, align 1
  %4475 = extractelement <2 x float> %4474, i32 0
  %4476 = fcmp uno float %4473, %4475
  br i1 %4476, label %4477, label %4487

; <label>:4477:                                   ; preds = %block_.L_480d8f
  %4478 = fadd float %4473, %4475
  %4479 = bitcast float %4478 to i32
  %4480 = and i32 %4479, 2143289344
  %4481 = icmp eq i32 %4480, 2139095040
  %4482 = and i32 %4479, 4194303
  %4483 = icmp ne i32 %4482, 0
  %4484 = and i1 %4481, %4483
  br i1 %4484, label %4485, label %4493

; <label>:4485:                                   ; preds = %4477
  %4486 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4471, %struct.Memory* %4348)
  %.pre141 = load i64, i64* %3, align 8
  %.pre142 = load i8, i8* %12, align 1
  %.pre143 = load i8, i8* %15, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit202

; <label>:4487:                                   ; preds = %block_.L_480d8f
  %4488 = fcmp ogt float %4473, %4475
  br i1 %4488, label %4493, label %4489

; <label>:4489:                                   ; preds = %4487
  %4490 = fcmp olt float %4473, %4475
  br i1 %4490, label %4493, label %4491

; <label>:4491:                                   ; preds = %4489
  %4492 = fcmp oeq float %4473, %4475
  br i1 %4492, label %4493, label %4497

; <label>:4493:                                   ; preds = %4491, %4489, %4487, %4477
  %4494 = phi i8 [ 0, %4487 ], [ 0, %4489 ], [ 1, %4491 ], [ 1, %4477 ]
  %4495 = phi i8 [ 0, %4487 ], [ 0, %4489 ], [ 0, %4491 ], [ 1, %4477 ]
  %4496 = phi i8 [ 0, %4487 ], [ 1, %4489 ], [ 0, %4491 ], [ 1, %4477 ]
  store i8 %4494, i8* %15, align 1
  store i8 %4495, i8* %13, align 1
  store i8 %4496, i8* %12, align 1
  br label %4497

; <label>:4497:                                   ; preds = %4493, %4491
  %4498 = phi i8 [ %4494, %4493 ], [ %4459, %4491 ]
  %4499 = phi i8 [ %4496, %4493 ], [ %4446, %4491 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit202

routine_ucomiss__xmm0___xmm1.exit202:             ; preds = %4497, %4485
  %4500 = phi i8 [ %.pre143, %4485 ], [ %4498, %4497 ]
  %4501 = phi i8 [ %.pre142, %4485 ], [ %4499, %4497 ]
  %4502 = phi i64 [ %.pre141, %4485 ], [ %4471, %4497 ]
  %4503 = phi %struct.Memory* [ %4486, %4485 ], [ %4348, %4497 ]
  %4504 = or i8 %4500, %4501
  %4505 = icmp ne i8 %4504, 0
  %.v239 = select i1 %4505, i64 136, i64 6
  %4506 = add i64 %4502, %.v239
  store i64 %4506, i64* %3, align 8
  br i1 %4505, label %block_.L_480e3c, label %block_480dba

block_480dba:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit202
  store i32 0, i32* %.pre-phi198, align 1
  store i32 0, i32* %600, align 1
  store i32 0, i32* %602, align 1
  store i32 0, i32* %604, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %4507 = load i64, i64* %RBP.i, align 8
  %4508 = add i64 %4507, -8
  %4509 = add i64 %4506, 17
  store i64 %4509, i64* %3, align 8
  %4510 = inttoptr i64 %4508 to i32*
  %4511 = load i32, i32* %4510, align 4
  %4512 = sext i32 %4511 to i64
  %4513 = mul nsw i64 %4512, 564
  store i64 %4513, i64* %RCX.i1729.pre-phi, align 8
  %4514 = lshr i64 %4513, 63
  %4515 = add i64 %4513, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %4515, i64* %RAX.i1732.pre-phi, align 8
  %4516 = icmp ult i64 %4515, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4517 = icmp ult i64 %4515, %4513
  %4518 = or i1 %4516, %4517
  %4519 = zext i1 %4518 to i8
  store i8 %4519, i8* %12, align 1
  %4520 = trunc i64 %4515 to i32
  %4521 = and i32 %4520, 252
  %4522 = tail call i32 @llvm.ctpop.i32(i32 %4521)
  %4523 = trunc i32 %4522 to i8
  %4524 = and i8 %4523, 1
  %4525 = xor i8 %4524, 1
  store i8 %4525, i8* %13, align 1
  %4526 = xor i64 %4513, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4527 = xor i64 %4526, %4515
  %4528 = lshr i64 %4527, 4
  %4529 = trunc i64 %4528 to i8
  %4530 = and i8 %4529, 1
  store i8 %4530, i8* %14, align 1
  %4531 = icmp eq i64 %4515, 0
  %4532 = zext i1 %4531 to i8
  store i8 %4532, i8* %15, align 1
  %4533 = lshr i64 %4515, 63
  %4534 = trunc i64 %4533 to i8
  store i8 %4534, i8* %16, align 1
  %4535 = xor i64 %4533, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %4536 = xor i64 %4533, %4514
  %4537 = add nuw nsw i64 %4535, %4536
  %4538 = icmp eq i64 %4537, 2
  %4539 = zext i1 %4538 to i8
  store i8 %4539, i8* %17, align 1
  %4540 = add i64 %4513, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 52)
  %4541 = add i64 %4506, 32
  store i64 %4541, i64* %3, align 8
  %4542 = inttoptr i64 %4540 to i32*
  %4543 = load i32, i32* %4542, align 4
  store i32 %4543, i32* %.pre-phi206, align 1
  store float 0.000000e+00, float* %.pre-phi210, align 1
  store float 0.000000e+00, float* %.pre-phi212, align 1
  store float 0.000000e+00, float* %.pre-phi216, align 1
  %4544 = add i64 %4506, 35
  store i64 %4544, i64* %3, align 8
  %4545 = load <2 x float>, <2 x float>* %44, align 1
  %4546 = extractelement <2 x float> %4545, i32 0
  %4547 = load <2 x float>, <2 x float>* %35, align 1
  %4548 = extractelement <2 x float> %4547, i32 0
  %4549 = fcmp uno float %4546, %4548
  br i1 %4549, label %4550, label %4560

; <label>:4550:                                   ; preds = %block_480dba
  %4551 = fadd float %4546, %4548
  %4552 = bitcast float %4551 to i32
  %4553 = and i32 %4552, 2143289344
  %4554 = icmp eq i32 %4553, 2139095040
  %4555 = and i32 %4552, 4194303
  %4556 = icmp ne i32 %4555, 0
  %4557 = and i1 %4554, %4556
  br i1 %4557, label %4558, label %4566

; <label>:4558:                                   ; preds = %4550
  %4559 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4544, %struct.Memory* %4503)
  %.pre144 = load i64, i64* %3, align 8
  %.pre145 = load i8, i8* %12, align 1
  %.pre146 = load i8, i8* %15, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit178

; <label>:4560:                                   ; preds = %block_480dba
  %4561 = fcmp ogt float %4546, %4548
  br i1 %4561, label %4566, label %4562

; <label>:4562:                                   ; preds = %4560
  %4563 = fcmp olt float %4546, %4548
  br i1 %4563, label %4566, label %4564

; <label>:4564:                                   ; preds = %4562
  %4565 = fcmp oeq float %4546, %4548
  br i1 %4565, label %4566, label %4570

; <label>:4566:                                   ; preds = %4564, %4562, %4560, %4550
  %4567 = phi i8 [ 0, %4560 ], [ 0, %4562 ], [ 1, %4564 ], [ 1, %4550 ]
  %4568 = phi i8 [ 0, %4560 ], [ 0, %4562 ], [ 0, %4564 ], [ 1, %4550 ]
  %4569 = phi i8 [ 0, %4560 ], [ 1, %4562 ], [ 0, %4564 ], [ 1, %4550 ]
  store i8 %4567, i8* %15, align 1
  store i8 %4568, i8* %13, align 1
  store i8 %4569, i8* %12, align 1
  br label %4570

; <label>:4570:                                   ; preds = %4566, %4564
  %4571 = phi i8 [ %4567, %4566 ], [ %4532, %4564 ]
  %4572 = phi i8 [ %4569, %4566 ], [ %4519, %4564 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit178

routine_ucomiss__xmm0___xmm1.exit178:             ; preds = %4570, %4558
  %4573 = phi i8 [ %.pre146, %4558 ], [ %4571, %4570 ]
  %4574 = phi i8 [ %.pre145, %4558 ], [ %4572, %4570 ]
  %4575 = phi i64 [ %.pre144, %4558 ], [ %4544, %4570 ]
  %4576 = phi %struct.Memory* [ %4559, %4558 ], [ %4503, %4570 ]
  %4577 = or i8 %4573, %4574
  %4578 = icmp ne i8 %4577, 0
  %.v240 = select i1 %4578, i64 95, i64 6
  %4579 = add i64 %4575, %.v240
  store i64 %4579, i64* %3, align 8
  br i1 %4578, label %block_.L_480e3c, label %block_480de3

block_480de3:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit178
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %4580 = load i64, i64* %RBP.i, align 8
  %4581 = add i64 %4580, -8
  %4582 = add i64 %4579, 14
  store i64 %4582, i64* %3, align 8
  %4583 = inttoptr i64 %4581 to i32*
  %4584 = load i32, i32* %4583, align 4
  %4585 = sext i32 %4584 to i64
  %4586 = mul nsw i64 %4585, 564
  store i64 %4586, i64* %RCX.i1729.pre-phi, align 8
  %4587 = lshr i64 %4586, 63
  %4588 = add i64 %4586, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %4588, i64* %RAX.i1732.pre-phi, align 8
  %4589 = icmp ult i64 %4588, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4590 = icmp ult i64 %4588, %4586
  %4591 = or i1 %4589, %4590
  %4592 = zext i1 %4591 to i8
  store i8 %4592, i8* %12, align 1
  %4593 = trunc i64 %4588 to i32
  %4594 = and i32 %4593, 252
  %4595 = tail call i32 @llvm.ctpop.i32(i32 %4594)
  %4596 = trunc i32 %4595 to i8
  %4597 = and i8 %4596, 1
  %4598 = xor i8 %4597, 1
  store i8 %4598, i8* %13, align 1
  %4599 = xor i64 %4586, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4600 = xor i64 %4599, %4588
  %4601 = lshr i64 %4600, 4
  %4602 = trunc i64 %4601 to i8
  %4603 = and i8 %4602, 1
  store i8 %4603, i8* %14, align 1
  %4604 = icmp eq i64 %4588, 0
  %4605 = zext i1 %4604 to i8
  store i8 %4605, i8* %15, align 1
  %4606 = lshr i64 %4588, 63
  %4607 = trunc i64 %4606 to i8
  store i8 %4607, i8* %16, align 1
  %4608 = xor i64 %4606, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %4609 = xor i64 %4606, %4587
  %4610 = add nuw nsw i64 %4608, %4609
  %4611 = icmp eq i64 %4610, 2
  %4612 = zext i1 %4611 to i8
  store i8 %4612, i8* %17, align 1
  %4613 = add i64 %4586, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 52)
  %4614 = add i64 %4579, 29
  store i64 %4614, i64* %3, align 8
  %4615 = inttoptr i64 %4613 to i32*
  %4616 = load i32, i32* %4615, align 4
  store i32 %4616, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %4617 = add i64 %4580, -24
  %4618 = add i64 %4579, 34
  store i64 %4618, i64* %3, align 8
  %4619 = load <2 x float>, <2 x float>* %35, align 1
  %4620 = extractelement <2 x float> %4619, i32 0
  %4621 = inttoptr i64 %4617 to float*
  store float %4620, float* %4621, align 4
  %4622 = load i64, i64* %3, align 8
  %4623 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %4624 = and i32 %4623, 255
  %4625 = tail call i32 @llvm.ctpop.i32(i32 %4624)
  %4626 = trunc i32 %4625 to i8
  %4627 = and i8 %4626, 1
  %4628 = xor i8 %4627, 1
  store i8 %4628, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4629 = icmp eq i32 %4623, 0
  %4630 = zext i1 %4629 to i8
  store i8 %4630, i8* %15, align 1
  %4631 = lshr i32 %4623, 31
  %4632 = trunc i32 %4631 to i8
  store i8 %4632, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v241 = select i1 %4629, i64 14, i64 19
  %4633 = add i64 %4622, %.v241
  store i64 %4633, i64* %3, align 8
  br i1 %4629, label %block_480e13, label %block_.L_480e18

block_480e13:                                     ; preds = %block_480de3
  %4634 = add i64 %4633, 36
  store i64 %4634, i64* %3, align 8
  br label %block_.L_480e37

block_.L_480e18:                                  ; preds = %block_480de3
  store i64 ptrtoint (%G__0x5821b4_type* @G__0x5821b4 to i64), i64* %RDI.i776.pre-phi, align 8
  %RSI.i151 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %4635 = load i64, i64* %RBP.i, align 8
  %4636 = add i64 %4635, -8
  %4637 = add i64 %4633, 13
  store i64 %4637, i64* %3, align 8
  %4638 = inttoptr i64 %4636 to i32*
  %4639 = load i32, i32* %4638, align 4
  %4640 = zext i32 %4639 to i64
  store i64 %4640, i64* %RSI.i151, align 8
  %4641 = add i64 %4635, -24
  %4642 = add i64 %4633, 18
  store i64 %4642, i64* %3, align 8
  %4643 = inttoptr i64 %4641 to float*
  %4644 = load float, float* %4643, align 4
  %4645 = fpext float %4644 to double
  store double %4645, double* %646, align 1
  %AL.i146 = bitcast %union.anon* %EAX.i819.pre-phi.in to i8*
  store i8 1, i8* %AL.i146, align 1
  %4646 = add i64 %4633, -192616
  %4647 = add i64 %4633, 25
  %4648 = load i64, i64* %6, align 8
  %4649 = add i64 %4648, -8
  %4650 = inttoptr i64 %4649 to i64*
  store i64 %4647, i64* %4650, align 8
  store i64 %4649, i64* %6, align 8
  store i64 %4646, i64* %3, align 8
  %call2_480e2c = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %4646, %struct.Memory* %4576)
  %4651 = load i64, i64* %RBP.i, align 8
  %4652 = add i64 %4651, -200
  %4653 = load i32, i32* %EAX.i819.pre-phi, align 4
  %4654 = load i64, i64* %3, align 8
  %4655 = add i64 %4654, 6
  store i64 %4655, i64* %3, align 8
  %4656 = inttoptr i64 %4652 to i32*
  store i32 %4653, i32* %4656, align 4
  %.pre147 = load i64, i64* %3, align 8
  br label %block_.L_480e37

block_.L_480e37:                                  ; preds = %block_.L_480e18, %block_480e13
  %4657 = phi i64 [ %.pre147, %block_.L_480e18 ], [ %4634, %block_480e13 ]
  %MEMORY.35 = phi %struct.Memory* [ %call2_480e2c, %block_.L_480e18 ], [ %4576, %block_480e13 ]
  %4658 = add i64 %4657, 5
  store i64 %4658, i64* %3, align 8
  br label %block_.L_480e3c

block_.L_480e3c:                                  ; preds = %block_.L_480e37, %routine_ucomiss__xmm0___xmm1.exit178, %routine_ucomiss__xmm0___xmm1.exit202
  %4659 = phi i64 [ %4506, %routine_ucomiss__xmm0___xmm1.exit202 ], [ %4579, %routine_ucomiss__xmm0___xmm1.exit178 ], [ %4658, %block_.L_480e37 ]
  %MEMORY.36 = phi %struct.Memory* [ %4503, %routine_ucomiss__xmm0___xmm1.exit202 ], [ %4576, %routine_ucomiss__xmm0___xmm1.exit178 ], [ %MEMORY.35, %block_.L_480e37 ]
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %4660 = load i64, i64* %RBP.i, align 8
  %4661 = add i64 %4660, -24
  %4662 = add i64 %4659, 15
  store i64 %4662, i64* %3, align 8
  %4663 = inttoptr i64 %4661 to i32*
  %4664 = load i32, i32* %4663, align 4
  store i32 %4664, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %4665 = add i64 %4660, -8
  %4666 = add i64 %4659, 19
  store i64 %4666, i64* %3, align 8
  %4667 = inttoptr i64 %4665 to i32*
  %4668 = load i32, i32* %4667, align 4
  %4669 = sext i32 %4668 to i64
  %4670 = mul nsw i64 %4669, 564
  store i64 %4670, i64* %RCX.i1729.pre-phi, align 8
  %4671 = lshr i64 %4670, 63
  %4672 = add i64 %4670, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %4672, i64* %RAX.i1732.pre-phi, align 8
  %4673 = icmp ult i64 %4672, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4674 = icmp ult i64 %4672, %4670
  %4675 = or i1 %4673, %4674
  %4676 = zext i1 %4675 to i8
  store i8 %4676, i8* %12, align 1
  %4677 = trunc i64 %4672 to i32
  %4678 = and i32 %4677, 252
  %4679 = tail call i32 @llvm.ctpop.i32(i32 %4678)
  %4680 = trunc i32 %4679 to i8
  %4681 = and i8 %4680, 1
  %4682 = xor i8 %4681, 1
  store i8 %4682, i8* %13, align 1
  %4683 = xor i64 %4670, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4684 = xor i64 %4683, %4672
  %4685 = lshr i64 %4684, 4
  %4686 = trunc i64 %4685 to i8
  %4687 = and i8 %4686, 1
  store i8 %4687, i8* %14, align 1
  %4688 = icmp eq i64 %4672, 0
  %4689 = zext i1 %4688 to i8
  store i8 %4689, i8* %15, align 1
  %4690 = lshr i64 %4672, 63
  %4691 = trunc i64 %4690 to i8
  store i8 %4691, i8* %16, align 1
  %4692 = xor i64 %4690, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %4693 = xor i64 %4690, %4671
  %4694 = add nuw nsw i64 %4692, %4693
  %4695 = icmp eq i64 %4694, 2
  %4696 = zext i1 %4695 to i8
  store i8 %4696, i8* %17, align 1
  %4697 = add i64 %4670, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 56)
  %4698 = add i64 %4659, 33
  store i64 %4698, i64* %3, align 8
  %4699 = load <2 x float>, <2 x float>* %35, align 1
  %4700 = extractelement <2 x float> %4699, i32 0
  %4701 = inttoptr i64 %4697 to float*
  %4702 = load float, float* %4701, align 4
  %4703 = fcmp uno float %4700, %4702
  br i1 %4703, label %4704, label %4714

; <label>:4704:                                   ; preds = %block_.L_480e3c
  %4705 = fadd float %4700, %4702
  %4706 = bitcast float %4705 to i32
  %4707 = and i32 %4706, 2143289344
  %4708 = icmp eq i32 %4707, 2139095040
  %4709 = and i32 %4706, 4194303
  %4710 = icmp ne i32 %4709, 0
  %4711 = and i1 %4708, %4710
  br i1 %4711, label %4712, label %4720

; <label>:4712:                                   ; preds = %4704
  %4713 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4698, %struct.Memory* %MEMORY.36)
  %.pre148 = load i64, i64* %3, align 8
  %.pre149 = load i8, i8* %12, align 1
  %.pre150 = load i8, i8* %15, align 1
  br label %routine_ucomiss_0x38__rax____xmm0.exit

; <label>:4714:                                   ; preds = %block_.L_480e3c
  %4715 = fcmp ogt float %4700, %4702
  br i1 %4715, label %4720, label %4716

; <label>:4716:                                   ; preds = %4714
  %4717 = fcmp olt float %4700, %4702
  br i1 %4717, label %4720, label %4718

; <label>:4718:                                   ; preds = %4716
  %4719 = fcmp oeq float %4700, %4702
  br i1 %4719, label %4720, label %4724

; <label>:4720:                                   ; preds = %4718, %4716, %4714, %4704
  %4721 = phi i8 [ 0, %4714 ], [ 0, %4716 ], [ 1, %4718 ], [ 1, %4704 ]
  %4722 = phi i8 [ 0, %4714 ], [ 0, %4716 ], [ 0, %4718 ], [ 1, %4704 ]
  %4723 = phi i8 [ 0, %4714 ], [ 1, %4716 ], [ 0, %4718 ], [ 1, %4704 ]
  store i8 %4721, i8* %15, align 1
  store i8 %4722, i8* %13, align 1
  store i8 %4723, i8* %12, align 1
  br label %4724

; <label>:4724:                                   ; preds = %4720, %4718
  %4725 = phi i8 [ %4721, %4720 ], [ %4689, %4718 ]
  %4726 = phi i8 [ %4723, %4720 ], [ %4676, %4718 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss_0x38__rax____xmm0.exit

routine_ucomiss_0x38__rax____xmm0.exit:           ; preds = %4724, %4712
  %4727 = phi i8 [ %.pre150, %4712 ], [ %4725, %4724 ]
  %4728 = phi i8 [ %.pre149, %4712 ], [ %4726, %4724 ]
  %4729 = phi i64 [ %.pre148, %4712 ], [ %4698, %4724 ]
  %4730 = phi %struct.Memory* [ %4713, %4712 ], [ %MEMORY.36, %4724 ]
  %4731 = or i8 %4727, %4728
  %4732 = icmp ne i8 %4731, 0
  %.v242 = select i1 %4732, i64 95, i64 6
  %4733 = add i64 %4729, %.v242
  store i64 %4733, i64* %3, align 8
  br i1 %4732, label %block_.L_480ebc, label %block_480e63

block_480e63:                                     ; preds = %routine_ucomiss_0x38__rax____xmm0.exit
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %4734 = load i64, i64* %RBP.i, align 8
  %4735 = add i64 %4734, -8
  %4736 = add i64 %4733, 14
  store i64 %4736, i64* %3, align 8
  %4737 = inttoptr i64 %4735 to i32*
  %4738 = load i32, i32* %4737, align 4
  %4739 = sext i32 %4738 to i64
  %4740 = mul nsw i64 %4739, 564
  store i64 %4740, i64* %RCX.i1729.pre-phi, align 8
  %4741 = lshr i64 %4740, 63
  %4742 = add i64 %4740, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %4742, i64* %RAX.i1732.pre-phi, align 8
  %4743 = icmp ult i64 %4742, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4744 = icmp ult i64 %4742, %4740
  %4745 = or i1 %4743, %4744
  %4746 = zext i1 %4745 to i8
  store i8 %4746, i8* %12, align 1
  %4747 = trunc i64 %4742 to i32
  %4748 = and i32 %4747, 252
  %4749 = tail call i32 @llvm.ctpop.i32(i32 %4748)
  %4750 = trunc i32 %4749 to i8
  %4751 = and i8 %4750, 1
  %4752 = xor i8 %4751, 1
  store i8 %4752, i8* %13, align 1
  %4753 = xor i64 %4740, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4754 = xor i64 %4753, %4742
  %4755 = lshr i64 %4754, 4
  %4756 = trunc i64 %4755 to i8
  %4757 = and i8 %4756, 1
  store i8 %4757, i8* %14, align 1
  %4758 = icmp eq i64 %4742, 0
  %4759 = zext i1 %4758 to i8
  store i8 %4759, i8* %15, align 1
  %4760 = lshr i64 %4742, 63
  %4761 = trunc i64 %4760 to i8
  store i8 %4761, i8* %16, align 1
  %4762 = xor i64 %4760, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %4763 = xor i64 %4760, %4741
  %4764 = add nuw nsw i64 %4762, %4763
  %4765 = icmp eq i64 %4764, 2
  %4766 = zext i1 %4765 to i8
  store i8 %4766, i8* %17, align 1
  %4767 = add i64 %4740, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 56)
  %4768 = add i64 %4733, 29
  store i64 %4768, i64* %3, align 8
  %4769 = inttoptr i64 %4767 to i32*
  %4770 = load i32, i32* %4769, align 4
  store i32 %4770, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %4771 = add i64 %4734, -24
  %4772 = add i64 %4733, 34
  store i64 %4772, i64* %3, align 8
  %4773 = load <2 x float>, <2 x float>* %35, align 1
  %4774 = extractelement <2 x float> %4773, i32 0
  %4775 = inttoptr i64 %4771 to float*
  store float %4774, float* %4775, align 4
  %4776 = load i64, i64* %3, align 8
  %4777 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %4778 = and i32 %4777, 255
  %4779 = tail call i32 @llvm.ctpop.i32(i32 %4778)
  %4780 = trunc i32 %4779 to i8
  %4781 = and i8 %4780, 1
  %4782 = xor i8 %4781, 1
  store i8 %4782, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %4783 = icmp eq i32 %4777, 0
  %4784 = zext i1 %4783 to i8
  store i8 %4784, i8* %15, align 1
  %4785 = lshr i32 %4777, 31
  %4786 = trunc i32 %4785 to i8
  store i8 %4786, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v243 = select i1 %4783, i64 14, i64 19
  %4787 = add i64 %4776, %.v243
  store i64 %4787, i64* %3, align 8
  br i1 %4783, label %block_480e93, label %block_.L_480e98

block_480e93:                                     ; preds = %block_480e63
  %4788 = add i64 %4787, 36
  store i64 %4788, i64* %3, align 8
  br label %block_.L_480eb7

block_.L_480e98:                                  ; preds = %block_480e63
  store i64 ptrtoint (%G__0x5821da_type* @G__0x5821da to i64), i64* %RDI.i776.pre-phi, align 8
  %RSI.i98 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %4789 = load i64, i64* %RBP.i, align 8
  %4790 = add i64 %4789, -8
  %4791 = add i64 %4787, 13
  store i64 %4791, i64* %3, align 8
  %4792 = inttoptr i64 %4790 to i32*
  %4793 = load i32, i32* %4792, align 4
  %4794 = zext i32 %4793 to i64
  store i64 %4794, i64* %RSI.i98, align 8
  %4795 = add i64 %4789, -24
  %4796 = add i64 %4787, 18
  store i64 %4796, i64* %3, align 8
  %4797 = inttoptr i64 %4795 to float*
  %4798 = load float, float* %4797, align 4
  %4799 = fpext float %4798 to double
  store double %4799, double* %646, align 1
  %AL.i93 = bitcast %union.anon* %EAX.i819.pre-phi.in to i8*
  store i8 1, i8* %AL.i93, align 1
  %4800 = add i64 %4787, -192744
  %4801 = add i64 %4787, 25
  %4802 = load i64, i64* %6, align 8
  %4803 = add i64 %4802, -8
  %4804 = inttoptr i64 %4803 to i64*
  store i64 %4801, i64* %4804, align 8
  store i64 %4803, i64* %6, align 8
  store i64 %4800, i64* %3, align 8
  %call2_480eac = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %4800, %struct.Memory* %4730)
  %4805 = load i64, i64* %RBP.i, align 8
  %4806 = add i64 %4805, -204
  %4807 = load i32, i32* %EAX.i819.pre-phi, align 4
  %4808 = load i64, i64* %3, align 8
  %4809 = add i64 %4808, 6
  store i64 %4809, i64* %3, align 8
  %4810 = inttoptr i64 %4806 to i32*
  store i32 %4807, i32* %4810, align 4
  %.pre151 = load i64, i64* %3, align 8
  br label %block_.L_480eb7

block_.L_480eb7:                                  ; preds = %block_.L_480e98, %block_480e93
  %4811 = phi i64 [ %.pre151, %block_.L_480e98 ], [ %4788, %block_480e93 ]
  %MEMORY.37 = phi %struct.Memory* [ %call2_480eac, %block_.L_480e98 ], [ %4730, %block_480e93 ]
  %4812 = add i64 %4811, 5
  store i64 %4812, i64* %3, align 8
  br label %block_.L_480ebc

block_.L_480ebc:                                  ; preds = %block_.L_480eb7, %routine_ucomiss_0x38__rax____xmm0.exit
  %4813 = phi i64 [ %4733, %routine_ucomiss_0x38__rax____xmm0.exit ], [ %4812, %block_.L_480eb7 ]
  %MEMORY.38 = phi %struct.Memory* [ %4730, %routine_ucomiss_0x38__rax____xmm0.exit ], [ %MEMORY.37, %block_.L_480eb7 ]
  store i32 0, i32* %.pre-phi198, align 1
  store i32 0, i32* %600, align 1
  store i32 0, i32* %602, align 1
  store i32 0, i32* %604, align 1
  %4814 = load i64, i64* %RBP.i, align 8
  %4815 = add i64 %4814, -24
  %4816 = add i64 %4813, 8
  store i64 %4816, i64* %3, align 8
  %4817 = inttoptr i64 %4815 to i32*
  %4818 = load i32, i32* %4817, align 4
  store i32 %4818, i32* %.pre-phi206, align 1
  store float 0.000000e+00, float* %.pre-phi210, align 1
  store float 0.000000e+00, float* %.pre-phi212, align 1
  store float 0.000000e+00, float* %.pre-phi216, align 1
  %4819 = add i64 %4813, 11
  store i64 %4819, i64* %3, align 8
  %4820 = load <2 x float>, <2 x float>* %44, align 1
  %4821 = extractelement <2 x float> %4820, i32 0
  %4822 = load <2 x float>, <2 x float>* %35, align 1
  %4823 = extractelement <2 x float> %4822, i32 0
  %4824 = fcmp uno float %4821, %4823
  br i1 %4824, label %4825, label %4835

; <label>:4825:                                   ; preds = %block_.L_480ebc
  %4826 = fadd float %4821, %4823
  %4827 = bitcast float %4826 to i32
  %4828 = and i32 %4827, 2143289344
  %4829 = icmp eq i32 %4828, 2139095040
  %4830 = and i32 %4827, 4194303
  %4831 = icmp ne i32 %4830, 0
  %4832 = and i1 %4829, %4831
  br i1 %4832, label %4833, label %4841

; <label>:4833:                                   ; preds = %4825
  %4834 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4819, %struct.Memory* %MEMORY.38)
  %.pre152 = load i64, i64* %3, align 8
  br label %routine_ucomiss__xmm0___xmm1.exit78

; <label>:4835:                                   ; preds = %block_.L_480ebc
  %4836 = fcmp ogt float %4821, %4823
  br i1 %4836, label %4841, label %4837

; <label>:4837:                                   ; preds = %4835
  %4838 = fcmp olt float %4821, %4823
  br i1 %4838, label %4841, label %4839

; <label>:4839:                                   ; preds = %4837
  %4840 = fcmp oeq float %4821, %4823
  br i1 %4840, label %4841, label %4845

; <label>:4841:                                   ; preds = %4839, %4837, %4835, %4825
  %4842 = phi i8 [ 0, %4835 ], [ 0, %4837 ], [ 1, %4839 ], [ 1, %4825 ]
  %4843 = phi i8 [ 0, %4835 ], [ 0, %4837 ], [ 0, %4839 ], [ 1, %4825 ]
  %4844 = phi i8 [ 0, %4835 ], [ 1, %4837 ], [ 0, %4839 ], [ 1, %4825 ]
  store i8 %4842, i8* %15, align 1
  store i8 %4843, i8* %13, align 1
  store i8 %4844, i8* %12, align 1
  br label %4845

; <label>:4845:                                   ; preds = %4841, %4839
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit78

routine_ucomiss__xmm0___xmm1.exit78:              ; preds = %4845, %4833
  %4846 = phi i64 [ %.pre152, %4833 ], [ %4819, %4845 ]
  %4847 = phi %struct.Memory* [ %4834, %4833 ], [ %MEMORY.38, %4845 ]
  %4848 = add i64 %4846, 88
  %4849 = add i64 %4846, 6
  %4850 = load i8, i8* %12, align 1
  %4851 = load i8, i8* %15, align 1
  %4852 = or i8 %4851, %4850
  %4853 = icmp eq i8 %4852, 0
  %4854 = select i1 %4853, i64 %4848, i64 %4849
  store i64 %4854, i64* %3, align 8
  br i1 %4853, label %block_.L_480f1f, label %block_480ecd

block_480ecd:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit78
  store i32 0, i32* %.pre-phi198, align 1
  store i32 0, i32* %600, align 1
  store i32 0, i32* %602, align 1
  store i32 0, i32* %604, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %4855 = load i64, i64* %RBP.i, align 8
  %4856 = add i64 %4855, -8
  %4857 = add i64 %4854, 17
  store i64 %4857, i64* %3, align 8
  %4858 = inttoptr i64 %4856 to i32*
  %4859 = load i32, i32* %4858, align 4
  %4860 = sext i32 %4859 to i64
  %4861 = mul nsw i64 %4860, 564
  store i64 %4861, i64* %RCX.i1729.pre-phi, align 8
  %4862 = lshr i64 %4861, 63
  %4863 = add i64 %4861, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %4863, i64* %RAX.i1732.pre-phi, align 8
  %4864 = icmp ult i64 %4863, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4865 = icmp ult i64 %4863, %4861
  %4866 = or i1 %4864, %4865
  %4867 = zext i1 %4866 to i8
  store i8 %4867, i8* %12, align 1
  %4868 = trunc i64 %4863 to i32
  %4869 = and i32 %4868, 252
  %4870 = tail call i32 @llvm.ctpop.i32(i32 %4869)
  %4871 = trunc i32 %4870 to i8
  %4872 = and i8 %4871, 1
  %4873 = xor i8 %4872, 1
  store i8 %4873, i8* %13, align 1
  %4874 = xor i64 %4861, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4875 = xor i64 %4874, %4863
  %4876 = lshr i64 %4875, 4
  %4877 = trunc i64 %4876 to i8
  %4878 = and i8 %4877, 1
  store i8 %4878, i8* %14, align 1
  %4879 = icmp eq i64 %4863, 0
  %4880 = zext i1 %4879 to i8
  store i8 %4880, i8* %15, align 1
  %4881 = lshr i64 %4863, 63
  %4882 = trunc i64 %4881 to i8
  store i8 %4882, i8* %16, align 1
  %4883 = xor i64 %4881, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %4884 = xor i64 %4881, %4862
  %4885 = add nuw nsw i64 %4883, %4884
  %4886 = icmp eq i64 %4885, 2
  %4887 = zext i1 %4886 to i8
  store i8 %4887, i8* %17, align 1
  %4888 = add i64 %4861, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 12)
  %4889 = add i64 %4854, 32
  store i64 %4889, i64* %3, align 8
  %4890 = inttoptr i64 %4888 to i32*
  %4891 = load i32, i32* %4890, align 4
  store i32 %4891, i32* %.pre-phi206, align 1
  store float 0.000000e+00, float* %.pre-phi210, align 1
  store float 0.000000e+00, float* %.pre-phi212, align 1
  store float 0.000000e+00, float* %.pre-phi216, align 1
  %4892 = add i64 %4854, 35
  store i64 %4892, i64* %3, align 8
  %4893 = load <2 x float>, <2 x float>* %44, align 1
  %4894 = extractelement <2 x float> %4893, i32 0
  %4895 = load <2 x float>, <2 x float>* %35, align 1
  %4896 = extractelement <2 x float> %4895, i32 0
  %4897 = fcmp uno float %4894, %4896
  br i1 %4897, label %4898, label %4908

; <label>:4898:                                   ; preds = %block_480ecd
  %4899 = fadd float %4894, %4896
  %4900 = bitcast float %4899 to i32
  %4901 = and i32 %4900, 2143289344
  %4902 = icmp eq i32 %4901, 2139095040
  %4903 = and i32 %4900, 4194303
  %4904 = icmp ne i32 %4903, 0
  %4905 = and i1 %4902, %4904
  br i1 %4905, label %4906, label %4914

; <label>:4906:                                   ; preds = %4898
  %4907 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4892, %struct.Memory* %4847)
  %.pre153 = load i64, i64* %3, align 8
  %.pre154 = load i8, i8* %12, align 1
  %.pre155 = load i8, i8* %15, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit55

; <label>:4908:                                   ; preds = %block_480ecd
  %4909 = fcmp ogt float %4894, %4896
  br i1 %4909, label %4914, label %4910

; <label>:4910:                                   ; preds = %4908
  %4911 = fcmp olt float %4894, %4896
  br i1 %4911, label %4914, label %4912

; <label>:4912:                                   ; preds = %4910
  %4913 = fcmp oeq float %4894, %4896
  br i1 %4913, label %4914, label %4918

; <label>:4914:                                   ; preds = %4912, %4910, %4908, %4898
  %4915 = phi i8 [ 0, %4908 ], [ 0, %4910 ], [ 1, %4912 ], [ 1, %4898 ]
  %4916 = phi i8 [ 0, %4908 ], [ 0, %4910 ], [ 0, %4912 ], [ 1, %4898 ]
  %4917 = phi i8 [ 0, %4908 ], [ 1, %4910 ], [ 0, %4912 ], [ 1, %4898 ]
  store i8 %4915, i8* %15, align 1
  store i8 %4916, i8* %13, align 1
  store i8 %4917, i8* %12, align 1
  br label %4918

; <label>:4918:                                   ; preds = %4914, %4912
  %4919 = phi i8 [ %4915, %4914 ], [ %4880, %4912 ]
  %4920 = phi i8 [ %4917, %4914 ], [ %4867, %4912 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit55

routine_ucomiss__xmm0___xmm1.exit55:              ; preds = %4918, %4906
  %4921 = phi i8 [ %.pre155, %4906 ], [ %4919, %4918 ]
  %4922 = phi i8 [ %.pre154, %4906 ], [ %4920, %4918 ]
  %4923 = phi i64 [ %.pre153, %4906 ], [ %4892, %4918 ]
  %4924 = phi %struct.Memory* [ %4907, %4906 ], [ %4847, %4918 ]
  %4925 = or i8 %4921, %4922
  %4926 = icmp eq i8 %4925, 0
  %.v244 = select i1 %4926, i64 47, i64 6
  %4927 = add i64 %4923, %.v244
  store i64 %4927, i64* %3, align 8
  br i1 %4926, label %block_.L_480f1f, label %block_480ef6

block_480ef6:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit55
  store i32 0, i32* %.pre-phi198, align 1
  store i32 0, i32* %600, align 1
  store i32 0, i32* %602, align 1
  store i32 0, i32* %604, align 1
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i1732.pre-phi, align 8
  %4928 = load i64, i64* %RBP.i, align 8
  %4929 = add i64 %4928, -8
  %4930 = add i64 %4927, 17
  store i64 %4930, i64* %3, align 8
  %4931 = inttoptr i64 %4929 to i32*
  %4932 = load i32, i32* %4931, align 4
  %4933 = sext i32 %4932 to i64
  %4934 = mul nsw i64 %4933, 564
  store i64 %4934, i64* %RCX.i1729.pre-phi, align 8
  %4935 = lshr i64 %4934, 63
  %4936 = add i64 %4934, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  store i64 %4936, i64* %RAX.i1732.pre-phi, align 8
  %4937 = icmp ult i64 %4936, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4938 = icmp ult i64 %4936, %4934
  %4939 = or i1 %4937, %4938
  %4940 = zext i1 %4939 to i8
  store i8 %4940, i8* %12, align 1
  %4941 = trunc i64 %4936 to i32
  %4942 = and i32 %4941, 252
  %4943 = tail call i32 @llvm.ctpop.i32(i32 %4942)
  %4944 = trunc i32 %4943 to i8
  %4945 = and i8 %4944, 1
  %4946 = xor i8 %4945, 1
  store i8 %4946, i8* %13, align 1
  %4947 = xor i64 %4934, ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64)
  %4948 = xor i64 %4947, %4936
  %4949 = lshr i64 %4948, 4
  %4950 = trunc i64 %4949 to i8
  %4951 = and i8 %4950, 1
  store i8 %4951, i8* %14, align 1
  %4952 = icmp eq i64 %4936, 0
  %4953 = zext i1 %4952 to i8
  store i8 %4953, i8* %15, align 1
  %4954 = lshr i64 %4936, 63
  %4955 = trunc i64 %4954 to i8
  store i8 %4955, i8* %16, align 1
  %4956 = xor i64 %4954, lshr (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 63)
  %4957 = xor i64 %4954, %4935
  %4958 = add nuw nsw i64 %4956, %4957
  %4959 = icmp eq i64 %4958, 2
  %4960 = zext i1 %4959 to i8
  store i8 %4960, i8* %17, align 1
  %4961 = add i64 %4934, add (i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64 16)
  %4962 = add i64 %4927, 32
  store i64 %4962, i64* %3, align 8
  %4963 = inttoptr i64 %4961 to i32*
  %4964 = load i32, i32* %4963, align 4
  store i32 %4964, i32* %.pre-phi206, align 1
  store float 0.000000e+00, float* %.pre-phi210, align 1
  store float 0.000000e+00, float* %.pre-phi212, align 1
  store float 0.000000e+00, float* %.pre-phi216, align 1
  %4965 = add i64 %4927, 35
  store i64 %4965, i64* %3, align 8
  %4966 = load <2 x float>, <2 x float>* %44, align 1
  %4967 = extractelement <2 x float> %4966, i32 0
  %4968 = load <2 x float>, <2 x float>* %35, align 1
  %4969 = extractelement <2 x float> %4968, i32 0
  %4970 = fcmp uno float %4967, %4969
  br i1 %4970, label %4971, label %4981

; <label>:4971:                                   ; preds = %block_480ef6
  %4972 = fadd float %4967, %4969
  %4973 = bitcast float %4972 to i32
  %4974 = and i32 %4973, 2143289344
  %4975 = icmp eq i32 %4974, 2139095040
  %4976 = and i32 %4973, 4194303
  %4977 = icmp ne i32 %4976, 0
  %4978 = and i1 %4975, %4977
  br i1 %4978, label %4979, label %4987

; <label>:4979:                                   ; preds = %4971
  %4980 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4965, %struct.Memory* %4924)
  %.pre156 = load i64, i64* %3, align 8
  %.pre157 = load i8, i8* %12, align 1
  %.pre158 = load i8, i8* %15, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:4981:                                   ; preds = %block_480ef6
  %4982 = fcmp ogt float %4967, %4969
  br i1 %4982, label %4987, label %4983

; <label>:4983:                                   ; preds = %4981
  %4984 = fcmp olt float %4967, %4969
  br i1 %4984, label %4987, label %4985

; <label>:4985:                                   ; preds = %4983
  %4986 = fcmp oeq float %4967, %4969
  br i1 %4986, label %4987, label %4991

; <label>:4987:                                   ; preds = %4985, %4983, %4981, %4971
  %4988 = phi i8 [ 0, %4981 ], [ 0, %4983 ], [ 1, %4985 ], [ 1, %4971 ]
  %4989 = phi i8 [ 0, %4981 ], [ 0, %4983 ], [ 0, %4985 ], [ 1, %4971 ]
  %4990 = phi i8 [ 0, %4981 ], [ 1, %4983 ], [ 0, %4985 ], [ 1, %4971 ]
  store i8 %4988, i8* %15, align 1
  store i8 %4989, i8* %13, align 1
  store i8 %4990, i8* %12, align 1
  br label %4991

; <label>:4991:                                   ; preds = %4987, %4985
  %4992 = phi i8 [ %4988, %4987 ], [ %4953, %4985 ]
  %4993 = phi i8 [ %4990, %4987 ], [ %4940, %4985 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %4991, %4979
  %4994 = phi i8 [ %.pre158, %4979 ], [ %4992, %4991 ]
  %4995 = phi i8 [ %.pre157, %4979 ], [ %4993, %4991 ]
  %4996 = phi i64 [ %.pre156, %4979 ], [ %4965, %4991 ]
  %4997 = phi %struct.Memory* [ %4980, %4979 ], [ %4924, %4991 ]
  %4998 = or i8 %4994, %4995
  %4999 = icmp ne i8 %4998, 0
  %.v245 = select i1 %4999, i64 69, i64 6
  %5000 = add i64 %4996, %.v245
  store i64 %5000, i64* %3, align 8
  br i1 %4999, label %block_.L_480f5e, label %block_.L_480f1f

block_.L_480f1f:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit, %routine_ucomiss__xmm0___xmm1.exit55, %routine_ucomiss__xmm0___xmm1.exit78
  %5001 = phi i64 [ %4848, %routine_ucomiss__xmm0___xmm1.exit78 ], [ %4927, %routine_ucomiss__xmm0___xmm1.exit55 ], [ %5000, %routine_ucomiss__xmm0___xmm1.exit ]
  %MEMORY.39 = phi %struct.Memory* [ %4847, %routine_ucomiss__xmm0___xmm1.exit78 ], [ %4924, %routine_ucomiss__xmm0___xmm1.exit55 ], [ %4997, %routine_ucomiss__xmm0___xmm1.exit ]
  %5002 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %5003 = and i32 %5002, 255
  %5004 = tail call i32 @llvm.ctpop.i32(i32 %5003)
  %5005 = trunc i32 %5004 to i8
  %5006 = and i8 %5005, 1
  %5007 = xor i8 %5006, 1
  store i8 %5007, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %5008 = icmp eq i32 %5002, 0
  %5009 = zext i1 %5008 to i8
  store i8 %5009, i8* %15, align 1
  %5010 = lshr i32 %5002, 31
  %5011 = trunc i32 %5010 to i8
  store i8 %5011, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v246 = select i1 %5008, i64 14, i64 19
  %5012 = add i64 %5001, %.v246
  store i64 %5012, i64* %3, align 8
  br i1 %5008, label %block_480f2d, label %block_.L_480f32

block_480f2d:                                     ; preds = %block_.L_480f1f
  %5013 = add i64 %5012, 36
  store i64 %5013, i64* %3, align 8
  br label %block_.L_480f51

block_.L_480f32:                                  ; preds = %block_.L_480f1f
  store i64 ptrtoint (%G__0x582200_type* @G__0x582200 to i64), i64* %RDI.i776.pre-phi, align 8
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %5014 = load i64, i64* %RBP.i, align 8
  %5015 = add i64 %5014, -8
  %5016 = add i64 %5012, 13
  store i64 %5016, i64* %3, align 8
  %5017 = inttoptr i64 %5015 to i32*
  %5018 = load i32, i32* %5017, align 4
  %5019 = zext i32 %5018 to i64
  store i64 %5019, i64* %RSI.i, align 8
  %5020 = add i64 %5014, -24
  %5021 = add i64 %5012, 18
  store i64 %5021, i64* %3, align 8
  %5022 = inttoptr i64 %5020 to float*
  %5023 = load float, float* %5022, align 4
  %5024 = fpext float %5023 to double
  store double %5024, double* %646, align 1
  %AL.i = bitcast %union.anon* %EAX.i819.pre-phi.in to i8*
  store i8 1, i8* %AL.i, align 1
  %5025 = add i64 %5012, -192898
  %5026 = add i64 %5012, 25
  %5027 = load i64, i64* %6, align 8
  %5028 = add i64 %5027, -8
  %5029 = inttoptr i64 %5028 to i64*
  store i64 %5026, i64* %5029, align 8
  store i64 %5028, i64* %6, align 8
  store i64 %5025, i64* %3, align 8
  %call2_480f46 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %5025, %struct.Memory* %MEMORY.39)
  %5030 = load i64, i64* %RBP.i, align 8
  %5031 = add i64 %5030, -208
  %5032 = load i32, i32* %EAX.i819.pre-phi, align 4
  %5033 = load i64, i64* %3, align 8
  %5034 = add i64 %5033, 6
  store i64 %5034, i64* %3, align 8
  %5035 = inttoptr i64 %5031 to i32*
  store i32 %5032, i32* %5035, align 4
  %.pre159 = load i64, i64* %3, align 8
  br label %block_.L_480f51

block_.L_480f51:                                  ; preds = %block_.L_480f32, %block_480f2d
  %5036 = phi i64 [ %.pre159, %block_.L_480f32 ], [ %5013, %block_480f2d ]
  %MEMORY.40 = phi %struct.Memory* [ %call2_480f46, %block_.L_480f32 ], [ %MEMORY.39, %block_480f2d ]
  %5037 = load i64, i64* %RBP.i, align 8
  %5038 = add i64 %5037, -8
  %5039 = add i64 %5036, 3
  store i64 %5039, i64* %3, align 8
  %5040 = inttoptr i64 %5038 to i32*
  %5041 = load i32, i32* %5040, align 4
  %5042 = zext i32 %5041 to i64
  store i64 %5042, i64* %RDI.i776.pre-phi, align 8
  %5043 = add i64 %5037, -24
  %5044 = add i64 %5036, 8
  store i64 %5044, i64* %3, align 8
  %5045 = inttoptr i64 %5043 to i32*
  %5046 = load i32, i32* %5045, align 4
  store i32 %5046, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %5047 = add i64 %5036, -365793
  %5048 = add i64 %5036, 13
  %5049 = load i64, i64* %6, align 8
  %5050 = add i64 %5049, -8
  %5051 = inttoptr i64 %5050 to i64*
  store i64 %5048, i64* %5051, align 8
  store i64 %5050, i64* %6, align 8
  store i64 %5047, i64* %3, align 8
  %call2_480f59 = tail call %struct.Memory* @sub_427a70.move_considered(%struct.State* nonnull %0, i64 %5047, %struct.Memory* %MEMORY.40)
  %.pre160 = load i64, i64* %3, align 8
  br label %block_.L_480f5e

block_.L_480f5e:                                  ; preds = %block_.L_480f51, %routine_ucomiss__xmm0___xmm1.exit
  %5052 = phi i64 [ %.pre160, %block_.L_480f51 ], [ %5000, %routine_ucomiss__xmm0___xmm1.exit ]
  %MEMORY.41 = phi %struct.Memory* [ %call2_480f59, %block_.L_480f51 ], [ %4997, %routine_ucomiss__xmm0___xmm1.exit ]
  %5053 = load i64, i64* %RBP.i, align 8
  %5054 = add i64 %5053, -24
  %5055 = add i64 %5052, 5
  store i64 %5055, i64* %3, align 8
  %5056 = inttoptr i64 %5054 to i32*
  %5057 = load i32, i32* %5056, align 4
  store i32 %5057, i32* %.pre-phi198, align 1
  store float 0.000000e+00, float* %554, align 1
  store float 0.000000e+00, float* %555, align 1
  store float 0.000000e+00, float* %556, align 1
  %5058 = add i64 %5053, -4
  %5059 = add i64 %5052, 10
  store i64 %5059, i64* %3, align 8
  %5060 = load <2 x float>, <2 x float>* %35, align 1
  %5061 = extractelement <2 x float> %5060, i32 0
  %5062 = inttoptr i64 %5058 to float*
  store float %5061, float* %5062, align 4
  %.pre161 = load i64, i64* %3, align 8
  br label %block_.L_480f68

block_.L_480f68:                                  ; preds = %block_.L_480f5e, %block_480067
  %.pre-phi175 = phi float* [ %556, %block_.L_480f5e ], [ %.pre174, %block_480067 ]
  %.pre-phi172 = phi float* [ %555, %block_.L_480f5e ], [ %.pre171, %block_480067 ]
  %.pre-phi169 = phi float* [ %554, %block_.L_480f5e ], [ %.pre168, %block_480067 ]
  %.pre-phi166 = phi i32* [ %.pre-phi198, %block_.L_480f5e ], [ %94, %block_480067 ]
  %5063 = phi i64 [ %.pre161, %block_.L_480f5e ], [ %105, %block_480067 ]
  %MEMORY.42 = phi %struct.Memory* [ %MEMORY.41, %block_.L_480f5e ], [ %call2_480059, %block_480067 ]
  %5064 = load i64, i64* %RBP.i, align 8
  %5065 = add i64 %5064, -4
  %5066 = add i64 %5063, 5
  store i64 %5066, i64* %3, align 8
  %5067 = inttoptr i64 %5065 to i32*
  %5068 = load i32, i32* %5067, align 4
  store i32 %5068, i32* %.pre-phi166, align 1
  store float 0.000000e+00, float* %.pre-phi169, align 1
  store float 0.000000e+00, float* %.pre-phi172, align 1
  store float 0.000000e+00, float* %.pre-phi175, align 1
  %5069 = load i64, i64* %6, align 8
  %5070 = add i64 %5069, 208
  store i64 %5070, i64* %6, align 8
  %5071 = icmp ugt i64 %5069, -209
  %5072 = zext i1 %5071 to i8
  store i8 %5072, i8* %12, align 1
  %5073 = trunc i64 %5070 to i32
  %5074 = and i32 %5073, 255
  %5075 = tail call i32 @llvm.ctpop.i32(i32 %5074)
  %5076 = trunc i32 %5075 to i8
  %5077 = and i8 %5076, 1
  %5078 = xor i8 %5077, 1
  store i8 %5078, i8* %13, align 1
  %5079 = xor i64 %5069, 16
  %5080 = xor i64 %5079, %5070
  %5081 = lshr i64 %5080, 4
  %5082 = trunc i64 %5081 to i8
  %5083 = and i8 %5082, 1
  store i8 %5083, i8* %14, align 1
  %5084 = icmp eq i64 %5070, 0
  %5085 = zext i1 %5084 to i8
  store i8 %5085, i8* %15, align 1
  %5086 = lshr i64 %5070, 63
  %5087 = trunc i64 %5086 to i8
  store i8 %5087, i8* %16, align 1
  %5088 = lshr i64 %5069, 63
  %5089 = xor i64 %5086, %5088
  %5090 = add nuw nsw i64 %5089, %5086
  %5091 = icmp eq i64 %5090, 2
  %5092 = zext i1 %5091 to i8
  store i8 %5092, i8* %17, align 1
  %5093 = add i64 %5063, 13
  store i64 %5093, i64* %3, align 8
  %5094 = add i64 %5069, 216
  %5095 = inttoptr i64 %5070 to i64*
  %5096 = load i64, i64* %5095, align 8
  store i64 %5096, i64* %RBP.i, align 8
  store i64 %5094, i64* %6, align 8
  %5097 = add i64 %5063, 14
  store i64 %5097, i64* %3, align 8
  %5098 = inttoptr i64 %5094 to i64*
  %5099 = load i64, i64* %5098, align 8
  store i64 %5099, i64* %3, align 8
  %5100 = add i64 %5069, 224
  store i64 %5100, i64* %6, align 8
  ret %struct.Memory* %MEMORY.42
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
define %struct.Memory* @routine_subq__0xd0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -208
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 208
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
define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_48002e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_480056(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x581e84___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x581e84_type* @G__0x581e84 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x957___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2391, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RAX, align 8
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
define %struct.Memory* @routine_callq_.abortgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.is_antisuji_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_480074(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
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
define %struct.Memory* @routine_jmpq_.L_480f68(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xab0f20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f20_type* @G_0xab0f20 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_480090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xab0edc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0edc_type* @G_0xab0edc to i32*), align 8
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
define %struct.Memory* @routine_je_.L_4801a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 564
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
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
define %struct.Memory* @routine_jge_.L_4800dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd_0x3c__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 60
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
define %struct.Memory* @routine_jbe_.L_4801a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xb9d8f0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x234___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 564
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x48__rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 72
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %11, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x41__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -65
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_48011b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x78__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -120
  %10 = icmp ult i32 %8, 120
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_setl__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x41__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -65
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x41__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -65
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_48012b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_480139(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4800e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq__0x480f80___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x480f80_type* @G__0x480f80 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xb9d8f0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x234___rdi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 564
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x48___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 72
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -73
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gg_sort(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.discard_redundant_move_reasons(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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
define %struct.Memory* @routine_callq_.estimate_territorial_value(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.estimate_strategical_value(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xc__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, 12
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
define %struct.Memory* @routine_addss_0x10__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 16
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
  %17 = fadd float %16, %15
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
define %struct.Memory* @routine_callq_.compute_shape_factor(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x62e96__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62e96__rip__type* @G_0x62e96__rip_ to i64)
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
define %struct.Memory* @routine_jbe_.L_48021d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x62e72__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62e72__rip__type* @G_0x62e72__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_jbe_.L_4809eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x24__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, 36
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
define %struct.Memory* @routine_addss_0x28__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 40
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
  %17 = fadd float %16, %15
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_48027a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4802b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582044___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582044_type* @G__0x582044 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_cvtss2sd_0x28__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 40
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
define %struct.Memory* @routine_movb__0x2___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 2, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gprintf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x62ccd__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62ccd__rip__type* @G_0x62ccd__rip_ to i64)
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
define %struct.Memory* @routine_jae_.L_4802f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
define %struct.Memory* @routine_movsd_0x62c8e__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62c8e__rip__type* @G_0x62c8e__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_0x2c__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 44
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
define %struct.Memory* @routine_jb_.L_480626(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x62c5f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62c5f__rip__type* @G_0x62c5f__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x62c7f__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62c7f__rip__type* @G_0x62c7f__rip_ to i64)
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
define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm2__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_movaps__xmm1___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_cvtss2sd_0x2c__rax____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 44
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
define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm1___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x28__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm3___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_jbe_.L_4803a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x62c20__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62c20__rip__type* @G_0x62c20__rip_ to i64)
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
define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4803c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x62bb5__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62bb5__rip__type* @G_0x62bb5__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x62caf__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62caf__rip__type* @G_0x62caf__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_4804d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x62b55__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62b55__rip__type* @G_0x62b55__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x62b75__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62b75__rip__type* @G_0x62b75__rip_ to i64)
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
define %struct.Memory* @routine_jbe_.L_4804a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x62b20__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62b20__rip__type* @G_0x62b20__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm2__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4804c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x62ab5__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62ab5__rip__type* @G_0x62ab5__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_480508(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x62ba5__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62ba5__rip__type* @G_0x62ba5__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movss_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
  %17 = fadd float %16, %15
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_jne_.L_480542(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_480542(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_480598(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_480555(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_480593(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58208a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58208a_type* @G__0x58208a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x3___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 3, i8* %AL, align 1
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
define %struct.Memory* @routine_movss_MINUS0x28__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
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
define %struct.Memory* @routine_addss_0x2c__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, 44
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
  %17 = fadd float %16, %15
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
define %struct.Memory* @routine_subss_MINUS0x2c__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
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
define %struct.Memory* @routine_subss__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fsub float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
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
define %struct.Memory* @routine_movss__xmm1__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 8
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
define %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
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
define %struct.Memory* @routine_jbe_.L_480621(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
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
define %struct.Memory* @routine_jmpq_.L_480678(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movss_0x24__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, 36
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
define %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %17 = fmul float %15, %16
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
define %struct.Memory* @routine_movsd_0x62a03__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62a03__rip__type* @G_0x62a03__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_0x30__rdx____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 48
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
define %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
define %struct.Memory* @routine_cvtss2sd_0x30__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 48
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
define %struct.Memory* @routine_jne_.L_4806e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_4806e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_480739(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4806f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_480734(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5820d3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5820d3_type* @G__0x5820d3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6298a__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6298a__rip__type* @G_0x6298a__rip_ to i64)
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
define %struct.Memory* @routine_movl_0x1c__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x20__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_jle_.L_480848(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_mulss_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
define %struct.Memory* @routine_je_.L_480843(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x5820ea___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5820ea_type* @G__0x5820ea to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss_MINUS0x34__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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
define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5820fd___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5820fd_type* @G__0x5820fd to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xb9d8f0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x99c0a0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x234___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 564
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R8, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x14__r8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c__r8____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x234___r8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 564
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R8, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R9, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x18__r9____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %R9, align 8
  %5 = add i64 %4, 24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__rdi____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_movl__r10d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_480848(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.move_connects_strings(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x84__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jle_.L_4809e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x62812__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62812__rip__type* @G_0x62812__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x24__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.pow_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x6276c__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6276c__rip__type* @G_0x6276c__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x626bc__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x626bc__rip__type* @G_0x626bc__rip_ to i64)
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
define %struct.Memory* @routine_subsd__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
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
define %struct.Memory* @routine_jbe_.L_4808d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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
define %struct.Memory* @routine_jmpq_.L_4808e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x6272e__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6272e__rip__type* @G_0x6272e__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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
define %struct.Memory* @routine_movsd_0x62669__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62669__rip__type* @G_0x62669__rip_ to i64)
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
define %struct.Memory* @routine_jbe_.L_480916(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x62657__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62657__rip__type* @G_0x62657__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_jmpq_.L_480964(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x626ea__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x626ea__rip__type* @G_0x626ea__rip_ to i64)
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
define %struct.Memory* @routine_jbe_.L_48093f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
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
define %struct.Memory* @routine_jmpq_.L_480954(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x626c1__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x626c1__rip__type* @G_0x626c1__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
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
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_je_.L_4809d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x582137___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582137_type* @G__0x582137 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x3c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -60
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
define %struct.Memory* @routine_mulss_MINUS0x38__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -56
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
define %struct.Memory* @routine_movq__0x582155___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582155_type* @G__0x582155 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x38__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_480ade(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x24__rdx____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, 36
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x2c__rax____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 44
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

define %struct.Memory* @routine_ucomiss__xmm2___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = extractelement <2 x float> %8, i32 0
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = fcmp uno float %9, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %9, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %9, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %9, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %9, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
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
define %struct.Memory* @routine_movss__xmm0__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
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
define %struct.Memory* @routine_jbe_.L_480a7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x24__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 36
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
define %struct.Memory* @routine_movss__xmm0__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
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
define %struct.Memory* @routine_jmpq_.L_480aa1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x2c__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 44
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
define %struct.Memory* @routine_movss_MINUS0xb4__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -180
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
define %struct.Memory* @routine_movss_MINUS0xac__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -172
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fadd float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
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
define %struct.Memory* @routine_movss_MINUS0xb0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -176
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_480cc7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x22c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 556
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_je_.L_480cc7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

define %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = extractelement <2 x float> %8, i32 0
  %10 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = fcmp uno float %9, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %9, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %9, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %9, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %9, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_480cc7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_480cc7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.is_legal(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.value_moves_confirm_safety(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x62411__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62411__rip__type* @G_0x62411__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
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
define %struct.Memory* @routine_mulsd__xmm3___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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

define %struct.Memory* @routine_ucomisd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %3 to double*
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
define %struct.Memory* @routine_jbe_.L_480be2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
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
define %struct.Memory* @routine_jmpq_.L_480c1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x623be__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x623be__rip__type* @G_0x623be__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
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
define %struct.Memory* @routine_mulsd__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
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
define %struct.Memory* @routine_movsd_0x62334__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62334__rip__type* @G_0x62334__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x62404__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x62404__rip__type* @G_0x62404__rip_ to i64)
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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
define %struct.Memory* @routine_subss_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
define %struct.Memory* @routine_mulsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
define %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x40__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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
define %struct.Memory* @routine_movss_MINUS0x40__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -64
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

define %struct.Memory* @routine_ucomiss_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  %12 = load float, float* %11, align 4
  %13 = fcmp uno float %10, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %10, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %10, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %10, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %10, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_480cc2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_480c90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_480cb8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58217d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58217d_type* @G__0x58217d to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_480cc7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x34__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, 52
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

define %struct.Memory* @routine_ucomiss_0x38__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  %12 = load float, float* %11, align 4
  %13 = fcmp uno float %10, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %10, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %10, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %10, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %10, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_480d32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0x38__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 56
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
define %struct.Memory* @routine_movss_0x62436__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x62436__rip__type* @G_0x62436__rip_ to i64)
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

define %struct.Memory* @routine_ucomiss_0x34__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 52
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  %12 = load float, float* %11, align 4
  %13 = fcmp uno float %10, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %10, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %10, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %10, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %10, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_480d8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x62406__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x62406__rip__type* @G_0x62406__rip_ to i64)
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
define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
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
define %struct.Memory* @routine_addss_0x34__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 52
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
  %17 = fadd float %16, %15
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
define %struct.Memory* @routine_movss__xmm1__0x34__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 52
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
define %struct.Memory* @routine_movss_0x34__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 52
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
define %struct.Memory* @routine_jbe_.L_480e3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x34__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 52
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
define %struct.Memory* @routine_jne_.L_480e18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_480e37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5821b4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5821b4_type* @G__0x5821b4 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_480e3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_480ebc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x38__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 56
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
define %struct.Memory* @routine_jne_.L_480e98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_480eb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5821da___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5821da_type* @G__0x5821da to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_480ebc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_ja_.L_480f1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xc__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 12
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
define %struct.Memory* @routine_movss_0x10__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 16
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
define %struct.Memory* @routine_jbe_.L_480f5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_480f32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_480f51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582200___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582200_type* @G__0x582200 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.move_considered(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_MINUS0x4__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xd0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 208
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -209
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
