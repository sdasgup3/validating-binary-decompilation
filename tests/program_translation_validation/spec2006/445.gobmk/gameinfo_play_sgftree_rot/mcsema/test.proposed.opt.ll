; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xafdfb0_type = type <{ [4 x i8] }>
%G_0xb4097__rip__type = type <{ [4 x i8] }>
%G_0xb40a5__rip__type = type <{ [4 x i8] }>
%G_0xb6eec4_type = type <{ [4 x i8] }>
%G__0x579c47_type = type <{ [8 x i8] }>
%G__0x579c4a_type = type <{ [8 x i8] }>
%G__0x57ca87_type = type <{ [8 x i8] }>
%G__0x57cac0_type = type <{ [8 x i8] }>
%G__0x57cad7_type = type <{ [8 x i8] }>
%G__0x57caf9_type = type <{ [8 x i8] }>
%G__0x57cb03_type = type <{ [8 x i8] }>
%G__0x57cb47_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = local_unnamed_addr global %G_0x7ae438_type zeroinitializer
@G_0xab0f24 = local_unnamed_addr global %G_0xab0f24_type zeroinitializer
@G_0xafdfb0 = local_unnamed_addr global %G_0xafdfb0_type zeroinitializer
@G_0xb4097__rip_ = global %G_0xb4097__rip__type zeroinitializer
@G_0xb40a5__rip_ = global %G_0xb40a5__rip__type zeroinitializer
@G_0xb6eec4 = local_unnamed_addr global %G_0xb6eec4_type zeroinitializer
@G__0x579c47 = global %G__0x579c47_type zeroinitializer
@G__0x579c4a = global %G__0x579c4a_type zeroinitializer
@G__0x57ca87 = global %G__0x57ca87_type zeroinitializer
@G__0x57cac0 = global %G__0x57cac0_type zeroinitializer
@G__0x57cad7 = global %G__0x57cad7_type zeroinitializer
@G__0x57caf9 = global %G__0x57caf9_type zeroinitializer
@G__0x57cb03 = global %G__0x57cb03_type zeroinitializer
@G__0x57cb47 = global %G__0x57cb47_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @atoi(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_401e00.sgfGetFloatProperty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401d60.sgfGetIntProperty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_42e430.gnugo_clear_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_42e4a0.gnugo_set_komi(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4044c0.sgftreeForward(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4013e0.get_moveXY(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4e2990.rotate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_42e4c0.gnugo_add_stone(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_42ea30.gnugo_sethand(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402030.sgfOverwritePropertyInt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404430.sgftreeBack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_42e550.gnugo_play_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f200.is_ko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @gameinfo_play_sgftree_rot(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -184
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 176
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i951 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 ptrtoint (%G__0x579c4a_type* @G__0x579c4a to i64), i64* %RAX.i951, align 8
  %R8.i949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %41 = add i64 %7, -56
  store i64 %41, i64* %R8.i949, align 8
  %RDI.i945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %42 = add i64 %7, -24
  %43 = load i64, i64* %RDI.i945, align 8
  %44 = add i64 %10, 28
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %45, align 8
  %RSI.i942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -24
  %48 = load i64, i64* %RSI.i942, align 8
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i64*
  store i64 %48, i64* %51, align 8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i939 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -32
  %55 = load i64, i64* %RDX.i939, align 8
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 4
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %58, align 8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i936 = bitcast %union.anon* %59 to i32*
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -36
  %62 = load i32, i32* %ECX.i936, align 4
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 3
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %65, align 4
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -52
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 7
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %67 to i32*
  store i32 2, i32* %70, align 4
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -56
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 7
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %72 to i32*
  store i32 -1, i32* %75, align 4
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -60
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 7
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %77 to i32*
  store i32 -1, i32* %80, align 4
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -64
  %83 = load i64, i64* %3, align 8
  %84 = add i64 %83, 7
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %82 to i32*
  store i32 9999, i32* %85, align 4
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -68
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 7
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %87 to i32*
  store i32 0, i32* %90, align 4
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -24
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 4
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %92 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %RDX.i939, align 8
  %97 = add i64 %93, 7
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %RDI.i945, align 8
  %100 = load i64, i64* %RAX.i951, align 8
  store i64 %100, i64* %RSI.i942, align 8
  %101 = load i64, i64* %R8.i949, align 8
  store i64 %101, i64* %RDX.i939, align 8
  %102 = add i64 %93, -184939
  %103 = add i64 %93, 18
  %104 = load i64, i64* %6, align 8
  %105 = add i64 %104, -8
  %106 = inttoptr i64 %105 to i64*
  store i64 %103, i64* %106, align 8
  store i64 %105, i64* %6, align 8
  store i64 %102, i64* %3, align 8
  %call2_42f078 = tail call %struct.Memory* @sub_401e00.sgfGetFloatProperty(%struct.State* %0, i64 %102, %struct.Memory* %2)
  %EAX.i912 = bitcast %union.anon* %40 to i32*
  %107 = load i32, i32* %EAX.i912, align 4
  %108 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %109 = and i32 %107, 255
  %110 = tail call i32 @llvm.ctpop.i32(i32 %109)
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %114 = icmp eq i32 %107, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %30, align 1
  %116 = lshr i32 %107, 31
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v = select i1 %114, i64 9, i64 58
  %118 = add i64 %108, %.v
  store i64 %118, i64* %3, align 8
  br i1 %114, label %block_42f086, label %block_.L_42f0b7

block_42f086:                                     ; preds = %entry
  %119 = load i64, i64* %RBP.i, align 8
  %120 = add i64 %119, -16
  %121 = add i64 %118, 4
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %120 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %RAX.i951, align 8
  %124 = add i64 %118, 7
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %123 to i32*
  %126 = load i32, i32* %125, align 4
  store i8 0, i8* %14, align 1
  %127 = and i32 %126, 255
  %128 = tail call i32 @llvm.ctpop.i32(i32 %127)
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %131 = xor i8 %130, 1
  store i8 %131, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %132 = icmp eq i32 %126, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %30, align 1
  %134 = lshr i32 %126, 31
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v157 = select i1 %132, i64 13, i64 31
  %136 = add i64 %118, %.v157
  store i64 %136, i64* %3, align 8
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %138 = bitcast %union.VectorReg* %137 to i8*
  br i1 %132, label %block_42f093, label %block_.L_42f0a5

block_42f093:                                     ; preds = %block_42f086
  %139 = add i64 %136, ptrtoint (%G_0xb40a5__rip__type* @G_0xb40a5__rip_ to i64)
  %140 = add i64 %136, 8
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %139 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = bitcast %union.VectorReg* %137 to i32*
  store i32 %142, i32* %143, align 1
  %144 = getelementptr inbounds i8, i8* %138, i64 4
  %145 = bitcast i8* %144 to float*
  store float 0.000000e+00, float* %145, align 1
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %147 = bitcast i64* %146 to float*
  store float 0.000000e+00, float* %147, align 1
  %148 = getelementptr inbounds i8, i8* %138, i64 12
  %149 = bitcast i8* %148 to float*
  store float 0.000000e+00, float* %149, align 1
  %150 = add i64 %119, -48
  %151 = add i64 %136, 13
  store i64 %151, i64* %3, align 8
  %152 = bitcast %union.VectorReg* %137 to <2 x float>*
  %153 = load <2 x float>, <2 x float>* %152, align 1
  %154 = extractelement <2 x float> %153, i32 0
  %155 = inttoptr i64 %150 to float*
  store float %154, float* %155, align 4
  %156 = load i64, i64* %3, align 8
  %157 = add i64 %156, 18
  store i64 %157, i64* %3, align 8
  br label %block_.L_42f0b2

block_.L_42f0a5:                                  ; preds = %block_42f086
  %158 = add i64 %136, ptrtoint (%G_0xb4097__rip__type* @G_0xb4097__rip_ to i64)
  %159 = add i64 %136, 8
  store i64 %159, i64* %3, align 8
  %160 = inttoptr i64 %158 to i32*
  %161 = load i32, i32* %160, align 4
  %162 = bitcast %union.VectorReg* %137 to i32*
  store i32 %161, i32* %162, align 1
  %163 = getelementptr inbounds i8, i8* %138, i64 4
  %164 = bitcast i8* %163 to float*
  store float 0.000000e+00, float* %164, align 1
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %166 = bitcast i64* %165 to float*
  store float 0.000000e+00, float* %166, align 1
  %167 = getelementptr inbounds i8, i8* %138, i64 12
  %168 = bitcast i8* %167 to float*
  store float 0.000000e+00, float* %168, align 1
  %169 = add i64 %119, -48
  %170 = add i64 %136, 13
  store i64 %170, i64* %3, align 8
  %171 = bitcast %union.VectorReg* %137 to <2 x float>*
  %172 = load <2 x float>, <2 x float>* %171, align 1
  %173 = extractelement <2 x float> %172, i32 0
  %174 = inttoptr i64 %169 to float*
  store float %173, float* %174, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_42f0b2

block_.L_42f0b2:                                  ; preds = %block_.L_42f0a5, %block_42f093
  %175 = phi i64 [ %.pre, %block_.L_42f0a5 ], [ %157, %block_42f093 ]
  %176 = add i64 %175, 5
  store i64 %176, i64* %3, align 8
  br label %block_.L_42f0b7

block_.L_42f0b7:                                  ; preds = %entry, %block_.L_42f0b2
  %177 = phi i64 [ %176, %block_.L_42f0b2 ], [ %118, %entry ]
  store i64 ptrtoint (%G__0x579c47_type* @G__0x579c47 to i64), i64* %RSI.i942, align 8
  %178 = load i64, i64* %RBP.i, align 8
  %179 = add i64 %178, -40
  store i64 %179, i64* %RDX.i939, align 8
  %180 = add i64 %178, -24
  %181 = add i64 %177, 18
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i64*
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %RAX.i951, align 8
  %184 = add i64 %177, 21
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %RDI.i945, align 8
  %187 = add i64 %177, -185175
  %188 = add i64 %177, 26
  %189 = load i64, i64* %6, align 8
  %190 = add i64 %189, -8
  %191 = inttoptr i64 %190 to i64*
  store i64 %188, i64* %191, align 8
  store i64 %190, i64* %6, align 8
  store i64 %187, i64* %3, align 8
  %call2_42f0cc = tail call %struct.Memory* @sub_401d60.sgfGetIntProperty(%struct.State* nonnull %0, i64 %187, %struct.Memory* %call2_42f078)
  %192 = load i32, i32* %EAX.i912, align 4
  %193 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %194 = and i32 %192, 255
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194)
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  store i8 %198, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %199 = icmp eq i32 %192, 0
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %30, align 1
  %201 = lshr i32 %192, 31
  %202 = trunc i32 %201 to i8
  store i8 %202, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v125 = select i1 %199, i64 9, i64 16
  %203 = add i64 %193, %.v125
  store i64 %203, i64* %3, align 8
  br i1 %199, label %block_42f0da, label %block_.L_42f0e1

block_42f0da:                                     ; preds = %block_.L_42f0b7
  %204 = load i64, i64* %RBP.i, align 8
  %205 = add i64 %204, -40
  %206 = add i64 %203, 7
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %205 to i32*
  store i32 19, i32* %207, align 4
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_42f0e1

block_.L_42f0e1:                                  ; preds = %block_.L_42f0b7, %block_42f0da
  %208 = phi i64 [ %.pre102, %block_42f0da ], [ %203, %block_.L_42f0b7 ]
  %209 = load i64, i64* %RBP.i, align 8
  %210 = add i64 %209, -40
  %211 = add i64 %208, 3
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RDI.i945, align 8
  %215 = add i64 %208, -3249
  %216 = add i64 %208, 8
  %217 = load i64, i64* %6, align 8
  %218 = add i64 %217, -8
  %219 = inttoptr i64 %218 to i64*
  store i64 %216, i64* %219, align 8
  store i64 %218, i64* %6, align 8
  store i64 %215, i64* %3, align 8
  %call2_42f0e4 = tail call %struct.Memory* @sub_42e430.gnugo_clear_board(%struct.State* nonnull %0, i64 %215, %struct.Memory* %call2_42f0cc)
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %221 = bitcast %union.VectorReg* %220 to i8*
  %222 = load i64, i64* %RBP.i, align 8
  %223 = add i64 %222, -48
  %224 = load i64, i64* %3, align 8
  %225 = add i64 %224, 5
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %223 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = bitcast %union.VectorReg* %220 to i32*
  store i32 %227, i32* %228, align 1
  %229 = getelementptr inbounds i8, i8* %221, i64 4
  %230 = bitcast i8* %229 to float*
  store float 0.000000e+00, float* %230, align 1
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %232 = bitcast i64* %231 to float*
  store float 0.000000e+00, float* %232, align 1
  %233 = getelementptr inbounds i8, i8* %221, i64 12
  %234 = bitcast i8* %233 to float*
  store float 0.000000e+00, float* %234, align 1
  %235 = add i64 %224, -3145
  %236 = add i64 %224, 10
  %237 = load i64, i64* %6, align 8
  %238 = add i64 %237, -8
  %239 = inttoptr i64 %238 to i64*
  store i64 %236, i64* %239, align 8
  store i64 %238, i64* %6, align 8
  store i64 %235, i64* %3, align 8
  %call2_42f0ee = tail call %struct.Memory* @sub_42e4a0.gnugo_set_komi(%struct.State* nonnull %0, i64 %235, %struct.Memory* %call2_42f0e4)
  %240 = load i64, i64* %RBP.i, align 8
  %241 = add i64 %240, -32
  %242 = load i64, i64* %3, align 8
  %243 = add i64 %242, 5
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %241 to i64*
  %245 = load i64, i64* %244, align 8
  store i8 0, i8* %14, align 1
  %246 = trunc i64 %245 to i32
  %247 = and i32 %246, 255
  %248 = tail call i32 @llvm.ctpop.i32(i32 %247)
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  %251 = xor i8 %250, 1
  store i8 %251, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %252 = icmp eq i64 %245, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %30, align 1
  %254 = lshr i64 %245, 63
  %255 = trunc i64 %254 to i8
  store i8 %255, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v126 = select i1 %252, i64 250, i64 11
  %256 = add i64 %242, %.v126
  store i64 %256, i64* %3, align 8
  br i1 %252, label %block_.L_42f1ed, label %block_42f0fe

block_42f0fe:                                     ; preds = %block_.L_42f0e1
  %257 = add i64 %256, 4
  store i64 %257, i64* %3, align 8
  %258 = load i64, i64* %244, align 8
  store i64 %258, i64* %RAX.i951, align 8
  %RCX.i862 = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0
  %259 = add i64 %256, 7
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %258 to i8*
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i64
  %263 = and i64 %262, 4294967295
  store i64 %263, i64* %RCX.i862, align 8
  %264 = sext i8 %261 to i32
  %265 = add nsw i32 %264, -48
  %266 = icmp ult i8 %261, 48
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %14, align 1
  %268 = and i32 %265, 255
  %269 = tail call i32 @llvm.ctpop.i32(i32 %268)
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = xor i8 %271, 1
  store i8 %272, i8* %21, align 1
  %273 = xor i32 %264, 16
  %274 = xor i32 %273, %265
  %275 = lshr i32 %274, 4
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  store i8 %277, i8* %27, align 1
  %278 = icmp eq i32 %265, 0
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %30, align 1
  %280 = lshr i32 %265, 31
  %281 = trunc i32 %280 to i8
  store i8 %281, i8* %33, align 1
  %282 = lshr i32 %264, 31
  %283 = xor i32 %280, %282
  %284 = add nuw nsw i32 %283, %282
  %285 = icmp eq i32 %284, 2
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %39, align 1
  %287 = icmp ne i8 %281, 0
  %288 = xor i1 %287, %285
  %289 = or i1 %278, %288
  %.v127 = select i1 %289, i64 98, i64 16
  %290 = add i64 %256, %.v127
  store i64 %290, i64* %3, align 8
  br i1 %289, label %block_.L_42f160, label %block_42f10e

block_42f10e:                                     ; preds = %block_42f0fe
  %291 = add i64 %290, 4
  store i64 %291, i64* %3, align 8
  %292 = load i64, i64* %244, align 8
  store i64 %292, i64* %RAX.i951, align 8
  %293 = add i64 %290, 7
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i8*
  %295 = load i8, i8* %294, align 1
  %296 = sext i8 %295 to i64
  %297 = and i64 %296, 4294967295
  store i64 %297, i64* %RCX.i862, align 8
  %298 = sext i8 %295 to i32
  %299 = add nsw i32 %298, -57
  %300 = icmp ult i8 %295, 57
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %14, align 1
  %302 = and i32 %299, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302)
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %21, align 1
  %307 = xor i32 %298, 16
  %308 = xor i32 %307, %299
  %309 = lshr i32 %308, 4
  %310 = trunc i32 %309 to i8
  %311 = and i8 %310, 1
  store i8 %311, i8* %27, align 1
  %312 = icmp eq i32 %299, 0
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %30, align 1
  %314 = lshr i32 %299, 31
  %315 = trunc i32 %314 to i8
  store i8 %315, i8* %33, align 1
  %316 = lshr i32 %298, 31
  %317 = xor i32 %314, %316
  %318 = add nuw nsw i32 %317, %316
  %319 = icmp eq i32 %318, 2
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %39, align 1
  %321 = icmp ne i8 %315, 0
  %322 = xor i1 %321, %319
  %.demorgan = or i1 %312, %322
  %.v128 = select i1 %.demorgan, i64 16, i64 82
  %323 = add i64 %290, %.v128
  store i64 %323, i64* %3, align 8
  br i1 %.demorgan, label %block_42f11e, label %block_.L_42f160

block_42f11e:                                     ; preds = %block_42f10e
  %324 = add i64 %323, 4
  store i64 %324, i64* %3, align 8
  %325 = load i64, i64* %244, align 8
  store i64 %325, i64* %RDI.i945, align 8
  %326 = add i64 %323, -188270
  %327 = add i64 %323, 9
  %328 = load i64, i64* %6, align 8
  %329 = add i64 %328, -8
  %330 = inttoptr i64 %329 to i64*
  store i64 %327, i64* %330, align 8
  store i64 %329, i64* %6, align 8
  store i64 %326, i64* %3, align 8
  %331 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %call2_42f0ee)
  %332 = load i64, i64* %RBP.i, align 8
  %333 = add i64 %332, -64
  %334 = load i32, i32* %EAX.i912, align 4
  %335 = load i64, i64* %3, align 8
  %336 = add i64 %335, 3
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %333 to i32*
  store i32 %334, i32* %337, align 4
  %338 = load i64, i64* %3, align 8
  %339 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %340 = and i32 %339, 128
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RAX.i951, align 8
  store i8 0, i8* %14, align 1
  %342 = tail call i32 @llvm.ctpop.i32(i32 %340)
  %343 = trunc i32 %342 to i8
  %344 = xor i8 %343, 1
  store i8 %344, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit122 = lshr exact i32 %340, 7
  %345 = trunc i32 %.lobit122 to i8
  %346 = xor i8 %345, 1
  store i8 %346, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %347 = icmp eq i8 %346, 0
  %.v156 = select i1 %347, i64 26, i64 21
  %348 = add i64 %338, %.v156
  store i64 %348, i64* %3, align 8
  br i1 %347, label %block_.L_42f144, label %block_42f13f

block_42f13f:                                     ; preds = %block_42f11e
  %349 = add i64 %348, 28
  store i64 %349, i64* %3, align 8
  br label %block_.L_42f15b

block_.L_42f144:                                  ; preds = %block_42f11e
  store i64 ptrtoint (%G__0x57cac0_type* @G__0x57cac0 to i64), i64* %RDI.i945, align 8
  %350 = load i64, i64* %RBP.i, align 8
  %351 = add i64 %350, -64
  %352 = add i64 %348, 13
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %351 to i32*
  %354 = load i32, i32* %353, align 4
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RSI.i942, align 8
  %AL.i825 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i825, align 1
  %356 = add i64 %348, 142444
  %357 = add i64 %348, 20
  %358 = load i64, i64* %6, align 8
  %359 = add i64 %358, -8
  %360 = inttoptr i64 %359 to i64*
  store i64 %357, i64* %360, align 8
  store i64 %359, i64* %6, align 8
  store i64 %356, i64* %3, align 8
  %call2_42f153 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %356, %struct.Memory* %331)
  %361 = load i64, i64* %RBP.i, align 8
  %362 = add i64 %361, -96
  %363 = load i32, i32* %EAX.i912, align 4
  %364 = load i64, i64* %3, align 8
  %365 = add i64 %364, 3
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %362 to i32*
  store i32 %363, i32* %366, align 4
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_42f15b

block_.L_42f15b:                                  ; preds = %block_.L_42f144, %block_42f13f
  %367 = phi i64 [ %.pre103, %block_.L_42f144 ], [ %349, %block_42f13f ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_42f153, %block_.L_42f144 ], [ %331, %block_42f13f ]
  %368 = add i64 %367, 141
  br label %block_.L_42f1e8

block_.L_42f160:                                  ; preds = %block_42f10e, %block_42f0fe
  %369 = phi i64 [ %323, %block_42f10e ], [ %290, %block_42f0fe ]
  %370 = add i64 %369, 4
  store i64 %370, i64* %3, align 8
  %371 = load i64, i64* %244, align 8
  store i64 %371, i64* %RAX.i951, align 8
  %372 = add i64 %369, 7
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i8*
  %374 = load i8, i8* %373, align 1
  %375 = sext i8 %374 to i32
  %376 = add nsw i32 %375, -65
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RCX.i862, align 8
  %378 = icmp ult i8 %374, 65
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %14, align 1
  %380 = and i32 %376, 255
  %381 = tail call i32 @llvm.ctpop.i32(i32 %380)
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  %384 = xor i8 %383, 1
  store i8 %384, i8* %21, align 1
  %385 = zext i8 %374 to i32
  %386 = xor i32 %376, %385
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %27, align 1
  %390 = icmp eq i32 %376, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %30, align 1
  %392 = lshr i32 %376, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %33, align 1
  %394 = lshr i32 %375, 31
  %395 = xor i32 %392, %394
  %396 = add nuw nsw i32 %395, %394
  %397 = icmp eq i32 %396, 2
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %39, align 1
  %399 = add i64 %240, -60
  %400 = add i64 %369, 13
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i32*
  store i32 %376, i32* %401, align 4
  %402 = load i64, i64* %RBP.i, align 8
  %403 = add i64 %402, -32
  %404 = load i64, i64* %3, align 8
  %405 = add i64 %404, 4
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %403 to i64*
  %407 = load i64, i64* %406, align 8
  store i64 %407, i64* %RAX.i951, align 8
  %408 = add i64 %404, 7
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i8*
  %410 = load i8, i8* %409, align 1
  %411 = sext i8 %410 to i64
  %412 = and i64 %411, 4294967295
  store i64 %412, i64* %RCX.i862, align 8
  %413 = sext i8 %410 to i32
  %414 = add nsw i32 %413, -73
  %415 = icmp ult i8 %410, 73
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %14, align 1
  %417 = and i32 %414, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417)
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %21, align 1
  %422 = xor i32 %414, %413
  %423 = lshr i32 %422, 4
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  store i8 %425, i8* %27, align 1
  %426 = icmp eq i32 %414, 0
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %30, align 1
  %428 = lshr i32 %414, 31
  %429 = trunc i32 %428 to i8
  store i8 %429, i8* %33, align 1
  %430 = lshr i32 %413, 31
  %431 = xor i32 %428, %430
  %432 = add nuw nsw i32 %431, %430
  %433 = icmp eq i32 %432, 2
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %39, align 1
  %435 = icmp ne i8 %429, 0
  %436 = xor i1 %435, %433
  %.v129 = select i1 %436, i64 25, i64 16
  %437 = add i64 %404, %.v129
  store i64 %437, i64* %3, align 8
  br i1 %436, label %block_.L_42f186, label %block_42f17d

block_42f17d:                                     ; preds = %block_.L_42f160
  %438 = add i64 %402, -60
  %439 = add i64 %437, 3
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440, align 4
  %442 = add i32 %441, -1
  %443 = zext i32 %442 to i64
  store i64 %443, i64* %RAX.i951, align 8
  %444 = icmp ne i32 %441, 0
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %14, align 1
  %446 = and i32 %442, 255
  %447 = tail call i32 @llvm.ctpop.i32(i32 %446)
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  %450 = xor i8 %449, 1
  store i8 %450, i8* %21, align 1
  %451 = xor i32 %441, 16
  %452 = xor i32 %451, %442
  %453 = lshr i32 %452, 4
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  store i8 %455, i8* %27, align 1
  %456 = icmp eq i32 %442, 0
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %30, align 1
  %458 = lshr i32 %442, 31
  %459 = trunc i32 %458 to i8
  store i8 %459, i8* %33, align 1
  %460 = lshr i32 %441, 31
  %461 = xor i32 %458, %460
  %462 = xor i32 %458, 1
  %463 = add nuw nsw i32 %461, %462
  %464 = icmp eq i32 %463, 2
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %39, align 1
  %466 = add i64 %437, 9
  store i64 %466, i64* %3, align 8
  store i32 %442, i32* %440, align 4
  %.pre104 = load i64, i64* %3, align 8
  %.pre105 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42f186

block_.L_42f186:                                  ; preds = %block_42f17d, %block_.L_42f160
  %467 = phi i64 [ %.pre105, %block_42f17d ], [ %402, %block_.L_42f160 ]
  %468 = phi i64 [ %.pre104, %block_42f17d ], [ %437, %block_.L_42f160 ]
  %469 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %470 = zext i32 %469 to i64
  store i64 %470, i64* %RAX.i951, align 8
  %471 = add i64 %467, -32
  %472 = add i64 %468, 11
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %471 to i64*
  %474 = load i64, i64* %473, align 8
  %475 = add i64 %474, 1
  store i64 %475, i64* %RCX.i862, align 8
  %476 = icmp eq i64 %474, -1
  %477 = icmp eq i64 %475, 0
  %478 = or i1 %476, %477
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %14, align 1
  %480 = trunc i64 %475 to i32
  %481 = and i32 %480, 255
  %482 = tail call i32 @llvm.ctpop.i32(i32 %481)
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = xor i8 %484, 1
  store i8 %485, i8* %21, align 1
  %486 = xor i64 %475, %474
  %487 = lshr i64 %486, 4
  %488 = trunc i64 %487 to i8
  %489 = and i8 %488, 1
  store i8 %489, i8* %27, align 1
  %490 = zext i1 %477 to i8
  store i8 %490, i8* %30, align 1
  %491 = lshr i64 %475, 63
  %492 = trunc i64 %491 to i8
  store i8 %492, i8* %33, align 1
  %493 = lshr i64 %474, 63
  %494 = xor i64 %491, %493
  %495 = add nuw nsw i64 %494, %491
  %496 = icmp eq i64 %495, 2
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %39, align 1
  store i64 %475, i64* %RDI.i945, align 8
  %498 = add i64 %467, -100
  %499 = add i64 %468, 21
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i32*
  store i32 %469, i32* %500, align 4
  %501 = load i64, i64* %3, align 8
  %502 = add i64 %501, -188395
  %503 = add i64 %501, 5
  %504 = load i64, i64* %6, align 8
  %505 = add i64 %504, -8
  %506 = inttoptr i64 %505 to i64*
  store i64 %503, i64* %506, align 8
  store i64 %505, i64* %6, align 8
  store i64 %502, i64* %3, align 8
  %507 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %call2_42f0ee)
  %508 = load i64, i64* %RBP.i, align 8
  %509 = add i64 %508, -100
  %510 = load i64, i64* %3, align 8
  %511 = add i64 %510, 3
  store i64 %511, i64* %3, align 8
  %512 = inttoptr i64 %509 to i32*
  %513 = load i32, i32* %512, align 4
  %514 = load i32, i32* %EAX.i912, align 4
  %515 = sub i32 %513, %514
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %RDX.i939, align 8
  %517 = add i64 %508, -56
  %518 = add i64 %510, 8
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %517 to i32*
  store i32 %515, i32* %519, align 4
  %520 = load i64, i64* %3, align 8
  %521 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %522 = and i32 %521, 128
  %523 = zext i32 %522 to i64
  store i64 %523, i64* %RAX.i951, align 8
  store i8 0, i8* %14, align 1
  %524 = tail call i32 @llvm.ctpop.i32(i32 %522)
  %525 = trunc i32 %524 to i8
  %526 = xor i8 %525, 1
  store i8 %526, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit124 = lshr exact i32 %522, 7
  %527 = trunc i32 %.lobit124 to i8
  %528 = xor i8 %527, 1
  store i8 %528, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %529 = icmp eq i8 %528, 0
  %.v130 = select i1 %529, i64 26, i64 21
  %530 = add i64 %520, %.v130
  store i64 %530, i64* %3, align 8
  br i1 %529, label %block_.L_42f1c2, label %block_42f1bd

block_42f1bd:                                     ; preds = %block_.L_42f186
  %531 = add i64 %530, 38
  store i64 %531, i64* %3, align 8
  br label %block_.L_42f1e3

block_.L_42f1c2:                                  ; preds = %block_.L_42f186
  store i64 ptrtoint (%G__0x57cad7_type* @G__0x57cad7 to i64), i64* %RDI.i945, align 8
  %532 = load i64, i64* %RBP.i, align 8
  %533 = add i64 %532, -56
  %534 = add i64 %530, 13
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to i32*
  %536 = load i32, i32* %535, align 4
  %537 = zext i32 %536 to i64
  store i64 %537, i64* %RSI.i942, align 8
  %538 = add i64 %532, -60
  %539 = add i64 %530, 16
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i32*
  %541 = load i32, i32* %540, align 4
  %542 = zext i32 %541 to i64
  store i64 %542, i64* %RDX.i939, align 8
  %543 = add i64 %530, 19
  store i64 %543, i64* %3, align 8
  %544 = load i32, i32* %535, align 4
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RCX.i862, align 8
  %546 = add i64 %530, 23
  store i64 %546, i64* %3, align 8
  %547 = load i32, i32* %540, align 4
  %548 = zext i32 %547 to i64
  store i64 %548, i64* %R8.i949, align 8
  %AL.i742 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i742, align 1
  %549 = add i64 %530, 142318
  %550 = add i64 %530, 30
  %551 = load i64, i64* %6, align 8
  %552 = add i64 %551, -8
  %553 = inttoptr i64 %552 to i64*
  store i64 %550, i64* %553, align 8
  store i64 %552, i64* %6, align 8
  store i64 %549, i64* %3, align 8
  %call2_42f1db = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %549, %struct.Memory* %507)
  %554 = load i64, i64* %RBP.i, align 8
  %555 = add i64 %554, -104
  %556 = load i32, i32* %EAX.i912, align 4
  %557 = load i64, i64* %3, align 8
  %558 = add i64 %557, 3
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %555 to i32*
  store i32 %556, i32* %559, align 4
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_42f1e3

