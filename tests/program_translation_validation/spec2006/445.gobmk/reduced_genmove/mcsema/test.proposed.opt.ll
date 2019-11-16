; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae448_type = type <{ [1 x i8] }>
%G_0x99c0a0_type = type <{ [8 x i8] }>
%G_0xab0f10_type = type <{ [1 x i8] }>
%G_0xab0f14_type = type <{ [16 x i8] }>
%G_0xab0f18_type = type <{ [4 x i8] }>
%G_0xab0f1c_type = type <{ [4 x i8] }>
%G_0xab0f28_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
%G_0xdb8d4__rip__type = type <{ [4 x i8] }>
%G__0x579da7_type = type <{ [8 x i8] }>
%G__0x579daa_type = type <{ [8 x i8] }>
%G__0x579f16_type = type <{ [8 x i8] }>
%G__0x57a0c7_type = type <{ [8 x i8] }>
%G__0x57a0df_type = type <{ [8 x i8] }>
%G__0x57a100_type = type <{ [8 x i8] }>
%G__0x57a10c_type = type <{ [8 x i8] }>
%G__0x57a135_type = type <{ [8 x i8] }>
%G__0x57a13e_type = type <{ [8 x i8] }>
%G__0xab0f18_type = type <{ [8 x i8] }>
%G__0xab0f1c_type = type <{ [8 x i8] }>
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
@G_0x7ae448 = local_unnamed_addr global %G_0x7ae448_type zeroinitializer
@G_0x99c0a0 = local_unnamed_addr global %G_0x99c0a0_type zeroinitializer
@G_0xab0f10 = local_unnamed_addr global %G_0xab0f10_type zeroinitializer
@G_0xab0f14 = local_unnamed_addr global %G_0xab0f14_type zeroinitializer
@G_0xab0f18 = local_unnamed_addr global %G_0xab0f18_type zeroinitializer
@G_0xab0f1c = local_unnamed_addr global %G_0xab0f1c_type zeroinitializer
@G_0xab0f28 = local_unnamed_addr global %G_0xab0f28_type zeroinitializer
@G_0xb54ce4 = local_unnamed_addr global %G_0xb54ce4_type zeroinitializer
@G_0xdb8d4__rip_ = global %G_0xdb8d4__rip__type zeroinitializer
@G__0x579da7 = global %G__0x579da7_type zeroinitializer
@G__0x579daa = global %G__0x579daa_type zeroinitializer
@G__0x579f16 = global %G__0x579f16_type zeroinitializer
@G__0x57a0c7 = global %G__0x57a0c7_type zeroinitializer
@G__0x57a0df = global %G__0x57a0df_type zeroinitializer
@G__0x57a100 = global %G__0x57a100_type zeroinitializer
@G__0x57a10c = global %G__0x57a10c_type zeroinitializer
@G__0x57a135 = global %G__0x57a135_type zeroinitializer
@G__0x57a13e = global %G__0x57a13e_type zeroinitializer
@G__0xab0f18 = global %G__0xab0f18_type zeroinitializer
@G__0xab0f1c = global %G__0xab0f1c_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #0

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #0

declare extern_weak x86_64_sysvcc i64 @fflush(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_425bd0.reset_engine(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_425c60.examine_position(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46e0c0.estimate_score(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_48a790.worm_reasons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44b4b0.owl_reasons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_418700.combinations(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_47c690.review_move_reasons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @reduced_genmove(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -104
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 96
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
  %41 = add i64 %10, add (i64 ptrtoint (%G_0xdb8d4__rip__type* @G_0xdb8d4__rip_ to i64), i64 7)
  %42 = add i64 %10, 15
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %41 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = bitcast [32 x %union.VectorReg]* %39 to i32*
  store i32 %44, i32* %45, align 1
  %46 = getelementptr inbounds i8, i8* %40, i64 4
  %47 = bitcast i8* %46 to float*
  store float 0.000000e+00, float* %47, align 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %49 = bitcast i64* %48 to float*
  store float 0.000000e+00, float* %49, align 1
  %50 = getelementptr inbounds i8, i8* %40, i64 12
  %51 = bitcast i8* %50 to float*
  store float 0.000000e+00, float* %51, align 1
  %RDI.i260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %52 = add i64 %7, -16
  %53 = load i64, i64* %RDI.i260, align 8
  %54 = add i64 %10, 19
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %55, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %56 to i32*
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -12
  %59 = load i32, i32* %ESI.i, align 4
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 3
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %62, align 4
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -8
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %64 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %RDI.i260, align 8
  %69 = add i64 %65, 10
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %68 to i32*
  store i32 0, i32* %70, align 4
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -16
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 5
  store i64 %74, i64* %3, align 8
  %75 = bitcast [32 x %union.VectorReg]* %39 to <2 x float>*
  %76 = load <2 x float>, <2 x float>* %75, align 1
  %77 = extractelement <2 x float> %76, i32 0
  %78 = inttoptr i64 %72 to float*
  store float %77, float* %78, align 4
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 123786
  %81 = add i64 %79, 5
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, -8
  %84 = inttoptr i64 %83 to i64*
  store i64 %81, i64* %84, align 8
  store i64 %83, i64* %6, align 8
  store i64 %80, i64* %3, align 8
  %call2_407846 = tail call %struct.Memory* @sub_425bd0.reset_engine(%struct.State* %0, i64 %80, %struct.Memory* %2)
  %RSI.i412 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %85 = load i64, i64* %3, align 8
  store i64 99, i64* %RSI.i412, align 8
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -12
  %88 = add i64 %85, 8
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %RDI.i260, align 8
  %92 = add i64 %85, 123925
  %93 = add i64 %85, 13
  %94 = load i64, i64* %6, align 8
  %95 = add i64 %94, -8
  %96 = inttoptr i64 %95 to i64*
  store i64 %93, i64* %96, align 8
  store i64 %95, i64* %6, align 8
  store i64 %92, i64* %3, align 8
  %call2_407853 = tail call %struct.Memory* @sub_425c60.examine_position(%struct.State* %0, i64 %92, %struct.Memory* %call2_407846)
  %97 = load i64, i64* %3, align 8
  %98 = load i32, i32* bitcast (%G_0x7ae448_type* @G_0x7ae448 to i32*), align 8
  %99 = add i32 %98, -8
  %100 = icmp ult i32 %98, 8
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %14, align 1
  %102 = and i32 %99, 255
  %103 = tail call i32 @llvm.ctpop.i32(i32 %102)
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = xor i8 %105, 1
  store i8 %106, i8* %21, align 1
  %107 = xor i32 %99, %98
  %108 = lshr i32 %107, 4
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  store i8 %110, i8* %26, align 1
  %111 = icmp eq i32 %99, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %29, align 1
  %113 = lshr i32 %99, 31
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %32, align 1
  %115 = lshr i32 %98, 31
  %116 = xor i32 %113, %115
  %117 = add nuw nsw i32 %116, %115
  %118 = icmp eq i32 %117, 2
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %38, align 1
  %120 = icmp ne i8 %114, 0
  %121 = xor i1 %120, %118
  %.v = select i1 %121, i64 576, i64 14
  %122 = add i64 %97, %.v
  store i64 %122, i64* %3, align 8
  br i1 %121, label %block_.L_407a98, label %block_407866

block_407866:                                     ; preds = %entry
  store i64 ptrtoint (%G__0xab0f18_type* @G__0xab0f18 to i64), i64* %RDI.i260, align 8
  store i64 ptrtoint (%G__0xab0f1c_type* @G__0xab0f1c to i64), i64* %RSI.i412, align 8
  %123 = add i64 %122, 419930
  %124 = add i64 %122, 25
  %125 = load i64, i64* %6, align 8
  %126 = add i64 %125, -8
  %127 = inttoptr i64 %126 to i64*
  store i64 %124, i64* %127, align 8
  store i64 %126, i64* %6, align 8
  store i64 %123, i64* %3, align 8
  %call2_40787a = tail call %struct.Memory* @sub_46e0c0.estimate_score(%struct.State* nonnull %0, i64 %123, %struct.Memory* %call2_407853)
  %128 = load i64, i64* %3, align 8
  %129 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %130 = and i32 %129, 255
  %131 = tail call i32 @llvm.ctpop.i32(i32 %130)
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %135 = icmp eq i32 %129, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %29, align 1
  %137 = lshr i32 %129, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %139 = load i64, i64* %RBP.i, align 8
  %140 = add i64 %139, -24
  %141 = add i64 %128, 13
  store i64 %141, i64* %3, align 8
  %142 = load <2 x float>, <2 x float>* %75, align 1
  %143 = extractelement <2 x float> %142, i32 0
  %144 = inttoptr i64 %140 to float*
  store float %143, float* %144, align 4
  %145 = load i64, i64* %3, align 8
  %146 = add i64 %145, 20
  %147 = add i64 %145, 6
  %148 = load i8, i8* %29, align 1
  %149 = icmp eq i8 %148, 0
  %150 = select i1 %149, i64 %146, i64 %147
  store i64 %150, i64* %3, align 8
  br i1 %149, label %block_.L_4078a0, label %block_407892

block_407892:                                     ; preds = %block_407866
  %151 = load i32, i32* bitcast (%G_0xab0f10_type* @G_0xab0f10 to i32*), align 8
  store i8 0, i8* %14, align 1
  %152 = and i32 %151, 255
  %153 = tail call i32 @llvm.ctpop.i32(i32 %152)
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  store i8 %156, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %157 = icmp eq i32 %151, 0
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %29, align 1
  %159 = lshr i32 %151, 31
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v64 = select i1 %157, i64 462, i64 14
  %161 = add i64 %150, %.v64
  store i64 %161, i64* %3, align 8
  br i1 %157, label %block_.L_407a60, label %block_.L_4078a0

block_.L_4078a0:                                  ; preds = %block_407892, %block_407866
  %162 = phi i8 [ %158, %block_407892 ], [ 0, %block_407866 ]
  %163 = phi i64 [ %161, %block_407892 ], [ %146, %block_407866 ]
  %164 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
  store i32 %164, i32* %45, align 1
  store float 0.000000e+00, float* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  %165 = add i64 %163, 17
  store i64 %165, i64* %3, align 8
  %166 = load <2 x float>, <2 x float>* %75, align 1
  %167 = extractelement <2 x float> %166, i32 0
  %168 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*), align 8
  %169 = fcmp uno float %167, %168
  br i1 %169, label %170, label %180

; <label>:170:                                    ; preds = %block_.L_4078a0
  %171 = fadd float %167, %168
  %172 = bitcast float %171 to i32
  %173 = and i32 %172, 2143289344
  %174 = icmp eq i32 %173, 2139095040
  %175 = and i32 %172, 4194303
  %176 = icmp ne i32 %175, 0
  %177 = and i1 %174, %176
  br i1 %177, label %178, label %186

; <label>:178:                                    ; preds = %170
  %179 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %165, %struct.Memory* %call2_40787a)
  %.pre = load i64, i64* %3, align 8
  %.pre17 = load i8, i8* %29, align 1
  br label %routine_ucomiss_0xab0f1c___xmm0.exit

; <label>:180:                                    ; preds = %block_.L_4078a0
  %181 = fcmp ogt float %167, %168
  br i1 %181, label %186, label %182

; <label>:182:                                    ; preds = %180
  %183 = fcmp olt float %167, %168
  br i1 %183, label %186, label %184

; <label>:184:                                    ; preds = %182
  %185 = fcmp oeq float %167, %168
  br i1 %185, label %186, label %190

; <label>:186:                                    ; preds = %184, %182, %180, %170
  %187 = phi i8 [ 0, %180 ], [ 0, %182 ], [ 1, %184 ], [ 1, %170 ]
  %188 = phi i8 [ 0, %180 ], [ 0, %182 ], [ 0, %184 ], [ 1, %170 ]
  %189 = phi i8 [ 0, %180 ], [ 1, %182 ], [ 0, %184 ], [ 1, %170 ]
  store i8 %187, i8* %29, align 1
  store i8 %188, i8* %21, align 1
  store i8 %189, i8* %14, align 1
  br label %190

; <label>:190:                                    ; preds = %186, %184
  %191 = phi i8 [ %187, %186 ], [ %162, %184 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss_0xab0f1c___xmm0.exit

routine_ucomiss_0xab0f1c___xmm0.exit:             ; preds = %190, %178
  %192 = phi i8 [ %.pre17, %178 ], [ %191, %190 ]
  %193 = phi i64 [ %.pre, %178 ], [ %165, %190 ]
  %194 = phi %struct.Memory* [ %179, %178 ], [ %call2_40787a, %190 ]
  %195 = icmp eq i8 %192, 0
  %.v65 = select i1 %195, i64 153, i64 6
  %196 = add i64 %193, %.v65
  store i64 %196, i64* %3, align 8
  br i1 %195, label %block_.L_40794a, label %block_4078b7

block_4078b7:                                     ; preds = %routine_ucomiss_0xab0f1c___xmm0.exit
  %197 = load i8, i8* %21, align 1
  %198 = icmp ne i8 %197, 0
  %.v74 = select i1 %198, i64 147, i64 6
  %199 = add i64 %196, %.v74
  store i64 %199, i64* %3, align 8
  %cmpBr_4078b7 = icmp eq i8 %197, 1
  br i1 %cmpBr_4078b7, label %block_.L_40794a, label %block_4078bd

block_4078bd:                                     ; preds = %block_4078b7
  %200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %201 = bitcast i8* %46 to i32*
  %202 = bitcast i64* %48 to i32*
  %203 = bitcast i8* %50 to i32*
  %204 = bitcast [32 x %union.VectorReg]* %39 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %204, align 1
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i382 = getelementptr inbounds %union.anon, %union.anon* %205, i64 0, i32 0
  store i64 ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), i64* %RAX.i382, align 8
  %RCX.i380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), i64* %RCX.i380, align 8
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %207 = bitcast %union.VectorReg* %206 to i8*
  %208 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
  %209 = bitcast %union.VectorReg* %206 to i32*
  store i32 %208, i32* %209, align 1
  %210 = getelementptr inbounds i8, i8* %207, i64 4
  %211 = bitcast i8* %210 to float*
  store float 0.000000e+00, float* %211, align 1
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %213 = bitcast i64* %212 to float*
  store float 0.000000e+00, float* %213, align 1
  %214 = getelementptr inbounds i8, i8* %207, i64 12
  %215 = bitcast i8* %214 to float*
  store float 0.000000e+00, float* %215, align 1
  %216 = add i64 %199, 35
  store i64 %216, i64* %3, align 8
  %217 = bitcast %union.VectorReg* %206 to <2 x float>*
  %218 = load <2 x float>, <2 x float>* %217, align 1
  %219 = extractelement <2 x float> %218, i32 0
  %220 = load <2 x float>, <2 x float>* %75, align 1
  %221 = extractelement <2 x float> %220, i32 0
  %222 = fcmp uno float %219, %221
  %223 = bitcast i32 %208 to float
  br i1 %222, label %224, label %235

; <label>:224:                                    ; preds = %block_4078bd
  %225 = fadd float %219, %221
  %226 = bitcast float %225 to i32
  %227 = and i32 %226, 2143289344
  %228 = icmp eq i32 %227, 2139095040
  %229 = and i32 %226, 4194303
  %230 = icmp ne i32 %229, 0
  %231 = and i1 %228, %230
  br i1 %231, label %232, label %241

; <label>:232:                                    ; preds = %224
  %233 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %216, %struct.Memory* %194)
  %.pre18 = load i64, i64* %RCX.i380, align 8
  %.pre19 = load i64, i64* %3, align 8
  %.pre20 = load i8, i8* %29, align 1
  %.pre21 = load i64, i64* %RAX.i382, align 8
  %.pre22 = load <2 x float>, <2 x float>* %75, align 1
  %.pre23 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*), align 8
  %234 = bitcast float %.pre23 to i32
  br label %routine_ucomiss__xmm0___xmm1.exit373

; <label>:235:                                    ; preds = %block_4078bd
  %236 = fcmp ogt float %219, %221
  br i1 %236, label %241, label %237

; <label>:237:                                    ; preds = %235
  %238 = fcmp olt float %219, %221
  br i1 %238, label %241, label %239

; <label>:239:                                    ; preds = %237
  %240 = fcmp oeq float %219, %221
  br i1 %240, label %241, label %245

; <label>:241:                                    ; preds = %239, %237, %235, %224
  %242 = phi i8 [ 0, %235 ], [ 0, %237 ], [ 1, %239 ], [ 1, %224 ]
  %243 = phi i8 [ 0, %235 ], [ 0, %237 ], [ 0, %239 ], [ 1, %224 ]
  %244 = phi i8 [ 0, %235 ], [ 1, %237 ], [ 0, %239 ], [ 1, %224 ]
  store i8 %242, i8* %29, align 1
  store i8 %243, i8* %21, align 1
  store i8 %244, i8* %14, align 1
  br label %245

; <label>:245:                                    ; preds = %241, %239
  %246 = phi i8 [ %242, %241 ], [ %192, %239 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit373

routine_ucomiss__xmm0___xmm1.exit373:             ; preds = %245, %232
  %247 = phi i32 [ %234, %232 ], [ %208, %245 ]
  %248 = phi float [ %.pre23, %232 ], [ %223, %245 ]
  %249 = phi <2 x float> [ %.pre22, %232 ], [ %220, %245 ]
  %250 = phi i64 [ %.pre21, %232 ], [ ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), %245 ]
  %251 = phi i8 [ %.pre20, %232 ], [ %246, %245 ]
  %252 = phi i64 [ %.pre19, %232 ], [ %216, %245 ]
  %253 = phi i64 [ %.pre18, %232 ], [ ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), %245 ]
  %254 = phi %struct.Memory* [ %233, %232 ], [ %194, %245 ]
  %255 = load i8, i8* %14, align 1
  %256 = or i8 %251, %255
  %257 = icmp eq i8 %256, 0
  %258 = select i1 %257, i64 %253, i64 %250
  store i64 %258, i64* %RAX.i382, align 8
  %259 = add i64 %252, 12
  store i64 %259, i64* %3, align 8
  %260 = extractelement <2 x float> %249, i32 0
  %261 = fcmp uno float %260, %248
  br i1 %261, label %262, label %272

