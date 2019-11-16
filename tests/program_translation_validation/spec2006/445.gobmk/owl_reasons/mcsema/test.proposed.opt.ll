; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x97a7e__rip__type = type <{ [4 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xab0fe0_type = type <{ [8 x i8] }>
%G_0xafdfb0_type = type <{ [4 x i8] }>
%G__0x57ea8e_type = type <{ [8 x i8] }>
%G__0x57eab9_type = type <{ [8 x i8] }>
%G__0x57eada_type = type <{ [8 x i8] }>
%G__0x57eb13_type = type <{ [8 x i8] }>
%G__0x57eb3e_type = type <{ [8 x i8] }>
%G__0x57eb5f_type = type <{ [8 x i8] }>
%G__0x57eb8c_type = type <{ [8 x i8] }>
%G__0x57ebbf_type = type <{ [8 x i8] }>
%G__0x57ebe2_type = type <{ [8 x i8] }>
%G__0x57ec19_type = type <{ [8 x i8] }>
%G__0x57ec52_type = type <{ [8 x i8] }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
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
@G_0x97a7e__rip_ = global %G_0x97a7e__rip__type zeroinitializer
@G_0xab0f24 = local_unnamed_addr global %G_0xab0f24_type zeroinitializer
@G_0xab0fe0 = local_unnamed_addr global %G_0xab0fe0_type zeroinitializer
@G_0xafdfb0 = local_unnamed_addr global %G_0xafdfb0_type zeroinitializer
@G__0x57ea8e = global %G__0x57ea8e_type zeroinitializer
@G__0x57eab9 = global %G__0x57eab9_type zeroinitializer
@G__0x57eada = global %G__0x57eada_type zeroinitializer
@G__0x57eb13 = global %G__0x57eb13_type zeroinitializer
@G__0x57eb3e = global %G__0x57eb3e_type zeroinitializer
@G__0x57eb5f = global %G__0x57eb5f_type zeroinitializer
@G__0x57eb8c = global %G__0x57eb8c_type zeroinitializer
@G__0x57ebbf = global %G__0x57ebbf_type zeroinitializer
@G__0x57ebe2 = global %G__0x57ebe2_type zeroinitializer
@G__0x57ec19 = global %G__0x57ec19_type zeroinitializer
@G__0x57ec52 = global %G__0x57ec52_type zeroinitializer
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4341e0.add_loss_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_433fe0.add_gain_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_434680.add_owl_attack_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_434b60.add_owl_defense_threat_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ead0.is_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_434ca0.add_owl_prevent_threat_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4348c0.add_owl_attack_threat_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4349a0.add_owl_uncertain_defense_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @owl_reasons(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i1771 = bitcast %union.anon* %39 to i32*
  %40 = add i64 %7, -12
  %41 = load i32, i32* %EDI.i1771, align 4
  %42 = add i64 %10, 10
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 7
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i32*
  store i32 21, i32* %48, align 4
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1763 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1761 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %ECX.i1758 = bitcast %union.anon* %50 to i32*
  %EAX.i = bitcast %union.anon* %49 to i32*
  %RDX.i1736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI.i55 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %RSI.i51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %AL.i = bitcast %union.anon* %49 to i8*
  %RSI.i292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %53 = bitcast %union.VectorReg* %52 to i8*
  %54 = bitcast %union.VectorReg* %52 to i32*
  %55 = getelementptr inbounds i8, i8* %53, i64 4
  %56 = bitcast i8* %55 to float*
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %58 = bitcast i64* %57 to float*
  %59 = getelementptr inbounds i8, i8* %53, i64 12
  %60 = bitcast i8* %59 to float*
  %61 = bitcast %union.VectorReg* %52 to <2 x float>*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_44b4c2

block_.L_44b4c2:                                  ; preds = %block_.L_44c3a3, %entry
  %62 = phi i64 [ %.pre, %entry ], [ %5135, %block_.L_44c3a3 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.48, %block_.L_44c3a3 ]
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -8
  %65 = add i64 %62, 7
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %64 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, -400
  %69 = icmp ult i32 %67, 400
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %14, align 1
  %71 = and i32 %68, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71)
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %21, align 1
  %76 = xor i32 %67, 16
  %77 = xor i32 %76, %68
  %78 = lshr i32 %77, 4
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  store i8 %80, i8* %26, align 1
  %81 = icmp eq i32 %68, 0
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %29, align 1
  %83 = lshr i32 %68, 31
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %32, align 1
  %85 = lshr i32 %67, 31
  %86 = xor i32 %83, %85
  %87 = add nuw nsw i32 %86, %85
  %88 = icmp eq i32 %87, 2
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %38, align 1
  %90 = icmp ne i8 %84, 0
  %91 = xor i1 %90, %88
  %.v = select i1 %91, i64 13, i64 3823
  %92 = add i64 %62, %.v
  store i64 %92, i64* %3, align 8
  br i1 %91, label %block_44b4cf, label %block_.L_44c3b1

block_44b4cf:                                     ; preds = %block_.L_44b4c2
  %93 = add i64 %92, 4
  store i64 %93, i64* %3, align 8
  %94 = load i32, i32* %66, align 4
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %RAX.i1763, align 8
  %96 = add nsw i64 %95, 12099168
  %97 = add i64 %92, 12
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i8*
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i64
  store i64 %100, i64* %RCX.i1761, align 8
  %101 = zext i8 %99 to i32
  %102 = add nsw i32 %101, -3
  %103 = icmp ult i8 %99, 3
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %14, align 1
  %105 = and i32 %102, 255
  %106 = tail call i32 @llvm.ctpop.i32(i32 %105)
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %21, align 1
  %110 = xor i32 %102, %101
  %111 = lshr i32 %110, 4
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  store i8 %113, i8* %26, align 1
  %114 = icmp eq i32 %102, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %29, align 1
  %116 = lshr i32 %102, 31
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v139 = select i1 %114, i64 75, i64 21
  %118 = add i64 %92, %.v139
  store i64 %118, i64* %3, align 8
  br i1 %114, label %block_.L_44b51a, label %block_44b4e4

block_44b4e4:                                     ; preds = %block_44b4cf
  %119 = add i64 %118, 4
  store i64 %119, i64* %3, align 8
  %120 = load i32, i32* %66, align 4
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %RAX.i1763, align 8
  %122 = add nsw i64 %121, 12099168
  %123 = add i64 %118, 12
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i8*
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i64
  store i64 %126, i64* %RCX.i1761, align 8
  %127 = zext i8 %125 to i32
  store i8 0, i8* %14, align 1
  %128 = tail call i32 @llvm.ctpop.i32(i32 %127)
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %131 = xor i8 %130, 1
  store i8 %131, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %132 = icmp eq i8 %125, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v140 = select i1 %132, i64 54, i64 21
  %134 = add i64 %118, %.v140
  store i64 %134, i64* %3, align 8
  br i1 %132, label %block_.L_44b51a, label %block_44b4f9

block_44b4f9:                                     ; preds = %block_44b4e4
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %135 = add i64 %134, 14
  store i64 %135, i64* %3, align 8
  %136 = load i32, i32* %66, align 4
  %137 = sext i32 %136 to i64
  %138 = mul nsw i64 %137, 76
  store i64 %138, i64* %RCX.i1761, align 8
  %139 = lshr i64 %138, 63
  %140 = add i64 %138, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %140, i64* %RAX.i1763, align 8
  %141 = icmp ult i64 %140, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %142 = icmp ult i64 %140, %138
  %143 = or i1 %141, %142
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %14, align 1
  %145 = trunc i64 %140 to i32
  %146 = and i32 %145, 252
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146)
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %21, align 1
  %151 = xor i64 %138, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %152 = xor i64 %151, %140
  %153 = lshr i64 %152, 4
  %154 = trunc i64 %153 to i8
  %155 = and i8 %154, 1
  store i8 %155, i8* %26, align 1
  %156 = icmp eq i64 %140, 0
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %29, align 1
  %158 = lshr i64 %140, 63
  %159 = trunc i64 %158 to i8
  store i8 %159, i8* %32, align 1
  %160 = xor i64 %158, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %161 = xor i64 %158, %139
  %162 = add nuw nsw i64 %160, %161
  %163 = icmp eq i64 %162, 2
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %38, align 1
  %165 = add i64 %138, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 8)
  %166 = add i64 %134, 24
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RDX.i1736, align 8
  %170 = add i64 %134, 27
  store i64 %170, i64* %3, align 8
  %171 = load i32, i32* %66, align 4
  %172 = sub i32 %168, %171
  %173 = icmp ult i32 %168, %171
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %14, align 1
  %175 = and i32 %172, 255
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175)
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %21, align 1
  %180 = xor i32 %171, %168
  %181 = xor i32 %180, %172
  %182 = lshr i32 %181, 4
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  store i8 %184, i8* %26, align 1
  %185 = icmp eq i32 %172, 0
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %29, align 1
  %187 = lshr i32 %172, 31
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %32, align 1
  %189 = lshr i32 %168, 31
  %190 = lshr i32 %171, 31
  %191 = xor i32 %190, %189
  %192 = xor i32 %187, %189
  %193 = add nuw nsw i32 %192, %191
  %194 = icmp eq i32 %193, 2
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %38, align 1
  %.v141 = select i1 %185, i64 38, i64 33
  %196 = add i64 %134, %.v141
  store i64 %196, i64* %3, align 8
  br i1 %185, label %block_.L_44b51f, label %block_.L_44b51a

block_.L_44b51a:                                  ; preds = %block_44b4f9, %block_44b4e4, %block_44b4cf
  %197 = phi i64 [ %196, %block_44b4f9 ], [ %134, %block_44b4e4 ], [ %118, %block_44b4cf ]
  %198 = add i64 %197, 3721
  br label %block_.L_44c3a3

block_.L_44b51f:                                  ; preds = %block_44b4f9
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %199 = load i64, i64* %RBP.i, align 8
  %200 = add i64 %199, -8
  %201 = add i64 %196, 14
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %200 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = mul nsw i64 %204, 76
  store i64 %205, i64* %RCX.i1761, align 8
  %206 = lshr i64 %205, 63
  %207 = add i64 %205, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %207, i64* %RAX.i1763, align 8
  %208 = icmp ult i64 %207, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %209 = icmp ult i64 %207, %205
  %210 = or i1 %208, %209
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %14, align 1
  %212 = trunc i64 %207 to i32
  %213 = and i32 %212, 252
  %214 = tail call i32 @llvm.ctpop.i32(i32 %213)
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  store i8 %217, i8* %21, align 1
  %218 = xor i64 %205, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %219 = xor i64 %218, %207
  %220 = lshr i64 %219, 4
  %221 = trunc i64 %220 to i8
  %222 = and i8 %221, 1
  store i8 %222, i8* %26, align 1
  %223 = icmp eq i64 %207, 0
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %29, align 1
  %225 = lshr i64 %207, 63
  %226 = trunc i64 %225 to i8
  store i8 %226, i8* %32, align 1
  %227 = xor i64 %225, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %228 = xor i64 %225, %206
  %229 = add nuw nsw i64 %227, %228
  %230 = icmp eq i64 %229, 2
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %38, align 1
  %232 = add i64 %205, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 64)
  %233 = add i64 %196, 25
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = add i32 %235, -2
  %237 = icmp ult i32 %235, 2
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %14, align 1
  %239 = and i32 %236, 255
  %240 = tail call i32 @llvm.ctpop.i32(i32 %239)
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  %243 = xor i8 %242, 1
  store i8 %243, i8* %21, align 1
  %244 = xor i32 %236, %235
  %245 = lshr i32 %244, 4
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  store i8 %247, i8* %26, align 1
  %248 = icmp eq i32 %236, 0
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %29, align 1
  %250 = lshr i32 %236, 31
  %251 = trunc i32 %250 to i8
  store i8 %251, i8* %32, align 1
  %252 = lshr i32 %235, 31
  %253 = xor i32 %250, %252
  %254 = add nuw nsw i32 %253, %252
  %255 = icmp eq i32 %254, 2
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %38, align 1
  %.v142 = select i1 %248, i64 31, i64 1295
  %257 = add i64 %196, %.v142
  store i64 %257, i64* %3, align 8
  br i1 %248, label %block_44b53e, label %block_.L_44b51f.block_.L_44ba2e_crit_edge

block_.L_44b51f.block_.L_44ba2e_crit_edge:        ; preds = %block_.L_44b51f
  %.pre106 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44ba2e

block_44b53e:                                     ; preds = %block_.L_44b51f
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %258 = load i64, i64* %RBP.i, align 8
  %259 = add i64 %258, -8
  %260 = add i64 %257, 14
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = mul nsw i64 %263, 76
  store i64 %264, i64* %RCX.i1761, align 8
  %265 = lshr i64 %264, 63
  %266 = add i64 %264, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %266, i64* %RAX.i1763, align 8
  %267 = icmp ult i64 %266, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %268 = icmp ult i64 %266, %264
  %269 = or i1 %267, %268
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %14, align 1
  %271 = trunc i64 %266 to i32
  %272 = and i32 %271, 252
  %273 = tail call i32 @llvm.ctpop.i32(i32 %272)
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  %276 = xor i8 %275, 1
  store i8 %276, i8* %21, align 1
  %277 = xor i64 %264, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %278 = xor i64 %277, %266
  %279 = lshr i64 %278, 4
  %280 = trunc i64 %279 to i8
  %281 = and i8 %280, 1
  store i8 %281, i8* %26, align 1
  %282 = icmp eq i64 %266, 0
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %29, align 1
  %284 = lshr i64 %266, 63
  %285 = trunc i64 %284 to i8
  store i8 %285, i8* %32, align 1
  %286 = xor i64 %284, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %287 = xor i64 %284, %265
  %288 = add nuw nsw i64 %286, %287
  %289 = icmp eq i64 %288, 2
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %38, align 1
  %291 = add i64 %264, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %292 = add i64 %257, 25
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  store i8 0, i8* %14, align 1
  %295 = and i32 %294, 255
  %296 = tail call i32 @llvm.ctpop.i32(i32 %295)
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  store i8 %299, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %300 = icmp eq i32 %294, 0
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %29, align 1
  %302 = lshr i32 %294, 31
  %303 = trunc i32 %302 to i8
  store i8 %303, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v188 = select i1 %300, i64 1264, i64 31
  %304 = add i64 %257, %.v188
  store i64 %304, i64* %3, align 8
  br i1 %300, label %block_.L_44ba2e, label %block_44b55d

block_44b55d:                                     ; preds = %block_44b53e
  %305 = add i64 %304, 4
  store i64 %305, i64* %3, align 8
  %306 = load i32, i32* %261, align 4
  %307 = sext i32 %306 to i64
  store i64 %307, i64* %RAX.i1763, align 8
  %308 = add nsw i64 %307, 12099168
  %309 = add i64 %304, 12
  store i64 %309, i64* %3, align 8
  %310 = inttoptr i64 %308 to i8*
  %311 = load i8, i8* %310, align 1
  %312 = zext i8 %311 to i64
  store i64 %312, i64* %RCX.i1761, align 8
  %313 = zext i8 %311 to i32
  %314 = add i64 %258, -4
  %315 = add i64 %304, 15
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = sub i32 %313, %317
  %319 = icmp ult i32 %313, %317
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %14, align 1
  %321 = and i32 %318, 255
  %322 = tail call i32 @llvm.ctpop.i32(i32 %321)
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  store i8 %325, i8* %21, align 1
  %326 = xor i32 %317, %313
  %327 = xor i32 %326, %318
  %328 = lshr i32 %327, 4
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  store i8 %330, i8* %26, align 1
  %331 = icmp eq i32 %318, 0
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %29, align 1
  %333 = lshr i32 %318, 31
  %334 = trunc i32 %333 to i8
  store i8 %334, i8* %32, align 1
  %335 = lshr i32 %317, 31
  %336 = add nuw nsw i32 %333, %335
  %337 = icmp eq i32 %336, 2
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %38, align 1
  %.v189 = select i1 %331, i64 21, i64 373
  %339 = add i64 %304, %.v189
  store i64 %339, i64* %3, align 8
  br i1 %331, label %block_44b572, label %block_.L_44b6d2

block_44b572:                                     ; preds = %block_44b55d
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %340 = add i64 %339, 14
  store i64 %340, i64* %3, align 8
  %341 = load i32, i32* %261, align 4
  %342 = sext i32 %341 to i64
  %343 = mul nsw i64 %342, 76
  store i64 %343, i64* %RCX.i1761, align 8
  %344 = lshr i64 %343, 63
  %345 = add i64 %343, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %345, i64* %RAX.i1763, align 8
  %346 = icmp ult i64 %345, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %347 = icmp ult i64 %345, %343
  %348 = or i1 %346, %347
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %14, align 1
  %350 = trunc i64 %345 to i32
  %351 = and i32 %350, 252
  %352 = tail call i32 @llvm.ctpop.i32(i32 %351)
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  store i8 %355, i8* %21, align 1
  %356 = xor i64 %343, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %357 = xor i64 %356, %345
  %358 = lshr i64 %357, 4
  %359 = trunc i64 %358 to i8
  %360 = and i8 %359, 1
  store i8 %360, i8* %26, align 1
  %361 = icmp eq i64 %345, 0
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %29, align 1
  %363 = lshr i64 %345, 63
  %364 = trunc i64 %363 to i8
  store i8 %364, i8* %32, align 1
  %365 = xor i64 %363, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %366 = xor i64 %363, %344
  %367 = add nuw nsw i64 %365, %366
  %368 = icmp eq i64 %367, 2
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %38, align 1
  %370 = add i64 %343, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %371 = add i64 %339, 25
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to i32*
  %373 = load i32, i32* %372, align 4
  store i8 0, i8* %14, align 1
  %374 = and i32 %373, 255
  %375 = tail call i32 @llvm.ctpop.i32(i32 %374)
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = xor i8 %377, 1
  store i8 %378, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %379 = icmp eq i32 %373, 0
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %29, align 1
  %381 = lshr i32 %373, 31
  %382 = trunc i32 %381 to i8
  store i8 %382, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v202 = select i1 %379, i64 347, i64 31
  %383 = add i64 %339, %.v202
  store i64 %383, i64* %3, align 8
  br i1 %379, label %block_.L_44b6cd, label %block_44b591

block_44b591:                                     ; preds = %block_44b572
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %384 = add i64 %383, 14
  store i64 %384, i64* %3, align 8
  %385 = load i32, i32* %261, align 4
  %386 = sext i32 %385 to i64
  %387 = mul nsw i64 %386, 76
  store i64 %387, i64* %RCX.i1761, align 8
  %388 = lshr i64 %387, 63
  %389 = add i64 %387, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %389, i64* %RAX.i1763, align 8
  %390 = icmp ult i64 %389, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %391 = icmp ult i64 %389, %387
  %392 = or i1 %390, %391
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %14, align 1
  %394 = trunc i64 %389 to i32
  %395 = and i32 %394, 252
  %396 = tail call i32 @llvm.ctpop.i32(i32 %395)
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  %399 = xor i8 %398, 1
  store i8 %399, i8* %21, align 1
  %400 = xor i64 %387, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %401 = xor i64 %400, %389
  %402 = lshr i64 %401, 4
  %403 = trunc i64 %402 to i8
  %404 = and i8 %403, 1
  store i8 %404, i8* %26, align 1
  %405 = icmp eq i64 %389, 0
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %29, align 1
  %407 = lshr i64 %389, 63
  %408 = trunc i64 %407 to i8
  store i8 %408, i8* %32, align 1
  %409 = xor i64 %407, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %410 = xor i64 %407, %388
  %411 = add nuw nsw i64 %409, %410
  %412 = icmp eq i64 %411, 2
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %38, align 1
  %414 = add i64 %387, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 52)
  %415 = add i64 %383, 25
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i32*
  %417 = load i32, i32* %416, align 4
  %418 = add i32 %417, -2
  %419 = icmp ult i32 %417, 2
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %14, align 1
  %421 = and i32 %418, 255
  %422 = tail call i32 @llvm.ctpop.i32(i32 %421)
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  store i8 %425, i8* %21, align 1
  %426 = xor i32 %418, %417
  %427 = lshr i32 %426, 4
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  store i8 %429, i8* %26, align 1
  %430 = icmp eq i32 %418, 0
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %29, align 1
  %432 = lshr i32 %418, 31
  %433 = trunc i32 %432 to i8
  store i8 %433, i8* %32, align 1
  %434 = lshr i32 %417, 31
  %435 = xor i32 %432, %434
  %436 = add nuw nsw i32 %435, %434
  %437 = icmp eq i32 %436, 2
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %38, align 1
  %.v203 = select i1 %430, i64 31, i64 171
  %439 = add i64 %383, %.v203
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %440 = load i64, i64* %RBP.i, align 8
  %441 = add i64 %440, -8
  %442 = add i64 %439, 14
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = sext i32 %444 to i64
  %446 = mul nsw i64 %445, 76
  store i64 %446, i64* %RCX.i1761, align 8
  %447 = lshr i64 %446, 63
  %448 = add i64 %446, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %448, i64* %RDX.i1736, align 8
  %449 = icmp ult i64 %448, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %450 = icmp ult i64 %448, %446
  %451 = or i1 %449, %450
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %14, align 1
  %453 = trunc i64 %448 to i32
  %454 = and i32 %453, 252
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454)
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %21, align 1
  %459 = xor i64 %446, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %460 = xor i64 %459, %448
  %461 = lshr i64 %460, 4
  %462 = trunc i64 %461 to i8
  %463 = and i8 %462, 1
  store i8 %463, i8* %26, align 1
  %464 = icmp eq i64 %448, 0
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %29, align 1
  %466 = lshr i64 %448, 63
  %467 = trunc i64 %466 to i8
  store i8 %467, i8* %32, align 1
  %468 = xor i64 %466, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %469 = xor i64 %466, %447
  %470 = add nuw nsw i64 %468, %469
  %471 = icmp eq i64 %470, 2
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %38, align 1
  %473 = add i64 %446, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %474 = add i64 %439, 27
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to i32*
  %476 = load i32, i32* %475, align 4
  %477 = zext i32 %476 to i64
  store i64 %477, i64* %RDI.i55, align 8
  %478 = add i64 %439, 30
  store i64 %478, i64* %3, align 8
  %479 = load i32, i32* %443, align 4
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RSI.i292, align 8
  %481 = add i64 %439, 34
  store i64 %481, i64* %3, align 8
  %482 = load i32, i32* %443, align 4
  %483 = sext i32 %482 to i64
  %484 = mul nsw i64 %483, 76
  store i64 %484, i64* %RCX.i1761, align 8
  %485 = lshr i64 %484, 63
  %486 = load i64, i64* %RAX.i1763, align 8
  %487 = add i64 %439, 41
  store i64 %487, i64* %3, align 8
  %488 = add i64 %484, %486
  store i64 %488, i64* %RAX.i1763, align 8
  %489 = icmp ult i64 %488, %486
  %490 = icmp ult i64 %488, %484
  %491 = or i1 %489, %490
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %14, align 1
  %493 = trunc i64 %488 to i32
  %494 = and i32 %493, 255
  %495 = tail call i32 @llvm.ctpop.i32(i32 %494)
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  %498 = xor i8 %497, 1
  store i8 %498, i8* %21, align 1
  %499 = xor i64 %484, %486
  %500 = xor i64 %499, %488
  %501 = lshr i64 %500, 4
  %502 = trunc i64 %501 to i8
  %503 = and i8 %502, 1
  store i8 %503, i8* %26, align 1
  %504 = icmp eq i64 %488, 0
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %29, align 1
  %506 = lshr i64 %488, 63
  %507 = trunc i64 %506 to i8
  store i8 %507, i8* %32, align 1
  %508 = lshr i64 %486, 63
  %509 = xor i64 %506, %508
  %510 = xor i64 %506, %485
  %511 = add nuw nsw i64 %509, %510
  %512 = icmp eq i64 %511, 2
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %38, align 1
  br i1 %430, label %block_44b5b0, label %block_.L_44b63c

block_44b5b0:                                     ; preds = %block_44b591
  %514 = add i64 %488, 72
  %515 = add i64 %439, 44
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %514 to i32*
  %517 = load i32, i32* %516, align 4
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %RDX.i1736, align 8
  %519 = add i64 %439, -95184
  %520 = add i64 %439, 49
  %521 = load i64, i64* %6, align 8
  %522 = add i64 %521, -8
  %523 = inttoptr i64 %522 to i64*
  store i64 %520, i64* %523, align 8
  store i64 %522, i64* %6, align 8
  store i64 %519, i64* %3, align 8
  %call2_44b5dc = tail call %struct.Memory* @sub_4341e0.add_loss_move(%struct.State* nonnull %0, i64 %519, %struct.Memory* %MEMORY.0)
  %524 = load i64, i64* %3, align 8
  %525 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %526 = and i32 %525, 4
  %527 = zext i32 %526 to i64
  store i64 %527, i64* %RDX.i1736, align 8
  store i8 0, i8* %14, align 1
  %528 = tail call i32 @llvm.ctpop.i32(i32 %526)
  %529 = trunc i32 %528 to i8
  %530 = xor i8 %529, 1
  store i8 %530, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit124 = lshr exact i32 %526, 2
  %531 = trunc i32 %.lobit124 to i8
  %532 = xor i8 %531, 1
  store i8 %532, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %533 = icmp eq i8 %532, 0
  %.v205 = select i1 %533, i64 24, i64 19
  %534 = add i64 %524, %.v205
  store i64 %534, i64* %3, align 8
  br i1 %533, label %block_.L_44b5f9, label %block_44b5f4

block_44b5f4:                                     ; preds = %block_44b5b0
  %535 = add i64 %534, 67
  store i64 %535, i64* %3, align 8
  br label %block_.L_44b637

block_.L_44b5f9:                                  ; preds = %block_44b5b0
  store i64 ptrtoint (%G__0x57ea8e_type* @G__0x57ea8e to i64), i64* %RDI.i55, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %536 = load i64, i64* %RBP.i, align 8
  %537 = add i64 %536, -8
  %538 = add i64 %534, 24
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i32*
  %540 = load i32, i32* %539, align 4
  %541 = sext i32 %540 to i64
  %542 = mul nsw i64 %541, 76
  store i64 %542, i64* %RCX.i1761, align 8
  %543 = lshr i64 %542, 63
  %544 = add i64 %542, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %544, i64* %RAX.i1763, align 8
  %545 = icmp ult i64 %544, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %546 = icmp ult i64 %544, %542
  %547 = or i1 %545, %546
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %14, align 1
  %549 = trunc i64 %544 to i32
  %550 = and i32 %549, 252
  %551 = tail call i32 @llvm.ctpop.i32(i32 %550)
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  %554 = xor i8 %553, 1
  store i8 %554, i8* %21, align 1
  %555 = xor i64 %542, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %556 = xor i64 %555, %544
  %557 = lshr i64 %556, 4
  %558 = trunc i64 %557 to i8
  %559 = and i8 %558, 1
  store i8 %559, i8* %26, align 1
  %560 = icmp eq i64 %544, 0
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %29, align 1
  %562 = lshr i64 %544, 63
  %563 = trunc i64 %562 to i8
  store i8 %563, i8* %32, align 1
  %564 = xor i64 %562, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %565 = xor i64 %562, %543
  %566 = add nuw nsw i64 %564, %565
  %567 = icmp eq i64 %566, 2
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %38, align 1
  %569 = add i64 %542, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %570 = add i64 %534, 34
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = zext i32 %572 to i64
  store i64 %573, i64* %RSI.i292, align 8
  %574 = add i64 %534, 37
  store i64 %574, i64* %3, align 8
  %575 = load i32, i32* %539, align 4
  %576 = zext i32 %575 to i64
  store i64 %576, i64* %RDX.i1736, align 8
  %577 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %578 = add i32 %577, 1
  %579 = zext i32 %578 to i64
  store i64 %579, i64* %51, align 8
  %580 = icmp eq i32 %577, -1
  %581 = icmp eq i32 %578, 0
  %582 = or i1 %580, %581
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %14, align 1
  %584 = and i32 %578, 255
  %585 = tail call i32 @llvm.ctpop.i32(i32 %584)
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  %588 = xor i8 %587, 1
  store i8 %588, i8* %21, align 1
  %589 = xor i32 %578, %577
  %590 = lshr i32 %589, 4
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  store i8 %592, i8* %26, align 1
  %593 = zext i1 %581 to i8
  store i8 %593, i8* %29, align 1
  %594 = lshr i32 %578, 31
  %595 = trunc i32 %594 to i8
  store i8 %595, i8* %32, align 1
  %596 = lshr i32 %577, 31
  %597 = xor i32 %594, %596
  %598 = add nuw nsw i32 %597, %594
  %599 = icmp eq i32 %598, 2
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %38, align 1
  store i64 %579, i64* %RCX.i1761, align 8
  store i8 0, i8* %AL.i, align 1
  %601 = add i64 %534, 26551
  %602 = add i64 %534, 59
  %603 = load i64, i64* %6, align 8
  %604 = add i64 %603, -8
  %605 = inttoptr i64 %604 to i64*
  store i64 %602, i64* %605, align 8
  store i64 %604, i64* %6, align 8
  store i64 %601, i64* %3, align 8
  %call2_44b62f = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %601, %struct.Memory* %MEMORY.0)
  %606 = load i64, i64* %RBP.i, align 8
  %607 = add i64 %606, -40
  %608 = load i32, i32* %EAX.i, align 4
  %609 = load i64, i64* %3, align 8
  %610 = add i64 %609, 3
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %607 to i32*
  store i32 %608, i32* %611, align 4
  %.pre93 = load i64, i64* %3, align 8
  br label %block_.L_44b637

block_.L_44b637:                                  ; preds = %block_.L_44b5f9, %block_44b5f4
  %612 = phi i64 [ %.pre93, %block_.L_44b5f9 ], [ %535, %block_44b5f4 ]
  %613 = add i64 %612, 145
  br label %block_.L_44b6c8

block_.L_44b63c:                                  ; preds = %block_44b591
  %614 = add i64 %488, 52
  %615 = add i64 %439, 44
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i32*
  %617 = load i32, i32* %616, align 4
  %618 = zext i32 %617 to i64
  store i64 %618, i64* %RDX.i1736, align 8
  %619 = add i64 %439, -93852
  %620 = add i64 %439, 49
  %621 = load i64, i64* %6, align 8
  %622 = add i64 %621, -8
  %623 = inttoptr i64 %622 to i64*
  store i64 %620, i64* %623, align 8
  store i64 %622, i64* %6, align 8
  store i64 %619, i64* %3, align 8
  %call2_44b668 = tail call %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* nonnull %0, i64 %619, %struct.Memory* %MEMORY.0)
  %624 = load i64, i64* %3, align 8
  %625 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %626 = and i32 %625, 4
  %627 = zext i32 %626 to i64
  store i64 %627, i64* %RDX.i1736, align 8
  store i8 0, i8* %14, align 1
  %628 = tail call i32 @llvm.ctpop.i32(i32 %626)
  %629 = trunc i32 %628 to i8
  %630 = xor i8 %629, 1
  store i8 %630, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit125 = lshr exact i32 %626, 2
  %631 = trunc i32 %.lobit125 to i8
  %632 = xor i8 %631, 1
  store i8 %632, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %633 = icmp eq i8 %632, 0
  %.v204 = select i1 %633, i64 24, i64 19
  %634 = add i64 %624, %.v204
  store i64 %634, i64* %3, align 8
  br i1 %633, label %block_.L_44b685, label %block_44b680

block_44b680:                                     ; preds = %block_.L_44b63c
  %635 = add i64 %634, 67
  store i64 %635, i64* %3, align 8
  br label %block_.L_44b6c3

block_.L_44b685:                                  ; preds = %block_.L_44b63c
  store i64 ptrtoint (%G__0x57eab9_type* @G__0x57eab9 to i64), i64* %RDI.i55, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %636 = load i64, i64* %RBP.i, align 8
  %637 = add i64 %636, -8
  %638 = add i64 %634, 24
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i32*
  %640 = load i32, i32* %639, align 4
  %641 = sext i32 %640 to i64
  %642 = mul nsw i64 %641, 76
  store i64 %642, i64* %RCX.i1761, align 8
  %643 = lshr i64 %642, 63
  %644 = add i64 %642, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %644, i64* %RAX.i1763, align 8
  %645 = icmp ult i64 %644, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %646 = icmp ult i64 %644, %642
  %647 = or i1 %645, %646
  %648 = zext i1 %647 to i8
  store i8 %648, i8* %14, align 1
  %649 = trunc i64 %644 to i32
  %650 = and i32 %649, 252
  %651 = tail call i32 @llvm.ctpop.i32(i32 %650)
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  %654 = xor i8 %653, 1
  store i8 %654, i8* %21, align 1
  %655 = xor i64 %642, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %656 = xor i64 %655, %644
  %657 = lshr i64 %656, 4
  %658 = trunc i64 %657 to i8
  %659 = and i8 %658, 1
  store i8 %659, i8* %26, align 1
  %660 = icmp eq i64 %644, 0
  %661 = zext i1 %660 to i8
  store i8 %661, i8* %29, align 1
  %662 = lshr i64 %644, 63
  %663 = trunc i64 %662 to i8
  store i8 %663, i8* %32, align 1
  %664 = xor i64 %662, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %665 = xor i64 %662, %643
  %666 = add nuw nsw i64 %664, %665
  %667 = icmp eq i64 %666, 2
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %38, align 1
  %669 = add i64 %642, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %670 = add i64 %634, 34
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i32*
  %672 = load i32, i32* %671, align 4
  %673 = zext i32 %672 to i64
  store i64 %673, i64* %RSI.i292, align 8
  %674 = add i64 %634, 37
  store i64 %674, i64* %3, align 8
  %675 = load i32, i32* %639, align 4
  %676 = zext i32 %675 to i64
  store i64 %676, i64* %RDX.i1736, align 8
  %677 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %678 = add i32 %677, 1
  %679 = zext i32 %678 to i64
  store i64 %679, i64* %51, align 8
  %680 = icmp eq i32 %677, -1
  %681 = icmp eq i32 %678, 0
  %682 = or i1 %680, %681
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %14, align 1
  %684 = and i32 %678, 255
  %685 = tail call i32 @llvm.ctpop.i32(i32 %684)
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  %688 = xor i8 %687, 1
  store i8 %688, i8* %21, align 1
  %689 = xor i32 %678, %677
  %690 = lshr i32 %689, 4
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  store i8 %692, i8* %26, align 1
  %693 = zext i1 %681 to i8
  store i8 %693, i8* %29, align 1
  %694 = lshr i32 %678, 31
  %695 = trunc i32 %694 to i8
  store i8 %695, i8* %32, align 1
  %696 = lshr i32 %677, 31
  %697 = xor i32 %694, %696
  %698 = add nuw nsw i32 %697, %694
  %699 = icmp eq i32 %698, 2
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %38, align 1
  store i64 %679, i64* %RCX.i1761, align 8
  store i8 0, i8* %AL.i, align 1
  %701 = add i64 %634, 26411
  %702 = add i64 %634, 59
  %703 = load i64, i64* %6, align 8
  %704 = add i64 %703, -8
  %705 = inttoptr i64 %704 to i64*
  store i64 %702, i64* %705, align 8
  store i64 %704, i64* %6, align 8
  store i64 %701, i64* %3, align 8
  %call2_44b6bb = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %701, %struct.Memory* %MEMORY.0)
  %706 = load i64, i64* %RBP.i, align 8
  %707 = add i64 %706, -44
  %708 = load i32, i32* %EAX.i, align 4
  %709 = load i64, i64* %3, align 8
  %710 = add i64 %709, 3
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %707 to i32*
  store i32 %708, i32* %711, align 4
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_44b6c3

block_.L_44b6c3:                                  ; preds = %block_.L_44b685, %block_44b680
  %712 = phi i64 [ %.pre94, %block_.L_44b685 ], [ %635, %block_44b680 ]
  %713 = add i64 %712, 5
  store i64 %713, i64* %3, align 8
  br label %block_.L_44b6c8

block_.L_44b6c8:                                  ; preds = %block_.L_44b6c3, %block_.L_44b637
  %storemerge = phi i64 [ %613, %block_.L_44b637 ], [ %713, %block_.L_44b6c3 ]
  %714 = add i64 %storemerge, 5
  store i64 %714, i64* %3, align 8
  br label %block_.L_44b6cd

block_.L_44b6cd:                                  ; preds = %block_.L_44b6c8, %block_44b572
  %715 = phi i64 [ %714, %block_.L_44b6c8 ], [ %383, %block_44b572 ]
  %716 = add i64 %715, 860
  br label %block_.L_44ba29

block_.L_44b6d2:                                  ; preds = %block_44b55d
  %717 = add i64 %339, ptrtoint (%G_0x97a7e__rip__type* @G_0x97a7e__rip_ to i64)
  %718 = add i64 %339, 8
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i32*
  %720 = load i32, i32* %719, align 4
  store i32 %720, i32* %54, align 1
  store float 0.000000e+00, float* %56, align 1
  store float 0.000000e+00, float* %58, align 1
  store float 0.000000e+00, float* %60, align 1
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %721 = add i64 %339, 22
  store i64 %721, i64* %3, align 8
  %722 = load i32, i32* %261, align 4
  %723 = sext i32 %722 to i64
  %724 = mul nsw i64 %723, 76
  store i64 %724, i64* %RCX.i1761, align 8
  %725 = lshr i64 %724, 63
  %726 = add i64 %724, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %726, i64* %RDX.i1736, align 8
  %727 = icmp ult i64 %726, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %728 = icmp ult i64 %726, %724
  %729 = or i1 %727, %728
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %14, align 1
  %731 = trunc i64 %726 to i32
  %732 = and i32 %731, 252
  %733 = tail call i32 @llvm.ctpop.i32(i32 %732)
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  %736 = xor i8 %735, 1
  store i8 %736, i8* %21, align 1
  %737 = xor i64 %724, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %738 = xor i64 %737, %726
  %739 = lshr i64 %738, 4
  %740 = trunc i64 %739 to i8
  %741 = and i8 %740, 1
  store i8 %741, i8* %26, align 1
  %742 = icmp eq i64 %726, 0
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %29, align 1
  %744 = lshr i64 %726, 63
  %745 = trunc i64 %744 to i8
  store i8 %745, i8* %32, align 1
  %746 = xor i64 %744, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %747 = xor i64 %744, %725
  %748 = add nuw nsw i64 %746, %747
  %749 = icmp eq i64 %748, 2
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %38, align 1
  %751 = add i64 %724, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %752 = add i64 %339, 35
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i32*
  %754 = load i32, i32* %753, align 4
  %755 = zext i32 %754 to i64
  store i64 %755, i64* %RSI.i51, align 8
  %756 = add i64 %258, -12
  %757 = add i64 %339, 38
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i32*
  store i32 %754, i32* %758, align 4
  %759 = load i64, i64* %RBP.i, align 8
  %760 = add i64 %759, -8
  %761 = load i64, i64* %3, align 8
  %762 = add i64 %761, 4
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %760 to i32*
  %764 = load i32, i32* %763, align 4
  %765 = sext i32 %764 to i64
  %766 = mul nsw i64 %765, 76
  store i64 %766, i64* %RCX.i1761, align 8
  %767 = lshr i64 %766, 63
  %768 = load i64, i64* %RAX.i1763, align 8
  %769 = add i64 %766, %768
  store i64 %769, i64* %RAX.i1763, align 8
  %770 = icmp ult i64 %769, %768
  %771 = icmp ult i64 %769, %766
  %772 = or i1 %770, %771
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %14, align 1
  %774 = trunc i64 %769 to i32
  %775 = and i32 %774, 255
  %776 = tail call i32 @llvm.ctpop.i32(i32 %775)
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  %779 = xor i8 %778, 1
  store i8 %779, i8* %21, align 1
  %780 = xor i64 %766, %768
  %781 = xor i64 %780, %769
  %782 = lshr i64 %781, 4
  %783 = trunc i64 %782 to i8
  %784 = and i8 %783, 1
  store i8 %784, i8* %26, align 1
  %785 = icmp eq i64 %769, 0
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %29, align 1
  %787 = lshr i64 %769, 63
  %788 = trunc i64 %787 to i8
  store i8 %788, i8* %32, align 1
  %789 = lshr i64 %768, 63
  %790 = xor i64 %787, %789
  %791 = xor i64 %787, %767
  %792 = add nuw nsw i64 %790, %791
  %793 = icmp eq i64 %792, 2
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %38, align 1
  %795 = add i64 %769, 16
  %796 = add i64 %761, 15
  store i64 %796, i64* %3, align 8
  %797 = load <2 x float>, <2 x float>* %61, align 1
  %798 = extractelement <2 x float> %797, i32 0
  %799 = inttoptr i64 %795 to float*
  %800 = load float, float* %799, align 4
  %801 = fcmp uno float %798, %800
  br i1 %801, label %802, label %812

; <label>:802:                                    ; preds = %block_.L_44b6d2
  %803 = fadd float %798, %800
  %804 = bitcast float %803 to i32
  %805 = and i32 %804, 2143289344
  %806 = icmp eq i32 %805, 2139095040
  %807 = and i32 %804, 4194303
  %808 = icmp ne i32 %807, 0
  %809 = and i1 %806, %808
  br i1 %809, label %810, label %818

; <label>:810:                                    ; preds = %802
  %811 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %796, %struct.Memory* %MEMORY.0)
  %.pre95 = load i64, i64* %3, align 8
  %.pre96 = load i8, i8* %14, align 1
  %.pre97 = load i8, i8* %29, align 1
  br label %routine_ucomiss_0x10__rax____xmm0.exit

; <label>:812:                                    ; preds = %block_.L_44b6d2
  %813 = fcmp ogt float %798, %800
  br i1 %813, label %818, label %814

; <label>:814:                                    ; preds = %812
  %815 = fcmp olt float %798, %800
  br i1 %815, label %818, label %816

; <label>:816:                                    ; preds = %814
  %817 = fcmp oeq float %798, %800
  br i1 %817, label %818, label %822

; <label>:818:                                    ; preds = %816, %814, %812, %802
  %819 = phi i8 [ 0, %812 ], [ 0, %814 ], [ 1, %816 ], [ 1, %802 ]
  %820 = phi i8 [ 0, %812 ], [ 0, %814 ], [ 0, %816 ], [ 1, %802 ]
  %821 = phi i8 [ 0, %812 ], [ 1, %814 ], [ 0, %816 ], [ 1, %802 ]
  store i8 %819, i8* %29, align 1
  store i8 %820, i8* %21, align 1
  store i8 %821, i8* %14, align 1
  br label %822

; <label>:822:                                    ; preds = %818, %816
  %823 = phi i8 [ %819, %818 ], [ %786, %816 ]
  %824 = phi i8 [ %821, %818 ], [ %773, %816 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss_0x10__rax____xmm0.exit

routine_ucomiss_0x10__rax____xmm0.exit:           ; preds = %822, %810
  %825 = phi i8 [ %.pre97, %810 ], [ %823, %822 ]
  %826 = phi i8 [ %.pre96, %810 ], [ %824, %822 ]
  %827 = phi i64 [ %.pre95, %810 ], [ %796, %822 ]
  %828 = phi %struct.Memory* [ %811, %810 ], [ %MEMORY.0, %822 ]
  %829 = or i8 %825, %826
  %830 = icmp ne i8 %829, 0
  %.v190 = select i1 %830, i64 562, i64 6
  %831 = add i64 %827, %.v190
  store i64 %831, i64* %3, align 8
  br i1 %830, label %block_.L_44b939, label %block_44b70d

block_44b70d:                                     ; preds = %routine_ucomiss_0x10__rax____xmm0.exit
  %832 = load i64, i64* %RBP.i, align 8
  %833 = add i64 %832, -16
  %834 = add i64 %831, 7
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i32*
  store i32 0, i32* %835, align 4
  %836 = load i64, i64* %RBP.i, align 8
  %837 = add i64 %836, -24
  %838 = load i64, i64* %3, align 8
  %839 = add i64 %838, 7
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %837 to i32*
  store i32 0, i32* %840, align 4
  %841 = load i64, i64* %RBP.i, align 8
  %842 = add i64 %841, -28
  %843 = load i64, i64* %3, align 8
  %844 = add i64 %843, 7
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %842 to i32*
  store i32 0, i32* %845, align 4
  %846 = load i64, i64* %RBP.i, align 8
  %847 = add i64 %846, -32
  %848 = load i64, i64* %3, align 8
  %849 = add i64 %848, 7
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %847 to i32*
  store i32 0, i32* %850, align 4
  %851 = load i64, i64* %RBP.i, align 8
  %852 = add i64 %851, -20
  %853 = load i64, i64* %3, align 8
  %854 = add i64 %853, 7
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %852 to i32*
  store i32 0, i32* %855, align 4
  %.pre98 = load i64, i64* %3, align 8
  br label %block_.L_44b730

block_.L_44b730:                                  ; preds = %block_.L_44b87c, %block_44b70d
  %856 = phi i64 [ %1506, %block_.L_44b87c ], [ %.pre98, %block_44b70d ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %857 = load i64, i64* %RBP.i, align 8
  %858 = add i64 %857, -20
  %859 = add i64 %856, 13
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = zext i32 %861 to i64
  store i64 %862, i64* %RCX.i1761, align 8
  %863 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %863, i64* %RDX.i1736, align 8
  %864 = add i64 %857, -8
  %865 = add i64 %856, 25
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i32*
  %867 = load i32, i32* %866, align 4
  %868 = sext i32 %867 to i64
  %869 = mul nsw i64 %868, 76
  store i64 %869, i64* %RSI.i51, align 8
  %870 = lshr i64 %869, 63
  %871 = add i64 %869, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %871, i64* %RAX.i1763, align 8
  %872 = icmp ult i64 %871, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %873 = icmp ult i64 %871, %869
  %874 = or i1 %872, %873
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %14, align 1
  %876 = trunc i64 %871 to i32
  %877 = and i32 %876, 252
  %878 = tail call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  store i8 %881, i8* %21, align 1
  %882 = xor i64 %869, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %883 = xor i64 %882, %871
  %884 = lshr i64 %883, 4
  %885 = trunc i64 %884 to i8
  %886 = and i8 %885, 1
  store i8 %886, i8* %26, align 1
  %887 = icmp eq i64 %871, 0
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %29, align 1
  %889 = lshr i64 %871, 63
  %890 = trunc i64 %889 to i8
  store i8 %890, i8* %32, align 1
  %891 = xor i64 %889, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %892 = xor i64 %889, %870
  %893 = add nuw nsw i64 %891, %892
  %894 = icmp eq i64 %893, 2
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %38, align 1
  %896 = add i64 %869, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %897 = add i64 %856, 36
  store i64 %897, i64* %3, align 8
  %898 = inttoptr i64 %896 to i32*
  %899 = load i32, i32* %898, align 4
  %900 = sext i32 %899 to i64
  %901 = mul nsw i64 %900, 104
  store i64 %901, i64* %RAX.i1763, align 8
  %902 = lshr i64 %901, 63
  %903 = load i64, i64* %RDX.i1736, align 8
  %904 = add i64 %901, %903
  store i64 %904, i64* %RDX.i1736, align 8
  %905 = icmp ult i64 %904, %903
  %906 = icmp ult i64 %904, %901
  %907 = or i1 %905, %906
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %14, align 1
  %909 = trunc i64 %904 to i32
  %910 = and i32 %909, 255
  %911 = tail call i32 @llvm.ctpop.i32(i32 %910)
  %912 = trunc i32 %911 to i8
  %913 = and i8 %912, 1
  %914 = xor i8 %913, 1
  store i8 %914, i8* %21, align 1
  %915 = xor i64 %901, %903
  %916 = xor i64 %915, %904
  %917 = lshr i64 %916, 4
  %918 = trunc i64 %917 to i8
  %919 = and i8 %918, 1
  store i8 %919, i8* %26, align 1
  %920 = icmp eq i64 %904, 0
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %29, align 1
  %922 = lshr i64 %904, 63
  %923 = trunc i64 %922 to i8
  store i8 %923, i8* %32, align 1
  %924 = lshr i64 %903, 63
  %925 = xor i64 %922, %924
  %926 = xor i64 %922, %902
  %927 = add nuw nsw i64 %925, %926
  %928 = icmp eq i64 %927, 2
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %38, align 1
  %930 = load i32, i32* %ECX.i1758, align 4
  %931 = add i64 %904, 44
  %932 = add i64 %856, 46
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i32*
  %934 = load i32, i32* %933, align 4
  %935 = sub i32 %930, %934
  %936 = icmp ult i32 %930, %934
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %14, align 1
  %938 = and i32 %935, 255
  %939 = tail call i32 @llvm.ctpop.i32(i32 %938)
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  %942 = xor i8 %941, 1
  store i8 %942, i8* %21, align 1
  %943 = xor i32 %934, %930
  %944 = xor i32 %943, %935
  %945 = lshr i32 %944, 4
  %946 = trunc i32 %945 to i8
  %947 = and i8 %946, 1
  store i8 %947, i8* %26, align 1
  %948 = icmp eq i32 %935, 0
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %29, align 1
  %950 = lshr i32 %935, 31
  %951 = trunc i32 %950 to i8
  store i8 %951, i8* %32, align 1
  %952 = lshr i32 %930, 31
  %953 = lshr i32 %934, 31
  %954 = xor i32 %953, %952
  %955 = xor i32 %950, %952
  %956 = add nuw nsw i32 %955, %954
  %957 = icmp eq i32 %956, 2
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %38, align 1
  %959 = icmp ne i8 %951, 0
  %960 = xor i1 %959, %957
  %.v191 = select i1 %960, i64 52, i64 351
  %961 = add i64 %856, %.v191
  store i64 %961, i64* %3, align 8
  br i1 %960, label %block_44b764, label %block_.L_44b88f.loopexit

block_44b764:                                     ; preds = %block_.L_44b730
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %962 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %962, i64* %RCX.i1761, align 8
  %963 = load i64, i64* %RBP.i, align 8
  %964 = add i64 %963, -8
  %965 = add i64 %961, 22
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %964 to i32*
  %967 = load i32, i32* %966, align 4
  %968 = sext i32 %967 to i64
  %969 = mul nsw i64 %968, 76
  store i64 %969, i64* %RDX.i1736, align 8
  %970 = lshr i64 %969, 63
  %971 = add i64 %969, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %971, i64* %RSI.i51, align 8
  %972 = icmp ult i64 %971, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %973 = icmp ult i64 %971, %969
  %974 = or i1 %972, %973
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %14, align 1
  %976 = trunc i64 %971 to i32
  %977 = and i32 %976, 252
  %978 = tail call i32 @llvm.ctpop.i32(i32 %977)
  %979 = trunc i32 %978 to i8
  %980 = and i8 %979, 1
  %981 = xor i8 %980, 1
  store i8 %981, i8* %21, align 1
  %982 = xor i64 %969, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %983 = xor i64 %982, %971
  %984 = lshr i64 %983, 4
  %985 = trunc i64 %984 to i8
  %986 = and i8 %985, 1
  store i8 %986, i8* %26, align 1
  %987 = icmp eq i64 %971, 0
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %29, align 1
  %989 = lshr i64 %971, 63
  %990 = trunc i64 %989 to i8
  store i8 %990, i8* %32, align 1
  %991 = xor i64 %989, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %992 = xor i64 %989, %970
  %993 = add nuw nsw i64 %991, %992
  %994 = icmp eq i64 %993, 2
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %38, align 1
  %996 = add i64 %969, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %997 = add i64 %961, 36
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to i32*
  %999 = load i32, i32* %998, align 4
  %1000 = sext i32 %999 to i64
  %1001 = mul nsw i64 %1000, 104
  store i64 %1001, i64* %RDX.i1736, align 8
  %1002 = lshr i64 %1001, 63
  %1003 = load i64, i64* %RCX.i1761, align 8
  %1004 = add i64 %1001, %1003
  store i64 %1004, i64* %RCX.i1761, align 8
  %1005 = icmp ult i64 %1004, %1003
  %1006 = icmp ult i64 %1004, %1001
  %1007 = or i1 %1005, %1006
  %1008 = zext i1 %1007 to i8
  store i8 %1008, i8* %14, align 1
  %1009 = trunc i64 %1004 to i32
  %1010 = and i32 %1009, 255
  %1011 = tail call i32 @llvm.ctpop.i32(i32 %1010)
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  store i8 %1014, i8* %21, align 1
  %1015 = xor i64 %1001, %1003
  %1016 = xor i64 %1015, %1004
  %1017 = lshr i64 %1016, 4
  %1018 = trunc i64 %1017 to i8
  %1019 = and i8 %1018, 1
  store i8 %1019, i8* %26, align 1
  %1020 = icmp eq i64 %1004, 0
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %29, align 1
  %1022 = lshr i64 %1004, 63
  %1023 = trunc i64 %1022 to i8
  store i8 %1023, i8* %32, align 1
  %1024 = lshr i64 %1003, 63
  %1025 = xor i64 %1022, %1024
  %1026 = xor i64 %1022, %1002
  %1027 = add nuw nsw i64 %1025, %1026
  %1028 = icmp eq i64 %1027, 2
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %38, align 1
  %1030 = load i64, i64* %RBP.i, align 8
  %1031 = add i64 %1030, -20
  %1032 = add i64 %961, 47
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to i32*
  %1034 = load i32, i32* %1033, align 4
  %1035 = sext i32 %1034 to i64
  store i64 %1035, i64* %RDX.i1736, align 8
  %1036 = shl nsw i64 %1035, 2
  %1037 = add i64 %1004, 4
  %1038 = add i64 %1037, %1036
  %1039 = add i64 %961, 51
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1038 to i32*
  %1041 = load i32, i32* %1040, align 4
  %1042 = zext i32 %1041 to i64
  store i64 %1042, i64* %RDI.i55, align 8
  %1043 = add i64 %1030, -36
  %1044 = add i64 %961, 54
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i32*
  store i32 %1041, i32* %1045, align 4
  %1046 = load i64, i64* %3, align 8
  %1047 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1047, i64* %RCX.i1761, align 8
  %1048 = load i64, i64* %RBP.i, align 8
  %1049 = add i64 %1048, -36
  %1050 = add i64 %1046, 12
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i32*
  %1052 = load i32, i32* %1051, align 4
  %1053 = sext i32 %1052 to i64
  %1054 = mul nsw i64 %1053, 104
  store i64 %1054, i64* %RDX.i1736, align 8
  %1055 = lshr i64 %1054, 63
  %1056 = add i64 %1054, %1047
  store i64 %1056, i64* %RCX.i1761, align 8
  %1057 = icmp ult i64 %1056, %1047
  %1058 = icmp ult i64 %1056, %1054
  %1059 = or i1 %1057, %1058
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %14, align 1
  %1061 = trunc i64 %1056 to i32
  %1062 = and i32 %1061, 255
  %1063 = tail call i32 @llvm.ctpop.i32(i32 %1062)
  %1064 = trunc i32 %1063 to i8
  %1065 = and i8 %1064, 1
  %1066 = xor i8 %1065, 1
  store i8 %1066, i8* %21, align 1
  %1067 = xor i64 %1054, %1047
  %1068 = xor i64 %1067, %1056
  %1069 = lshr i64 %1068, 4
  %1070 = trunc i64 %1069 to i8
  %1071 = and i8 %1070, 1
  store i8 %1071, i8* %26, align 1
  %1072 = icmp eq i64 %1056, 0
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %29, align 1
  %1074 = lshr i64 %1056, 63
  %1075 = trunc i64 %1074 to i8
  store i8 %1075, i8* %32, align 1
  %1076 = lshr i64 %1047, 63
  %1077 = xor i64 %1074, %1076
  %1078 = xor i64 %1074, %1055
  %1079 = add nuw nsw i64 %1077, %1078
  %1080 = icmp eq i64 %1079, 2
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %38, align 1
  %1082 = inttoptr i64 %1056 to i32*
  %1083 = add i64 %1046, 22
  store i64 %1083, i64* %3, align 8
  %1084 = load i32, i32* %1082, align 4
  %1085 = sext i32 %1084 to i64
  %1086 = mul nsw i64 %1085, 76
  store i64 %1086, i64* %RCX.i1761, align 8
  %1087 = lshr i64 %1086, 63
  %1088 = load i64, i64* %RAX.i1763, align 8
  %1089 = add i64 %1086, %1088
  store i64 %1089, i64* %RAX.i1763, align 8
  %1090 = icmp ult i64 %1089, %1088
  %1091 = icmp ult i64 %1089, %1086
  %1092 = or i1 %1090, %1091
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %14, align 1
  %1094 = trunc i64 %1089 to i32
  %1095 = and i32 %1094, 255
  %1096 = tail call i32 @llvm.ctpop.i32(i32 %1095)
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  %1099 = xor i8 %1098, 1
  store i8 %1099, i8* %21, align 1
  %1100 = xor i64 %1086, %1088
  %1101 = xor i64 %1100, %1089
  %1102 = lshr i64 %1101, 4
  %1103 = trunc i64 %1102 to i8
  %1104 = and i8 %1103, 1
  store i8 %1104, i8* %26, align 1
  %1105 = icmp eq i64 %1089, 0
  %1106 = zext i1 %1105 to i8
  store i8 %1106, i8* %29, align 1
  %1107 = lshr i64 %1089, 63
  %1108 = trunc i64 %1107 to i8
  store i8 %1108, i8* %32, align 1
  %1109 = lshr i64 %1088, 63
  %1110 = xor i64 %1107, %1109
  %1111 = xor i64 %1107, %1087
  %1112 = add nuw nsw i64 %1110, %1111
  %1113 = icmp eq i64 %1112, 2
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %38, align 1
  %1115 = inttoptr i64 %1089 to i32*
  %1116 = add i64 %1046, 31
  store i64 %1116, i64* %3, align 8
  %1117 = load i32, i32* %1115, align 4
  %1118 = zext i32 %1117 to i64
  store i64 %1118, i64* %RDI.i55, align 8
  %1119 = load i64, i64* %RBP.i, align 8
  %1120 = add i64 %1119, -4
  %1121 = add i64 %1046, 34
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = sub i32 %1117, %1123
  %1125 = icmp ult i32 %1117, %1123
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %14, align 1
  %1127 = and i32 %1124, 255
  %1128 = tail call i32 @llvm.ctpop.i32(i32 %1127)
  %1129 = trunc i32 %1128 to i8
  %1130 = and i8 %1129, 1
  %1131 = xor i8 %1130, 1
  store i8 %1131, i8* %21, align 1
  %1132 = xor i32 %1123, %1117
  %1133 = xor i32 %1132, %1124
  %1134 = lshr i32 %1133, 4
  %1135 = trunc i32 %1134 to i8
  %1136 = and i8 %1135, 1
  store i8 %1136, i8* %26, align 1
  %1137 = icmp eq i32 %1124, 0
  %1138 = zext i1 %1137 to i8
  store i8 %1138, i8* %29, align 1
  %1139 = lshr i32 %1124, 31
  %1140 = trunc i32 %1139 to i8
  store i8 %1140, i8* %32, align 1
  %1141 = lshr i32 %1117, 31
  %1142 = lshr i32 %1123, 31
  %1143 = xor i32 %1142, %1141
  %1144 = xor i32 %1139, %1141
  %1145 = add nuw nsw i32 %1144, %1143
  %1146 = icmp eq i32 %1145, 2
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %38, align 1
  %.v199 = select i1 %1137, i64 40, i64 226
  %1148 = add i64 %1046, %.v199
  store i64 %1148, i64* %3, align 8
  br i1 %1137, label %block_44b7c2, label %block_.L_44b87c

block_44b7c2:                                     ; preds = %block_44b764
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %1149 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1149, i64* %RCX.i1761, align 8
  %1150 = add i64 %1119, -36
  %1151 = add i64 %1148, 22
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i32*
  %1153 = load i32, i32* %1152, align 4
  %1154 = sext i32 %1153 to i64
  %1155 = mul nsw i64 %1154, 104
  store i64 %1155, i64* %RDX.i1736, align 8
  %1156 = lshr i64 %1155, 63
  %1157 = add i64 %1155, %1149
  store i64 %1157, i64* %RCX.i1761, align 8
  %1158 = icmp ult i64 %1157, %1149
  %1159 = icmp ult i64 %1157, %1155
  %1160 = or i1 %1158, %1159
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %14, align 1
  %1162 = trunc i64 %1157 to i32
  %1163 = and i32 %1162, 255
  %1164 = tail call i32 @llvm.ctpop.i32(i32 %1163)
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  %1167 = xor i8 %1166, 1
  store i8 %1167, i8* %21, align 1
  %1168 = xor i64 %1155, %1149
  %1169 = xor i64 %1168, %1157
  %1170 = lshr i64 %1169, 4
  %1171 = trunc i64 %1170 to i8
  %1172 = and i8 %1171, 1
  store i8 %1172, i8* %26, align 1
  %1173 = icmp eq i64 %1157, 0
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %29, align 1
  %1175 = lshr i64 %1157, 63
  %1176 = trunc i64 %1175 to i8
  store i8 %1176, i8* %32, align 1
  %1177 = lshr i64 %1149, 63
  %1178 = xor i64 %1175, %1177
  %1179 = xor i64 %1175, %1156
  %1180 = add nuw nsw i64 %1178, %1179
  %1181 = icmp eq i64 %1180, 2
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %38, align 1
  %1183 = inttoptr i64 %1157 to i32*
  %1184 = add i64 %1148, 32
  store i64 %1184, i64* %3, align 8
  %1185 = load i32, i32* %1183, align 4
  %1186 = sext i32 %1185 to i64
  %1187 = mul nsw i64 %1186, 76
  store i64 %1187, i64* %RCX.i1761, align 8
  %1188 = lshr i64 %1187, 63
  %1189 = load i64, i64* %RAX.i1763, align 8
  %1190 = add i64 %1187, %1189
  store i64 %1190, i64* %RAX.i1763, align 8
  %1191 = icmp ult i64 %1190, %1189
  %1192 = icmp ult i64 %1190, %1187
  %1193 = or i1 %1191, %1192
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %14, align 1
  %1195 = trunc i64 %1190 to i32
  %1196 = and i32 %1195, 255
  %1197 = tail call i32 @llvm.ctpop.i32(i32 %1196)
  %1198 = trunc i32 %1197 to i8
  %1199 = and i8 %1198, 1
  %1200 = xor i8 %1199, 1
  store i8 %1200, i8* %21, align 1
  %1201 = xor i64 %1187, %1189
  %1202 = xor i64 %1201, %1190
  %1203 = lshr i64 %1202, 4
  %1204 = trunc i64 %1203 to i8
  %1205 = and i8 %1204, 1
  store i8 %1205, i8* %26, align 1
  %1206 = icmp eq i64 %1190, 0
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %29, align 1
  %1208 = lshr i64 %1190, 63
  %1209 = trunc i64 %1208 to i8
  store i8 %1209, i8* %32, align 1
  %1210 = lshr i64 %1189, 63
  %1211 = xor i64 %1208, %1210
  %1212 = xor i64 %1208, %1188
  %1213 = add nuw nsw i64 %1211, %1212
  %1214 = icmp eq i64 %1213, 2
  %1215 = zext i1 %1214 to i8
  store i8 %1215, i8* %38, align 1
  %1216 = add i64 %1190, 64
  %1217 = add i64 %1148, 43
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  %1220 = add i32 %1219, -1
  %1221 = icmp eq i32 %1219, 0
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %14, align 1
  %1223 = and i32 %1220, 255
  %1224 = tail call i32 @llvm.ctpop.i32(i32 %1223)
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  %1227 = xor i8 %1226, 1
  store i8 %1227, i8* %21, align 1
  %1228 = xor i32 %1220, %1219
  %1229 = lshr i32 %1228, 4
  %1230 = trunc i32 %1229 to i8
  %1231 = and i8 %1230, 1
  store i8 %1231, i8* %26, align 1
  %1232 = icmp eq i32 %1220, 0
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %29, align 1
  %1234 = lshr i32 %1220, 31
  %1235 = trunc i32 %1234 to i8
  store i8 %1235, i8* %32, align 1
  %1236 = lshr i32 %1219, 31
  %1237 = xor i32 %1234, %1236
  %1238 = add nuw nsw i32 %1237, %1236
  %1239 = icmp eq i32 %1238, 2
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %38, align 1
  %.v200 = select i1 %1232, i64 49, i64 61
  %1241 = add i64 %1148, %.v200
  store i64 %1241, i64* %3, align 8
  br i1 %1232, label %block_44b7f3, label %block_.L_44b7ff

block_44b7f3:                                     ; preds = %block_44b7c2
  %1242 = load i64, i64* %RBP.i, align 8
  %1243 = add i64 %1242, -32
  %1244 = add i64 %1241, 7
  store i64 %1244, i64* %3, align 8
  %1245 = inttoptr i64 %1243 to i32*
  store i32 1, i32* %1245, align 4
  %1246 = load i64, i64* %3, align 8
  %1247 = add i64 %1246, 149
  store i64 %1247, i64* %3, align 8
  br label %block_.L_44b88f

block_.L_44b7ff:                                  ; preds = %block_44b7c2
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %1248 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1248, i64* %RCX.i1761, align 8
  %1249 = load i64, i64* %RBP.i, align 8
  %1250 = add i64 %1249, -36
  %1251 = add i64 %1241, 22
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  %1253 = load i32, i32* %1252, align 4
  %1254 = sext i32 %1253 to i64
  %1255 = mul nsw i64 %1254, 104
  store i64 %1255, i64* %RDX.i1736, align 8
  %1256 = lshr i64 %1255, 63
  %1257 = add i64 %1255, %1248
  store i64 %1257, i64* %RCX.i1761, align 8
  %1258 = icmp ult i64 %1257, %1248
  %1259 = icmp ult i64 %1257, %1255
  %1260 = or i1 %1258, %1259
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %14, align 1
  %1262 = trunc i64 %1257 to i32
  %1263 = and i32 %1262, 255
  %1264 = tail call i32 @llvm.ctpop.i32(i32 %1263)
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  %1267 = xor i8 %1266, 1
  store i8 %1267, i8* %21, align 1
  %1268 = xor i64 %1255, %1248
  %1269 = xor i64 %1268, %1257
  %1270 = lshr i64 %1269, 4
  %1271 = trunc i64 %1270 to i8
  %1272 = and i8 %1271, 1
  store i8 %1272, i8* %26, align 1
  %1273 = icmp eq i64 %1257, 0
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %29, align 1
  %1275 = lshr i64 %1257, 63
  %1276 = trunc i64 %1275 to i8
  store i8 %1276, i8* %32, align 1
  %1277 = lshr i64 %1248, 63
  %1278 = xor i64 %1275, %1277
  %1279 = xor i64 %1275, %1256
  %1280 = add nuw nsw i64 %1278, %1279
  %1281 = icmp eq i64 %1280, 2
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %38, align 1
  %1283 = inttoptr i64 %1257 to i32*
  %1284 = add i64 %1241, 32
  store i64 %1284, i64* %3, align 8
  %1285 = load i32, i32* %1283, align 4
  %1286 = sext i32 %1285 to i64
  %1287 = mul nsw i64 %1286, 76
  store i64 %1287, i64* %RCX.i1761, align 8
  %1288 = lshr i64 %1287, 63
  %1289 = load i64, i64* %RAX.i1763, align 8
  %1290 = add i64 %1287, %1289
  store i64 %1290, i64* %RAX.i1763, align 8
  %1291 = icmp ult i64 %1290, %1289
  %1292 = icmp ult i64 %1290, %1287
  %1293 = or i1 %1291, %1292
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %14, align 1
  %1295 = trunc i64 %1290 to i32
  %1296 = and i32 %1295, 255
  %1297 = tail call i32 @llvm.ctpop.i32(i32 %1296)
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  store i8 %1300, i8* %21, align 1
  %1301 = xor i64 %1287, %1289
  %1302 = xor i64 %1301, %1290
  %1303 = lshr i64 %1302, 4
  %1304 = trunc i64 %1303 to i8
  %1305 = and i8 %1304, 1
  store i8 %1305, i8* %26, align 1
  %1306 = icmp eq i64 %1290, 0
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %29, align 1
  %1308 = lshr i64 %1290, 63
  %1309 = trunc i64 %1308 to i8
  store i8 %1309, i8* %32, align 1
  %1310 = lshr i64 %1289, 63
  %1311 = xor i64 %1308, %1310
  %1312 = xor i64 %1308, %1288
  %1313 = add nuw nsw i64 %1311, %1312
  %1314 = icmp eq i64 %1313, 2
  %1315 = zext i1 %1314 to i8
  store i8 %1315, i8* %38, align 1
  %1316 = add i64 %1290, 12
  %1317 = add i64 %1241, 42
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1316 to i32*
  %1319 = load i32, i32* %1318, align 4
  %1320 = zext i32 %1319 to i64
  store i64 %1320, i64* %RSI.i51, align 8
  %1321 = load i64, i64* %RBP.i, align 8
  %1322 = add i64 %1321, -16
  %1323 = add i64 %1241, 45
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i32*
  %1325 = load i32, i32* %1324, align 4
  %1326 = sub i32 %1319, %1325
  %1327 = icmp ult i32 %1319, %1325
  %1328 = zext i1 %1327 to i8
  store i8 %1328, i8* %14, align 1
  %1329 = and i32 %1326, 255
  %1330 = tail call i32 @llvm.ctpop.i32(i32 %1329)
  %1331 = trunc i32 %1330 to i8
  %1332 = and i8 %1331, 1
  %1333 = xor i8 %1332, 1
  store i8 %1333, i8* %21, align 1
  %1334 = xor i32 %1325, %1319
  %1335 = xor i32 %1334, %1326
  %1336 = lshr i32 %1335, 4
  %1337 = trunc i32 %1336 to i8
  %1338 = and i8 %1337, 1
  store i8 %1338, i8* %26, align 1
  %1339 = icmp eq i32 %1326, 0
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %29, align 1
  %1341 = lshr i32 %1326, 31
  %1342 = trunc i32 %1341 to i8
  store i8 %1342, i8* %32, align 1
  %1343 = lshr i32 %1319, 31
  %1344 = lshr i32 %1325, 31
  %1345 = xor i32 %1344, %1343
  %1346 = xor i32 %1341, %1343
  %1347 = add nuw nsw i32 %1346, %1345
  %1348 = icmp eq i32 %1347, 2
  %1349 = zext i1 %1348 to i8
  store i8 %1349, i8* %38, align 1
  %1350 = icmp ne i8 %1342, 0
  %1351 = xor i1 %1350, %1348
  %1352 = or i1 %1339, %1351
  %.v201 = select i1 %1352, i64 120, i64 51
  %1353 = add i64 %1241, %.v201
  store i64 %1353, i64* %3, align 8
  br i1 %1352, label %block_.L_44b877, label %block_44b832

block_44b832:                                     ; preds = %block_.L_44b7ff
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %1354 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1354, i64* %RCX.i1761, align 8
  %1355 = add i64 %1321, -36
  %1356 = add i64 %1353, 22
  store i64 %1356, i64* %3, align 8
  %1357 = inttoptr i64 %1355 to i32*
  %1358 = load i32, i32* %1357, align 4
  %1359 = sext i32 %1358 to i64
  %1360 = mul nsw i64 %1359, 104
  store i64 %1360, i64* %RDX.i1736, align 8
  %1361 = lshr i64 %1360, 63
  %1362 = add i64 %1360, %1354
  store i64 %1362, i64* %RCX.i1761, align 8
  %1363 = icmp ult i64 %1362, %1354
  %1364 = icmp ult i64 %1362, %1360
  %1365 = or i1 %1363, %1364
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %14, align 1
  %1367 = trunc i64 %1362 to i32
  %1368 = and i32 %1367, 255
  %1369 = tail call i32 @llvm.ctpop.i32(i32 %1368)
  %1370 = trunc i32 %1369 to i8
  %1371 = and i8 %1370, 1
  %1372 = xor i8 %1371, 1
  store i8 %1372, i8* %21, align 1
  %1373 = xor i64 %1360, %1354
  %1374 = xor i64 %1373, %1362
  %1375 = lshr i64 %1374, 4
  %1376 = trunc i64 %1375 to i8
  %1377 = and i8 %1376, 1
  store i8 %1377, i8* %26, align 1
  %1378 = icmp eq i64 %1362, 0
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %29, align 1
  %1380 = lshr i64 %1362, 63
  %1381 = trunc i64 %1380 to i8
  store i8 %1381, i8* %32, align 1
  %1382 = lshr i64 %1354, 63
  %1383 = xor i64 %1380, %1382
  %1384 = xor i64 %1380, %1361
  %1385 = add nuw nsw i64 %1383, %1384
  %1386 = icmp eq i64 %1385, 2
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %38, align 1
  %1388 = inttoptr i64 %1362 to i32*
  %1389 = add i64 %1353, 31
  store i64 %1389, i64* %3, align 8
  %1390 = load i32, i32* %1388, align 4
  %1391 = zext i32 %1390 to i64
  store i64 %1391, i64* %RSI.i51, align 8
  %1392 = add i64 %1321, -24
  %1393 = add i64 %1353, 34
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i32*
  store i32 %1390, i32* %1394, align 4
  %1395 = load i64, i64* %3, align 8
  %1396 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1396, i64* %RCX.i1761, align 8
  %1397 = load i64, i64* %RBP.i, align 8
  %1398 = add i64 %1397, -36
  %1399 = add i64 %1395, 12
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1398 to i32*
  %1401 = load i32, i32* %1400, align 4
  %1402 = sext i32 %1401 to i64
  %1403 = mul nsw i64 %1402, 104
  store i64 %1403, i64* %RDX.i1736, align 8
  %1404 = lshr i64 %1403, 63
  %1405 = add i64 %1403, %1396
  store i64 %1405, i64* %RCX.i1761, align 8
  %1406 = icmp ult i64 %1405, %1396
  %1407 = icmp ult i64 %1405, %1403
  %1408 = or i1 %1406, %1407
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %14, align 1
  %1410 = trunc i64 %1405 to i32
  %1411 = and i32 %1410, 255
  %1412 = tail call i32 @llvm.ctpop.i32(i32 %1411)
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  %1415 = xor i8 %1414, 1
  store i8 %1415, i8* %21, align 1
  %1416 = xor i64 %1403, %1396
  %1417 = xor i64 %1416, %1405
  %1418 = lshr i64 %1417, 4
  %1419 = trunc i64 %1418 to i8
  %1420 = and i8 %1419, 1
  store i8 %1420, i8* %26, align 1
  %1421 = icmp eq i64 %1405, 0
  %1422 = zext i1 %1421 to i8
  store i8 %1422, i8* %29, align 1
  %1423 = lshr i64 %1405, 63
  %1424 = trunc i64 %1423 to i8
  store i8 %1424, i8* %32, align 1
  %1425 = lshr i64 %1396, 63
  %1426 = xor i64 %1423, %1425
  %1427 = xor i64 %1423, %1404
  %1428 = add nuw nsw i64 %1426, %1427
  %1429 = icmp eq i64 %1428, 2
  %1430 = zext i1 %1429 to i8
  store i8 %1430, i8* %38, align 1
  %1431 = inttoptr i64 %1405 to i32*
  %1432 = add i64 %1395, 22
  store i64 %1432, i64* %3, align 8
  %1433 = load i32, i32* %1431, align 4
  %1434 = sext i32 %1433 to i64
  %1435 = mul nsw i64 %1434, 76
  store i64 %1435, i64* %RCX.i1761, align 8
  %1436 = lshr i64 %1435, 63
  %1437 = load i64, i64* %RAX.i1763, align 8
  %1438 = add i64 %1435, %1437
  store i64 %1438, i64* %RAX.i1763, align 8
  %1439 = icmp ult i64 %1438, %1437
  %1440 = icmp ult i64 %1438, %1435
  %1441 = or i1 %1439, %1440
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %14, align 1
  %1443 = trunc i64 %1438 to i32
  %1444 = and i32 %1443, 255
  %1445 = tail call i32 @llvm.ctpop.i32(i32 %1444)
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  %1448 = xor i8 %1447, 1
  store i8 %1448, i8* %21, align 1
  %1449 = xor i64 %1435, %1437
  %1450 = xor i64 %1449, %1438
  %1451 = lshr i64 %1450, 4
  %1452 = trunc i64 %1451 to i8
  %1453 = and i8 %1452, 1
  store i8 %1453, i8* %26, align 1
  %1454 = icmp eq i64 %1438, 0
  %1455 = zext i1 %1454 to i8
  store i8 %1455, i8* %29, align 1
  %1456 = lshr i64 %1438, 63
  %1457 = trunc i64 %1456 to i8
  store i8 %1457, i8* %32, align 1
  %1458 = lshr i64 %1437, 63
  %1459 = xor i64 %1456, %1458
  %1460 = xor i64 %1456, %1436
  %1461 = add nuw nsw i64 %1459, %1460
  %1462 = icmp eq i64 %1461, 2
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %38, align 1
  %1464 = add i64 %1438, 12
  %1465 = add i64 %1395, 32
  store i64 %1465, i64* %3, align 8
  %1466 = inttoptr i64 %1464 to i32*
  %1467 = load i32, i32* %1466, align 4
  %1468 = zext i32 %1467 to i64
  store i64 %1468, i64* %RSI.i51, align 8
  %1469 = load i64, i64* %RBP.i, align 8
  %1470 = add i64 %1469, -16
  %1471 = add i64 %1395, 35
  store i64 %1471, i64* %3, align 8
  %1472 = inttoptr i64 %1470 to i32*
  store i32 %1467, i32* %1472, align 4
  %.pre102 = load i64, i64* %3, align 8
  %.pre103.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_44b877

block_.L_44b877:                                  ; preds = %block_44b832, %block_.L_44b7ff
  %.pre103 = phi i64 [ %.pre103.pre, %block_44b832 ], [ %1321, %block_.L_44b7ff ]
  %1473 = phi i64 [ %.pre102, %block_44b832 ], [ %1353, %block_.L_44b7ff ]
  %1474 = add i64 %1473, 5
  store i64 %1474, i64* %3, align 8
  br label %block_.L_44b87c

block_.L_44b87c:                                  ; preds = %block_44b764, %block_.L_44b877
  %1475 = phi i64 [ %.pre103, %block_.L_44b877 ], [ %1119, %block_44b764 ]
  %1476 = phi i64 [ %1474, %block_.L_44b877 ], [ %1148, %block_44b764 ]
  %1477 = add i64 %1475, -20
  %1478 = add i64 %1476, 8
  store i64 %1478, i64* %3, align 8
  %1479 = inttoptr i64 %1477 to i32*
  %1480 = load i32, i32* %1479, align 4
  %1481 = add i32 %1480, 1
  %1482 = zext i32 %1481 to i64
  store i64 %1482, i64* %RAX.i1763, align 8
  %1483 = icmp eq i32 %1480, -1
  %1484 = icmp eq i32 %1481, 0
  %1485 = or i1 %1483, %1484
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %14, align 1
  %1487 = and i32 %1481, 255
  %1488 = tail call i32 @llvm.ctpop.i32(i32 %1487)
  %1489 = trunc i32 %1488 to i8
  %1490 = and i8 %1489, 1
  %1491 = xor i8 %1490, 1
  store i8 %1491, i8* %21, align 1
  %1492 = xor i32 %1481, %1480
  %1493 = lshr i32 %1492, 4
  %1494 = trunc i32 %1493 to i8
  %1495 = and i8 %1494, 1
  store i8 %1495, i8* %26, align 1
  %1496 = zext i1 %1484 to i8
  store i8 %1496, i8* %29, align 1
  %1497 = lshr i32 %1481, 31
  %1498 = trunc i32 %1497 to i8
  store i8 %1498, i8* %32, align 1
  %1499 = lshr i32 %1480, 31
  %1500 = xor i32 %1497, %1499
  %1501 = add nuw nsw i32 %1500, %1497
  %1502 = icmp eq i32 %1501, 2
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %38, align 1
  %1504 = add i64 %1476, 14
  store i64 %1504, i64* %3, align 8
  store i32 %1481, i32* %1479, align 4
  %1505 = load i64, i64* %3, align 8
  %1506 = add i64 %1505, -346
  store i64 %1506, i64* %3, align 8
  br label %block_.L_44b730

block_.L_44b88f.loopexit:                         ; preds = %block_.L_44b730
  br label %block_.L_44b88f

block_.L_44b88f:                                  ; preds = %block_.L_44b88f.loopexit, %block_44b7f3
  %1507 = phi i64 [ %1247, %block_44b7f3 ], [ %961, %block_.L_44b88f.loopexit ]
  %1508 = load i64, i64* %RBP.i, align 8
  %1509 = add i64 %1508, -24
  %1510 = add i64 %1507, 4
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i32*
  %1512 = load i32, i32* %1511, align 4
  store i8 0, i8* %14, align 1
  %1513 = and i32 %1512, 255
  %1514 = tail call i32 @llvm.ctpop.i32(i32 %1513)
  %1515 = trunc i32 %1514 to i8
  %1516 = and i8 %1515, 1
  %1517 = xor i8 %1516, 1
  store i8 %1517, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1518 = icmp eq i32 %1512, 0
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %29, align 1
  %1520 = lshr i32 %1512, 31
  %1521 = trunc i32 %1520 to i8
  store i8 %1521, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v192 = select i1 %1518, i64 10, i64 17
  %1522 = add i64 %1507, %.v192
  store i64 %1522, i64* %3, align 8
  br i1 %1518, label %block_44b899, label %block_.L_44b8a0

block_44b899:                                     ; preds = %block_.L_44b88f
  %1523 = add i64 %1508, -32
  %1524 = add i64 %1522, 7
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i32*
  store i32 1, i32* %1525, align 4
  %.pre99 = load i64, i64* %RBP.i, align 8
  %.pre100 = load i64, i64* %3, align 8
  br label %block_.L_44b8a0

block_.L_44b8a0:                                  ; preds = %block_.L_44b88f, %block_44b899
  %1526 = phi i64 [ %.pre100, %block_44b899 ], [ %1522, %block_.L_44b88f ]
  %1527 = phi i64 [ %.pre99, %block_44b899 ], [ %1508, %block_.L_44b88f ]
  %1528 = add i64 %1527, -32
  %1529 = add i64 %1526, 4
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1528 to i32*
  %1531 = load i32, i32* %1530, align 4
  store i8 0, i8* %14, align 1
  %1532 = and i32 %1531, 255
  %1533 = tail call i32 @llvm.ctpop.i32(i32 %1532)
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  %1536 = xor i8 %1535, 1
  store i8 %1536, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1537 = icmp eq i32 %1531, 0
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %29, align 1
  %1539 = lshr i32 %1531, 31
  %1540 = trunc i32 %1539 to i8
  store i8 %1540, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v193 = select i1 %1537, i64 10, i64 148
  %1541 = add i64 %1526, %.v193
  store i64 %1541, i64* %3, align 8
  br i1 %1537, label %block_44b8aa, label %block_.L_44b934

block_44b8aa:                                     ; preds = %block_.L_44b8a0
  %1542 = add i64 %1527, -28
  store i64 %1542, i64* %RDX.i1736, align 8
  %1543 = add i64 %1527, -12
  %1544 = add i64 %1541, 7
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i32*
  %1546 = load i32, i32* %1545, align 4
  %1547 = zext i32 %1546 to i64
  store i64 %1547, i64* %RDI.i55, align 8
  %1548 = add i64 %1527, -24
  %1549 = add i64 %1541, 10
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1548 to i32*
  %1551 = load i32, i32* %1550, align 4
  %1552 = zext i32 %1551 to i64
  store i64 %1552, i64* %RSI.i51, align 8
  %1553 = add i64 %1541, 2838
  %1554 = add i64 %1541, 15
  %1555 = load i64, i64* %6, align 8
  %1556 = add i64 %1555, -8
  %1557 = inttoptr i64 %1556 to i64*
  store i64 %1554, i64* %1557, align 8
  store i64 %1556, i64* %6, align 8
  store i64 %1553, i64* %3, align 8
  %call2_44b8b4 = tail call %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* nonnull %0, i64 %1553, %struct.Memory* %828)
  %1558 = load i32, i32* %EAX.i, align 4
  %1559 = load i64, i64* %3, align 8
  %1560 = add i32 %1558, -5
  %1561 = icmp ult i32 %1558, 5
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %14, align 1
  %1563 = and i32 %1560, 255
  %1564 = tail call i32 @llvm.ctpop.i32(i32 %1563)
  %1565 = trunc i32 %1564 to i8
  %1566 = and i8 %1565, 1
  %1567 = xor i8 %1566, 1
  store i8 %1567, i8* %21, align 1
  %1568 = xor i32 %1560, %1558
  %1569 = lshr i32 %1568, 4
  %1570 = trunc i32 %1569 to i8
  %1571 = and i8 %1570, 1
  store i8 %1571, i8* %26, align 1
  %1572 = icmp eq i32 %1560, 0
  %1573 = zext i1 %1572 to i8
  store i8 %1573, i8* %29, align 1
  %1574 = lshr i32 %1560, 31
  %1575 = trunc i32 %1574 to i8
  store i8 %1575, i8* %32, align 1
  %1576 = lshr i32 %1558, 31
  %1577 = xor i32 %1574, %1576
  %1578 = add nuw nsw i32 %1577, %1576
  %1579 = icmp eq i32 %1578, 2
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %38, align 1
  %.v197 = select i1 %1572, i64 123, i64 9
  %1581 = add i64 %1559, %.v197
  store i64 %1581, i64* %3, align 8
  br i1 %1572, label %block_.L_44b934, label %block_44b8c2

block_44b8c2:                                     ; preds = %block_44b8aa
  %1582 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1583 = and i32 %1582, 4
  %1584 = zext i32 %1583 to i64
  store i64 %1584, i64* %RAX.i1763, align 8
  store i8 0, i8* %14, align 1
  %1585 = tail call i32 @llvm.ctpop.i32(i32 %1583)
  %1586 = trunc i32 %1585 to i8
  %1587 = xor i8 %1586, 1
  store i8 %1587, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit126 = lshr exact i32 %1583, 2
  %1588 = trunc i32 %.lobit126 to i8
  %1589 = xor i8 %1588, 1
  store i8 %1589, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1590 = icmp eq i8 %1589, 0
  %.v198 = select i1 %1590, i64 24, i64 19
  %1591 = add i64 %1581, %.v198
  store i64 %1591, i64* %3, align 8
  br i1 %1590, label %block_.L_44b8da, label %block_44b8d5

block_44b8d5:                                     ; preds = %block_44b8c2
  %1592 = add i64 %1591, 43
  store i64 %1592, i64* %3, align 8
  br label %block_.L_44b900

block_.L_44b8da:                                  ; preds = %block_44b8c2
  store i64 ptrtoint (%G__0x57eada_type* @G__0x57eada to i64), i64* %RDI.i55, align 8
  %1593 = load i64, i64* %RBP.i, align 8
  %1594 = add i64 %1593, -12
  %1595 = add i64 %1591, 13
  store i64 %1595, i64* %3, align 8
  %1596 = inttoptr i64 %1594 to i32*
  %1597 = load i32, i32* %1596, align 4
  %1598 = zext i32 %1597 to i64
  store i64 %1598, i64* %RSI.i51, align 8
  %1599 = add i64 %1593, -8
  %1600 = add i64 %1591, 16
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i32*
  %1602 = load i32, i32* %1601, align 4
  %1603 = zext i32 %1602 to i64
  store i64 %1603, i64* %RDX.i1736, align 8
  %1604 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %1605 = add i32 %1604, 1
  %1606 = zext i32 %1605 to i64
  store i64 %1606, i64* %RAX.i1763, align 8
  %1607 = icmp eq i32 %1604, -1
  %1608 = icmp eq i32 %1605, 0
  %1609 = or i1 %1607, %1608
  %1610 = zext i1 %1609 to i8
  store i8 %1610, i8* %14, align 1
  %1611 = and i32 %1605, 255
  %1612 = tail call i32 @llvm.ctpop.i32(i32 %1611)
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  %1615 = xor i8 %1614, 1
  store i8 %1615, i8* %21, align 1
  %1616 = xor i32 %1605, %1604
  %1617 = lshr i32 %1616, 4
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  store i8 %1619, i8* %26, align 1
  %1620 = zext i1 %1608 to i8
  store i8 %1620, i8* %29, align 1
  %1621 = lshr i32 %1605, 31
  %1622 = trunc i32 %1621 to i8
  store i8 %1622, i8* %32, align 1
  %1623 = lshr i32 %1604, 31
  %1624 = xor i32 %1621, %1623
  %1625 = add nuw nsw i32 %1624, %1621
  %1626 = icmp eq i32 %1625, 2
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %38, align 1
  store i64 %1606, i64* %RCX.i1761, align 8
  store i8 0, i8* %AL.i, align 1
  %1628 = add i64 %1591, 25814
  %1629 = add i64 %1591, 35
  %1630 = load i64, i64* %6, align 8
  %1631 = add i64 %1630, -8
  %1632 = inttoptr i64 %1631 to i64*
  store i64 %1629, i64* %1632, align 8
  store i64 %1631, i64* %6, align 8
  store i64 %1628, i64* %3, align 8
  %call2_44b8f8 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1628, %struct.Memory* %call2_44b8b4)
  %1633 = load i64, i64* %RBP.i, align 8
  %1634 = add i64 %1633, -48
  %1635 = load i32, i32* %EAX.i, align 4
  %1636 = load i64, i64* %3, align 8
  %1637 = add i64 %1636, 3
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1634 to i32*
  store i32 %1635, i32* %1638, align 4
  %.pre101 = load i64, i64* %3, align 8
  br label %block_.L_44b900

block_.L_44b900:                                  ; preds = %block_.L_44b8da, %block_44b8d5
  %1639 = phi i64 [ %.pre101, %block_.L_44b8da ], [ %1592, %block_44b8d5 ]
  %MEMORY.11 = phi %struct.Memory* [ %call2_44b8f8, %block_.L_44b8da ], [ %call2_44b8b4, %block_44b8d5 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %1640 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %1640, i64* %RCX.i1761, align 8
  %1641 = load i64, i64* %RBP.i, align 8
  %1642 = add i64 %1641, -8
  %1643 = add i64 %1639, 22
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i32*
  %1645 = load i32, i32* %1644, align 4
  %1646 = sext i32 %1645 to i64
  %1647 = mul nsw i64 %1646, 76
  store i64 %1647, i64* %RDX.i1736, align 8
  %1648 = lshr i64 %1647, 63
  %1649 = add i64 %1647, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1649, i64* %RAX.i1763, align 8
  %1650 = icmp ult i64 %1649, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1651 = icmp ult i64 %1649, %1647
  %1652 = or i1 %1650, %1651
  %1653 = zext i1 %1652 to i8
  store i8 %1653, i8* %14, align 1
  %1654 = trunc i64 %1649 to i32
  %1655 = and i32 %1654, 252
  %1656 = tail call i32 @llvm.ctpop.i32(i32 %1655)
  %1657 = trunc i32 %1656 to i8
  %1658 = and i8 %1657, 1
  %1659 = xor i8 %1658, 1
  store i8 %1659, i8* %21, align 1
  %1660 = xor i64 %1647, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1661 = xor i64 %1660, %1649
  %1662 = lshr i64 %1661, 4
  %1663 = trunc i64 %1662 to i8
  %1664 = and i8 %1663, 1
  store i8 %1664, i8* %26, align 1
  %1665 = icmp eq i64 %1649, 0
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %29, align 1
  %1667 = lshr i64 %1649, 63
  %1668 = trunc i64 %1667 to i8
  store i8 %1668, i8* %32, align 1
  %1669 = xor i64 %1667, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1670 = xor i64 %1667, %1648
  %1671 = add nuw nsw i64 %1669, %1670
  %1672 = icmp eq i64 %1671, 2
  %1673 = zext i1 %1672 to i8
  store i8 %1673, i8* %38, align 1
  %1674 = add i64 %1647, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %1675 = add i64 %1639, 33
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to i32*
  %1677 = load i32, i32* %1676, align 4
  %1678 = sext i32 %1677 to i64
  %1679 = mul nsw i64 %1678, 104
  store i64 %1679, i64* %RAX.i1763, align 8
  %1680 = lshr i64 %1679, 63
  %1681 = load i64, i64* %RCX.i1761, align 8
  %1682 = add i64 %1679, %1681
  store i64 %1682, i64* %RCX.i1761, align 8
  %1683 = icmp ult i64 %1682, %1681
  %1684 = icmp ult i64 %1682, %1679
  %1685 = or i1 %1683, %1684
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %14, align 1
  %1687 = trunc i64 %1682 to i32
  %1688 = and i32 %1687, 255
  %1689 = tail call i32 @llvm.ctpop.i32(i32 %1688)
  %1690 = trunc i32 %1689 to i8
  %1691 = and i8 %1690, 1
  %1692 = xor i8 %1691, 1
  store i8 %1692, i8* %21, align 1
  %1693 = xor i64 %1679, %1681
  %1694 = xor i64 %1693, %1682
  %1695 = lshr i64 %1694, 4
  %1696 = trunc i64 %1695 to i8
  %1697 = and i8 %1696, 1
  store i8 %1697, i8* %26, align 1
  %1698 = icmp eq i64 %1682, 0
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %29, align 1
  %1700 = lshr i64 %1682, 63
  %1701 = trunc i64 %1700 to i8
  store i8 %1701, i8* %32, align 1
  %1702 = lshr i64 %1681, 63
  %1703 = xor i64 %1700, %1702
  %1704 = xor i64 %1700, %1680
  %1705 = add nuw nsw i64 %1703, %1704
  %1706 = icmp eq i64 %1705, 2
  %1707 = zext i1 %1706 to i8
  store i8 %1707, i8* %38, align 1
  %1708 = add i64 %1682, 60
  %1709 = add i64 %1639, 47
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1708 to i32*
  store i32 5, i32* %1710, align 4
  %1711 = load i64, i64* %3, align 8
  %1712 = add i64 %1711, 2676
  br label %block_.L_44c3a3

block_.L_44b934:                                  ; preds = %block_.L_44b8a0, %block_44b8aa
  %1713 = phi i64 [ %1541, %block_.L_44b8a0 ], [ %1581, %block_44b8aa ]
  %MEMORY.12 = phi %struct.Memory* [ %828, %block_.L_44b8a0 ], [ %call2_44b8b4, %block_44b8aa ]
  %1714 = add i64 %1713, 5
  store i64 %1714, i64* %3, align 8
  br label %block_.L_44b939

block_.L_44b939:                                  ; preds = %block_.L_44b934, %routine_ucomiss_0x10__rax____xmm0.exit
  %1715 = phi i64 [ %831, %routine_ucomiss_0x10__rax____xmm0.exit ], [ %1714, %block_.L_44b934 ]
  %MEMORY.13 = phi %struct.Memory* [ %828, %routine_ucomiss_0x10__rax____xmm0.exit ], [ %MEMORY.12, %block_.L_44b934 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %1716 = load i64, i64* %RBP.i, align 8
  %1717 = add i64 %1716, -8
  %1718 = add i64 %1715, 14
  store i64 %1718, i64* %3, align 8
  %1719 = inttoptr i64 %1717 to i32*
  %1720 = load i32, i32* %1719, align 4
  %1721 = sext i32 %1720 to i64
  %1722 = mul nsw i64 %1721, 76
  store i64 %1722, i64* %RCX.i1761, align 8
  %1723 = lshr i64 %1722, 63
  %1724 = add i64 %1722, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1724, i64* %RAX.i1763, align 8
  %1725 = icmp ult i64 %1724, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1726 = icmp ult i64 %1724, %1722
  %1727 = or i1 %1725, %1726
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %14, align 1
  %1729 = trunc i64 %1724 to i32
  %1730 = and i32 %1729, 252
  %1731 = tail call i32 @llvm.ctpop.i32(i32 %1730)
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  %1734 = xor i8 %1733, 1
  store i8 %1734, i8* %21, align 1
  %1735 = xor i64 %1722, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1736 = xor i64 %1735, %1724
  %1737 = lshr i64 %1736, 4
  %1738 = trunc i64 %1737 to i8
  %1739 = and i8 %1738, 1
  store i8 %1739, i8* %26, align 1
  %1740 = icmp eq i64 %1724, 0
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %29, align 1
  %1742 = lshr i64 %1724, 63
  %1743 = trunc i64 %1742 to i8
  store i8 %1743, i8* %32, align 1
  %1744 = xor i64 %1742, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1745 = xor i64 %1742, %1723
  %1746 = add nuw nsw i64 %1744, %1745
  %1747 = icmp eq i64 %1746, 2
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %38, align 1
  %1749 = add i64 %1722, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 36)
  %1750 = add i64 %1715, 25
  store i64 %1750, i64* %3, align 8
  %1751 = inttoptr i64 %1749 to i32*
  %1752 = load i32, i32* %1751, align 4
  %1753 = add i32 %1752, -3
  %1754 = icmp ult i32 %1752, 3
  %1755 = zext i1 %1754 to i8
  store i8 %1755, i8* %14, align 1
  %1756 = and i32 %1753, 255
  %1757 = tail call i32 @llvm.ctpop.i32(i32 %1756)
  %1758 = trunc i32 %1757 to i8
  %1759 = and i8 %1758, 1
  %1760 = xor i8 %1759, 1
  store i8 %1760, i8* %21, align 1
  %1761 = xor i32 %1753, %1752
  %1762 = lshr i32 %1761, 4
  %1763 = trunc i32 %1762 to i8
  %1764 = and i8 %1763, 1
  store i8 %1764, i8* %26, align 1
  %1765 = icmp eq i32 %1753, 0
  %1766 = zext i1 %1765 to i8
  store i8 %1766, i8* %29, align 1
  %1767 = lshr i32 %1753, 31
  %1768 = trunc i32 %1767 to i8
  store i8 %1768, i8* %32, align 1
  %1769 = lshr i32 %1752, 31
  %1770 = xor i32 %1767, %1769
  %1771 = add nuw nsw i32 %1770, %1769
  %1772 = icmp eq i32 %1771, 2
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %38, align 1
  %.v194 = select i1 %1765, i64 31, i64 133
  %1774 = add i64 %1715, %.v194
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %1775 = load i64, i64* %RBP.i, align 8
  %1776 = add i64 %1775, -12
  %1777 = add i64 %1774, 13
  store i64 %1777, i64* %3, align 8
  %1778 = inttoptr i64 %1776 to i32*
  %1779 = load i32, i32* %1778, align 4
  %1780 = zext i32 %1779 to i64
  store i64 %1780, i64* %RDI.i55, align 8
  %1781 = add i64 %1775, -8
  %1782 = add i64 %1774, 16
  store i64 %1782, i64* %3, align 8
  %1783 = inttoptr i64 %1781 to i32*
  %1784 = load i32, i32* %1783, align 4
  %1785 = zext i32 %1784 to i64
  store i64 %1785, i64* %RSI.i51, align 8
  %1786 = add i64 %1774, 20
  store i64 %1786, i64* %3, align 8
  %1787 = load i32, i32* %1783, align 4
  %1788 = sext i32 %1787 to i64
  %1789 = mul nsw i64 %1788, 76
  store i64 %1789, i64* %RCX.i1761, align 8
  %1790 = lshr i64 %1789, 63
  %1791 = add i64 %1774, 27
  store i64 %1791, i64* %3, align 8
  %1792 = add i64 %1789, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1792, i64* %RAX.i1763, align 8
  %1793 = icmp ult i64 %1792, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1794 = icmp ult i64 %1792, %1789
  %1795 = or i1 %1793, %1794
  %1796 = zext i1 %1795 to i8
  store i8 %1796, i8* %14, align 1
  %1797 = trunc i64 %1792 to i32
  %1798 = and i32 %1797, 252
  %1799 = tail call i32 @llvm.ctpop.i32(i32 %1798)
  %1800 = trunc i32 %1799 to i8
  %1801 = and i8 %1800, 1
  %1802 = xor i8 %1801, 1
  store i8 %1802, i8* %21, align 1
  %1803 = xor i64 %1789, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1804 = xor i64 %1803, %1792
  %1805 = lshr i64 %1804, 4
  %1806 = trunc i64 %1805 to i8
  %1807 = and i8 %1806, 1
  store i8 %1807, i8* %26, align 1
  %1808 = icmp eq i64 %1792, 0
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %29, align 1
  %1810 = lshr i64 %1792, 63
  %1811 = trunc i64 %1810 to i8
  store i8 %1811, i8* %32, align 1
  %1812 = xor i64 %1810, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1813 = xor i64 %1810, %1790
  %1814 = add nuw nsw i64 %1812, %1813
  %1815 = icmp eq i64 %1814, 2
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %38, align 1
  br i1 %1765, label %block_44b958, label %block_.L_44b9be

block_44b958:                                     ; preds = %block_.L_44b939
  %1817 = add i64 %1789, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 68)
  %1818 = add i64 %1774, 30
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1817 to i32*
  %1820 = load i32, i32* %1819, align 4
  %1821 = zext i32 %1820 to i64
  store i64 %1821, i64* %RDX.i1736, align 8
  %1822 = add i64 %1774, -96632
  %1823 = add i64 %1774, 35
  %1824 = load i64, i64* %6, align 8
  %1825 = add i64 %1824, -8
  %1826 = inttoptr i64 %1825 to i64*
  store i64 %1823, i64* %1826, align 8
  store i64 %1825, i64* %6, align 8
  store i64 %1822, i64* %3, align 8
  %call2_44b976 = tail call %struct.Memory* @sub_433fe0.add_gain_move(%struct.State* nonnull %0, i64 %1822, %struct.Memory* %MEMORY.13)
  %1827 = load i64, i64* %3, align 8
  %1828 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1829 = and i32 %1828, 4
  %1830 = zext i32 %1829 to i64
  store i64 %1830, i64* %RDX.i1736, align 8
  store i8 0, i8* %14, align 1
  %1831 = tail call i32 @llvm.ctpop.i32(i32 %1829)
  %1832 = trunc i32 %1831 to i8
  %1833 = xor i8 %1832, 1
  store i8 %1833, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit127 = lshr exact i32 %1829, 2
  %1834 = trunc i32 %.lobit127 to i8
  %1835 = xor i8 %1834, 1
  store i8 %1835, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1836 = icmp eq i8 %1835, 0
  %.v196 = select i1 %1836, i64 24, i64 19
  %1837 = add i64 %1827, %.v196
  store i64 %1837, i64* %3, align 8
  br i1 %1836, label %block_.L_44b993, label %block_44b98e

block_44b98e:                                     ; preds = %block_44b958
  %1838 = add i64 %1837, 43
  store i64 %1838, i64* %3, align 8
  br label %block_.L_44b9b9

block_.L_44b993:                                  ; preds = %block_44b958
  store i64 ptrtoint (%G__0x57eb13_type* @G__0x57eb13 to i64), i64* %RDI.i55, align 8
  %1839 = load i64, i64* %RBP.i, align 8
  %1840 = add i64 %1839, -12
  %1841 = add i64 %1837, 13
  store i64 %1841, i64* %3, align 8
  %1842 = inttoptr i64 %1840 to i32*
  %1843 = load i32, i32* %1842, align 4
  %1844 = zext i32 %1843 to i64
  store i64 %1844, i64* %RSI.i51, align 8
  %1845 = add i64 %1839, -8
  %1846 = add i64 %1837, 16
  store i64 %1846, i64* %3, align 8
  %1847 = inttoptr i64 %1845 to i32*
  %1848 = load i32, i32* %1847, align 4
  %1849 = zext i32 %1848 to i64
  store i64 %1849, i64* %RDX.i1736, align 8
  %1850 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %1851 = add i32 %1850, 1
  %1852 = zext i32 %1851 to i64
  store i64 %1852, i64* %RAX.i1763, align 8
  %1853 = icmp eq i32 %1850, -1
  %1854 = icmp eq i32 %1851, 0
  %1855 = or i1 %1853, %1854
  %1856 = zext i1 %1855 to i8
  store i8 %1856, i8* %14, align 1
  %1857 = and i32 %1851, 255
  %1858 = tail call i32 @llvm.ctpop.i32(i32 %1857)
  %1859 = trunc i32 %1858 to i8
  %1860 = and i8 %1859, 1
  %1861 = xor i8 %1860, 1
  store i8 %1861, i8* %21, align 1
  %1862 = xor i32 %1851, %1850
  %1863 = lshr i32 %1862, 4
  %1864 = trunc i32 %1863 to i8
  %1865 = and i8 %1864, 1
  store i8 %1865, i8* %26, align 1
  %1866 = zext i1 %1854 to i8
  store i8 %1866, i8* %29, align 1
  %1867 = lshr i32 %1851, 31
  %1868 = trunc i32 %1867 to i8
  store i8 %1868, i8* %32, align 1
  %1869 = lshr i32 %1850, 31
  %1870 = xor i32 %1867, %1869
  %1871 = add nuw nsw i32 %1870, %1867
  %1872 = icmp eq i32 %1871, 2
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %38, align 1
  store i64 %1852, i64* %RCX.i1761, align 8
  store i8 0, i8* %AL.i, align 1
  %1874 = add i64 %1837, 25629
  %1875 = add i64 %1837, 35
  %1876 = load i64, i64* %6, align 8
  %1877 = add i64 %1876, -8
  %1878 = inttoptr i64 %1877 to i64*
  store i64 %1875, i64* %1878, align 8
  store i64 %1877, i64* %6, align 8
  store i64 %1874, i64* %3, align 8
  %call2_44b9b1 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1874, %struct.Memory* %call2_44b976)
  %1879 = load i64, i64* %RBP.i, align 8
  %1880 = add i64 %1879, -52
  %1881 = load i32, i32* %EAX.i, align 4
  %1882 = load i64, i64* %3, align 8
  %1883 = add i64 %1882, 3
  store i64 %1883, i64* %3, align 8
  %1884 = inttoptr i64 %1880 to i32*
  store i32 %1881, i32* %1884, align 4
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_44b9b9

block_.L_44b9b9:                                  ; preds = %block_.L_44b993, %block_44b98e
  %1885 = phi i64 [ %.pre104, %block_.L_44b993 ], [ %1838, %block_44b98e ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_44b9b1, %block_.L_44b993 ], [ %call2_44b976, %block_44b98e ]
  %1886 = add i64 %1885, 107
  br label %block_.L_44ba24

block_.L_44b9be:                                  ; preds = %block_.L_44b939
  %1887 = add i64 %1789, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 36)
  %1888 = add i64 %1774, 30
  store i64 %1888, i64* %3, align 8
  %1889 = inttoptr i64 %1887 to i32*
  %1890 = load i32, i32* %1889, align 4
  %1891 = zext i32 %1890 to i64
  store i64 %1891, i64* %RDX.i1736, align 8
  %1892 = add i64 %1774, -95038
  %1893 = add i64 %1774, 35
  %1894 = load i64, i64* %6, align 8
  %1895 = add i64 %1894, -8
  %1896 = inttoptr i64 %1895 to i64*
  store i64 %1893, i64* %1896, align 8
  store i64 %1895, i64* %6, align 8
  store i64 %1892, i64* %3, align 8
  %call2_44b9dc = tail call %struct.Memory* @sub_434680.add_owl_attack_move(%struct.State* nonnull %0, i64 %1892, %struct.Memory* %MEMORY.13)
  %1897 = load i64, i64* %3, align 8
  %1898 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1899 = and i32 %1898, 4
  %1900 = zext i32 %1899 to i64
  store i64 %1900, i64* %RDX.i1736, align 8
  store i8 0, i8* %14, align 1
  %1901 = tail call i32 @llvm.ctpop.i32(i32 %1899)
  %1902 = trunc i32 %1901 to i8
  %1903 = xor i8 %1902, 1
  store i8 %1903, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit128 = lshr exact i32 %1899, 2
  %1904 = trunc i32 %.lobit128 to i8
  %1905 = xor i8 %1904, 1
  store i8 %1905, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1906 = icmp eq i8 %1905, 0
  %.v195 = select i1 %1906, i64 24, i64 19
  %1907 = add i64 %1897, %.v195
  store i64 %1907, i64* %3, align 8
  br i1 %1906, label %block_.L_44b9f9, label %block_44b9f4

block_44b9f4:                                     ; preds = %block_.L_44b9be
  %1908 = add i64 %1907, 43
  store i64 %1908, i64* %3, align 8
  br label %block_.L_44ba1f

block_.L_44b9f9:                                  ; preds = %block_.L_44b9be
  store i64 ptrtoint (%G__0x57eb3e_type* @G__0x57eb3e to i64), i64* %RDI.i55, align 8
  %1909 = load i64, i64* %RBP.i, align 8
  %1910 = add i64 %1909, -12
  %1911 = add i64 %1907, 13
  store i64 %1911, i64* %3, align 8
  %1912 = inttoptr i64 %1910 to i32*
  %1913 = load i32, i32* %1912, align 4
  %1914 = zext i32 %1913 to i64
  store i64 %1914, i64* %RSI.i51, align 8
  %1915 = add i64 %1909, -8
  %1916 = add i64 %1907, 16
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i32*
  %1918 = load i32, i32* %1917, align 4
  %1919 = zext i32 %1918 to i64
  store i64 %1919, i64* %RDX.i1736, align 8
  %1920 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %1921 = add i32 %1920, 1
  %1922 = zext i32 %1921 to i64
  store i64 %1922, i64* %RAX.i1763, align 8
  %1923 = icmp eq i32 %1920, -1
  %1924 = icmp eq i32 %1921, 0
  %1925 = or i1 %1923, %1924
  %1926 = zext i1 %1925 to i8
  store i8 %1926, i8* %14, align 1
  %1927 = and i32 %1921, 255
  %1928 = tail call i32 @llvm.ctpop.i32(i32 %1927)
  %1929 = trunc i32 %1928 to i8
  %1930 = and i8 %1929, 1
  %1931 = xor i8 %1930, 1
  store i8 %1931, i8* %21, align 1
  %1932 = xor i32 %1921, %1920
  %1933 = lshr i32 %1932, 4
  %1934 = trunc i32 %1933 to i8
  %1935 = and i8 %1934, 1
  store i8 %1935, i8* %26, align 1
  %1936 = zext i1 %1924 to i8
  store i8 %1936, i8* %29, align 1
  %1937 = lshr i32 %1921, 31
  %1938 = trunc i32 %1937 to i8
  store i8 %1938, i8* %32, align 1
  %1939 = lshr i32 %1920, 31
  %1940 = xor i32 %1937, %1939
  %1941 = add nuw nsw i32 %1940, %1937
  %1942 = icmp eq i32 %1941, 2
  %1943 = zext i1 %1942 to i8
  store i8 %1943, i8* %38, align 1
  store i64 %1922, i64* %RCX.i1761, align 8
  store i8 0, i8* %AL.i, align 1
  %1944 = add i64 %1907, 25527
  %1945 = add i64 %1907, 35
  %1946 = load i64, i64* %6, align 8
  %1947 = add i64 %1946, -8
  %1948 = inttoptr i64 %1947 to i64*
  store i64 %1945, i64* %1948, align 8
  store i64 %1947, i64* %6, align 8
  store i64 %1944, i64* %3, align 8
  %call2_44ba17 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1944, %struct.Memory* %call2_44b9dc)
  %1949 = load i64, i64* %RBP.i, align 8
  %1950 = add i64 %1949, -56
  %1951 = load i32, i32* %EAX.i, align 4
  %1952 = load i64, i64* %3, align 8
  %1953 = add i64 %1952, 3
  store i64 %1953, i64* %3, align 8
  %1954 = inttoptr i64 %1950 to i32*
  store i32 %1951, i32* %1954, align 4
  %.pre105 = load i64, i64* %3, align 8
  br label %block_.L_44ba1f

block_.L_44ba1f:                                  ; preds = %block_.L_44b9f9, %block_44b9f4
  %1955 = phi i64 [ %.pre105, %block_.L_44b9f9 ], [ %1908, %block_44b9f4 ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_44ba17, %block_.L_44b9f9 ], [ %call2_44b9dc, %block_44b9f4 ]
  %1956 = add i64 %1955, 5
  store i64 %1956, i64* %3, align 8
  br label %block_.L_44ba24

block_.L_44ba24:                                  ; preds = %block_.L_44ba1f, %block_.L_44b9b9
  %storemerge73 = phi i64 [ %1886, %block_.L_44b9b9 ], [ %1956, %block_.L_44ba1f ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.14, %block_.L_44b9b9 ], [ %MEMORY.15, %block_.L_44ba1f ]
  %1957 = add i64 %storemerge73, 5
  store i64 %1957, i64* %3, align 8
  br label %block_.L_44ba29

block_.L_44ba29:                                  ; preds = %block_.L_44ba24, %block_.L_44b6cd
  %storemerge68 = phi i64 [ %716, %block_.L_44b6cd ], [ %1957, %block_.L_44ba24 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.0, %block_.L_44b6cd ], [ %MEMORY.16, %block_.L_44ba24 ]
  %1958 = add i64 %storemerge68, 2421
  br label %block_.L_44c39e

block_.L_44ba2e:                                  ; preds = %block_.L_44b51f.block_.L_44ba2e_crit_edge, %block_44b53e
  %1959 = phi i64 [ %258, %block_44b53e ], [ %.pre106, %block_.L_44b51f.block_.L_44ba2e_crit_edge ]
  %1960 = phi i64 [ %304, %block_44b53e ], [ %257, %block_.L_44b51f.block_.L_44ba2e_crit_edge ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %1961 = add i64 %1959, -8
  %1962 = add i64 %1960, 14
  store i64 %1962, i64* %3, align 8
  %1963 = inttoptr i64 %1961 to i32*
  %1964 = load i32, i32* %1963, align 4
  %1965 = sext i32 %1964 to i64
  %1966 = mul nsw i64 %1965, 76
  store i64 %1966, i64* %RCX.i1761, align 8
  %1967 = lshr i64 %1966, 63
  %1968 = add i64 %1966, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %1968, i64* %RAX.i1763, align 8
  %1969 = icmp ult i64 %1968, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1970 = icmp ult i64 %1968, %1966
  %1971 = or i1 %1969, %1970
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %14, align 1
  %1973 = trunc i64 %1968 to i32
  %1974 = and i32 %1973, 252
  %1975 = tail call i32 @llvm.ctpop.i32(i32 %1974)
  %1976 = trunc i32 %1975 to i8
  %1977 = and i8 %1976, 1
  %1978 = xor i8 %1977, 1
  store i8 %1978, i8* %21, align 1
  %1979 = xor i64 %1966, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %1980 = xor i64 %1979, %1968
  %1981 = lshr i64 %1980, 4
  %1982 = trunc i64 %1981 to i8
  %1983 = and i8 %1982, 1
  store i8 %1983, i8* %26, align 1
  %1984 = icmp eq i64 %1968, 0
  %1985 = zext i1 %1984 to i8
  store i8 %1985, i8* %29, align 1
  %1986 = lshr i64 %1968, 63
  %1987 = trunc i64 %1986 to i8
  store i8 %1987, i8* %32, align 1
  %1988 = xor i64 %1986, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %1989 = xor i64 %1986, %1967
  %1990 = add nuw nsw i64 %1988, %1989
  %1991 = icmp eq i64 %1990, 2
  %1992 = zext i1 %1991 to i8
  store i8 %1992, i8* %38, align 1
  %1993 = add i64 %1966, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 28)
  %1994 = add i64 %1960, 25
  store i64 %1994, i64* %3, align 8
  %1995 = inttoptr i64 %1993 to i32*
  %1996 = load i32, i32* %1995, align 4
  store i8 0, i8* %14, align 1
  %1997 = and i32 %1996, 255
  %1998 = tail call i32 @llvm.ctpop.i32(i32 %1997)
  %1999 = trunc i32 %1998 to i8
  %2000 = and i8 %1999, 1
  %2001 = xor i8 %2000, 1
  store i8 %2001, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2002 = icmp eq i32 %1996, 0
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %29, align 1
  %2004 = lshr i32 %1996, 31
  %2005 = trunc i32 %2004 to i8
  store i8 %2005, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v143 = select i1 %2002, i64 31, i64 681
  %2006 = add i64 %1960, %.v143
  store i64 %2006, i64* %3, align 8
  br i1 %2002, label %block_44ba4d, label %block_.L_44bcd7

block_44ba4d:                                     ; preds = %block_.L_44ba2e
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %2007 = add i64 %2006, 14
  store i64 %2007, i64* %3, align 8
  %2008 = load i32, i32* %1963, align 4
  %2009 = sext i32 %2008 to i64
  %2010 = mul nsw i64 %2009, 76
  store i64 %2010, i64* %RCX.i1761, align 8
  %2011 = lshr i64 %2010, 63
  %2012 = add i64 %2010, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2012, i64* %RAX.i1763, align 8
  %2013 = icmp ult i64 %2012, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2014 = icmp ult i64 %2012, %2010
  %2015 = or i1 %2013, %2014
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %14, align 1
  %2017 = trunc i64 %2012 to i32
  %2018 = and i32 %2017, 252
  %2019 = tail call i32 @llvm.ctpop.i32(i32 %2018)
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  %2022 = xor i8 %2021, 1
  store i8 %2022, i8* %21, align 1
  %2023 = xor i64 %2010, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2024 = xor i64 %2023, %2012
  %2025 = lshr i64 %2024, 4
  %2026 = trunc i64 %2025 to i8
  %2027 = and i8 %2026, 1
  store i8 %2027, i8* %26, align 1
  %2028 = icmp eq i64 %2012, 0
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %29, align 1
  %2030 = lshr i64 %2012, 63
  %2031 = trunc i64 %2030 to i8
  store i8 %2031, i8* %32, align 1
  %2032 = xor i64 %2030, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2033 = xor i64 %2030, %2011
  %2034 = add nuw nsw i64 %2032, %2033
  %2035 = icmp eq i64 %2034, 2
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %38, align 1
  %2037 = add i64 %2010, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 24)
  %2038 = add i64 %2006, 25
  store i64 %2038, i64* %3, align 8
  %2039 = inttoptr i64 %2037 to i32*
  %2040 = load i32, i32* %2039, align 4
  %2041 = add i32 %2040, -12
  %2042 = icmp ult i32 %2040, 12
  %2043 = zext i1 %2042 to i8
  store i8 %2043, i8* %14, align 1
  %2044 = and i32 %2041, 255
  %2045 = tail call i32 @llvm.ctpop.i32(i32 %2044)
  %2046 = trunc i32 %2045 to i8
  %2047 = and i8 %2046, 1
  %2048 = xor i8 %2047, 1
  store i8 %2048, i8* %21, align 1
  %2049 = xor i32 %2041, %2040
  %2050 = lshr i32 %2049, 4
  %2051 = trunc i32 %2050 to i8
  %2052 = and i8 %2051, 1
  store i8 %2052, i8* %26, align 1
  %2053 = icmp eq i32 %2041, 0
  %2054 = zext i1 %2053 to i8
  store i8 %2054, i8* %29, align 1
  %2055 = lshr i32 %2041, 31
  %2056 = trunc i32 %2055 to i8
  store i8 %2056, i8* %32, align 1
  %2057 = lshr i32 %2040, 31
  %2058 = xor i32 %2055, %2057
  %2059 = add nuw nsw i32 %2058, %2057
  %2060 = icmp eq i32 %2059, 2
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %38, align 1
  %.v176 = select i1 %2053, i64 31, i64 650
  %2062 = add i64 %2006, %.v176
  store i64 %2062, i64* %3, align 8
  %2063 = load i64, i64* %RBP.i, align 8
  br i1 %2053, label %block_44ba6c, label %block_.L_44bcd7

block_44ba6c:                                     ; preds = %block_44ba4d
  %2064 = add i64 %2063, -8
  %2065 = add i64 %2062, 4
  store i64 %2065, i64* %3, align 8
  %2066 = inttoptr i64 %2064 to i32*
  %2067 = load i32, i32* %2066, align 4
  %2068 = sext i32 %2067 to i64
  store i64 %2068, i64* %RAX.i1763, align 8
  %2069 = add nsw i64 %2068, 12099168
  %2070 = add i64 %2062, 12
  store i64 %2070, i64* %3, align 8
  %2071 = inttoptr i64 %2069 to i8*
  %2072 = load i8, i8* %2071, align 1
  %2073 = zext i8 %2072 to i64
  store i64 %2073, i64* %RCX.i1761, align 8
  %2074 = zext i8 %2072 to i32
  %2075 = add i64 %2063, -4
  %2076 = add i64 %2062, 15
  store i64 %2076, i64* %3, align 8
  %2077 = inttoptr i64 %2075 to i32*
  %2078 = load i32, i32* %2077, align 4
  %2079 = sub i32 %2074, %2078
  %2080 = icmp ult i32 %2074, %2078
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %14, align 1
  %2082 = and i32 %2079, 255
  %2083 = tail call i32 @llvm.ctpop.i32(i32 %2082)
  %2084 = trunc i32 %2083 to i8
  %2085 = and i8 %2084, 1
  %2086 = xor i8 %2085, 1
  store i8 %2086, i8* %21, align 1
  %2087 = xor i32 %2078, %2074
  %2088 = xor i32 %2087, %2079
  %2089 = lshr i32 %2088, 4
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  store i8 %2091, i8* %26, align 1
  %2092 = icmp eq i32 %2079, 0
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %29, align 1
  %2094 = lshr i32 %2079, 31
  %2095 = trunc i32 %2094 to i8
  store i8 %2095, i8* %32, align 1
  %2096 = lshr i32 %2078, 31
  %2097 = add nuw nsw i32 %2094, %2096
  %2098 = icmp eq i32 %2097, 2
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %38, align 1
  %.v177 = select i1 %2092, i64 21, i64 180
  %2100 = add i64 %2062, %.v177
  store i64 %2100, i64* %3, align 8
  br i1 %2092, label %block_44ba81, label %block_.L_44bb20

block_44ba81:                                     ; preds = %block_44ba6c
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %2101 = add i64 %2100, 14
  store i64 %2101, i64* %3, align 8
  %2102 = load i32, i32* %2066, align 4
  %2103 = sext i32 %2102 to i64
  %2104 = mul nsw i64 %2103, 76
  store i64 %2104, i64* %RCX.i1761, align 8
  %2105 = lshr i64 %2104, 63
  %2106 = add i64 %2104, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2106, i64* %RAX.i1763, align 8
  %2107 = icmp ult i64 %2106, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2108 = icmp ult i64 %2106, %2104
  %2109 = or i1 %2107, %2108
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %14, align 1
  %2111 = trunc i64 %2106 to i32
  %2112 = and i32 %2111, 252
  %2113 = tail call i32 @llvm.ctpop.i32(i32 %2112)
  %2114 = trunc i32 %2113 to i8
  %2115 = and i8 %2114, 1
  %2116 = xor i8 %2115, 1
  store i8 %2116, i8* %21, align 1
  %2117 = xor i64 %2104, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2118 = xor i64 %2117, %2106
  %2119 = lshr i64 %2118, 4
  %2120 = trunc i64 %2119 to i8
  %2121 = and i8 %2120, 1
  store i8 %2121, i8* %26, align 1
  %2122 = icmp eq i64 %2106, 0
  %2123 = zext i1 %2122 to i8
  store i8 %2123, i8* %29, align 1
  %2124 = lshr i64 %2106, 63
  %2125 = trunc i64 %2124 to i8
  store i8 %2125, i8* %32, align 1
  %2126 = xor i64 %2124, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2127 = xor i64 %2124, %2105
  %2128 = add nuw nsw i64 %2126, %2127
  %2129 = icmp eq i64 %2128, 2
  %2130 = zext i1 %2129 to i8
  store i8 %2130, i8* %38, align 1
  %2131 = add i64 %2104, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %2132 = add i64 %2100, 25
  store i64 %2132, i64* %3, align 8
  %2133 = inttoptr i64 %2131 to i32*
  %2134 = load i32, i32* %2133, align 4
  store i8 0, i8* %14, align 1
  %2135 = and i32 %2134, 255
  %2136 = tail call i32 @llvm.ctpop.i32(i32 %2135)
  %2137 = trunc i32 %2136 to i8
  %2138 = and i8 %2137, 1
  %2139 = xor i8 %2138, 1
  store i8 %2139, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2140 = icmp eq i32 %2134, 0
  %2141 = zext i1 %2140 to i8
  store i8 %2141, i8* %29, align 1
  %2142 = lshr i32 %2134, 31
  %2143 = trunc i32 %2142 to i8
  store i8 %2143, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v186 = select i1 %2140, i64 159, i64 31
  %2144 = add i64 %2100, %.v186
  store i64 %2144, i64* %3, align 8
  br i1 %2140, label %block_.L_44bb20, label %block_44baa0

block_44baa0:                                     ; preds = %block_44ba81
  store i64 5, i64* %RDX.i1736, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %2145 = add i64 %2144, 19
  store i64 %2145, i64* %3, align 8
  %2146 = load i32, i32* %2066, align 4
  %2147 = sext i32 %2146 to i64
  %2148 = mul nsw i64 %2147, 76
  store i64 %2148, i64* %RCX.i1761, align 8
  %2149 = lshr i64 %2148, 63
  %2150 = add i64 %2148, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2150, i64* %RAX.i1763, align 8
  %2151 = icmp ult i64 %2150, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2152 = icmp ult i64 %2150, %2148
  %2153 = or i1 %2151, %2152
  %2154 = zext i1 %2153 to i8
  store i8 %2154, i8* %14, align 1
  %2155 = trunc i64 %2150 to i32
  %2156 = and i32 %2155, 252
  %2157 = tail call i32 @llvm.ctpop.i32(i32 %2156)
  %2158 = trunc i32 %2157 to i8
  %2159 = and i8 %2158, 1
  %2160 = xor i8 %2159, 1
  store i8 %2160, i8* %21, align 1
  %2161 = xor i64 %2148, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2162 = xor i64 %2161, %2150
  %2163 = lshr i64 %2162, 4
  %2164 = trunc i64 %2163 to i8
  %2165 = and i8 %2164, 1
  store i8 %2165, i8* %26, align 1
  %2166 = icmp eq i64 %2150, 0
  %2167 = zext i1 %2166 to i8
  store i8 %2167, i8* %29, align 1
  %2168 = lshr i64 %2150, 63
  %2169 = trunc i64 %2168 to i8
  store i8 %2169, i8* %32, align 1
  %2170 = xor i64 %2168, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2171 = xor i64 %2168, %2149
  %2172 = add nuw nsw i64 %2170, %2171
  %2173 = icmp eq i64 %2172, 2
  %2174 = zext i1 %2173 to i8
  store i8 %2174, i8* %38, align 1
  %2175 = add i64 %2148, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %2176 = add i64 %2144, 29
  store i64 %2176, i64* %3, align 8
  %2177 = inttoptr i64 %2175 to i32*
  %2178 = load i32, i32* %2177, align 4
  %2179 = zext i32 %2178 to i64
  store i64 %2179, i64* %RDI.i55, align 8
  %2180 = add i64 %2144, 32
  store i64 %2180, i64* %3, align 8
  %2181 = load i32, i32* %2066, align 4
  %2182 = zext i32 %2181 to i64
  store i64 %2182, i64* %RSI.i292, align 8
  %2183 = add i64 %2144, -94016
  %2184 = add i64 %2144, 37
  %2185 = load i64, i64* %6, align 8
  %2186 = add i64 %2185, -8
  %2187 = inttoptr i64 %2186 to i64*
  store i64 %2184, i64* %2187, align 8
  store i64 %2186, i64* %6, align 8
  store i64 %2183, i64* %3, align 8
  %call2_44bac0 = tail call %struct.Memory* @sub_434b60.add_owl_defense_threat_move(%struct.State* nonnull %0, i64 %2183, %struct.Memory* %MEMORY.0)
  %2188 = load i64, i64* %3, align 8
  %2189 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %2190 = and i32 %2189, 4
  %2191 = zext i32 %2190 to i64
  store i64 %2191, i64* %RDX.i1736, align 8
  store i8 0, i8* %14, align 1
  %2192 = tail call i32 @llvm.ctpop.i32(i32 %2190)
  %2193 = trunc i32 %2192 to i8
  %2194 = xor i8 %2193, 1
  store i8 %2194, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit129 = lshr exact i32 %2190, 2
  %2195 = trunc i32 %.lobit129 to i8
  %2196 = xor i8 %2195, 1
  store i8 %2196, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2197 = icmp eq i8 %2196, 0
  %.v187 = select i1 %2197, i64 24, i64 19
  %2198 = add i64 %2188, %.v187
  store i64 %2198, i64* %3, align 8
  br i1 %2197, label %block_.L_44badd, label %block_44bad8

block_44bad8:                                     ; preds = %block_44baa0
  %2199 = add i64 %2198, 67
  store i64 %2199, i64* %3, align 8
  br label %block_.L_44bb1b

block_.L_44badd:                                  ; preds = %block_44baa0
  store i64 ptrtoint (%G__0x57eb5f_type* @G__0x57eb5f to i64), i64* %RDI.i55, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %2200 = load i64, i64* %RBP.i, align 8
  %2201 = add i64 %2200, -8
  %2202 = add i64 %2198, 24
  store i64 %2202, i64* %3, align 8
  %2203 = inttoptr i64 %2201 to i32*
  %2204 = load i32, i32* %2203, align 4
  %2205 = sext i32 %2204 to i64
  %2206 = mul nsw i64 %2205, 76
  store i64 %2206, i64* %RCX.i1761, align 8
  %2207 = lshr i64 %2206, 63
  %2208 = add i64 %2206, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2208, i64* %RAX.i1763, align 8
  %2209 = icmp ult i64 %2208, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2210 = icmp ult i64 %2208, %2206
  %2211 = or i1 %2209, %2210
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %14, align 1
  %2213 = trunc i64 %2208 to i32
  %2214 = and i32 %2213, 252
  %2215 = tail call i32 @llvm.ctpop.i32(i32 %2214)
  %2216 = trunc i32 %2215 to i8
  %2217 = and i8 %2216, 1
  %2218 = xor i8 %2217, 1
  store i8 %2218, i8* %21, align 1
  %2219 = xor i64 %2206, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2220 = xor i64 %2219, %2208
  %2221 = lshr i64 %2220, 4
  %2222 = trunc i64 %2221 to i8
  %2223 = and i8 %2222, 1
  store i8 %2223, i8* %26, align 1
  %2224 = icmp eq i64 %2208, 0
  %2225 = zext i1 %2224 to i8
  store i8 %2225, i8* %29, align 1
  %2226 = lshr i64 %2208, 63
  %2227 = trunc i64 %2226 to i8
  store i8 %2227, i8* %32, align 1
  %2228 = xor i64 %2226, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2229 = xor i64 %2226, %2207
  %2230 = add nuw nsw i64 %2228, %2229
  %2231 = icmp eq i64 %2230, 2
  %2232 = zext i1 %2231 to i8
  store i8 %2232, i8* %38, align 1
  %2233 = add i64 %2206, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %2234 = add i64 %2198, 34
  store i64 %2234, i64* %3, align 8
  %2235 = inttoptr i64 %2233 to i32*
  %2236 = load i32, i32* %2235, align 4
  %2237 = zext i32 %2236 to i64
  store i64 %2237, i64* %RSI.i292, align 8
  %2238 = add i64 %2198, 37
  store i64 %2238, i64* %3, align 8
  %2239 = load i32, i32* %2203, align 4
  %2240 = zext i32 %2239 to i64
  store i64 %2240, i64* %RDX.i1736, align 8
  %2241 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %2242 = add i32 %2241, 1
  %2243 = zext i32 %2242 to i64
  store i64 %2243, i64* %51, align 8
  %2244 = icmp eq i32 %2241, -1
  %2245 = icmp eq i32 %2242, 0
  %2246 = or i1 %2244, %2245
  %2247 = zext i1 %2246 to i8
  store i8 %2247, i8* %14, align 1
  %2248 = and i32 %2242, 255
  %2249 = tail call i32 @llvm.ctpop.i32(i32 %2248)
  %2250 = trunc i32 %2249 to i8
  %2251 = and i8 %2250, 1
  %2252 = xor i8 %2251, 1
  store i8 %2252, i8* %21, align 1
  %2253 = xor i32 %2242, %2241
  %2254 = lshr i32 %2253, 4
  %2255 = trunc i32 %2254 to i8
  %2256 = and i8 %2255, 1
  store i8 %2256, i8* %26, align 1
  %2257 = zext i1 %2245 to i8
  store i8 %2257, i8* %29, align 1
  %2258 = lshr i32 %2242, 31
  %2259 = trunc i32 %2258 to i8
  store i8 %2259, i8* %32, align 1
  %2260 = lshr i32 %2241, 31
  %2261 = xor i32 %2258, %2260
  %2262 = add nuw nsw i32 %2261, %2258
  %2263 = icmp eq i32 %2262, 2
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %38, align 1
  store i64 %2243, i64* %RCX.i1761, align 8
  store i8 0, i8* %AL.i, align 1
  %2265 = add i64 %2198, 25299
  %2266 = add i64 %2198, 59
  %2267 = load i64, i64* %6, align 8
  %2268 = add i64 %2267, -8
  %2269 = inttoptr i64 %2268 to i64*
  store i64 %2266, i64* %2269, align 8
  store i64 %2268, i64* %6, align 8
  store i64 %2265, i64* %3, align 8
  %call2_44bb13 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2265, %struct.Memory* %MEMORY.0)
  %2270 = load i64, i64* %RBP.i, align 8
  %2271 = add i64 %2270, -60
  %2272 = load i32, i32* %EAX.i, align 4
  %2273 = load i64, i64* %3, align 8
  %2274 = add i64 %2273, 3
  store i64 %2274, i64* %3, align 8
  %2275 = inttoptr i64 %2271 to i32*
  store i32 %2272, i32* %2275, align 4
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_44bb1b

block_.L_44bb1b:                                  ; preds = %block_.L_44badd, %block_44bad8
  %2276 = phi i64 [ %.pre107, %block_.L_44badd ], [ %2199, %block_44bad8 ]
  %2277 = add i64 %2276, 5
  store i64 %2277, i64* %3, align 8
  %.pre108 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44bb20

block_.L_44bb20:                                  ; preds = %block_44ba6c, %block_.L_44bb1b, %block_44ba81
  %2278 = phi i64 [ %2277, %block_.L_44bb1b ], [ %2144, %block_44ba81 ], [ %2100, %block_44ba6c ]
  %2279 = phi i64 [ %.pre108, %block_.L_44bb1b ], [ %2063, %block_44ba81 ], [ %2063, %block_44ba6c ]
  %2280 = add i64 %2279, -8
  %2281 = add i64 %2278, 4
  store i64 %2281, i64* %3, align 8
  %2282 = inttoptr i64 %2280 to i32*
  %2283 = load i32, i32* %2282, align 4
  %2284 = sext i32 %2283 to i64
  store i64 %2284, i64* %RAX.i1763, align 8
  %2285 = add nsw i64 %2284, 12099168
  %2286 = add i64 %2278, 12
  store i64 %2286, i64* %3, align 8
  %2287 = inttoptr i64 %2285 to i8*
  %2288 = load i8, i8* %2287, align 1
  %2289 = zext i8 %2288 to i64
  store i64 %2289, i64* %RCX.i1761, align 8
  %2290 = zext i8 %2288 to i32
  %2291 = add i64 %2279, -4
  %2292 = add i64 %2278, 15
  store i64 %2292, i64* %3, align 8
  %2293 = inttoptr i64 %2291 to i32*
  %2294 = load i32, i32* %2293, align 4
  %2295 = sub i32 %2290, %2294
  %2296 = icmp ult i32 %2290, %2294
  %2297 = zext i1 %2296 to i8
  store i8 %2297, i8* %14, align 1
  %2298 = and i32 %2295, 255
  %2299 = tail call i32 @llvm.ctpop.i32(i32 %2298)
  %2300 = trunc i32 %2299 to i8
  %2301 = and i8 %2300, 1
  %2302 = xor i8 %2301, 1
  store i8 %2302, i8* %21, align 1
  %2303 = xor i32 %2294, %2290
  %2304 = xor i32 %2303, %2295
  %2305 = lshr i32 %2304, 4
  %2306 = trunc i32 %2305 to i8
  %2307 = and i8 %2306, 1
  store i8 %2307, i8* %26, align 1
  %2308 = icmp eq i32 %2295, 0
  %2309 = zext i1 %2308 to i8
  store i8 %2309, i8* %29, align 1
  %2310 = lshr i32 %2295, 31
  %2311 = trunc i32 %2310 to i8
  store i8 %2311, i8* %32, align 1
  %2312 = lshr i32 %2294, 31
  %2313 = add nuw nsw i32 %2310, %2312
  %2314 = icmp eq i32 %2313, 2
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %38, align 1
  %.v178 = select i1 %2308, i64 21, i64 221
  %2316 = add i64 %2278, %.v178
  store i64 %2316, i64* %3, align 8
  br i1 %2308, label %block_44bb35, label %block_.L_44bbfd

block_44bb35:                                     ; preds = %block_.L_44bb20
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %2317 = add i64 %2316, 14
  store i64 %2317, i64* %3, align 8
  %2318 = load i32, i32* %2282, align 4
  %2319 = sext i32 %2318 to i64
  %2320 = mul nsw i64 %2319, 76
  store i64 %2320, i64* %RCX.i1761, align 8
  %2321 = lshr i64 %2320, 63
  %2322 = add i64 %2320, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2322, i64* %RAX.i1763, align 8
  %2323 = icmp ult i64 %2322, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2324 = icmp ult i64 %2322, %2320
  %2325 = or i1 %2323, %2324
  %2326 = zext i1 %2325 to i8
  store i8 %2326, i8* %14, align 1
  %2327 = trunc i64 %2322 to i32
  %2328 = and i32 %2327, 252
  %2329 = tail call i32 @llvm.ctpop.i32(i32 %2328)
  %2330 = trunc i32 %2329 to i8
  %2331 = and i8 %2330, 1
  %2332 = xor i8 %2331, 1
  store i8 %2332, i8* %21, align 1
  %2333 = xor i64 %2320, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2334 = xor i64 %2333, %2322
  %2335 = lshr i64 %2334, 4
  %2336 = trunc i64 %2335 to i8
  %2337 = and i8 %2336, 1
  store i8 %2337, i8* %26, align 1
  %2338 = icmp eq i64 %2322, 0
  %2339 = zext i1 %2338 to i8
  store i8 %2339, i8* %29, align 1
  %2340 = lshr i64 %2322, 63
  %2341 = trunc i64 %2340 to i8
  store i8 %2341, i8* %32, align 1
  %2342 = xor i64 %2340, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2343 = xor i64 %2340, %2321
  %2344 = add nuw nsw i64 %2342, %2343
  %2345 = icmp eq i64 %2344, 2
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %38, align 1
  %2347 = add i64 %2320, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 60)
  %2348 = add i64 %2316, 25
  store i64 %2348, i64* %3, align 8
  %2349 = inttoptr i64 %2347 to i32*
  %2350 = load i32, i32* %2349, align 4
  store i8 0, i8* %14, align 1
  %2351 = and i32 %2350, 255
  %2352 = tail call i32 @llvm.ctpop.i32(i32 %2351)
  %2353 = trunc i32 %2352 to i8
  %2354 = and i8 %2353, 1
  %2355 = xor i8 %2354, 1
  store i8 %2355, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2356 = icmp eq i32 %2350, 0
  %2357 = zext i1 %2356 to i8
  store i8 %2357, i8* %29, align 1
  %2358 = lshr i32 %2350, 31
  %2359 = trunc i32 %2358 to i8
  store i8 %2359, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v183 = select i1 %2356, i64 200, i64 31
  %2360 = add i64 %2316, %.v183
  store i64 %2360, i64* %3, align 8
  br i1 %2356, label %block_.L_44bbfd, label %block_44bb54

block_44bb54:                                     ; preds = %block_44bb35
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %2361 = add i64 %2360, 14
  store i64 %2361, i64* %3, align 8
  %2362 = load i32, i32* %2282, align 4
  %2363 = sext i32 %2362 to i64
  %2364 = mul nsw i64 %2363, 76
  store i64 %2364, i64* %RCX.i1761, align 8
  %2365 = lshr i64 %2364, 63
  %2366 = add i64 %2364, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2366, i64* %RAX.i1763, align 8
  %2367 = icmp ult i64 %2366, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2368 = icmp ult i64 %2366, %2364
  %2369 = or i1 %2367, %2368
  %2370 = zext i1 %2369 to i8
  store i8 %2370, i8* %14, align 1
  %2371 = trunc i64 %2366 to i32
  %2372 = and i32 %2371, 252
  %2373 = tail call i32 @llvm.ctpop.i32(i32 %2372)
  %2374 = trunc i32 %2373 to i8
  %2375 = and i8 %2374, 1
  %2376 = xor i8 %2375, 1
  store i8 %2376, i8* %21, align 1
  %2377 = xor i64 %2364, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2378 = xor i64 %2377, %2366
  %2379 = lshr i64 %2378, 4
  %2380 = trunc i64 %2379 to i8
  %2381 = and i8 %2380, 1
  store i8 %2381, i8* %26, align 1
  %2382 = icmp eq i64 %2366, 0
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %29, align 1
  %2384 = lshr i64 %2366, 63
  %2385 = trunc i64 %2384 to i8
  store i8 %2385, i8* %32, align 1
  %2386 = xor i64 %2384, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2387 = xor i64 %2384, %2365
  %2388 = add nuw nsw i64 %2386, %2387
  %2389 = icmp eq i64 %2388, 2
  %2390 = zext i1 %2389 to i8
  store i8 %2390, i8* %38, align 1
  %2391 = add i64 %2364, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 60)
  %2392 = add i64 %2360, 24
  store i64 %2392, i64* %3, align 8
  %2393 = inttoptr i64 %2391 to i32*
  %2394 = load i32, i32* %2393, align 4
  %2395 = zext i32 %2394 to i64
  store i64 %2395, i64* %RDI.i55, align 8
  %2396 = add i64 %2360, 27
  store i64 %2396, i64* %3, align 8
  %2397 = load i32, i32* %2293, align 4
  %2398 = zext i32 %2397 to i64
  store i64 %2398, i64* %RSI.i292, align 8
  %2399 = add i64 %2360, -249988
  %2400 = add i64 %2360, 32
  %2401 = load i64, i64* %6, align 8
  %2402 = add i64 %2401, -8
  %2403 = inttoptr i64 %2402 to i64*
  store i64 %2400, i64* %2403, align 8
  store i64 %2402, i64* %6, align 8
  store i64 %2399, i64* %3, align 8
  %call2_44bb6f = tail call %struct.Memory* @sub_40ead0.is_legal(%struct.State* nonnull %0, i64 %2399, %struct.Memory* %MEMORY.0)
  %2404 = load i32, i32* %EAX.i, align 4
  %2405 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2406 = and i32 %2404, 255
  %2407 = tail call i32 @llvm.ctpop.i32(i32 %2406)
  %2408 = trunc i32 %2407 to i8
  %2409 = and i8 %2408, 1
  %2410 = xor i8 %2409, 1
  store i8 %2410, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2411 = icmp eq i32 %2404, 0
  %2412 = zext i1 %2411 to i8
  store i8 %2412, i8* %29, align 1
  %2413 = lshr i32 %2404, 31
  %2414 = trunc i32 %2413 to i8
  store i8 %2414, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v184 = select i1 %2411, i64 137, i64 9
  %2415 = add i64 %2405, %.v184
  store i64 %2415, i64* %3, align 8
  br i1 %2411, label %block_.L_44bbfd, label %block_44bb7d

block_44bb7d:                                     ; preds = %block_44bb54
  store i64 5, i64* %RDX.i1736, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %2416 = load i64, i64* %RBP.i, align 8
  %2417 = add i64 %2416, -8
  %2418 = add i64 %2415, 19
  store i64 %2418, i64* %3, align 8
  %2419 = inttoptr i64 %2417 to i32*
  %2420 = load i32, i32* %2419, align 4
  %2421 = sext i32 %2420 to i64
  %2422 = mul nsw i64 %2421, 76
  store i64 %2422, i64* %RCX.i1761, align 8
  %2423 = lshr i64 %2422, 63
  %2424 = add i64 %2422, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2424, i64* %RAX.i1763, align 8
  %2425 = icmp ult i64 %2424, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2426 = icmp ult i64 %2424, %2422
  %2427 = or i1 %2425, %2426
  %2428 = zext i1 %2427 to i8
  store i8 %2428, i8* %14, align 1
  %2429 = trunc i64 %2424 to i32
  %2430 = and i32 %2429, 252
  %2431 = tail call i32 @llvm.ctpop.i32(i32 %2430)
  %2432 = trunc i32 %2431 to i8
  %2433 = and i8 %2432, 1
  %2434 = xor i8 %2433, 1
  store i8 %2434, i8* %21, align 1
  %2435 = xor i64 %2422, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2436 = xor i64 %2435, %2424
  %2437 = lshr i64 %2436, 4
  %2438 = trunc i64 %2437 to i8
  %2439 = and i8 %2438, 1
  store i8 %2439, i8* %26, align 1
  %2440 = icmp eq i64 %2424, 0
  %2441 = zext i1 %2440 to i8
  store i8 %2441, i8* %29, align 1
  %2442 = lshr i64 %2424, 63
  %2443 = trunc i64 %2442 to i8
  store i8 %2443, i8* %32, align 1
  %2444 = xor i64 %2442, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2445 = xor i64 %2442, %2423
  %2446 = add nuw nsw i64 %2444, %2445
  %2447 = icmp eq i64 %2446, 2
  %2448 = zext i1 %2447 to i8
  store i8 %2448, i8* %38, align 1
  %2449 = add i64 %2422, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 60)
  %2450 = add i64 %2415, 29
  store i64 %2450, i64* %3, align 8
  %2451 = inttoptr i64 %2449 to i32*
  %2452 = load i32, i32* %2451, align 4
  %2453 = zext i32 %2452 to i64
  store i64 %2453, i64* %RDI.i55, align 8
  %2454 = add i64 %2415, 32
  store i64 %2454, i64* %3, align 8
  %2455 = load i32, i32* %2419, align 4
  %2456 = zext i32 %2455 to i64
  store i64 %2456, i64* %RSI.i292, align 8
  %2457 = add i64 %2415, -94237
  %2458 = add i64 %2415, 37
  %2459 = load i64, i64* %6, align 8
  %2460 = add i64 %2459, -8
  %2461 = inttoptr i64 %2460 to i64*
  store i64 %2458, i64* %2461, align 8
  store i64 %2460, i64* %6, align 8
  store i64 %2457, i64* %3, align 8
  %call2_44bb9d = tail call %struct.Memory* @sub_434b60.add_owl_defense_threat_move(%struct.State* nonnull %0, i64 %2457, %struct.Memory* %call2_44bb6f)
  %2462 = load i64, i64* %3, align 8
  %2463 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %2464 = and i32 %2463, 4
  %2465 = zext i32 %2464 to i64
  store i64 %2465, i64* %RDX.i1736, align 8
  store i8 0, i8* %14, align 1
  %2466 = tail call i32 @llvm.ctpop.i32(i32 %2464)
  %2467 = trunc i32 %2466 to i8
  %2468 = xor i8 %2467, 1
  store i8 %2468, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit130 = lshr exact i32 %2464, 2
  %2469 = trunc i32 %.lobit130 to i8
  %2470 = xor i8 %2469, 1
  store i8 %2470, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2471 = icmp eq i8 %2470, 0
  %.v185 = select i1 %2471, i64 24, i64 19
  %2472 = add i64 %2462, %.v185
  store i64 %2472, i64* %3, align 8
  br i1 %2471, label %block_.L_44bbba, label %block_44bbb5

block_44bbb5:                                     ; preds = %block_44bb7d
  %2473 = add i64 %2472, 67
  store i64 %2473, i64* %3, align 8
  br label %block_.L_44bbf8

block_.L_44bbba:                                  ; preds = %block_44bb7d
  store i64 ptrtoint (%G__0x57eb5f_type* @G__0x57eb5f to i64), i64* %RDI.i55, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %2474 = load i64, i64* %RBP.i, align 8
  %2475 = add i64 %2474, -8
  %2476 = add i64 %2472, 24
  store i64 %2476, i64* %3, align 8
  %2477 = inttoptr i64 %2475 to i32*
  %2478 = load i32, i32* %2477, align 4
  %2479 = sext i32 %2478 to i64
  %2480 = mul nsw i64 %2479, 76
  store i64 %2480, i64* %RCX.i1761, align 8
  %2481 = lshr i64 %2480, 63
  %2482 = add i64 %2480, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2482, i64* %RAX.i1763, align 8
  %2483 = icmp ult i64 %2482, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2484 = icmp ult i64 %2482, %2480
  %2485 = or i1 %2483, %2484
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %14, align 1
  %2487 = trunc i64 %2482 to i32
  %2488 = and i32 %2487, 252
  %2489 = tail call i32 @llvm.ctpop.i32(i32 %2488)
  %2490 = trunc i32 %2489 to i8
  %2491 = and i8 %2490, 1
  %2492 = xor i8 %2491, 1
  store i8 %2492, i8* %21, align 1
  %2493 = xor i64 %2480, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2494 = xor i64 %2493, %2482
  %2495 = lshr i64 %2494, 4
  %2496 = trunc i64 %2495 to i8
  %2497 = and i8 %2496, 1
  store i8 %2497, i8* %26, align 1
  %2498 = icmp eq i64 %2482, 0
  %2499 = zext i1 %2498 to i8
  store i8 %2499, i8* %29, align 1
  %2500 = lshr i64 %2482, 63
  %2501 = trunc i64 %2500 to i8
  store i8 %2501, i8* %32, align 1
  %2502 = xor i64 %2500, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2503 = xor i64 %2500, %2481
  %2504 = add nuw nsw i64 %2502, %2503
  %2505 = icmp eq i64 %2504, 2
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %38, align 1
  %2507 = add i64 %2480, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 60)
  %2508 = add i64 %2472, 34
  store i64 %2508, i64* %3, align 8
  %2509 = inttoptr i64 %2507 to i32*
  %2510 = load i32, i32* %2509, align 4
  %2511 = zext i32 %2510 to i64
  store i64 %2511, i64* %RSI.i292, align 8
  %2512 = add i64 %2472, 37
  store i64 %2512, i64* %3, align 8
  %2513 = load i32, i32* %2477, align 4
  %2514 = zext i32 %2513 to i64
  store i64 %2514, i64* %RDX.i1736, align 8
  %2515 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %2516 = add i32 %2515, 1
  %2517 = zext i32 %2516 to i64
  store i64 %2517, i64* %51, align 8
  %2518 = icmp eq i32 %2515, -1
  %2519 = icmp eq i32 %2516, 0
  %2520 = or i1 %2518, %2519
  %2521 = zext i1 %2520 to i8
  store i8 %2521, i8* %14, align 1
  %2522 = and i32 %2516, 255
  %2523 = tail call i32 @llvm.ctpop.i32(i32 %2522)
  %2524 = trunc i32 %2523 to i8
  %2525 = and i8 %2524, 1
  %2526 = xor i8 %2525, 1
  store i8 %2526, i8* %21, align 1
  %2527 = xor i32 %2516, %2515
  %2528 = lshr i32 %2527, 4
  %2529 = trunc i32 %2528 to i8
  %2530 = and i8 %2529, 1
  store i8 %2530, i8* %26, align 1
  %2531 = zext i1 %2519 to i8
  store i8 %2531, i8* %29, align 1
  %2532 = lshr i32 %2516, 31
  %2533 = trunc i32 %2532 to i8
  store i8 %2533, i8* %32, align 1
  %2534 = lshr i32 %2515, 31
  %2535 = xor i32 %2532, %2534
  %2536 = add nuw nsw i32 %2535, %2532
  %2537 = icmp eq i32 %2536, 2
  %2538 = zext i1 %2537 to i8
  store i8 %2538, i8* %38, align 1
  store i64 %2517, i64* %RCX.i1761, align 8
  store i8 0, i8* %AL.i, align 1
  %2539 = add i64 %2472, 25078
  %2540 = add i64 %2472, 59
  %2541 = load i64, i64* %6, align 8
  %2542 = add i64 %2541, -8
  %2543 = inttoptr i64 %2542 to i64*
  store i64 %2540, i64* %2543, align 8
  store i64 %2542, i64* %6, align 8
  store i64 %2539, i64* %3, align 8
  %call2_44bbf0 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2539, %struct.Memory* %call2_44bb9d)
  %2544 = load i64, i64* %RBP.i, align 8
  %2545 = add i64 %2544, -64
  %2546 = load i32, i32* %EAX.i, align 4
  %2547 = load i64, i64* %3, align 8
  %2548 = add i64 %2547, 3
  store i64 %2548, i64* %3, align 8
  %2549 = inttoptr i64 %2545 to i32*
  store i32 %2546, i32* %2549, align 4
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_44bbf8

block_.L_44bbf8:                                  ; preds = %block_.L_44bbba, %block_44bbb5
  %2550 = phi i64 [ %.pre109, %block_.L_44bbba ], [ %2473, %block_44bbb5 ]
  %MEMORY.21 = phi %struct.Memory* [ %call2_44bbf0, %block_.L_44bbba ], [ %call2_44bb9d, %block_44bbb5 ]
  %2551 = add i64 %2550, 5
  store i64 %2551, i64* %3, align 8
  br label %block_.L_44bbfd

block_.L_44bbfd:                                  ; preds = %block_.L_44bb20, %block_.L_44bbf8, %block_44bb54, %block_44bb35
  %2552 = phi i64 [ %2316, %block_.L_44bb20 ], [ %2360, %block_44bb35 ], [ %2415, %block_44bb54 ], [ %2551, %block_.L_44bbf8 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.0, %block_.L_44bb20 ], [ %MEMORY.0, %block_44bb35 ], [ %call2_44bb6f, %block_44bb54 ], [ %MEMORY.21, %block_.L_44bbf8 ]
  store i64 3, i64* %RAX.i1763, align 8
  %2553 = load i64, i64* %RBP.i, align 8
  %2554 = add i64 %2553, -8
  %2555 = add i64 %2552, 9
  store i64 %2555, i64* %3, align 8
  %2556 = inttoptr i64 %2554 to i32*
  %2557 = load i32, i32* %2556, align 4
  %2558 = sext i32 %2557 to i64
  store i64 %2558, i64* %RCX.i1761, align 8
  %2559 = add nsw i64 %2558, 12099168
  %2560 = add i64 %2552, 17
  store i64 %2560, i64* %3, align 8
  %2561 = inttoptr i64 %2559 to i8*
  %2562 = load i8, i8* %2561, align 1
  %2563 = zext i8 %2562 to i64
  store i64 %2563, i64* %RDX.i1736, align 8
  %2564 = add i64 %2553, -4
  %2565 = add i64 %2552, 20
  store i64 %2565, i64* %3, align 8
  %2566 = inttoptr i64 %2564 to i32*
  %2567 = load i32, i32* %2566, align 4
  %2568 = sub i32 3, %2567
  %2569 = zext i32 %2568 to i64
  store i64 %2569, i64* %RAX.i1763, align 8
  %2570 = lshr i32 %2568, 31
  %2571 = zext i8 %2562 to i32
  %2572 = sub i32 %2571, %2568
  %2573 = icmp ult i32 %2571, %2568
  %2574 = zext i1 %2573 to i8
  store i8 %2574, i8* %14, align 1
  %2575 = and i32 %2572, 255
  %2576 = tail call i32 @llvm.ctpop.i32(i32 %2575)
  %2577 = trunc i32 %2576 to i8
  %2578 = and i8 %2577, 1
  %2579 = xor i8 %2578, 1
  store i8 %2579, i8* %21, align 1
  %2580 = xor i32 %2568, %2571
  %2581 = xor i32 %2580, %2572
  %2582 = lshr i32 %2581, 4
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  store i8 %2584, i8* %26, align 1
  %2585 = icmp eq i32 %2572, 0
  %2586 = zext i1 %2585 to i8
  store i8 %2586, i8* %29, align 1
  %2587 = lshr i32 %2572, 31
  %2588 = trunc i32 %2587 to i8
  store i8 %2588, i8* %32, align 1
  %2589 = add nuw nsw i32 %2587, %2570
  %2590 = icmp eq i32 %2589, 2
  %2591 = zext i1 %2590 to i8
  store i8 %2591, i8* %38, align 1
  %.v179 = select i1 %2585, i64 28, i64 213
  %2592 = add i64 %2552, %.v179
  store i64 %2592, i64* %3, align 8
  br i1 %2585, label %block_44bc19, label %block_.L_44bcd2

block_44bc19:                                     ; preds = %block_.L_44bbfd
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %2593 = add i64 %2592, 14
  store i64 %2593, i64* %3, align 8
  %2594 = load i32, i32* %2556, align 4
  %2595 = sext i32 %2594 to i64
  %2596 = mul nsw i64 %2595, 76
  store i64 %2596, i64* %RCX.i1761, align 8
  %2597 = lshr i64 %2596, 63
  %2598 = add i64 %2596, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2598, i64* %RAX.i1763, align 8
  %2599 = icmp ult i64 %2598, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2600 = icmp ult i64 %2598, %2596
  %2601 = or i1 %2599, %2600
  %2602 = zext i1 %2601 to i8
  store i8 %2602, i8* %14, align 1
  %2603 = trunc i64 %2598 to i32
  %2604 = and i32 %2603, 252
  %2605 = tail call i32 @llvm.ctpop.i32(i32 %2604)
  %2606 = trunc i32 %2605 to i8
  %2607 = and i8 %2606, 1
  %2608 = xor i8 %2607, 1
  store i8 %2608, i8* %21, align 1
  %2609 = xor i64 %2596, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2610 = xor i64 %2609, %2598
  %2611 = lshr i64 %2610, 4
  %2612 = trunc i64 %2611 to i8
  %2613 = and i8 %2612, 1
  store i8 %2613, i8* %26, align 1
  %2614 = icmp eq i64 %2598, 0
  %2615 = zext i1 %2614 to i8
  store i8 %2615, i8* %29, align 1
  %2616 = lshr i64 %2598, 63
  %2617 = trunc i64 %2616 to i8
  store i8 %2617, i8* %32, align 1
  %2618 = xor i64 %2616, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2619 = xor i64 %2616, %2597
  %2620 = add nuw nsw i64 %2618, %2619
  %2621 = icmp eq i64 %2620, 2
  %2622 = zext i1 %2621 to i8
  store i8 %2622, i8* %38, align 1
  %2623 = add i64 %2596, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 24)
  %2624 = add i64 %2592, 25
  store i64 %2624, i64* %3, align 8
  %2625 = inttoptr i64 %2623 to i32*
  %2626 = load i32, i32* %2625, align 4
  %2627 = add i32 %2626, -12
  %2628 = icmp ult i32 %2626, 12
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %14, align 1
  %2630 = and i32 %2627, 255
  %2631 = tail call i32 @llvm.ctpop.i32(i32 %2630)
  %2632 = trunc i32 %2631 to i8
  %2633 = and i8 %2632, 1
  %2634 = xor i8 %2633, 1
  store i8 %2634, i8* %21, align 1
  %2635 = xor i32 %2627, %2626
  %2636 = lshr i32 %2635, 4
  %2637 = trunc i32 %2636 to i8
  %2638 = and i8 %2637, 1
  store i8 %2638, i8* %26, align 1
  %2639 = icmp eq i32 %2627, 0
  %2640 = zext i1 %2639 to i8
  store i8 %2640, i8* %29, align 1
  %2641 = lshr i32 %2627, 31
  %2642 = trunc i32 %2641 to i8
  store i8 %2642, i8* %32, align 1
  %2643 = lshr i32 %2626, 31
  %2644 = xor i32 %2641, %2643
  %2645 = add nuw nsw i32 %2644, %2643
  %2646 = icmp eq i32 %2645, 2
  %2647 = zext i1 %2646 to i8
  store i8 %2647, i8* %38, align 1
  %.v180 = select i1 %2639, i64 31, i64 185
  %2648 = add i64 %2592, %.v180
  store i64 %2648, i64* %3, align 8
  br i1 %2639, label %block_44bc38, label %block_.L_44bcd2

block_44bc38:                                     ; preds = %block_44bc19
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %2649 = load i64, i64* %RBP.i, align 8
  %2650 = add i64 %2649, -8
  %2651 = add i64 %2648, 14
  store i64 %2651, i64* %3, align 8
  %2652 = inttoptr i64 %2650 to i32*
  %2653 = load i32, i32* %2652, align 4
  %2654 = sext i32 %2653 to i64
  %2655 = mul nsw i64 %2654, 76
  store i64 %2655, i64* %RCX.i1761, align 8
  %2656 = lshr i64 %2655, 63
  %2657 = add i64 %2655, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2657, i64* %RAX.i1763, align 8
  %2658 = icmp ult i64 %2657, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2659 = icmp ult i64 %2657, %2655
  %2660 = or i1 %2658, %2659
  %2661 = zext i1 %2660 to i8
  store i8 %2661, i8* %14, align 1
  %2662 = trunc i64 %2657 to i32
  %2663 = and i32 %2662, 252
  %2664 = tail call i32 @llvm.ctpop.i32(i32 %2663)
  %2665 = trunc i32 %2664 to i8
  %2666 = and i8 %2665, 1
  %2667 = xor i8 %2666, 1
  store i8 %2667, i8* %21, align 1
  %2668 = xor i64 %2655, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2669 = xor i64 %2668, %2657
  %2670 = lshr i64 %2669, 4
  %2671 = trunc i64 %2670 to i8
  %2672 = and i8 %2671, 1
  store i8 %2672, i8* %26, align 1
  %2673 = icmp eq i64 %2657, 0
  %2674 = zext i1 %2673 to i8
  store i8 %2674, i8* %29, align 1
  %2675 = lshr i64 %2657, 63
  %2676 = trunc i64 %2675 to i8
  store i8 %2676, i8* %32, align 1
  %2677 = xor i64 %2675, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2678 = xor i64 %2675, %2656
  %2679 = add nuw nsw i64 %2677, %2678
  %2680 = icmp eq i64 %2679, 2
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %38, align 1
  %2682 = add i64 %2655, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %2683 = add i64 %2648, 25
  store i64 %2683, i64* %3, align 8
  %2684 = inttoptr i64 %2682 to i32*
  %2685 = load i32, i32* %2684, align 4
  store i8 0, i8* %14, align 1
  %2686 = and i32 %2685, 255
  %2687 = tail call i32 @llvm.ctpop.i32(i32 %2686)
  %2688 = trunc i32 %2687 to i8
  %2689 = and i8 %2688, 1
  %2690 = xor i8 %2689, 1
  store i8 %2690, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2691 = icmp eq i32 %2685, 0
  %2692 = zext i1 %2691 to i8
  store i8 %2692, i8* %29, align 1
  %2693 = lshr i32 %2685, 31
  %2694 = trunc i32 %2693 to i8
  store i8 %2694, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v181 = select i1 %2691, i64 154, i64 31
  %2695 = add i64 %2648, %.v181
  store i64 %2695, i64* %3, align 8
  br i1 %2691, label %block_.L_44bcd2, label %block_44bc57

block_44bc57:                                     ; preds = %block_44bc38
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %2696 = add i64 %2695, 14
  store i64 %2696, i64* %3, align 8
  %2697 = load i32, i32* %2652, align 4
  %2698 = sext i32 %2697 to i64
  %2699 = mul nsw i64 %2698, 76
  store i64 %2699, i64* %RCX.i1761, align 8
  %2700 = lshr i64 %2699, 63
  %2701 = add i64 %2699, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2701, i64* %RAX.i1763, align 8
  %2702 = icmp ult i64 %2701, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2703 = icmp ult i64 %2701, %2699
  %2704 = or i1 %2702, %2703
  %2705 = zext i1 %2704 to i8
  store i8 %2705, i8* %14, align 1
  %2706 = trunc i64 %2701 to i32
  %2707 = and i32 %2706, 252
  %2708 = tail call i32 @llvm.ctpop.i32(i32 %2707)
  %2709 = trunc i32 %2708 to i8
  %2710 = and i8 %2709, 1
  %2711 = xor i8 %2710, 1
  store i8 %2711, i8* %21, align 1
  %2712 = xor i64 %2699, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2713 = xor i64 %2712, %2701
  %2714 = lshr i64 %2713, 4
  %2715 = trunc i64 %2714 to i8
  %2716 = and i8 %2715, 1
  store i8 %2716, i8* %26, align 1
  %2717 = icmp eq i64 %2701, 0
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %29, align 1
  %2719 = lshr i64 %2701, 63
  %2720 = trunc i64 %2719 to i8
  store i8 %2720, i8* %32, align 1
  %2721 = xor i64 %2719, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2722 = xor i64 %2719, %2700
  %2723 = add nuw nsw i64 %2721, %2722
  %2724 = icmp eq i64 %2723, 2
  %2725 = zext i1 %2724 to i8
  store i8 %2725, i8* %38, align 1
  %2726 = add i64 %2699, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %2727 = add i64 %2695, 24
  store i64 %2727, i64* %3, align 8
  %2728 = inttoptr i64 %2726 to i32*
  %2729 = load i32, i32* %2728, align 4
  %2730 = zext i32 %2729 to i64
  store i64 %2730, i64* %RDI.i55, align 8
  %2731 = add i64 %2695, 27
  store i64 %2731, i64* %3, align 8
  %2732 = load i32, i32* %2652, align 4
  %2733 = zext i32 %2732 to i64
  store i64 %2733, i64* %RSI.i51, align 8
  %2734 = add i64 %2695, -94135
  %2735 = add i64 %2695, 32
  %2736 = load i64, i64* %6, align 8
  %2737 = add i64 %2736, -8
  %2738 = inttoptr i64 %2737 to i64*
  store i64 %2735, i64* %2738, align 8
  store i64 %2737, i64* %6, align 8
  store i64 %2734, i64* %3, align 8
  %call2_44bc72 = tail call %struct.Memory* @sub_434ca0.add_owl_prevent_threat_move(%struct.State* nonnull %0, i64 %2734, %struct.Memory* %MEMORY.22)
  %2739 = load i64, i64* %3, align 8
  %2740 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %2741 = and i32 %2740, 4
  %2742 = zext i32 %2741 to i64
  store i64 %2742, i64* %RSI.i51, align 8
  store i8 0, i8* %14, align 1
  %2743 = tail call i32 @llvm.ctpop.i32(i32 %2741)
  %2744 = trunc i32 %2743 to i8
  %2745 = xor i8 %2744, 1
  store i8 %2745, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit131 = lshr exact i32 %2741, 2
  %2746 = trunc i32 %.lobit131 to i8
  %2747 = xor i8 %2746, 1
  store i8 %2747, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2748 = icmp eq i8 %2747, 0
  %.v182 = select i1 %2748, i64 24, i64 19
  %2749 = add i64 %2739, %.v182
  store i64 %2749, i64* %3, align 8
  br i1 %2748, label %block_.L_44bc8f, label %block_44bc8a

block_44bc8a:                                     ; preds = %block_44bc57
  %2750 = add i64 %2749, 67
  store i64 %2750, i64* %3, align 8
  br label %block_.L_44bccd

block_.L_44bc8f:                                  ; preds = %block_44bc57
  store i64 ptrtoint (%G__0x57eb8c_type* @G__0x57eb8c to i64), i64* %RDI.i55, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %2751 = load i64, i64* %RBP.i, align 8
  %2752 = add i64 %2751, -8
  %2753 = add i64 %2749, 24
  store i64 %2753, i64* %3, align 8
  %2754 = inttoptr i64 %2752 to i32*
  %2755 = load i32, i32* %2754, align 4
  %2756 = sext i32 %2755 to i64
  %2757 = mul nsw i64 %2756, 76
  store i64 %2757, i64* %RCX.i1761, align 8
  %2758 = lshr i64 %2757, 63
  %2759 = add i64 %2757, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2759, i64* %RAX.i1763, align 8
  %2760 = icmp ult i64 %2759, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2761 = icmp ult i64 %2759, %2757
  %2762 = or i1 %2760, %2761
  %2763 = zext i1 %2762 to i8
  store i8 %2763, i8* %14, align 1
  %2764 = trunc i64 %2759 to i32
  %2765 = and i32 %2764, 252
  %2766 = tail call i32 @llvm.ctpop.i32(i32 %2765)
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  %2769 = xor i8 %2768, 1
  store i8 %2769, i8* %21, align 1
  %2770 = xor i64 %2757, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2771 = xor i64 %2770, %2759
  %2772 = lshr i64 %2771, 4
  %2773 = trunc i64 %2772 to i8
  %2774 = and i8 %2773, 1
  store i8 %2774, i8* %26, align 1
  %2775 = icmp eq i64 %2759, 0
  %2776 = zext i1 %2775 to i8
  store i8 %2776, i8* %29, align 1
  %2777 = lshr i64 %2759, 63
  %2778 = trunc i64 %2777 to i8
  store i8 %2778, i8* %32, align 1
  %2779 = xor i64 %2777, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2780 = xor i64 %2777, %2758
  %2781 = add nuw nsw i64 %2779, %2780
  %2782 = icmp eq i64 %2781, 2
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %38, align 1
  %2784 = add i64 %2757, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %2785 = add i64 %2749, 34
  store i64 %2785, i64* %3, align 8
  %2786 = inttoptr i64 %2784 to i32*
  %2787 = load i32, i32* %2786, align 4
  %2788 = zext i32 %2787 to i64
  store i64 %2788, i64* %RSI.i51, align 8
  %2789 = add i64 %2749, 37
  store i64 %2789, i64* %3, align 8
  %2790 = load i32, i32* %2754, align 4
  %2791 = zext i32 %2790 to i64
  store i64 %2791, i64* %RDX.i1736, align 8
  %2792 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %2793 = add i32 %2792, 1
  %2794 = zext i32 %2793 to i64
  store i64 %2794, i64* %51, align 8
  %2795 = icmp eq i32 %2792, -1
  %2796 = icmp eq i32 %2793, 0
  %2797 = or i1 %2795, %2796
  %2798 = zext i1 %2797 to i8
  store i8 %2798, i8* %14, align 1
  %2799 = and i32 %2793, 255
  %2800 = tail call i32 @llvm.ctpop.i32(i32 %2799)
  %2801 = trunc i32 %2800 to i8
  %2802 = and i8 %2801, 1
  %2803 = xor i8 %2802, 1
  store i8 %2803, i8* %21, align 1
  %2804 = xor i32 %2793, %2792
  %2805 = lshr i32 %2804, 4
  %2806 = trunc i32 %2805 to i8
  %2807 = and i8 %2806, 1
  store i8 %2807, i8* %26, align 1
  %2808 = zext i1 %2796 to i8
  store i8 %2808, i8* %29, align 1
  %2809 = lshr i32 %2793, 31
  %2810 = trunc i32 %2809 to i8
  store i8 %2810, i8* %32, align 1
  %2811 = lshr i32 %2792, 31
  %2812 = xor i32 %2809, %2811
  %2813 = add nuw nsw i32 %2812, %2809
  %2814 = icmp eq i32 %2813, 2
  %2815 = zext i1 %2814 to i8
  store i8 %2815, i8* %38, align 1
  store i64 %2794, i64* %RCX.i1761, align 8
  store i8 0, i8* %AL.i, align 1
  %2816 = add i64 %2749, 24865
  %2817 = add i64 %2749, 59
  %2818 = load i64, i64* %6, align 8
  %2819 = add i64 %2818, -8
  %2820 = inttoptr i64 %2819 to i64*
  store i64 %2817, i64* %2820, align 8
  store i64 %2819, i64* %6, align 8
  store i64 %2816, i64* %3, align 8
  %call2_44bcc5 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2816, %struct.Memory* %call2_44bc72)
  %2821 = load i64, i64* %RBP.i, align 8
  %2822 = add i64 %2821, -68
  %2823 = load i32, i32* %EAX.i, align 4
  %2824 = load i64, i64* %3, align 8
  %2825 = add i64 %2824, 3
  store i64 %2825, i64* %3, align 8
  %2826 = inttoptr i64 %2822 to i32*
  store i32 %2823, i32* %2826, align 4
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_44bccd

block_.L_44bccd:                                  ; preds = %block_.L_44bc8f, %block_44bc8a
  %2827 = phi i64 [ %.pre110, %block_.L_44bc8f ], [ %2750, %block_44bc8a ]
  %MEMORY.23 = phi %struct.Memory* [ %call2_44bcc5, %block_.L_44bc8f ], [ %call2_44bc72, %block_44bc8a ]
  %2828 = add i64 %2827, 5
  store i64 %2828, i64* %3, align 8
  br label %block_.L_44bcd2

block_.L_44bcd2:                                  ; preds = %block_44bc19, %block_.L_44bbfd, %block_.L_44bccd, %block_44bc38
  %2829 = phi i64 [ %2592, %block_.L_44bbfd ], [ %2648, %block_44bc19 ], [ %2695, %block_44bc38 ], [ %2828, %block_.L_44bccd ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.22, %block_.L_44bbfd ], [ %MEMORY.22, %block_44bc19 ], [ %MEMORY.22, %block_44bc38 ], [ %MEMORY.23, %block_.L_44bccd ]
  %2830 = add i64 %2829, 1735
  br label %block_.L_44c399

block_.L_44bcd7:                                  ; preds = %block_44ba4d, %block_.L_44ba2e
  %2831 = phi i64 [ %1959, %block_.L_44ba2e ], [ %2063, %block_44ba4d ]
  %2832 = phi i64 [ %2006, %block_.L_44ba2e ], [ %2062, %block_44ba4d ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %2833 = add i64 %2831, -8
  %2834 = add i64 %2832, 14
  store i64 %2834, i64* %3, align 8
  %2835 = inttoptr i64 %2833 to i32*
  %2836 = load i32, i32* %2835, align 4
  %2837 = sext i32 %2836 to i64
  %2838 = mul nsw i64 %2837, 76
  store i64 %2838, i64* %RCX.i1761, align 8
  %2839 = lshr i64 %2838, 63
  %2840 = add i64 %2838, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2840, i64* %RAX.i1763, align 8
  %2841 = icmp ult i64 %2840, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2842 = icmp ult i64 %2840, %2838
  %2843 = or i1 %2841, %2842
  %2844 = zext i1 %2843 to i8
  store i8 %2844, i8* %14, align 1
  %2845 = trunc i64 %2840 to i32
  %2846 = and i32 %2845, 252
  %2847 = tail call i32 @llvm.ctpop.i32(i32 %2846)
  %2848 = trunc i32 %2847 to i8
  %2849 = and i8 %2848, 1
  %2850 = xor i8 %2849, 1
  store i8 %2850, i8* %21, align 1
  %2851 = xor i64 %2838, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2852 = xor i64 %2851, %2840
  %2853 = lshr i64 %2852, 4
  %2854 = trunc i64 %2853 to i8
  %2855 = and i8 %2854, 1
  store i8 %2855, i8* %26, align 1
  %2856 = icmp eq i64 %2840, 0
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %29, align 1
  %2858 = lshr i64 %2840, 63
  %2859 = trunc i64 %2858 to i8
  store i8 %2859, i8* %32, align 1
  %2860 = xor i64 %2858, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2861 = xor i64 %2858, %2839
  %2862 = add nuw nsw i64 %2860, %2861
  %2863 = icmp eq i64 %2862, 2
  %2864 = zext i1 %2863 to i8
  store i8 %2864, i8* %38, align 1
  %2865 = add i64 %2838, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 28)
  %2866 = add i64 %2832, 25
  store i64 %2866, i64* %3, align 8
  %2867 = inttoptr i64 %2865 to i32*
  %2868 = load i32, i32* %2867, align 4
  %2869 = add i32 %2868, -1
  %2870 = icmp eq i32 %2868, 0
  %2871 = zext i1 %2870 to i8
  store i8 %2871, i8* %14, align 1
  %2872 = and i32 %2869, 255
  %2873 = tail call i32 @llvm.ctpop.i32(i32 %2872)
  %2874 = trunc i32 %2873 to i8
  %2875 = and i8 %2874, 1
  %2876 = xor i8 %2875, 1
  store i8 %2876, i8* %21, align 1
  %2877 = xor i32 %2869, %2868
  %2878 = lshr i32 %2877, 4
  %2879 = trunc i32 %2878 to i8
  %2880 = and i8 %2879, 1
  store i8 %2880, i8* %26, align 1
  %2881 = icmp eq i32 %2869, 0
  %2882 = zext i1 %2881 to i8
  store i8 %2882, i8* %29, align 1
  %2883 = lshr i32 %2869, 31
  %2884 = trunc i32 %2883 to i8
  store i8 %2884, i8* %32, align 1
  %2885 = lshr i32 %2868, 31
  %2886 = xor i32 %2883, %2885
  %2887 = add nuw nsw i32 %2886, %2885
  %2888 = icmp eq i32 %2887, 2
  %2889 = zext i1 %2888 to i8
  store i8 %2889, i8* %38, align 1
  %.v144 = select i1 %2881, i64 31, i64 1465
  %2890 = add i64 %2832, %.v144
  store i64 %2890, i64* %3, align 8
  br i1 %2881, label %block_44bcf6, label %block_.L_44c290

block_44bcf6:                                     ; preds = %block_.L_44bcd7
  store i64 3, i64* %RAX.i1763, align 8
  %2891 = load i64, i64* %RBP.i, align 8
  %2892 = add i64 %2891, -8
  %2893 = add i64 %2890, 9
  store i64 %2893, i64* %3, align 8
  %2894 = inttoptr i64 %2892 to i32*
  %2895 = load i32, i32* %2894, align 4
  %2896 = sext i32 %2895 to i64
  store i64 %2896, i64* %RCX.i1761, align 8
  %2897 = add nsw i64 %2896, 12099168
  %2898 = add i64 %2890, 17
  store i64 %2898, i64* %3, align 8
  %2899 = inttoptr i64 %2897 to i8*
  %2900 = load i8, i8* %2899, align 1
  %2901 = zext i8 %2900 to i64
  store i64 %2901, i64* %RDX.i1736, align 8
  %2902 = add i64 %2891, -4
  %2903 = add i64 %2890, 20
  store i64 %2903, i64* %3, align 8
  %2904 = inttoptr i64 %2902 to i32*
  %2905 = load i32, i32* %2904, align 4
  %2906 = sub i32 3, %2905
  %2907 = zext i32 %2906 to i64
  store i64 %2907, i64* %RAX.i1763, align 8
  %2908 = lshr i32 %2906, 31
  %2909 = zext i8 %2900 to i32
  %2910 = sub i32 %2909, %2906
  %2911 = icmp ult i32 %2909, %2906
  %2912 = zext i1 %2911 to i8
  store i8 %2912, i8* %14, align 1
  %2913 = and i32 %2910, 255
  %2914 = tail call i32 @llvm.ctpop.i32(i32 %2913)
  %2915 = trunc i32 %2914 to i8
  %2916 = and i8 %2915, 1
  %2917 = xor i8 %2916, 1
  store i8 %2917, i8* %21, align 1
  %2918 = xor i32 %2906, %2909
  %2919 = xor i32 %2918, %2910
  %2920 = lshr i32 %2919, 4
  %2921 = trunc i32 %2920 to i8
  %2922 = and i8 %2921, 1
  store i8 %2922, i8* %26, align 1
  %2923 = icmp eq i32 %2910, 0
  %2924 = zext i1 %2923 to i8
  store i8 %2924, i8* %29, align 1
  %2925 = lshr i32 %2910, 31
  %2926 = trunc i32 %2925 to i8
  store i8 %2926, i8* %32, align 1
  %2927 = add nuw nsw i32 %2925, %2908
  %2928 = icmp eq i32 %2927, 2
  %2929 = zext i1 %2928 to i8
  store i8 %2929, i8* %38, align 1
  %.v150 = select i1 %2923, i64 28, i64 423
  %2930 = add i64 %2890, %.v150
  store i64 %2930, i64* %3, align 8
  br i1 %2923, label %block_44bd12, label %block_.L_44be9d

block_44bd12:                                     ; preds = %block_44bcf6
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %2931 = add i64 %2930, 14
  store i64 %2931, i64* %3, align 8
  %2932 = load i32, i32* %2894, align 4
  %2933 = sext i32 %2932 to i64
  %2934 = mul nsw i64 %2933, 76
  store i64 %2934, i64* %RCX.i1761, align 8
  %2935 = lshr i64 %2934, 63
  %2936 = add i64 %2934, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2936, i64* %RAX.i1763, align 8
  %2937 = icmp ult i64 %2936, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2938 = icmp ult i64 %2936, %2934
  %2939 = or i1 %2937, %2938
  %2940 = zext i1 %2939 to i8
  store i8 %2940, i8* %14, align 1
  %2941 = trunc i64 %2936 to i32
  %2942 = and i32 %2941, 252
  %2943 = tail call i32 @llvm.ctpop.i32(i32 %2942)
  %2944 = trunc i32 %2943 to i8
  %2945 = and i8 %2944, 1
  %2946 = xor i8 %2945, 1
  store i8 %2946, i8* %21, align 1
  %2947 = xor i64 %2934, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2948 = xor i64 %2947, %2936
  %2949 = lshr i64 %2948, 4
  %2950 = trunc i64 %2949 to i8
  %2951 = and i8 %2950, 1
  store i8 %2951, i8* %26, align 1
  %2952 = icmp eq i64 %2936, 0
  %2953 = zext i1 %2952 to i8
  store i8 %2953, i8* %29, align 1
  %2954 = lshr i64 %2936, 63
  %2955 = trunc i64 %2954 to i8
  store i8 %2955, i8* %32, align 1
  %2956 = xor i64 %2954, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %2957 = xor i64 %2954, %2935
  %2958 = add nuw nsw i64 %2956, %2957
  %2959 = icmp eq i64 %2958, 2
  %2960 = zext i1 %2959 to i8
  store i8 %2960, i8* %38, align 1
  %2961 = add i64 %2934, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 24)
  %2962 = add i64 %2930, 25
  store i64 %2962, i64* %3, align 8
  %2963 = inttoptr i64 %2961 to i32*
  %2964 = load i32, i32* %2963, align 4
  %2965 = add i32 %2964, -11
  %2966 = icmp ult i32 %2964, 11
  %2967 = zext i1 %2966 to i8
  store i8 %2967, i8* %14, align 1
  %2968 = and i32 %2965, 255
  %2969 = tail call i32 @llvm.ctpop.i32(i32 %2968)
  %2970 = trunc i32 %2969 to i8
  %2971 = and i8 %2970, 1
  %2972 = xor i8 %2971, 1
  store i8 %2972, i8* %21, align 1
  %2973 = xor i32 %2965, %2964
  %2974 = lshr i32 %2973, 4
  %2975 = trunc i32 %2974 to i8
  %2976 = and i8 %2975, 1
  store i8 %2976, i8* %26, align 1
  %2977 = icmp eq i32 %2965, 0
  %2978 = zext i1 %2977 to i8
  store i8 %2978, i8* %29, align 1
  %2979 = lshr i32 %2965, 31
  %2980 = trunc i32 %2979 to i8
  store i8 %2980, i8* %32, align 1
  %2981 = lshr i32 %2964, 31
  %2982 = xor i32 %2979, %2981
  %2983 = add nuw nsw i32 %2982, %2981
  %2984 = icmp eq i32 %2983, 2
  %2985 = zext i1 %2984 to i8
  store i8 %2985, i8* %38, align 1
  %.v170 = select i1 %2977, i64 31, i64 395
  %2986 = add i64 %2930, %.v170
  store i64 %2986, i64* %3, align 8
  br i1 %2977, label %block_44bd31, label %block_44bd12.block_.L_44be9d_crit_edge

block_44bd12.block_.L_44be9d_crit_edge:           ; preds = %block_44bd12
  %.pre115 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44be9d

block_44bd31:                                     ; preds = %block_44bd12
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %2987 = load i64, i64* %RBP.i, align 8
  %2988 = add i64 %2987, -8
  %2989 = add i64 %2986, 14
  store i64 %2989, i64* %3, align 8
  %2990 = inttoptr i64 %2988 to i32*
  %2991 = load i32, i32* %2990, align 4
  %2992 = sext i32 %2991 to i64
  %2993 = mul nsw i64 %2992, 76
  store i64 %2993, i64* %RCX.i1761, align 8
  %2994 = lshr i64 %2993, 63
  %2995 = add i64 %2993, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %2995, i64* %RAX.i1763, align 8
  %2996 = icmp ult i64 %2995, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %2997 = icmp ult i64 %2995, %2993
  %2998 = or i1 %2996, %2997
  %2999 = zext i1 %2998 to i8
  store i8 %2999, i8* %14, align 1
  %3000 = trunc i64 %2995 to i32
  %3001 = and i32 %3000, 252
  %3002 = tail call i32 @llvm.ctpop.i32(i32 %3001)
  %3003 = trunc i32 %3002 to i8
  %3004 = and i8 %3003, 1
  %3005 = xor i8 %3004, 1
  store i8 %3005, i8* %21, align 1
  %3006 = xor i64 %2993, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3007 = xor i64 %3006, %2995
  %3008 = lshr i64 %3007, 4
  %3009 = trunc i64 %3008 to i8
  %3010 = and i8 %3009, 1
  store i8 %3010, i8* %26, align 1
  %3011 = icmp eq i64 %2995, 0
  %3012 = zext i1 %3011 to i8
  store i8 %3012, i8* %29, align 1
  %3013 = lshr i64 %2995, 63
  %3014 = trunc i64 %3013 to i8
  store i8 %3014, i8* %32, align 1
  %3015 = xor i64 %3013, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3016 = xor i64 %3013, %2994
  %3017 = add nuw nsw i64 %3015, %3016
  %3018 = icmp eq i64 %3017, 2
  %3019 = zext i1 %3018 to i8
  store i8 %3019, i8* %38, align 1
  %3020 = add i64 %2993, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %3021 = add i64 %2986, 25
  store i64 %3021, i64* %3, align 8
  %3022 = inttoptr i64 %3020 to i32*
  %3023 = load i32, i32* %3022, align 4
  store i8 0, i8* %14, align 1
  %3024 = and i32 %3023, 255
  %3025 = tail call i32 @llvm.ctpop.i32(i32 %3024)
  %3026 = trunc i32 %3025 to i8
  %3027 = and i8 %3026, 1
  %3028 = xor i8 %3027, 1
  store i8 %3028, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3029 = icmp eq i32 %3023, 0
  %3030 = zext i1 %3029 to i8
  store i8 %3030, i8* %29, align 1
  %3031 = lshr i32 %3023, 31
  %3032 = trunc i32 %3031 to i8
  store i8 %3032, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v171 = select i1 %3029, i64 159, i64 31
  %3033 = add i64 %2986, %.v171
  store i64 %3033, i64* %3, align 8
  br i1 %3029, label %block_.L_44bdd0, label %block_44bd50

block_44bd50:                                     ; preds = %block_44bd31
  store i64 5, i64* %RDX.i1736, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %3034 = add i64 %3033, 19
  store i64 %3034, i64* %3, align 8
  %3035 = load i32, i32* %2990, align 4
  %3036 = sext i32 %3035 to i64
  %3037 = mul nsw i64 %3036, 76
  store i64 %3037, i64* %RCX.i1761, align 8
  %3038 = lshr i64 %3037, 63
  %3039 = add i64 %3037, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3039, i64* %RAX.i1763, align 8
  %3040 = icmp ult i64 %3039, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3041 = icmp ult i64 %3039, %3037
  %3042 = or i1 %3040, %3041
  %3043 = zext i1 %3042 to i8
  store i8 %3043, i8* %14, align 1
  %3044 = trunc i64 %3039 to i32
  %3045 = and i32 %3044, 252
  %3046 = tail call i32 @llvm.ctpop.i32(i32 %3045)
  %3047 = trunc i32 %3046 to i8
  %3048 = and i8 %3047, 1
  %3049 = xor i8 %3048, 1
  store i8 %3049, i8* %21, align 1
  %3050 = xor i64 %3037, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3051 = xor i64 %3050, %3039
  %3052 = lshr i64 %3051, 4
  %3053 = trunc i64 %3052 to i8
  %3054 = and i8 %3053, 1
  store i8 %3054, i8* %26, align 1
  %3055 = icmp eq i64 %3039, 0
  %3056 = zext i1 %3055 to i8
  store i8 %3056, i8* %29, align 1
  %3057 = lshr i64 %3039, 63
  %3058 = trunc i64 %3057 to i8
  store i8 %3058, i8* %32, align 1
  %3059 = xor i64 %3057, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3060 = xor i64 %3057, %3038
  %3061 = add nuw nsw i64 %3059, %3060
  %3062 = icmp eq i64 %3061, 2
  %3063 = zext i1 %3062 to i8
  store i8 %3063, i8* %38, align 1
  %3064 = add i64 %3037, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %3065 = add i64 %3033, 29
  store i64 %3065, i64* %3, align 8
  %3066 = inttoptr i64 %3064 to i32*
  %3067 = load i32, i32* %3066, align 4
  %3068 = zext i32 %3067 to i64
  store i64 %3068, i64* %RDI.i55, align 8
  %3069 = add i64 %3033, 32
  store i64 %3069, i64* %3, align 8
  %3070 = load i32, i32* %2990, align 4
  %3071 = zext i32 %3070 to i64
  store i64 %3071, i64* %RSI.i292, align 8
  %3072 = add i64 %3033, -95376
  %3073 = add i64 %3033, 37
  %3074 = load i64, i64* %6, align 8
  %3075 = add i64 %3074, -8
  %3076 = inttoptr i64 %3075 to i64*
  store i64 %3073, i64* %3076, align 8
  store i64 %3075, i64* %6, align 8
  store i64 %3072, i64* %3, align 8
  %call2_44bd70 = tail call %struct.Memory* @sub_4348c0.add_owl_attack_threat_move(%struct.State* nonnull %0, i64 %3072, %struct.Memory* %MEMORY.0)
  %3077 = load i64, i64* %3, align 8
  %3078 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %3079 = and i32 %3078, 4
  %3080 = zext i32 %3079 to i64
  store i64 %3080, i64* %RDX.i1736, align 8
  store i8 0, i8* %14, align 1
  %3081 = tail call i32 @llvm.ctpop.i32(i32 %3079)
  %3082 = trunc i32 %3081 to i8
  %3083 = xor i8 %3082, 1
  store i8 %3083, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit132 = lshr exact i32 %3079, 2
  %3084 = trunc i32 %.lobit132 to i8
  %3085 = xor i8 %3084, 1
  store i8 %3085, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3086 = icmp eq i8 %3085, 0
  %.v172 = select i1 %3086, i64 24, i64 19
  %3087 = add i64 %3077, %.v172
  store i64 %3087, i64* %3, align 8
  br i1 %3086, label %block_.L_44bd8d, label %block_44bd88

block_44bd88:                                     ; preds = %block_44bd50
  %3088 = add i64 %3087, 67
  store i64 %3088, i64* %3, align 8
  br label %block_.L_44bdcb

block_.L_44bd8d:                                  ; preds = %block_44bd50
  store i64 ptrtoint (%G__0x57ebbf_type* @G__0x57ebbf to i64), i64* %RDI.i55, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %3089 = load i64, i64* %RBP.i, align 8
  %3090 = add i64 %3089, -8
  %3091 = add i64 %3087, 24
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3090 to i32*
  %3093 = load i32, i32* %3092, align 4
  %3094 = sext i32 %3093 to i64
  %3095 = mul nsw i64 %3094, 76
  store i64 %3095, i64* %RCX.i1761, align 8
  %3096 = lshr i64 %3095, 63
  %3097 = add i64 %3095, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3097, i64* %RAX.i1763, align 8
  %3098 = icmp ult i64 %3097, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3099 = icmp ult i64 %3097, %3095
  %3100 = or i1 %3098, %3099
  %3101 = zext i1 %3100 to i8
  store i8 %3101, i8* %14, align 1
  %3102 = trunc i64 %3097 to i32
  %3103 = and i32 %3102, 252
  %3104 = tail call i32 @llvm.ctpop.i32(i32 %3103)
  %3105 = trunc i32 %3104 to i8
  %3106 = and i8 %3105, 1
  %3107 = xor i8 %3106, 1
  store i8 %3107, i8* %21, align 1
  %3108 = xor i64 %3095, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3109 = xor i64 %3108, %3097
  %3110 = lshr i64 %3109, 4
  %3111 = trunc i64 %3110 to i8
  %3112 = and i8 %3111, 1
  store i8 %3112, i8* %26, align 1
  %3113 = icmp eq i64 %3097, 0
  %3114 = zext i1 %3113 to i8
  store i8 %3114, i8* %29, align 1
  %3115 = lshr i64 %3097, 63
  %3116 = trunc i64 %3115 to i8
  store i8 %3116, i8* %32, align 1
  %3117 = xor i64 %3115, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3118 = xor i64 %3115, %3096
  %3119 = add nuw nsw i64 %3117, %3118
  %3120 = icmp eq i64 %3119, 2
  %3121 = zext i1 %3120 to i8
  store i8 %3121, i8* %38, align 1
  %3122 = add i64 %3095, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %3123 = add i64 %3087, 34
  store i64 %3123, i64* %3, align 8
  %3124 = inttoptr i64 %3122 to i32*
  %3125 = load i32, i32* %3124, align 4
  %3126 = zext i32 %3125 to i64
  store i64 %3126, i64* %RSI.i292, align 8
  %3127 = add i64 %3087, 37
  store i64 %3127, i64* %3, align 8
  %3128 = load i32, i32* %3092, align 4
  %3129 = zext i32 %3128 to i64
  store i64 %3129, i64* %RDX.i1736, align 8
  %3130 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %3131 = add i32 %3130, 1
  %3132 = zext i32 %3131 to i64
  store i64 %3132, i64* %51, align 8
  %3133 = icmp eq i32 %3130, -1
  %3134 = icmp eq i32 %3131, 0
  %3135 = or i1 %3133, %3134
  %3136 = zext i1 %3135 to i8
  store i8 %3136, i8* %14, align 1
  %3137 = and i32 %3131, 255
  %3138 = tail call i32 @llvm.ctpop.i32(i32 %3137)
  %3139 = trunc i32 %3138 to i8
  %3140 = and i8 %3139, 1
  %3141 = xor i8 %3140, 1
  store i8 %3141, i8* %21, align 1
  %3142 = xor i32 %3131, %3130
  %3143 = lshr i32 %3142, 4
  %3144 = trunc i32 %3143 to i8
  %3145 = and i8 %3144, 1
  store i8 %3145, i8* %26, align 1
  %3146 = zext i1 %3134 to i8
  store i8 %3146, i8* %29, align 1
  %3147 = lshr i32 %3131, 31
  %3148 = trunc i32 %3147 to i8
  store i8 %3148, i8* %32, align 1
  %3149 = lshr i32 %3130, 31
  %3150 = xor i32 %3147, %3149
  %3151 = add nuw nsw i32 %3150, %3147
  %3152 = icmp eq i32 %3151, 2
  %3153 = zext i1 %3152 to i8
  store i8 %3153, i8* %38, align 1
  store i64 %3132, i64* %RCX.i1761, align 8
  store i8 0, i8* %AL.i, align 1
  %3154 = add i64 %3087, 24611
  %3155 = add i64 %3087, 59
  %3156 = load i64, i64* %6, align 8
  %3157 = add i64 %3156, -8
  %3158 = inttoptr i64 %3157 to i64*
  store i64 %3155, i64* %3158, align 8
  store i64 %3157, i64* %6, align 8
  store i64 %3154, i64* %3, align 8
  %call2_44bdc3 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3154, %struct.Memory* %MEMORY.0)
  %3159 = load i64, i64* %RBP.i, align 8
  %3160 = add i64 %3159, -72
  %3161 = load i32, i32* %EAX.i, align 4
  %3162 = load i64, i64* %3, align 8
  %3163 = add i64 %3162, 3
  store i64 %3163, i64* %3, align 8
  %3164 = inttoptr i64 %3160 to i32*
  store i32 %3161, i32* %3164, align 4
  %.pre112 = load i64, i64* %3, align 8
  br label %block_.L_44bdcb

block_.L_44bdcb:                                  ; preds = %block_.L_44bd8d, %block_44bd88
  %3165 = phi i64 [ %.pre112, %block_.L_44bd8d ], [ %3088, %block_44bd88 ]
  %3166 = add i64 %3165, 5
  store i64 %3166, i64* %3, align 8
  %.pre113 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44bdd0

block_.L_44bdd0:                                  ; preds = %block_.L_44bdcb, %block_44bd31
  %3167 = phi i64 [ %.pre113, %block_.L_44bdcb ], [ %2987, %block_44bd31 ]
  %3168 = phi i64 [ %3166, %block_.L_44bdcb ], [ %3033, %block_44bd31 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %3169 = add i64 %3167, -8
  %3170 = add i64 %3168, 14
  store i64 %3170, i64* %3, align 8
  %3171 = inttoptr i64 %3169 to i32*
  %3172 = load i32, i32* %3171, align 4
  %3173 = sext i32 %3172 to i64
  %3174 = mul nsw i64 %3173, 76
  store i64 %3174, i64* %RCX.i1761, align 8
  %3175 = lshr i64 %3174, 63
  %3176 = add i64 %3174, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3176, i64* %RAX.i1763, align 8
  %3177 = icmp ult i64 %3176, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3178 = icmp ult i64 %3176, %3174
  %3179 = or i1 %3177, %3178
  %3180 = zext i1 %3179 to i8
  store i8 %3180, i8* %14, align 1
  %3181 = trunc i64 %3176 to i32
  %3182 = and i32 %3181, 252
  %3183 = tail call i32 @llvm.ctpop.i32(i32 %3182)
  %3184 = trunc i32 %3183 to i8
  %3185 = and i8 %3184, 1
  %3186 = xor i8 %3185, 1
  store i8 %3186, i8* %21, align 1
  %3187 = xor i64 %3174, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3188 = xor i64 %3187, %3176
  %3189 = lshr i64 %3188, 4
  %3190 = trunc i64 %3189 to i8
  %3191 = and i8 %3190, 1
  store i8 %3191, i8* %26, align 1
  %3192 = icmp eq i64 %3176, 0
  %3193 = zext i1 %3192 to i8
  store i8 %3193, i8* %29, align 1
  %3194 = lshr i64 %3176, 63
  %3195 = trunc i64 %3194 to i8
  store i8 %3195, i8* %32, align 1
  %3196 = xor i64 %3194, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3197 = xor i64 %3194, %3175
  %3198 = add nuw nsw i64 %3196, %3197
  %3199 = icmp eq i64 %3198, 2
  %3200 = zext i1 %3199 to i8
  store i8 %3200, i8* %38, align 1
  %3201 = add i64 %3174, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 44)
  %3202 = add i64 %3168, 25
  store i64 %3202, i64* %3, align 8
  %3203 = inttoptr i64 %3201 to i32*
  %3204 = load i32, i32* %3203, align 4
  store i8 0, i8* %14, align 1
  %3205 = and i32 %3204, 255
  %3206 = tail call i32 @llvm.ctpop.i32(i32 %3205)
  %3207 = trunc i32 %3206 to i8
  %3208 = and i8 %3207, 1
  %3209 = xor i8 %3208, 1
  store i8 %3209, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3210 = icmp eq i32 %3204, 0
  %3211 = zext i1 %3210 to i8
  store i8 %3211, i8* %29, align 1
  %3212 = lshr i32 %3204, 31
  %3213 = trunc i32 %3212 to i8
  store i8 %3213, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v173 = select i1 %3210, i64 200, i64 31
  %3214 = add i64 %3168, %.v173
  store i64 %3214, i64* %3, align 8
  br i1 %3210, label %block_.L_44be98, label %block_44bdef

block_44bdef:                                     ; preds = %block_.L_44bdd0
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %3215 = add i64 %3214, 14
  store i64 %3215, i64* %3, align 8
  %3216 = load i32, i32* %3171, align 4
  %3217 = sext i32 %3216 to i64
  %3218 = mul nsw i64 %3217, 76
  store i64 %3218, i64* %RCX.i1761, align 8
  %3219 = lshr i64 %3218, 63
  %3220 = add i64 %3218, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3220, i64* %RAX.i1763, align 8
  %3221 = icmp ult i64 %3220, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3222 = icmp ult i64 %3220, %3218
  %3223 = or i1 %3221, %3222
  %3224 = zext i1 %3223 to i8
  store i8 %3224, i8* %14, align 1
  %3225 = trunc i64 %3220 to i32
  %3226 = and i32 %3225, 252
  %3227 = tail call i32 @llvm.ctpop.i32(i32 %3226)
  %3228 = trunc i32 %3227 to i8
  %3229 = and i8 %3228, 1
  %3230 = xor i8 %3229, 1
  store i8 %3230, i8* %21, align 1
  %3231 = xor i64 %3218, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3232 = xor i64 %3231, %3220
  %3233 = lshr i64 %3232, 4
  %3234 = trunc i64 %3233 to i8
  %3235 = and i8 %3234, 1
  store i8 %3235, i8* %26, align 1
  %3236 = icmp eq i64 %3220, 0
  %3237 = zext i1 %3236 to i8
  store i8 %3237, i8* %29, align 1
  %3238 = lshr i64 %3220, 63
  %3239 = trunc i64 %3238 to i8
  store i8 %3239, i8* %32, align 1
  %3240 = xor i64 %3238, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3241 = xor i64 %3238, %3219
  %3242 = add nuw nsw i64 %3240, %3241
  %3243 = icmp eq i64 %3242, 2
  %3244 = zext i1 %3243 to i8
  store i8 %3244, i8* %38, align 1
  %3245 = add i64 %3218, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 44)
  %3246 = add i64 %3214, 24
  store i64 %3246, i64* %3, align 8
  %3247 = inttoptr i64 %3245 to i32*
  %3248 = load i32, i32* %3247, align 4
  %3249 = zext i32 %3248 to i64
  store i64 %3249, i64* %RDI.i55, align 8
  %3250 = add i64 %3167, -4
  %3251 = add i64 %3214, 27
  store i64 %3251, i64* %3, align 8
  %3252 = inttoptr i64 %3250 to i32*
  %3253 = load i32, i32* %3252, align 4
  %3254 = zext i32 %3253 to i64
  store i64 %3254, i64* %RSI.i292, align 8
  %3255 = add i64 %3214, -250655
  %3256 = add i64 %3214, 32
  %3257 = load i64, i64* %6, align 8
  %3258 = add i64 %3257, -8
  %3259 = inttoptr i64 %3258 to i64*
  store i64 %3256, i64* %3259, align 8
  store i64 %3258, i64* %6, align 8
  store i64 %3255, i64* %3, align 8
  %call2_44be0a = tail call %struct.Memory* @sub_40ead0.is_legal(%struct.State* nonnull %0, i64 %3255, %struct.Memory* %MEMORY.0)
  %3260 = load i32, i32* %EAX.i, align 4
  %3261 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %3262 = and i32 %3260, 255
  %3263 = tail call i32 @llvm.ctpop.i32(i32 %3262)
  %3264 = trunc i32 %3263 to i8
  %3265 = and i8 %3264, 1
  %3266 = xor i8 %3265, 1
  store i8 %3266, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3267 = icmp eq i32 %3260, 0
  %3268 = zext i1 %3267 to i8
  store i8 %3268, i8* %29, align 1
  %3269 = lshr i32 %3260, 31
  %3270 = trunc i32 %3269 to i8
  store i8 %3270, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v174 = select i1 %3267, i64 137, i64 9
  %3271 = add i64 %3261, %.v174
  store i64 %3271, i64* %3, align 8
  br i1 %3267, label %block_.L_44be98, label %block_44be18

block_44be18:                                     ; preds = %block_44bdef
  store i64 5, i64* %RDX.i1736, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %3272 = load i64, i64* %RBP.i, align 8
  %3273 = add i64 %3272, -8
  %3274 = add i64 %3271, 19
  store i64 %3274, i64* %3, align 8
  %3275 = inttoptr i64 %3273 to i32*
  %3276 = load i32, i32* %3275, align 4
  %3277 = sext i32 %3276 to i64
  %3278 = mul nsw i64 %3277, 76
  store i64 %3278, i64* %RCX.i1761, align 8
  %3279 = lshr i64 %3278, 63
  %3280 = add i64 %3278, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3280, i64* %RAX.i1763, align 8
  %3281 = icmp ult i64 %3280, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3282 = icmp ult i64 %3280, %3278
  %3283 = or i1 %3281, %3282
  %3284 = zext i1 %3283 to i8
  store i8 %3284, i8* %14, align 1
  %3285 = trunc i64 %3280 to i32
  %3286 = and i32 %3285, 252
  %3287 = tail call i32 @llvm.ctpop.i32(i32 %3286)
  %3288 = trunc i32 %3287 to i8
  %3289 = and i8 %3288, 1
  %3290 = xor i8 %3289, 1
  store i8 %3290, i8* %21, align 1
  %3291 = xor i64 %3278, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3292 = xor i64 %3291, %3280
  %3293 = lshr i64 %3292, 4
  %3294 = trunc i64 %3293 to i8
  %3295 = and i8 %3294, 1
  store i8 %3295, i8* %26, align 1
  %3296 = icmp eq i64 %3280, 0
  %3297 = zext i1 %3296 to i8
  store i8 %3297, i8* %29, align 1
  %3298 = lshr i64 %3280, 63
  %3299 = trunc i64 %3298 to i8
  store i8 %3299, i8* %32, align 1
  %3300 = xor i64 %3298, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3301 = xor i64 %3298, %3279
  %3302 = add nuw nsw i64 %3300, %3301
  %3303 = icmp eq i64 %3302, 2
  %3304 = zext i1 %3303 to i8
  store i8 %3304, i8* %38, align 1
  %3305 = add i64 %3278, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 44)
  %3306 = add i64 %3271, 29
  store i64 %3306, i64* %3, align 8
  %3307 = inttoptr i64 %3305 to i32*
  %3308 = load i32, i32* %3307, align 4
  %3309 = zext i32 %3308 to i64
  store i64 %3309, i64* %RDI.i55, align 8
  %3310 = add i64 %3271, 32
  store i64 %3310, i64* %3, align 8
  %3311 = load i32, i32* %3275, align 4
  %3312 = zext i32 %3311 to i64
  store i64 %3312, i64* %RSI.i292, align 8
  %3313 = add i64 %3271, -95576
  %3314 = add i64 %3271, 37
  %3315 = load i64, i64* %6, align 8
  %3316 = add i64 %3315, -8
  %3317 = inttoptr i64 %3316 to i64*
  store i64 %3314, i64* %3317, align 8
  store i64 %3316, i64* %6, align 8
  store i64 %3313, i64* %3, align 8
  %call2_44be38 = tail call %struct.Memory* @sub_4348c0.add_owl_attack_threat_move(%struct.State* nonnull %0, i64 %3313, %struct.Memory* %call2_44be0a)
  %3318 = load i64, i64* %3, align 8
  %3319 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %3320 = and i32 %3319, 4
  %3321 = zext i32 %3320 to i64
  store i64 %3321, i64* %RDX.i1736, align 8
  store i8 0, i8* %14, align 1
  %3322 = tail call i32 @llvm.ctpop.i32(i32 %3320)
  %3323 = trunc i32 %3322 to i8
  %3324 = xor i8 %3323, 1
  store i8 %3324, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit133 = lshr exact i32 %3320, 2
  %3325 = trunc i32 %.lobit133 to i8
  %3326 = xor i8 %3325, 1
  store i8 %3326, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3327 = icmp eq i8 %3326, 0
  %.v175 = select i1 %3327, i64 24, i64 19
  %3328 = add i64 %3318, %.v175
  store i64 %3328, i64* %3, align 8
  br i1 %3327, label %block_.L_44be55, label %block_44be50

block_44be50:                                     ; preds = %block_44be18
  %3329 = add i64 %3328, 67
  store i64 %3329, i64* %3, align 8
  br label %block_.L_44be93

block_.L_44be55:                                  ; preds = %block_44be18
  store i64 ptrtoint (%G__0x57ebbf_type* @G__0x57ebbf to i64), i64* %RDI.i55, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %3330 = load i64, i64* %RBP.i, align 8
  %3331 = add i64 %3330, -8
  %3332 = add i64 %3328, 24
  store i64 %3332, i64* %3, align 8
  %3333 = inttoptr i64 %3331 to i32*
  %3334 = load i32, i32* %3333, align 4
  %3335 = sext i32 %3334 to i64
  %3336 = mul nsw i64 %3335, 76
  store i64 %3336, i64* %RCX.i1761, align 8
  %3337 = lshr i64 %3336, 63
  %3338 = add i64 %3336, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3338, i64* %RAX.i1763, align 8
  %3339 = icmp ult i64 %3338, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3340 = icmp ult i64 %3338, %3336
  %3341 = or i1 %3339, %3340
  %3342 = zext i1 %3341 to i8
  store i8 %3342, i8* %14, align 1
  %3343 = trunc i64 %3338 to i32
  %3344 = and i32 %3343, 252
  %3345 = tail call i32 @llvm.ctpop.i32(i32 %3344)
  %3346 = trunc i32 %3345 to i8
  %3347 = and i8 %3346, 1
  %3348 = xor i8 %3347, 1
  store i8 %3348, i8* %21, align 1
  %3349 = xor i64 %3336, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3350 = xor i64 %3349, %3338
  %3351 = lshr i64 %3350, 4
  %3352 = trunc i64 %3351 to i8
  %3353 = and i8 %3352, 1
  store i8 %3353, i8* %26, align 1
  %3354 = icmp eq i64 %3338, 0
  %3355 = zext i1 %3354 to i8
  store i8 %3355, i8* %29, align 1
  %3356 = lshr i64 %3338, 63
  %3357 = trunc i64 %3356 to i8
  store i8 %3357, i8* %32, align 1
  %3358 = xor i64 %3356, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3359 = xor i64 %3356, %3337
  %3360 = add nuw nsw i64 %3358, %3359
  %3361 = icmp eq i64 %3360, 2
  %3362 = zext i1 %3361 to i8
  store i8 %3362, i8* %38, align 1
  %3363 = add i64 %3336, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 44)
  %3364 = add i64 %3328, 34
  store i64 %3364, i64* %3, align 8
  %3365 = inttoptr i64 %3363 to i32*
  %3366 = load i32, i32* %3365, align 4
  %3367 = zext i32 %3366 to i64
  store i64 %3367, i64* %RSI.i292, align 8
  %3368 = add i64 %3328, 37
  store i64 %3368, i64* %3, align 8
  %3369 = load i32, i32* %3333, align 4
  %3370 = zext i32 %3369 to i64
  store i64 %3370, i64* %RDX.i1736, align 8
  %3371 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %3372 = add i32 %3371, 1
  %3373 = zext i32 %3372 to i64
  store i64 %3373, i64* %51, align 8
  %3374 = icmp eq i32 %3371, -1
  %3375 = icmp eq i32 %3372, 0
  %3376 = or i1 %3374, %3375
  %3377 = zext i1 %3376 to i8
  store i8 %3377, i8* %14, align 1
  %3378 = and i32 %3372, 255
  %3379 = tail call i32 @llvm.ctpop.i32(i32 %3378)
  %3380 = trunc i32 %3379 to i8
  %3381 = and i8 %3380, 1
  %3382 = xor i8 %3381, 1
  store i8 %3382, i8* %21, align 1
  %3383 = xor i32 %3372, %3371
  %3384 = lshr i32 %3383, 4
  %3385 = trunc i32 %3384 to i8
  %3386 = and i8 %3385, 1
  store i8 %3386, i8* %26, align 1
  %3387 = zext i1 %3375 to i8
  store i8 %3387, i8* %29, align 1
  %3388 = lshr i32 %3372, 31
  %3389 = trunc i32 %3388 to i8
  store i8 %3389, i8* %32, align 1
  %3390 = lshr i32 %3371, 31
  %3391 = xor i32 %3388, %3390
  %3392 = add nuw nsw i32 %3391, %3388
  %3393 = icmp eq i32 %3392, 2
  %3394 = zext i1 %3393 to i8
  store i8 %3394, i8* %38, align 1
  store i64 %3373, i64* %RCX.i1761, align 8
  store i8 0, i8* %AL.i, align 1
  %3395 = add i64 %3328, 24411
  %3396 = add i64 %3328, 59
  %3397 = load i64, i64* %6, align 8
  %3398 = add i64 %3397, -8
  %3399 = inttoptr i64 %3398 to i64*
  store i64 %3396, i64* %3399, align 8
  store i64 %3398, i64* %6, align 8
  store i64 %3395, i64* %3, align 8
  %call2_44be8b = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3395, %struct.Memory* %call2_44be38)
  %3400 = load i64, i64* %RBP.i, align 8
  %3401 = add i64 %3400, -76
  %3402 = load i32, i32* %EAX.i, align 4
  %3403 = load i64, i64* %3, align 8
  %3404 = add i64 %3403, 3
  store i64 %3404, i64* %3, align 8
  %3405 = inttoptr i64 %3401 to i32*
  store i32 %3402, i32* %3405, align 4
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_44be93

block_.L_44be93:                                  ; preds = %block_.L_44be55, %block_44be50
  %3406 = phi i64 [ %.pre114, %block_.L_44be55 ], [ %3329, %block_44be50 ]
  %MEMORY.28 = phi %struct.Memory* [ %call2_44be8b, %block_.L_44be55 ], [ %call2_44be38, %block_44be50 ]
  %3407 = add i64 %3406, 5
  store i64 %3407, i64* %3, align 8
  br label %block_.L_44be98

block_.L_44be98:                                  ; preds = %block_.L_44be93, %block_44bdef, %block_.L_44bdd0
  %3408 = phi i64 [ %3214, %block_.L_44bdd0 ], [ %3271, %block_44bdef ], [ %3407, %block_.L_44be93 ]
  %MEMORY.29 = phi %struct.Memory* [ %MEMORY.0, %block_.L_44bdd0 ], [ %call2_44be0a, %block_44bdef ], [ %MEMORY.28, %block_.L_44be93 ]
  %3409 = add i64 %3408, 1011
  br label %block_.L_44c28b

block_.L_44be9d:                                  ; preds = %block_44bcf6, %block_44bd12.block_.L_44be9d_crit_edge
  %3410 = phi i64 [ %.pre115, %block_44bd12.block_.L_44be9d_crit_edge ], [ %2891, %block_44bcf6 ]
  %3411 = phi i64 [ %2986, %block_44bd12.block_.L_44be9d_crit_edge ], [ %2930, %block_44bcf6 ]
  store i64 3, i64* %RAX.i1763, align 8
  %3412 = add i64 %3410, -8
  %3413 = add i64 %3411, 9
  store i64 %3413, i64* %3, align 8
  %3414 = inttoptr i64 %3412 to i32*
  %3415 = load i32, i32* %3414, align 4
  %3416 = sext i32 %3415 to i64
  store i64 %3416, i64* %RCX.i1761, align 8
  %3417 = add nsw i64 %3416, 12099168
  %3418 = add i64 %3411, 17
  store i64 %3418, i64* %3, align 8
  %3419 = inttoptr i64 %3417 to i8*
  %3420 = load i8, i8* %3419, align 1
  %3421 = zext i8 %3420 to i64
  store i64 %3421, i64* %RDX.i1736, align 8
  %3422 = add i64 %3410, -4
  %3423 = add i64 %3411, 20
  store i64 %3423, i64* %3, align 8
  %3424 = inttoptr i64 %3422 to i32*
  %3425 = load i32, i32* %3424, align 4
  %3426 = sub i32 3, %3425
  %3427 = zext i32 %3426 to i64
  store i64 %3427, i64* %RAX.i1763, align 8
  %3428 = lshr i32 %3426, 31
  %3429 = zext i8 %3420 to i32
  %3430 = sub i32 %3429, %3426
  %3431 = icmp ult i32 %3429, %3426
  %3432 = zext i1 %3431 to i8
  store i8 %3432, i8* %14, align 1
  %3433 = and i32 %3430, 255
  %3434 = tail call i32 @llvm.ctpop.i32(i32 %3433)
  %3435 = trunc i32 %3434 to i8
  %3436 = and i8 %3435, 1
  %3437 = xor i8 %3436, 1
  store i8 %3437, i8* %21, align 1
  %3438 = xor i32 %3426, %3429
  %3439 = xor i32 %3438, %3430
  %3440 = lshr i32 %3439, 4
  %3441 = trunc i32 %3440 to i8
  %3442 = and i8 %3441, 1
  store i8 %3442, i8* %26, align 1
  %3443 = icmp eq i32 %3430, 0
  %3444 = zext i1 %3443 to i8
  store i8 %3444, i8* %29, align 1
  %3445 = lshr i32 %3430, 31
  %3446 = trunc i32 %3445 to i8
  store i8 %3446, i8* %32, align 1
  %3447 = add nuw nsw i32 %3445, %3428
  %3448 = icmp eq i32 %3447, 2
  %3449 = zext i1 %3448 to i8
  store i8 %3449, i8* %38, align 1
  %.v151 = select i1 %3443, i64 28, i64 230
  %3450 = add i64 %3411, %.v151
  store i64 %3450, i64* %3, align 8
  br i1 %3443, label %block_44beb9, label %block_.L_44bf83

block_44beb9:                                     ; preds = %block_.L_44be9d
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %3451 = add i64 %3450, 14
  store i64 %3451, i64* %3, align 8
  %3452 = load i32, i32* %3414, align 4
  %3453 = sext i32 %3452 to i64
  %3454 = mul nsw i64 %3453, 76
  store i64 %3454, i64* %RCX.i1761, align 8
  %3455 = lshr i64 %3454, 63
  %3456 = add i64 %3454, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3456, i64* %RAX.i1763, align 8
  %3457 = icmp ult i64 %3456, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3458 = icmp ult i64 %3456, %3454
  %3459 = or i1 %3457, %3458
  %3460 = zext i1 %3459 to i8
  store i8 %3460, i8* %14, align 1
  %3461 = trunc i64 %3456 to i32
  %3462 = and i32 %3461, 252
  %3463 = tail call i32 @llvm.ctpop.i32(i32 %3462)
  %3464 = trunc i32 %3463 to i8
  %3465 = and i8 %3464, 1
  %3466 = xor i8 %3465, 1
  store i8 %3466, i8* %21, align 1
  %3467 = xor i64 %3454, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3468 = xor i64 %3467, %3456
  %3469 = lshr i64 %3468, 4
  %3470 = trunc i64 %3469 to i8
  %3471 = and i8 %3470, 1
  store i8 %3471, i8* %26, align 1
  %3472 = icmp eq i64 %3456, 0
  %3473 = zext i1 %3472 to i8
  store i8 %3473, i8* %29, align 1
  %3474 = lshr i64 %3456, 63
  %3475 = trunc i64 %3474 to i8
  store i8 %3475, i8* %32, align 1
  %3476 = xor i64 %3474, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3477 = xor i64 %3474, %3455
  %3478 = add nuw nsw i64 %3476, %3477
  %3479 = icmp eq i64 %3478, 2
  %3480 = zext i1 %3479 to i8
  store i8 %3480, i8* %38, align 1
  %3481 = add i64 %3454, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %3482 = add i64 %3450, 25
  store i64 %3482, i64* %3, align 8
  %3483 = inttoptr i64 %3481 to i32*
  %3484 = load i32, i32* %3483, align 4
  store i8 0, i8* %14, align 1
  %3485 = and i32 %3484, 255
  %3486 = tail call i32 @llvm.ctpop.i32(i32 %3485)
  %3487 = trunc i32 %3486 to i8
  %3488 = and i8 %3487, 1
  %3489 = xor i8 %3488, 1
  store i8 %3489, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3490 = icmp eq i32 %3484, 0
  %3491 = zext i1 %3490 to i8
  store i8 %3491, i8* %29, align 1
  %3492 = lshr i32 %3484, 31
  %3493 = trunc i32 %3492 to i8
  store i8 %3493, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v167 = select i1 %3490, i64 202, i64 31
  %3494 = add i64 %3450, %.v167
  store i64 %3494, i64* %3, align 8
  br i1 %3490, label %block_.L_44bf83, label %block_44bed8

block_44bed8:                                     ; preds = %block_44beb9
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %3495 = add i64 %3494, 14
  store i64 %3495, i64* %3, align 8
  %3496 = load i32, i32* %3414, align 4
  %3497 = sext i32 %3496 to i64
  %3498 = mul nsw i64 %3497, 76
  store i64 %3498, i64* %RCX.i1761, align 8
  %3499 = lshr i64 %3498, 63
  %3500 = add i64 %3498, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3500, i64* %RAX.i1763, align 8
  %3501 = icmp ult i64 %3500, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3502 = icmp ult i64 %3500, %3498
  %3503 = or i1 %3501, %3502
  %3504 = zext i1 %3503 to i8
  store i8 %3504, i8* %14, align 1
  %3505 = trunc i64 %3500 to i32
  %3506 = and i32 %3505, 252
  %3507 = tail call i32 @llvm.ctpop.i32(i32 %3506)
  %3508 = trunc i32 %3507 to i8
  %3509 = and i8 %3508, 1
  %3510 = xor i8 %3509, 1
  store i8 %3510, i8* %21, align 1
  %3511 = xor i64 %3498, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3512 = xor i64 %3511, %3500
  %3513 = lshr i64 %3512, 4
  %3514 = trunc i64 %3513 to i8
  %3515 = and i8 %3514, 1
  store i8 %3515, i8* %26, align 1
  %3516 = icmp eq i64 %3500, 0
  %3517 = zext i1 %3516 to i8
  store i8 %3517, i8* %29, align 1
  %3518 = lshr i64 %3500, 63
  %3519 = trunc i64 %3518 to i8
  store i8 %3519, i8* %32, align 1
  %3520 = xor i64 %3518, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3521 = xor i64 %3518, %3499
  %3522 = add nuw nsw i64 %3520, %3521
  %3523 = icmp eq i64 %3522, 2
  %3524 = zext i1 %3523 to i8
  store i8 %3524, i8* %38, align 1
  %3525 = add i64 %3498, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 36)
  %3526 = add i64 %3494, 25
  store i64 %3526, i64* %3, align 8
  %3527 = inttoptr i64 %3525 to i32*
  %3528 = load i32, i32* %3527, align 4
  %3529 = add i32 %3528, -3
  %3530 = icmp ult i32 %3528, 3
  %3531 = zext i1 %3530 to i8
  store i8 %3531, i8* %14, align 1
  %3532 = and i32 %3529, 255
  %3533 = tail call i32 @llvm.ctpop.i32(i32 %3532)
  %3534 = trunc i32 %3533 to i8
  %3535 = and i8 %3534, 1
  %3536 = xor i8 %3535, 1
  store i8 %3536, i8* %21, align 1
  %3537 = xor i32 %3529, %3528
  %3538 = lshr i32 %3537, 4
  %3539 = trunc i32 %3538 to i8
  %3540 = and i8 %3539, 1
  store i8 %3540, i8* %26, align 1
  %3541 = icmp eq i32 %3529, 0
  %3542 = zext i1 %3541 to i8
  store i8 %3542, i8* %29, align 1
  %3543 = lshr i32 %3529, 31
  %3544 = trunc i32 %3543 to i8
  store i8 %3544, i8* %32, align 1
  %3545 = lshr i32 %3528, 31
  %3546 = xor i32 %3543, %3545
  %3547 = add nuw nsw i32 %3546, %3545
  %3548 = icmp eq i32 %3547, 2
  %3549 = zext i1 %3548 to i8
  store i8 %3549, i8* %38, align 1
  %.v168 = select i1 %3541, i64 31, i64 171
  %3550 = add i64 %3494, %.v168
  store i64 %3550, i64* %3, align 8
  br i1 %3541, label %block_44bef7, label %block_44bed8.block_.L_44bf83_crit_edge

block_44bed8.block_.L_44bf83_crit_edge:           ; preds = %block_44bed8
  %.pre117 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44bf83

block_44bef7:                                     ; preds = %block_44bed8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %3551 = load i64, i64* %RBP.i, align 8
  %3552 = add i64 %3551, -8
  %3553 = add i64 %3550, 14
  store i64 %3553, i64* %3, align 8
  %3554 = inttoptr i64 %3552 to i32*
  %3555 = load i32, i32* %3554, align 4
  %3556 = sext i32 %3555 to i64
  %3557 = mul nsw i64 %3556, 76
  store i64 %3557, i64* %RCX.i1761, align 8
  %3558 = lshr i64 %3557, 63
  %3559 = add i64 %3557, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3559, i64* %RDX.i1736, align 8
  %3560 = icmp ult i64 %3559, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3561 = icmp ult i64 %3559, %3557
  %3562 = or i1 %3560, %3561
  %3563 = zext i1 %3562 to i8
  store i8 %3563, i8* %14, align 1
  %3564 = trunc i64 %3559 to i32
  %3565 = and i32 %3564, 252
  %3566 = tail call i32 @llvm.ctpop.i32(i32 %3565)
  %3567 = trunc i32 %3566 to i8
  %3568 = and i8 %3567, 1
  %3569 = xor i8 %3568, 1
  store i8 %3569, i8* %21, align 1
  %3570 = xor i64 %3557, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3571 = xor i64 %3570, %3559
  %3572 = lshr i64 %3571, 4
  %3573 = trunc i64 %3572 to i8
  %3574 = and i8 %3573, 1
  store i8 %3574, i8* %26, align 1
  %3575 = icmp eq i64 %3559, 0
  %3576 = zext i1 %3575 to i8
  store i8 %3576, i8* %29, align 1
  %3577 = lshr i64 %3559, 63
  %3578 = trunc i64 %3577 to i8
  store i8 %3578, i8* %32, align 1
  %3579 = xor i64 %3577, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3580 = xor i64 %3577, %3558
  %3581 = add nuw nsw i64 %3579, %3580
  %3582 = icmp eq i64 %3581, 2
  %3583 = zext i1 %3582 to i8
  store i8 %3583, i8* %38, align 1
  %3584 = add i64 %3557, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %3585 = add i64 %3550, 27
  store i64 %3585, i64* %3, align 8
  %3586 = inttoptr i64 %3584 to i32*
  %3587 = load i32, i32* %3586, align 4
  %3588 = zext i32 %3587 to i64
  store i64 %3588, i64* %RDI.i55, align 8
  %3589 = add i64 %3550, 30
  store i64 %3589, i64* %3, align 8
  %3590 = load i32, i32* %3554, align 4
  %3591 = zext i32 %3590 to i64
  store i64 %3591, i64* %RSI.i292, align 8
  %3592 = add i64 %3550, 34
  store i64 %3592, i64* %3, align 8
  %3593 = load i32, i32* %3554, align 4
  %3594 = sext i32 %3593 to i64
  %3595 = mul nsw i64 %3594, 76
  store i64 %3595, i64* %RCX.i1761, align 8
  %3596 = lshr i64 %3595, 63
  %3597 = load i64, i64* %RAX.i1763, align 8
  %3598 = add i64 %3595, %3597
  store i64 %3598, i64* %RAX.i1763, align 8
  %3599 = icmp ult i64 %3598, %3597
  %3600 = icmp ult i64 %3598, %3595
  %3601 = or i1 %3599, %3600
  %3602 = zext i1 %3601 to i8
  store i8 %3602, i8* %14, align 1
  %3603 = trunc i64 %3598 to i32
  %3604 = and i32 %3603, 255
  %3605 = tail call i32 @llvm.ctpop.i32(i32 %3604)
  %3606 = trunc i32 %3605 to i8
  %3607 = and i8 %3606, 1
  %3608 = xor i8 %3607, 1
  store i8 %3608, i8* %21, align 1
  %3609 = xor i64 %3595, %3597
  %3610 = xor i64 %3609, %3598
  %3611 = lshr i64 %3610, 4
  %3612 = trunc i64 %3611 to i8
  %3613 = and i8 %3612, 1
  store i8 %3613, i8* %26, align 1
  %3614 = icmp eq i64 %3598, 0
  %3615 = zext i1 %3614 to i8
  store i8 %3615, i8* %29, align 1
  %3616 = lshr i64 %3598, 63
  %3617 = trunc i64 %3616 to i8
  store i8 %3617, i8* %32, align 1
  %3618 = lshr i64 %3597, 63
  %3619 = xor i64 %3616, %3618
  %3620 = xor i64 %3616, %3596
  %3621 = add nuw nsw i64 %3619, %3620
  %3622 = icmp eq i64 %3621, 2
  %3623 = zext i1 %3622 to i8
  store i8 %3623, i8* %38, align 1
  %3624 = add i64 %3598, 68
  %3625 = add i64 %3550, 44
  store i64 %3625, i64* %3, align 8
  %3626 = inttoptr i64 %3624 to i32*
  %3627 = load i32, i32* %3626, align 4
  %3628 = zext i32 %3627 to i64
  store i64 %3628, i64* %RDX.i1736, align 8
  %3629 = add i64 %3550, -98071
  %3630 = add i64 %3550, 49
  %3631 = load i64, i64* %6, align 8
  %3632 = add i64 %3631, -8
  %3633 = inttoptr i64 %3632 to i64*
  store i64 %3630, i64* %3633, align 8
  store i64 %3632, i64* %6, align 8
  store i64 %3629, i64* %3, align 8
  %call2_44bf23 = tail call %struct.Memory* @sub_433fe0.add_gain_move(%struct.State* nonnull %0, i64 %3629, %struct.Memory* %MEMORY.0)
  %3634 = load i64, i64* %3, align 8
  %3635 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %3636 = and i32 %3635, 4
  %3637 = zext i32 %3636 to i64
  store i64 %3637, i64* %RDX.i1736, align 8
  store i8 0, i8* %14, align 1
  %3638 = tail call i32 @llvm.ctpop.i32(i32 %3636)
  %3639 = trunc i32 %3638 to i8
  %3640 = xor i8 %3639, 1
  store i8 %3640, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit134 = lshr exact i32 %3636, 2
  %3641 = trunc i32 %.lobit134 to i8
  %3642 = xor i8 %3641, 1
  store i8 %3642, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3643 = icmp eq i8 %3642, 0
  %.v169 = select i1 %3643, i64 24, i64 19
  %3644 = add i64 %3634, %.v169
  store i64 %3644, i64* %3, align 8
  br i1 %3643, label %block_.L_44bf40, label %block_44bf3b

block_44bf3b:                                     ; preds = %block_44bef7
  %3645 = add i64 %3644, 67
  store i64 %3645, i64* %3, align 8
  br label %block_.L_44bf7e

block_.L_44bf40:                                  ; preds = %block_44bef7
  store i64 ptrtoint (%G__0x57eb13_type* @G__0x57eb13 to i64), i64* %RDI.i55, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %3646 = load i64, i64* %RBP.i, align 8
  %3647 = add i64 %3646, -8
  %3648 = add i64 %3644, 24
  store i64 %3648, i64* %3, align 8
  %3649 = inttoptr i64 %3647 to i32*
  %3650 = load i32, i32* %3649, align 4
  %3651 = sext i32 %3650 to i64
  %3652 = mul nsw i64 %3651, 76
  store i64 %3652, i64* %RCX.i1761, align 8
  %3653 = lshr i64 %3652, 63
  %3654 = add i64 %3652, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3654, i64* %RAX.i1763, align 8
  %3655 = icmp ult i64 %3654, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3656 = icmp ult i64 %3654, %3652
  %3657 = or i1 %3655, %3656
  %3658 = zext i1 %3657 to i8
  store i8 %3658, i8* %14, align 1
  %3659 = trunc i64 %3654 to i32
  %3660 = and i32 %3659, 252
  %3661 = tail call i32 @llvm.ctpop.i32(i32 %3660)
  %3662 = trunc i32 %3661 to i8
  %3663 = and i8 %3662, 1
  %3664 = xor i8 %3663, 1
  store i8 %3664, i8* %21, align 1
  %3665 = xor i64 %3652, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3666 = xor i64 %3665, %3654
  %3667 = lshr i64 %3666, 4
  %3668 = trunc i64 %3667 to i8
  %3669 = and i8 %3668, 1
  store i8 %3669, i8* %26, align 1
  %3670 = icmp eq i64 %3654, 0
  %3671 = zext i1 %3670 to i8
  store i8 %3671, i8* %29, align 1
  %3672 = lshr i64 %3654, 63
  %3673 = trunc i64 %3672 to i8
  store i8 %3673, i8* %32, align 1
  %3674 = xor i64 %3672, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3675 = xor i64 %3672, %3653
  %3676 = add nuw nsw i64 %3674, %3675
  %3677 = icmp eq i64 %3676, 2
  %3678 = zext i1 %3677 to i8
  store i8 %3678, i8* %38, align 1
  %3679 = add i64 %3652, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %3680 = add i64 %3644, 34
  store i64 %3680, i64* %3, align 8
  %3681 = inttoptr i64 %3679 to i32*
  %3682 = load i32, i32* %3681, align 4
  %3683 = zext i32 %3682 to i64
  store i64 %3683, i64* %RSI.i292, align 8
  %3684 = add i64 %3644, 37
  store i64 %3684, i64* %3, align 8
  %3685 = load i32, i32* %3649, align 4
  %3686 = zext i32 %3685 to i64
  store i64 %3686, i64* %RDX.i1736, align 8
  %3687 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %3688 = add i32 %3687, 1
  %3689 = zext i32 %3688 to i64
  store i64 %3689, i64* %51, align 8
  %3690 = icmp eq i32 %3687, -1
  %3691 = icmp eq i32 %3688, 0
  %3692 = or i1 %3690, %3691
  %3693 = zext i1 %3692 to i8
  store i8 %3693, i8* %14, align 1
  %3694 = and i32 %3688, 255
  %3695 = tail call i32 @llvm.ctpop.i32(i32 %3694)
  %3696 = trunc i32 %3695 to i8
  %3697 = and i8 %3696, 1
  %3698 = xor i8 %3697, 1
  store i8 %3698, i8* %21, align 1
  %3699 = xor i32 %3688, %3687
  %3700 = lshr i32 %3699, 4
  %3701 = trunc i32 %3700 to i8
  %3702 = and i8 %3701, 1
  store i8 %3702, i8* %26, align 1
  %3703 = zext i1 %3691 to i8
  store i8 %3703, i8* %29, align 1
  %3704 = lshr i32 %3688, 31
  %3705 = trunc i32 %3704 to i8
  store i8 %3705, i8* %32, align 1
  %3706 = lshr i32 %3687, 31
  %3707 = xor i32 %3704, %3706
  %3708 = add nuw nsw i32 %3707, %3704
  %3709 = icmp eq i32 %3708, 2
  %3710 = zext i1 %3709 to i8
  store i8 %3710, i8* %38, align 1
  store i64 %3689, i64* %RCX.i1761, align 8
  store i8 0, i8* %AL.i, align 1
  %3711 = add i64 %3644, 24176
  %3712 = add i64 %3644, 59
  %3713 = load i64, i64* %6, align 8
  %3714 = add i64 %3713, -8
  %3715 = inttoptr i64 %3714 to i64*
  store i64 %3712, i64* %3715, align 8
  store i64 %3714, i64* %6, align 8
  store i64 %3711, i64* %3, align 8
  %call2_44bf76 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3711, %struct.Memory* %MEMORY.0)
  %3716 = load i64, i64* %RBP.i, align 8
  %3717 = add i64 %3716, -80
  %3718 = load i32, i32* %EAX.i, align 4
  %3719 = load i64, i64* %3, align 8
  %3720 = add i64 %3719, 3
  store i64 %3720, i64* %3, align 8
  %3721 = inttoptr i64 %3717 to i32*
  store i32 %3718, i32* %3721, align 4
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_44bf7e

block_.L_44bf7e:                                  ; preds = %block_.L_44bf40, %block_44bf3b
  %3722 = phi i64 [ %.pre116, %block_.L_44bf40 ], [ %3645, %block_44bf3b ]
  %3723 = add i64 %3722, 776
  br label %block_.L_44c286

block_.L_44bf83:                                  ; preds = %block_.L_44be9d, %block_44bed8.block_.L_44bf83_crit_edge, %block_44beb9
  %3724 = phi i64 [ %3550, %block_44bed8.block_.L_44bf83_crit_edge ], [ %3494, %block_44beb9 ], [ %3450, %block_.L_44be9d ]
  %3725 = phi i64 [ %.pre117, %block_44bed8.block_.L_44bf83_crit_edge ], [ %3410, %block_44beb9 ], [ %3410, %block_.L_44be9d ]
  %3726 = add i64 %3725, -8
  %3727 = add i64 %3724, 4
  store i64 %3727, i64* %3, align 8
  %3728 = inttoptr i64 %3726 to i32*
  %3729 = load i32, i32* %3728, align 4
  %3730 = sext i32 %3729 to i64
  store i64 %3730, i64* %RAX.i1763, align 8
  %3731 = add nsw i64 %3730, 12099168
  %3732 = add i64 %3724, 12
  store i64 %3732, i64* %3, align 8
  %3733 = inttoptr i64 %3731 to i8*
  %3734 = load i8, i8* %3733, align 1
  %3735 = zext i8 %3734 to i64
  store i64 %3735, i64* %RCX.i1761, align 8
  %3736 = zext i8 %3734 to i32
  %3737 = add i64 %3725, -4
  %3738 = add i64 %3724, 15
  store i64 %3738, i64* %3, align 8
  %3739 = inttoptr i64 %3737 to i32*
  %3740 = load i32, i32* %3739, align 4
  %3741 = sub i32 %3736, %3740
  %3742 = icmp ult i32 %3736, %3740
  %3743 = zext i1 %3742 to i8
  store i8 %3743, i8* %14, align 1
  %3744 = and i32 %3741, 255
  %3745 = tail call i32 @llvm.ctpop.i32(i32 %3744)
  %3746 = trunc i32 %3745 to i8
  %3747 = and i8 %3746, 1
  %3748 = xor i8 %3747, 1
  store i8 %3748, i8* %21, align 1
  %3749 = xor i32 %3740, %3736
  %3750 = xor i32 %3749, %3741
  %3751 = lshr i32 %3750, 4
  %3752 = trunc i32 %3751 to i8
  %3753 = and i8 %3752, 1
  store i8 %3753, i8* %26, align 1
  %3754 = icmp eq i32 %3741, 0
  %3755 = zext i1 %3754 to i8
  store i8 %3755, i8* %29, align 1
  %3756 = lshr i32 %3741, 31
  %3757 = trunc i32 %3756 to i8
  store i8 %3757, i8* %32, align 1
  %3758 = lshr i32 %3740, 31
  %3759 = add nuw nsw i32 %3756, %3758
  %3760 = icmp eq i32 %3759, 2
  %3761 = zext i1 %3760 to i8
  store i8 %3761, i8* %38, align 1
  %.v152 = select i1 %3754, i64 21, i64 223
  %3762 = add i64 %3724, %.v152
  store i64 %3762, i64* %3, align 8
  br i1 %3754, label %block_44bf98, label %block_.L_44c062

block_44bf98:                                     ; preds = %block_.L_44bf83
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %3763 = add i64 %3762, 14
  store i64 %3763, i64* %3, align 8
  %3764 = load i32, i32* %3728, align 4
  %3765 = sext i32 %3764 to i64
  %3766 = mul nsw i64 %3765, 76
  store i64 %3766, i64* %RCX.i1761, align 8
  %3767 = lshr i64 %3766, 63
  %3768 = add i64 %3766, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3768, i64* %RAX.i1763, align 8
  %3769 = icmp ult i64 %3768, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3770 = icmp ult i64 %3768, %3766
  %3771 = or i1 %3769, %3770
  %3772 = zext i1 %3771 to i8
  store i8 %3772, i8* %14, align 1
  %3773 = trunc i64 %3768 to i32
  %3774 = and i32 %3773, 252
  %3775 = tail call i32 @llvm.ctpop.i32(i32 %3774)
  %3776 = trunc i32 %3775 to i8
  %3777 = and i8 %3776, 1
  %3778 = xor i8 %3777, 1
  store i8 %3778, i8* %21, align 1
  %3779 = xor i64 %3766, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3780 = xor i64 %3779, %3768
  %3781 = lshr i64 %3780, 4
  %3782 = trunc i64 %3781 to i8
  %3783 = and i8 %3782, 1
  store i8 %3783, i8* %26, align 1
  %3784 = icmp eq i64 %3768, 0
  %3785 = zext i1 %3784 to i8
  store i8 %3785, i8* %29, align 1
  %3786 = lshr i64 %3768, 63
  %3787 = trunc i64 %3786 to i8
  store i8 %3787, i8* %32, align 1
  %3788 = xor i64 %3786, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3789 = xor i64 %3786, %3767
  %3790 = add nuw nsw i64 %3788, %3789
  %3791 = icmp eq i64 %3790, 2
  %3792 = zext i1 %3791 to i8
  store i8 %3792, i8* %38, align 1
  %3793 = add i64 %3766, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %3794 = add i64 %3762, 25
  store i64 %3794, i64* %3, align 8
  %3795 = inttoptr i64 %3793 to i32*
  %3796 = load i32, i32* %3795, align 4
  store i8 0, i8* %14, align 1
  %3797 = and i32 %3796, 255
  %3798 = tail call i32 @llvm.ctpop.i32(i32 %3797)
  %3799 = trunc i32 %3798 to i8
  %3800 = and i8 %3799, 1
  %3801 = xor i8 %3800, 1
  store i8 %3801, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3802 = icmp eq i32 %3796, 0
  %3803 = zext i1 %3802 to i8
  store i8 %3803, i8* %29, align 1
  %3804 = lshr i32 %3796, 31
  %3805 = trunc i32 %3804 to i8
  store i8 %3805, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v164 = select i1 %3802, i64 202, i64 31
  %3806 = add i64 %3762, %.v164
  store i64 %3806, i64* %3, align 8
  br i1 %3802, label %block_.L_44c062, label %block_44bfb7

block_44bfb7:                                     ; preds = %block_44bf98
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %3807 = add i64 %3806, 14
  store i64 %3807, i64* %3, align 8
  %3808 = load i32, i32* %3728, align 4
  %3809 = sext i32 %3808 to i64
  %3810 = mul nsw i64 %3809, 76
  store i64 %3810, i64* %RCX.i1761, align 8
  %3811 = lshr i64 %3810, 63
  %3812 = add i64 %3810, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3812, i64* %RAX.i1763, align 8
  %3813 = icmp ult i64 %3812, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3814 = icmp ult i64 %3812, %3810
  %3815 = or i1 %3813, %3814
  %3816 = zext i1 %3815 to i8
  store i8 %3816, i8* %14, align 1
  %3817 = trunc i64 %3812 to i32
  %3818 = and i32 %3817, 252
  %3819 = tail call i32 @llvm.ctpop.i32(i32 %3818)
  %3820 = trunc i32 %3819 to i8
  %3821 = and i8 %3820, 1
  %3822 = xor i8 %3821, 1
  store i8 %3822, i8* %21, align 1
  %3823 = xor i64 %3810, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3824 = xor i64 %3823, %3812
  %3825 = lshr i64 %3824, 4
  %3826 = trunc i64 %3825 to i8
  %3827 = and i8 %3826, 1
  store i8 %3827, i8* %26, align 1
  %3828 = icmp eq i64 %3812, 0
  %3829 = zext i1 %3828 to i8
  store i8 %3829, i8* %29, align 1
  %3830 = lshr i64 %3812, 63
  %3831 = trunc i64 %3830 to i8
  store i8 %3831, i8* %32, align 1
  %3832 = xor i64 %3830, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3833 = xor i64 %3830, %3811
  %3834 = add nuw nsw i64 %3832, %3833
  %3835 = icmp eq i64 %3834, 2
  %3836 = zext i1 %3835 to i8
  store i8 %3836, i8* %38, align 1
  %3837 = add i64 %3810, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 52)
  %3838 = add i64 %3806, 25
  store i64 %3838, i64* %3, align 8
  %3839 = inttoptr i64 %3837 to i32*
  %3840 = load i32, i32* %3839, align 4
  %3841 = add i32 %3840, -2
  %3842 = icmp ult i32 %3840, 2
  %3843 = zext i1 %3842 to i8
  store i8 %3843, i8* %14, align 1
  %3844 = and i32 %3841, 255
  %3845 = tail call i32 @llvm.ctpop.i32(i32 %3844)
  %3846 = trunc i32 %3845 to i8
  %3847 = and i8 %3846, 1
  %3848 = xor i8 %3847, 1
  store i8 %3848, i8* %21, align 1
  %3849 = xor i32 %3841, %3840
  %3850 = lshr i32 %3849, 4
  %3851 = trunc i32 %3850 to i8
  %3852 = and i8 %3851, 1
  store i8 %3852, i8* %26, align 1
  %3853 = icmp eq i32 %3841, 0
  %3854 = zext i1 %3853 to i8
  store i8 %3854, i8* %29, align 1
  %3855 = lshr i32 %3841, 31
  %3856 = trunc i32 %3855 to i8
  store i8 %3856, i8* %32, align 1
  %3857 = lshr i32 %3840, 31
  %3858 = xor i32 %3855, %3857
  %3859 = add nuw nsw i32 %3858, %3857
  %3860 = icmp eq i32 %3859, 2
  %3861 = zext i1 %3860 to i8
  store i8 %3861, i8* %38, align 1
  %.v165 = select i1 %3853, i64 31, i64 171
  %3862 = add i64 %3806, %.v165
  store i64 %3862, i64* %3, align 8
  br i1 %3853, label %block_44bfd6, label %block_44bfb7.block_.L_44c062_crit_edge

block_44bfb7.block_.L_44c062_crit_edge:           ; preds = %block_44bfb7
  %.pre119 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44c062

block_44bfd6:                                     ; preds = %block_44bfb7
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %3863 = load i64, i64* %RBP.i, align 8
  %3864 = add i64 %3863, -8
  %3865 = add i64 %3862, 14
  store i64 %3865, i64* %3, align 8
  %3866 = inttoptr i64 %3864 to i32*
  %3867 = load i32, i32* %3866, align 4
  %3868 = sext i32 %3867 to i64
  %3869 = mul nsw i64 %3868, 76
  store i64 %3869, i64* %RCX.i1761, align 8
  %3870 = lshr i64 %3869, 63
  %3871 = add i64 %3869, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3871, i64* %RDX.i1736, align 8
  %3872 = icmp ult i64 %3871, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3873 = icmp ult i64 %3871, %3869
  %3874 = or i1 %3872, %3873
  %3875 = zext i1 %3874 to i8
  store i8 %3875, i8* %14, align 1
  %3876 = trunc i64 %3871 to i32
  %3877 = and i32 %3876, 252
  %3878 = tail call i32 @llvm.ctpop.i32(i32 %3877)
  %3879 = trunc i32 %3878 to i8
  %3880 = and i8 %3879, 1
  %3881 = xor i8 %3880, 1
  store i8 %3881, i8* %21, align 1
  %3882 = xor i64 %3869, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3883 = xor i64 %3882, %3871
  %3884 = lshr i64 %3883, 4
  %3885 = trunc i64 %3884 to i8
  %3886 = and i8 %3885, 1
  store i8 %3886, i8* %26, align 1
  %3887 = icmp eq i64 %3871, 0
  %3888 = zext i1 %3887 to i8
  store i8 %3888, i8* %29, align 1
  %3889 = lshr i64 %3871, 63
  %3890 = trunc i64 %3889 to i8
  store i8 %3890, i8* %32, align 1
  %3891 = xor i64 %3889, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3892 = xor i64 %3889, %3870
  %3893 = add nuw nsw i64 %3891, %3892
  %3894 = icmp eq i64 %3893, 2
  %3895 = zext i1 %3894 to i8
  store i8 %3895, i8* %38, align 1
  %3896 = add i64 %3869, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %3897 = add i64 %3862, 27
  store i64 %3897, i64* %3, align 8
  %3898 = inttoptr i64 %3896 to i32*
  %3899 = load i32, i32* %3898, align 4
  %3900 = zext i32 %3899 to i64
  store i64 %3900, i64* %RDI.i55, align 8
  %3901 = add i64 %3862, 30
  store i64 %3901, i64* %3, align 8
  %3902 = load i32, i32* %3866, align 4
  %3903 = zext i32 %3902 to i64
  store i64 %3903, i64* %RSI.i292, align 8
  %3904 = add i64 %3862, 34
  store i64 %3904, i64* %3, align 8
  %3905 = load i32, i32* %3866, align 4
  %3906 = sext i32 %3905 to i64
  %3907 = mul nsw i64 %3906, 76
  store i64 %3907, i64* %RCX.i1761, align 8
  %3908 = lshr i64 %3907, 63
  %3909 = load i64, i64* %RAX.i1763, align 8
  %3910 = add i64 %3907, %3909
  store i64 %3910, i64* %RAX.i1763, align 8
  %3911 = icmp ult i64 %3910, %3909
  %3912 = icmp ult i64 %3910, %3907
  %3913 = or i1 %3911, %3912
  %3914 = zext i1 %3913 to i8
  store i8 %3914, i8* %14, align 1
  %3915 = trunc i64 %3910 to i32
  %3916 = and i32 %3915, 255
  %3917 = tail call i32 @llvm.ctpop.i32(i32 %3916)
  %3918 = trunc i32 %3917 to i8
  %3919 = and i8 %3918, 1
  %3920 = xor i8 %3919, 1
  store i8 %3920, i8* %21, align 1
  %3921 = xor i64 %3907, %3909
  %3922 = xor i64 %3921, %3910
  %3923 = lshr i64 %3922, 4
  %3924 = trunc i64 %3923 to i8
  %3925 = and i8 %3924, 1
  store i8 %3925, i8* %26, align 1
  %3926 = icmp eq i64 %3910, 0
  %3927 = zext i1 %3926 to i8
  store i8 %3927, i8* %29, align 1
  %3928 = lshr i64 %3910, 63
  %3929 = trunc i64 %3928 to i8
  store i8 %3929, i8* %32, align 1
  %3930 = lshr i64 %3909, 63
  %3931 = xor i64 %3928, %3930
  %3932 = xor i64 %3928, %3908
  %3933 = add nuw nsw i64 %3931, %3932
  %3934 = icmp eq i64 %3933, 2
  %3935 = zext i1 %3934 to i8
  store i8 %3935, i8* %38, align 1
  %3936 = add i64 %3910, 72
  %3937 = add i64 %3862, 44
  store i64 %3937, i64* %3, align 8
  %3938 = inttoptr i64 %3936 to i32*
  %3939 = load i32, i32* %3938, align 4
  %3940 = zext i32 %3939 to i64
  store i64 %3940, i64* %RDX.i1736, align 8
  %3941 = add i64 %3862, -97782
  %3942 = add i64 %3862, 49
  %3943 = load i64, i64* %6, align 8
  %3944 = add i64 %3943, -8
  %3945 = inttoptr i64 %3944 to i64*
  store i64 %3942, i64* %3945, align 8
  store i64 %3944, i64* %6, align 8
  store i64 %3941, i64* %3, align 8
  %call2_44c002 = tail call %struct.Memory* @sub_4341e0.add_loss_move(%struct.State* nonnull %0, i64 %3941, %struct.Memory* %MEMORY.0)
  %3946 = load i64, i64* %3, align 8
  %3947 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %3948 = and i32 %3947, 4
  %3949 = zext i32 %3948 to i64
  store i64 %3949, i64* %RDX.i1736, align 8
  store i8 0, i8* %14, align 1
  %3950 = tail call i32 @llvm.ctpop.i32(i32 %3948)
  %3951 = trunc i32 %3950 to i8
  %3952 = xor i8 %3951, 1
  store i8 %3952, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit135 = lshr exact i32 %3948, 2
  %3953 = trunc i32 %.lobit135 to i8
  %3954 = xor i8 %3953, 1
  store i8 %3954, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3955 = icmp eq i8 %3954, 0
  %.v166 = select i1 %3955, i64 24, i64 19
  %3956 = add i64 %3946, %.v166
  store i64 %3956, i64* %3, align 8
  br i1 %3955, label %block_.L_44c01f, label %block_44c01a

block_44c01a:                                     ; preds = %block_44bfd6
  %3957 = add i64 %3956, 67
  store i64 %3957, i64* %3, align 8
  br label %block_.L_44c05d

block_.L_44c01f:                                  ; preds = %block_44bfd6
  store i64 ptrtoint (%G__0x57ea8e_type* @G__0x57ea8e to i64), i64* %RDI.i55, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %3958 = load i64, i64* %RBP.i, align 8
  %3959 = add i64 %3958, -8
  %3960 = add i64 %3956, 24
  store i64 %3960, i64* %3, align 8
  %3961 = inttoptr i64 %3959 to i32*
  %3962 = load i32, i32* %3961, align 4
  %3963 = sext i32 %3962 to i64
  %3964 = mul nsw i64 %3963, 76
  store i64 %3964, i64* %RCX.i1761, align 8
  %3965 = lshr i64 %3964, 63
  %3966 = add i64 %3964, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %3966, i64* %RAX.i1763, align 8
  %3967 = icmp ult i64 %3966, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3968 = icmp ult i64 %3966, %3964
  %3969 = or i1 %3967, %3968
  %3970 = zext i1 %3969 to i8
  store i8 %3970, i8* %14, align 1
  %3971 = trunc i64 %3966 to i32
  %3972 = and i32 %3971, 252
  %3973 = tail call i32 @llvm.ctpop.i32(i32 %3972)
  %3974 = trunc i32 %3973 to i8
  %3975 = and i8 %3974, 1
  %3976 = xor i8 %3975, 1
  store i8 %3976, i8* %21, align 1
  %3977 = xor i64 %3964, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %3978 = xor i64 %3977, %3966
  %3979 = lshr i64 %3978, 4
  %3980 = trunc i64 %3979 to i8
  %3981 = and i8 %3980, 1
  store i8 %3981, i8* %26, align 1
  %3982 = icmp eq i64 %3966, 0
  %3983 = zext i1 %3982 to i8
  store i8 %3983, i8* %29, align 1
  %3984 = lshr i64 %3966, 63
  %3985 = trunc i64 %3984 to i8
  store i8 %3985, i8* %32, align 1
  %3986 = xor i64 %3984, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %3987 = xor i64 %3984, %3965
  %3988 = add nuw nsw i64 %3986, %3987
  %3989 = icmp eq i64 %3988, 2
  %3990 = zext i1 %3989 to i8
  store i8 %3990, i8* %38, align 1
  %3991 = add i64 %3964, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %3992 = add i64 %3956, 34
  store i64 %3992, i64* %3, align 8
  %3993 = inttoptr i64 %3991 to i32*
  %3994 = load i32, i32* %3993, align 4
  %3995 = zext i32 %3994 to i64
  store i64 %3995, i64* %RSI.i292, align 8
  %3996 = add i64 %3956, 37
  store i64 %3996, i64* %3, align 8
  %3997 = load i32, i32* %3961, align 4
  %3998 = zext i32 %3997 to i64
  store i64 %3998, i64* %RDX.i1736, align 8
  %3999 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %4000 = add i32 %3999, 1
  %4001 = zext i32 %4000 to i64
  store i64 %4001, i64* %51, align 8
  %4002 = icmp eq i32 %3999, -1
  %4003 = icmp eq i32 %4000, 0
  %4004 = or i1 %4002, %4003
  %4005 = zext i1 %4004 to i8
  store i8 %4005, i8* %14, align 1
  %4006 = and i32 %4000, 255
  %4007 = tail call i32 @llvm.ctpop.i32(i32 %4006)
  %4008 = trunc i32 %4007 to i8
  %4009 = and i8 %4008, 1
  %4010 = xor i8 %4009, 1
  store i8 %4010, i8* %21, align 1
  %4011 = xor i32 %4000, %3999
  %4012 = lshr i32 %4011, 4
  %4013 = trunc i32 %4012 to i8
  %4014 = and i8 %4013, 1
  store i8 %4014, i8* %26, align 1
  %4015 = zext i1 %4003 to i8
  store i8 %4015, i8* %29, align 1
  %4016 = lshr i32 %4000, 31
  %4017 = trunc i32 %4016 to i8
  store i8 %4017, i8* %32, align 1
  %4018 = lshr i32 %3999, 31
  %4019 = xor i32 %4016, %4018
  %4020 = add nuw nsw i32 %4019, %4016
  %4021 = icmp eq i32 %4020, 2
  %4022 = zext i1 %4021 to i8
  store i8 %4022, i8* %38, align 1
  store i64 %4001, i64* %RCX.i1761, align 8
  store i8 0, i8* %AL.i, align 1
  %4023 = add i64 %3956, 23953
  %4024 = add i64 %3956, 59
  %4025 = load i64, i64* %6, align 8
  %4026 = add i64 %4025, -8
  %4027 = inttoptr i64 %4026 to i64*
  store i64 %4024, i64* %4027, align 8
  store i64 %4026, i64* %6, align 8
  store i64 %4023, i64* %3, align 8
  %call2_44c055 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %4023, %struct.Memory* %MEMORY.0)
  %4028 = load i64, i64* %RBP.i, align 8
  %4029 = add i64 %4028, -84
  %4030 = load i32, i32* %EAX.i, align 4
  %4031 = load i64, i64* %3, align 8
  %4032 = add i64 %4031, 3
  store i64 %4032, i64* %3, align 8
  %4033 = inttoptr i64 %4029 to i32*
  store i32 %4030, i32* %4033, align 4
  %.pre118 = load i64, i64* %3, align 8
  br label %block_.L_44c05d

block_.L_44c05d:                                  ; preds = %block_.L_44c01f, %block_44c01a
  %4034 = phi i64 [ %.pre118, %block_.L_44c01f ], [ %3957, %block_44c01a ]
  %4035 = add i64 %4034, 548
  br label %block_.L_44c281

block_.L_44c062:                                  ; preds = %block_.L_44bf83, %block_44bfb7.block_.L_44c062_crit_edge, %block_44bf98
  %4036 = phi i64 [ %3862, %block_44bfb7.block_.L_44c062_crit_edge ], [ %3806, %block_44bf98 ], [ %3762, %block_.L_44bf83 ]
  %4037 = phi i64 [ %.pre119, %block_44bfb7.block_.L_44c062_crit_edge ], [ %3725, %block_44bf98 ], [ %3725, %block_.L_44bf83 ]
  %4038 = add i64 %4037, -8
  %4039 = add i64 %4036, 4
  store i64 %4039, i64* %3, align 8
  %4040 = inttoptr i64 %4038 to i32*
  %4041 = load i32, i32* %4040, align 4
  %4042 = sext i32 %4041 to i64
  store i64 %4042, i64* %RAX.i1763, align 8
  %4043 = add nsw i64 %4042, 12099168
  %4044 = add i64 %4036, 12
  store i64 %4044, i64* %3, align 8
  %4045 = inttoptr i64 %4043 to i8*
  %4046 = load i8, i8* %4045, align 1
  %4047 = zext i8 %4046 to i64
  store i64 %4047, i64* %RCX.i1761, align 8
  %4048 = zext i8 %4046 to i32
  %4049 = add i64 %4037, -4
  %4050 = add i64 %4036, 15
  store i64 %4050, i64* %3, align 8
  %4051 = inttoptr i64 %4049 to i32*
  %4052 = load i32, i32* %4051, align 4
  %4053 = sub i32 %4048, %4052
  %4054 = icmp ult i32 %4048, %4052
  %4055 = zext i1 %4054 to i8
  store i8 %4055, i8* %14, align 1
  %4056 = and i32 %4053, 255
  %4057 = tail call i32 @llvm.ctpop.i32(i32 %4056)
  %4058 = trunc i32 %4057 to i8
  %4059 = and i8 %4058, 1
  %4060 = xor i8 %4059, 1
  store i8 %4060, i8* %21, align 1
  %4061 = xor i32 %4052, %4048
  %4062 = xor i32 %4061, %4053
  %4063 = lshr i32 %4062, 4
  %4064 = trunc i32 %4063 to i8
  %4065 = and i8 %4064, 1
  store i8 %4065, i8* %26, align 1
  %4066 = icmp eq i32 %4053, 0
  %4067 = zext i1 %4066 to i8
  store i8 %4067, i8* %29, align 1
  %4068 = lshr i32 %4053, 31
  %4069 = trunc i32 %4068 to i8
  store i8 %4069, i8* %32, align 1
  %4070 = lshr i32 %4052, 31
  %4071 = add nuw nsw i32 %4068, %4070
  %4072 = icmp eq i32 %4071, 2
  %4073 = zext i1 %4072 to i8
  store i8 %4073, i8* %38, align 1
  %.v153 = select i1 %4066, i64 21, i64 285
  %4074 = add i64 %4036, %.v153
  store i64 %4074, i64* %3, align 8
  br i1 %4066, label %block_44c077, label %block_.L_44c17f

block_44c077:                                     ; preds = %block_.L_44c062
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %4075 = add i64 %4074, 14
  store i64 %4075, i64* %3, align 8
  %4076 = load i32, i32* %4040, align 4
  %4077 = sext i32 %4076 to i64
  %4078 = mul nsw i64 %4077, 76
  store i64 %4078, i64* %RCX.i1761, align 8
  %4079 = lshr i64 %4078, 63
  %4080 = add i64 %4078, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4080, i64* %RAX.i1763, align 8
  %4081 = icmp ult i64 %4080, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4082 = icmp ult i64 %4080, %4078
  %4083 = or i1 %4081, %4082
  %4084 = zext i1 %4083 to i8
  store i8 %4084, i8* %14, align 1
  %4085 = trunc i64 %4080 to i32
  %4086 = and i32 %4085, 252
  %4087 = tail call i32 @llvm.ctpop.i32(i32 %4086)
  %4088 = trunc i32 %4087 to i8
  %4089 = and i8 %4088, 1
  %4090 = xor i8 %4089, 1
  store i8 %4090, i8* %21, align 1
  %4091 = xor i64 %4078, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4092 = xor i64 %4091, %4080
  %4093 = lshr i64 %4092, 4
  %4094 = trunc i64 %4093 to i8
  %4095 = and i8 %4094, 1
  store i8 %4095, i8* %26, align 1
  %4096 = icmp eq i64 %4080, 0
  %4097 = zext i1 %4096 to i8
  store i8 %4097, i8* %29, align 1
  %4098 = lshr i64 %4080, 63
  %4099 = trunc i64 %4098 to i8
  store i8 %4099, i8* %32, align 1
  %4100 = xor i64 %4098, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4101 = xor i64 %4098, %4079
  %4102 = add nuw nsw i64 %4100, %4101
  %4103 = icmp eq i64 %4102, 2
  %4104 = zext i1 %4103 to i8
  store i8 %4104, i8* %38, align 1
  %4105 = add i64 %4078, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %4106 = add i64 %4074, 25
  store i64 %4106, i64* %3, align 8
  %4107 = inttoptr i64 %4105 to i32*
  %4108 = load i32, i32* %4107, align 4
  store i8 0, i8* %14, align 1
  %4109 = and i32 %4108, 255
  %4110 = tail call i32 @llvm.ctpop.i32(i32 %4109)
  %4111 = trunc i32 %4110 to i8
  %4112 = and i8 %4111, 1
  %4113 = xor i8 %4112, 1
  store i8 %4113, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4114 = icmp eq i32 %4108, 0
  %4115 = zext i1 %4114 to i8
  store i8 %4115, i8* %29, align 1
  %4116 = lshr i32 %4108, 31
  %4117 = trunc i32 %4116 to i8
  store i8 %4117, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v159 = select i1 %4114, i64 264, i64 31
  %4118 = add i64 %4074, %.v159
  store i64 %4118, i64* %3, align 8
  br i1 %4114, label %block_.L_44c17f, label %block_44c096

block_44c096:                                     ; preds = %block_44c077
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %4119 = add i64 %4118, 14
  store i64 %4119, i64* %3, align 8
  %4120 = load i32, i32* %4040, align 4
  %4121 = sext i32 %4120 to i64
  %4122 = mul nsw i64 %4121, 76
  store i64 %4122, i64* %RCX.i1761, align 8
  %4123 = lshr i64 %4122, 63
  %4124 = add i64 %4122, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4124, i64* %RAX.i1763, align 8
  %4125 = icmp ult i64 %4124, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4126 = icmp ult i64 %4124, %4122
  %4127 = or i1 %4125, %4126
  %4128 = zext i1 %4127 to i8
  store i8 %4128, i8* %14, align 1
  %4129 = trunc i64 %4124 to i32
  %4130 = and i32 %4129, 252
  %4131 = tail call i32 @llvm.ctpop.i32(i32 %4130)
  %4132 = trunc i32 %4131 to i8
  %4133 = and i8 %4132, 1
  %4134 = xor i8 %4133, 1
  store i8 %4134, i8* %21, align 1
  %4135 = xor i64 %4122, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4136 = xor i64 %4135, %4124
  %4137 = lshr i64 %4136, 4
  %4138 = trunc i64 %4137 to i8
  %4139 = and i8 %4138, 1
  store i8 %4139, i8* %26, align 1
  %4140 = icmp eq i64 %4124, 0
  %4141 = zext i1 %4140 to i8
  store i8 %4141, i8* %29, align 1
  %4142 = lshr i64 %4124, 63
  %4143 = trunc i64 %4142 to i8
  store i8 %4143, i8* %32, align 1
  %4144 = xor i64 %4142, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4145 = xor i64 %4142, %4123
  %4146 = add nuw nsw i64 %4144, %4145
  %4147 = icmp eq i64 %4146, 2
  %4148 = zext i1 %4147 to i8
  store i8 %4148, i8* %38, align 1
  %4149 = add i64 %4122, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 36)
  %4150 = add i64 %4118, 25
  store i64 %4150, i64* %3, align 8
  %4151 = inttoptr i64 %4149 to i32*
  %4152 = load i32, i32* %4151, align 4
  %4153 = add i32 %4152, -3
  %4154 = icmp ult i32 %4152, 3
  %4155 = zext i1 %4154 to i8
  store i8 %4155, i8* %14, align 1
  %4156 = and i32 %4153, 255
  %4157 = tail call i32 @llvm.ctpop.i32(i32 %4156)
  %4158 = trunc i32 %4157 to i8
  %4159 = and i8 %4158, 1
  %4160 = xor i8 %4159, 1
  store i8 %4160, i8* %21, align 1
  %4161 = xor i32 %4153, %4152
  %4162 = lshr i32 %4161, 4
  %4163 = trunc i32 %4162 to i8
  %4164 = and i8 %4163, 1
  store i8 %4164, i8* %26, align 1
  %4165 = icmp eq i32 %4153, 0
  %4166 = zext i1 %4165 to i8
  store i8 %4166, i8* %29, align 1
  %4167 = lshr i32 %4153, 31
  %4168 = trunc i32 %4167 to i8
  store i8 %4168, i8* %32, align 1
  %4169 = lshr i32 %4152, 31
  %4170 = xor i32 %4167, %4169
  %4171 = add nuw nsw i32 %4170, %4169
  %4172 = icmp eq i32 %4171, 2
  %4173 = zext i1 %4172 to i8
  store i8 %4173, i8* %38, align 1
  %.v160 = select i1 %4165, i64 31, i64 233
  %4174 = add i64 %4118, %.v160
  store i64 %4174, i64* %3, align 8
  br i1 %4165, label %block_44c0b5, label %block_.L_44c17f

block_44c0b5:                                     ; preds = %block_44c096
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %4175 = load i64, i64* %RBP.i, align 8
  %4176 = add i64 %4175, -8
  %4177 = add i64 %4174, 14
  store i64 %4177, i64* %3, align 8
  %4178 = inttoptr i64 %4176 to i32*
  %4179 = load i32, i32* %4178, align 4
  %4180 = sext i32 %4179 to i64
  %4181 = mul nsw i64 %4180, 76
  store i64 %4181, i64* %RCX.i1761, align 8
  %4182 = lshr i64 %4181, 63
  %4183 = add i64 %4181, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4183, i64* %RAX.i1763, align 8
  %4184 = icmp ult i64 %4183, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4185 = icmp ult i64 %4183, %4181
  %4186 = or i1 %4184, %4185
  %4187 = zext i1 %4186 to i8
  store i8 %4187, i8* %14, align 1
  %4188 = trunc i64 %4183 to i32
  %4189 = and i32 %4188, 252
  %4190 = tail call i32 @llvm.ctpop.i32(i32 %4189)
  %4191 = trunc i32 %4190 to i8
  %4192 = and i8 %4191, 1
  %4193 = xor i8 %4192, 1
  store i8 %4193, i8* %21, align 1
  %4194 = xor i64 %4181, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4195 = xor i64 %4194, %4183
  %4196 = lshr i64 %4195, 4
  %4197 = trunc i64 %4196 to i8
  %4198 = and i8 %4197, 1
  store i8 %4198, i8* %26, align 1
  %4199 = icmp eq i64 %4183, 0
  %4200 = zext i1 %4199 to i8
  store i8 %4200, i8* %29, align 1
  %4201 = lshr i64 %4183, 63
  %4202 = trunc i64 %4201 to i8
  store i8 %4202, i8* %32, align 1
  %4203 = xor i64 %4201, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4204 = xor i64 %4201, %4182
  %4205 = add nuw nsw i64 %4203, %4204
  %4206 = icmp eq i64 %4205, 2
  %4207 = zext i1 %4206 to i8
  store i8 %4207, i8* %38, align 1
  %4208 = add i64 %4181, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 52)
  %4209 = add i64 %4174, 25
  store i64 %4209, i64* %3, align 8
  %4210 = inttoptr i64 %4208 to i32*
  %4211 = load i32, i32* %4210, align 4
  %4212 = add i32 %4211, -5
  %4213 = icmp ult i32 %4211, 5
  %4214 = zext i1 %4213 to i8
  store i8 %4214, i8* %14, align 1
  %4215 = and i32 %4212, 255
  %4216 = tail call i32 @llvm.ctpop.i32(i32 %4215)
  %4217 = trunc i32 %4216 to i8
  %4218 = and i8 %4217, 1
  %4219 = xor i8 %4218, 1
  store i8 %4219, i8* %21, align 1
  %4220 = xor i32 %4212, %4211
  %4221 = lshr i32 %4220, 4
  %4222 = trunc i32 %4221 to i8
  %4223 = and i8 %4222, 1
  store i8 %4223, i8* %26, align 1
  %4224 = icmp eq i32 %4212, 0
  %4225 = zext i1 %4224 to i8
  store i8 %4225, i8* %29, align 1
  %4226 = lshr i32 %4212, 31
  %4227 = trunc i32 %4226 to i8
  store i8 %4227, i8* %32, align 1
  %4228 = lshr i32 %4211, 31
  %4229 = xor i32 %4226, %4228
  %4230 = add nuw nsw i32 %4229, %4228
  %4231 = icmp eq i32 %4230, 2
  %4232 = zext i1 %4231 to i8
  store i8 %4232, i8* %38, align 1
  %.v161 = select i1 %4224, i64 31, i64 202
  %4233 = add i64 %4174, %.v161
  store i64 %4233, i64* %3, align 8
  br i1 %4224, label %block_44c0d4, label %block_.L_44c17f

block_44c0d4:                                     ; preds = %block_44c0b5
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %4234 = load i64, i64* %RBP.i, align 8
  %4235 = add i64 %4234, -8
  %4236 = add i64 %4233, 14
  store i64 %4236, i64* %3, align 8
  %4237 = inttoptr i64 %4235 to i32*
  %4238 = load i32, i32* %4237, align 4
  %4239 = sext i32 %4238 to i64
  %4240 = mul nsw i64 %4239, 76
  store i64 %4240, i64* %RCX.i1761, align 8
  %4241 = lshr i64 %4240, 63
  %4242 = add i64 %4240, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4242, i64* %RAX.i1763, align 8
  %4243 = icmp ult i64 %4242, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4244 = icmp ult i64 %4242, %4240
  %4245 = or i1 %4243, %4244
  %4246 = zext i1 %4245 to i8
  store i8 %4246, i8* %14, align 1
  %4247 = trunc i64 %4242 to i32
  %4248 = and i32 %4247, 252
  %4249 = tail call i32 @llvm.ctpop.i32(i32 %4248)
  %4250 = trunc i32 %4249 to i8
  %4251 = and i8 %4250, 1
  %4252 = xor i8 %4251, 1
  store i8 %4252, i8* %21, align 1
  %4253 = xor i64 %4240, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4254 = xor i64 %4253, %4242
  %4255 = lshr i64 %4254, 4
  %4256 = trunc i64 %4255 to i8
  %4257 = and i8 %4256, 1
  store i8 %4257, i8* %26, align 1
  %4258 = icmp eq i64 %4242, 0
  %4259 = zext i1 %4258 to i8
  store i8 %4259, i8* %29, align 1
  %4260 = lshr i64 %4242, 63
  %4261 = trunc i64 %4260 to i8
  store i8 %4261, i8* %32, align 1
  %4262 = xor i64 %4260, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4263 = xor i64 %4260, %4241
  %4264 = add nuw nsw i64 %4262, %4263
  %4265 = icmp eq i64 %4264, 2
  %4266 = zext i1 %4265 to i8
  store i8 %4266, i8* %38, align 1
  %4267 = add i64 %4240, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %4268 = add i64 %4233, 25
  store i64 %4268, i64* %3, align 8
  %4269 = inttoptr i64 %4267 to i32*
  %4270 = load i32, i32* %4269, align 4
  store i8 0, i8* %14, align 1
  %4271 = and i32 %4270, 255
  %4272 = tail call i32 @llvm.ctpop.i32(i32 %4271)
  %4273 = trunc i32 %4272 to i8
  %4274 = and i8 %4273, 1
  %4275 = xor i8 %4274, 1
  store i8 %4275, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4276 = icmp eq i32 %4270, 0
  %4277 = zext i1 %4276 to i8
  store i8 %4277, i8* %29, align 1
  %4278 = lshr i32 %4270, 31
  %4279 = trunc i32 %4278 to i8
  store i8 %4279, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v162 = select i1 %4276, i64 171, i64 31
  %4280 = add i64 %4233, %.v162
  store i64 %4280, i64* %3, align 8
  br i1 %4276, label %block_.L_44c17f, label %block_44c0f3

block_44c0f3:                                     ; preds = %block_44c0d4
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %4281 = add i64 %4280, 14
  store i64 %4281, i64* %3, align 8
  %4282 = load i32, i32* %4237, align 4
  %4283 = sext i32 %4282 to i64
  %4284 = mul nsw i64 %4283, 76
  store i64 %4284, i64* %RCX.i1761, align 8
  %4285 = lshr i64 %4284, 63
  %4286 = add i64 %4284, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4286, i64* %RDX.i1736, align 8
  %4287 = icmp ult i64 %4286, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4288 = icmp ult i64 %4286, %4284
  %4289 = or i1 %4287, %4288
  %4290 = zext i1 %4289 to i8
  store i8 %4290, i8* %14, align 1
  %4291 = trunc i64 %4286 to i32
  %4292 = and i32 %4291, 252
  %4293 = tail call i32 @llvm.ctpop.i32(i32 %4292)
  %4294 = trunc i32 %4293 to i8
  %4295 = and i8 %4294, 1
  %4296 = xor i8 %4295, 1
  store i8 %4296, i8* %21, align 1
  %4297 = xor i64 %4284, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4298 = xor i64 %4297, %4286
  %4299 = lshr i64 %4298, 4
  %4300 = trunc i64 %4299 to i8
  %4301 = and i8 %4300, 1
  store i8 %4301, i8* %26, align 1
  %4302 = icmp eq i64 %4286, 0
  %4303 = zext i1 %4302 to i8
  store i8 %4303, i8* %29, align 1
  %4304 = lshr i64 %4286, 63
  %4305 = trunc i64 %4304 to i8
  store i8 %4305, i8* %32, align 1
  %4306 = xor i64 %4304, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4307 = xor i64 %4304, %4285
  %4308 = add nuw nsw i64 %4306, %4307
  %4309 = icmp eq i64 %4308, 2
  %4310 = zext i1 %4309 to i8
  store i8 %4310, i8* %38, align 1
  %4311 = add i64 %4284, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %4312 = add i64 %4280, 27
  store i64 %4312, i64* %3, align 8
  %4313 = inttoptr i64 %4311 to i32*
  %4314 = load i32, i32* %4313, align 4
  %4315 = zext i32 %4314 to i64
  store i64 %4315, i64* %RDI.i55, align 8
  %4316 = add i64 %4280, 30
  store i64 %4316, i64* %3, align 8
  %4317 = load i32, i32* %4237, align 4
  %4318 = zext i32 %4317 to i64
  store i64 %4318, i64* %RSI.i292, align 8
  %4319 = add i64 %4280, 34
  store i64 %4319, i64* %3, align 8
  %4320 = load i32, i32* %4237, align 4
  %4321 = sext i32 %4320 to i64
  %4322 = mul nsw i64 %4321, 76
  store i64 %4322, i64* %RCX.i1761, align 8
  %4323 = lshr i64 %4322, 63
  %4324 = load i64, i64* %RAX.i1763, align 8
  %4325 = add i64 %4322, %4324
  store i64 %4325, i64* %RAX.i1763, align 8
  %4326 = icmp ult i64 %4325, %4324
  %4327 = icmp ult i64 %4325, %4322
  %4328 = or i1 %4326, %4327
  %4329 = zext i1 %4328 to i8
  store i8 %4329, i8* %14, align 1
  %4330 = trunc i64 %4325 to i32
  %4331 = and i32 %4330, 255
  %4332 = tail call i32 @llvm.ctpop.i32(i32 %4331)
  %4333 = trunc i32 %4332 to i8
  %4334 = and i8 %4333, 1
  %4335 = xor i8 %4334, 1
  store i8 %4335, i8* %21, align 1
  %4336 = xor i64 %4322, %4324
  %4337 = xor i64 %4336, %4325
  %4338 = lshr i64 %4337, 4
  %4339 = trunc i64 %4338 to i8
  %4340 = and i8 %4339, 1
  store i8 %4340, i8* %26, align 1
  %4341 = icmp eq i64 %4325, 0
  %4342 = zext i1 %4341 to i8
  store i8 %4342, i8* %29, align 1
  %4343 = lshr i64 %4325, 63
  %4344 = trunc i64 %4343 to i8
  store i8 %4344, i8* %32, align 1
  %4345 = lshr i64 %4324, 63
  %4346 = xor i64 %4343, %4345
  %4347 = xor i64 %4343, %4323
  %4348 = add nuw nsw i64 %4346, %4347
  %4349 = icmp eq i64 %4348, 2
  %4350 = zext i1 %4349 to i8
  store i8 %4350, i8* %38, align 1
  %4351 = add i64 %4325, 52
  %4352 = add i64 %4280, 44
  store i64 %4352, i64* %3, align 8
  %4353 = inttoptr i64 %4351 to i32*
  %4354 = load i32, i32* %4353, align 4
  %4355 = zext i32 %4354 to i64
  store i64 %4355, i64* %RDX.i1736, align 8
  %4356 = add i64 %4280, -96595
  %4357 = add i64 %4280, 49
  %4358 = load i64, i64* %6, align 8
  %4359 = add i64 %4358, -8
  %4360 = inttoptr i64 %4359 to i64*
  store i64 %4357, i64* %4360, align 8
  store i64 %4359, i64* %6, align 8
  store i64 %4356, i64* %3, align 8
  %call2_44c11f = tail call %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* nonnull %0, i64 %4356, %struct.Memory* %MEMORY.0)
  %4361 = load i64, i64* %3, align 8
  %4362 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %4363 = and i32 %4362, 4
  %4364 = zext i32 %4363 to i64
  store i64 %4364, i64* %RDX.i1736, align 8
  store i8 0, i8* %14, align 1
  %4365 = tail call i32 @llvm.ctpop.i32(i32 %4363)
  %4366 = trunc i32 %4365 to i8
  %4367 = xor i8 %4366, 1
  store i8 %4367, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit136 = lshr exact i32 %4363, 2
  %4368 = trunc i32 %.lobit136 to i8
  %4369 = xor i8 %4368, 1
  store i8 %4369, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %4370 = icmp eq i8 %4369, 0
  %.v163 = select i1 %4370, i64 24, i64 19
  %4371 = add i64 %4361, %.v163
  store i64 %4371, i64* %3, align 8
  br i1 %4370, label %block_.L_44c13c, label %block_44c137

block_44c137:                                     ; preds = %block_44c0f3
  %4372 = add i64 %4371, 67
  store i64 %4372, i64* %3, align 8
  br label %block_.L_44c17a

block_.L_44c13c:                                  ; preds = %block_44c0f3
  store i64 ptrtoint (%G__0x57ebe2_type* @G__0x57ebe2 to i64), i64* %RDI.i55, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %4373 = load i64, i64* %RBP.i, align 8
  %4374 = add i64 %4373, -8
  %4375 = add i64 %4371, 24
  store i64 %4375, i64* %3, align 8
  %4376 = inttoptr i64 %4374 to i32*
  %4377 = load i32, i32* %4376, align 4
  %4378 = sext i32 %4377 to i64
  %4379 = mul nsw i64 %4378, 76
  store i64 %4379, i64* %RCX.i1761, align 8
  %4380 = lshr i64 %4379, 63
  %4381 = add i64 %4379, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4381, i64* %RAX.i1763, align 8
  %4382 = icmp ult i64 %4381, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4383 = icmp ult i64 %4381, %4379
  %4384 = or i1 %4382, %4383
  %4385 = zext i1 %4384 to i8
  store i8 %4385, i8* %14, align 1
  %4386 = trunc i64 %4381 to i32
  %4387 = and i32 %4386, 252
  %4388 = tail call i32 @llvm.ctpop.i32(i32 %4387)
  %4389 = trunc i32 %4388 to i8
  %4390 = and i8 %4389, 1
  %4391 = xor i8 %4390, 1
  store i8 %4391, i8* %21, align 1
  %4392 = xor i64 %4379, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4393 = xor i64 %4392, %4381
  %4394 = lshr i64 %4393, 4
  %4395 = trunc i64 %4394 to i8
  %4396 = and i8 %4395, 1
  store i8 %4396, i8* %26, align 1
  %4397 = icmp eq i64 %4381, 0
  %4398 = zext i1 %4397 to i8
  store i8 %4398, i8* %29, align 1
  %4399 = lshr i64 %4381, 63
  %4400 = trunc i64 %4399 to i8
  store i8 %4400, i8* %32, align 1
  %4401 = xor i64 %4399, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4402 = xor i64 %4399, %4380
  %4403 = add nuw nsw i64 %4401, %4402
  %4404 = icmp eq i64 %4403, 2
  %4405 = zext i1 %4404 to i8
  store i8 %4405, i8* %38, align 1
  %4406 = add i64 %4379, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %4407 = add i64 %4371, 34
  store i64 %4407, i64* %3, align 8
  %4408 = inttoptr i64 %4406 to i32*
  %4409 = load i32, i32* %4408, align 4
  %4410 = zext i32 %4409 to i64
  store i64 %4410, i64* %RSI.i292, align 8
  %4411 = add i64 %4371, 37
  store i64 %4411, i64* %3, align 8
  %4412 = load i32, i32* %4376, align 4
  %4413 = zext i32 %4412 to i64
  store i64 %4413, i64* %RDX.i1736, align 8
  %4414 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %4415 = add i32 %4414, 1
  %4416 = zext i32 %4415 to i64
  store i64 %4416, i64* %51, align 8
  %4417 = icmp eq i32 %4414, -1
  %4418 = icmp eq i32 %4415, 0
  %4419 = or i1 %4417, %4418
  %4420 = zext i1 %4419 to i8
  store i8 %4420, i8* %14, align 1
  %4421 = and i32 %4415, 255
  %4422 = tail call i32 @llvm.ctpop.i32(i32 %4421)
  %4423 = trunc i32 %4422 to i8
  %4424 = and i8 %4423, 1
  %4425 = xor i8 %4424, 1
  store i8 %4425, i8* %21, align 1
  %4426 = xor i32 %4415, %4414
  %4427 = lshr i32 %4426, 4
  %4428 = trunc i32 %4427 to i8
  %4429 = and i8 %4428, 1
  store i8 %4429, i8* %26, align 1
  %4430 = zext i1 %4418 to i8
  store i8 %4430, i8* %29, align 1
  %4431 = lshr i32 %4415, 31
  %4432 = trunc i32 %4431 to i8
  store i8 %4432, i8* %32, align 1
  %4433 = lshr i32 %4414, 31
  %4434 = xor i32 %4431, %4433
  %4435 = add nuw nsw i32 %4434, %4431
  %4436 = icmp eq i32 %4435, 2
  %4437 = zext i1 %4436 to i8
  store i8 %4437, i8* %38, align 1
  store i64 %4416, i64* %RCX.i1761, align 8
  store i8 0, i8* %AL.i, align 1
  %4438 = add i64 %4371, 23668
  %4439 = add i64 %4371, 59
  %4440 = load i64, i64* %6, align 8
  %4441 = add i64 %4440, -8
  %4442 = inttoptr i64 %4441 to i64*
  store i64 %4439, i64* %4442, align 8
  store i64 %4441, i64* %6, align 8
  store i64 %4438, i64* %3, align 8
  %call2_44c172 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %4438, %struct.Memory* %MEMORY.0)
  %4443 = load i64, i64* %RBP.i, align 8
  %4444 = add i64 %4443, -88
  %4445 = load i32, i32* %EAX.i, align 4
  %4446 = load i64, i64* %3, align 8
  %4447 = add i64 %4446, 3
  store i64 %4447, i64* %3, align 8
  %4448 = inttoptr i64 %4444 to i32*
  store i32 %4445, i32* %4448, align 4
  %.pre120 = load i64, i64* %3, align 8
  br label %block_.L_44c17a

block_.L_44c17a:                                  ; preds = %block_.L_44c13c, %block_44c137
  %4449 = phi i64 [ %.pre120, %block_.L_44c13c ], [ %4372, %block_44c137 ]
  %4450 = add i64 %4449, 258
  br label %block_.L_44c27c

block_.L_44c17f:                                  ; preds = %block_44c0b5, %block_44c096, %block_.L_44c062, %block_44c0d4, %block_44c077
  %4451 = phi i64 [ %4280, %block_44c0d4 ], [ %4233, %block_44c0b5 ], [ %4174, %block_44c096 ], [ %4118, %block_44c077 ], [ %4074, %block_.L_44c062 ]
  %4452 = load i64, i64* %RBP.i, align 8
  %4453 = add i64 %4452, -8
  %4454 = add i64 %4451, 4
  store i64 %4454, i64* %3, align 8
  %4455 = inttoptr i64 %4453 to i32*
  %4456 = load i32, i32* %4455, align 4
  %4457 = sext i32 %4456 to i64
  store i64 %4457, i64* %RAX.i1763, align 8
  %4458 = add nsw i64 %4457, 12099168
  %4459 = add i64 %4451, 12
  store i64 %4459, i64* %3, align 8
  %4460 = inttoptr i64 %4458 to i8*
  %4461 = load i8, i8* %4460, align 1
  %4462 = zext i8 %4461 to i64
  store i64 %4462, i64* %RCX.i1761, align 8
  %4463 = zext i8 %4461 to i32
  %4464 = add i64 %4452, -4
  %4465 = add i64 %4451, 15
  store i64 %4465, i64* %3, align 8
  %4466 = inttoptr i64 %4464 to i32*
  %4467 = load i32, i32* %4466, align 4
  %4468 = sub i32 %4463, %4467
  %4469 = icmp ult i32 %4463, %4467
  %4470 = zext i1 %4469 to i8
  store i8 %4470, i8* %14, align 1
  %4471 = and i32 %4468, 255
  %4472 = tail call i32 @llvm.ctpop.i32(i32 %4471)
  %4473 = trunc i32 %4472 to i8
  %4474 = and i8 %4473, 1
  %4475 = xor i8 %4474, 1
  store i8 %4475, i8* %21, align 1
  %4476 = xor i32 %4467, %4463
  %4477 = xor i32 %4476, %4468
  %4478 = lshr i32 %4477, 4
  %4479 = trunc i32 %4478 to i8
  %4480 = and i8 %4479, 1
  store i8 %4480, i8* %26, align 1
  %4481 = icmp eq i32 %4468, 0
  %4482 = zext i1 %4481 to i8
  store i8 %4482, i8* %29, align 1
  %4483 = lshr i32 %4468, 31
  %4484 = trunc i32 %4483 to i8
  store i8 %4484, i8* %32, align 1
  %4485 = lshr i32 %4467, 31
  %4486 = add nuw nsw i32 %4483, %4485
  %4487 = icmp eq i32 %4486, 2
  %4488 = zext i1 %4487 to i8
  store i8 %4488, i8* %38, align 1
  %.v154 = select i1 %4481, i64 21, i64 248
  %4489 = add i64 %4451, %.v154
  store i64 %4489, i64* %3, align 8
  br i1 %4481, label %block_44c194, label %block_.L_44c277

block_44c194:                                     ; preds = %block_.L_44c17f
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %4490 = add i64 %4489, 14
  store i64 %4490, i64* %3, align 8
  %4491 = load i32, i32* %4455, align 4
  %4492 = sext i32 %4491 to i64
  %4493 = mul nsw i64 %4492, 76
  store i64 %4493, i64* %RCX.i1761, align 8
  %4494 = lshr i64 %4493, 63
  %4495 = add i64 %4493, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4495, i64* %RAX.i1763, align 8
  %4496 = icmp ult i64 %4495, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4497 = icmp ult i64 %4495, %4493
  %4498 = or i1 %4496, %4497
  %4499 = zext i1 %4498 to i8
  store i8 %4499, i8* %14, align 1
  %4500 = trunc i64 %4495 to i32
  %4501 = and i32 %4500, 252
  %4502 = tail call i32 @llvm.ctpop.i32(i32 %4501)
  %4503 = trunc i32 %4502 to i8
  %4504 = and i8 %4503, 1
  %4505 = xor i8 %4504, 1
  store i8 %4505, i8* %21, align 1
  %4506 = xor i64 %4493, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4507 = xor i64 %4506, %4495
  %4508 = lshr i64 %4507, 4
  %4509 = trunc i64 %4508 to i8
  %4510 = and i8 %4509, 1
  store i8 %4510, i8* %26, align 1
  %4511 = icmp eq i64 %4495, 0
  %4512 = zext i1 %4511 to i8
  store i8 %4512, i8* %29, align 1
  %4513 = lshr i64 %4495, 63
  %4514 = trunc i64 %4513 to i8
  store i8 %4514, i8* %32, align 1
  %4515 = xor i64 %4513, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4516 = xor i64 %4513, %4494
  %4517 = add nuw nsw i64 %4515, %4516
  %4518 = icmp eq i64 %4517, 2
  %4519 = zext i1 %4518 to i8
  store i8 %4519, i8* %38, align 1
  %4520 = add i64 %4493, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 40)
  %4521 = add i64 %4489, 25
  store i64 %4521, i64* %3, align 8
  %4522 = inttoptr i64 %4520 to i32*
  %4523 = load i32, i32* %4522, align 4
  store i8 0, i8* %14, align 1
  %4524 = and i32 %4523, 255
  %4525 = tail call i32 @llvm.ctpop.i32(i32 %4524)
  %4526 = trunc i32 %4525 to i8
  %4527 = and i8 %4526, 1
  %4528 = xor i8 %4527, 1
  store i8 %4528, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4529 = icmp eq i32 %4523, 0
  %4530 = zext i1 %4529 to i8
  store i8 %4530, i8* %29, align 1
  %4531 = lshr i32 %4523, 31
  %4532 = trunc i32 %4531 to i8
  store i8 %4532, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v155 = select i1 %4529, i64 31, i64 227
  %4533 = add i64 %4489, %.v155
  store i64 %4533, i64* %3, align 8
  br i1 %4529, label %block_44c1b3, label %block_.L_44c277

block_44c1b3:                                     ; preds = %block_44c194
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %4534 = add i64 %4533, 14
  store i64 %4534, i64* %3, align 8
  %4535 = load i32, i32* %4455, align 4
  %4536 = sext i32 %4535 to i64
  %4537 = mul nsw i64 %4536, 76
  store i64 %4537, i64* %RCX.i1761, align 8
  %4538 = lshr i64 %4537, 63
  %4539 = add i64 %4537, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4539, i64* %RAX.i1763, align 8
  %4540 = icmp ult i64 %4539, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4541 = icmp ult i64 %4539, %4537
  %4542 = or i1 %4540, %4541
  %4543 = zext i1 %4542 to i8
  store i8 %4543, i8* %14, align 1
  %4544 = trunc i64 %4539 to i32
  %4545 = and i32 %4544, 252
  %4546 = tail call i32 @llvm.ctpop.i32(i32 %4545)
  %4547 = trunc i32 %4546 to i8
  %4548 = and i8 %4547, 1
  %4549 = xor i8 %4548, 1
  store i8 %4549, i8* %21, align 1
  %4550 = xor i64 %4537, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4551 = xor i64 %4550, %4539
  %4552 = lshr i64 %4551, 4
  %4553 = trunc i64 %4552 to i8
  %4554 = and i8 %4553, 1
  store i8 %4554, i8* %26, align 1
  %4555 = icmp eq i64 %4539, 0
  %4556 = zext i1 %4555 to i8
  store i8 %4556, i8* %29, align 1
  %4557 = lshr i64 %4539, 63
  %4558 = trunc i64 %4557 to i8
  store i8 %4558, i8* %32, align 1
  %4559 = xor i64 %4557, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4560 = xor i64 %4557, %4538
  %4561 = add nuw nsw i64 %4559, %4560
  %4562 = icmp eq i64 %4561, 2
  %4563 = zext i1 %4562 to i8
  store i8 %4563, i8* %38, align 1
  %4564 = add i64 %4537, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 56)
  %4565 = add i64 %4533, 25
  store i64 %4565, i64* %3, align 8
  %4566 = inttoptr i64 %4564 to i32*
  %4567 = load i32, i32* %4566, align 4
  store i8 0, i8* %14, align 1
  %4568 = and i32 %4567, 255
  %4569 = tail call i32 @llvm.ctpop.i32(i32 %4568)
  %4570 = trunc i32 %4569 to i8
  %4571 = and i8 %4570, 1
  %4572 = xor i8 %4571, 1
  store i8 %4572, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4573 = icmp eq i32 %4567, 0
  %4574 = zext i1 %4573 to i8
  store i8 %4574, i8* %29, align 1
  %4575 = lshr i32 %4567, 31
  %4576 = trunc i32 %4575 to i8
  store i8 %4576, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v156 = select i1 %4573, i64 196, i64 31
  %4577 = add i64 %4533, %.v156
  store i64 %4577, i64* %3, align 8
  br i1 %4573, label %block_.L_44c277, label %block_44c1d2

block_44c1d2:                                     ; preds = %block_44c1b3
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %4578 = add i64 %4577, 14
  store i64 %4578, i64* %3, align 8
  %4579 = load i32, i32* %4455, align 4
  %4580 = sext i32 %4579 to i64
  %4581 = mul nsw i64 %4580, 76
  store i64 %4581, i64* %RCX.i1761, align 8
  %4582 = lshr i64 %4581, 63
  %4583 = add i64 %4581, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4583, i64* %RAX.i1763, align 8
  %4584 = icmp ult i64 %4583, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4585 = icmp ult i64 %4583, %4581
  %4586 = or i1 %4584, %4585
  %4587 = zext i1 %4586 to i8
  store i8 %4587, i8* %14, align 1
  %4588 = trunc i64 %4583 to i32
  %4589 = and i32 %4588, 252
  %4590 = tail call i32 @llvm.ctpop.i32(i32 %4589)
  %4591 = trunc i32 %4590 to i8
  %4592 = and i8 %4591, 1
  %4593 = xor i8 %4592, 1
  store i8 %4593, i8* %21, align 1
  %4594 = xor i64 %4581, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4595 = xor i64 %4594, %4583
  %4596 = lshr i64 %4595, 4
  %4597 = trunc i64 %4596 to i8
  %4598 = and i8 %4597, 1
  store i8 %4598, i8* %26, align 1
  %4599 = icmp eq i64 %4583, 0
  %4600 = zext i1 %4599 to i8
  store i8 %4600, i8* %29, align 1
  %4601 = lshr i64 %4583, 63
  %4602 = trunc i64 %4601 to i8
  store i8 %4602, i8* %32, align 1
  %4603 = xor i64 %4601, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4604 = xor i64 %4601, %4582
  %4605 = add nuw nsw i64 %4603, %4604
  %4606 = icmp eq i64 %4605, 2
  %4607 = zext i1 %4606 to i8
  store i8 %4607, i8* %38, align 1
  %4608 = add i64 %4581, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %4609 = add i64 %4577, 25
  store i64 %4609, i64* %3, align 8
  %4610 = inttoptr i64 %4608 to i32*
  %4611 = load i32, i32* %4610, align 4
  %4612 = sext i32 %4611 to i64
  store i64 %4612, i64* %RAX.i1763, align 8
  %4613 = add nsw i64 %4612, 12099168
  %4614 = add i64 %4577, 33
  store i64 %4614, i64* %3, align 8
  %4615 = inttoptr i64 %4613 to i8*
  %4616 = load i8, i8* %4615, align 1
  %4617 = zext i8 %4616 to i64
  store i64 %4617, i64* %RDX.i1736, align 8
  %4618 = zext i8 %4616 to i32
  %4619 = add nsw i32 %4618, -3
  %4620 = icmp ult i8 %4616, 3
  %4621 = zext i1 %4620 to i8
  store i8 %4621, i8* %14, align 1
  %4622 = and i32 %4619, 255
  %4623 = tail call i32 @llvm.ctpop.i32(i32 %4622)
  %4624 = trunc i32 %4623 to i8
  %4625 = and i8 %4624, 1
  %4626 = xor i8 %4625, 1
  store i8 %4626, i8* %21, align 1
  %4627 = xor i32 %4619, %4618
  %4628 = lshr i32 %4627, 4
  %4629 = trunc i32 %4628 to i8
  %4630 = and i8 %4629, 1
  store i8 %4630, i8* %26, align 1
  %4631 = icmp eq i32 %4619, 0
  %4632 = zext i1 %4631 to i8
  store i8 %4632, i8* %29, align 1
  %4633 = lshr i32 %4619, 31
  %4634 = trunc i32 %4633 to i8
  store i8 %4634, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v157 = select i1 %4631, i64 165, i64 42
  %4635 = add i64 %4577, %.v157
  store i64 %4635, i64* %3, align 8
  br i1 %4631, label %block_.L_44c277, label %block_44c1fc

block_44c1fc:                                     ; preds = %block_44c1d2
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %4636 = load i64, i64* %RBP.i, align 8
  %4637 = add i64 %4636, -8
  %4638 = add i64 %4635, 14
  store i64 %4638, i64* %3, align 8
  %4639 = inttoptr i64 %4637 to i32*
  %4640 = load i32, i32* %4639, align 4
  %4641 = sext i32 %4640 to i64
  %4642 = mul nsw i64 %4641, 76
  store i64 %4642, i64* %RCX.i1761, align 8
  %4643 = lshr i64 %4642, 63
  %4644 = add i64 %4642, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4644, i64* %RAX.i1763, align 8
  %4645 = icmp ult i64 %4644, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4646 = icmp ult i64 %4644, %4642
  %4647 = or i1 %4645, %4646
  %4648 = zext i1 %4647 to i8
  store i8 %4648, i8* %14, align 1
  %4649 = trunc i64 %4644 to i32
  %4650 = and i32 %4649, 252
  %4651 = tail call i32 @llvm.ctpop.i32(i32 %4650)
  %4652 = trunc i32 %4651 to i8
  %4653 = and i8 %4652, 1
  %4654 = xor i8 %4653, 1
  store i8 %4654, i8* %21, align 1
  %4655 = xor i64 %4642, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4656 = xor i64 %4655, %4644
  %4657 = lshr i64 %4656, 4
  %4658 = trunc i64 %4657 to i8
  %4659 = and i8 %4658, 1
  store i8 %4659, i8* %26, align 1
  %4660 = icmp eq i64 %4644, 0
  %4661 = zext i1 %4660 to i8
  store i8 %4661, i8* %29, align 1
  %4662 = lshr i64 %4644, 63
  %4663 = trunc i64 %4662 to i8
  store i8 %4663, i8* %32, align 1
  %4664 = xor i64 %4662, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4665 = xor i64 %4662, %4643
  %4666 = add nuw nsw i64 %4664, %4665
  %4667 = icmp eq i64 %4666, 2
  %4668 = zext i1 %4667 to i8
  store i8 %4668, i8* %38, align 1
  %4669 = add i64 %4642, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %4670 = add i64 %4635, 24
  store i64 %4670, i64* %3, align 8
  %4671 = inttoptr i64 %4669 to i32*
  %4672 = load i32, i32* %4671, align 4
  %4673 = zext i32 %4672 to i64
  store i64 %4673, i64* %RDI.i55, align 8
  %4674 = add i64 %4635, 27
  store i64 %4674, i64* %3, align 8
  %4675 = load i32, i32* %4639, align 4
  %4676 = zext i32 %4675 to i64
  store i64 %4676, i64* %RSI.i51, align 8
  %4677 = add i64 %4635, -96348
  %4678 = add i64 %4635, 32
  %4679 = load i64, i64* %6, align 8
  %4680 = add i64 %4679, -8
  %4681 = inttoptr i64 %4680 to i64*
  store i64 %4678, i64* %4681, align 8
  store i64 %4680, i64* %6, align 8
  store i64 %4677, i64* %3, align 8
  %call2_44c217 = tail call %struct.Memory* @sub_4349a0.add_owl_uncertain_defense_move(%struct.State* nonnull %0, i64 %4677, %struct.Memory* %MEMORY.0)
  %4682 = load i64, i64* %3, align 8
  %4683 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %4684 = and i32 %4683, 4
  %4685 = zext i32 %4684 to i64
  store i64 %4685, i64* %RSI.i51, align 8
  store i8 0, i8* %14, align 1
  %4686 = tail call i32 @llvm.ctpop.i32(i32 %4684)
  %4687 = trunc i32 %4686 to i8
  %4688 = xor i8 %4687, 1
  store i8 %4688, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit137 = lshr exact i32 %4684, 2
  %4689 = trunc i32 %.lobit137 to i8
  %4690 = xor i8 %4689, 1
  store i8 %4690, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %4691 = icmp eq i8 %4690, 0
  %.v158 = select i1 %4691, i64 24, i64 19
  %4692 = add i64 %4682, %.v158
  store i64 %4692, i64* %3, align 8
  br i1 %4691, label %block_.L_44c234, label %block_44c22f

block_44c22f:                                     ; preds = %block_44c1fc
  %4693 = add i64 %4692, 67
  store i64 %4693, i64* %3, align 8
  br label %block_.L_44c272

block_.L_44c234:                                  ; preds = %block_44c1fc
  store i64 ptrtoint (%G__0x57ec19_type* @G__0x57ec19 to i64), i64* %RDI.i55, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %4694 = load i64, i64* %RBP.i, align 8
  %4695 = add i64 %4694, -8
  %4696 = add i64 %4692, 24
  store i64 %4696, i64* %3, align 8
  %4697 = inttoptr i64 %4695 to i32*
  %4698 = load i32, i32* %4697, align 4
  %4699 = sext i32 %4698 to i64
  %4700 = mul nsw i64 %4699, 76
  store i64 %4700, i64* %RCX.i1761, align 8
  %4701 = lshr i64 %4700, 63
  %4702 = add i64 %4700, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4702, i64* %RAX.i1763, align 8
  %4703 = icmp ult i64 %4702, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4704 = icmp ult i64 %4702, %4700
  %4705 = or i1 %4703, %4704
  %4706 = zext i1 %4705 to i8
  store i8 %4706, i8* %14, align 1
  %4707 = trunc i64 %4702 to i32
  %4708 = and i32 %4707, 252
  %4709 = tail call i32 @llvm.ctpop.i32(i32 %4708)
  %4710 = trunc i32 %4709 to i8
  %4711 = and i8 %4710, 1
  %4712 = xor i8 %4711, 1
  store i8 %4712, i8* %21, align 1
  %4713 = xor i64 %4700, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4714 = xor i64 %4713, %4702
  %4715 = lshr i64 %4714, 4
  %4716 = trunc i64 %4715 to i8
  %4717 = and i8 %4716, 1
  store i8 %4717, i8* %26, align 1
  %4718 = icmp eq i64 %4702, 0
  %4719 = zext i1 %4718 to i8
  store i8 %4719, i8* %29, align 1
  %4720 = lshr i64 %4702, 63
  %4721 = trunc i64 %4720 to i8
  store i8 %4721, i8* %32, align 1
  %4722 = xor i64 %4720, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4723 = xor i64 %4720, %4701
  %4724 = add nuw nsw i64 %4722, %4723
  %4725 = icmp eq i64 %4724, 2
  %4726 = zext i1 %4725 to i8
  store i8 %4726, i8* %38, align 1
  %4727 = add i64 %4700, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 48)
  %4728 = add i64 %4692, 34
  store i64 %4728, i64* %3, align 8
  %4729 = inttoptr i64 %4727 to i32*
  %4730 = load i32, i32* %4729, align 4
  %4731 = zext i32 %4730 to i64
  store i64 %4731, i64* %RSI.i51, align 8
  %4732 = add i64 %4692, 37
  store i64 %4732, i64* %3, align 8
  %4733 = load i32, i32* %4697, align 4
  %4734 = zext i32 %4733 to i64
  store i64 %4734, i64* %RDX.i1736, align 8
  %4735 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %4736 = add i32 %4735, 1
  %4737 = zext i32 %4736 to i64
  store i64 %4737, i64* %51, align 8
  %4738 = icmp eq i32 %4735, -1
  %4739 = icmp eq i32 %4736, 0
  %4740 = or i1 %4738, %4739
  %4741 = zext i1 %4740 to i8
  store i8 %4741, i8* %14, align 1
  %4742 = and i32 %4736, 255
  %4743 = tail call i32 @llvm.ctpop.i32(i32 %4742)
  %4744 = trunc i32 %4743 to i8
  %4745 = and i8 %4744, 1
  %4746 = xor i8 %4745, 1
  store i8 %4746, i8* %21, align 1
  %4747 = xor i32 %4736, %4735
  %4748 = lshr i32 %4747, 4
  %4749 = trunc i32 %4748 to i8
  %4750 = and i8 %4749, 1
  store i8 %4750, i8* %26, align 1
  %4751 = zext i1 %4739 to i8
  store i8 %4751, i8* %29, align 1
  %4752 = lshr i32 %4736, 31
  %4753 = trunc i32 %4752 to i8
  store i8 %4753, i8* %32, align 1
  %4754 = lshr i32 %4735, 31
  %4755 = xor i32 %4752, %4754
  %4756 = add nuw nsw i32 %4755, %4752
  %4757 = icmp eq i32 %4756, 2
  %4758 = zext i1 %4757 to i8
  store i8 %4758, i8* %38, align 1
  store i64 %4737, i64* %RCX.i1761, align 8
  store i8 0, i8* %AL.i, align 1
  %4759 = add i64 %4692, 23420
  %4760 = add i64 %4692, 59
  %4761 = load i64, i64* %6, align 8
  %4762 = add i64 %4761, -8
  %4763 = inttoptr i64 %4762 to i64*
  store i64 %4760, i64* %4763, align 8
  store i64 %4762, i64* %6, align 8
  store i64 %4759, i64* %3, align 8
  %call2_44c26a = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %4759, %struct.Memory* %MEMORY.0)
  %4764 = load i64, i64* %RBP.i, align 8
  %4765 = add i64 %4764, -92
  %4766 = load i32, i32* %EAX.i, align 4
  %4767 = load i64, i64* %3, align 8
  %4768 = add i64 %4767, 3
  store i64 %4768, i64* %3, align 8
  %4769 = inttoptr i64 %4765 to i32*
  store i32 %4766, i32* %4769, align 4
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_44c272

block_.L_44c272:                                  ; preds = %block_.L_44c234, %block_44c22f
  %4770 = phi i64 [ %.pre121, %block_.L_44c234 ], [ %4693, %block_44c22f ]
  %4771 = add i64 %4770, 5
  store i64 %4771, i64* %3, align 8
  br label %block_.L_44c277

block_.L_44c277:                                  ; preds = %block_44c194, %block_.L_44c17f, %block_.L_44c272, %block_44c1d2, %block_44c1b3
  %4772 = phi i64 [ %4771, %block_.L_44c272 ], [ %4635, %block_44c1d2 ], [ %4577, %block_44c1b3 ], [ %4533, %block_44c194 ], [ %4489, %block_.L_44c17f ]
  %4773 = add i64 %4772, 5
  store i64 %4773, i64* %3, align 8
  br label %block_.L_44c27c

block_.L_44c27c:                                  ; preds = %block_.L_44c277, %block_.L_44c17a
  %storemerge88 = phi i64 [ %4450, %block_.L_44c17a ], [ %4773, %block_.L_44c277 ]
  %4774 = add i64 %storemerge88, 5
  store i64 %4774, i64* %3, align 8
  br label %block_.L_44c281

block_.L_44c281:                                  ; preds = %block_.L_44c27c, %block_.L_44c05d
  %storemerge86 = phi i64 [ %4035, %block_.L_44c05d ], [ %4774, %block_.L_44c27c ]
  %4775 = add i64 %storemerge86, 5
  store i64 %4775, i64* %3, align 8
  br label %block_.L_44c286

block_.L_44c286:                                  ; preds = %block_.L_44c281, %block_.L_44bf7e
  %storemerge84 = phi i64 [ %3723, %block_.L_44bf7e ], [ %4775, %block_.L_44c281 ]
  %4776 = add i64 %storemerge84, 5
  store i64 %4776, i64* %3, align 8
  br label %block_.L_44c28b

block_.L_44c28b:                                  ; preds = %block_.L_44c286, %block_.L_44be98
  %storemerge81 = phi i64 [ %3409, %block_.L_44be98 ], [ %4776, %block_.L_44c286 ]
  %MEMORY.42 = phi %struct.Memory* [ %MEMORY.29, %block_.L_44be98 ], [ %MEMORY.0, %block_.L_44c286 ]
  %4777 = add i64 %storemerge81, 265
  br label %block_.L_44c394

block_.L_44c290:                                  ; preds = %block_.L_44bcd7
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %4778 = load i64, i64* %RBP.i, align 8
  %4779 = add i64 %4778, -8
  %4780 = add i64 %2890, 14
  store i64 %4780, i64* %3, align 8
  %4781 = inttoptr i64 %4779 to i32*
  %4782 = load i32, i32* %4781, align 4
  %4783 = sext i32 %4782 to i64
  %4784 = mul nsw i64 %4783, 76
  store i64 %4784, i64* %RCX.i1761, align 8
  %4785 = lshr i64 %4784, 63
  %4786 = add i64 %4784, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4786, i64* %RAX.i1763, align 8
  %4787 = icmp ult i64 %4786, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4788 = icmp ult i64 %4786, %4784
  %4789 = or i1 %4787, %4788
  %4790 = zext i1 %4789 to i8
  store i8 %4790, i8* %14, align 1
  %4791 = trunc i64 %4786 to i32
  %4792 = and i32 %4791, 252
  %4793 = tail call i32 @llvm.ctpop.i32(i32 %4792)
  %4794 = trunc i32 %4793 to i8
  %4795 = and i8 %4794, 1
  %4796 = xor i8 %4795, 1
  store i8 %4796, i8* %21, align 1
  %4797 = xor i64 %4784, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4798 = xor i64 %4797, %4786
  %4799 = lshr i64 %4798, 4
  %4800 = trunc i64 %4799 to i8
  %4801 = and i8 %4800, 1
  store i8 %4801, i8* %26, align 1
  %4802 = icmp eq i64 %4786, 0
  %4803 = zext i1 %4802 to i8
  store i8 %4803, i8* %29, align 1
  %4804 = lshr i64 %4786, 63
  %4805 = trunc i64 %4804 to i8
  store i8 %4805, i8* %32, align 1
  %4806 = xor i64 %4804, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4807 = xor i64 %4804, %4785
  %4808 = add nuw nsw i64 %4806, %4807
  %4809 = icmp eq i64 %4808, 2
  %4810 = zext i1 %4809 to i8
  store i8 %4810, i8* %38, align 1
  %4811 = add i64 %4784, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 28)
  %4812 = add i64 %2890, 25
  store i64 %4812, i64* %3, align 8
  %4813 = inttoptr i64 %4811 to i32*
  %4814 = load i32, i32* %4813, align 4
  store i8 0, i8* %14, align 1
  %4815 = and i32 %4814, 255
  %4816 = tail call i32 @llvm.ctpop.i32(i32 %4815)
  %4817 = trunc i32 %4816 to i8
  %4818 = and i8 %4817, 1
  %4819 = xor i8 %4818, 1
  store i8 %4819, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4820 = icmp eq i32 %4814, 0
  %4821 = zext i1 %4820 to i8
  store i8 %4821, i8* %29, align 1
  %4822 = lshr i32 %4814, 31
  %4823 = trunc i32 %4822 to i8
  store i8 %4823, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v145 = select i1 %4820, i64 31, i64 255
  %4824 = add i64 %2890, %.v145
  store i64 %4824, i64* %3, align 8
  br i1 %4820, label %block_44c2af, label %block_.L_44c38f

block_44c2af:                                     ; preds = %block_.L_44c290
  store i64 3, i64* %RAX.i1763, align 8
  %4825 = add i64 %4824, 9
  store i64 %4825, i64* %3, align 8
  %4826 = load i32, i32* %4781, align 4
  %4827 = sext i32 %4826 to i64
  store i64 %4827, i64* %RCX.i1761, align 8
  %4828 = add nsw i64 %4827, 12099168
  %4829 = add i64 %4824, 17
  store i64 %4829, i64* %3, align 8
  %4830 = inttoptr i64 %4828 to i8*
  %4831 = load i8, i8* %4830, align 1
  %4832 = zext i8 %4831 to i64
  store i64 %4832, i64* %RDX.i1736, align 8
  %4833 = add i64 %4778, -4
  %4834 = add i64 %4824, 20
  store i64 %4834, i64* %3, align 8
  %4835 = inttoptr i64 %4833 to i32*
  %4836 = load i32, i32* %4835, align 4
  %4837 = sub i32 3, %4836
  %4838 = zext i32 %4837 to i64
  store i64 %4838, i64* %RAX.i1763, align 8
  %4839 = lshr i32 %4837, 31
  %4840 = zext i8 %4831 to i32
  %4841 = sub i32 %4840, %4837
  %4842 = icmp ult i32 %4840, %4837
  %4843 = zext i1 %4842 to i8
  store i8 %4843, i8* %14, align 1
  %4844 = and i32 %4841, 255
  %4845 = tail call i32 @llvm.ctpop.i32(i32 %4844)
  %4846 = trunc i32 %4845 to i8
  %4847 = and i8 %4846, 1
  %4848 = xor i8 %4847, 1
  store i8 %4848, i8* %21, align 1
  %4849 = xor i32 %4837, %4840
  %4850 = xor i32 %4849, %4841
  %4851 = lshr i32 %4850, 4
  %4852 = trunc i32 %4851 to i8
  %4853 = and i8 %4852, 1
  store i8 %4853, i8* %26, align 1
  %4854 = icmp eq i32 %4841, 0
  %4855 = zext i1 %4854 to i8
  store i8 %4855, i8* %29, align 1
  %4856 = lshr i32 %4841, 31
  %4857 = trunc i32 %4856 to i8
  store i8 %4857, i8* %32, align 1
  %4858 = add nuw nsw i32 %4856, %4839
  %4859 = icmp eq i32 %4858, 2
  %4860 = zext i1 %4859 to i8
  store i8 %4860, i8* %38, align 1
  %.v146 = select i1 %4854, i64 28, i64 224
  %4861 = add i64 %4824, %.v146
  store i64 %4861, i64* %3, align 8
  br i1 %4854, label %block_44c2cb, label %block_.L_44c38f

block_44c2cb:                                     ; preds = %block_44c2af
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %4862 = add i64 %4861, 14
  store i64 %4862, i64* %3, align 8
  %4863 = load i32, i32* %4781, align 4
  %4864 = sext i32 %4863 to i64
  %4865 = mul nsw i64 %4864, 76
  store i64 %4865, i64* %RCX.i1761, align 8
  %4866 = lshr i64 %4865, 63
  %4867 = add i64 %4865, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4867, i64* %RAX.i1763, align 8
  %4868 = icmp ult i64 %4867, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4869 = icmp ult i64 %4867, %4865
  %4870 = or i1 %4868, %4869
  %4871 = zext i1 %4870 to i8
  store i8 %4871, i8* %14, align 1
  %4872 = trunc i64 %4867 to i32
  %4873 = and i32 %4872, 252
  %4874 = tail call i32 @llvm.ctpop.i32(i32 %4873)
  %4875 = trunc i32 %4874 to i8
  %4876 = and i8 %4875, 1
  %4877 = xor i8 %4876, 1
  store i8 %4877, i8* %21, align 1
  %4878 = xor i64 %4865, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4879 = xor i64 %4878, %4867
  %4880 = lshr i64 %4879, 4
  %4881 = trunc i64 %4880 to i8
  %4882 = and i8 %4881, 1
  store i8 %4882, i8* %26, align 1
  %4883 = icmp eq i64 %4867, 0
  %4884 = zext i1 %4883 to i8
  store i8 %4884, i8* %29, align 1
  %4885 = lshr i64 %4867, 63
  %4886 = trunc i64 %4885 to i8
  store i8 %4886, i8* %32, align 1
  %4887 = xor i64 %4885, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4888 = xor i64 %4885, %4866
  %4889 = add nuw nsw i64 %4887, %4888
  %4890 = icmp eq i64 %4889, 2
  %4891 = zext i1 %4890 to i8
  store i8 %4891, i8* %38, align 1
  %4892 = add i64 %4865, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 40)
  %4893 = add i64 %4861, 25
  store i64 %4893, i64* %3, align 8
  %4894 = inttoptr i64 %4892 to i32*
  %4895 = load i32, i32* %4894, align 4
  store i8 0, i8* %14, align 1
  %4896 = and i32 %4895, 255
  %4897 = tail call i32 @llvm.ctpop.i32(i32 %4896)
  %4898 = trunc i32 %4897 to i8
  %4899 = and i8 %4898, 1
  %4900 = xor i8 %4899, 1
  store i8 %4900, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4901 = icmp eq i32 %4895, 0
  %4902 = zext i1 %4901 to i8
  store i8 %4902, i8* %29, align 1
  %4903 = lshr i32 %4895, 31
  %4904 = trunc i32 %4903 to i8
  store i8 %4904, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v147 = select i1 %4901, i64 31, i64 196
  %4905 = add i64 %4861, %.v147
  store i64 %4905, i64* %3, align 8
  br i1 %4901, label %block_44c2ea, label %block_.L_44c38f

block_44c2ea:                                     ; preds = %block_44c2cb
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %4906 = add i64 %4905, 14
  store i64 %4906, i64* %3, align 8
  %4907 = load i32, i32* %4781, align 4
  %4908 = sext i32 %4907 to i64
  %4909 = mul nsw i64 %4908, 76
  store i64 %4909, i64* %RCX.i1761, align 8
  %4910 = lshr i64 %4909, 63
  %4911 = add i64 %4909, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4911, i64* %RAX.i1763, align 8
  %4912 = icmp ult i64 %4911, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4913 = icmp ult i64 %4911, %4909
  %4914 = or i1 %4912, %4913
  %4915 = zext i1 %4914 to i8
  store i8 %4915, i8* %14, align 1
  %4916 = trunc i64 %4911 to i32
  %4917 = and i32 %4916, 252
  %4918 = tail call i32 @llvm.ctpop.i32(i32 %4917)
  %4919 = trunc i32 %4918 to i8
  %4920 = and i8 %4919, 1
  %4921 = xor i8 %4920, 1
  store i8 %4921, i8* %21, align 1
  %4922 = xor i64 %4909, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4923 = xor i64 %4922, %4911
  %4924 = lshr i64 %4923, 4
  %4925 = trunc i64 %4924 to i8
  %4926 = and i8 %4925, 1
  store i8 %4926, i8* %26, align 1
  %4927 = icmp eq i64 %4911, 0
  %4928 = zext i1 %4927 to i8
  store i8 %4928, i8* %29, align 1
  %4929 = lshr i64 %4911, 63
  %4930 = trunc i64 %4929 to i8
  store i8 %4930, i8* %32, align 1
  %4931 = xor i64 %4929, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4932 = xor i64 %4929, %4910
  %4933 = add nuw nsw i64 %4931, %4932
  %4934 = icmp eq i64 %4933, 2
  %4935 = zext i1 %4934 to i8
  store i8 %4935, i8* %38, align 1
  %4936 = add i64 %4909, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %4937 = add i64 %4905, 25
  store i64 %4937, i64* %3, align 8
  %4938 = inttoptr i64 %4936 to i32*
  %4939 = load i32, i32* %4938, align 4
  %4940 = sext i32 %4939 to i64
  store i64 %4940, i64* %RAX.i1763, align 8
  %4941 = add nsw i64 %4940, 12099168
  %4942 = add i64 %4905, 33
  store i64 %4942, i64* %3, align 8
  %4943 = inttoptr i64 %4941 to i8*
  %4944 = load i8, i8* %4943, align 1
  %4945 = zext i8 %4944 to i64
  store i64 %4945, i64* %RDX.i1736, align 8
  %4946 = zext i8 %4944 to i32
  %4947 = add nsw i32 %4946, -3
  %4948 = icmp ult i8 %4944, 3
  %4949 = zext i1 %4948 to i8
  store i8 %4949, i8* %14, align 1
  %4950 = and i32 %4947, 255
  %4951 = tail call i32 @llvm.ctpop.i32(i32 %4950)
  %4952 = trunc i32 %4951 to i8
  %4953 = and i8 %4952, 1
  %4954 = xor i8 %4953, 1
  store i8 %4954, i8* %21, align 1
  %4955 = xor i32 %4947, %4946
  %4956 = lshr i32 %4955, 4
  %4957 = trunc i32 %4956 to i8
  %4958 = and i8 %4957, 1
  store i8 %4958, i8* %26, align 1
  %4959 = icmp eq i32 %4947, 0
  %4960 = zext i1 %4959 to i8
  store i8 %4960, i8* %29, align 1
  %4961 = lshr i32 %4947, 31
  %4962 = trunc i32 %4961 to i8
  store i8 %4962, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v148 = select i1 %4959, i64 165, i64 42
  %4963 = add i64 %4905, %.v148
  store i64 %4963, i64* %3, align 8
  br i1 %4959, label %block_.L_44c38f, label %block_44c314

block_44c314:                                     ; preds = %block_44c2ea
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %4964 = load i64, i64* %RBP.i, align 8
  %4965 = add i64 %4964, -8
  %4966 = add i64 %4963, 14
  store i64 %4966, i64* %3, align 8
  %4967 = inttoptr i64 %4965 to i32*
  %4968 = load i32, i32* %4967, align 4
  %4969 = sext i32 %4968 to i64
  %4970 = mul nsw i64 %4969, 76
  store i64 %4970, i64* %RCX.i1761, align 8
  %4971 = lshr i64 %4970, 63
  %4972 = add i64 %4970, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %4972, i64* %RAX.i1763, align 8
  %4973 = icmp ult i64 %4972, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4974 = icmp ult i64 %4972, %4970
  %4975 = or i1 %4973, %4974
  %4976 = zext i1 %4975 to i8
  store i8 %4976, i8* %14, align 1
  %4977 = trunc i64 %4972 to i32
  %4978 = and i32 %4977, 252
  %4979 = tail call i32 @llvm.ctpop.i32(i32 %4978)
  %4980 = trunc i32 %4979 to i8
  %4981 = and i8 %4980, 1
  %4982 = xor i8 %4981, 1
  store i8 %4982, i8* %21, align 1
  %4983 = xor i64 %4970, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %4984 = xor i64 %4983, %4972
  %4985 = lshr i64 %4984, 4
  %4986 = trunc i64 %4985 to i8
  %4987 = and i8 %4986, 1
  store i8 %4987, i8* %26, align 1
  %4988 = icmp eq i64 %4972, 0
  %4989 = zext i1 %4988 to i8
  store i8 %4989, i8* %29, align 1
  %4990 = lshr i64 %4972, 63
  %4991 = trunc i64 %4990 to i8
  store i8 %4991, i8* %32, align 1
  %4992 = xor i64 %4990, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %4993 = xor i64 %4990, %4971
  %4994 = add nuw nsw i64 %4992, %4993
  %4995 = icmp eq i64 %4994, 2
  %4996 = zext i1 %4995 to i8
  store i8 %4996, i8* %38, align 1
  %4997 = add i64 %4970, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %4998 = add i64 %4963, 24
  store i64 %4998, i64* %3, align 8
  %4999 = inttoptr i64 %4997 to i32*
  %5000 = load i32, i32* %4999, align 4
  %5001 = zext i32 %5000 to i64
  store i64 %5001, i64* %RDI.i55, align 8
  %5002 = add i64 %4963, 27
  store i64 %5002, i64* %3, align 8
  %5003 = load i32, i32* %4967, align 4
  %5004 = zext i32 %5003 to i64
  store i64 %5004, i64* %RSI.i51, align 8
  %5005 = add i64 %4963, -96628
  %5006 = add i64 %4963, 32
  %5007 = load i64, i64* %6, align 8
  %5008 = add i64 %5007, -8
  %5009 = inttoptr i64 %5008 to i64*
  store i64 %5006, i64* %5009, align 8
  store i64 %5008, i64* %6, align 8
  store i64 %5005, i64* %3, align 8
  %call2_44c32f = tail call %struct.Memory* @sub_4349a0.add_owl_uncertain_defense_move(%struct.State* nonnull %0, i64 %5005, %struct.Memory* %MEMORY.0)
  %5010 = load i64, i64* %3, align 8
  %5011 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %5012 = and i32 %5011, 4
  %5013 = zext i32 %5012 to i64
  store i64 %5013, i64* %RSI.i51, align 8
  store i8 0, i8* %14, align 1
  %5014 = tail call i32 @llvm.ctpop.i32(i32 %5012)
  %5015 = trunc i32 %5014 to i8
  %5016 = xor i8 %5015, 1
  store i8 %5016, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit138 = lshr exact i32 %5012, 2
  %5017 = trunc i32 %.lobit138 to i8
  %5018 = xor i8 %5017, 1
  store i8 %5018, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %5019 = icmp eq i8 %5018, 0
  %.v149 = select i1 %5019, i64 24, i64 19
  %5020 = add i64 %5010, %.v149
  store i64 %5020, i64* %3, align 8
  br i1 %5019, label %block_.L_44c34c, label %block_44c347

block_44c347:                                     ; preds = %block_44c314
  %5021 = add i64 %5020, 67
  store i64 %5021, i64* %3, align 8
  br label %block_.L_44c38a

block_.L_44c34c:                                  ; preds = %block_44c314
  store i64 ptrtoint (%G__0x57ec52_type* @G__0x57ec52 to i64), i64* %RDI.i55, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1763, align 8
  %5022 = load i64, i64* %RBP.i, align 8
  %5023 = add i64 %5022, -8
  %5024 = add i64 %5020, 24
  store i64 %5024, i64* %3, align 8
  %5025 = inttoptr i64 %5023 to i32*
  %5026 = load i32, i32* %5025, align 4
  %5027 = sext i32 %5026 to i64
  %5028 = mul nsw i64 %5027, 76
  store i64 %5028, i64* %RCX.i1761, align 8
  %5029 = lshr i64 %5028, 63
  %5030 = add i64 %5028, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %5030, i64* %RAX.i1763, align 8
  %5031 = icmp ult i64 %5030, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %5032 = icmp ult i64 %5030, %5028
  %5033 = or i1 %5031, %5032
  %5034 = zext i1 %5033 to i8
  store i8 %5034, i8* %14, align 1
  %5035 = trunc i64 %5030 to i32
  %5036 = and i32 %5035, 252
  %5037 = tail call i32 @llvm.ctpop.i32(i32 %5036)
  %5038 = trunc i32 %5037 to i8
  %5039 = and i8 %5038, 1
  %5040 = xor i8 %5039, 1
  store i8 %5040, i8* %21, align 1
  %5041 = xor i64 %5028, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %5042 = xor i64 %5041, %5030
  %5043 = lshr i64 %5042, 4
  %5044 = trunc i64 %5043 to i8
  %5045 = and i8 %5044, 1
  store i8 %5045, i8* %26, align 1
  %5046 = icmp eq i64 %5030, 0
  %5047 = zext i1 %5046 to i8
  store i8 %5047, i8* %29, align 1
  %5048 = lshr i64 %5030, 63
  %5049 = trunc i64 %5048 to i8
  store i8 %5049, i8* %32, align 1
  %5050 = xor i64 %5048, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %5051 = xor i64 %5048, %5029
  %5052 = add nuw nsw i64 %5050, %5051
  %5053 = icmp eq i64 %5052, 2
  %5054 = zext i1 %5053 to i8
  store i8 %5054, i8* %38, align 1
  %5055 = add i64 %5028, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 32)
  %5056 = add i64 %5020, 34
  store i64 %5056, i64* %3, align 8
  %5057 = inttoptr i64 %5055 to i32*
  %5058 = load i32, i32* %5057, align 4
  %5059 = zext i32 %5058 to i64
  store i64 %5059, i64* %RSI.i51, align 8
  %5060 = add i64 %5020, 37
  store i64 %5060, i64* %3, align 8
  %5061 = load i32, i32* %5025, align 4
  %5062 = zext i32 %5061 to i64
  store i64 %5062, i64* %RDX.i1736, align 8
  %5063 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %5064 = add i32 %5063, 1
  %5065 = zext i32 %5064 to i64
  store i64 %5065, i64* %51, align 8
  %5066 = icmp eq i32 %5063, -1
  %5067 = icmp eq i32 %5064, 0
  %5068 = or i1 %5066, %5067
  %5069 = zext i1 %5068 to i8
  store i8 %5069, i8* %14, align 1
  %5070 = and i32 %5064, 255
  %5071 = tail call i32 @llvm.ctpop.i32(i32 %5070)
  %5072 = trunc i32 %5071 to i8
  %5073 = and i8 %5072, 1
  %5074 = xor i8 %5073, 1
  store i8 %5074, i8* %21, align 1
  %5075 = xor i32 %5064, %5063
  %5076 = lshr i32 %5075, 4
  %5077 = trunc i32 %5076 to i8
  %5078 = and i8 %5077, 1
  store i8 %5078, i8* %26, align 1
  %5079 = zext i1 %5067 to i8
  store i8 %5079, i8* %29, align 1
  %5080 = lshr i32 %5064, 31
  %5081 = trunc i32 %5080 to i8
  store i8 %5081, i8* %32, align 1
  %5082 = lshr i32 %5063, 31
  %5083 = xor i32 %5080, %5082
  %5084 = add nuw nsw i32 %5083, %5080
  %5085 = icmp eq i32 %5084, 2
  %5086 = zext i1 %5085 to i8
  store i8 %5086, i8* %38, align 1
  store i64 %5065, i64* %RCX.i1761, align 8
  store i8 0, i8* %AL.i, align 1
  %5087 = add i64 %5020, 23140
  %5088 = add i64 %5020, 59
  %5089 = load i64, i64* %6, align 8
  %5090 = add i64 %5089, -8
  %5091 = inttoptr i64 %5090 to i64*
  store i64 %5088, i64* %5091, align 8
  store i64 %5090, i64* %6, align 8
  store i64 %5087, i64* %3, align 8
  %call2_44c382 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %5087, %struct.Memory* %MEMORY.0)
  %5092 = load i64, i64* %RBP.i, align 8
  %5093 = add i64 %5092, -96
  %5094 = load i32, i32* %EAX.i, align 4
  %5095 = load i64, i64* %3, align 8
  %5096 = add i64 %5095, 3
  store i64 %5096, i64* %3, align 8
  %5097 = inttoptr i64 %5093 to i32*
  store i32 %5094, i32* %5097, align 4
  %.pre122 = load i64, i64* %3, align 8
  br label %block_.L_44c38a

block_.L_44c38a:                                  ; preds = %block_.L_44c34c, %block_44c347
  %5098 = phi i64 [ %.pre122, %block_.L_44c34c ], [ %5021, %block_44c347 ]
  %5099 = add i64 %5098, 5
  store i64 %5099, i64* %3, align 8
  br label %block_.L_44c38f

block_.L_44c38f:                                  ; preds = %block_44c2cb, %block_44c2af, %block_.L_44c290, %block_.L_44c38a, %block_44c2ea
  %5100 = phi i64 [ %5099, %block_.L_44c38a ], [ %4963, %block_44c2ea ], [ %4905, %block_44c2cb ], [ %4861, %block_44c2af ], [ %4824, %block_.L_44c290 ]
  %5101 = add i64 %5100, 5
  store i64 %5101, i64* %3, align 8
  br label %block_.L_44c394

block_.L_44c394:                                  ; preds = %block_.L_44c38f, %block_.L_44c28b
  %storemerge82 = phi i64 [ %4777, %block_.L_44c28b ], [ %5101, %block_.L_44c38f ]
  %MEMORY.45 = phi %struct.Memory* [ %MEMORY.42, %block_.L_44c28b ], [ %MEMORY.0, %block_.L_44c38f ]
  %5102 = add i64 %storemerge82, 5
  store i64 %5102, i64* %3, align 8
  br label %block_.L_44c399

block_.L_44c399:                                  ; preds = %block_.L_44c394, %block_.L_44bcd2
  %storemerge78 = phi i64 [ %2830, %block_.L_44bcd2 ], [ %5102, %block_.L_44c394 ]
  %MEMORY.46 = phi %struct.Memory* [ %MEMORY.24, %block_.L_44bcd2 ], [ %MEMORY.45, %block_.L_44c394 ]
  %5103 = add i64 %storemerge78, 5
  store i64 %5103, i64* %3, align 8
  br label %block_.L_44c39e

block_.L_44c39e:                                  ; preds = %block_.L_44c399, %block_.L_44ba29
  %storemerge69 = phi i64 [ %1958, %block_.L_44ba29 ], [ %5103, %block_.L_44c399 ]
  %MEMORY.47 = phi %struct.Memory* [ %MEMORY.17, %block_.L_44ba29 ], [ %MEMORY.46, %block_.L_44c399 ]
  %5104 = add i64 %storemerge69, 5
  br label %block_.L_44c3a3

block_.L_44c3a3:                                  ; preds = %block_.L_44c39e, %block_.L_44b900, %block_.L_44b51a
  %.sink = phi i64 [ %5104, %block_.L_44c39e ], [ %1712, %block_.L_44b900 ], [ %198, %block_.L_44b51a ]
  %MEMORY.48 = phi %struct.Memory* [ %MEMORY.47, %block_.L_44c39e ], [ %MEMORY.11, %block_.L_44b900 ], [ %MEMORY.0, %block_.L_44b51a ]
  %5105 = load i64, i64* %RBP.i, align 8
  %5106 = add i64 %5105, -8
  %5107 = add i64 %.sink, 3
  store i64 %5107, i64* %3, align 8
  %5108 = inttoptr i64 %5106 to i32*
  %5109 = load i32, i32* %5108, align 4
  %5110 = add i32 %5109, 1
  %5111 = zext i32 %5110 to i64
  store i64 %5111, i64* %RAX.i1763, align 8
  %5112 = icmp eq i32 %5109, -1
  %5113 = icmp eq i32 %5110, 0
  %5114 = or i1 %5112, %5113
  %5115 = zext i1 %5114 to i8
  store i8 %5115, i8* %14, align 1
  %5116 = and i32 %5110, 255
  %5117 = tail call i32 @llvm.ctpop.i32(i32 %5116)
  %5118 = trunc i32 %5117 to i8
  %5119 = and i8 %5118, 1
  %5120 = xor i8 %5119, 1
  store i8 %5120, i8* %21, align 1
  %5121 = xor i32 %5110, %5109
  %5122 = lshr i32 %5121, 4
  %5123 = trunc i32 %5122 to i8
  %5124 = and i8 %5123, 1
  store i8 %5124, i8* %26, align 1
  %5125 = zext i1 %5113 to i8
  store i8 %5125, i8* %29, align 1
  %5126 = lshr i32 %5110, 31
  %5127 = trunc i32 %5126 to i8
  store i8 %5127, i8* %32, align 1
  %5128 = lshr i32 %5109, 31
  %5129 = xor i32 %5126, %5128
  %5130 = add nuw nsw i32 %5129, %5126
  %5131 = icmp eq i32 %5130, 2
  %5132 = zext i1 %5131 to i8
  store i8 %5132, i8* %38, align 1
  %5133 = add i64 %.sink, 9
  store i64 %5133, i64* %3, align 8
  store i32 %5110, i32* %5108, align 4
  %5134 = load i64, i64* %3, align 8
  %5135 = add i64 %5134, -3818
  store i64 %5135, i64* %3, align 8
  br label %block_.L_44b4c2

block_.L_44c3b1:                                  ; preds = %block_.L_44b4c2
  %5136 = load i64, i64* %6, align 8
  %5137 = add i64 %5136, 96
  store i64 %5137, i64* %6, align 8
  %5138 = icmp ugt i64 %5136, -97
  %5139 = zext i1 %5138 to i8
  store i8 %5139, i8* %14, align 1
  %5140 = trunc i64 %5137 to i32
  %5141 = and i32 %5140, 255
  %5142 = tail call i32 @llvm.ctpop.i32(i32 %5141)
  %5143 = trunc i32 %5142 to i8
  %5144 = and i8 %5143, 1
  %5145 = xor i8 %5144, 1
  store i8 %5145, i8* %21, align 1
  %5146 = xor i64 %5137, %5136
  %5147 = lshr i64 %5146, 4
  %5148 = trunc i64 %5147 to i8
  %5149 = and i8 %5148, 1
  store i8 %5149, i8* %26, align 1
  %5150 = icmp eq i64 %5137, 0
  %5151 = zext i1 %5150 to i8
  store i8 %5151, i8* %29, align 1
  %5152 = lshr i64 %5137, 63
  %5153 = trunc i64 %5152 to i8
  store i8 %5153, i8* %32, align 1
  %5154 = lshr i64 %5136, 63
  %5155 = xor i64 %5152, %5154
  %5156 = add nuw nsw i64 %5155, %5152
  %5157 = icmp eq i64 %5156, 2
  %5158 = zext i1 %5157 to i8
  store i8 %5158, i8* %38, align 1
  %5159 = add i64 %92, 5
  store i64 %5159, i64* %3, align 8
  %5160 = add i64 %5136, 104
  %5161 = inttoptr i64 %5137 to i64*
  %5162 = load i64, i64* %5161, align 8
  store i64 %5162, i64* %RBP.i, align 8
  store i64 %5160, i64* %6, align 8
  %5163 = add i64 %92, 6
  store i64 %5163, i64* %3, align 8
  %5164 = inttoptr i64 %5160 to i64*
  %5165 = load i64, i64* %5164, align 8
  store i64 %5165, i64* %3, align 8
  %5166 = add i64 %5136, 112
  store i64 %5166, i64* %6, align 8
  ret %struct.Memory* %MEMORY.0
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
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -400
  %10 = icmp ult i32 %8, 400
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
define %struct.Memory* @routine_jge_.L_44c3b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
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
define %struct.Memory* @routine_je_.L_44b51a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %10 = mul nsw i128 %9, 76
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
define %struct.Memory* @routine_je_.L_44b51f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44c3a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
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
define %struct.Memory* @routine_jne_.L_44ba2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_je_.L_44ba2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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
define %struct.Memory* @routine_jne_.L_44b6d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x30__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_je_.L_44b6cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__0x34__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
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
define %struct.Memory* @routine_jne_.L_44b63c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x30__rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_movl_0x48__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
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
define %struct.Memory* @routine_callq_.add_loss_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 2
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jne_.L_44b5f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44b637(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57ea8e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57ea8e_type* @G__0x57ea8e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x30__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl_0xafdfb0___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, -1
  %11 = icmp eq i32 %8, 0
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %8, %5
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = zext i1 %11 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_44b6c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x34__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 52
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
define %struct.Memory* @routine_callq_.add_owl_defense_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44b685(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44b6c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57eab9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57eab9_type* @G__0x57eab9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b6cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44ba29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x97a7e__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x97a7e__rip__type* @G_0x97a7e__rip_ to i64)
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
define %struct.Memory* @routine_movl_0x20__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 32
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

define %struct.Memory* @routine_ucomiss_0x10__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
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
define %struct.Memory* @routine_jbe_.L_44b939(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movq_0xab0fe0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
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
define %struct.Memory* @routine_imulq__0x4c___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %10 = mul nsw i128 %9, 76
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
define %struct.Memory* @routine_addq__rsi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 104
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x2c__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, 44
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
define %struct.Memory* @routine_jge_.L_44b88f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
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
define %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 76
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x4__rsi____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 104
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rcx__rdx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 4
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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
define %struct.Memory* @routine_jne_.L_44b87c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_jne_.L_44b7ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b88f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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
define %struct.Memory* @routine_jle_.L_44b877(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
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
define %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b87c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b881(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b730(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jne_.L_44b8a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_44b934(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x1c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.owl_does_defend(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -5
  %8 = icmp ult i32 %4, 5
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
define %struct.Memory* @routine_je_.L_44b934(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 2
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
define %struct.Memory* @routine_jne_.L_44b8da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44b900(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57eada___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57eada_type* @G__0x57eada to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_addq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5__0x3c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 5, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b939(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x24__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
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
define %struct.Memory* @routine_jne_.L_44b9be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x44__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 68
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
define %struct.Memory* @routine_callq_.add_gain_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44b993(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44b9b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57eb13___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57eb13_type* @G__0x57eb13 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_44ba24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x24__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 36
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
define %struct.Memory* @routine_callq_.add_owl_attack_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44b9f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44ba1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57eb3e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57eb3e_type* @G__0x57eb3e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c39e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_jne_.L_44bcd7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xc__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -12
  %10 = icmp ult i32 %8, 12
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
define %struct.Memory* @routine_jne_.L_44bb20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44bb20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x30__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_callq_.add_owl_defense_threat_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44badd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44bb1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57eb5f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57eb5f_type* @G__0x57eb5f to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_44bb20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44bbfd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x3c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_je_.L_44bbfd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_jne_.L_44bbba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44bbf8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_jmpq_.L_44bbfd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EDX, align 4
  %6 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jne_.L_44bcd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44bcd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x20__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_callq_.add_owl_prevent_threat_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xab0f24___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RSI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 2
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
define %struct.Memory* @routine_jne_.L_44bc8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44bccd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57eb8c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57eb8c_type* @G__0x57eb8c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_jmpq_.L_44bcd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c399(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_jne_.L_44c290(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44be9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xb__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -11
  %10 = icmp ult i32 %8, 11
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
define %struct.Memory* @routine_je_.L_44bdd0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.add_owl_attack_threat_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44bd8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44bdcb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57ebbf___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57ebbf_type* @G__0x57ebbf to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44bdd0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x2c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 44
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
define %struct.Memory* @routine_je_.L_44be98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x2c__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 44
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
define %struct.Memory* @routine_jne_.L_44be55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44be93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x2c__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 44
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44be98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c28b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44bf83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44bf83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x20__rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_jne_.L_44bf40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44bf7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_44c286(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44c062(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44c062(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44c01f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44c05d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_jmpq_.L_44c281(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44c17f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44c17f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5__0x34__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %8, 5
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
define %struct.Memory* @routine_jne_.L_44c13c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44c17a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57ebe2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57ebe2_type* @G__0x57ebe2 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_44c27c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44c277(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x28__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x38__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
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
define %struct.Memory* @routine_je_.L_44c277(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x30__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
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
define %struct.Memory* @routine_callq_.add_owl_uncertain_defense_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44c234(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44c272(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57ec19___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57ec19_type* @G__0x57ec19 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_44c277(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44c394(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44c38f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x20__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_je_.L_44c38f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44c34c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44c38a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57ec52___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57ec52_type* @G__0x57ec52 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_44c38f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44b4c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