block_.L_42f1e3:                                  ; preds = %block_.L_42f1c2, %block_42f1bd
  %560 = phi i64 [ %.pre106, %block_.L_42f1c2 ], [ %531, %block_42f1bd ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_42f1db, %block_.L_42f1c2 ], [ %507, %block_42f1bd ]
  %561 = add i64 %560, 5
  store i64 %561, i64* %3, align 8
  br label %block_.L_42f1e8

block_.L_42f1e8:                                  ; preds = %block_.L_42f1e3, %block_.L_42f15b
  %storemerge = phi i64 [ %368, %block_.L_42f15b ], [ %561, %block_.L_42f1e3 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.3, %block_.L_42f15b ], [ %MEMORY.6, %block_.L_42f1e3 ]
  %562 = add i64 %storemerge, 5
  store i64 %562, i64* %3, align 8
  %.pre107 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42f1ed

block_.L_42f1ed:                                  ; preds = %block_.L_42f1e8, %block_.L_42f0e1
  %563 = phi i64 [ %240, %block_.L_42f0e1 ], [ %.pre107, %block_.L_42f1e8 ]
  %564 = phi i64 [ %256, %block_.L_42f0e1 ], [ %562, %block_.L_42f1e8 ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_42f0ee, %block_.L_42f0e1 ], [ %MEMORY.7, %block_.L_42f1e8 ]
  store i64 ptrtoint (%G__0x57ca87_type* @G__0x57ca87 to i64), i64* %RSI.i942, align 8
  %565 = add i64 %563, -44
  store i64 %565, i64* %RDX.i939, align 8
  %566 = add i64 %563, -24
  %567 = add i64 %564, 18
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to i64*
  %569 = load i64, i64* %568, align 8
  store i64 %569, i64* %RAX.i951, align 8
  %570 = add i64 %564, 21
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i64*
  %572 = load i64, i64* %571, align 8
  store i64 %572, i64* %RDI.i945, align 8
  %573 = add i64 %564, -185485
  %574 = add i64 %564, 26
  %575 = load i64, i64* %6, align 8
  %576 = add i64 %575, -8
  %577 = inttoptr i64 %576 to i64*
  store i64 %574, i64* %577, align 8
  store i64 %576, i64* %6, align 8
  store i64 %573, i64* %3, align 8
  %call2_42f202 = tail call %struct.Memory* @sub_401d60.sgfGetIntProperty(%struct.State* nonnull %0, i64 %573, %struct.Memory* %MEMORY.8)
  %578 = load i32, i32* %EAX.i912, align 4
  %579 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %580 = and i32 %578, 255
  %581 = tail call i32 @llvm.ctpop.i32(i32 %580)
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  %584 = xor i8 %583, 1
  store i8 %584, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %585 = icmp eq i32 %578, 0
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %30, align 1
  %587 = lshr i32 %578, 31
  %588 = trunc i32 %587 to i8
  store i8 %588, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v131 = select i1 %585, i64 35, i64 9
  %589 = add i64 %579, %.v131
  store i64 %589, i64* %3, align 8
  br i1 %585, label %block_.L_42f22a, label %block_42f210

block_42f210:                                     ; preds = %block_.L_42f1ed
  %590 = load i64, i64* %RBP.i, align 8
  %591 = add i64 %590, -44
  %592 = add i64 %589, 4
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i32*
  %594 = load i32, i32* %593, align 4
  %595 = add i32 %594, -1
  %596 = icmp eq i32 %594, 0
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %14, align 1
  %598 = and i32 %595, 255
  %599 = tail call i32 @llvm.ctpop.i32(i32 %598)
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = xor i8 %601, 1
  store i8 %602, i8* %21, align 1
  %603 = xor i32 %595, %594
  %604 = lshr i32 %603, 4
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  store i8 %606, i8* %27, align 1
  %607 = icmp eq i32 %595, 0
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %30, align 1
  %609 = lshr i32 %595, 31
  %610 = trunc i32 %609 to i8
  store i8 %610, i8* %33, align 1
  %611 = lshr i32 %594, 31
  %612 = xor i32 %609, %611
  %613 = add nuw nsw i32 %612, %611
  %614 = icmp eq i32 %613, 2
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %39, align 1
  %616 = icmp ne i8 %610, 0
  %617 = xor i1 %616, %614
  %618 = or i1 %607, %617
  %.v132 = select i1 %618, i64 26, i64 10
  %619 = add i64 %589, %.v132
  store i64 %619, i64* %3, align 8
  br i1 %618, label %block_.L_42f22a, label %block_42f21a

block_42f21a:                                     ; preds = %block_42f210
  %620 = add i64 %619, 3
  store i64 %620, i64* %3, align 8
  %621 = load i32, i32* %593, align 4
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RAX.i951, align 8
  %RCX.i712 = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0
  %623 = add i64 %590, -16
  %624 = add i64 %619, 7
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i64*
  %626 = load i64, i64* %625, align 8
  store i64 %626, i64* %RCX.i712, align 8
  %627 = add i64 %619, 9
  store i64 %627, i64* %3, align 8
  %628 = inttoptr i64 %626 to i32*
  store i32 %621, i32* %628, align 4
  %629 = load i64, i64* %RBP.i, align 8
  %630 = add i64 %629, -52
  %631 = load i64, i64* %3, align 8
  %632 = add i64 %631, 7
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %630 to i32*
  store i32 1, i32* %633, align 4
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_42f22a

block_.L_42f22a:                                  ; preds = %block_42f21a, %block_42f210, %block_.L_42f1ed
  %634 = phi i64 [ %.pre108, %block_42f21a ], [ %619, %block_42f210 ], [ %589, %block_.L_42f1ed ]
  %635 = load i64, i64* %RBP.i, align 8
  %636 = add i64 %635, -24
  %637 = add i64 %634, 4
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i64*
  %639 = load i64, i64* %638, align 8
  store i64 %639, i64* %RAX.i951, align 8
  %640 = add i64 %639, 8
  %641 = add i64 %634, 12
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i64*
  store i64 0, i64* %642, align 8
  %RCX.i667 = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0
  %AL.i643 = bitcast %union.anon* %40 to i8*
  %EDX.i622 = bitcast %union.anon* %52 to i32*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre109 = load i64, i64* %RBP.i, align 8
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_42f236

block_.L_42f236:                                  ; preds = %block_.L_42f774, %block_.L_42f22a
  %644 = phi i64 [ %.pre110, %block_.L_42f22a ], [ %2352, %block_.L_42f774 ]
  %645 = phi i64 [ %.pre109, %block_.L_42f22a ], [ %683, %block_.L_42f774 ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_42f202, %block_.L_42f22a ], [ %MEMORY.11, %block_.L_42f774 ]
  %646 = add i64 %645, -24
  %647 = add i64 %644, 4
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i64*
  %649 = load i64, i64* %648, align 8
  store i64 %649, i64* %RDI.i945, align 8
  %650 = add i64 %644, -175478
  %651 = add i64 %644, 9
  %652 = load i64, i64* %6, align 8
  %653 = add i64 %652, -8
  %654 = inttoptr i64 %653 to i64*
  store i64 %651, i64* %654, align 8
  store i64 %653, i64* %6, align 8
  store i64 %650, i64* %3, align 8
  %call2_42f23a = tail call %struct.Memory* @sub_4044c0.sgftreeForward(%struct.State* nonnull %0, i64 %650, %struct.Memory* %MEMORY.10)
  %655 = load i32, i32* %EAX.i912, align 4
  %656 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %657 = and i32 %655, 255
  %658 = tail call i32 @llvm.ctpop.i32(i32 %657)
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  %661 = xor i8 %660, 1
  store i8 %661, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %662 = icmp eq i32 %655, 0
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %30, align 1
  %664 = lshr i32 %655, 31
  %665 = trunc i32 %664 to i8
  store i8 %665, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v133 = select i1 %662, i64 1338, i64 9
  %666 = add i64 %656, %.v133
  store i64 %666, i64* %3, align 8
  %667 = load i64, i64* %RBP.i, align 8
  br i1 %662, label %block_.L_42f779, label %block_42f248

block_42f248:                                     ; preds = %block_.L_42f236
  %668 = add i64 %667, -24
  %669 = add i64 %666, 4
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i64*
  %671 = load i64, i64* %670, align 8
  store i64 %671, i64* %RAX.i951, align 8
  %672 = add i64 %671, 8
  %673 = add i64 %666, 8
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %672 to i64*
  %675 = load i64, i64* %674, align 8
  store i64 %675, i64* %RAX.i951, align 8
  %676 = add i64 %666, 11
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i64*
  %678 = load i64, i64* %677, align 8
  store i64 %678, i64* %RAX.i951, align 8
  %679 = add i64 %667, -80
  %680 = add i64 %666, 15
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to i64*
  store i64 %678, i64* %681, align 8
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_42f257