; <label>:262:                                    ; preds = %routine_ucomiss__xmm0___xmm1.exit373
  %263 = fadd float %260, %248
  %264 = bitcast float %263 to i32
  %265 = and i32 %264, 2143289344
  %266 = icmp eq i32 %265, 2139095040
  %267 = and i32 %264, 4194303
  %268 = icmp ne i32 %267, 0
  %269 = and i1 %266, %268
  br i1 %269, label %270, label %278

; <label>:270:                                    ; preds = %262
  %271 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %259, %struct.Memory* %254)
  %.pre24 = load i64, i64* %RAX.i382, align 8
  %.pre25 = load i64, i64* %3, align 8
  %.pre26 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
  br label %routine_ucomiss_0xab0f18___xmm0.exit364

; <label>:272:                                    ; preds = %routine_ucomiss__xmm0___xmm1.exit373
  %273 = fcmp ogt float %260, %248
  br i1 %273, label %278, label %274

; <label>:274:                                    ; preds = %272
  %275 = fcmp olt float %260, %248
  br i1 %275, label %278, label %276

; <label>:276:                                    ; preds = %274
  %277 = fcmp oeq float %260, %248
  br i1 %277, label %278, label %282

; <label>:278:                                    ; preds = %276, %274, %272, %262
  %279 = phi i8 [ 0, %272 ], [ 0, %274 ], [ 1, %276 ], [ 1, %262 ]
  %280 = phi i8 [ 0, %272 ], [ 0, %274 ], [ 0, %276 ], [ 1, %262 ]
  %281 = phi i8 [ 0, %272 ], [ 1, %274 ], [ 0, %276 ], [ 1, %262 ]
  store i8 %279, i8* %29, align 1
  store i8 %280, i8* %21, align 1
  store i8 %281, i8* %14, align 1
  br label %282

; <label>:282:                                    ; preds = %278, %276
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss_0xab0f18___xmm0.exit364

routine_ucomiss_0xab0f18___xmm0.exit364:          ; preds = %282, %270
  %283 = phi i32 [ %.pre26, %270 ], [ %247, %282 ]
  %284 = phi i64 [ %.pre25, %270 ], [ %259, %282 ]
  %285 = phi i64 [ %.pre24, %270 ], [ %258, %282 ]
  %286 = phi %struct.Memory* [ %271, %270 ], [ %254, %282 ]
  %287 = load i64, i64* %RBP.i, align 8
  %288 = add i64 %287, -32
  %289 = add i64 %284, 4
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i64*
  store i64 %285, i64* %290, align 8
  %291 = load i64, i64* %3, align 8
  %292 = load i8, i8* %14, align 1
  %293 = load i8, i8* %29, align 1
  %294 = or i8 %293, %292
  %295 = icmp ne i8 %294, 0
  %.v75 = select i1 %295, i64 38, i64 6
  %296 = add i64 %291, %.v75
  %297 = add i64 %296, 9
  store i64 %297, i64* %3, align 8
  store i32 %283, i32* %45, align 1
  store float 0.000000e+00, float* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  br i1 %295, label %block_.L_407916, label %block_4078f6

block_4078f6:                                     ; preds = %routine_ucomiss_0xab0f18___xmm0.exit364
  %298 = load i64, i64* %200, align 1
  %299 = trunc i64 %298 to i32
  %300 = bitcast %union.anon* %205 to [2 x i32]*
  %301 = bitcast %union.anon* %205 to i32*
  store i32 %299, i32* %301, align 1
  %302 = getelementptr inbounds [2 x i32], [2 x i32]* %300, i64 0, i64 1
  store i32 0, i32* %302, align 1
  %303 = load i64, i64* %RAX.i382, align 8
  %304 = xor i64 %303, -2147483648
  %305 = trunc i64 %304 to i32
  %306 = and i64 %304, 4294967295
  store i64 %306, i64* %RAX.i382, align 8
  store i8 0, i8* %14, align 1
  %307 = and i32 %305, 255
  %308 = tail call i32 @llvm.ctpop.i32(i32 %307)
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = xor i8 %310, 1
  store i8 %311, i8* %21, align 1
  %312 = icmp eq i32 %305, 0
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %29, align 1
  %314 = lshr i32 %305, 31
  %315 = trunc i32 %314 to i8
  store i8 %315, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %316 = trunc i64 %304 to i32
  store i32 %316, i32* %45, align 1
  store i32 0, i32* %201, align 1
  store i32 0, i32* %202, align 1
  store i32 0, i32* %203, align 1
  %317 = load i64, i64* %RBP.i, align 8
  %318 = add i64 %317, -36
  %319 = add i64 %296, 27
  store i64 %319, i64* %3, align 8
  %320 = load <2 x float>, <2 x float>* %75, align 1
  %321 = extractelement <2 x float> %320, i32 0
  %322 = inttoptr i64 %318 to float*
  store float %321, float* %322, align 4
  %323 = load i64, i64* %3, align 8
  %324 = add i64 %323, 19
  store i64 %324, i64* %3, align 8
  br label %block_.L_407924