block_.L_42f257:                                  ; preds = %block_.L_42f75f, %block_42f248
  %682 = phi i64 [ %.pre111, %block_42f248 ], [ %2351, %block_.L_42f75f ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.10, %block_42f248 ], [ %MEMORY.26, %block_.L_42f75f ]
  %683 = load i64, i64* %RBP.i, align 8
  %684 = add i64 %683, -80
  %685 = add i64 %682, 5
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to i64*
  %687 = load i64, i64* %686, align 8
  store i8 0, i8* %14, align 1
  %688 = trunc i64 %687 to i32
  %689 = and i32 %688, 255
  %690 = tail call i32 @llvm.ctpop.i32(i32 %689)
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  %693 = xor i8 %692, 1
  store i8 %693, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %694 = icmp eq i64 %687, 0
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %30, align 1
  %696 = lshr i64 %687, 63
  %697 = trunc i64 %696 to i8
  store i8 %697, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v134 = select i1 %694, i64 1309, i64 11
  %698 = add i64 %682, %.v134
  store i64 %698, i64* %3, align 8
  br i1 %694, label %block_.L_42f774, label %block_42f262

block_42f262:                                     ; preds = %block_.L_42f257
  %699 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %700 = and i32 %699, 128
  %701 = zext i32 %700 to i64
  store i64 %701, i64* %RAX.i951, align 8
  store i8 0, i8* %14, align 1
  %702 = tail call i32 @llvm.ctpop.i32(i32 %700)
  %703 = trunc i32 %702 to i8
  %704 = xor i8 %703, 1
  store i8 %704, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit123 = lshr exact i32 %700, 7
  %705 = trunc i32 %.lobit123 to i8
  %706 = xor i8 %705, 1
  store i8 %706, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %707 = icmp eq i8 %706, 0
  %.v135 = select i1 %707, i64 26, i64 21
  %708 = add i64 %698, %.v135
  store i64 %708, i64* %3, align 8
  br i1 %707, label %block_.L_42f27c, label %block_42f277

block_42f277:                                     ; preds = %block_42f262
  %709 = add i64 %708, 63
  store i64 %709, i64* %3, align 8
  br label %block_.L_42f2b6

block_.L_42f27c:                                  ; preds = %block_42f262
  store i64 ptrtoint (%G__0x57caf9_type* @G__0x57caf9 to i64), i64* %RDI.i945, align 8
  %710 = add i64 %708, 14
  store i64 %710, i64* %3, align 8
  %711 = load i64, i64* %686, align 8
  store i64 %711, i64* %RAX.i951, align 8
  %712 = add i64 %711, 8
  %713 = add i64 %708, 18
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i16*
  %715 = load i16, i16* %714, align 2
  %716 = and i16 %715, 255
  %717 = zext i16 %716 to i64
  %718 = zext i16 %716 to i32
  store i64 %717, i64* %RCX.i667, align 8
  store i8 0, i8* %14, align 1
  %719 = tail call i32 @llvm.ctpop.i32(i32 %718)
  %720 = trunc i32 %719 to i8
  %721 = and i8 %720, 1
  %722 = xor i8 %721, 1
  store i8 %722, i8* %21, align 1
  %723 = icmp eq i16 %716, 0
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %725 = add i64 %708, 28
  store i64 %725, i64* %3, align 8
  %726 = load i64, i64* %686, align 8
  store i64 %726, i64* %RAX.i951, align 8
  %727 = add i64 %726, 8
  %728 = add i64 %708, 32
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i16*
  %730 = load i16, i16* %729, align 2
  %731 = sext i16 %730 to i64
  %732 = ashr i64 %731, 7
  %733 = lshr i64 %732, 1
  %734 = trunc i64 %732 to i8
  %735 = and i8 %734, 1
  %736 = trunc i64 %733 to i32
  %737 = and i64 %733, 4294967295
  store i64 %737, i64* %RDX.i939, align 8
  store i8 %735, i8* %14, align 1
  %738 = and i32 %736, 255
  %739 = tail call i32 @llvm.ctpop.i32(i32 %738)
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  %742 = xor i8 %741, 1
  store i8 %742, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %743 = icmp eq i32 %736, 0
  %744 = zext i1 %743 to i8
  store i8 %744, i8* %30, align 1
  %745 = lshr i64 %732, 32
  %746 = trunc i64 %745 to i8
  %747 = and i8 %746, 1
  store i8 %747, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %748 = add i64 %708, 39
  store i64 %748, i64* %3, align 8
  %749 = load i64, i64* %686, align 8
  store i64 %749, i64* %RAX.i951, align 8
  %750 = add i64 %749, 16
  %751 = add i64 %708, 43
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to i64*
  %753 = load i64, i64* %752, align 8
  store i64 %753, i64* %RAX.i951, align 8
  store i64 %717, i64* %RSI.i942, align 8
  store i64 %753, i64* %RCX.i667, align 8
  store i8 0, i8* %AL.i643, align 1
  %754 = add i64 %708, 142132
  %755 = add i64 %708, 55
  %756 = load i64, i64* %6, align 8
  %757 = add i64 %756, -8
  %758 = inttoptr i64 %757 to i64*
  store i64 %755, i64* %758, align 8
  store i64 %757, i64* %6, align 8
  store i64 %754, i64* %3, align 8
  %call2_42f2ae = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %754, %struct.Memory* %MEMORY.11)
  %759 = load i64, i64* %RBP.i, align 8
  %760 = add i64 %759, -108
  %761 = load i32, i32* %EAX.i912, align 4
  %762 = load i64, i64* %3, align 8
  %763 = add i64 %762, 3
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %760 to i32*
  store i32 %761, i32* %764, align 4
  %.pre112 = load i64, i64* %RBP.i, align 8
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_42f2b6

block_.L_42f2b6:                                  ; preds = %block_.L_42f27c, %block_42f277
  %765 = phi i64 [ %.pre113, %block_.L_42f27c ], [ %709, %block_42f277 ]
  %766 = phi i64 [ %.pre112, %block_.L_42f27c ], [ %683, %block_42f277 ]
  %767 = add i64 %766, -80
  %768 = add i64 %765, 4
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i64*
  %770 = load i64, i64* %769, align 8
  store i64 %770, i64* %RAX.i951, align 8
  %771 = add i64 %770, 8
  %772 = add i64 %765, 8
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i16*
  %774 = load i16, i16* %773, align 2
  %775 = sext i16 %774 to i64
  %776 = and i64 %775, 4294967295
  store i64 %776, i64* %RCX.i667, align 8
  %777 = sext i16 %774 to i32
  %778 = add nsw i32 %777, -8258
  %779 = zext i32 %778 to i64
  store i64 %779, i64* %RDX.i939, align 8
  %780 = icmp ult i16 %774, 8258
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %14, align 1
  %782 = and i32 %778, 255
  %783 = tail call i32 @llvm.ctpop.i32(i32 %782)
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  %786 = xor i8 %785, 1
  store i8 %786, i8* %21, align 1
  %787 = xor i32 %778, %777
  %788 = lshr i32 %787, 4
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  store i8 %790, i8* %27, align 1
  %791 = icmp eq i32 %778, 0
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %30, align 1
  %793 = lshr i32 %778, 31
  %794 = trunc i32 %793 to i8
  store i8 %794, i8* %33, align 1
  %795 = lshr i32 %777, 31
  %796 = xor i32 %793, %795
  %797 = add nuw nsw i32 %796, %795
  %798 = icmp eq i32 %797, 2
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %39, align 1
  %800 = add i64 %766, -112
  %801 = add i64 %765, 19
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i32*
  store i32 %777, i32* %802, align 4
  %803 = load i64, i64* %RBP.i, align 8
  %804 = add i64 %803, -116
  %805 = load i32, i32* %EDX.i622, align 4
  %806 = load i64, i64* %3, align 8
  %807 = add i64 %806, 3
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %804 to i32*
  store i32 %805, i32* %808, align 4
  %809 = load i64, i64* %3, align 8
  %810 = load i8, i8* %30, align 1
  %811 = icmp ne i8 %810, 0
  %.v190 = select i1 %811, i64 462, i64 6
  %812 = add i64 %809, %.v190
  store i64 %812, i64* %3, align 8
  %cmpBr_42f2cc = icmp eq i8 %810, 1
  br i1 %cmpBr_42f2cc, label %block_.L_42f49a, label %block_42f2d2

block_42f2d2:                                     ; preds = %block_.L_42f2b6
  %813 = load i64, i64* %RBP.i, align 8
  %814 = add i64 %813, -112
  %815 = add i64 %812, 8
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %814 to i32*
  %817 = load i32, i32* %816, align 4
  %818 = add i32 %817, -8279
  %819 = zext i32 %818 to i64
  store i64 %819, i64* %RAX.i951, align 8
  %820 = icmp ult i32 %817, 8279
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %14, align 1
  %822 = and i32 %818, 255
  %823 = tail call i32 @llvm.ctpop.i32(i32 %822)
  %824 = trunc i32 %823 to i8
  %825 = and i8 %824, 1
  %826 = xor i8 %825, 1
  store i8 %826, i8* %21, align 1
  %827 = xor i32 %817, 16
  %828 = xor i32 %827, %818
  %829 = lshr i32 %828, 4
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  store i8 %831, i8* %27, align 1
  %832 = icmp eq i32 %818, 0
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %30, align 1
  %834 = lshr i32 %818, 31
  %835 = trunc i32 %834 to i8
  store i8 %835, i8* %33, align 1
  %836 = lshr i32 %817, 31
  %837 = xor i32 %834, %836
  %838 = add nuw nsw i32 %837, %836
  %839 = icmp eq i32 %838, 2
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %39, align 1
  %841 = add i64 %813, -120
  %842 = add i64 %812, 16
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i32*
  store i32 %818, i32* %843, align 4
  %844 = load i64, i64* %3, align 8
  %845 = load i8, i8* %30, align 1
  %846 = icmp ne i8 %845, 0
  %.v191 = select i1 %846, i64 440, i64 6
  %847 = add i64 %844, %.v191
  store i64 %847, i64* %3, align 8
  %cmpBr_42f2e2 = icmp eq i8 %845, 1
  br i1 %cmpBr_42f2e2, label %block_.L_42f49a, label %block_42f2e8

block_42f2e8:                                     ; preds = %block_42f2d2
  %848 = load i64, i64* %RBP.i, align 8
  %849 = add i64 %848, -112
  %850 = add i64 %847, 8
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i32*
  %852 = load i32, i32* %851, align 4
  %853 = add i32 %852, -16961
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %RAX.i951, align 8
  %855 = icmp ult i32 %852, 16961
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %14, align 1
  %857 = and i32 %853, 255
  %858 = tail call i32 @llvm.ctpop.i32(i32 %857)
  %859 = trunc i32 %858 to i8
  %860 = and i8 %859, 1
  %861 = xor i8 %860, 1
  store i8 %861, i8* %21, align 1
  %862 = xor i32 %853, %852
  %863 = lshr i32 %862, 4
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  store i8 %865, i8* %27, align 1
  %866 = icmp eq i32 %853, 0
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %30, align 1
  %868 = lshr i32 %853, 31
  %869 = trunc i32 %868 to i8
  store i8 %869, i8* %33, align 1
  %870 = lshr i32 %852, 31
  %871 = xor i32 %868, %870
  %872 = add nuw nsw i32 %871, %870
  %873 = icmp eq i32 %872, 2
  %874 = zext i1 %873 to i8
  store i8 %874, i8* %39, align 1
  %875 = add i64 %848, -124
  %876 = add i64 %847, 16
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i32*
  store i32 %853, i32* %877, align 4
  %878 = load i64, i64* %3, align 8
  %879 = load i8, i8* %30, align 1
  %880 = icmp ne i8 %879, 0
  %.v192 = select i1 %880, i64 83, i64 6
  %881 = add i64 %878, %.v192
  store i64 %881, i64* %3, align 8
  %cmpBr_42f2f8 = icmp eq i8 %879, 1
  %882 = load i64, i64* %RBP.i, align 8
  br i1 %cmpBr_42f2f8, label %block_.L_42f34b, label %block_42f2fe

block_42f2fe:                                     ; preds = %block_42f2e8
  %883 = add i64 %882, -112
  %884 = add i64 %881, 8
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = add i32 %886, -19529
  %888 = zext i32 %887 to i64
  store i64 %888, i64* %RAX.i951, align 8
  %889 = icmp ult i32 %886, 19529
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %14, align 1
  %891 = and i32 %887, 255
  %892 = tail call i32 @llvm.ctpop.i32(i32 %891)
  %893 = trunc i32 %892 to i8
  %894 = and i8 %893, 1
  %895 = xor i8 %894, 1
  store i8 %895, i8* %21, align 1
  %896 = xor i32 %887, %886
  %897 = lshr i32 %896, 4
  %898 = trunc i32 %897 to i8
  %899 = and i8 %898, 1
  store i8 %899, i8* %27, align 1
  %900 = icmp eq i32 %887, 0
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %30, align 1
  %902 = lshr i32 %887, 31
  %903 = trunc i32 %902 to i8
  store i8 %903, i8* %33, align 1
  %904 = lshr i32 %886, 31
  %905 = xor i32 %902, %904
  %906 = add nuw nsw i32 %905, %904
  %907 = icmp eq i32 %906, 2
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %39, align 1
  %909 = add i64 %882, -128
  %910 = add i64 %881, 16
  store i64 %910, i64* %3, align 8
  %911 = inttoptr i64 %909 to i32*
  store i32 %887, i32* %911, align 4
  %912 = load i64, i64* %3, align 8
  %913 = load i8, i8* %30, align 1
  %914 = icmp ne i8 %913, 0
  %.v193 = select i1 %914, i64 865, i64 6
  %915 = add i64 %912, %.v193
  store i64 %915, i64* %3, align 8
  %cmpBr_42f30e = icmp eq i8 %913, 1
  %916 = load i64, i64* %RBP.i, align 8
  br i1 %cmpBr_42f30e, label %block_.L_42f66f, label %block_42f314

block_42f314:                                     ; preds = %block_42f2fe
  %917 = add i64 %916, -112
  %918 = add i64 %915, 8
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i32*
  %920 = load i32, i32* %919, align 4
  %921 = add i32 %920, -19536
  %922 = zext i32 %921 to i64
  store i64 %922, i64* %RAX.i951, align 8
  %923 = icmp ult i32 %920, 19536
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %14, align 1
  %925 = and i32 %921, 255
  %926 = tail call i32 @llvm.ctpop.i32(i32 %925)
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  %929 = xor i8 %928, 1
  store i8 %929, i8* %21, align 1
  %930 = xor i32 %920, 16
  %931 = xor i32 %930, %921
  %932 = lshr i32 %931, 4
  %933 = trunc i32 %932 to i8
  %934 = and i8 %933, 1
  store i8 %934, i8* %27, align 1
  %935 = icmp eq i32 %921, 0
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %30, align 1
  %937 = lshr i32 %921, 31
  %938 = trunc i32 %937 to i8
  store i8 %938, i8* %33, align 1
  %939 = lshr i32 %920, 31
  %940 = xor i32 %937, %939
  %941 = add nuw nsw i32 %940, %939
  %942 = icmp eq i32 %941, 2
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %39, align 1
  %944 = add i64 %916, -132
  %945 = add i64 %915, 19
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i32*
  store i32 %921, i32* %946, align 4
  %947 = load i64, i64* %3, align 8
  %948 = load i8, i8* %30, align 1
  %949 = icmp ne i8 %948, 0
  %.v194 = select i1 %949, i64 214, i64 6
  %950 = add i64 %947, %.v194
  store i64 %950, i64* %3, align 8
  %cmpBr_42f327 = icmp eq i8 %948, 1
  br i1 %cmpBr_42f327, label %block_.L_42f3fd, label %block_42f32d

block_42f32d:                                     ; preds = %block_42f314
  %951 = load i64, i64* %RBP.i, align 8
  %952 = add i64 %951, -112
  %953 = add i64 %950, 8
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i32*
  %955 = load i32, i32* %954, align 4
  %956 = add i32 %955, -22337
  %957 = zext i32 %956 to i64
  store i64 %957, i64* %RAX.i951, align 8
  %958 = icmp ult i32 %955, 22337
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %14, align 1
  %960 = and i32 %956, 255
  %961 = tail call i32 @llvm.ctpop.i32(i32 %960)
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  store i8 %964, i8* %21, align 1
  %965 = xor i32 %956, %955
  %966 = lshr i32 %965, 4
  %967 = trunc i32 %966 to i8
  %968 = and i8 %967, 1
  store i8 %968, i8* %27, align 1
  %969 = icmp eq i32 %956, 0
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %30, align 1
  %971 = lshr i32 %956, 31
  %972 = trunc i32 %971 to i8
  store i8 %972, i8* %33, align 1
  %973 = lshr i32 %955, 31
  %974 = xor i32 %971, %973
  %975 = add nuw nsw i32 %974, %973
  %976 = icmp eq i32 %975, 2
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %39, align 1
  %978 = add i64 %951, -136
  %979 = add i64 %950, 19
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to i32*
  store i32 %956, i32* %980, align 4
  %981 = load i64, i64* %3, align 8
  %982 = load i8, i8* %30, align 1
  %983 = icmp ne i8 %982, 0
  %.v195 = select i1 %983, i64 100, i64 6
  %984 = add i64 %981, %.v195
  store i64 %984, i64* %3, align 8
  %cmpBr_42f340 = icmp eq i8 %982, 1
  br i1 %cmpBr_42f340, label %block_.L_42f3a4, label %block_.L_42f75f

block_.L_42f34b:                                  ; preds = %block_42f2e8
  %985 = add i64 %882, -84
  store i64 %985, i64* %RSI.i942, align 8
  %986 = add i64 %882, -88
  store i64 %986, i64* %RDX.i939, align 8
  %987 = add i64 %882, -80
  %988 = add i64 %881, 12
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i64*
  %990 = load i64, i64* %989, align 8
  store i64 %990, i64* %RDI.i945, align 8
  %991 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %992 = zext i32 %991 to i64
  store i64 %992, i64* %RCX.i667, align 8
  %993 = add i64 %881, -188267
  %994 = add i64 %881, 24
  %995 = load i64, i64* %6, align 8
  %996 = add i64 %995, -8
  %997 = inttoptr i64 %996 to i64*
  store i64 %994, i64* %997, align 8
  store i64 %996, i64* %6, align 8
  store i64 %993, i64* %3, align 8
  %call2_42f35e = tail call %struct.Memory* @sub_4013e0.get_moveXY(%struct.State* nonnull %0, i64 %993, %struct.Memory* %MEMORY.11)
  %998 = load i64, i64* %RBP.i, align 8
  %999 = add i64 %998, -84
  %1000 = load i64, i64* %3, align 8
  store i64 %999, i64* %RDX.i939, align 8
  %1001 = add i64 %998, -88
  store i64 %1001, i64* %RCX.i667, align 8
  %1002 = add i64 %1000, 11
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %999 to i32*
  %1004 = load i32, i32* %1003, align 4
  %1005 = zext i32 %1004 to i64
  store i64 %1005, i64* %RDI.i945, align 8
  %1006 = add i64 %1000, 14
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1001 to i32*
  %1008 = load i32, i32* %1007, align 4
  %1009 = zext i32 %1008 to i64
  store i64 %1009, i64* %RSI.i942, align 8
  %1010 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1011 = zext i32 %1010 to i64
  store i64 %1011, i64* %R8.i949, align 8
  %1012 = add i64 %998, -36
  %1013 = add i64 %1000, 26
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i32*
  %1015 = load i32, i32* %1014, align 4
  %1016 = zext i32 %1015 to i64
  store i64 %1016, i64* %643, align 8
  %1017 = add i64 %998, -140
  %1018 = load i32, i32* %EAX.i912, align 4
  %1019 = add i64 %1000, 32
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1017 to i32*
  store i32 %1018, i32* %1020, align 4
  %1021 = load i64, i64* %3, align 8
  %1022 = add i64 %1021, 734733
  %1023 = add i64 %1021, 5
  %1024 = load i64, i64* %6, align 8
  %1025 = add i64 %1024, -8
  %1026 = inttoptr i64 %1025 to i64*
  store i64 %1023, i64* %1026, align 8
  store i64 %1025, i64* %6, align 8
  store i64 %1022, i64* %3, align 8
  %call2_42f383 = tail call %struct.Memory* @sub_4e2990.rotate(%struct.State* nonnull %0, i64 %1022, %struct.Memory* %call2_42f35e)
  %1027 = load i64, i64* %3, align 8
  store i64 2, i64* %RDX.i939, align 8
  %1028 = load i64, i64* %RBP.i, align 8
  %1029 = add i64 %1028, -84
  %1030 = add i64 %1027, 8
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i32*
  %1032 = load i32, i32* %1031, align 4
  %1033 = zext i32 %1032 to i64
  store i64 %1033, i64* %RDI.i945, align 8
  %1034 = add i64 %1028, -88
  %1035 = add i64 %1027, 11
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1034 to i32*
  %1037 = load i32, i32* %1036, align 4
  %1038 = zext i32 %1037 to i64
  store i64 %1038, i64* %RSI.i942, align 8
  %1039 = add i64 %1027, -3784
  %1040 = add i64 %1027, 16
  %1041 = load i64, i64* %6, align 8
  %1042 = add i64 %1041, -8
  %1043 = inttoptr i64 %1042 to i64*
  store i64 %1040, i64* %1043, align 8
  store i64 %1042, i64* %6, align 8
  store i64 %1039, i64* %3, align 8
  %call2_42f393 = tail call %struct.Memory* @sub_42e4c0.gnugo_add_stone(%struct.State* nonnull %0, i64 %1039, %struct.Memory* %call2_42f383)
  %1044 = load i64, i64* %RBP.i, align 8
  %1045 = add i64 %1044, -68
  %1046 = load i64, i64* %3, align 8
  %1047 = add i64 %1046, 7
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1045 to i32*
  store i32 1, i32* %1048, align 4
  br label %block_.L_42f75f