block_.L_407916:                                  ; preds = %routine_ucomiss_0xab0f18___xmm0.exit364
  %325 = load i64, i64* %RBP.i, align 8
  %326 = add i64 %325, -36
  %327 = add i64 %296, 14
  store i64 %327, i64* %3, align 8
  %328 = load <2 x float>, <2 x float>* %75, align 1
  %329 = extractelement <2 x float> %328, i32 0
  %330 = inttoptr i64 %326 to float*
  store float %329, float* %330, align 4
  %.pre27 = load i64, i64* %3, align 8
  %.pre63 = bitcast %union.anon* %205 to i32*
  br label %block_.L_407924

block_.L_407924:                                  ; preds = %block_.L_407916, %block_4078f6
  %EAX.i323.pre-phi = phi i32* [ %.pre63, %block_.L_407916 ], [ %301, %block_4078f6 ]
  %331 = phi i64 [ %.pre27, %block_.L_407916 ], [ %324, %block_4078f6 ]
  %332 = load i64, i64* %RBP.i, align 8
  %333 = add i64 %332, -36
  %334 = add i64 %331, 5
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  store i32 %336, i32* %45, align 1
  store float 0.000000e+00, float* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store i64 ptrtoint (%G__0x57a0c7_type* @G__0x57a0c7 to i64), i64* %RDI.i260, align 8
  %337 = load <2 x float>, <2 x float>* %75, align 1
  %338 = extractelement <2 x float> %337, i32 0
  %339 = fpext float %338 to double
  %340 = bitcast [32 x %union.VectorReg]* %39 to double*
  store double %339, double* %340, align 1
  %341 = add i64 %332, -32
  %342 = add i64 %331, 23
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to i64*
  %344 = load i64, i64* %343, align 8
  store i64 %344, i64* %RSI.i412, align 8
  %AL.i327 = bitcast %union.anon* %205 to i8*
  store i8 1, i8* %AL.i327, align 1
  %345 = add i64 %331, 304268
  %346 = add i64 %331, 30
  %347 = load i64, i64* %6, align 8
  %348 = add i64 %347, -8
  %349 = inttoptr i64 %348 to i64*
  store i64 %346, i64* %349, align 8
  store i64 %348, i64* %6, align 8
  store i64 %345, i64* %3, align 8
  %call2_40793d = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %345, %struct.Memory* %286)
  %350 = load i64, i64* %RBP.i, align 8
  %351 = add i64 %350, -40
  %352 = load i32, i32* %EAX.i323.pre-phi, align 4
  %353 = load i64, i64* %3, align 8
  %354 = add i64 %353, 3
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %351 to i32*
  store i32 %352, i32* %355, align 4
  %356 = load i64, i64* %3, align 8
  %357 = add i64 %356, 267
  store i64 %357, i64* %3, align 8
  br label %block_.L_407a50

block_.L_40794a:                                  ; preds = %block_4078b7, %routine_ucomiss_0xab0f1c___xmm0.exit
  %358 = phi i64 [ %199, %block_4078b7 ], [ %196, %routine_ucomiss_0xab0f1c___xmm0.exit ]
  %359 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %360 = bitcast i8* %46 to i32*
  %361 = bitcast i64* %48 to i32*
  %362 = bitcast i8* %50 to i32*
  %363 = bitcast [32 x %union.VectorReg]* %39 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %363, align 1
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i317 = getelementptr inbounds %union.anon, %union.anon* %364, i64 0, i32 0
  store i64 ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), i64* %RAX.i317, align 8
  %RCX.i315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), i64* %RCX.i315, align 8
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %366 = bitcast %union.VectorReg* %365 to i8*
  %367 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
  %368 = bitcast %union.VectorReg* %365 to i32*
  store i32 %367, i32* %368, align 1
  %369 = getelementptr inbounds i8, i8* %366, i64 4
  %370 = bitcast i8* %369 to float*
  store float 0.000000e+00, float* %370, align 1
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %372 = bitcast i64* %371 to float*
  store float 0.000000e+00, float* %372, align 1
  %373 = getelementptr inbounds i8, i8* %366, i64 12
  %374 = bitcast i8* %373 to float*
  store float 0.000000e+00, float* %374, align 1
  %375 = add i64 %358, 35
  store i64 %375, i64* %3, align 8
  %376 = bitcast %union.VectorReg* %365 to <2 x float>*
  %377 = load <2 x float>, <2 x float>* %376, align 1
  %378 = extractelement <2 x float> %377, i32 0
  %379 = load <2 x float>, <2 x float>* %75, align 1
  %380 = extractelement <2 x float> %379, i32 0
  %381 = fcmp uno float %378, %380
  %382 = bitcast i32 %367 to float
  br i1 %381, label %383, label %394

; <label>:383:                                    ; preds = %block_.L_40794a
  %384 = fadd float %378, %380
  %385 = bitcast float %384 to i32
  %386 = and i32 %385, 2143289344
  %387 = icmp eq i32 %386, 2139095040
  %388 = and i32 %385, 4194303
  %389 = icmp ne i32 %388, 0
  %390 = and i1 %387, %389
  br i1 %390, label %391, label %400

; <label>:391:                                    ; preds = %383
  %392 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %375, %struct.Memory* %194)
  %.pre28 = load i64, i64* %RCX.i315, align 8
  %.pre29 = load i64, i64* %3, align 8
  %.pre30 = load i8, i8* %29, align 1
  %.pre31 = load i64, i64* %RAX.i317, align 8
  %.pre32 = load <2 x float>, <2 x float>* %75, align 1
  %.pre33 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*), align 8
  %393 = bitcast float %.pre33 to i32
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:394:                                    ; preds = %block_.L_40794a
  %395 = fcmp ogt float %378, %380
  br i1 %395, label %400, label %396

; <label>:396:                                    ; preds = %394
  %397 = fcmp olt float %378, %380
  br i1 %397, label %400, label %398

; <label>:398:                                    ; preds = %396
  %399 = fcmp oeq float %378, %380
  br i1 %399, label %400, label %404

; <label>:400:                                    ; preds = %398, %396, %394, %383
  %401 = phi i8 [ 0, %394 ], [ 0, %396 ], [ 1, %398 ], [ 1, %383 ]
  %402 = phi i8 [ 0, %394 ], [ 0, %396 ], [ 0, %398 ], [ 1, %383 ]
  %403 = phi i8 [ 0, %394 ], [ 1, %396 ], [ 0, %398 ], [ 1, %383 ]
  store i8 %401, i8* %29, align 1
  store i8 %402, i8* %21, align 1
  store i8 %403, i8* %14, align 1
  br label %404

; <label>:404:                                    ; preds = %400, %398
  %405 = phi i8 [ %401, %400 ], [ %192, %398 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %404, %391
  %406 = phi i32 [ %393, %391 ], [ %367, %404 ]
  %407 = phi float [ %.pre33, %391 ], [ %382, %404 ]
  %408 = phi <2 x float> [ %.pre32, %391 ], [ %379, %404 ]
  %409 = phi i64 [ %.pre31, %391 ], [ ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), %404 ]
  %410 = phi i8 [ %.pre30, %391 ], [ %405, %404 ]
  %411 = phi i64 [ %.pre29, %391 ], [ %375, %404 ]
  %412 = phi i64 [ %.pre28, %391 ], [ ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), %404 ]
  %413 = phi %struct.Memory* [ %392, %391 ], [ %194, %404 ]
  %414 = load i8, i8* %14, align 1
  %415 = or i8 %410, %414
  %416 = icmp eq i8 %415, 0
  %417 = select i1 %416, i64 %412, i64 %409
  store i64 %417, i64* %RAX.i317, align 8
  %418 = add i64 %411, 12
  store i64 %418, i64* %3, align 8
  %419 = extractelement <2 x float> %408, i32 0
  %420 = fcmp uno float %419, %407
  br i1 %420, label %421, label %431

; <label>:421:                                    ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %422 = fadd float %419, %407
  %423 = bitcast float %422 to i32
  %424 = and i32 %423, 2143289344
  %425 = icmp eq i32 %424, 2139095040
  %426 = and i32 %423, 4194303
  %427 = icmp ne i32 %426, 0
  %428 = and i1 %425, %427
  br i1 %428, label %429, label %437

; <label>:429:                                    ; preds = %421
  %430 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %418, %struct.Memory* %413)
  %.pre34 = load i64, i64* %RAX.i317, align 8
  %.pre35 = load i64, i64* %3, align 8
  %.pre36 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
  br label %routine_ucomiss_0xab0f18___xmm0.exit

; <label>:431:                                    ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %432 = fcmp ogt float %419, %407
  br i1 %432, label %437, label %433

; <label>:433:                                    ; preds = %431
  %434 = fcmp olt float %419, %407
  br i1 %434, label %437, label %435

; <label>:435:                                    ; preds = %433
  %436 = fcmp oeq float %419, %407
  br i1 %436, label %437, label %441

; <label>:437:                                    ; preds = %435, %433, %431, %421
  %438 = phi i8 [ 0, %431 ], [ 0, %433 ], [ 1, %435 ], [ 1, %421 ]
  %439 = phi i8 [ 0, %431 ], [ 0, %433 ], [ 0, %435 ], [ 1, %421 ]
  %440 = phi i8 [ 0, %431 ], [ 1, %433 ], [ 0, %435 ], [ 1, %421 ]
  store i8 %438, i8* %29, align 1
  store i8 %439, i8* %21, align 1
  store i8 %440, i8* %14, align 1
  br label %441

; <label>:441:                                    ; preds = %437, %435
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss_0xab0f18___xmm0.exit

routine_ucomiss_0xab0f18___xmm0.exit:             ; preds = %441, %429
  %442 = phi i32 [ %.pre36, %429 ], [ %406, %441 ]
  %443 = phi i64 [ %.pre35, %429 ], [ %418, %441 ]
  %444 = phi i64 [ %.pre34, %429 ], [ %417, %441 ]
  %445 = phi %struct.Memory* [ %430, %429 ], [ %413, %441 ]
  %446 = load i64, i64* %RBP.i, align 8
  %447 = add i64 %446, -48
  %448 = add i64 %443, 4
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i64*
  store i64 %444, i64* %449, align 8
  %450 = load i64, i64* %3, align 8
  %451 = load i8, i8* %14, align 1
  %452 = load i8, i8* %29, align 1
  %453 = or i8 %452, %451
  %454 = icmp ne i8 %453, 0
  %.v77 = select i1 %454, i64 38, i64 6
  %455 = add i64 %450, %.v77
  %456 = add i64 %455, 9
  store i64 %456, i64* %3, align 8
  store i32 %442, i32* %45, align 1
  store float 0.000000e+00, float* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  br i1 %454, label %block_.L_4079a3, label %block_407983