block_.L_42f3a4:                                  ; preds = %block_42f32d
  %1049 = load i64, i64* %RBP.i, align 8
  %1050 = add i64 %1049, -84
  store i64 %1050, i64* %RSI.i942, align 8
  %1051 = add i64 %1049, -88
  store i64 %1051, i64* %RDX.i939, align 8
  %1052 = add i64 %1049, -80
  %1053 = add i64 %984, 12
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i64*
  %1055 = load i64, i64* %1054, align 8
  store i64 %1055, i64* %RDI.i945, align 8
  %1056 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1057 = zext i32 %1056 to i64
  store i64 %1057, i64* %RCX.i667, align 8
  %1058 = add i64 %984, -188356
  %1059 = add i64 %984, 24
  %1060 = load i64, i64* %6, align 8
  %1061 = add i64 %1060, -8
  %1062 = inttoptr i64 %1061 to i64*
  store i64 %1059, i64* %1062, align 8
  store i64 %1061, i64* %6, align 8
  store i64 %1058, i64* %3, align 8
  %call2_42f3b7 = tail call %struct.Memory* @sub_4013e0.get_moveXY(%struct.State* nonnull %0, i64 %1058, %struct.Memory* %MEMORY.11)
  %1063 = load i64, i64* %RBP.i, align 8
  %1064 = add i64 %1063, -84
  %1065 = load i64, i64* %3, align 8
  store i64 %1064, i64* %RDX.i939, align 8
  %1066 = add i64 %1063, -88
  store i64 %1066, i64* %RCX.i667, align 8
  %1067 = add i64 %1065, 11
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1064 to i32*
  %1069 = load i32, i32* %1068, align 4
  %1070 = zext i32 %1069 to i64
  store i64 %1070, i64* %RDI.i945, align 8
  %1071 = add i64 %1065, 14
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1066 to i32*
  %1073 = load i32, i32* %1072, align 4
  %1074 = zext i32 %1073 to i64
  store i64 %1074, i64* %RSI.i942, align 8
  %1075 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1076 = zext i32 %1075 to i64
  store i64 %1076, i64* %R8.i949, align 8
  %1077 = add i64 %1063, -36
  %1078 = add i64 %1065, 26
  store i64 %1078, i64* %3, align 8
  %1079 = inttoptr i64 %1077 to i32*
  %1080 = load i32, i32* %1079, align 4
  %1081 = zext i32 %1080 to i64
  store i64 %1081, i64* %643, align 8
  %1082 = add i64 %1063, -144
  %1083 = load i32, i32* %EAX.i912, align 4
  %1084 = add i64 %1065, 32
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1082 to i32*
  store i32 %1083, i32* %1085, align 4
  %1086 = load i64, i64* %3, align 8
  %1087 = add i64 %1086, 734644
  %1088 = add i64 %1086, 5
  %1089 = load i64, i64* %6, align 8
  %1090 = add i64 %1089, -8
  %1091 = inttoptr i64 %1090 to i64*
  store i64 %1088, i64* %1091, align 8
  store i64 %1090, i64* %6, align 8
  store i64 %1087, i64* %3, align 8
  %call2_42f3dc = tail call %struct.Memory* @sub_4e2990.rotate(%struct.State* nonnull %0, i64 %1087, %struct.Memory* %call2_42f3b7)
  %1092 = load i64, i64* %3, align 8
  store i64 1, i64* %RDX.i939, align 8
  %1093 = load i64, i64* %RBP.i, align 8
  %1094 = add i64 %1093, -84
  %1095 = add i64 %1092, 8
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i32*
  %1097 = load i32, i32* %1096, align 4
  %1098 = zext i32 %1097 to i64
  store i64 %1098, i64* %RDI.i945, align 8
  %1099 = add i64 %1093, -88
  %1100 = add i64 %1092, 11
  store i64 %1100, i64* %3, align 8
  %1101 = inttoptr i64 %1099 to i32*
  %1102 = load i32, i32* %1101, align 4
  %1103 = zext i32 %1102 to i64
  store i64 %1103, i64* %RSI.i942, align 8
  %1104 = add i64 %1092, -3873
  %1105 = add i64 %1092, 16
  %1106 = load i64, i64* %6, align 8
  %1107 = add i64 %1106, -8
  %1108 = inttoptr i64 %1107 to i64*
  store i64 %1105, i64* %1108, align 8
  store i64 %1107, i64* %6, align 8
  store i64 %1104, i64* %3, align 8
  %call2_42f3ec = tail call %struct.Memory* @sub_42e4c0.gnugo_add_stone(%struct.State* nonnull %0, i64 %1104, %struct.Memory* %call2_42f3dc)
  %1109 = load i64, i64* %RBP.i, align 8
  %1110 = add i64 %1109, -68
  %1111 = load i64, i64* %3, align 8
  %1112 = add i64 %1111, 7
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1110 to i32*
  store i32 1, i32* %1113, align 4
  br label %block_.L_42f75f

block_.L_42f3fd:                                  ; preds = %block_42f314
  %1114 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1115 = and i32 %1114, 255
  %1116 = tail call i32 @llvm.ctpop.i32(i32 %1115)
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  %1119 = xor i8 %1118, 1
  store i8 %1119, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1120 = icmp eq i32 %1114, 0
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %30, align 1
  %1122 = lshr i32 %1114, 31
  %1123 = trunc i32 %1122 to i8
  store i8 %1123, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v136 = select i1 %1120, i64 73, i64 14
  %1124 = add i64 %950, %.v136
  store i64 %1124, i64* %3, align 8
  br i1 %1120, label %block_.L_42f446, label %block_42f40b

block_42f40b:                                     ; preds = %block_.L_42f3fd
  %1125 = load i64, i64* %RBP.i, align 8
  %1126 = add i64 %1125, -68
  %1127 = add i64 %1124, 4
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i32*
  %1129 = load i32, i32* %1128, align 4
  store i8 0, i8* %14, align 1
  %1130 = and i32 %1129, 255
  %1131 = tail call i32 @llvm.ctpop.i32(i32 %1130)
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  %1134 = xor i8 %1133, 1
  store i8 %1134, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1135 = icmp eq i32 %1129, 0
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %30, align 1
  %1137 = lshr i32 %1129, 31
  %1138 = trunc i32 %1137 to i8
  store i8 %1138, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v137 = select i1 %1135, i64 10, i64 59
  %1139 = add i64 %1124, %.v137
  store i64 %1139, i64* %3, align 8
  br i1 %1135, label %block_42f415, label %block_.L_42f446

block_42f415:                                     ; preds = %block_42f40b
  store i64 0, i64* %RAX.i951, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RSI.i942, align 8
  %1140 = add i64 %1125, -16
  %1141 = add i64 %1139, 8
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i64*
  %1143 = load i64, i64* %1142, align 8
  store i64 %1143, i64* %RCX.i667, align 8
  %1144 = add i64 %1139, 10
  store i64 %1144, i64* %3, align 8
  %1145 = inttoptr i64 %1143 to i32*
  %1146 = load i32, i32* %1145, align 4
  %1147 = zext i32 %1146 to i64
  store i64 %1147, i64* %RDI.i945, align 8
  %1148 = add i64 %1139, -2533
  %1149 = add i64 %1139, 15
  %1150 = load i64, i64* %6, align 8
  %1151 = add i64 %1150, -8
  %1152 = inttoptr i64 %1151 to i64*
  store i64 %1149, i64* %1152, align 8
  store i64 %1151, i64* %6, align 8
  store i64 %1148, i64* %3, align 8
  %call2_42f41f = tail call %struct.Memory* @sub_42ea30.gnugo_sethand(%struct.State* nonnull %0, i64 %1148, %struct.Memory* %MEMORY.11)
  %1153 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57ca87_type* @G__0x57ca87 to i64), i64* %RSI.i942, align 8
  %1154 = load i64, i64* %RBP.i, align 8
  %1155 = add i64 %1154, -24
  %1156 = add i64 %1153, 14
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i64*
  %1158 = load i64, i64* %1157, align 8
  store i64 %1158, i64* %RCX.i667, align 8
  %1159 = add i64 %1153, 17
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1158 to i64*
  %1161 = load i64, i64* %1160, align 8
  store i64 %1161, i64* %RDI.i945, align 8
  %1162 = add i64 %1154, -16
  %1163 = add i64 %1153, 21
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1162 to i64*
  %1165 = load i64, i64* %1164, align 8
  store i64 %1165, i64* %RCX.i667, align 8
  %1166 = add i64 %1153, 23
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i32*
  %1168 = load i32, i32* %1167, align 4
  %1169 = zext i32 %1168 to i64
  store i64 %1169, i64* %RDX.i939, align 8
  %1170 = add i64 %1154, -148
  %1171 = load i32, i32* %EAX.i912, align 4
  %1172 = add i64 %1153, 29
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1170 to i32*
  store i32 %1171, i32* %1173, align 4
  %1174 = load i64, i64* %3, align 8
  %1175 = add i64 %1174, -185361
  %1176 = add i64 %1174, 5
  %1177 = load i64, i64* %6, align 8
  %1178 = add i64 %1177, -8
  %1179 = inttoptr i64 %1178 to i64*
  store i64 %1176, i64* %1179, align 8
  store i64 %1178, i64* %6, align 8
  store i64 %1175, i64* %3, align 8
  %call2_42f441 = tail call %struct.Memory* @sub_402030.sgfOverwritePropertyInt(%struct.State* nonnull %0, i64 %1175, %struct.Memory* %call2_42f41f)
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_42f446

block_.L_42f446:                                  ; preds = %block_42f40b, %block_42f415, %block_.L_42f3fd
  %1180 = phi i64 [ %1124, %block_.L_42f3fd ], [ %1139, %block_42f40b ], [ %.pre114, %block_42f415 ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.11, %block_.L_42f3fd ], [ %MEMORY.11, %block_42f40b ], [ %call2_42f441, %block_42f415 ]
  %1181 = load i64, i64* %RBP.i, align 8
  %1182 = add i64 %1181, -80
  %1183 = add i64 %1180, 4
  store i64 %1183, i64* %3, align 8
  %1184 = inttoptr i64 %1182 to i64*
  %1185 = load i64, i64* %1184, align 8
  store i64 %1185, i64* %RAX.i951, align 8
  %1186 = add i64 %1185, 16
  %1187 = add i64 %1180, 8
  store i64 %1187, i64* %3, align 8
  %1188 = inttoptr i64 %1186 to i64*
  %1189 = load i64, i64* %1188, align 8
  store i64 %1189, i64* %RAX.i951, align 8
  %1190 = add i64 %1180, 11
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i8*
  %1192 = load i8, i8* %1191, align 1
  %1193 = sext i8 %1192 to i64
  %1194 = and i64 %1193, 4294967295
  store i64 %1194, i64* %RCX.i667, align 8
  %1195 = sext i8 %1192 to i32
  %1196 = add nsw i32 %1195, -119
  %1197 = icmp ult i8 %1192, 119
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %14, align 1
  %1199 = and i32 %1196, 255
  %1200 = tail call i32 @llvm.ctpop.i32(i32 %1199)
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  store i8 %1203, i8* %21, align 1
  %1204 = xor i32 %1195, 16
  %1205 = xor i32 %1204, %1196
  %1206 = lshr i32 %1205, 4
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  store i8 %1208, i8* %27, align 1
  %1209 = icmp eq i32 %1196, 0
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %30, align 1
  %1211 = lshr i32 %1196, 31
  %1212 = trunc i32 %1211 to i8
  store i8 %1212, i8* %33, align 1
  %1213 = lshr i32 %1195, 31
  %1214 = xor i32 %1211, %1213
  %1215 = add nuw nsw i32 %1214, %1213
  %1216 = icmp eq i32 %1215, 2
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %39, align 1
  %.v138 = select i1 %1209, i64 60, i64 20
  %1218 = add i64 %1180, %.v138
  store i64 %1218, i64* %3, align 8
  br i1 %1209, label %block_.L_42f482, label %block_42f45a

block_42f45a:                                     ; preds = %block_.L_42f446
  %1219 = add i64 %1218, 4
  store i64 %1219, i64* %3, align 8
  %1220 = load i64, i64* %1184, align 8
  store i64 %1220, i64* %RAX.i951, align 8
  %1221 = add i64 %1220, 16
  %1222 = add i64 %1218, 8
  store i64 %1222, i64* %3, align 8
  %1223 = inttoptr i64 %1221 to i64*
  %1224 = load i64, i64* %1223, align 8
  store i64 %1224, i64* %RAX.i951, align 8
  %1225 = add i64 %1218, 11
  store i64 %1225, i64* %3, align 8
  %1226 = inttoptr i64 %1224 to i8*
  %1227 = load i8, i8* %1226, align 1
  %1228 = sext i8 %1227 to i64
  %1229 = and i64 %1228, 4294967295
  store i64 %1229, i64* %RCX.i667, align 8
  %1230 = sext i8 %1227 to i32
  %1231 = add nsw i32 %1230, -87
  %1232 = icmp ult i8 %1227, 87
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %14, align 1
  %1234 = and i32 %1231, 255
  %1235 = tail call i32 @llvm.ctpop.i32(i32 %1234)
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  %1238 = xor i8 %1237, 1
  store i8 %1238, i8* %21, align 1
  %1239 = xor i32 %1230, 16
  %1240 = xor i32 %1239, %1231
  %1241 = lshr i32 %1240, 4
  %1242 = trunc i32 %1241 to i8
  %1243 = and i8 %1242, 1
  store i8 %1243, i8* %27, align 1
  %1244 = icmp eq i32 %1231, 0
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %30, align 1
  %1246 = lshr i32 %1231, 31
  %1247 = trunc i32 %1246 to i8
  store i8 %1247, i8* %33, align 1
  %1248 = lshr i32 %1230, 31
  %1249 = xor i32 %1246, %1248
  %1250 = add nuw nsw i32 %1249, %1248
  %1251 = icmp eq i32 %1250, 2
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %39, align 1
  %.v139 = select i1 %1244, i64 40, i64 20
  %1253 = add i64 %1218, %.v139
  store i64 %1253, i64* %3, align 8
  br i1 %1244, label %block_.L_42f482, label %block_42f46e

block_42f46e:                                     ; preds = %block_42f45a
  %1254 = add i64 %1253, 4
  store i64 %1254, i64* %3, align 8
  %1255 = load i64, i64* %1184, align 8
  store i64 %1255, i64* %RAX.i951, align 8
  %1256 = add i64 %1255, 16
  %1257 = add i64 %1253, 8
  store i64 %1257, i64* %3, align 8
  %1258 = inttoptr i64 %1256 to i64*
  %1259 = load i64, i64* %1258, align 8
  store i64 %1259, i64* %RAX.i951, align 8
  %1260 = add i64 %1253, 11
  store i64 %1260, i64* %3, align 8
  %1261 = inttoptr i64 %1259 to i8*
  %1262 = load i8, i8* %1261, align 1
  %1263 = sext i8 %1262 to i64
  %1264 = and i64 %1263, 4294967295
  store i64 %1264, i64* %RCX.i667, align 8
  %1265 = sext i8 %1262 to i32
  %1266 = add nsw i32 %1265, -50
  %1267 = icmp ult i8 %1262, 50
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %14, align 1
  %1269 = and i32 %1266, 255
  %1270 = tail call i32 @llvm.ctpop.i32(i32 %1269)
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  %1273 = xor i8 %1272, 1
  store i8 %1273, i8* %21, align 1
  %1274 = xor i32 %1265, 16
  %1275 = xor i32 %1274, %1266
  %1276 = lshr i32 %1275, 4
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  store i8 %1278, i8* %27, align 1
  %1279 = icmp eq i32 %1266, 0
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %30, align 1
  %1281 = lshr i32 %1266, 31
  %1282 = trunc i32 %1281 to i8
  store i8 %1282, i8* %33, align 1
  %1283 = lshr i32 %1265, 31
  %1284 = xor i32 %1281, %1283
  %1285 = add nuw nsw i32 %1284, %1283
  %1286 = icmp eq i32 %1285, 2
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %39, align 1
  %.v140 = select i1 %1279, i64 20, i64 32
  %1288 = add i64 %1253, %.v140
  store i64 %1288, i64* %3, align 8
  br i1 %1279, label %block_.L_42f482, label %block_.L_42f48e

block_.L_42f482:                                  ; preds = %block_42f46e, %block_42f45a, %block_.L_42f446
  %1289 = phi i64 [ %1288, %block_42f46e ], [ %1253, %block_42f45a ], [ %1218, %block_.L_42f446 ]
  %1290 = add i64 %1181, -52
  %1291 = add i64 %1289, 7
  store i64 %1291, i64* %3, align 8
  %1292 = inttoptr i64 %1290 to i32*
  store i32 1, i32* %1292, align 4
  %1293 = load i64, i64* %3, align 8
  %1294 = add i64 %1293, 12
  store i64 %1294, i64* %3, align 8
  br label %block_.L_42f75f

block_.L_42f48e:                                  ; preds = %block_42f46e
  %1295 = add i64 %1181, -52
  %1296 = add i64 %1288, 7
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1295 to i32*
  store i32 2, i32* %1297, align 4
  br label %block_.L_42f75f