block_407983:                                     ; preds = %routine_ucomiss_0xab0f18___xmm0.exit
  %457 = load i64, i64* %359, align 1
  %458 = trunc i64 %457 to i32
  %459 = bitcast %union.anon* %364 to [2 x i32]*
  %460 = bitcast %union.anon* %364 to i32*
  store i32 %458, i32* %460, align 1
  %461 = getelementptr inbounds [2 x i32], [2 x i32]* %459, i64 0, i64 1
  store i32 0, i32* %461, align 1
  %462 = load i64, i64* %RAX.i317, align 8
  %463 = xor i64 %462, -2147483648
  %464 = trunc i64 %463 to i32
  %465 = and i64 %463, 4294967295
  store i64 %465, i64* %RAX.i317, align 8
  store i8 0, i8* %14, align 1
  %466 = and i32 %464, 255
  %467 = tail call i32 @llvm.ctpop.i32(i32 %466)
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  store i8 %470, i8* %21, align 1
  %471 = icmp eq i32 %464, 0
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %29, align 1
  %473 = lshr i32 %464, 31
  %474 = trunc i32 %473 to i8
  store i8 %474, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %475 = trunc i64 %463 to i32
  store i32 %475, i32* %45, align 1
  store i32 0, i32* %360, align 1
  store i32 0, i32* %361, align 1
  store i32 0, i32* %362, align 1
  %476 = load i64, i64* %RBP.i, align 8
  %477 = add i64 %476, -52
  %478 = add i64 %455, 27
  store i64 %478, i64* %3, align 8
  %479 = load <2 x float>, <2 x float>* %75, align 1
  %480 = extractelement <2 x float> %479, i32 0
  %481 = inttoptr i64 %477 to float*
  store float %480, float* %481, align 4
  %482 = load i64, i64* %3, align 8
  %483 = add i64 %482, 19
  store i64 %483, i64* %3, align 8
  br label %block_.L_4079b1

block_.L_4079a3:                                  ; preds = %routine_ucomiss_0xab0f18___xmm0.exit
  %484 = load i64, i64* %RBP.i, align 8
  %485 = add i64 %484, -52
  %486 = add i64 %455, 14
  store i64 %486, i64* %3, align 8
  %487 = load <2 x float>, <2 x float>* %75, align 1
  %488 = extractelement <2 x float> %487, i32 0
  %489 = inttoptr i64 %485 to float*
  store float %488, float* %489, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_4079b1

block_.L_4079b1:                                  ; preds = %block_.L_4079a3, %block_407983
  %490 = phi i64 [ %.pre37, %block_.L_4079a3 ], [ %483, %block_407983 ]
  %491 = load i64, i64* %RBP.i, align 8
  %492 = add i64 %491, -52
  %493 = add i64 %490, 5
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  store i32 %495, i32* %45, align 1
  store float 0.000000e+00, float* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  %496 = bitcast %union.VectorReg* %365 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %496, align 1
  store i64 ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), i64* %RAX.i317, align 8
  store i64 ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), i64* %RCX.i315, align 8
  %497 = load <2 x float>, <2 x float>* %75, align 1
  %498 = extractelement <2 x float> %497, i32 0
  %499 = fpext float %498 to double
  %500 = bitcast [32 x %union.VectorReg]* %39 to double*
  store double %499, double* %500, align 1
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %502 = bitcast %union.VectorReg* %501 to i8*
  %503 = load i32, i32* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to i32*), align 8
  %504 = bitcast %union.VectorReg* %501 to i32*
  store i32 %503, i32* %504, align 1
  %505 = getelementptr inbounds i8, i8* %502, i64 4
  %506 = bitcast i8* %505 to float*
  store float 0.000000e+00, float* %506, align 1
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %508 = bitcast i64* %507 to float*
  store float 0.000000e+00, float* %508, align 1
  %509 = getelementptr inbounds i8, i8* %502, i64 12
  %510 = bitcast i8* %509 to float*
  store float 0.000000e+00, float* %510, align 1
  %511 = add i64 %490, 44
  store i64 %511, i64* %3, align 8
  %512 = bitcast %union.VectorReg* %501 to <2 x float>*
  %513 = load <2 x float>, <2 x float>* %512, align 1
  %514 = extractelement <2 x float> %513, i32 0
  %515 = load <2 x float>, <2 x float>* %376, align 1
  %516 = extractelement <2 x float> %515, i32 0
  %517 = fcmp uno float %514, %516
  %518 = bitcast i32 %503 to float
  br i1 %517, label %519, label %530

; <label>:519:                                    ; preds = %block_.L_4079b1
  %520 = fadd float %514, %516
  %521 = bitcast float %520 to i32
  %522 = and i32 %521, 2143289344
  %523 = icmp eq i32 %522, 2139095040
  %524 = and i32 %521, 4194303
  %525 = icmp ne i32 %524, 0
  %526 = and i1 %523, %525
  br i1 %526, label %527, label %536

; <label>:527:                                    ; preds = %519
  %528 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %511, %struct.Memory* %445)
  %.pre38 = load i64, i64* %RCX.i315, align 8
  %.pre39 = load i64, i64* %3, align 8
  %.pre40 = load i64, i64* %RAX.i317, align 8
  %.pre41 = load <2 x float>, <2 x float>* %376, align 1
  %.pre42 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*), align 8
  %529 = bitcast float %.pre42 to i32
  br label %routine_ucomiss__xmm1___xmm2.exit

; <label>:530:                                    ; preds = %block_.L_4079b1
  %531 = fcmp ogt float %514, %516
  br i1 %531, label %536, label %532

; <label>:532:                                    ; preds = %530
  %533 = fcmp olt float %514, %516
  br i1 %533, label %536, label %534

; <label>:534:                                    ; preds = %532
  %535 = fcmp oeq float %514, %516
  br i1 %535, label %536, label %540

; <label>:536:                                    ; preds = %534, %532, %530, %519
  %537 = phi i8 [ 0, %530 ], [ 0, %532 ], [ 1, %534 ], [ 1, %519 ]
  %538 = phi i8 [ 0, %530 ], [ 0, %532 ], [ 0, %534 ], [ 1, %519 ]
  %539 = phi i8 [ 0, %530 ], [ 1, %532 ], [ 0, %534 ], [ 1, %519 ]
  store i8 %537, i8* %29, align 1
  store i8 %538, i8* %21, align 1
  store i8 %539, i8* %14, align 1
  br label %540

; <label>:540:                                    ; preds = %536, %534
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss__xmm1___xmm2.exit

routine_ucomiss__xmm1___xmm2.exit:                ; preds = %540, %527
  %541 = phi i32 [ %529, %527 ], [ %503, %540 ]
  %542 = phi float [ %.pre42, %527 ], [ %518, %540 ]
  %543 = phi <2 x float> [ %.pre41, %527 ], [ %515, %540 ]
  %544 = phi i64 [ %.pre40, %527 ], [ ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), %540 ]
  %545 = phi i64 [ %.pre39, %527 ], [ %511, %540 ]
  %546 = phi i64 [ %.pre38, %527 ], [ ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), %540 ]
  %547 = phi %struct.Memory* [ %528, %527 ], [ %445, %540 ]
  %548 = load i8, i8* %14, align 1
  %549 = load i8, i8* %29, align 1
  %550 = or i8 %549, %548
  %551 = icmp eq i8 %550, 0
  %552 = select i1 %551, i64 %546, i64 %544
  store i64 %552, i64* %RAX.i317, align 8
  %553 = add i64 %545, 12
  store i64 %553, i64* %3, align 8
  %554 = extractelement <2 x float> %543, i32 0
  %555 = fcmp uno float %554, %542
  br i1 %555, label %556, label %566

; <label>:556:                                    ; preds = %routine_ucomiss__xmm1___xmm2.exit
  %557 = fadd float %554, %542
  %558 = bitcast float %557 to i32
  %559 = and i32 %558, 2143289344
  %560 = icmp eq i32 %559, 2139095040
  %561 = and i32 %558, 4194303
  %562 = icmp ne i32 %561, 0
  %563 = and i1 %560, %562
  br i1 %563, label %564, label %572

; <label>:564:                                    ; preds = %556
  %565 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %553, %struct.Memory* %547)
  %.pre43 = load i64, i64* %RAX.i317, align 8
  %.pre44 = load i64, i64* %3, align 8
  %.pre45 = load i32, i32* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to i32*), align 8
  br label %routine_ucomiss_0xab0f1c___xmm1.exit

; <label>:566:                                    ; preds = %routine_ucomiss__xmm1___xmm2.exit
  %567 = fcmp ogt float %554, %542
  br i1 %567, label %572, label %568

; <label>:568:                                    ; preds = %566
  %569 = fcmp olt float %554, %542
  br i1 %569, label %572, label %570

; <label>:570:                                    ; preds = %568
  %571 = fcmp oeq float %554, %542
  br i1 %571, label %572, label %576

; <label>:572:                                    ; preds = %570, %568, %566, %556
  %573 = phi i8 [ 0, %566 ], [ 0, %568 ], [ 1, %570 ], [ 1, %556 ]
  %574 = phi i8 [ 0, %566 ], [ 0, %568 ], [ 0, %570 ], [ 1, %556 ]
  %575 = phi i8 [ 0, %566 ], [ 1, %568 ], [ 0, %570 ], [ 1, %556 ]
  store i8 %573, i8* %29, align 1
  store i8 %574, i8* %21, align 1
  store i8 %575, i8* %14, align 1
  br label %576

; <label>:576:                                    ; preds = %572, %570
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss_0xab0f1c___xmm1.exit

routine_ucomiss_0xab0f1c___xmm1.exit:             ; preds = %576, %564
  %577 = phi i32 [ %.pre45, %564 ], [ %541, %576 ]
  %578 = phi i64 [ %.pre44, %564 ], [ %553, %576 ]
  %579 = phi i64 [ %.pre43, %564 ], [ %552, %576 ]
  %580 = phi %struct.Memory* [ %565, %564 ], [ %547, %576 ]
  %581 = load i64, i64* %RBP.i, align 8
  %582 = add i64 %581, -64
  %583 = add i64 %578, 4
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i64*
  store i64 %579, i64* %584, align 8
  %585 = load i64, i64* %RBP.i, align 8
  %586 = add i64 %585, -72
  %587 = load i64, i64* %3, align 8
  %588 = add i64 %587, 5
  store i64 %588, i64* %3, align 8
  %589 = load i64, i64* %359, align 1
  %590 = inttoptr i64 %586 to i64*
  store i64 %589, i64* %590, align 8
  %591 = load i64, i64* %3, align 8
  %592 = load i8, i8* %14, align 1
  %593 = load i8, i8* %29, align 1
  %594 = or i8 %593, %592
  %595 = icmp ne i8 %594, 0
  %.v78 = select i1 %595, i64 38, i64 6
  %596 = add i64 %591, %.v78
  %597 = add i64 %596, 9
  store i64 %597, i64* %3, align 8
  store i32 %577, i32* %45, align 1
  store float 0.000000e+00, float* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  br i1 %595, label %block_.L_407a18, label %block_4079f8

block_4079f8:                                     ; preds = %routine_ucomiss_0xab0f1c___xmm1.exit
  %598 = load i64, i64* %359, align 1
  %599 = trunc i64 %598 to i32
  %600 = bitcast %union.anon* %364 to [2 x i32]*
  %601 = bitcast %union.anon* %364 to i32*
  store i32 %599, i32* %601, align 1
  %602 = getelementptr inbounds [2 x i32], [2 x i32]* %600, i64 0, i64 1
  store i32 0, i32* %602, align 1
  %603 = load i64, i64* %RAX.i317, align 8
  %604 = xor i64 %603, -2147483648
  %605 = trunc i64 %604 to i32
  %606 = and i64 %604, 4294967295
  store i64 %606, i64* %RAX.i317, align 8
  store i8 0, i8* %14, align 1
  %607 = and i32 %605, 255
  %608 = tail call i32 @llvm.ctpop.i32(i32 %607)
  %609 = trunc i32 %608 to i8
  %610 = and i8 %609, 1
  %611 = xor i8 %610, 1
  store i8 %611, i8* %21, align 1
  %612 = icmp eq i32 %605, 0
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %29, align 1
  %614 = lshr i32 %605, 31
  %615 = trunc i32 %614 to i8
  store i8 %615, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %616 = trunc i64 %604 to i32
  store i32 %616, i32* %45, align 1
  store i32 0, i32* %360, align 1
  store i32 0, i32* %361, align 1
  store i32 0, i32* %362, align 1
  %617 = load i64, i64* %RBP.i, align 8
  %618 = add i64 %617, -76
  %619 = add i64 %596, 27
  store i64 %619, i64* %3, align 8
  %620 = load <2 x float>, <2 x float>* %75, align 1
  %621 = extractelement <2 x float> %620, i32 0
  %622 = inttoptr i64 %618 to float*
  store float %621, float* %622, align 4
  %623 = load i64, i64* %3, align 8
  %624 = add i64 %623, 19
  store i64 %624, i64* %3, align 8
  br label %block_.L_407a26

block_.L_407a18:                                  ; preds = %routine_ucomiss_0xab0f1c___xmm1.exit
  %625 = load i64, i64* %RBP.i, align 8
  %626 = add i64 %625, -76
  %627 = add i64 %596, 14
  store i64 %627, i64* %3, align 8
  %628 = load <2 x float>, <2 x float>* %75, align 1
  %629 = extractelement <2 x float> %628, i32 0
  %630 = inttoptr i64 %626 to float*
  store float %629, float* %630, align 4
  %.pre46 = load i64, i64* %3, align 8
  %.pre61 = bitcast %union.anon* %364 to i32*
  br label %block_.L_407a26

block_.L_407a26:                                  ; preds = %block_.L_407a18, %block_4079f8
  %EAX.i202.pre-phi = phi i32* [ %.pre61, %block_.L_407a18 ], [ %601, %block_4079f8 ]
  %631 = phi i64 [ %.pre46, %block_.L_407a18 ], [ %624, %block_4079f8 ]
  %632 = load i64, i64* %RBP.i, align 8
  %633 = add i64 %632, -76
  %634 = add i64 %631, 5
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to i32*
  %636 = load i32, i32* %635, align 4
  store i32 %636, i32* %45, align 1
  store float 0.000000e+00, float* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  store i64 ptrtoint (%G__0x57a0df_type* @G__0x57a0df to i64), i64* %RDI.i260, align 8
  %637 = load <2 x float>, <2 x float>* %75, align 1
  %638 = extractelement <2 x float> %637, i32 0
  %639 = fpext float %638 to double
  %640 = bitcast %union.VectorReg* %365 to double*
  store double %639, double* %640, align 1
  %641 = add i64 %632, -48
  %642 = add i64 %631, 23
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %641 to i64*
  %644 = load i64, i64* %643, align 8
  store i64 %644, i64* %RSI.i412, align 8
  %645 = add i64 %632, -72
  %646 = add i64 %631, 28
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i64*
  %648 = load i64, i64* %647, align 8
  store i64 %648, i64* %359, align 1
  %649 = bitcast i64* %48 to double*
  store double 0.000000e+00, double* %649, align 1
  %RDX.i208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %650 = add i64 %632, -64
  %651 = add i64 %631, 32
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %650 to i64*
  %653 = load i64, i64* %652, align 8
  store i64 %653, i64* %RDX.i208, align 8
  %AL.i206 = bitcast %union.anon* %364 to i8*
  store i8 2, i8* %AL.i206, align 1
  %654 = add i64 %631, 304010
  %655 = add i64 %631, 39
  %656 = load i64, i64* %6, align 8
  %657 = add i64 %656, -8
  %658 = inttoptr i64 %657 to i64*
  store i64 %655, i64* %658, align 8
  store i64 %657, i64* %6, align 8
  store i64 %654, i64* %3, align 8
  %call2_407a48 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %654, %struct.Memory* %580)
  %659 = load i64, i64* %RBP.i, align 8
  %660 = add i64 %659, -80
  %661 = load i32, i32* %EAX.i202.pre-phi, align 4
  %662 = load i64, i64* %3, align 8
  %663 = add i64 %662, 3
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %660 to i32*
  store i32 %661, i32* %664, align 4
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_407a50

block_.L_407a50:                                  ; preds = %block_.L_407a26, %block_.L_407924
  %EAX.i194.pre-phi = phi i32* [ %EAX.i202.pre-phi, %block_.L_407a26 ], [ %EAX.i323.pre-phi, %block_.L_407924 ]
  %665 = phi i64 [ %.pre47, %block_.L_407a26 ], [ %357, %block_.L_407924 ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_407a48, %block_.L_407a26 ], [ %call2_40793d, %block_.L_407924 ]
  %666 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %666, i64* %RDI.i260, align 8
  %667 = add i64 %665, -26928
  %668 = add i64 %665, 13
  %669 = load i64, i64* %6, align 8
  %670 = add i64 %669, -8
  %671 = inttoptr i64 %670 to i64*
  store i64 %668, i64* %671, align 8
  store i64 %670, i64* %6, align 8
  store i64 %667, i64* %3, align 8
  %672 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %MEMORY.5)
  %673 = load i64, i64* %RBP.i, align 8
  %674 = add i64 %673, -84
  %675 = load i32, i32* %EAX.i194.pre-phi, align 4
  %676 = load i64, i64* %3, align 8
  %677 = add i64 %676, 3
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %674 to i32*
  store i32 %675, i32* %678, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_407a60

block_.L_407a60:                                  ; preds = %block_.L_407a50, %block_407892
  %679 = phi i64 [ %.pre48, %block_.L_407a50 ], [ %161, %block_407892 ]
  %MEMORY.6 = phi %struct.Memory* [ %672, %block_.L_407a50 ], [ %call2_40787a, %block_407892 ]
  %680 = load i64, i64* %RBP.i, align 8
  %681 = add i64 %680, -12
  %682 = add i64 %679, 4
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i32*
  %684 = load i32, i32* %683, align 4
  %685 = add i32 %684, -1
  %686 = icmp eq i32 %684, 0
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %14, align 1
  %688 = and i32 %685, 255
  %689 = tail call i32 @llvm.ctpop.i32(i32 %688)
  %690 = trunc i32 %689 to i8
  %691 = and i8 %690, 1
  %692 = xor i8 %691, 1
  store i8 %692, i8* %21, align 1
  %693 = xor i32 %685, %684
  %694 = lshr i32 %693, 4
  %695 = trunc i32 %694 to i8
  %696 = and i8 %695, 1
  store i8 %696, i8* %26, align 1
  %697 = icmp eq i32 %685, 0
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %29, align 1
  %699 = lshr i32 %685, 31
  %700 = trunc i32 %699 to i8
  store i8 %700, i8* %32, align 1
  %701 = lshr i32 %684, 31
  %702 = xor i32 %699, %701
  %703 = add nuw nsw i32 %702, %701
  %704 = icmp eq i32 %703, 2
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %38, align 1
  %.v66 = select i1 %697, i64 10, i64 33
  %706 = add i64 %679, %.v66
  %707 = add i64 %706, 9
  store i64 %707, i64* %3, align 8
  br i1 %697, label %block_407a6a, label %block_.L_407a81

block_407a6a:                                     ; preds = %block_.L_407a60
  %708 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
  store i32 %708, i32* %45, align 1
  store float 0.000000e+00, float* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  %709 = load <2 x float>, <2 x float>* %75, align 1
  %710 = extractelement <2 x float> %709, i32 0
  store float %710, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  %711 = add i64 %706, 41
  store i64 %711, i64* %3, align 8
  br label %block_.L_407a93

block_.L_407a81:                                  ; preds = %block_.L_407a60
  %712 = load i32, i32* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to i32*), align 8
  store i32 %712, i32* %45, align 1
  store float 0.000000e+00, float* %47, align 1
  store float 0.000000e+00, float* %49, align 1
  store float 0.000000e+00, float* %51, align 1
  %713 = add i64 %706, 18
  store i64 %713, i64* %3, align 8
  %714 = load <2 x float>, <2 x float>* %75, align 1
  %715 = extractelement <2 x float> %714, i32 0
  store float %715, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  br label %block_.L_407a93

block_.L_407a93:                                  ; preds = %block_.L_407a81, %block_407a6a
  %716 = phi i64 [ %713, %block_.L_407a81 ], [ %711, %block_407a6a ]
  %717 = add i64 %716, 17
  store i64 %717, i64* %3, align 8
  br label %block_.L_407aa4

block_.L_407a98:                                  ; preds = %entry
  %718 = bitcast [32 x %union.VectorReg]* %39 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %718, align 1
  %719 = add i64 %122, 12
  store i64 %719, i64* %3, align 8
  %720 = load <2 x float>, <2 x float>* %75, align 1
  %721 = extractelement <2 x float> %720, i32 0
  store float %721, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  br label %block_.L_407aa4

block_.L_407aa4:                                  ; preds = %block_.L_407a98, %block_.L_407a93
  %722 = phi i64 [ %719, %block_.L_407a98 ], [ %717, %block_.L_407a93 ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_407853, %block_.L_407a98 ], [ %MEMORY.6, %block_.L_407a93 ]
  %723 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %724 = and i32 %723, 255
  %725 = tail call i32 @llvm.ctpop.i32(i32 %724)
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  %728 = xor i8 %727, 1
  store i8 %728, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %729 = icmp eq i32 %723, 0
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %29, align 1
  %731 = lshr i32 %723, 31
  %732 = trunc i32 %731 to i8
  store i8 %732, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v67 = select i1 %729, i64 14, i64 19
  %733 = add i64 %722, %.v67
  store i64 %733, i64* %3, align 8
  br i1 %729, label %block_407ab2, label %block_.L_407ab7

block_407ab2:                                     ; preds = %block_.L_407aa4
  %734 = add i64 %733, 45
  store i64 %734, i64* %3, align 8
  br label %block_.L_407adf

block_.L_407ab7:                                  ; preds = %block_.L_407aa4
  store i64 ptrtoint (%G__0x579f16_type* @G__0x579f16 to i64), i64* %RDI.i260, align 8
  store i64 831, i64* %RSI.i412, align 8
  %RDX.i167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i167, align 8
  %RAX.i165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 4294967295, i64* %RAX.i165, align 8
  %RCX.i163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4294967295, i64* %RCX.i163, align 8
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %735, align 8
  %736 = add i64 %733, 304601
  %737 = add i64 %733, 40
  %738 = load i64, i64* %6, align 8
  %739 = add i64 %738, -8
  %740 = inttoptr i64 %739 to i64*
  store i64 %737, i64* %740, align 8
  store i64 %739, i64* %6, align 8
  store i64 %736, i64* %3, align 8
  %call2_407ada = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %736, %struct.Memory* %MEMORY.8)
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_407adf