block_.L_42f49a:                                  ; preds = %block_42f2d2, %block_.L_42f2b6
  %1298 = phi i64 [ %847, %block_42f2d2 ], [ %812, %block_.L_42f2b6 ]
  store i64 2, i64* %RAX.i951, align 8
  store i64 1, i64* %RCX.i667, align 8
  %1299 = load i64, i64* %RBP.i, align 8
  %1300 = add i64 %1299, -80
  %1301 = add i64 %1298, 14
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1300 to i64*
  %1303 = load i64, i64* %1302, align 8
  store i64 %1303, i64* %RDX.i939, align 8
  %1304 = add i64 %1303, 8
  %1305 = add i64 %1298, 18
  store i64 %1305, i64* %3, align 8
  %1306 = inttoptr i64 %1304 to i16*
  %1307 = load i16, i16* %1306, align 2
  %1308 = sext i16 %1307 to i64
  %1309 = and i64 %1308, 4294967295
  store i64 %1309, i64* %RSI.i942, align 8
  %1310 = icmp eq i16 %1307, 8279
  %1311 = select i1 %1310, i64 1, i64 2
  store i64 %1311, i64* %RAX.i951, align 8
  %1312 = add i64 %1299, -52
  %1313 = trunc i64 %1311 to i32
  %1314 = add i64 %1298, 30
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1312 to i32*
  store i32 %1313, i32* %1315, align 4
  %1316 = load i64, i64* %3, align 8
  %1317 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1318 = and i32 %1317, 255
  %1319 = tail call i32 @llvm.ctpop.i32(i32 %1318)
  %1320 = trunc i32 %1319 to i8
  %1321 = and i8 %1320, 1
  %1322 = xor i8 %1321, 1
  store i8 %1322, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1323 = icmp eq i32 %1317, 0
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %30, align 1
  %1325 = lshr i32 %1317, 31
  %1326 = trunc i32 %1325 to i8
  store i8 %1326, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v145 = select i1 %1323, i64 73, i64 14
  %1327 = add i64 %1316, %.v145
  store i64 %1327, i64* %3, align 8
  br i1 %1323, label %block_.L_42f501, label %block_42f4c6

block_42f4c6:                                     ; preds = %block_.L_42f49a
  %1328 = load i64, i64* %RBP.i, align 8
  %1329 = add i64 %1328, -68
  %1330 = add i64 %1327, 4
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i32*
  %1332 = load i32, i32* %1331, align 4
  store i8 0, i8* %14, align 1
  %1333 = and i32 %1332, 255
  %1334 = tail call i32 @llvm.ctpop.i32(i32 %1333)
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = xor i8 %1336, 1
  store i8 %1337, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1338 = icmp eq i32 %1332, 0
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %30, align 1
  %1340 = lshr i32 %1332, 31
  %1341 = trunc i32 %1340 to i8
  store i8 %1341, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v146 = select i1 %1338, i64 10, i64 59
  %1342 = add i64 %1327, %.v146
  store i64 %1342, i64* %3, align 8
  br i1 %1338, label %block_42f4d0, label %block_.L_42f501

block_42f4d0:                                     ; preds = %block_42f4c6
  store i64 0, i64* %RAX.i951, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RSI.i942, align 8
  %1343 = add i64 %1328, -16
  %1344 = add i64 %1342, 8
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i64*
  %1346 = load i64, i64* %1345, align 8
  store i64 %1346, i64* %RCX.i667, align 8
  %1347 = add i64 %1342, 10
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1346 to i32*
  %1349 = load i32, i32* %1348, align 4
  %1350 = zext i32 %1349 to i64
  store i64 %1350, i64* %RDI.i945, align 8
  %1351 = add i64 %1342, -2720
  %1352 = add i64 %1342, 15
  %1353 = load i64, i64* %6, align 8
  %1354 = add i64 %1353, -8
  %1355 = inttoptr i64 %1354 to i64*
  store i64 %1352, i64* %1355, align 8
  store i64 %1354, i64* %6, align 8
  store i64 %1351, i64* %3, align 8
  %call2_42f4da = tail call %struct.Memory* @sub_42ea30.gnugo_sethand(%struct.State* nonnull %0, i64 %1351, %struct.Memory* %MEMORY.11)
  %1356 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57ca87_type* @G__0x57ca87 to i64), i64* %RSI.i942, align 8
  %1357 = load i64, i64* %RBP.i, align 8
  %1358 = add i64 %1357, -24
  %1359 = add i64 %1356, 14
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i64*
  %1361 = load i64, i64* %1360, align 8
  store i64 %1361, i64* %RCX.i667, align 8
  %1362 = add i64 %1356, 17
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to i64*
  %1364 = load i64, i64* %1363, align 8
  store i64 %1364, i64* %RDI.i945, align 8
  %1365 = add i64 %1357, -16
  %1366 = add i64 %1356, 21
  store i64 %1366, i64* %3, align 8
  %1367 = inttoptr i64 %1365 to i64*
  %1368 = load i64, i64* %1367, align 8
  store i64 %1368, i64* %RCX.i667, align 8
  %1369 = add i64 %1356, 23
  store i64 %1369, i64* %3, align 8
  %1370 = inttoptr i64 %1368 to i32*
  %1371 = load i32, i32* %1370, align 4
  %1372 = zext i32 %1371 to i64
  store i64 %1372, i64* %RDX.i939, align 8
  %1373 = add i64 %1357, -152
  %1374 = load i32, i32* %EAX.i912, align 4
  %1375 = add i64 %1356, 29
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1373 to i32*
  store i32 %1374, i32* %1376, align 4
  %1377 = load i64, i64* %3, align 8
  %1378 = add i64 %1377, -185548
  %1379 = add i64 %1377, 5
  %1380 = load i64, i64* %6, align 8
  %1381 = add i64 %1380, -8
  %1382 = inttoptr i64 %1381 to i64*
  store i64 %1379, i64* %1382, align 8
  store i64 %1381, i64* %6, align 8
  store i64 %1378, i64* %3, align 8
  %call2_42f4fc = tail call %struct.Memory* @sub_402030.sgfOverwritePropertyInt(%struct.State* nonnull %0, i64 %1378, %struct.Memory* %call2_42f4da)
  %.pre116 = load i64, i64* %3, align 8
  %.pre117 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  br label %block_.L_42f501

block_.L_42f501:                                  ; preds = %block_42f4c6, %block_42f4d0, %block_.L_42f49a
  %1383 = phi i32 [ 0, %block_.L_42f49a ], [ %1317, %block_42f4c6 ], [ %.pre117, %block_42f4d0 ]
  %1384 = phi i64 [ %1327, %block_.L_42f49a ], [ %1342, %block_42f4c6 ], [ %.pre116, %block_42f4d0 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.11, %block_.L_42f49a ], [ %MEMORY.11, %block_42f4c6 ], [ %call2_42f4fc, %block_42f4d0 ]
  %1385 = zext i32 %1383 to i64
  store i64 %1385, i64* %RAX.i951, align 8
  %1386 = load i64, i64* %RBP.i, align 8
  %1387 = add i64 %1386, -64
  %1388 = add i64 %1384, 10
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i32*
  %1390 = load i32, i32* %1389, align 4
  %1391 = add i32 %1390, -1
  %1392 = zext i32 %1391 to i64
  store i64 %1392, i64* %RCX.i667, align 8
  %1393 = lshr i32 %1391, 31
  %1394 = sub i32 %1383, %1391
  %1395 = icmp ult i32 %1383, %1391
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %14, align 1
  %1397 = and i32 %1394, 255
  %1398 = tail call i32 @llvm.ctpop.i32(i32 %1397)
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  %1401 = xor i8 %1400, 1
  store i8 %1401, i8* %21, align 1
  %1402 = xor i32 %1391, %1383
  %1403 = xor i32 %1402, %1394
  %1404 = lshr i32 %1403, 4
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  store i8 %1406, i8* %27, align 1
  %1407 = icmp eq i32 %1394, 0
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %30, align 1
  %1409 = lshr i32 %1394, 31
  %1410 = trunc i32 %1409 to i8
  store i8 %1410, i8* %33, align 1
  %1411 = lshr i32 %1383, 31
  %1412 = xor i32 %1393, %1411
  %1413 = xor i32 %1409, %1411
  %1414 = add nuw nsw i32 %1413, %1412
  %1415 = icmp eq i32 %1414, 2
  %1416 = zext i1 %1415 to i8
  store i8 %1416, i8* %39, align 1
  %.v147 = select i1 %1407, i64 21, i64 57
  %1417 = add i64 %1384, %.v147
  store i64 %1417, i64* %3, align 8
  br i1 %1407, label %block_42f516, label %block_.L_42f53a

block_42f516:                                     ; preds = %block_.L_42f501
  %1418 = add i64 %1386, -52
  %1419 = add i64 %1417, 3
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i32*
  %1421 = load i32, i32* %1420, align 4
  %1422 = zext i32 %1421 to i64
  store i64 %1422, i64* %RAX.i951, align 8
  %1423 = add i64 %1386, -16
  %1424 = add i64 %1417, 7
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1423 to i64*
  %1426 = load i64, i64* %1425, align 8
  store i64 %1426, i64* %RCX.i667, align 8
  %1427 = add i64 %1426, 4
  %1428 = add i64 %1417, 10
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i32*
  store i32 %1421, i32* %1429, align 4
  %1430 = load i64, i64* %RBP.i, align 8
  %1431 = add i64 %1430, -24
  %1432 = load i64, i64* %3, align 8
  %1433 = add i64 %1432, 4
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1431 to i64*
  %1435 = load i64, i64* %1434, align 8
  store i64 %1435, i64* %RDI.i945, align 8
  %1436 = add i64 %1432, -176368
  %1437 = add i64 %1432, 9
  %1438 = load i64, i64* %6, align 8
  %1439 = add i64 %1438, -8
  %1440 = inttoptr i64 %1439 to i64*
  store i64 %1437, i64* %1440, align 8
  store i64 %1439, i64* %6, align 8
  store i64 %1436, i64* %3, align 8
  %call2_42f524 = tail call %struct.Memory* @sub_404430.sgftreeBack(%struct.State* nonnull %0, i64 %1436, %struct.Memory* %MEMORY.17)
  %1441 = load i64, i64* %RBP.i, align 8
  %1442 = add i64 %1441, -52
  %1443 = load i64, i64* %3, align 8
  %1444 = add i64 %1443, 3
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1442 to i32*
  %1446 = load i32, i32* %1445, align 4
  %1447 = zext i32 %1446 to i64
  store i64 %1447, i64* %RDX.i939, align 8
  %1448 = add i64 %1441, -4
  %1449 = add i64 %1443, 6
  store i64 %1449, i64* %3, align 8
  %1450 = inttoptr i64 %1448 to i32*
  store i32 %1446, i32* %1450, align 4
  %1451 = load i64, i64* %RBP.i, align 8
  %1452 = add i64 %1451, -156
  %1453 = load i32, i32* %EAX.i912, align 4
  %1454 = load i64, i64* %3, align 8
  %1455 = add i64 %1454, 6
  store i64 %1455, i64* %3, align 8
  %1456 = inttoptr i64 %1452 to i32*
  store i32 %1453, i32* %1456, align 4
  %1457 = load i64, i64* %3, align 8
  %1458 = add i64 %1457, 596
  store i64 %1458, i64* %3, align 8
  br label %block_.L_42f789

block_.L_42f53a:                                  ; preds = %block_.L_42f501
  %1459 = add i64 %1386, -84
  store i64 %1459, i64* %RSI.i942, align 8
  %1460 = add i64 %1386, -88
  store i64 %1460, i64* %RDX.i939, align 8
  %1461 = add i64 %1386, -80
  %1462 = add i64 %1417, 12
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1461 to i64*
  %1464 = load i64, i64* %1463, align 8
  store i64 %1464, i64* %RDI.i945, align 8
  %1465 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1466 = zext i32 %1465 to i64
  store i64 %1466, i64* %RCX.i667, align 8
  %1467 = add i64 %1417, -188762
  %1468 = add i64 %1417, 24
  %1469 = load i64, i64* %6, align 8
  %1470 = add i64 %1469, -8
  %1471 = inttoptr i64 %1470 to i64*
  store i64 %1468, i64* %1471, align 8
  store i64 %1470, i64* %6, align 8
  store i64 %1467, i64* %3, align 8
  %call2_42f54d = tail call %struct.Memory* @sub_4013e0.get_moveXY(%struct.State* nonnull %0, i64 %1467, %struct.Memory* %MEMORY.17)
  %1472 = load i32, i32* %EAX.i912, align 4
  %1473 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1474 = and i32 %1472, 255
  %1475 = tail call i32 @llvm.ctpop.i32(i32 %1474)
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = xor i8 %1477, 1
  store i8 %1478, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1479 = icmp eq i32 %1472, 0
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %30, align 1
  %1481 = lshr i32 %1472, 31
  %1482 = trunc i32 %1481 to i8
  store i8 %1482, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v148 = select i1 %1479, i64 74, i64 9
  %1483 = add i64 %1473, %.v148
  store i64 %1483, i64* %3, align 8
  %.pre118 = load i64, i64* %RBP.i, align 8
  br i1 %1479, label %block_.L_42f59c, label %block_42f55b

block_42f55b:                                     ; preds = %block_.L_42f53a
  %1484 = add i64 %.pre118, -84
  %1485 = add i64 %1483, 3
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i32*
  %1487 = load i32, i32* %1486, align 4
  %1488 = zext i32 %1487 to i64
  store i64 %1488, i64* %RAX.i951, align 8
  %1489 = add i64 %.pre118, -56
  %1490 = add i64 %1483, 6
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1489 to i32*
  %1492 = load i32, i32* %1491, align 4
  %1493 = sub i32 %1487, %1492
  %1494 = icmp ult i32 %1487, %1492
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %14, align 1
  %1496 = and i32 %1493, 255
  %1497 = tail call i32 @llvm.ctpop.i32(i32 %1496)
  %1498 = trunc i32 %1497 to i8
  %1499 = and i8 %1498, 1
  %1500 = xor i8 %1499, 1
  store i8 %1500, i8* %21, align 1
  %1501 = xor i32 %1492, %1487
  %1502 = xor i32 %1501, %1493
  %1503 = lshr i32 %1502, 4
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  store i8 %1505, i8* %27, align 1
  %1506 = icmp eq i32 %1493, 0
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %30, align 1
  %1508 = lshr i32 %1493, 31
  %1509 = trunc i32 %1508 to i8
  store i8 %1509, i8* %33, align 1
  %1510 = lshr i32 %1487, 31
  %1511 = lshr i32 %1492, 31
  %1512 = xor i32 %1511, %1510
  %1513 = xor i32 %1508, %1510
  %1514 = add nuw nsw i32 %1513, %1512
  %1515 = icmp eq i32 %1514, 2
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %39, align 1
  %.v149 = select i1 %1506, i64 12, i64 60
  %1517 = add i64 %1483, %.v149
  store i64 %1517, i64* %3, align 8
  br i1 %1506, label %block_42f567, label %block_.L_42f597

block_42f567:                                     ; preds = %block_42f55b
  %1518 = add i64 %.pre118, -88
  %1519 = add i64 %1517, 3
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i32*
  %1521 = load i32, i32* %1520, align 4
  %1522 = zext i32 %1521 to i64
  store i64 %1522, i64* %RAX.i951, align 8
  %1523 = add i64 %.pre118, -60
  %1524 = add i64 %1517, 6
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i32*
  %1526 = load i32, i32* %1525, align 4
  %1527 = sub i32 %1521, %1526
  %1528 = icmp ult i32 %1521, %1526
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %14, align 1
  %1530 = and i32 %1527, 255
  %1531 = tail call i32 @llvm.ctpop.i32(i32 %1530)
  %1532 = trunc i32 %1531 to i8
  %1533 = and i8 %1532, 1
  %1534 = xor i8 %1533, 1
  store i8 %1534, i8* %21, align 1
  %1535 = xor i32 %1526, %1521
  %1536 = xor i32 %1535, %1527
  %1537 = lshr i32 %1536, 4
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  store i8 %1539, i8* %27, align 1
  %1540 = icmp eq i32 %1527, 0
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %30, align 1
  %1542 = lshr i32 %1527, 31
  %1543 = trunc i32 %1542 to i8
  store i8 %1543, i8* %33, align 1
  %1544 = lshr i32 %1521, 31
  %1545 = lshr i32 %1526, 31
  %1546 = xor i32 %1545, %1544
  %1547 = xor i32 %1542, %1544
  %1548 = add nuw nsw i32 %1547, %1546
  %1549 = icmp eq i32 %1548, 2
  %1550 = zext i1 %1549 to i8
  store i8 %1550, i8* %39, align 1
  %.v155 = select i1 %1540, i64 12, i64 48
  %1551 = add i64 %1517, %.v155
  store i64 %1551, i64* %3, align 8
  br i1 %1540, label %block_42f573, label %block_.L_42f597

block_42f573:                                     ; preds = %block_42f567
  %1552 = add i64 %.pre118, -52
  %1553 = add i64 %1551, 3
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i32*
  %1555 = load i32, i32* %1554, align 4
  %1556 = zext i32 %1555 to i64
  store i64 %1556, i64* %RAX.i951, align 8
  %1557 = add i64 %.pre118, -16
  %1558 = add i64 %1551, 7
  store i64 %1558, i64* %3, align 8
  %1559 = inttoptr i64 %1557 to i64*
  %1560 = load i64, i64* %1559, align 8
  store i64 %1560, i64* %RCX.i667, align 8
  %1561 = add i64 %1560, 4
  %1562 = add i64 %1551, 10
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1561 to i32*
  store i32 %1555, i32* %1563, align 4
  %1564 = load i64, i64* %RBP.i, align 8
  %1565 = add i64 %1564, -24
  %1566 = load i64, i64* %3, align 8
  %1567 = add i64 %1566, 4
  store i64 %1567, i64* %3, align 8
  %1568 = inttoptr i64 %1565 to i64*
  %1569 = load i64, i64* %1568, align 8
  store i64 %1569, i64* %RDI.i945, align 8
  %1570 = add i64 %1566, -176461
  %1571 = add i64 %1566, 9
  %1572 = load i64, i64* %6, align 8
  %1573 = add i64 %1572, -8
  %1574 = inttoptr i64 %1573 to i64*
  store i64 %1571, i64* %1574, align 8
  store i64 %1573, i64* %6, align 8
  store i64 %1570, i64* %3, align 8
  %call2_42f581 = tail call %struct.Memory* @sub_404430.sgftreeBack(%struct.State* nonnull %0, i64 %1570, %struct.Memory* %call2_42f54d)
  %1575 = load i64, i64* %RBP.i, align 8
  %1576 = add i64 %1575, -52
  %1577 = load i64, i64* %3, align 8
  %1578 = add i64 %1577, 3
  store i64 %1578, i64* %3, align 8
  %1579 = inttoptr i64 %1576 to i32*
  %1580 = load i32, i32* %1579, align 4
  %1581 = zext i32 %1580 to i64
  store i64 %1581, i64* %RDX.i939, align 8
  %1582 = add i64 %1575, -4
  %1583 = add i64 %1577, 6
  store i64 %1583, i64* %3, align 8
  %1584 = inttoptr i64 %1582 to i32*
  store i32 %1580, i32* %1584, align 4
  %1585 = load i64, i64* %RBP.i, align 8
  %1586 = add i64 %1585, -160
  %1587 = load i32, i32* %EAX.i912, align 4
  %1588 = load i64, i64* %3, align 8
  %1589 = add i64 %1588, 6
  store i64 %1589, i64* %3, align 8
  %1590 = inttoptr i64 %1586 to i32*
  store i32 %1587, i32* %1590, align 4
  %1591 = load i64, i64* %3, align 8
  %1592 = add i64 %1591, 503
  store i64 %1592, i64* %3, align 8
  br label %block_.L_42f789

block_.L_42f597:                                  ; preds = %block_42f567, %block_42f55b
  %1593 = phi i64 [ %1551, %block_42f567 ], [ %1517, %block_42f55b ]
  %1594 = add i64 %1593, 5
  store i64 %1594, i64* %3, align 8
  br label %block_.L_42f59c

block_.L_42f59c:                                  ; preds = %block_.L_42f53a, %block_.L_42f597
  %1595 = phi i64 [ %1594, %block_.L_42f597 ], [ %1483, %block_.L_42f53a ]
  %1596 = add i64 %.pre118, -84
  store i64 %1596, i64* %RDX.i939, align 8
  %1597 = add i64 %.pre118, -88
  store i64 %1597, i64* %RCX.i667, align 8
  %1598 = add i64 %1595, 11
  store i64 %1598, i64* %3, align 8
  %1599 = inttoptr i64 %1596 to i32*
  %1600 = load i32, i32* %1599, align 4
  %1601 = zext i32 %1600 to i64
  store i64 %1601, i64* %RDI.i945, align 8
  %1602 = add i64 %1595, 14
  store i64 %1602, i64* %3, align 8
  %1603 = inttoptr i64 %1597 to i32*
  %1604 = load i32, i32* %1603, align 4
  %1605 = zext i32 %1604 to i64
  store i64 %1605, i64* %RSI.i942, align 8
  %1606 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1607 = zext i32 %1606 to i64
  store i64 %1607, i64* %R8.i949, align 8
  %1608 = add i64 %.pre118, -36
  %1609 = add i64 %1595, 26
  store i64 %1609, i64* %3, align 8
  %1610 = inttoptr i64 %1608 to i32*
  %1611 = load i32, i32* %1610, align 4
  %1612 = zext i32 %1611 to i64
  store i64 %1612, i64* %643, align 8
  %1613 = add i64 %1595, 734196
  %1614 = add i64 %1595, 31
  %1615 = load i64, i64* %6, align 8
  %1616 = add i64 %1615, -8
  %1617 = inttoptr i64 %1616 to i64*
  store i64 %1614, i64* %1617, align 8
  store i64 %1616, i64* %6, align 8
  store i64 %1613, i64* %3, align 8
  %call2_42f5b6 = tail call %struct.Memory* @sub_4e2990.rotate(%struct.State* nonnull %0, i64 %1613, %struct.Memory* %call2_42f54d)
  %1618 = load i64, i64* %RBP.i, align 8
  %1619 = add i64 %1618, -84
  %1620 = load i64, i64* %3, align 8
  %1621 = add i64 %1620, 3
  store i64 %1621, i64* %3, align 8
  %1622 = inttoptr i64 %1619 to i32*
  %1623 = load i32, i32* %1622, align 4
  %1624 = zext i32 %1623 to i64
  store i64 %1624, i64* %RSI.i942, align 8
  %1625 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1626 = sub i32 %1623, %1625
  %1627 = icmp ult i32 %1623, %1625
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %14, align 1
  %1629 = and i32 %1626, 255
  %1630 = tail call i32 @llvm.ctpop.i32(i32 %1629)
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = xor i8 %1632, 1
  store i8 %1633, i8* %21, align 1
  %1634 = xor i32 %1625, %1623
  %1635 = xor i32 %1634, %1626
  %1636 = lshr i32 %1635, 4
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  store i8 %1638, i8* %27, align 1
  %1639 = icmp eq i32 %1626, 0
  %1640 = zext i1 %1639 to i8
  store i8 %1640, i8* %30, align 1
  %1641 = lshr i32 %1626, 31
  %1642 = trunc i32 %1641 to i8
  store i8 %1642, i8* %33, align 1
  %1643 = lshr i32 %1623, 31
  %1644 = lshr i32 %1625, 31
  %1645 = xor i32 %1644, %1643
  %1646 = xor i32 %1641, %1643
  %1647 = add nuw nsw i32 %1646, %1645
  %1648 = icmp eq i32 %1647, 2
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %39, align 1
  %.v150 = select i1 %1627, i64 16, i64 62
  %1650 = add i64 %1620, %.v150
  store i64 %1650, i64* %3, align 8
  br i1 %1627, label %block_42f5cb, label %block_.L_42f5f9

block_42f5cb:                                     ; preds = %block_.L_42f59c
  %1651 = add i64 %1618, -88
  %1652 = add i64 %1650, 3
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1651 to i32*
  %1654 = load i32, i32* %1653, align 4
  %1655 = zext i32 %1654 to i64
  store i64 %1655, i64* %RAX.i951, align 8
  %1656 = sub i32 %1654, %1625
  %1657 = icmp ult i32 %1654, %1625
  %1658 = zext i1 %1657 to i8
  store i8 %1658, i8* %14, align 1
  %1659 = and i32 %1656, 255
  %1660 = tail call i32 @llvm.ctpop.i32(i32 %1659)
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  %1663 = xor i8 %1662, 1
  store i8 %1663, i8* %21, align 1
  %1664 = xor i32 %1625, %1654
  %1665 = xor i32 %1664, %1656
  %1666 = lshr i32 %1665, 4
  %1667 = trunc i32 %1666 to i8
  %1668 = and i8 %1667, 1
  store i8 %1668, i8* %27, align 1
  %1669 = icmp eq i32 %1656, 0
  %1670 = zext i1 %1669 to i8
  store i8 %1670, i8* %30, align 1
  %1671 = lshr i32 %1656, 31
  %1672 = trunc i32 %1671 to i8
  store i8 %1672, i8* %33, align 1
  %1673 = lshr i32 %1654, 31
  %1674 = xor i32 %1644, %1673
  %1675 = xor i32 %1671, %1673
  %1676 = add nuw nsw i32 %1675, %1674
  %1677 = icmp eq i32 %1676, 2
  %1678 = zext i1 %1677 to i8
  store i8 %1678, i8* %39, align 1
  %.v153 = select i1 %1657, i64 16, i64 46
  %1679 = add i64 %1650, %.v153
  store i64 %1679, i64* %3, align 8
  br i1 %1657, label %block_42f5db, label %block_.L_42f5f9

block_42f5db:                                     ; preds = %block_42f5cb
  %1680 = add i64 %1679, 4
  store i64 %1680, i64* %3, align 8
  %1681 = load i32, i32* %1622, align 4
  %1682 = mul i32 %1681, 20
  %1683 = add i32 %1682, 21
  %1684 = zext i32 %1683 to i64
  store i64 %1684, i64* %RAX.i951, align 8
  %1685 = icmp ugt i32 %1682, -22
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %14, align 1
  %1687 = and i32 %1683, 253
  %1688 = tail call i32 @llvm.ctpop.i32(i32 %1687)
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  %1691 = xor i8 %1690, 1
  store i8 %1691, i8* %21, align 1
  %1692 = xor i32 %1682, 16
  %1693 = xor i32 %1692, %1683
  %1694 = lshr i32 %1693, 4
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  store i8 %1696, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %1697 = lshr i32 %1683, 31
  %1698 = trunc i32 %1697 to i8
  store i8 %1698, i8* %33, align 1
  %1699 = lshr i32 %1682, 31
  %1700 = xor i32 %1697, %1699
  %1701 = add nuw nsw i32 %1700, %1697
  %1702 = icmp eq i32 %1701, 2
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %39, align 1
  %1704 = add i64 %1679, 10
  store i64 %1704, i64* %3, align 8
  %1705 = load i32, i32* %1653, align 4
  %1706 = add i32 %1705, %1683
  %1707 = zext i32 %1706 to i64
  store i64 %1707, i64* %RAX.i951, align 8
  %1708 = icmp ult i32 %1706, %1683
  %1709 = icmp ult i32 %1706, %1705
  %1710 = or i1 %1708, %1709
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %14, align 1
  %1712 = and i32 %1706, 255
  %1713 = tail call i32 @llvm.ctpop.i32(i32 %1712)
  %1714 = trunc i32 %1713 to i8
  %1715 = and i8 %1714, 1
  %1716 = xor i8 %1715, 1
  store i8 %1716, i8* %21, align 1
  %1717 = xor i32 %1705, %1683
  %1718 = xor i32 %1717, %1706
  %1719 = lshr i32 %1718, 4
  %1720 = trunc i32 %1719 to i8
  %1721 = and i8 %1720, 1
  store i8 %1721, i8* %27, align 1
  %1722 = icmp eq i32 %1706, 0
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %30, align 1
  %1724 = lshr i32 %1706, 31
  %1725 = trunc i32 %1724 to i8
  store i8 %1725, i8* %33, align 1
  %1726 = lshr i32 %1705, 31
  %1727 = xor i32 %1724, %1697
  %1728 = xor i32 %1724, %1726
  %1729 = add nuw nsw i32 %1727, %1728
  %1730 = icmp eq i32 %1729, 2
  %1731 = zext i1 %1730 to i8
  store i8 %1731, i8* %39, align 1
  %1732 = sext i32 %1706 to i64
  store i64 %1732, i64* %RCX.i667, align 8
  %1733 = add nsw i64 %1732, 12099168
  %1734 = add i64 %1679, 21
  store i64 %1734, i64* %3, align 8
  %1735 = inttoptr i64 %1733 to i8*
  %1736 = load i8, i8* %1735, align 1
  %1737 = zext i8 %1736 to i64
  store i64 %1737, i64* %RAX.i951, align 8
  %1738 = zext i8 %1736 to i32
  store i8 0, i8* %14, align 1
  %1739 = tail call i32 @llvm.ctpop.i32(i32 %1738)
  %1740 = trunc i32 %1739 to i8
  %1741 = and i8 %1740, 1
  %1742 = xor i8 %1741, 1
  store i8 %1742, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1743 = icmp eq i8 %1736, 0
  %1744 = zext i1 %1743 to i8
  store i8 %1744, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v154 = select i1 %1743, i64 50, i64 30
  %1745 = add i64 %1679, %.v154
  store i64 %1745, i64* %3, align 8
  %.pre120 = load i64, i64* %RBP.i, align 8
  br i1 %1743, label %block_.L_42f60d, label %block_.L_42f5f9

block_.L_42f5f9:                                  ; preds = %block_42f5db, %block_42f5cb, %block_.L_42f59c
  %1746 = phi i64 [ %1679, %block_42f5cb ], [ %1650, %block_.L_42f59c ], [ %1745, %block_42f5db ]
  %1747 = phi i64 [ %1618, %block_42f5cb ], [ %1618, %block_.L_42f59c ], [ %.pre120, %block_42f5db ]
  %1748 = add i64 %1747, -84
  %1749 = add i64 %1746, 4
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to i32*
  %1751 = load i32, i32* %1750, align 4
  %1752 = add i32 %1751, 1
  %1753 = icmp ne i32 %1751, -1
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %14, align 1
  %1755 = and i32 %1752, 255
  %1756 = tail call i32 @llvm.ctpop.i32(i32 %1755)
  %1757 = trunc i32 %1756 to i8
  %1758 = and i8 %1757, 1
  %1759 = xor i8 %1758, 1
  store i8 %1759, i8* %21, align 1
  %1760 = xor i32 %1751, 16
  %1761 = xor i32 %1760, %1752
  %1762 = lshr i32 %1761, 4
  %1763 = trunc i32 %1762 to i8
  %1764 = and i8 %1763, 1
  store i8 %1764, i8* %27, align 1
  %1765 = icmp eq i32 %1752, 0
  %1766 = zext i1 %1765 to i8
  store i8 %1766, i8* %30, align 1
  %1767 = lshr i32 %1752, 31
  %1768 = trunc i32 %1767 to i8
  store i8 %1768, i8* %33, align 1
  %1769 = lshr i32 %1751, 31
  %1770 = xor i32 %1769, 1
  %1771 = xor i32 %1767, %1769
  %1772 = add nuw nsw i32 %1771, %1770
  %1773 = icmp eq i32 %1772, 2
  %1774 = zext i1 %1773 to i8
  store i8 %1774, i8* %39, align 1
  %.v151 = select i1 %1765, i64 10, i64 50
  %1775 = add i64 %1746, %.v151
  store i64 %1775, i64* %3, align 8
  br i1 %1765, label %block_42f603, label %block_.L_42f62b

block_42f603:                                     ; preds = %block_.L_42f5f9
  %1776 = add i64 %1747, -88
  %1777 = add i64 %1775, 4
  store i64 %1777, i64* %3, align 8
  %1778 = inttoptr i64 %1776 to i32*
  %1779 = load i32, i32* %1778, align 4
  %1780 = add i32 %1779, 1
  %1781 = icmp ne i32 %1779, -1
  %1782 = zext i1 %1781 to i8
  store i8 %1782, i8* %14, align 1
  %1783 = and i32 %1780, 255
  %1784 = tail call i32 @llvm.ctpop.i32(i32 %1783)
  %1785 = trunc i32 %1784 to i8
  %1786 = and i8 %1785, 1
  %1787 = xor i8 %1786, 1
  store i8 %1787, i8* %21, align 1
  %1788 = xor i32 %1779, 16
  %1789 = xor i32 %1788, %1780
  %1790 = lshr i32 %1789, 4
  %1791 = trunc i32 %1790 to i8
  %1792 = and i8 %1791, 1
  store i8 %1792, i8* %27, align 1
  %1793 = icmp eq i32 %1780, 0
  %1794 = zext i1 %1793 to i8
  store i8 %1794, i8* %30, align 1
  %1795 = lshr i32 %1780, 31
  %1796 = trunc i32 %1795 to i8
  store i8 %1796, i8* %33, align 1
  %1797 = lshr i32 %1779, 31
  %1798 = xor i32 %1797, 1
  %1799 = xor i32 %1795, %1797
  %1800 = add nuw nsw i32 %1799, %1798
  %1801 = icmp eq i32 %1800, 2
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %39, align 1
  %.v152 = select i1 %1793, i64 10, i64 40
  %1803 = add i64 %1775, %.v152
  store i64 %1803, i64* %3, align 8
  br i1 %1793, label %block_.L_42f60d, label %block_.L_42f62b

block_.L_42f60d:                                  ; preds = %block_42f5db, %block_42f603
  %1804 = phi i64 [ %1803, %block_42f603 ], [ %1745, %block_42f5db ]
  %1805 = phi i64 [ %1747, %block_42f603 ], [ %.pre120, %block_42f5db ]
  %1806 = add i64 %1805, -84
  %1807 = add i64 %1804, 3
  store i64 %1807, i64* %3, align 8
  %1808 = inttoptr i64 %1806 to i32*
  %1809 = load i32, i32* %1808, align 4
  %1810 = zext i32 %1809 to i64
  store i64 %1810, i64* %RDI.i945, align 8
  %1811 = add i64 %1805, -88
  %1812 = add i64 %1804, 6
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1811 to i32*
  %1814 = load i32, i32* %1813, align 4
  %1815 = zext i32 %1814 to i64
  store i64 %1815, i64* %RSI.i942, align 8
  %1816 = add i64 %1805, -52
  %1817 = add i64 %1804, 9
  store i64 %1817, i64* %3, align 8
  %1818 = inttoptr i64 %1816 to i32*
  %1819 = load i32, i32* %1818, align 4
  %1820 = zext i32 %1819 to i64
  store i64 %1820, i64* %RDX.i939, align 8
  %1821 = add i64 %1804, -4285
  %1822 = add i64 %1804, 14
  %1823 = load i64, i64* %6, align 8
  %1824 = add i64 %1823, -8
  %1825 = inttoptr i64 %1824 to i64*
  store i64 %1822, i64* %1825, align 8
  store i64 %1824, i64* %6, align 8
  store i64 %1821, i64* %3, align 8
  %call2_42f616 = tail call %struct.Memory* @sub_42e550.gnugo_play_move(%struct.State* nonnull %0, i64 %1821, %struct.Memory* %call2_42f5b6)
  %1826 = load i64, i64* %3, align 8
  store i64 3, i64* %RDX.i939, align 8
  %1827 = load i64, i64* %RBP.i, align 8
  %1828 = add i64 %1827, -52
  %1829 = add i64 %1826, 8
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1828 to i32*
  %1831 = load i32, i32* %1830, align 4
  %1832 = sub i32 3, %1831
  %1833 = zext i32 %1832 to i64
  store i64 %1833, i64* %RDX.i939, align 8
  %1834 = icmp ugt i32 %1831, 3
  %1835 = zext i1 %1834 to i8
  store i8 %1835, i8* %14, align 1
  %1836 = and i32 %1832, 255
  %1837 = tail call i32 @llvm.ctpop.i32(i32 %1836)
  %1838 = trunc i32 %1837 to i8
  %1839 = and i8 %1838, 1
  %1840 = xor i8 %1839, 1
  store i8 %1840, i8* %21, align 1
  %1841 = xor i32 %1832, %1831
  %1842 = lshr i32 %1841, 4
  %1843 = trunc i32 %1842 to i8
  %1844 = and i8 %1843, 1
  store i8 %1844, i8* %27, align 1
  %1845 = icmp eq i32 %1832, 0
  %1846 = zext i1 %1845 to i8
  store i8 %1846, i8* %30, align 1
  %1847 = lshr i32 %1832, 31
  %1848 = trunc i32 %1847 to i8
  store i8 %1848, i8* %33, align 1
  %1849 = lshr i32 %1831, 31
  %1850 = add nuw nsw i32 %1847, %1849
  %1851 = icmp eq i32 %1850, 2
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %39, align 1
  %1853 = add i64 %1826, 11
  store i64 %1853, i64* %3, align 8
  store i32 %1832, i32* %1830, align 4
  br label %block_.L_42f75f

block_.L_42f62b:                                  ; preds = %block_42f603, %block_.L_42f5f9
  %1854 = phi i64 [ %1803, %block_42f603 ], [ %1775, %block_.L_42f5f9 ]
  store i64 ptrtoint (%G__0x57cb03_type* @G__0x57cb03 to i64), i64* %RDI.i945, align 8
  store i8 0, i8* %AL.i643, align 1
  %1855 = add i64 %1854, 141189
  %1856 = add i64 %1854, 17
  %1857 = load i64, i64* %6, align 8
  %1858 = add i64 %1857, -8
  %1859 = inttoptr i64 %1858 to i64*
  store i64 %1856, i64* %1859, align 8
  store i64 %1858, i64* %6, align 8
  store i64 %1855, i64* %3, align 8
  %call2_42f637 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1855, %struct.Memory* %call2_42f5b6)
  %1860 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57cb47_type* @G__0x57cb47 to i64), i64* %RDI.i945, align 8
  %1861 = load i64, i64* %RBP.i, align 8
  %1862 = add i64 %1861, -84
  %1863 = add i64 %1860, 13
  store i64 %1863, i64* %3, align 8
  %1864 = inttoptr i64 %1862 to i32*
  %1865 = load i32, i32* %1864, align 4
  %1866 = zext i32 %1865 to i64
  store i64 %1866, i64* %RSI.i942, align 8
  %1867 = add i64 %1861, -88
  %1868 = add i64 %1860, 16
  store i64 %1868, i64* %3, align 8
  %1869 = inttoptr i64 %1867 to i32*
  %1870 = load i32, i32* %1869, align 4
  %1871 = zext i32 %1870 to i64
  store i64 %1871, i64* %RDX.i939, align 8
  %1872 = add i64 %1861, -164
  %1873 = load i32, i32* %EAX.i912, align 4
  %1874 = add i64 %1860, 22
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1872 to i32*
  store i32 %1873, i32* %1875, align 4
  %1876 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i643, align 1
  %1877 = add i64 %1876, 141150
  %1878 = add i64 %1876, 7
  %1879 = load i64, i64* %6, align 8
  %1880 = add i64 %1879, -8
  %1881 = inttoptr i64 %1880 to i64*
  store i64 %1878, i64* %1881, align 8
  store i64 %1880, i64* %6, align 8
  store i64 %1877, i64* %3, align 8
  %call2_42f654 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1877, %struct.Memory* %call2_42f637)
  %1882 = load i64, i64* %RBP.i, align 8
  %1883 = add i64 %1882, -52
  %1884 = load i64, i64* %3, align 8
  %1885 = add i64 %1884, 3
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1883 to i32*
  %1887 = load i32, i32* %1886, align 4
  %1888 = zext i32 %1887 to i64
  store i64 %1888, i64* %RDX.i939, align 8
  %1889 = add i64 %1882, -4
  %1890 = add i64 %1884, 6
  store i64 %1890, i64* %3, align 8
  %1891 = inttoptr i64 %1889 to i32*
  store i32 %1887, i32* %1891, align 4
  %1892 = load i64, i64* %RBP.i, align 8
  %1893 = add i64 %1892, -168
  %1894 = load i32, i32* %EAX.i912, align 4
  %1895 = load i64, i64* %3, align 8
  %1896 = add i64 %1895, 6
  store i64 %1896, i64* %3, align 8
  %1897 = inttoptr i64 %1893 to i32*
  store i32 %1894, i32* %1897, align 4
  %1898 = load i64, i64* %3, align 8
  %1899 = add i64 %1898, 292
  store i64 %1899, i64* %3, align 8
  br label %block_.L_42f789