block_.L_407adf:                                  ; preds = %block_.L_407ab7, %block_407ab2
  %741 = phi i64 [ %.pre49, %block_.L_407ab7 ], [ %734, %block_407ab2 ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_407ada, %block_.L_407ab7 ], [ %MEMORY.8, %block_407ab2 ]
  %742 = load i64, i64* %RBP.i, align 8
  %743 = add i64 %742, -12
  %744 = add i64 %741, 3
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %743 to i32*
  %746 = load i32, i32* %745, align 4
  %747 = zext i32 %746 to i64
  store i64 %747, i64* %RDI.i260, align 8
  %748 = add i64 %741, 535729
  %749 = add i64 %741, 8
  %750 = load i64, i64* %6, align 8
  %751 = add i64 %750, -8
  %752 = inttoptr i64 %751 to i64*
  store i64 %749, i64* %752, align 8
  store i64 %751, i64* %6, align 8
  store i64 %748, i64* %3, align 8
  %call2_407ae2 = tail call %struct.Memory* @sub_48a790.worm_reasons(%struct.State* nonnull %0, i64 %748, %struct.Memory* %MEMORY.9)
  %753 = load i64, i64* %3, align 8
  %754 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  %755 = zext i32 %754 to i64
  store i64 %755, i64* %RDI.i260, align 8
  %756 = load i64, i64* %RBP.i, align 8
  %757 = add i64 %756, -20
  %758 = add i64 %753, 10
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %757 to i32*
  store i32 %754, i32* %759, align 4
  %760 = load i64, i64* %3, align 8
  %761 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %762 = and i32 %761, 255
  %763 = tail call i32 @llvm.ctpop.i32(i32 %762)
  %764 = trunc i32 %763 to i8
  %765 = and i8 %764, 1
  %766 = xor i8 %765, 1
  store i8 %766, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %767 = icmp eq i32 %761, 0
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %29, align 1
  %769 = lshr i32 %761, 31
  %770 = trunc i32 %769 to i8
  store i8 %770, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %771 = icmp ne i8 %770, 0
  %772 = or i1 %767, %771
  %.v68 = select i1 %772, i64 31, i64 14
  %773 = add i64 %760, %.v68
  store i64 %773, i64* %3, align 8
  br i1 %772, label %block_.L_407b10, label %block_407aff

block_407aff:                                     ; preds = %block_.L_407adf
  %RAX.i145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %774 = add i32 %761, -1
  %775 = zext i32 %774 to i64
  store i64 %775, i64* %RAX.i145, align 8
  store i8 1, i8* %14, align 1
  %776 = and i32 %774, 255
  %777 = tail call i32 @llvm.ctpop.i32(i32 %776)
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  %780 = xor i8 %779, 1
  store i8 %780, i8* %21, align 1
  %781 = xor i32 %761, 16
  %782 = xor i32 %781, %774
  %783 = lshr i32 %782, 4
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  store i8 %785, i8* %26, align 1
  %786 = icmp eq i32 %774, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %29, align 1
  %788 = lshr i32 %774, 31
  %789 = trunc i32 %788 to i8
  store i8 %789, i8* %32, align 1
  %790 = xor i32 %788, %769
  %791 = xor i32 %788, 1
  %792 = add nuw nsw i32 %790, %791
  %793 = icmp eq i32 %792, 2
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %38, align 1
  %795 = add i64 %773, 17
  store i64 %795, i64* %3, align 8
  store i32 %774, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  br label %block_.L_407b10

block_.L_407b10:                                  ; preds = %block_407aff, %block_.L_407adf
  %796 = phi i64 [ %795, %block_407aff ], [ %773, %block_.L_407adf ]
  %797 = load i64, i64* %RBP.i, align 8
  %798 = add i64 %797, -12
  %799 = add i64 %796, 3
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %798 to i32*
  %801 = load i32, i32* %800, align 4
  %802 = zext i32 %801 to i64
  store i64 %802, i64* %RDI.i260, align 8
  %803 = add i64 %796, 276896
  %804 = add i64 %796, 8
  %805 = load i64, i64* %6, align 8
  %806 = add i64 %805, -8
  %807 = inttoptr i64 %806 to i64*
  store i64 %804, i64* %807, align 8
  store i64 %806, i64* %6, align 8
  store i64 %803, i64* %3, align 8
  %call2_407b13 = tail call %struct.Memory* @sub_44b4b0.owl_reasons(%struct.State* nonnull %0, i64 %803, %struct.Memory* %call2_407ae2)
  %808 = load i64, i64* %RBP.i, align 8
  %809 = add i64 %808, -20
  %810 = load i64, i64* %3, align 8
  %811 = add i64 %810, 3
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %809 to i32*
  %813 = load i32, i32* %812, align 4
  %814 = zext i32 %813 to i64
  store i64 %814, i64* %RDI.i260, align 8
  store i32 %813, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  %815 = add i64 %808, -12
  %816 = add i64 %810, 13
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %815 to i32*
  %818 = load i32, i32* %817, align 4
  %819 = zext i32 %818 to i64
  store i64 %819, i64* %RDI.i260, align 8
  %820 = add i64 %810, 68584
  %821 = add i64 %810, 18
  %822 = load i64, i64* %6, align 8
  %823 = add i64 %822, -8
  %824 = inttoptr i64 %823 to i64*
  store i64 %821, i64* %824, align 8
  store i64 %823, i64* %6, align 8
  store i64 %820, i64* %3, align 8
  %call2_407b25 = tail call %struct.Memory* @sub_418700.combinations(%struct.State* nonnull %0, i64 %820, %struct.Memory* %call2_407b13)
  %825 = load i64, i64* %3, align 8
  %826 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %827 = and i32 %826, 255
  %828 = tail call i32 @llvm.ctpop.i32(i32 %827)
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  %831 = xor i8 %830, 1
  store i8 %831, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %832 = icmp eq i32 %826, 0
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %29, align 1
  %834 = lshr i32 %826, 31
  %835 = trunc i32 %834 to i8
  store i8 %835, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v69 = select i1 %832, i64 14, i64 19
  %836 = add i64 %825, %.v69
  store i64 %836, i64* %3, align 8
  br i1 %832, label %block_407b38, label %block_.L_407b3d

block_407b38:                                     ; preds = %block_.L_407b10
  %837 = add i64 %836, 45
  store i64 %837, i64* %3, align 8
  %.pre56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %.pre58 = getelementptr inbounds %union.anon, %union.anon* %.pre56, i64 0, i32 0
  %.pre59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  br label %block_.L_407b65

block_.L_407b3d:                                  ; preds = %block_.L_407b10
  store i64 ptrtoint (%G__0x579f16_type* @G__0x579f16 to i64), i64* %RDI.i260, align 8
  store i64 849, i64* %RSI.i412, align 8
  %RDX.i120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i120, align 8
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i118 = getelementptr inbounds %union.anon, %union.anon* %838, i64 0, i32 0
  store i64 4294967295, i64* %RAX.i118, align 8
  %RCX.i116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4294967295, i64* %RCX.i116, align 8
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %839, align 8
  %840 = add i64 %836, 304467
  %841 = add i64 %836, 40
  %842 = load i64, i64* %6, align 8
  %843 = add i64 %842, -8
  %844 = inttoptr i64 %843 to i64*
  store i64 %841, i64* %844, align 8
  store i64 %843, i64* %6, align 8
  store i64 %840, i64* %3, align 8
  %call2_407b60 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %840, %struct.Memory* %call2_407b25)
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_407b65

block_.L_407b65:                                  ; preds = %block_.L_407b3d, %block_407b38
  %RDX.i93.pre-phi = phi i64* [ %RDX.i120, %block_.L_407b3d ], [ %.pre60, %block_407b38 ]
  %RCX.i100.pre-phi = phi i64* [ %RCX.i116, %block_.L_407b3d ], [ %.pre59, %block_407b38 ]
  %RAX.i103.pre-phi = phi i64* [ %RAX.i118, %block_.L_407b3d ], [ %.pre58, %block_407b38 ]
  %EAX.i102.pre-phi.in = phi %union.anon* [ %838, %block_.L_407b3d ], [ %.pre56, %block_407b38 ]
  %845 = phi i64 [ %.pre50, %block_.L_407b3d ], [ %837, %block_407b38 ]
  %MEMORY.11 = phi %struct.Memory* [ %call2_407b60, %block_.L_407b3d ], [ %call2_407b25, %block_407b38 ]
  %EAX.i102.pre-phi = bitcast %union.anon* %EAX.i102.pre-phi.in to i32*
  %846 = load i64, i64* %RBP.i, align 8
  %847 = add i64 %846, -16
  store i64 %847, i64* %RSI.i412, align 8
  %848 = bitcast [32 x %union.VectorReg]* %39 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %848, align 1
  store i64 0, i64* %RAX.i103.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RCX.i100.pre-phi, align 8
  %849 = add i64 %846, -8
  %850 = add i64 %845, 15
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i64*
  %852 = load i64, i64* %851, align 8
  store i64 %852, i64* %RDI.i260, align 8
  %853 = add i64 %846, -12
  %854 = add i64 %845, 18
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i32*
  %856 = load i32, i32* %855, align 4
  %857 = zext i32 %856 to i64
  store i64 %857, i64* %RDX.i93.pre-phi, align 8
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %859 = bitcast %union.VectorReg* %858 to i8*
  %860 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
  %861 = bitcast %union.VectorReg* %858 to i32*
  store i32 %860, i32* %861, align 1
  %862 = getelementptr inbounds i8, i8* %859, i64 4
  %863 = bitcast i8* %862 to float*
  store float 0.000000e+00, float* %863, align 1
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %865 = bitcast i64* %864 to float*
  store float 0.000000e+00, float* %865, align 1
  %866 = getelementptr inbounds i8, i8* %859, i64 12
  %867 = bitcast i8* %866 to float*
  store float 0.000000e+00, float* %867, align 1
  %868 = add i64 %845, 477995
  %869 = add i64 %845, 32
  %870 = load i64, i64* %6, align 8
  %871 = add i64 %870, -8
  %872 = inttoptr i64 %871 to i64*
  store i64 %869, i64* %872, align 8
  store i64 %871, i64* %6, align 8
  store i64 %868, i64* %3, align 8
  %call2_407b80 = tail call %struct.Memory* @sub_47c690.review_move_reasons(%struct.State* nonnull %0, i64 %868, %struct.Memory* %MEMORY.11)
  %873 = load i32, i32* %EAX.i102.pre-phi, align 4
  %874 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %875 = and i32 %873, 255
  %876 = tail call i32 @llvm.ctpop.i32(i32 %875)
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  %879 = xor i8 %878, 1
  store i8 %879, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %880 = icmp eq i32 %873, 0
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %29, align 1
  %882 = lshr i32 %873, 31
  %883 = trunc i32 %882 to i8
  store i8 %883, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v70 = select i1 %880, i64 64, i64 9
  %884 = add i64 %874, %.v70
  store i64 %884, i64* %3, align 8
  br i1 %880, label %block_.L_407bc5, label %block_407b8e

block_407b8e:                                     ; preds = %block_.L_407b65
  %885 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %886 = and i32 %885, 255
  %887 = tail call i32 @llvm.ctpop.i32(i32 %886)
  %888 = trunc i32 %887 to i8
  %889 = and i8 %888, 1
  %890 = xor i8 %889, 1
  store i8 %890, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %891 = icmp eq i32 %885, 0
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %29, align 1
  %893 = lshr i32 %885, 31
  %894 = trunc i32 %893 to i8
  store i8 %894, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v71 = select i1 %891, i64 14, i64 19
  %895 = add i64 %884, %.v71
  store i64 %895, i64* %3, align 8
  br i1 %891, label %block_407b9c, label %block_.L_407ba1