block_.L_42f66f:                                  ; preds = %block_42f2fe
  %1900 = add i64 %916, -84
  store i64 %1900, i64* %RSI.i942, align 8
  %1901 = add i64 %916, -88
  store i64 %1901, i64* %RDX.i939, align 8
  %1902 = add i64 %916, -80
  %1903 = add i64 %915, 12
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1902 to i64*
  %1905 = load i64, i64* %1904, align 8
  store i64 %1905, i64* %RDI.i945, align 8
  %1906 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1907 = zext i32 %1906 to i64
  store i64 %1907, i64* %RCX.i667, align 8
  %1908 = add i64 %915, -189071
  %1909 = add i64 %915, 24
  %1910 = load i64, i64* %6, align 8
  %1911 = add i64 %1910, -8
  %1912 = inttoptr i64 %1911 to i64*
  store i64 %1909, i64* %1912, align 8
  store i64 %1911, i64* %6, align 8
  store i64 %1908, i64* %3, align 8
  %call2_42f682 = tail call %struct.Memory* @sub_4013e0.get_moveXY(%struct.State* nonnull %0, i64 %1908, %struct.Memory* %MEMORY.11)
  %1913 = load i64, i64* %RBP.i, align 8
  %1914 = add i64 %1913, -84
  %1915 = load i64, i64* %3, align 8
  store i64 %1914, i64* %RDX.i939, align 8
  %1916 = add i64 %1913, -88
  store i64 %1916, i64* %RCX.i667, align 8
  %1917 = add i64 %1915, 11
  store i64 %1917, i64* %3, align 8
  %1918 = inttoptr i64 %1914 to i32*
  %1919 = load i32, i32* %1918, align 4
  %1920 = zext i32 %1919 to i64
  store i64 %1920, i64* %RDI.i945, align 8
  %1921 = add i64 %1915, 14
  store i64 %1921, i64* %3, align 8
  %1922 = inttoptr i64 %1916 to i32*
  %1923 = load i32, i32* %1922, align 4
  %1924 = zext i32 %1923 to i64
  store i64 %1924, i64* %RSI.i942, align 8
  %1925 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1926 = zext i32 %1925 to i64
  store i64 %1926, i64* %R8.i949, align 8
  %1927 = add i64 %1913, -36
  %1928 = add i64 %1915, 26
  store i64 %1928, i64* %3, align 8
  %1929 = inttoptr i64 %1927 to i32*
  %1930 = load i32, i32* %1929, align 4
  %1931 = zext i32 %1930 to i64
  store i64 %1931, i64* %643, align 8
  %1932 = add i64 %1913, -172
  %1933 = load i32, i32* %EAX.i912, align 4
  %1934 = add i64 %1915, 32
  store i64 %1934, i64* %3, align 8
  %1935 = inttoptr i64 %1932 to i32*
  store i32 %1933, i32* %1935, align 4
  %1936 = load i64, i64* %3, align 8
  %1937 = add i64 %1936, 733929
  %1938 = add i64 %1936, 5
  %1939 = load i64, i64* %6, align 8
  %1940 = add i64 %1939, -8
  %1941 = inttoptr i64 %1940 to i64*
  store i64 %1938, i64* %1941, align 8
  store i64 %1940, i64* %6, align 8
  store i64 %1937, i64* %3, align 8
  %call2_42f6a7 = tail call %struct.Memory* @sub_4e2990.rotate(%struct.State* nonnull %0, i64 %1937, %struct.Memory* %call2_42f682)
  %1942 = load i64, i64* %RBP.i, align 8
  %1943 = add i64 %1942, -84
  %1944 = load i64, i64* %3, align 8
  %1945 = add i64 %1944, 3
  store i64 %1945, i64* %3, align 8
  %1946 = inttoptr i64 %1943 to i32*
  %1947 = load i32, i32* %1946, align 4
  %1948 = zext i32 %1947 to i64
  store i64 %1948, i64* %RAX.i951, align 8
  %1949 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1950 = sub i32 %1947, %1949
  %1951 = icmp ult i32 %1947, %1949
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %14, align 1
  %1953 = and i32 %1950, 255
  %1954 = tail call i32 @llvm.ctpop.i32(i32 %1953)
  %1955 = trunc i32 %1954 to i8
  %1956 = and i8 %1955, 1
  %1957 = xor i8 %1956, 1
  store i8 %1957, i8* %21, align 1
  %1958 = xor i32 %1949, %1947
  %1959 = xor i32 %1958, %1950
  %1960 = lshr i32 %1959, 4
  %1961 = trunc i32 %1960 to i8
  %1962 = and i8 %1961, 1
  store i8 %1962, i8* %27, align 1
  %1963 = icmp eq i32 %1950, 0
  %1964 = zext i1 %1963 to i8
  store i8 %1964, i8* %30, align 1
  %1965 = lshr i32 %1950, 31
  %1966 = trunc i32 %1965 to i8
  store i8 %1966, i8* %33, align 1
  %1967 = lshr i32 %1947, 31
  %1968 = lshr i32 %1949, 31
  %1969 = xor i32 %1968, %1967
  %1970 = xor i32 %1965, %1967
  %1971 = add nuw nsw i32 %1970, %1969
  %1972 = icmp eq i32 %1971, 2
  %1973 = zext i1 %1972 to i8
  store i8 %1973, i8* %39, align 1
  %.v141 = select i1 %1951, i64 16, i64 32
  %1974 = add i64 %1944, %.v141
  store i64 %1974, i64* %3, align 8
  br i1 %1951, label %block_42f6bc, label %block_.L_42f75f

block_42f6bc:                                     ; preds = %block_.L_42f66f
  %1975 = add i64 %1942, -88
  %1976 = add i64 %1974, 3
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i32*
  %1978 = load i32, i32* %1977, align 4
  %1979 = zext i32 %1978 to i64
  store i64 %1979, i64* %RAX.i951, align 8
  %1980 = sub i32 %1978, %1949
  %1981 = icmp ult i32 %1978, %1949
  %1982 = zext i1 %1981 to i8
  store i8 %1982, i8* %14, align 1
  %1983 = and i32 %1980, 255
  %1984 = tail call i32 @llvm.ctpop.i32(i32 %1983)
  %1985 = trunc i32 %1984 to i8
  %1986 = and i8 %1985, 1
  %1987 = xor i8 %1986, 1
  store i8 %1987, i8* %21, align 1
  %1988 = xor i32 %1949, %1978
  %1989 = xor i32 %1988, %1980
  %1990 = lshr i32 %1989, 4
  %1991 = trunc i32 %1990 to i8
  %1992 = and i8 %1991, 1
  store i8 %1992, i8* %27, align 1
  %1993 = icmp eq i32 %1980, 0
  %1994 = zext i1 %1993 to i8
  store i8 %1994, i8* %30, align 1
  %1995 = lshr i32 %1980, 31
  %1996 = trunc i32 %1995 to i8
  store i8 %1996, i8* %33, align 1
  %1997 = lshr i32 %1978, 31
  %1998 = xor i32 %1968, %1997
  %1999 = xor i32 %1995, %1997
  %2000 = add nuw nsw i32 %1999, %1998
  %2001 = icmp eq i32 %2000, 2
  %2002 = zext i1 %2001 to i8
  store i8 %2002, i8* %39, align 1
  %.v142 = select i1 %1981, i64 21, i64 16
  %2003 = add i64 %1974, %.v142
  store i64 %2003, i64* %3, align 8
  br i1 %1981, label %block_.L_42f6d1, label %block_.L_42f75f

block_.L_42f6d1:                                  ; preds = %block_42f6bc
  %2004 = add i64 %2003, 4
  store i64 %2004, i64* %3, align 8
  %2005 = load i32, i32* %1946, align 4
  store i8 0, i8* %14, align 1
  %2006 = and i32 %2005, 255
  %2007 = tail call i32 @llvm.ctpop.i32(i32 %2006)
  %2008 = trunc i32 %2007 to i8
  %2009 = and i8 %2008, 1
  %2010 = xor i8 %2009, 1
  store i8 %2010, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2011 = icmp eq i32 %2005, 0
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %30, align 1
  %2013 = lshr i32 %2005, 31
  %2014 = trunc i32 %2013 to i8
  store i8 %2014, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2015 = icmp ne i8 %2014, 0
  %2016 = or i1 %2011, %2015
  %.v143 = select i1 %2016, i64 51, i64 10
  %2017 = add i64 %2003, %.v143
  store i64 3, i64* %RAX.i951, align 8
  %2018 = add i64 %2017, 8
  store i64 %2018, i64* %3, align 8
  %2019 = load i32, i32* %1946, align 4
  %2020 = zext i32 %2019 to i64
  store i64 %2020, i64* %RCX.i667, align 8
  %2021 = add i64 %2017, 11
  store i64 %2021, i64* %3, align 8
  %2022 = mul i32 %2019, 20
  br i1 %2016, label %block_.L_42f704, label %block_42f6db

block_42f6db:                                     ; preds = %block_.L_42f6d1
  %2023 = add i32 %2022, -20
  %2024 = or i32 %2022, 1
  %2025 = zext i32 %2024 to i64
  store i64 %2025, i64* %RCX.i667, align 8
  %2026 = icmp ugt i32 %2023, -22
  %2027 = zext i1 %2026 to i8
  store i8 %2027, i8* %14, align 1
  %2028 = and i32 %2024, 253
  %2029 = tail call i32 @llvm.ctpop.i32(i32 %2028)
  %2030 = trunc i32 %2029 to i8
  %2031 = and i8 %2030, 1
  %2032 = xor i8 %2031, 1
  store i8 %2032, i8* %21, align 1
  %2033 = xor i32 %2023, 16
  %2034 = xor i32 %2033, %2022
  %2035 = lshr i32 %2034, 4
  %2036 = trunc i32 %2035 to i8
  %2037 = and i8 %2036, 1
  store i8 %2037, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %2038 = lshr i32 %2022, 31
  %2039 = trunc i32 %2038 to i8
  store i8 %2039, i8* %33, align 1
  %2040 = lshr i32 %2023, 31
  %2041 = xor i32 %2038, %2040
  %2042 = add nuw nsw i32 %2041, %2038
  %2043 = icmp eq i32 %2042, 2
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %39, align 1
  %2045 = add i64 %2017, 20
  store i64 %2045, i64* %3, align 8
  %2046 = load i32, i32* %1977, align 4
  %2047 = add i32 %2046, %2024
  %2048 = zext i32 %2047 to i64
  store i64 %2048, i64* %RCX.i667, align 8
  %2049 = icmp ult i32 %2047, %2024
  %2050 = icmp ult i32 %2047, %2046
  %2051 = or i1 %2049, %2050
  %2052 = zext i1 %2051 to i8
  store i8 %2052, i8* %14, align 1
  %2053 = and i32 %2047, 255
  %2054 = tail call i32 @llvm.ctpop.i32(i32 %2053)
  %2055 = trunc i32 %2054 to i8
  %2056 = and i8 %2055, 1
  %2057 = xor i8 %2056, 1
  store i8 %2057, i8* %21, align 1
  %2058 = xor i32 %2046, %2022
  %2059 = xor i32 %2058, %2047
  %2060 = lshr i32 %2059, 4
  %2061 = trunc i32 %2060 to i8
  %2062 = and i8 %2061, 1
  store i8 %2062, i8* %27, align 1
  %2063 = icmp eq i32 %2047, 0
  %2064 = zext i1 %2063 to i8
  store i8 %2064, i8* %30, align 1
  %2065 = lshr i32 %2047, 31
  %2066 = trunc i32 %2065 to i8
  store i8 %2066, i8* %33, align 1
  %2067 = lshr i32 %2046, 31
  %2068 = xor i32 %2065, %2038
  %2069 = xor i32 %2065, %2067
  %2070 = add nuw nsw i32 %2068, %2069
  %2071 = icmp eq i32 %2070, 2
  %2072 = zext i1 %2071 to i8
  store i8 %2072, i8* %39, align 1
  %2073 = sext i32 %2047 to i64
  store i64 %2073, i64* %RDX.i939, align 8
  %2074 = add nsw i64 %2073, 12099168
  %2075 = add i64 %2017, 31
  store i64 %2075, i64* %3, align 8
  %2076 = inttoptr i64 %2074 to i8*
  %2077 = load i8, i8* %2076, align 1
  %2078 = zext i8 %2077 to i64
  store i64 %2078, i64* %RCX.i667, align 8
  %2079 = load i64, i64* %RAX.i951, align 8
  %2080 = zext i8 %2077 to i32
  %2081 = zext i8 %2077 to i64
  %2082 = trunc i64 %2079 to i32
  %2083 = sub i32 %2082, %2080
  %2084 = zext i32 %2083 to i64
  store i64 %2084, i64* %RAX.i951, align 8
  %2085 = icmp ult i32 %2082, %2080
  %2086 = zext i1 %2085 to i8
  store i8 %2086, i8* %14, align 1
  %2087 = and i32 %2083, 255
  %2088 = tail call i32 @llvm.ctpop.i32(i32 %2087)
  %2089 = trunc i32 %2088 to i8
  %2090 = and i8 %2089, 1
  %2091 = xor i8 %2090, 1
  store i8 %2091, i8* %21, align 1
  %2092 = xor i64 %2081, %2079
  %2093 = trunc i64 %2092 to i32
  %2094 = xor i32 %2093, %2083
  %2095 = lshr i32 %2094, 4
  %2096 = trunc i32 %2095 to i8
  %2097 = and i8 %2096, 1
  store i8 %2097, i8* %27, align 1
  %2098 = icmp eq i32 %2083, 0
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %30, align 1
  %2100 = lshr i32 %2083, 31
  %2101 = trunc i32 %2100 to i8
  store i8 %2101, i8* %33, align 1
  %2102 = lshr i32 %2082, 31
  %2103 = xor i32 %2100, %2102
  %2104 = add nuw nsw i32 %2103, %2102
  %2105 = icmp eq i32 %2104, 2
  %2106 = zext i1 %2105 to i8
  store i8 %2106, i8* %39, align 1
  %2107 = load i64, i64* %RBP.i, align 8
  %2108 = add i64 %2107, -92
  %2109 = add i64 %2017, 36
  store i64 %2109, i64* %3, align 8
  %2110 = inttoptr i64 %2108 to i32*
  store i32 %2083, i32* %2110, align 4
  %2111 = load i64, i64* %3, align 8
  %2112 = add i64 %2111, 41
  store i64 %2112, i64* %3, align 8
  br label %block_.L_42f728

block_.L_42f704:                                  ; preds = %block_.L_42f6d1
  %2113 = add i32 %2022, 20
  %2114 = add i32 %2022, 41
  %2115 = zext i32 %2114 to i64
  store i64 %2115, i64* %RCX.i667, align 8
  %2116 = icmp ugt i32 %2113, -22
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %14, align 1
  %2118 = and i32 %2114, 253
  %2119 = tail call i32 @llvm.ctpop.i32(i32 %2118)
  %2120 = trunc i32 %2119 to i8
  %2121 = and i8 %2120, 1
  %2122 = xor i8 %2121, 1
  store i8 %2122, i8* %21, align 1
  %2123 = xor i32 %2113, 16
  %2124 = xor i32 %2123, %2114
  %2125 = lshr i32 %2124, 4
  %2126 = trunc i32 %2125 to i8
  %2127 = and i8 %2126, 1
  store i8 %2127, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %2128 = lshr i32 %2114, 31
  %2129 = trunc i32 %2128 to i8
  store i8 %2129, i8* %33, align 1
  %2130 = lshr i32 %2113, 31
  %2131 = xor i32 %2128, %2130
  %2132 = add nuw nsw i32 %2131, %2128
  %2133 = icmp eq i32 %2132, 2
  %2134 = zext i1 %2133 to i8
  store i8 %2134, i8* %39, align 1
  %2135 = add i64 %2017, 20
  store i64 %2135, i64* %3, align 8
  %2136 = load i32, i32* %1977, align 4
  %2137 = add i32 %2136, %2114
  %2138 = zext i32 %2137 to i64
  store i64 %2138, i64* %RCX.i667, align 8
  %2139 = icmp ult i32 %2137, %2114
  %2140 = icmp ult i32 %2137, %2136
  %2141 = or i1 %2139, %2140
  %2142 = zext i1 %2141 to i8
  store i8 %2142, i8* %14, align 1
  %2143 = and i32 %2137, 255
  %2144 = tail call i32 @llvm.ctpop.i32(i32 %2143)
  %2145 = trunc i32 %2144 to i8
  %2146 = and i8 %2145, 1
  %2147 = xor i8 %2146, 1
  store i8 %2147, i8* %21, align 1
  %2148 = xor i32 %2136, %2114
  %2149 = xor i32 %2148, %2137
  %2150 = lshr i32 %2149, 4
  %2151 = trunc i32 %2150 to i8
  %2152 = and i8 %2151, 1
  store i8 %2152, i8* %27, align 1
  %2153 = icmp eq i32 %2137, 0
  %2154 = zext i1 %2153 to i8
  store i8 %2154, i8* %30, align 1
  %2155 = lshr i32 %2137, 31
  %2156 = trunc i32 %2155 to i8
  store i8 %2156, i8* %33, align 1
  %2157 = lshr i32 %2136, 31
  %2158 = xor i32 %2155, %2128
  %2159 = xor i32 %2155, %2157
  %2160 = add nuw nsw i32 %2158, %2159
  %2161 = icmp eq i32 %2160, 2
  %2162 = zext i1 %2161 to i8
  store i8 %2162, i8* %39, align 1
  %2163 = sext i32 %2137 to i64
  store i64 %2163, i64* %RDX.i939, align 8
  %2164 = add nsw i64 %2163, 12099168
  %2165 = add i64 %2017, 31
  store i64 %2165, i64* %3, align 8
  %2166 = inttoptr i64 %2164 to i8*
  %2167 = load i8, i8* %2166, align 1
  %2168 = zext i8 %2167 to i64
  store i64 %2168, i64* %RCX.i667, align 8
  %2169 = load i64, i64* %RAX.i951, align 8
  %2170 = zext i8 %2167 to i32
  %2171 = zext i8 %2167 to i64
  %2172 = trunc i64 %2169 to i32
  %2173 = sub i32 %2172, %2170
  %2174 = zext i32 %2173 to i64
  store i64 %2174, i64* %RAX.i951, align 8
  %2175 = icmp ult i32 %2172, %2170
  %2176 = zext i1 %2175 to i8
  store i8 %2176, i8* %14, align 1
  %2177 = and i32 %2173, 255
  %2178 = tail call i32 @llvm.ctpop.i32(i32 %2177)
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  %2181 = xor i8 %2180, 1
  store i8 %2181, i8* %21, align 1
  %2182 = xor i64 %2171, %2169
  %2183 = trunc i64 %2182 to i32
  %2184 = xor i32 %2183, %2173
  %2185 = lshr i32 %2184, 4
  %2186 = trunc i32 %2185 to i8
  %2187 = and i8 %2186, 1
  store i8 %2187, i8* %27, align 1
  %2188 = icmp eq i32 %2173, 0
  %2189 = zext i1 %2188 to i8
  store i8 %2189, i8* %30, align 1
  %2190 = lshr i32 %2173, 31
  %2191 = trunc i32 %2190 to i8
  store i8 %2191, i8* %33, align 1
  %2192 = lshr i32 %2172, 31
  %2193 = xor i32 %2190, %2192
  %2194 = add nuw nsw i32 %2193, %2192
  %2195 = icmp eq i32 %2194, 2
  %2196 = zext i1 %2195 to i8
  store i8 %2196, i8* %39, align 1
  %2197 = load i64, i64* %RBP.i, align 8
  %2198 = add i64 %2197, -92
  %2199 = add i64 %2017, 36
  store i64 %2199, i64* %3, align 8
  %2200 = inttoptr i64 %2198 to i32*
  store i32 %2173, i32* %2200, align 4
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_42f728

block_.L_42f728:                                  ; preds = %block_.L_42f704, %block_42f6db
  %2201 = phi i64 [ %.pre115, %block_.L_42f704 ], [ %2112, %block_42f6db ]
  store i64 0, i64* %RAX.i951, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDX.i939, align 8
  %2202 = load i64, i64* %RBP.i, align 8
  %2203 = add i64 %2202, -84
  %2204 = add i64 %2201, 8
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2203 to i32*
  %2206 = load i32, i32* %2205, align 4
  %2207 = mul i32 %2206, 20
  %2208 = add i32 %2207, 21
  %2209 = zext i32 %2208 to i64
  store i64 %2209, i64* %RAX.i951, align 8
  %2210 = icmp ugt i32 %2207, -22
  %2211 = zext i1 %2210 to i8
  store i8 %2211, i8* %14, align 1
  %2212 = and i32 %2208, 253
  %2213 = tail call i32 @llvm.ctpop.i32(i32 %2212)
  %2214 = trunc i32 %2213 to i8
  %2215 = and i8 %2214, 1
  %2216 = xor i8 %2215, 1
  store i8 %2216, i8* %21, align 1
  %2217 = xor i32 %2207, 16
  %2218 = xor i32 %2217, %2208
  %2219 = lshr i32 %2218, 4
  %2220 = trunc i32 %2219 to i8
  %2221 = and i8 %2220, 1
  store i8 %2221, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %2222 = lshr i32 %2208, 31
  %2223 = trunc i32 %2222 to i8
  store i8 %2223, i8* %33, align 1
  %2224 = lshr i32 %2207, 31
  %2225 = xor i32 %2222, %2224
  %2226 = add nuw nsw i32 %2225, %2222
  %2227 = icmp eq i32 %2226, 2
  %2228 = zext i1 %2227 to i8
  store i8 %2228, i8* %39, align 1
  %2229 = add i64 %2202, -88
  %2230 = add i64 %2201, 14
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to i32*
  %2232 = load i32, i32* %2231, align 4
  %2233 = add i32 %2232, %2208
  %2234 = zext i32 %2233 to i64
  store i64 %2234, i64* %RAX.i951, align 8
  %2235 = icmp ult i32 %2233, %2208
  %2236 = icmp ult i32 %2233, %2232
  %2237 = or i1 %2235, %2236
  %2238 = zext i1 %2237 to i8
  store i8 %2238, i8* %14, align 1
  %2239 = and i32 %2233, 255
  %2240 = tail call i32 @llvm.ctpop.i32(i32 %2239)
  %2241 = trunc i32 %2240 to i8
  %2242 = and i8 %2241, 1
  %2243 = xor i8 %2242, 1
  store i8 %2243, i8* %21, align 1
  %2244 = xor i32 %2232, %2208
  %2245 = xor i32 %2244, %2233
  %2246 = lshr i32 %2245, 4
  %2247 = trunc i32 %2246 to i8
  %2248 = and i8 %2247, 1
  store i8 %2248, i8* %27, align 1
  %2249 = icmp eq i32 %2233, 0
  %2250 = zext i1 %2249 to i8
  store i8 %2250, i8* %30, align 1
  %2251 = lshr i32 %2233, 31
  %2252 = trunc i32 %2251 to i8
  store i8 %2252, i8* %33, align 1
  %2253 = lshr i32 %2232, 31
  %2254 = xor i32 %2251, %2222
  %2255 = xor i32 %2251, %2253
  %2256 = add nuw nsw i32 %2254, %2255
  %2257 = icmp eq i32 %2256, 2
  %2258 = zext i1 %2257 to i8
  store i8 %2258, i8* %39, align 1
  %2259 = add i64 %2202, -92
  %2260 = add i64 %2201, 17
  store i64 %2260, i64* %3, align 8
  %2261 = inttoptr i64 %2259 to i32*
  %2262 = load i32, i32* %2261, align 4
  %2263 = zext i32 %2262 to i64
  store i64 %2263, i64* %RSI.i942, align 8
  store i64 %2234, i64* %RDI.i945, align 8
  %2264 = add i64 %2201, -132392
  %2265 = add i64 %2201, 24
  %2266 = load i64, i64* %6, align 8
  %2267 = add i64 %2266, -8
  %2268 = inttoptr i64 %2267 to i64*
  store i64 %2265, i64* %2268, align 8
  store i64 %2267, i64* %6, align 8
  store i64 %2264, i64* %3, align 8
  %call2_42f73b = tail call %struct.Memory* @sub_40f200.is_ko(%struct.State* nonnull %0, i64 %2264, %struct.Memory* %call2_42f6a7)
  %2269 = load i32, i32* %EAX.i912, align 4
  %2270 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2271 = and i32 %2269, 255
  %2272 = tail call i32 @llvm.ctpop.i32(i32 %2271)
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  %2275 = xor i8 %2274, 1
  store i8 %2275, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2276 = icmp eq i32 %2269, 0
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %30, align 1
  %2278 = lshr i32 %2269, 31
  %2279 = trunc i32 %2278 to i8
  store i8 %2279, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v144 = select i1 %2276, i64 26, i64 9
  %2280 = add i64 %2270, %.v144
  store i64 %2280, i64* %3, align 8
  br i1 %2276, label %block_.L_42f75f, label %block_42f749

block_42f749:                                     ; preds = %block_.L_42f728
  %2281 = load i64, i64* %RBP.i, align 8
  %2282 = add i64 %2281, -84
  %2283 = add i64 %2280, 4
  store i64 %2283, i64* %3, align 8
  %2284 = inttoptr i64 %2282 to i32*
  %2285 = load i32, i32* %2284, align 4
  %2286 = mul i32 %2285, 20
  %2287 = add i32 %2286, 21
  %2288 = zext i32 %2287 to i64
  store i64 %2288, i64* %RAX.i951, align 8
  %2289 = icmp ugt i32 %2286, -22
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %14, align 1
  %2291 = and i32 %2287, 253
  %2292 = tail call i32 @llvm.ctpop.i32(i32 %2291)
  %2293 = trunc i32 %2292 to i8
  %2294 = and i8 %2293, 1
  %2295 = xor i8 %2294, 1
  store i8 %2295, i8* %21, align 1
  %2296 = xor i32 %2286, 16
  %2297 = xor i32 %2296, %2287
  %2298 = lshr i32 %2297, 4
  %2299 = trunc i32 %2298 to i8
  %2300 = and i8 %2299, 1
  store i8 %2300, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %2301 = lshr i32 %2287, 31
  %2302 = trunc i32 %2301 to i8
  store i8 %2302, i8* %33, align 1
  %2303 = lshr i32 %2286, 31
  %2304 = xor i32 %2301, %2303
  %2305 = add nuw nsw i32 %2304, %2301
  %2306 = icmp eq i32 %2305, 2
  %2307 = zext i1 %2306 to i8
  store i8 %2307, i8* %39, align 1
  %2308 = add i64 %2281, -88
  %2309 = add i64 %2280, 10
  store i64 %2309, i64* %3, align 8
  %2310 = inttoptr i64 %2308 to i32*
  %2311 = load i32, i32* %2310, align 4
  %2312 = add i32 %2311, %2287
  %2313 = zext i32 %2312 to i64
  store i64 %2313, i64* %RAX.i951, align 8
  %2314 = icmp ult i32 %2312, %2287
  %2315 = icmp ult i32 %2312, %2311
  %2316 = or i1 %2314, %2315
  %2317 = zext i1 %2316 to i8
  store i8 %2317, i8* %14, align 1
  %2318 = and i32 %2312, 255
  %2319 = tail call i32 @llvm.ctpop.i32(i32 %2318)
  %2320 = trunc i32 %2319 to i8
  %2321 = and i8 %2320, 1
  %2322 = xor i8 %2321, 1
  store i8 %2322, i8* %21, align 1
  %2323 = xor i32 %2311, %2287
  %2324 = xor i32 %2323, %2312
  %2325 = lshr i32 %2324, 4
  %2326 = trunc i32 %2325 to i8
  %2327 = and i8 %2326, 1
  store i8 %2327, i8* %27, align 1
  %2328 = icmp eq i32 %2312, 0
  %2329 = zext i1 %2328 to i8
  store i8 %2329, i8* %30, align 1
  %2330 = lshr i32 %2312, 31
  %2331 = trunc i32 %2330 to i8
  store i8 %2331, i8* %33, align 1
  %2332 = lshr i32 %2311, 31
  %2333 = xor i32 %2330, %2301
  %2334 = xor i32 %2330, %2332
  %2335 = add nuw nsw i32 %2333, %2334
  %2336 = icmp eq i32 %2335, 2
  %2337 = zext i1 %2336 to i8
  store i8 %2337, i8* %39, align 1
  %2338 = add i64 %2280, 17
  store i64 %2338, i64* %3, align 8
  store i32 %2312, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*), align 8
  br label %block_.L_42f75f

block_.L_42f75f:                                  ; preds = %block_.L_42f66f, %block_42f32d, %block_.L_42f728, %block_42f749, %block_42f6bc, %block_.L_42f482, %block_.L_42f48e, %block_.L_42f60d, %block_.L_42f3a4, %block_.L_42f34b
  %.sink43 = phi i64 [ 313, %block_.L_42f60d ], [ 871, %block_.L_42f3a4 ], [ 960, %block_.L_42f34b ], [ 714, %block_.L_42f48e ], [ 714, %block_.L_42f482 ], [ 147, %block_42f6bc ], [ 147, %block_.L_42f66f ], [ 5, %block_42f749 ], [ 5, %block_.L_42f728 ], [ 1049, %block_42f32d ]
  %MEMORY.26 = phi %struct.Memory* [ %call2_42f616, %block_.L_42f60d ], [ %call2_42f3ec, %block_.L_42f3a4 ], [ %call2_42f393, %block_.L_42f34b ], [ %MEMORY.13, %block_.L_42f48e ], [ %MEMORY.13, %block_.L_42f482 ], [ %call2_42f6a7, %block_42f6bc ], [ %call2_42f6a7, %block_.L_42f66f ], [ %call2_42f73b, %block_42f749 ], [ %call2_42f73b, %block_.L_42f728 ], [ %MEMORY.11, %block_42f32d ]
  %2339 = load i64, i64* %3, align 8
  %2340 = add i64 %2339, %.sink43
  %2341 = load i64, i64* %RBP.i, align 8
  %2342 = add i64 %2341, -80
  %2343 = add i64 %2340, 9
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i64*
  %2345 = load i64, i64* %2344, align 8
  store i64 %2345, i64* %RAX.i951, align 8
  %2346 = add i64 %2340, 12
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2345 to i64*
  %2348 = load i64, i64* %2347, align 8
  store i64 %2348, i64* %RAX.i951, align 8
  %2349 = add i64 %2340, 16
  store i64 %2349, i64* %3, align 8
  store i64 %2348, i64* %2344, align 8
  %2350 = load i64, i64* %3, align 8
  %2351 = add i64 %2350, -1304
  store i64 %2351, i64* %3, align 8
  br label %block_.L_42f257

block_.L_42f774:                                  ; preds = %block_.L_42f257
  %2352 = add i64 %698, -1342
  store i64 %2352, i64* %3, align 8
  br label %block_.L_42f236

block_.L_42f779:                                  ; preds = %block_.L_42f236
  %2353 = add i64 %667, -52
  %2354 = add i64 %666, 3
  store i64 %2354, i64* %3, align 8
  %2355 = inttoptr i64 %2353 to i32*
  %2356 = load i32, i32* %2355, align 4
  %2357 = zext i32 %2356 to i64
  store i64 %2357, i64* %RAX.i951, align 8
  %2358 = add i64 %667, -16
  %2359 = add i64 %666, 7
  store i64 %2359, i64* %3, align 8
  %2360 = inttoptr i64 %2358 to i64*
  %2361 = load i64, i64* %2360, align 8
  store i64 %2361, i64* %RCX.i667, align 8
  %2362 = add i64 %2361, 4
  %2363 = add i64 %666, 10
  store i64 %2363, i64* %3, align 8
  %2364 = inttoptr i64 %2362 to i32*
  store i32 %2356, i32* %2364, align 4
  %2365 = load i64, i64* %RBP.i, align 8
  %2366 = add i64 %2365, -52
  %2367 = load i64, i64* %3, align 8
  %2368 = add i64 %2367, 3
  store i64 %2368, i64* %3, align 8
  %2369 = inttoptr i64 %2366 to i32*
  %2370 = load i32, i32* %2369, align 4
  %2371 = zext i32 %2370 to i64
  store i64 %2371, i64* %RAX.i951, align 8
  %2372 = add i64 %2365, -4
  %2373 = add i64 %2367, 6
  store i64 %2373, i64* %3, align 8
  %2374 = inttoptr i64 %2372 to i32*
  store i32 %2370, i32* %2374, align 4
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_42f789

block_.L_42f789:                                  ; preds = %block_.L_42f779, %block_.L_42f62b, %block_42f573, %block_42f516
  %2375 = phi i64 [ %.pre121, %block_.L_42f779 ], [ %1899, %block_.L_42f62b ], [ %1592, %block_42f573 ], [ %1458, %block_42f516 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.10, %block_.L_42f779 ], [ %call2_42f654, %block_.L_42f62b ], [ %call2_42f581, %block_42f573 ], [ %call2_42f524, %block_42f516 ]
  %2376 = load i64, i64* %RBP.i, align 8
  %2377 = add i64 %2376, -4
  %2378 = add i64 %2375, 3
  store i64 %2378, i64* %3, align 8
  %2379 = inttoptr i64 %2377 to i32*
  %2380 = load i32, i32* %2379, align 4
  %2381 = zext i32 %2380 to i64
  store i64 %2381, i64* %RAX.i951, align 8
  %2382 = load i64, i64* %6, align 8
  %2383 = add i64 %2382, 176
  store i64 %2383, i64* %6, align 8
  %2384 = icmp ugt i64 %2382, -177
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %14, align 1
  %2386 = trunc i64 %2383 to i32
  %2387 = and i32 %2386, 255
  %2388 = tail call i32 @llvm.ctpop.i32(i32 %2387)
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  %2391 = xor i8 %2390, 1
  store i8 %2391, i8* %21, align 1
  %2392 = xor i64 %2382, 16
  %2393 = xor i64 %2392, %2383
  %2394 = lshr i64 %2393, 4
  %2395 = trunc i64 %2394 to i8
  %2396 = and i8 %2395, 1
  store i8 %2396, i8* %27, align 1
  %2397 = icmp eq i64 %2383, 0
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %30, align 1
  %2399 = lshr i64 %2383, 63
  %2400 = trunc i64 %2399 to i8
  store i8 %2400, i8* %33, align 1
  %2401 = lshr i64 %2382, 63
  %2402 = xor i64 %2399, %2401
  %2403 = add nuw nsw i64 %2402, %2399
  %2404 = icmp eq i64 %2403, 2
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %39, align 1
  %2406 = add i64 %2375, 11
  store i64 %2406, i64* %3, align 8
  %2407 = add i64 %2382, 184
  %2408 = inttoptr i64 %2383 to i64*
  %2409 = load i64, i64* %2408, align 8
  store i64 %2409, i64* %RBP.i, align 8
  store i64 %2407, i64* %6, align 8
  %2410 = add i64 %2375, 12
  store i64 %2410, i64* %3, align 8
  %2411 = inttoptr i64 %2407 to i64*
  %2412 = load i64, i64* %2411, align 8
  store i64 %2412, i64* %3, align 8
  %2413 = add i64 %2382, 192
  store i64 %2413, i64* %6, align 8
  ret %struct.Memory* %MEMORY.27
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
define %struct.Memory* @routine_subq__0xb0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -176
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 176
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
define %struct.Memory* @routine_movq__0x579c4a___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579c4a_type* @G__0x579c4a to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x30__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x270f__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 9999, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdx____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.sgfGetFloatProperty(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42f0b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
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
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42f0a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xb40a5__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xb40a5__rip__type* @G_0xb40a5__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_42f0b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xb4097__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xb4097__rip__type* @G_0xb4097__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_42f0b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579c47___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579c47_type* @G__0x579c47 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sgfGetIntProperty(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42f0e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x13__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 19, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_callq_.gnugo_clear_board(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.gnugo_set_komi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42f1ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x30___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -48
  %8 = icmp ult i32 %4, 48
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
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_42f160(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x39___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -57
  %8 = icmp ult i32 %4, 57
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
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_42f160(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.atoi_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x80___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 128
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 7
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_jne_.L_42f144(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42f15b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57cac0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57cac0_type* @G__0x57cac0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42f1e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x41___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -65
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 65
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
define %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x49___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -73
  %8 = icmp ult i32 %4, 73
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
  %17 = xor i32 %7, %4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_42f186(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7ae438___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RCX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
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
define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42f1c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42f1e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57cad7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57cad7_type* @G__0x57cad7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42f1ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57ca87___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57ca87_type* @G__0x57ca87 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42f22a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_jle_.L_42f22a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sgftreeForward(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42f779(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42f774(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42f27c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42f2b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57caf9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57caf9_type* @G__0x57caf9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0xff___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 255
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 39
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RDX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x2042___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -8258
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 8258
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
define %struct.Memory* @routine_movl__ecx__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42f49a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42f2d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_subl__0x2057___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -8279
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 8279
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
define %struct.Memory* @routine_jmpq_.L_42f2ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x4241___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -16961
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 16961
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
define %struct.Memory* @routine_je_.L_42f34b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42f303(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x4c49___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -19529
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 19529
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
define %struct.Memory* @routine_je_.L_42f66f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42f319(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x4c50___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -19536
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 19536
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
define %struct.Memory* @routine_je_.L_42f3fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42f332(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x5741___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -22337
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 22337
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
define %struct.Memory* @routine_je_.L_42f3a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42f75f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x54__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.get_moveXY(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x54__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movl_0x7ae438___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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
define %struct.Memory* @routine_callq_.rotate(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gnugo_add_stone(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_movl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xafdfb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_42f446(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_jne_.L_42f446(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gnugo_sethand(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_callq_.sgfOverwritePropertyInt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x77___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -119
  %8 = icmp ult i32 %4, 119
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
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42f482(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x57___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -87
  %8 = icmp ult i32 %4, 87
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
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x32___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -50
  %8 = icmp ult i32 %4, 50
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
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42f48e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42f495(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_0x8__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2057___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -8279
  %8 = icmp ult i32 %4, 8279
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
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42f501(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42f501(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xafdfb0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42f53a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sgftreeBack(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movl__edx__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_42f789(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42f59c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -56
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
define %struct.Memory* @routine_jne_.L_42f597(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_cmpl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -60
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
define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42f59c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_cmpl_0x7ae438___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
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
define %struct.Memory* @routine_jae_.L_42f5f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x14__MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 20
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RAX, align 8
  %13 = mul i64 %9, 85899345920
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 252
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x15___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 21
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -22
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42f60d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 1
  %10 = icmp ne i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42f62b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 1
  %10 = icmp ne i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gnugo_play_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x34__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42f66a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57cb03___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57cb03_type* @G__0x57cb03 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57cb47___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57cb47_type* @G__0x57cb47 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_42f6cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jb_.L_42f6d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_jle_.L_42f704(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x14___ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  %8 = mul nsw i64 %7, 20
  %9 = trunc i64 %8 to i32
  %10 = and i64 %8, 4294967292
  store i64 %10, i64* %RCX, align 8
  %11 = mul i64 %7, 85899345920
  %12 = ashr exact i64 %11, 32
  %13 = icmp ne i64 %12, %8
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %9, 252
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %23, align 1
  %24 = lshr i32 %9, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x15___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 21
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -22
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x58__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_subl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
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
define %struct.Memory* @routine_jmpq_.L_42f728(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.is_ko(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42f75a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0xb6eec4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42f764(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42f257(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42f236(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_addq__0xb0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 176
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -177
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