block_407b9c:                                     ; preds = %block_407b8e
  %896 = add i64 %895, 36
  store i64 %896, i64* %3, align 8
  br label %block_.L_407bc0

block_.L_407ba1:                                  ; preds = %block_407b8e
  store i64 ptrtoint (%G__0x57a10c_type* @G__0x57a10c to i64), i64* %RDI.i260, align 8
  %897 = load i64, i64* %RBP.i, align 8
  %898 = add i64 %897, -8
  %899 = add i64 %895, 14
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i64*
  %901 = load i64, i64* %900, align 8
  store i64 %901, i64* %RAX.i103.pre-phi, align 8
  %902 = add i64 %895, 16
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i32*
  %904 = load i32, i32* %903, align 4
  %905 = zext i32 %904 to i64
  store i64 %905, i64* %RSI.i412, align 8
  %906 = add i64 %897, -16
  %907 = add i64 %895, 21
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %906 to float*
  %909 = load float, float* %908, align 4
  %910 = fpext float %909 to double
  %911 = bitcast [32 x %union.VectorReg]* %39 to double*
  store double %910, double* %911, align 1
  %AL.i71 = bitcast %union.anon* %EAX.i102.pre-phi.in to i8*
  store i8 1, i8* %AL.i71, align 1
  %912 = add i64 %895, 303631
  %913 = add i64 %895, 28
  %914 = load i64, i64* %6, align 8
  %915 = add i64 %914, -8
  %916 = inttoptr i64 %915 to i64*
  store i64 %913, i64* %916, align 8
  store i64 %915, i64* %6, align 8
  store i64 %912, i64* %3, align 8
  %call2_407bb8 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %912, %struct.Memory* %call2_407b80)
  %917 = load i64, i64* %RBP.i, align 8
  %918 = add i64 %917, -88
  %919 = load i32, i32* %EAX.i102.pre-phi, align 4
  %920 = load i64, i64* %3, align 8
  %921 = add i64 %920, 3
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %918 to i32*
  store i32 %919, i32* %922, align 4
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_407bc0

block_.L_407bc0:                                  ; preds = %block_.L_407ba1, %block_407b9c
  %923 = phi i64 [ %.pre51, %block_.L_407ba1 ], [ %896, %block_407b9c ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_407bb8, %block_.L_407ba1 ], [ %call2_407b80, %block_407b9c ]
  %924 = add i64 %923, 5
  store i64 %924, i64* %3, align 8
  br label %block_.L_407bc5

block_.L_407bc5:                                  ; preds = %block_.L_407bc0, %block_.L_407b65
  %925 = phi i64 [ %884, %block_.L_407b65 ], [ %924, %block_.L_407bc0 ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_407b80, %block_.L_407b65 ], [ %MEMORY.12, %block_.L_407bc0 ]
  %926 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %927 = and i32 %926, 255
  %928 = tail call i32 @llvm.ctpop.i32(i32 %927)
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  %931 = xor i8 %930, 1
  store i8 %931, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %932 = icmp eq i32 %926, 0
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %29, align 1
  %934 = lshr i32 %926, 31
  %935 = trunc i32 %934 to i8
  store i8 %935, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v72 = select i1 %932, i64 14, i64 19
  %936 = add i64 %925, %.v72
  store i64 %936, i64* %3, align 8
  br i1 %932, label %block_407bd3, label %block_.L_407bd8

block_407bd3:                                     ; preds = %block_.L_407bc5
  %937 = add i64 %936, 45
  store i64 %937, i64* %3, align 8
  br label %block_.L_407c00

block_.L_407bd8:                                  ; preds = %block_.L_407bc5
  store i64 ptrtoint (%G__0x579f16_type* @G__0x579f16 to i64), i64* %RDI.i260, align 8
  store i64 854, i64* %RSI.i412, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i93.pre-phi, align 8
  store i64 4294967295, i64* %RAX.i103.pre-phi, align 8
  store i64 4294967295, i64* %RCX.i100.pre-phi, align 8
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %938, align 8
  %939 = add i64 %936, 304312
  %940 = add i64 %936, 40
  %941 = load i64, i64* %6, align 8
  %942 = add i64 %941, -8
  %943 = inttoptr i64 %942 to i64*
  store i64 %940, i64* %943, align 8
  store i64 %942, i64* %6, align 8
  store i64 %939, i64* %3, align 8
  %call2_407bfb = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %939, %struct.Memory* %MEMORY.13)
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_407c00

block_.L_407c00:                                  ; preds = %block_.L_407bd8, %block_407bd3
  %944 = phi i64 [ %.pre52, %block_.L_407bd8 ], [ %937, %block_407bd3 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_407bfb, %block_.L_407bd8 ], [ %MEMORY.13, %block_407bd3 ]
  %945 = bitcast [32 x %union.VectorReg]* %39 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %945, align 1
  %946 = load i64, i64* %RBP.i, align 8
  %947 = add i64 %946, -16
  %948 = add i64 %944, 8
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to float*
  %950 = load float, float* %949, align 4
  %951 = fpext float %950 to double
  %952 = bitcast %union.VectorReg* %858 to double*
  store double %951, double* %952, align 1
  %953 = add i64 %944, 12
  store i64 %953, i64* %3, align 8
  %954 = bitcast [32 x %union.VectorReg]* %39 to double*
  %955 = load double, double* %954, align 1
  %956 = fcmp uno double %955, %951
  br i1 %956, label %957, label %967

; <label>:957:                                    ; preds = %block_.L_407c00
  %958 = fadd double %951, %955
  %959 = bitcast double %958 to i64
  %960 = and i64 %959, 9221120237041090560
  %961 = icmp eq i64 %960, 9218868437227405312
  %962 = and i64 %959, 2251799813685247
  %963 = icmp ne i64 %962, 0
  %964 = and i1 %961, %963
  br i1 %964, label %965, label %973

; <label>:965:                                    ; preds = %957
  %966 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %953, %struct.Memory* %MEMORY.14)
  %.pre53 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:967:                                    ; preds = %block_.L_407c00
  %968 = fcmp ogt double %955, %951
  br i1 %968, label %973, label %969

; <label>:969:                                    ; preds = %967
  %970 = fcmp olt double %955, %951
  br i1 %970, label %973, label %971

; <label>:971:                                    ; preds = %969
  %972 = fcmp oeq double %955, %951
  br i1 %972, label %973, label %977

; <label>:973:                                    ; preds = %971, %969, %967, %957
  %974 = phi i8 [ 0, %967 ], [ 0, %969 ], [ 1, %971 ], [ 1, %957 ]
  %975 = phi i8 [ 0, %967 ], [ 0, %969 ], [ 0, %971 ], [ 1, %957 ]
  %976 = phi i8 [ 0, %967 ], [ 1, %969 ], [ 0, %971 ], [ 1, %957 ]
  store i8 %974, i8* %29, align 1
  store i8 %975, i8* %21, align 1
  store i8 %976, i8* %14, align 1
  br label %977

; <label>:977:                                    ; preds = %973, %971
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %977, %965
  %978 = phi i64 [ %.pre53, %965 ], [ %953, %977 ]
  %979 = phi %struct.Memory* [ %966, %965 ], [ %MEMORY.14, %977 ]
  %980 = load i8, i8* %14, align 1
  %981 = load i8, i8* %29, align 1
  %982 = or i8 %981, %980
  %983 = icmp ne i8 %982, 0
  %.v76 = select i1 %983, i64 60, i64 6
  %984 = add i64 %978, %.v76
  %985 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %986 = and i32 %985, 255
  %987 = tail call i32 @llvm.ctpop.i32(i32 %986)
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  %990 = xor i8 %989, 1
  store i8 %990, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %991 = icmp eq i32 %985, 0
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %29, align 1
  %993 = lshr i32 %985, 31
  %994 = trunc i32 %993 to i8
  store i8 %994, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v73 = select i1 %991, i64 14, i64 19
  %995 = add i64 %984, %.v73
  store i64 %995, i64* %3, align 8
  br i1 %983, label %block_.L_407c48, label %block_407c12

block_407c12:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  br i1 %991, label %block_407c20, label %block_.L_407c25

block_407c20:                                     ; preds = %block_407c12
  %996 = add i64 %995, 25
  store i64 %996, i64* %3, align 8
  br label %block_.L_407c39

block_.L_407c25:                                  ; preds = %block_407c12
  store i64 ptrtoint (%G__0x57a135_type* @G__0x57a135 to i64), i64* %RDI.i260, align 8
  %AL.i34 = bitcast %union.anon* %EAX.i102.pre-phi.in to i8*
  store i8 0, i8* %AL.i34, align 1
  %997 = add i64 %995, 303499
  %998 = add i64 %995, 17
  %999 = load i64, i64* %6, align 8
  %1000 = add i64 %999, -8
  %1001 = inttoptr i64 %1000 to i64*
  store i64 %998, i64* %1001, align 8
  store i64 %1000, i64* %6, align 8
  store i64 %997, i64* %3, align 8
  %call2_407c31 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %997, %struct.Memory* %979)
  %1002 = load i64, i64* %RBP.i, align 8
  %1003 = add i64 %1002, -92
  %1004 = load i32, i32* %EAX.i102.pre-phi, align 4
  %1005 = load i64, i64* %3, align 8
  %1006 = add i64 %1005, 3
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1003 to i32*
  store i32 %1004, i32* %1007, align 4
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_407c39

block_.L_407c39:                                  ; preds = %block_.L_407c25, %block_407c20
  %1008 = phi i64 [ %.pre54, %block_.L_407c25 ], [ %996, %block_407c20 ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_407c31, %block_.L_407c25 ], [ %979, %block_407c20 ]
  %1009 = load i64, i64* %RBP.i, align 8
  %1010 = add i64 %1009, -8
  %1011 = add i64 %1008, 4
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i64*
  %1013 = load i64, i64* %1012, align 8
  store i64 %1013, i64* %RAX.i103.pre-phi, align 8
  %1014 = add i64 %1008, 10
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i32*
  store i32 0, i32* %1015, align 4
  %1016 = load i64, i64* %3, align 8
  %1017 = add i64 %1016, 60
  br label %block_.L_407c7f

block_.L_407c48:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  br i1 %991, label %block_407c56, label %block_.L_407c5b

block_407c56:                                     ; preds = %block_.L_407c48
  %1018 = add i64 %995, 36
  store i64 %1018, i64* %3, align 8
  br label %block_.L_407c7a

block_.L_407c5b:                                  ; preds = %block_.L_407c48
  store i64 ptrtoint (%G__0x57a13e_type* @G__0x57a13e to i64), i64* %RDI.i260, align 8
  %1019 = load i64, i64* %RBP.i, align 8
  %1020 = add i64 %1019, -8
  %1021 = add i64 %995, 14
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i64*
  %1023 = load i64, i64* %1022, align 8
  store i64 %1023, i64* %RAX.i103.pre-phi, align 8
  %1024 = add i64 %995, 16
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i32*
  %1026 = load i32, i32* %1025, align 4
  %1027 = zext i32 %1026 to i64
  store i64 %1027, i64* %RSI.i412, align 8
  %1028 = add i64 %1019, -16
  %1029 = add i64 %995, 21
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1028 to float*
  %1031 = load float, float* %1030, align 4
  %1032 = fpext float %1031 to double
  store double %1032, double* %954, align 1
  %AL.i = bitcast %union.anon* %EAX.i102.pre-phi.in to i8*
  store i8 1, i8* %AL.i, align 1
  %1033 = add i64 %995, 303445
  %1034 = add i64 %995, 28
  %1035 = load i64, i64* %6, align 8
  %1036 = add i64 %1035, -8
  %1037 = inttoptr i64 %1036 to i64*
  store i64 %1034, i64* %1037, align 8
  store i64 %1036, i64* %6, align 8
  store i64 %1033, i64* %3, align 8
  %call2_407c72 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1033, %struct.Memory* %979)
  %1038 = load i64, i64* %RBP.i, align 8
  %1039 = add i64 %1038, -96
  %1040 = load i32, i32* %EAX.i102.pre-phi, align 4
  %1041 = load i64, i64* %3, align 8
  %1042 = add i64 %1041, 3
  store i64 %1042, i64* %3, align 8
  %1043 = inttoptr i64 %1039 to i32*
  store i32 %1040, i32* %1043, align 4
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_407c7a

block_.L_407c7a:                                  ; preds = %block_.L_407c5b, %block_407c56
  %1044 = phi i64 [ %.pre55, %block_.L_407c5b ], [ %1018, %block_407c56 ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_407c72, %block_.L_407c5b ], [ %979, %block_407c56 ]
  %1045 = add i64 %1044, 5
  store i64 %1045, i64* %3, align 8
  br label %block_.L_407c7f

block_.L_407c7f:                                  ; preds = %block_.L_407c7a, %block_.L_407c39
  %storemerge = phi i64 [ %1017, %block_.L_407c39 ], [ %1045, %block_.L_407c7a ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.15, %block_.L_407c39 ], [ %MEMORY.16, %block_.L_407c7a ]
  %1046 = load i64, i64* %RBP.i, align 8
  %1047 = add i64 %1046, -16
  %1048 = add i64 %storemerge, 5
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1047 to float*
  %1050 = load float, float* %1049, align 4
  %1051 = tail call float @llvm.trunc.f32(float %1050)
  %1052 = tail call float @llvm.fabs.f32(float %1051)
  %1053 = fcmp ogt float %1052, 0x41E0000000000000
  %1054 = fptosi float %1051 to i32
  %1055 = zext i32 %1054 to i64
  %1056 = select i1 %1053, i64 2147483648, i64 %1055
  store i64 %1056, i64* %RAX.i103.pre-phi, align 8
  %1057 = load i64, i64* %6, align 8
  %1058 = add i64 %1057, 96
  store i64 %1058, i64* %6, align 8
  %1059 = icmp ugt i64 %1057, -97
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %14, align 1
  %1061 = trunc i64 %1058 to i32
  %1062 = and i32 %1061, 255
  %1063 = tail call i32 @llvm.ctpop.i32(i32 %1062)
  %1064 = trunc i32 %1063 to i8
  %1065 = and i8 %1064, 1
  %1066 = xor i8 %1065, 1
  store i8 %1066, i8* %21, align 1
  %1067 = xor i64 %1058, %1057
  %1068 = lshr i64 %1067, 4
  %1069 = trunc i64 %1068 to i8
  %1070 = and i8 %1069, 1
  store i8 %1070, i8* %26, align 1
  %1071 = icmp eq i64 %1058, 0
  %1072 = zext i1 %1071 to i8
  store i8 %1072, i8* %29, align 1
  %1073 = lshr i64 %1058, 63
  %1074 = trunc i64 %1073 to i8
  store i8 %1074, i8* %32, align 1
  %1075 = lshr i64 %1057, 63
  %1076 = xor i64 %1073, %1075
  %1077 = add nuw nsw i64 %1076, %1073
  %1078 = icmp eq i64 %1077, 2
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %38, align 1
  %1080 = add i64 %storemerge, 10
  store i64 %1080, i64* %3, align 8
  %1081 = add i64 %1057, 104
  %1082 = inttoptr i64 %1058 to i64*
  %1083 = load i64, i64* %1082, align 8
  store i64 %1083, i64* %RBP.i, align 8
  store i64 %1081, i64* %6, align 8
  %1084 = add i64 %storemerge, 11
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1081 to i64*
  %1086 = load i64, i64* %1085, align 8
  store i64 %1086, i64* %3, align 8
  %1087 = add i64 %1057, 112
  store i64 %1087, i64* %6, align 8
  ret %struct.Memory* %MEMORY.17
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
define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 96
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
define %struct.Memory* @routine_movss_0xdb8d4__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xdb8d4__rip__type* @G_0xdb8d4__rip_ to i64)
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
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
define %struct.Memory* @routine_callq_.reset_engine(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x63___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 99, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_callq_.examine_position(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x8__0x7ae448(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae448_type* @G_0x7ae448 to i32*), align 8
  %6 = add i32 %5, -8
  %7 = icmp ult i32 %5, 8
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
define %struct.Memory* @routine_jl_.L_407a98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xab0f18___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xab0f18_type* @G__0xab0f18 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xab0f1c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xab0f1c_type* @G__0xab0f1c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.estimate_score(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4078a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xab0f10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f10_type* @G_0xab0f10 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_407a60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xab0f18___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
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

define %struct.Memory* @routine_ucomiss_0xab0f1c___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*), align 8
  %10 = fcmp uno float %8, %9
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %block_400488
  %12 = fadd float %8, %9
  %13 = bitcast float %12 to i32
  %14 = and i32 %13, 2143289344
  %15 = icmp eq i32 %14, 2139095040
  %16 = and i32 %13, 4194303
  %17 = icmp ne i32 %16, 0
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %11
  %20 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:21:                                     ; preds = %block_400488
  %22 = fcmp ogt float %8, %9
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %21
  %24 = fcmp olt float %8, %9
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp oeq float %8, %9
  br i1 %26, label %27, label %34

; <label>:27:                                     ; preds = %25, %23, %21, %11
  %28 = phi i8 [ 0, %21 ], [ 0, %23 ], [ 1, %25 ], [ 1, %11 ]
  %29 = phi i8 [ 0, %21 ], [ 0, %23 ], [ 0, %25 ], [ 1, %11 ]
  %30 = phi i8 [ 0, %21 ], [ 1, %23 ], [ 0, %25 ], [ 1, %11 ]
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %33, align 1
  br label %34

; <label>:34:                                     ; preds = %27, %25
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %34, %19
  %38 = phi %struct.Memory* [ %20, %19 ], [ %2, %34 ]
  ret %struct.Memory* %38
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40794a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_40794a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x579da7___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579daa___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xab0f18___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
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
define %struct.Memory* @routine_cmovaq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp eq i8 %10, 0
  %12 = load i64, i64* %RAX, align 8
  %13 = select i1 %11, i64 %3, i64 %12
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss_0xab0f18___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*), align 8
  %10 = fcmp uno float %8, %9
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %block_400488
  %12 = fadd float %8, %9
  %13 = bitcast float %12 to i32
  %14 = and i32 %13, 2143289344
  %15 = icmp eq i32 %14, 2139095040
  %16 = and i32 %13, 4194303
  %17 = icmp ne i32 %16, 0
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %11
  %20 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:21:                                     ; preds = %block_400488
  %22 = fcmp ogt float %8, %9
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %21
  %24 = fcmp olt float %8, %9
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp oeq float %8, %9
  br i1 %26, label %27, label %34

; <label>:27:                                     ; preds = %25, %23, %21, %11
  %28 = phi i8 [ 0, %21 ], [ 0, %23 ], [ 1, %25 ], [ 1, %11 ]
  %29 = phi i8 [ 0, %21 ], [ 0, %23 ], [ 0, %25 ], [ 1, %11 ]
  %30 = phi i8 [ 0, %21 ], [ 1, %23 ], [ 0, %25 ], [ 1, %11 ]
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %33, align 1
  br label %34

; <label>:34:                                     ; preds = %27, %25
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %34, %19
  %38 = phi %struct.Memory* [ %20, %19 ], [ %2, %34 ]
  ret %struct.Memory* %38
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_407916(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movd__xmm0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  %7 = trunc i64 %6 to i32
  %8 = bitcast i64* %RAX to [2 x i32]*
  %9 = bitcast i64* %RAX to i32*
  store i32 %7, i32* %9, align 1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__0x80000000___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, -2147483648
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movd__eax___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jmpq_.L_407924(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq__0x57a0c7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a0c7_type* @G__0x57a0c7 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_407a50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_4079a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4079b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x34__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xab0f1c___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to i32*), align 8
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

define %struct.Memory* @routine_ucomiss__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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

define %struct.Memory* @routine_ucomiss_0xab0f1c___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*), align 8
  %10 = fcmp uno float %8, %9
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %block_400488
  %12 = fadd float %8, %9
  %13 = bitcast float %12 to i32
  %14 = and i32 %13, 2143289344
  %15 = icmp eq i32 %14, 2139095040
  %16 = and i32 %13, 4194303
  %17 = icmp ne i32 %16, 0
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %11
  %20 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:21:                                     ; preds = %block_400488
  %22 = fcmp ogt float %8, %9
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %21
  %24 = fcmp olt float %8, %9
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp oeq float %8, %9
  br i1 %26, label %27, label %34

; <label>:27:                                     ; preds = %25, %23, %21, %11
  %28 = phi i8 [ 0, %21 ], [ 0, %23 ], [ 1, %25 ], [ 1, %11 ]
  %29 = phi i8 [ 0, %21 ], [ 0, %23 ], [ 0, %25 ], [ 1, %11 ]
  %30 = phi i8 [ 0, %21 ], [ 1, %23 ], [ 0, %25 ], [ 1, %11 ]
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %33, align 1
  br label %34

; <label>:34:                                     ; preds = %27, %25
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %34, %19
  %38 = phi %struct.Memory* [ %20, %19 ], [ %2, %34 ]
  ret %struct.Memory* %38
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_jbe_.L_407a18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xab0f1c___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to i32*), align 8
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
define %struct.Memory* @routine_jmpq_.L_407a26(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x4c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a0df___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a0df_type* @G__0x57a0df to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = extractelement <2 x float> %8, i32 0
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_callq_.fflush_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
  %19 = xor i32 %9, %8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_407a81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0xab0f14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_407a93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_407aa4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_407ab7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_407adf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579f16___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579f16_type* @G__0x579f16 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x33f___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 831, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.worm_reasons(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xab0f28___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_407b10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xab0f28___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = icmp ne i32 %6, 0
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
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.owl_reasons(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl__edi__0xab0f28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.combinations(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_407b3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_407b65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x351___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 849, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_callq_.review_move_reasons(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_407bc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_407ba1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_407bc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a10c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a10c_type* @G__0x57a10c to i64), i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_407bc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_407bd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_407c00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x356___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 854, i64* %RSI, align 8
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
define %struct.Memory* @routine_jbe_.L_407c48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_407c25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_407c39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a135___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a135_type* @G__0x57a135 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_407c7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_407c5b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_407c7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a13e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a13e_type* @G__0x57a13e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to float*
  %8 = load float, float* %7, align 4
  %9 = tail call float @llvm.trunc.f32(float %8)
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = fcmp ogt float %10, 0x41E0000000000000
  %12 = fptosi float %9 to i32
  %13 = zext i32 %12 to i64
  %14 = select i1 %11, i64 2147483648, i64 %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -97
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
