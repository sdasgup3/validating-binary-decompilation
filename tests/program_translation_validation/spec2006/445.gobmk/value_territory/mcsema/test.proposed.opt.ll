; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0xb88ab__rip__type = type <{ [8 x i8] }>
%G_0xb88ef__rip__type = type <{ [8 x i8] }>
%G_0xb8d2a__rip__type = type <{ [8 x i8] }>
%G_0xb8d2d__rip__type = type <{ [4 x i8] }>
%G_0xb8fda__rip__type = type <{ [4 x i8] }>
%G_0xb9011__rip__type = type <{ [4 x i8] }>
%G_0xb913f__rip__type = type <{ [4 x i8] }>
%G__0x7ae468_type = type <{ [8 x i8] }>
%G__0x7ae4c8_type = type <{ [8 x i8] }>
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
@G_0xb88ab__rip_ = global %G_0xb88ab__rip__type zeroinitializer
@G_0xb88ef__rip_ = global %G_0xb88ef__rip__type zeroinitializer
@G_0xb8d2a__rip_ = global %G_0xb8d2a__rip__type zeroinitializer
@G_0xb8d2d__rip_ = global %G_0xb8d2d__rip__type zeroinitializer
@G_0xb8fda__rip_ = global %G_0xb8fda__rip__type zeroinitializer
@G_0xb9011__rip_ = global %G_0xb9011__rip__type zeroinitializer
@G_0xb913f__rip_ = global %G_0xb913f__rip__type zeroinitializer
@G__0x7ae468 = global %G__0x7ae468_type zeroinitializer
@G__0x7ae4c8 = global %G__0x7ae4c8_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4e2860.gg_interpolate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @value_territory(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -1752
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 1744
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
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i, align 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -12
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 7
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i32*
  store i32 21, i32* %48, align 4
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i491 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i526 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %ECX.i644 = bitcast %union.anon* %50 to i32*
  %EAX.i708 = bitcast %union.anon* %49 to i32*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %52 = bitcast [32 x %union.VectorReg]* %51 to i8*
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %54 = bitcast [32 x %union.VectorReg]* %51 to i32*
  %55 = getelementptr inbounds i8, i8* %52, i64 4
  %56 = bitcast i8* %55 to i32*
  %57 = bitcast i64* %53 to i32*
  %58 = getelementptr inbounds i8, i8* %52, i64 12
  %59 = bitcast i8* %58 to i32*
  %60 = bitcast [32 x %union.VectorReg]* %51 to <2 x float>*
  %61 = bitcast i8* %55 to float*
  %62 = bitcast i64* %53 to float*
  %63 = bitcast i8* %58 to float*
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %65 = bitcast %union.VectorReg* %64 to i8*
  %66 = bitcast %union.VectorReg* %64 to float*
  %67 = bitcast %union.VectorReg* %64 to i32*
  %68 = getelementptr inbounds i8, i8* %65, i64 4
  %69 = bitcast i8* %68 to float*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %71 = bitcast i64* %70 to float*
  %72 = getelementptr inbounds i8, i8* %65, i64 12
  %73 = bitcast i8* %72 to float*
  %74 = bitcast %union.VectorReg* %64 to <2 x float>*
  %75 = bitcast i64* %70 to <2 x i32>*
  %76 = bitcast i8* %68 to i32*
  %77 = bitcast i64* %70 to i32*
  %78 = bitcast i8* %72 to i32*
  %79 = bitcast [32 x %union.VectorReg]* %51 to float*
  %80 = bitcast i64* %53 to <2 x i32>*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1190 = getelementptr inbounds %union.anon, %union.anon* %81, i64 0, i32 0
  %EDX.i1184 = bitcast %union.anon* %81 to i32*
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1180 = getelementptr inbounds %union.anon, %union.anon* %83, i64 0, i32 0
  %ESI.i1174 = bitcast %union.anon* %83 to i32*
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1167 = bitcast %union.anon* %84 to i32*
  %85 = getelementptr inbounds %union.anon, %union.anon* %84, i64 0, i32 0
  %86 = bitcast %union.VectorReg* %64 to <2 x i32>*
  %.pre = load i64, i64* %3, align 8
  %87 = bitcast [32 x %union.VectorReg]* %51 to <4 x i32>*
  %88 = bitcast [32 x %union.VectorReg]* %51 to <4 x i32>*
  br label %block_.L_429d26

block_.L_429d26:                                  ; preds = %block_.L_42a15f, %entry
  %89 = phi i64 [ %.pre, %entry ], [ %1550, %block_.L_42a15f ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.12, %block_.L_42a15f ]
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -12
  %92 = add i64 %89, 7
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = add i32 %94, -400
  %96 = icmp ult i32 %94, 400
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %14, align 1
  %98 = and i32 %95, 255
  %99 = tail call i32 @llvm.ctpop.i32(i32 %98)
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  %102 = xor i8 %101, 1
  store i8 %102, i8* %21, align 1
  %103 = xor i32 %94, 16
  %104 = xor i32 %103, %95
  %105 = lshr i32 %104, 4
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  store i8 %107, i8* %27, align 1
  %108 = icmp eq i32 %95, 0
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %30, align 1
  %110 = lshr i32 %95, 31
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %33, align 1
  %112 = lshr i32 %94, 31
  %113 = xor i32 %110, %112
  %114 = add nuw nsw i32 %113, %112
  %115 = icmp eq i32 %114, 2
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %39, align 1
  %117 = icmp ne i8 %111, 0
  %118 = xor i1 %117, %115
  %.v121 = select i1 %118, i64 13, i64 1100
  %119 = add i64 %89, %.v121
  store i64 %119, i64* %3, align 8
  br i1 %118, label %block_429d33, label %block_.L_42a172

block_429d33:                                     ; preds = %block_.L_429d26
  %120 = add i64 %119, 4
  store i64 %120, i64* %3, align 8
  %121 = load i32, i32* %93, align 4
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %RAX.i491, align 8
  %123 = add nsw i64 %122, 12099168
  %124 = add i64 %119, 12
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %123 to i8*
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i64
  store i64 %127, i64* %RCX.i526, align 8
  %128 = zext i8 %126 to i32
  %129 = add nsw i32 %128, -3
  %130 = icmp ult i8 %126, 3
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %14, align 1
  %132 = and i32 %129, 255
  %133 = tail call i32 @llvm.ctpop.i32(i32 %132)
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  %136 = xor i8 %135, 1
  store i8 %136, i8* %21, align 1
  %137 = xor i32 %129, %128
  %138 = lshr i32 %137, 4
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  store i8 %140, i8* %27, align 1
  %141 = icmp eq i32 %129, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %30, align 1
  %143 = lshr i32 %129, 31
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v139 = select i1 %141, i64 1068, i64 21
  %145 = add i64 %119, %.v139
  store i64 %145, i64* %3, align 8
  br i1 %141, label %block_.L_42a15f, label %block_429d48

block_429d48:                                     ; preds = %block_429d33
  store <4 x i32> zeroinitializer, <4 x i32>* %87, align 1
  %146 = add i64 %145, 7
  store i64 %146, i64* %3, align 8
  %147 = load i32, i32* %93, align 4
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %RAX.i491, align 8
  %149 = shl nsw i64 %148, 2
  %150 = add i64 %90, -1632
  %151 = add i64 %150, %149
  %152 = add i64 %145, 16
  store i64 %152, i64* %3, align 8
  %153 = load <2 x float>, <2 x float>* %60, align 1
  %154 = extractelement <2 x float> %153, i32 0
  %155 = inttoptr i64 %151 to float*
  store float %154, float* %155, align 4
  %156 = load i64, i64* %RBP.i, align 8
  %157 = add i64 %156, -8
  %158 = load i64, i64* %3, align 8
  %159 = add i64 %158, 4
  store i64 %159, i64* %3, align 8
  %160 = inttoptr i64 %157 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %RAX.i491, align 8
  %162 = add i64 %156, -12
  %163 = add i64 %158, 8
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %162 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  store i64 %166, i64* %RCX.i526, align 8
  %167 = add i64 %161, %166
  %168 = add i64 %158, 12
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i8*
  %170 = load i8, i8* %169, align 1
  store i8 0, i8* %14, align 1
  %171 = zext i8 %170 to i32
  %172 = tail call i32 @llvm.ctpop.i32(i32 %171)
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  store i8 %175, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %176 = icmp eq i8 %170, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %30, align 1
  %178 = lshr i8 %170, 7
  store i8 %178, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v140 = select i1 %176, i64 18, i64 1001
  %179 = add i64 %158, %.v140
  store i64 %179, i64* %3, align 8
  br i1 %176, label %block_429d6a, label %block_.L_42a141

block_429d6a:                                     ; preds = %block_429d48
  store <4 x i32> zeroinitializer, <4 x i32>* %88, align 1
  %180 = add i64 %156, -1644
  %181 = add i64 %179, 11
  store i64 %181, i64* %3, align 8
  %182 = load <2 x float>, <2 x float>* %60, align 1
  %183 = extractelement <2 x float> %182, i32 0
  %184 = inttoptr i64 %180 to float*
  store float %183, float* %184, align 4
  %185 = load i64, i64* %RBP.i, align 8
  %186 = add i64 %185, -8
  %187 = load i64, i64* %3, align 8
  %188 = add i64 %187, 4
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %186 to i64*
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %RAX.i491, align 8
  %191 = add i64 %185, -12
  %192 = add i64 %187, 8
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  store i64 %195, i64* %RCX.i526, align 8
  %196 = shl nsw i64 %195, 2
  %197 = add i64 %190, 400
  %198 = add i64 %197, %196
  %199 = add i64 %187, 17
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %67, align 1
  store float 0.000000e+00, float* %69, align 1
  store float 0.000000e+00, float* %71, align 1
  store float 0.000000e+00, float* %73, align 1
  %202 = add i64 %187, 21
  store i64 %202, i64* %3, align 8
  %203 = load i64, i64* %189, align 8
  store i64 %203, i64* %RAX.i491, align 8
  %204 = add i64 %187, 25
  store i64 %204, i64* %3, align 8
  %205 = load i32, i32* %193, align 4
  %206 = sext i32 %205 to i64
  store i64 %206, i64* %RCX.i526, align 8
  %207 = shl nsw i64 %206, 2
  %208 = add i64 %203, 2000
  %209 = add i64 %208, %207
  %210 = add i64 %187, 34
  store i64 %210, i64* %3, align 8
  %211 = load <2 x float>, <2 x float>* %74, align 1
  %212 = load <2 x i32>, <2 x i32>* %75, align 1
  %213 = inttoptr i64 %209 to float*
  %214 = load float, float* %213, align 4
  %215 = extractelement <2 x float> %211, i32 0
  %216 = fadd float %215, %214
  store float %216, float* %66, align 1
  %217 = bitcast <2 x float> %211 to <2 x i32>
  %218 = extractelement <2 x i32> %217, i32 1
  store i32 %218, i32* %76, align 1
  %219 = extractelement <2 x i32> %212, i32 0
  store i32 %219, i32* %77, align 1
  %220 = extractelement <2 x i32> %212, i32 1
  store i32 %220, i32* %78, align 1
  %221 = add i64 %187, 37
  store i64 %221, i64* %3, align 8
  %222 = load <2 x float>, <2 x float>* %74, align 1
  %223 = extractelement <2 x float> %222, i32 0
  %224 = load <2 x float>, <2 x float>* %60, align 1
  %225 = extractelement <2 x float> %224, i32 0
  %226 = fcmp uno float %223, %225
  br i1 %226, label %227, label %237

; <label>:227:                                    ; preds = %block_429d6a
  %228 = fadd float %223, %225
  %229 = bitcast float %228 to i32
  %230 = and i32 %229, 2143289344
  %231 = icmp eq i32 %230, 2139095040
  %232 = and i32 %229, 4194303
  %233 = icmp ne i32 %232, 0
  %234 = and i1 %231, %233
  br i1 %234, label %235, label %243

; <label>:235:                                    ; preds = %227
  %236 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %221, %struct.Memory* %MEMORY.0)
  %.pre84 = load i64, i64* %3, align 8
  br label %routine_ucomiss__xmm0___xmm1.exit1260

; <label>:237:                                    ; preds = %block_429d6a
  %238 = fcmp ogt float %223, %225
  br i1 %238, label %243, label %239

; <label>:239:                                    ; preds = %237
  %240 = fcmp olt float %223, %225
  br i1 %240, label %243, label %241

; <label>:241:                                    ; preds = %239
  %242 = fcmp oeq float %223, %225
  br i1 %242, label %243, label %247

; <label>:243:                                    ; preds = %241, %239, %237, %227
  %244 = phi i8 [ 0, %237 ], [ 0, %239 ], [ 1, %241 ], [ 1, %227 ]
  %245 = phi i8 [ 0, %237 ], [ 0, %239 ], [ 0, %241 ], [ 1, %227 ]
  %246 = phi i8 [ 0, %237 ], [ 1, %239 ], [ 0, %241 ], [ 1, %227 ]
  store i8 %244, i8* %30, align 1
  store i8 %245, i8* %21, align 1
  store i8 %246, i8* %14, align 1
  br label %247

; <label>:247:                                    ; preds = %243, %241
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit1260

routine_ucomiss__xmm0___xmm1.exit1260:            ; preds = %247, %235
  %248 = phi i64 [ %.pre84, %235 ], [ %221, %247 ]
  %249 = phi %struct.Memory* [ %236, %235 ], [ %MEMORY.0, %247 ]
  %250 = add i64 %248, 86
  %251 = add i64 %248, 6
  %252 = load i8, i8* %14, align 1
  %253 = load i8, i8* %30, align 1
  %254 = or i8 %253, %252
  %255 = icmp ne i8 %254, 0
  %256 = select i1 %255, i64 %250, i64 %251
  store i64 %256, i64* %3, align 8
  br i1 %255, label %block_.L_429df0, label %block_429da0

block_429da0:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit1260
  %257 = load i64, i64* %RBP.i, align 8
  %258 = add i64 %257, -8
  %259 = add i64 %256, 4
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %258 to i64*
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %RAX.i491, align 8
  %262 = add i64 %257, -12
  %263 = add i64 %256, 8
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  store i64 %266, i64* %RCX.i526, align 8
  %267 = shl nsw i64 %266, 2
  %268 = add i64 %261, 400
  %269 = add i64 %268, %267
  %270 = add i64 %256, 17
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i32*
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %273 = add i64 %256, 21
  store i64 %273, i64* %3, align 8
  %274 = load i64, i64* %260, align 8
  store i64 %274, i64* %RAX.i491, align 8
  %275 = add i64 %256, 25
  store i64 %275, i64* %3, align 8
  %276 = load i32, i32* %264, align 4
  %277 = sext i32 %276 to i64
  store i64 %277, i64* %RCX.i526, align 8
  %278 = shl nsw i64 %277, 2
  %279 = add i64 %274, 2000
  %280 = add i64 %279, %278
  %281 = add i64 %256, 34
  store i64 %281, i64* %3, align 8
  %282 = load <2 x float>, <2 x float>* %60, align 1
  %283 = load <2 x i32>, <2 x i32>* %80, align 1
  %284 = inttoptr i64 %280 to float*
  %285 = load float, float* %284, align 4
  %286 = extractelement <2 x float> %282, i32 0
  %287 = fsub float %286, %285
  store float %287, float* %79, align 1
  %288 = bitcast <2 x float> %282 to <2 x i32>
  %289 = extractelement <2 x i32> %288, i32 1
  store i32 %289, i32* %56, align 1
  %290 = extractelement <2 x i32> %283, i32 0
  store i32 %290, i32* %57, align 1
  %291 = extractelement <2 x i32> %283, i32 1
  store i32 %291, i32* %59, align 1
  %292 = add i64 %256, 38
  store i64 %292, i64* %3, align 8
  %293 = load i64, i64* %260, align 8
  store i64 %293, i64* %RAX.i491, align 8
  %294 = add i64 %256, 42
  store i64 %294, i64* %3, align 8
  %295 = load i32, i32* %264, align 4
  %296 = sext i32 %295 to i64
  store i64 %296, i64* %RCX.i526, align 8
  %297 = shl nsw i64 %296, 2
  %298 = add i64 %293, 400
  %299 = add i64 %298, %297
  %300 = add i64 %256, 51
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %299 to i32*
  %302 = load i32, i32* %301, align 4
  store i32 %302, i32* %67, align 1
  store float 0.000000e+00, float* %69, align 1
  store float 0.000000e+00, float* %71, align 1
  store float 0.000000e+00, float* %73, align 1
  %303 = add i64 %256, 55
  store i64 %303, i64* %3, align 8
  %304 = load i64, i64* %260, align 8
  store i64 %304, i64* %RAX.i491, align 8
  %305 = add i64 %256, 59
  store i64 %305, i64* %3, align 8
  %306 = load i32, i32* %264, align 4
  %307 = sext i32 %306 to i64
  store i64 %307, i64* %RCX.i526, align 8
  %308 = shl nsw i64 %307, 2
  %309 = add i64 %304, 2000
  %310 = add i64 %309, %308
  %311 = add i64 %256, 68
  store i64 %311, i64* %3, align 8
  %312 = load <2 x float>, <2 x float>* %74, align 1
  %313 = load <2 x i32>, <2 x i32>* %75, align 1
  %314 = inttoptr i64 %310 to float*
  %315 = load float, float* %314, align 4
  %316 = extractelement <2 x float> %312, i32 0
  %317 = fadd float %316, %315
  store float %317, float* %66, align 1
  %318 = bitcast <2 x float> %312 to <2 x i32>
  %319 = extractelement <2 x i32> %318, i32 1
  store i32 %319, i32* %76, align 1
  %320 = extractelement <2 x i32> %313, i32 0
  store i32 %320, i32* %77, align 1
  %321 = extractelement <2 x i32> %313, i32 1
  store i32 %321, i32* %78, align 1
  %322 = load <2 x float>, <2 x float>* %60, align 1
  %323 = load <2 x i32>, <2 x i32>* %80, align 1
  %324 = load <2 x float>, <2 x float>* %74, align 1
  %325 = extractelement <2 x float> %322, i32 0
  %326 = extractelement <2 x float> %324, i32 0
  %327 = fdiv float %325, %326
  store float %327, float* %79, align 1
  %328 = bitcast <2 x float> %322 to <2 x i32>
  %329 = extractelement <2 x i32> %328, i32 1
  store i32 %329, i32* %56, align 1
  %330 = extractelement <2 x i32> %323, i32 0
  store i32 %330, i32* %57, align 1
  %331 = extractelement <2 x i32> %323, i32 1
  store i32 %331, i32* %59, align 1
  %332 = load i64, i64* %RBP.i, align 8
  %333 = add i64 %332, -1644
  %334 = add i64 %256, 80
  store i64 %334, i64* %3, align 8
  %335 = load <2 x float>, <2 x float>* %60, align 1
  %336 = extractelement <2 x float> %335, i32 0
  %337 = inttoptr i64 %333 to float*
  store float %336, float* %337, align 4
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_429df0

block_.L_429df0:                                  ; preds = %block_429da0, %routine_ucomiss__xmm0___xmm1.exit1260
  %338 = phi i64 [ %.pre85, %block_429da0 ], [ %250, %routine_ucomiss__xmm0___xmm1.exit1260 ]
  store i64 20, i64* %RAX.i491, align 8
  %339 = load i64, i64* %RBP.i, align 8
  %340 = add i64 %339, -1644
  %341 = add i64 %338, 13
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %340 to i32*
  %343 = load i32, i32* %342, align 4
  store i32 %343, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %344 = add i64 %338, 21
  store i64 %344, i64* %3, align 8
  %345 = load <2 x float>, <2 x float>* %60, align 1
  %346 = load <2 x i32>, <2 x i32>* %80, align 1
  %347 = inttoptr i64 %340 to float*
  %348 = load float, float* %347, align 4
  %349 = extractelement <2 x float> %345, i32 0
  %350 = fmul float %349, %348
  store float %350, float* %79, align 1
  %351 = bitcast <2 x float> %345 to <2 x i32>
  %352 = extractelement <2 x i32> %351, i32 1
  store i32 %352, i32* %56, align 1
  %353 = extractelement <2 x i32> %346, i32 0
  store i32 %353, i32* %57, align 1
  %354 = extractelement <2 x i32> %346, i32 1
  store i32 %354, i32* %59, align 1
  %355 = add i64 %338, 29
  store i64 %355, i64* %3, align 8
  %356 = load <2 x float>, <2 x float>* %60, align 1
  %357 = load <2 x i32>, <2 x i32>* %80, align 1
  %358 = load float, float* %347, align 4
  %359 = extractelement <2 x float> %356, i32 0
  %360 = fmul float %359, %358
  store float %360, float* %79, align 1
  %361 = bitcast <2 x float> %356 to <2 x i32>
  %362 = extractelement <2 x i32> %361, i32 1
  store i32 %362, i32* %56, align 1
  %363 = extractelement <2 x i32> %357, i32 0
  store i32 %363, i32* %57, align 1
  %364 = extractelement <2 x i32> %357, i32 1
  store i32 %364, i32* %59, align 1
  %365 = add i64 %339, -12
  %366 = add i64 %338, 33
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  store i64 %369, i64* %RCX.i526, align 8
  %370 = shl nsw i64 %369, 2
  %371 = add i64 %339, -1632
  %372 = add i64 %371, %370
  %373 = add i64 %338, 42
  store i64 %373, i64* %3, align 8
  %374 = load <2 x float>, <2 x float>* %60, align 1
  %375 = extractelement <2 x float> %374, i32 0
  %376 = inttoptr i64 %372 to float*
  store float %375, float* %376, align 4
  %377 = load i64, i64* %RBP.i, align 8
  %378 = add i64 %377, -12
  %379 = load i64, i64* %3, align 8
  %380 = add i64 %379, 3
  store i64 %380, i64* %3, align 8
  %381 = inttoptr i64 %378 to i32*
  %382 = load i32, i32* %381, align 4
  %383 = zext i32 %382 to i64
  store i64 %383, i64* %RDX.i1190, align 8
  %384 = add i64 %377, -1656
  %385 = load i32, i32* %EAX.i708, align 4
  %386 = add i64 %379, 9
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %384 to i32*
  store i32 %385, i32* %387, align 4
  %388 = load i32, i32* %EDX.i1184, align 4
  %389 = zext i32 %388 to i64
  %390 = load i64, i64* %3, align 8
  store i64 %389, i64* %RAX.i491, align 8
  %391 = sext i32 %388 to i64
  %392 = lshr i64 %391, 32
  store i64 %392, i64* %82, align 8
  %393 = load i64, i64* %RBP.i, align 8
  %394 = add i64 %393, -1656
  %395 = add i64 %390, 9
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i32*
  %397 = load i32, i32* %396, align 4
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RSI.i1180, align 8
  %399 = add i64 %390, 11
  store i64 %399, i64* %3, align 8
  %400 = sext i32 %397 to i64
  %401 = shl nuw i64 %392, 32
  %402 = or i64 %401, %389
  %403 = sdiv i64 %402, %400
  %404 = shl i64 %403, 32
  %405 = ashr exact i64 %404, 32
  %406 = icmp eq i64 %403, %405
  br i1 %406, label %409, label %407

; <label>:407:                                    ; preds = %block_.L_429df0
  %408 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %399, %struct.Memory* %249)
  %.pre86 = load i64, i64* %RAX.i491, align 8
  %.pre87 = load i64, i64* %3, align 8
  %.pre88 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit1175

; <label>:409:                                    ; preds = %block_.L_429df0
  %410 = srem i64 %402, %400
  %411 = and i64 %403, 4294967295
  store i64 %411, i64* %RAX.i491, align 8
  %412 = and i64 %410, 4294967295
  store i64 %412, i64* %RDX.i1190, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__esi.exit1175

routine_idivl__esi.exit1175:                      ; preds = %409, %407
  %413 = phi i64 [ %.pre88, %407 ], [ %393, %409 ]
  %414 = phi i64 [ %.pre87, %407 ], [ %399, %409 ]
  %415 = phi i64 [ %.pre86, %407 ], [ %411, %409 ]
  %416 = phi %struct.Memory* [ %408, %407 ], [ %249, %409 ]
  %417 = trunc i64 %415 to i32
  %418 = add i32 %417, -1
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RAX.i491, align 8
  %420 = icmp eq i32 %417, 0
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %14, align 1
  %422 = and i32 %418, 255
  %423 = tail call i32 @llvm.ctpop.i32(i32 %422)
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  %426 = xor i8 %425, 1
  store i8 %426, i8* %21, align 1
  %427 = xor i32 %418, %417
  %428 = lshr i32 %427, 4
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  store i8 %430, i8* %27, align 1
  %431 = icmp eq i32 %418, 0
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %30, align 1
  %433 = lshr i32 %418, 31
  %434 = trunc i32 %433 to i8
  store i8 %434, i8* %33, align 1
  %435 = lshr i32 %417, 31
  %436 = xor i32 %433, %435
  %437 = add nuw nsw i32 %436, %435
  %438 = icmp eq i32 %437, 2
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %39, align 1
  %440 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %441 = zext i32 %440 to i64
  store i64 %441, i64* %RDI.i, align 8
  %442 = add i64 %413, -12
  %443 = add i64 %414, 14
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = zext i32 %445 to i64
  store i64 %446, i64* %85, align 8
  %447 = add i64 %413, -1660
  %448 = add i64 %414, 20
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i32*
  store i32 %418, i32* %449, align 4
  %450 = load i32, i32* %R8D.i1167, align 4
  %451 = zext i32 %450 to i64
  %452 = load i64, i64* %3, align 8
  store i64 %451, i64* %RAX.i491, align 8
  %453 = sext i32 %450 to i64
  %454 = lshr i64 %453, 32
  store i64 %454, i64* %82, align 8
  %455 = load i32, i32* %ESI.i1174, align 4
  %456 = add i64 %452, 6
  store i64 %456, i64* %3, align 8
  %457 = sext i32 %455 to i64
  %458 = shl nuw i64 %454, 32
  %459 = or i64 %458, %451
  %460 = sdiv i64 %459, %457
  %461 = shl i64 %460, 32
  %462 = ashr exact i64 %461, 32
  %463 = icmp eq i64 %460, %462
  br i1 %463, label %466, label %464

; <label>:464:                                    ; preds = %routine_idivl__esi.exit1175
  %465 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %456, %struct.Memory* %416)
  %.pre89 = load i64, i64* %RAX.i491, align 8
  %.pre90 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1158

; <label>:466:                                    ; preds = %routine_idivl__esi.exit1175
  %467 = srem i64 %459, %457
  %468 = and i64 %460, 4294967295
  store i64 %468, i64* %RAX.i491, align 8
  %469 = and i64 %467, 4294967295
  store i64 %469, i64* %RDX.i1190, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__esi.exit1158

routine_idivl__esi.exit1158:                      ; preds = %466, %464
  %470 = phi i64 [ %.pre90, %464 ], [ %456, %466 ]
  %471 = phi i64 [ %.pre89, %464 ], [ %468, %466 ]
  %472 = phi %struct.Memory* [ %465, %464 ], [ %416, %466 ]
  %473 = trunc i64 %471 to i32
  %474 = add i32 %473, -1
  %475 = zext i32 %474 to i64
  store i64 %475, i64* %RAX.i491, align 8
  %476 = load i64, i64* %RDI.i, align 8
  %477 = trunc i64 %476 to i32
  %478 = sub i32 %477, %474
  %479 = icmp eq i32 %478, 0
  %480 = zext i1 %479 to i8
  %481 = lshr i32 %478, 31
  %482 = add i32 %478, -1
  %483 = zext i32 %482 to i64
  store i64 %483, i64* %RDI.i, align 8
  store i8 %480, i8* %14, align 1
  %484 = and i32 %482, 255
  %485 = tail call i32 @llvm.ctpop.i32(i32 %484)
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = xor i8 %487, 1
  store i8 %488, i8* %21, align 1
  %489 = xor i32 %482, %478
  %490 = lshr i32 %489, 4
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  store i8 %492, i8* %27, align 1
  %493 = icmp eq i32 %482, 0
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %30, align 1
  %495 = lshr i32 %482, 31
  %496 = trunc i32 %495 to i8
  store i8 %496, i8* %33, align 1
  %497 = xor i32 %495, %481
  %498 = add nuw nsw i32 %497, %481
  %499 = icmp eq i32 %498, 2
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %39, align 1
  %501 = load i64, i64* %RBP.i, align 8
  %502 = add i64 %501, -1660
  %503 = add i64 %470, 14
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i32*
  %505 = load i32, i32* %504, align 4
  %506 = sub i32 %505, %482
  %507 = icmp ult i32 %505, %482
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %14, align 1
  %509 = and i32 %506, 255
  %510 = tail call i32 @llvm.ctpop.i32(i32 %509)
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = xor i8 %512, 1
  store i8 %513, i8* %21, align 1
  %514 = xor i32 %482, %505
  %515 = xor i32 %514, %506
  %516 = lshr i32 %515, 4
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  store i8 %518, i8* %27, align 1
  %519 = icmp eq i32 %506, 0
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %30, align 1
  %521 = lshr i32 %506, 31
  %522 = trunc i32 %521 to i8
  store i8 %522, i8* %33, align 1
  %523 = lshr i32 %505, 31
  %524 = xor i32 %495, %523
  %525 = xor i32 %521, %523
  %526 = add nuw nsw i32 %525, %524
  %527 = icmp eq i32 %526, 2
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %39, align 1
  %529 = icmp ne i8 %522, 0
  %530 = xor i1 %529, %527
  %.v141 = select i1 %530, i64 22, i64 61
  %531 = add i64 %470, %.v141
  %532 = add i64 %531, 5
  store i64 %532, i64* %3, align 8
  store i64 20, i64* %RAX.i491, align 8
  br i1 %530, label %block_429e5e, label %block_.L_429e85

block_429e5e:                                     ; preds = %routine_idivl__esi.exit1158
  %533 = add i64 %501, -12
  %534 = add i64 %531, 8
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to i32*
  %536 = load i32, i32* %535, align 4
  %537 = zext i32 %536 to i64
  store i64 %537, i64* %RCX.i526, align 8
  %538 = add i64 %501, -1664
  %539 = add i64 %531, 14
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i32*
  store i32 20, i32* %540, align 4
  %541 = load i32, i32* %ECX.i644, align 4
  %542 = zext i32 %541 to i64
  %543 = load i64, i64* %3, align 8
  store i64 %542, i64* %RAX.i491, align 8
  %544 = sext i32 %541 to i64
  %545 = lshr i64 %544, 32
  store i64 %545, i64* %82, align 8
  %546 = load i64, i64* %RBP.i, align 8
  %547 = add i64 %546, -1664
  %548 = add i64 %543, 9
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i32*
  %550 = load i32, i32* %549, align 4
  %551 = zext i32 %550 to i64
  store i64 %551, i64* %RCX.i526, align 8
  %552 = add i64 %543, 11
  store i64 %552, i64* %3, align 8
  %553 = sext i32 %550 to i64
  %554 = shl nuw i64 %545, 32
  %555 = or i64 %554, %542
  %556 = sdiv i64 %555, %553
  %557 = shl i64 %556, 32
  %558 = ashr exact i64 %557, 32
  %559 = icmp eq i64 %556, %558
  br i1 %559, label %562, label %560

; <label>:560:                                    ; preds = %block_429e5e
  %561 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %552, %struct.Memory* %472)
  %.pre93 = load i64, i64* %RAX.i491, align 8
  %.pre94 = load i64, i64* %3, align 8
  %.pre95 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1123

; <label>:562:                                    ; preds = %block_429e5e
  %563 = srem i64 %555, %553
  %564 = and i64 %556, 4294967295
  store i64 %564, i64* %RAX.i491, align 8
  %565 = and i64 %563, 4294967295
  store i64 %565, i64* %RDX.i1190, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit1123

routine_idivl__ecx.exit1123:                      ; preds = %562, %560
  %566 = phi i64 [ %.pre95, %560 ], [ %546, %562 ]
  %567 = phi i64 [ %.pre94, %560 ], [ %552, %562 ]
  %568 = phi i64 [ %.pre93, %560 ], [ %564, %562 ]
  %569 = phi %struct.Memory* [ %561, %560 ], [ %472, %562 ]
  %570 = trunc i64 %568 to i32
  %571 = add i32 %570, -1
  %572 = zext i32 %571 to i64
  store i64 %572, i64* %RAX.i491, align 8
  %573 = icmp eq i32 %570, 0
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %14, align 1
  %575 = and i32 %571, 255
  %576 = tail call i32 @llvm.ctpop.i32(i32 %575)
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  %579 = xor i8 %578, 1
  store i8 %579, i8* %21, align 1
  %580 = xor i32 %571, %570
  %581 = lshr i32 %580, 4
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  store i8 %583, i8* %27, align 1
  %584 = icmp eq i32 %571, 0
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %30, align 1
  %586 = lshr i32 %571, 31
  %587 = trunc i32 %586 to i8
  store i8 %587, i8* %33, align 1
  %588 = lshr i32 %570, 31
  %589 = xor i32 %586, %588
  %590 = add nuw nsw i32 %589, %588
  %591 = icmp eq i32 %590, 2
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %39, align 1
  %593 = add i64 %566, -1668
  %594 = add i64 %567, 9
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %593 to i32*
  store i32 %571, i32* %595, align 4
  %596 = load i64, i64* %3, align 8
  %597 = add i64 %596, 51
  store i64 %597, i64* %3, align 8
  br label %block_.L_429eb3

block_.L_429e85:                                  ; preds = %routine_idivl__esi.exit1158
  %598 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %599 = zext i32 %598 to i64
  store i64 %599, i64* %RCX.i526, align 8
  %600 = add i64 %501, -12
  %601 = add i64 %531, 15
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i32*
  %603 = load i32, i32* %602, align 4
  %604 = zext i32 %603 to i64
  store i64 %604, i64* %RDX.i1190, align 8
  %605 = add i64 %501, -1672
  %606 = add i64 %531, 21
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %605 to i32*
  store i32 20, i32* %607, align 4
  %608 = load i32, i32* %EDX.i1184, align 4
  %609 = zext i32 %608 to i64
  %610 = load i64, i64* %3, align 8
  store i64 %609, i64* %RAX.i491, align 8
  %611 = sext i32 %608 to i64
  %612 = lshr i64 %611, 32
  store i64 %612, i64* %82, align 8
  %613 = load i64, i64* %RBP.i, align 8
  %614 = add i64 %613, -1672
  %615 = add i64 %610, 9
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i32*
  %617 = load i32, i32* %616, align 4
  %618 = zext i32 %617 to i64
  store i64 %618, i64* %RSI.i1180, align 8
  %619 = add i64 %610, 11
  store i64 %619, i64* %3, align 8
  %620 = sext i32 %617 to i64
  %621 = shl nuw i64 %612, 32
  %622 = or i64 %621, %609
  %623 = sdiv i64 %622, %620
  %624 = shl i64 %623, 32
  %625 = ashr exact i64 %624, 32
  %626 = icmp eq i64 %623, %625
  br i1 %626, label %629, label %627

; <label>:627:                                    ; preds = %block_.L_429e85
  %628 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %619, %struct.Memory* %472)
  %.pre91 = load i64, i64* %RAX.i491, align 8
  %.pre92 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1094

; <label>:629:                                    ; preds = %block_.L_429e85
  %630 = srem i64 %622, %620
  %631 = and i64 %623, 4294967295
  store i64 %631, i64* %RAX.i491, align 8
  %632 = and i64 %630, 4294967295
  store i64 %632, i64* %RDX.i1190, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__esi.exit1094

routine_idivl__esi.exit1094:                      ; preds = %629, %627
  %633 = phi i64 [ %.pre92, %627 ], [ %619, %629 ]
  %634 = phi i64 [ %.pre91, %627 ], [ %631, %629 ]
  %635 = phi %struct.Memory* [ %628, %627 ], [ %472, %629 ]
  %636 = trunc i64 %634 to i32
  %637 = add i32 %636, -1
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RAX.i491, align 8
  %639 = load i64, i64* %RCX.i526, align 8
  %640 = trunc i64 %639 to i32
  %641 = sub i32 %640, %637
  %642 = icmp eq i32 %641, 0
  %643 = zext i1 %642 to i8
  %644 = lshr i32 %641, 31
  %645 = add i32 %641, -1
  %646 = zext i32 %645 to i64
  store i64 %646, i64* %RCX.i526, align 8
  store i8 %643, i8* %14, align 1
  %647 = and i32 %645, 255
  %648 = tail call i32 @llvm.ctpop.i32(i32 %647)
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  store i8 %651, i8* %21, align 1
  %652 = xor i32 %645, %641
  %653 = lshr i32 %652, 4
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  store i8 %655, i8* %27, align 1
  %656 = icmp eq i32 %645, 0
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %30, align 1
  %658 = lshr i32 %645, 31
  %659 = trunc i32 %658 to i8
  store i8 %659, i8* %33, align 1
  %660 = xor i32 %658, %644
  %661 = add nuw nsw i32 %660, %644
  %662 = icmp eq i32 %661, 2
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %39, align 1
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -1668
  %666 = add i64 %633, 14
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i32*
  store i32 %645, i32* %667, align 4
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_429eb3

block_.L_429eb3:                                  ; preds = %routine_idivl__esi.exit1094, %routine_idivl__ecx.exit1123
  %668 = phi i64 [ %.pre96, %routine_idivl__esi.exit1094 ], [ %597, %routine_idivl__ecx.exit1123 ]
  %MEMORY.2 = phi %struct.Memory* [ %635, %routine_idivl__esi.exit1094 ], [ %569, %routine_idivl__ecx.exit1123 ]
  %669 = load i64, i64* %RBP.i, align 8
  %670 = add i64 %669, -1668
  %671 = add i64 %668, 6
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i32*
  %673 = load i32, i32* %672, align 4
  %674 = zext i32 %673 to i64
  store i64 %674, i64* %RAX.i491, align 8
  store i64 20, i64* %RCX.i526, align 8
  %675 = add i64 %669, -16
  %676 = add i64 %668, 14
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i32*
  store i32 %673, i32* %677, align 4
  %678 = load i64, i64* %RBP.i, align 8
  %679 = add i64 %678, -12
  %680 = load i64, i64* %3, align 8
  %681 = add i64 %680, 3
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %679 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = zext i32 %683 to i64
  store i64 %684, i64* %RAX.i491, align 8
  %685 = sext i32 %683 to i64
  %686 = lshr i64 %685, 32
  store i64 %686, i64* %82, align 8
  %687 = load i32, i32* %ECX.i644, align 4
  %688 = add i64 %680, 6
  store i64 %688, i64* %3, align 8
  %689 = sext i32 %687 to i64
  %690 = shl nuw i64 %686, 32
  %691 = or i64 %690, %684
  %692 = sdiv i64 %691, %689
  %693 = shl i64 %692, 32
  %694 = ashr exact i64 %693, 32
  %695 = icmp eq i64 %692, %694
  br i1 %695, label %698, label %696

; <label>:696:                                    ; preds = %block_.L_429eb3
  %697 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %688, %struct.Memory* %MEMORY.2)
  %.pre97 = load i64, i64* %RDX.i1190, align 8
  %.pre98 = load i64, i64* %3, align 8
  %.pre99 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1066

; <label>:698:                                    ; preds = %block_.L_429eb3
  %699 = srem i64 %691, %689
  %700 = and i64 %692, 4294967295
  store i64 %700, i64* %RAX.i491, align 8
  %701 = and i64 %699, 4294967295
  store i64 %701, i64* %RDX.i1190, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit1066

routine_idivl__ecx.exit1066:                      ; preds = %698, %696
  %702 = phi i64 [ %.pre99, %696 ], [ %678, %698 ]
  %703 = phi i64 [ %.pre98, %696 ], [ %688, %698 ]
  %704 = phi i64 [ %.pre97, %696 ], [ %701, %698 ]
  %705 = phi %struct.Memory* [ %697, %696 ], [ %MEMORY.2, %698 ]
  %706 = trunc i64 %704 to i32
  %707 = add i32 %706, -1
  %708 = zext i32 %707 to i64
  store i64 %708, i64* %RDX.i1190, align 8
  %709 = icmp eq i32 %706, 0
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %14, align 1
  %711 = and i32 %707, 255
  %712 = tail call i32 @llvm.ctpop.i32(i32 %711)
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  %715 = xor i8 %714, 1
  store i8 %715, i8* %21, align 1
  %716 = xor i32 %707, %706
  %717 = lshr i32 %716, 4
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  store i8 %719, i8* %27, align 1
  %720 = icmp eq i32 %707, 0
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %30, align 1
  %722 = lshr i32 %707, 31
  %723 = trunc i32 %722 to i8
  store i8 %723, i8* %33, align 1
  %724 = lshr i32 %706, 31
  %725 = xor i32 %722, %724
  %726 = add nuw nsw i32 %725, %724
  %727 = icmp eq i32 %726, 2
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %39, align 1
  %729 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %730 = zext i32 %729 to i64
  store i64 %730, i64* %RSI.i1180, align 8
  %731 = add i64 %702, -12
  %732 = add i64 %703, 13
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %731 to i32*
  %734 = load i32, i32* %733, align 4
  %735 = zext i32 %734 to i64
  store i64 %735, i64* %RDI.i, align 8
  store i64 %735, i64* %RAX.i491, align 8
  %736 = add i64 %702, -1676
  %737 = add i64 %703, 21
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i32*
  store i32 %707, i32* %738, align 4
  %739 = load i64, i64* %3, align 8
  %740 = load i32, i32* %EAX.i708, align 8
  %741 = sext i32 %740 to i64
  %742 = lshr i64 %741, 32
  store i64 %742, i64* %82, align 8
  %743 = load i32, i32* %ECX.i644, align 4
  %744 = add i64 %739, 3
  store i64 %744, i64* %3, align 8
  %745 = zext i32 %740 to i64
  %746 = sext i32 %743 to i64
  %747 = shl nuw i64 %742, 32
  %748 = or i64 %747, %745
  %749 = sdiv i64 %748, %746
  %750 = shl i64 %749, 32
  %751 = ashr exact i64 %750, 32
  %752 = icmp eq i64 %749, %751
  br i1 %752, label %755, label %753

; <label>:753:                                    ; preds = %routine_idivl__ecx.exit1066
  %754 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %744, %struct.Memory* %705)
  %.pre100 = load i64, i64* %RDX.i1190, align 8
  %.pre101 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1046

; <label>:755:                                    ; preds = %routine_idivl__ecx.exit1066
  %756 = srem i64 %748, %746
  %757 = and i64 %749, 4294967295
  store i64 %757, i64* %RAX.i491, align 8
  %758 = and i64 %756, 4294967295
  store i64 %758, i64* %RDX.i1190, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit1046

routine_idivl__ecx.exit1046:                      ; preds = %755, %753
  %759 = phi i64 [ %.pre101, %753 ], [ %744, %755 ]
  %760 = phi i64 [ %.pre100, %753 ], [ %758, %755 ]
  %761 = phi %struct.Memory* [ %754, %753 ], [ %705, %755 ]
  %762 = trunc i64 %760 to i32
  %763 = add i32 %762, -1
  %764 = zext i32 %763 to i64
  store i64 %764, i64* %RDX.i1190, align 8
  %765 = load i64, i64* %RSI.i1180, align 8
  %766 = trunc i64 %765 to i32
  %767 = sub i32 %766, %763
  %768 = icmp eq i32 %767, 0
  %769 = zext i1 %768 to i8
  %770 = lshr i32 %767, 31
  %771 = add i32 %767, -1
  %772 = zext i32 %771 to i64
  store i64 %772, i64* %RSI.i1180, align 8
  store i8 %769, i8* %14, align 1
  %773 = and i32 %771, 255
  %774 = tail call i32 @llvm.ctpop.i32(i32 %773)
  %775 = trunc i32 %774 to i8
  %776 = and i8 %775, 1
  %777 = xor i8 %776, 1
  store i8 %777, i8* %21, align 1
  %778 = xor i32 %771, %767
  %779 = lshr i32 %778, 4
  %780 = trunc i32 %779 to i8
  %781 = and i8 %780, 1
  store i8 %781, i8* %27, align 1
  %782 = icmp eq i32 %771, 0
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %30, align 1
  %784 = lshr i32 %771, 31
  %785 = trunc i32 %784 to i8
  store i8 %785, i8* %33, align 1
  %786 = xor i32 %784, %770
  %787 = add nuw nsw i32 %786, %770
  %788 = icmp eq i32 %787, 2
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %39, align 1
  %790 = load i64, i64* %RBP.i, align 8
  %791 = add i64 %790, -1676
  %792 = add i64 %759, 14
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = zext i32 %794 to i64
  store i64 %795, i64* %RCX.i526, align 8
  %796 = sub i32 %794, %771
  %797 = icmp ult i32 %794, %771
  %798 = zext i1 %797 to i8
  store i8 %798, i8* %14, align 1
  %799 = and i32 %796, 255
  %800 = tail call i32 @llvm.ctpop.i32(i32 %799)
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  %803 = xor i8 %802, 1
  store i8 %803, i8* %21, align 1
  %804 = xor i32 %771, %794
  %805 = xor i32 %804, %796
  %806 = lshr i32 %805, 4
  %807 = trunc i32 %806 to i8
  %808 = and i8 %807, 1
  store i8 %808, i8* %27, align 1
  %809 = icmp eq i32 %796, 0
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %30, align 1
  %811 = lshr i32 %796, 31
  %812 = trunc i32 %811 to i8
  store i8 %812, i8* %33, align 1
  %813 = lshr i32 %794, 31
  %814 = xor i32 %784, %813
  %815 = xor i32 %811, %813
  %816 = add nuw nsw i32 %815, %814
  %817 = icmp eq i32 %816, 2
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %39, align 1
  %819 = icmp ne i8 %812, 0
  %820 = xor i1 %819, %817
  %.v142 = select i1 %820, i64 22, i64 61
  %821 = add i64 %759, %.v142
  %822 = add i64 %821, 5
  store i64 %822, i64* %3, align 8
  store i64 20, i64* %RAX.i491, align 8
  br i1 %820, label %block_429ef5, label %block_.L_429f1c

block_429ef5:                                     ; preds = %routine_idivl__ecx.exit1046
  %823 = add i64 %790, -12
  %824 = add i64 %821, 8
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i32*
  %826 = load i32, i32* %825, align 4
  %827 = zext i32 %826 to i64
  store i64 %827, i64* %RCX.i526, align 8
  %828 = add i64 %790, -1680
  %829 = add i64 %821, 14
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %828 to i32*
  store i32 20, i32* %830, align 4
  %831 = load i32, i32* %ECX.i644, align 4
  %832 = zext i32 %831 to i64
  %833 = load i64, i64* %3, align 8
  store i64 %832, i64* %RAX.i491, align 8
  %834 = sext i32 %831 to i64
  %835 = lshr i64 %834, 32
  store i64 %835, i64* %82, align 8
  %836 = load i64, i64* %RBP.i, align 8
  %837 = add i64 %836, -1680
  %838 = add i64 %833, 9
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i32*
  %840 = load i32, i32* %839, align 4
  %841 = zext i32 %840 to i64
  store i64 %841, i64* %RCX.i526, align 8
  %842 = add i64 %833, 11
  store i64 %842, i64* %3, align 8
  %843 = sext i32 %840 to i64
  %844 = shl nuw i64 %835, 32
  %845 = or i64 %844, %832
  %846 = sdiv i64 %845, %843
  %847 = shl i64 %846, 32
  %848 = ashr exact i64 %847, 32
  %849 = icmp eq i64 %846, %848
  br i1 %849, label %852, label %850

; <label>:850:                                    ; preds = %block_429ef5
  %851 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %842, %struct.Memory* %761)
  %.pre104 = load i64, i64* %RDX.i1190, align 8
  %.pre105 = load i64, i64* %3, align 8
  %.pre106 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit

; <label>:852:                                    ; preds = %block_429ef5
  %853 = srem i64 %845, %843
  %854 = and i64 %846, 4294967295
  store i64 %854, i64* %RAX.i491, align 8
  %855 = and i64 %853, 4294967295
  store i64 %855, i64* %RDX.i1190, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %852, %850
  %856 = phi i64 [ %.pre106, %850 ], [ %836, %852 ]
  %857 = phi i64 [ %.pre105, %850 ], [ %842, %852 ]
  %858 = phi i64 [ %.pre104, %850 ], [ %855, %852 ]
  %859 = phi %struct.Memory* [ %851, %850 ], [ %761, %852 ]
  %860 = trunc i64 %858 to i32
  %861 = add i32 %860, -1
  %862 = zext i32 %861 to i64
  store i64 %862, i64* %RDX.i1190, align 8
  %863 = icmp eq i32 %860, 0
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %14, align 1
  %865 = and i32 %861, 255
  %866 = tail call i32 @llvm.ctpop.i32(i32 %865)
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  store i8 %869, i8* %21, align 1
  %870 = xor i32 %861, %860
  %871 = lshr i32 %870, 4
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  store i8 %873, i8* %27, align 1
  %874 = icmp eq i32 %861, 0
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %30, align 1
  %876 = lshr i32 %861, 31
  %877 = trunc i32 %876 to i8
  store i8 %877, i8* %33, align 1
  %878 = lshr i32 %860, 31
  %879 = xor i32 %876, %878
  %880 = add nuw nsw i32 %879, %878
  %881 = icmp eq i32 %880, 2
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %39, align 1
  %883 = add i64 %856, -1684
  %884 = add i64 %857, 9
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i32*
  store i32 %861, i32* %885, align 4
  %886 = load i64, i64* %3, align 8
  %887 = add i64 %886, 51
  store i64 %887, i64* %3, align 8
  br label %block_.L_429f4a

block_.L_429f1c:                                  ; preds = %routine_idivl__ecx.exit1046
  %888 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %889 = zext i32 %888 to i64
  store i64 %889, i64* %RCX.i526, align 8
  %890 = add i64 %790, -12
  %891 = add i64 %821, 15
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %890 to i32*
  %893 = load i32, i32* %892, align 4
  %894 = zext i32 %893 to i64
  store i64 %894, i64* %RDX.i1190, align 8
  %895 = add i64 %790, -1688
  %896 = add i64 %821, 21
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i32*
  store i32 20, i32* %897, align 4
  %898 = load i32, i32* %EDX.i1184, align 4
  %899 = zext i32 %898 to i64
  %900 = load i64, i64* %3, align 8
  store i64 %899, i64* %RAX.i491, align 8
  %901 = sext i32 %898 to i64
  %902 = lshr i64 %901, 32
  store i64 %902, i64* %82, align 8
  %903 = load i64, i64* %RBP.i, align 8
  %904 = add i64 %903, -1688
  %905 = add i64 %900, 9
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %904 to i32*
  %907 = load i32, i32* %906, align 4
  %908 = zext i32 %907 to i64
  store i64 %908, i64* %RSI.i1180, align 8
  %909 = add i64 %900, 11
  store i64 %909, i64* %3, align 8
  %910 = sext i32 %907 to i64
  %911 = shl nuw i64 %902, 32
  %912 = or i64 %911, %899
  %913 = sdiv i64 %912, %910
  %914 = shl i64 %913, 32
  %915 = ashr exact i64 %914, 32
  %916 = icmp eq i64 %913, %915
  br i1 %916, label %919, label %917

; <label>:917:                                    ; preds = %block_.L_429f1c
  %918 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %909, %struct.Memory* %761)
  %.pre102 = load i64, i64* %RDX.i1190, align 8
  %.pre103 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:919:                                    ; preds = %block_.L_429f1c
  %920 = srem i64 %912, %910
  %921 = and i64 %913, 4294967295
  store i64 %921, i64* %RAX.i491, align 8
  %922 = and i64 %920, 4294967295
  store i64 %922, i64* %RDX.i1190, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %919, %917
  %923 = phi i64 [ %.pre103, %917 ], [ %909, %919 ]
  %924 = phi i64 [ %.pre102, %917 ], [ %922, %919 ]
  %925 = phi %struct.Memory* [ %918, %917 ], [ %761, %919 ]
  %926 = trunc i64 %924 to i32
  %927 = add i32 %926, -1
  %928 = zext i32 %927 to i64
  store i64 %928, i64* %RDX.i1190, align 8
  %929 = load i64, i64* %RCX.i526, align 8
  %930 = trunc i64 %929 to i32
  %931 = sub i32 %930, %927
  %932 = icmp eq i32 %931, 0
  %933 = zext i1 %932 to i8
  %934 = lshr i32 %931, 31
  %935 = add i32 %931, -1
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RCX.i526, align 8
  store i8 %933, i8* %14, align 1
  %937 = and i32 %935, 255
  %938 = tail call i32 @llvm.ctpop.i32(i32 %937)
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  %941 = xor i8 %940, 1
  store i8 %941, i8* %21, align 1
  %942 = xor i32 %935, %931
  %943 = lshr i32 %942, 4
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  store i8 %945, i8* %27, align 1
  %946 = icmp eq i32 %935, 0
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %30, align 1
  %948 = lshr i32 %935, 31
  %949 = trunc i32 %948 to i8
  store i8 %949, i8* %33, align 1
  %950 = xor i32 %948, %934
  %951 = add nuw nsw i32 %950, %934
  %952 = icmp eq i32 %951, 2
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %39, align 1
  %954 = load i64, i64* %RBP.i, align 8
  %955 = add i64 %954, -1684
  %956 = add i64 %923, 14
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %955 to i32*
  store i32 %935, i32* %957, align 4
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_429f4a

block_.L_429f4a:                                  ; preds = %routine_idivl__esi.exit, %routine_idivl__ecx.exit
  %958 = phi i64 [ %.pre107, %routine_idivl__esi.exit ], [ %887, %routine_idivl__ecx.exit ]
  %MEMORY.3 = phi %struct.Memory* [ %925, %routine_idivl__esi.exit ], [ %859, %routine_idivl__ecx.exit ]
  %959 = load i64, i64* %RBP.i, align 8
  %960 = add i64 %959, -1684
  %961 = add i64 %958, 6
  store i64 %961, i64* %3, align 8
  %962 = inttoptr i64 %960 to i32*
  %963 = load i32, i32* %962, align 4
  %964 = zext i32 %963 to i64
  store i64 %964, i64* %RAX.i491, align 8
  %965 = add i64 %959, -20
  %966 = add i64 %958, 9
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i32*
  store i32 %963, i32* %967, align 4
  %968 = load i64, i64* %RBP.i, align 8
  %969 = add i64 %968, -16
  %970 = load i64, i64* %3, align 8
  %971 = add i64 %970, 3
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %969 to i32*
  %973 = load i32, i32* %972, align 4
  %974 = zext i32 %973 to i64
  store i64 %974, i64* %RAX.i491, align 8
  %975 = add i64 %968, -20
  %976 = add i64 %970, 6
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %975 to i32*
  %978 = load i32, i32* %977, align 4
  %979 = sub i32 %973, %978
  %980 = icmp ult i32 %973, %978
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %14, align 1
  %982 = and i32 %979, 255
  %983 = tail call i32 @llvm.ctpop.i32(i32 %982)
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  %986 = xor i8 %985, 1
  store i8 %986, i8* %21, align 1
  %987 = xor i32 %978, %973
  %988 = xor i32 %987, %979
  %989 = lshr i32 %988, 4
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  store i8 %991, i8* %27, align 1
  %992 = icmp eq i32 %979, 0
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %30, align 1
  %994 = lshr i32 %979, 31
  %995 = trunc i32 %994 to i8
  store i8 %995, i8* %33, align 1
  %996 = lshr i32 %973, 31
  %997 = lshr i32 %978, 31
  %998 = xor i32 %997, %996
  %999 = xor i32 %994, %996
  %1000 = add nuw nsw i32 %999, %998
  %1001 = icmp eq i32 %1000, 2
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %39, align 1
  %1003 = icmp ne i8 %995, 0
  %1004 = xor i1 %1003, %1001
  %1005 = or i1 %992, %1004
  %.v143 = select i1 %1005, i64 65, i64 12
  %1006 = add i64 %970, %.v143
  %1007 = add i64 %1006, 5
  store i64 %1007, i64* %3, align 8
  store i64 4, i64* %RAX.i491, align 8
  %1008 = add i64 %1006, 8
  store i64 %1008, i64* %3, align 8
  br i1 %1005, label %block_.L_429f94, label %block_429f5f

block_429f5f:                                     ; preds = %block_.L_429f4a
  %1009 = load i32, i32* %972, align 4
  %1010 = sub i32 4, %1009
  %1011 = icmp ugt i32 %1009, 4
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %14, align 1
  %1013 = and i32 %1010, 255
  %1014 = tail call i32 @llvm.ctpop.i32(i32 %1013)
  %1015 = trunc i32 %1014 to i8
  %1016 = and i8 %1015, 1
  %1017 = xor i8 %1016, 1
  store i8 %1017, i8* %21, align 1
  %1018 = xor i32 %1009, %1010
  %1019 = lshr i32 %1018, 4
  %1020 = trunc i32 %1019 to i8
  %1021 = and i8 %1020, 1
  store i8 %1021, i8* %27, align 1
  %1022 = icmp eq i32 %1010, 0
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %30, align 1
  %1024 = lshr i32 %1010, 31
  %1025 = trunc i32 %1024 to i8
  store i8 %1025, i8* %33, align 1
  %1026 = lshr i32 %1009, 31
  %1027 = add nuw nsw i32 %1024, %1026
  %1028 = icmp eq i32 %1027, 2
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %39, align 1
  %1030 = icmp ne i8 %1025, 0
  %1031 = xor i1 %1030, %1028
  %.v144 = select i1 %1031, i64 14, i64 30
  %1032 = add i64 %1006, %.v144
  store i64 %1032, i64* %3, align 8
  br i1 %1031, label %block_429f6d, label %block_.L_429f7d

block_429f6d:                                     ; preds = %block_429f5f
  store i64 4, i64* %RAX.i491, align 8
  %1033 = add i64 %968, -1692
  %1034 = add i64 %1032, 11
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i32*
  store i32 4, i32* %1035, align 4
  %1036 = load i64, i64* %3, align 8
  %1037 = add i64 %1036, 14
  store i64 %1037, i64* %3, align 8
  br label %block_.L_429f86

block_.L_429f7d:                                  ; preds = %block_429f5f
  %1038 = add i64 %1032, 3
  store i64 %1038, i64* %3, align 8
  %1039 = load i32, i32* %972, align 4
  %1040 = zext i32 %1039 to i64
  store i64 %1040, i64* %RAX.i491, align 8
  %1041 = add i64 %968, -1692
  %1042 = add i64 %1032, 9
  store i64 %1042, i64* %3, align 8
  %1043 = inttoptr i64 %1041 to i32*
  store i32 %1039, i32* %1043, align 4
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_429f86

block_.L_429f86:                                  ; preds = %block_.L_429f7d, %block_429f6d
  %1044 = phi i64 [ %.pre108, %block_.L_429f7d ], [ %1037, %block_429f6d ]
  %1045 = load i64, i64* %RBP.i, align 8
  %1046 = add i64 %1045, -1692
  %1047 = add i64 %1044, 6
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to i32*
  %1049 = load i32, i32* %1048, align 4
  %1050 = zext i32 %1049 to i64
  store i64 %1050, i64* %RAX.i491, align 8
  %1051 = add i64 %1045, -16
  %1052 = add i64 %1044, 9
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i32*
  store i32 %1049, i32* %1053, align 4
  %1054 = load i64, i64* %3, align 8
  %1055 = add i64 %1054, 53
  store i64 %1055, i64* %3, align 8
  br label %block_.L_429fc4

block_.L_429f94:                                  ; preds = %block_.L_429f4a
  %1056 = load i32, i32* %977, align 4
  %1057 = sub i32 4, %1056
  %1058 = icmp ugt i32 %1056, 4
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %14, align 1
  %1060 = and i32 %1057, 255
  %1061 = tail call i32 @llvm.ctpop.i32(i32 %1060)
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  %1064 = xor i8 %1063, 1
  store i8 %1064, i8* %21, align 1
  %1065 = xor i32 %1056, %1057
  %1066 = lshr i32 %1065, 4
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  store i8 %1068, i8* %27, align 1
  %1069 = icmp eq i32 %1057, 0
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %30, align 1
  %1071 = lshr i32 %1057, 31
  %1072 = trunc i32 %1071 to i8
  store i8 %1072, i8* %33, align 1
  %1073 = lshr i32 %1056, 31
  %1074 = add nuw nsw i32 %1071, %1073
  %1075 = icmp eq i32 %1074, 2
  %1076 = zext i1 %1075 to i8
  store i8 %1076, i8* %39, align 1
  %1077 = icmp ne i8 %1072, 0
  %1078 = xor i1 %1077, %1075
  %.v148 = select i1 %1078, i64 14, i64 30
  %1079 = add i64 %1006, %.v148
  store i64 %1079, i64* %3, align 8
  br i1 %1078, label %block_429fa2, label %block_.L_429fb2

block_429fa2:                                     ; preds = %block_.L_429f94
  store i64 4, i64* %RAX.i491, align 8
  %1080 = add i64 %968, -1696
  %1081 = add i64 %1079, 11
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1080 to i32*
  store i32 4, i32* %1082, align 4
  %1083 = load i64, i64* %3, align 8
  %1084 = add i64 %1083, 14
  store i64 %1084, i64* %3, align 8
  br label %block_.L_429fbb

block_.L_429fb2:                                  ; preds = %block_.L_429f94
  %1085 = add i64 %1079, 3
  store i64 %1085, i64* %3, align 8
  %1086 = load i32, i32* %977, align 4
  %1087 = zext i32 %1086 to i64
  store i64 %1087, i64* %RAX.i491, align 8
  %1088 = add i64 %968, -1696
  %1089 = add i64 %1079, 9
  store i64 %1089, i64* %3, align 8
  %1090 = inttoptr i64 %1088 to i32*
  store i32 %1086, i32* %1090, align 4
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_429fbb

block_.L_429fbb:                                  ; preds = %block_.L_429fb2, %block_429fa2
  %1091 = phi i64 [ %.pre109, %block_.L_429fb2 ], [ %1084, %block_429fa2 ]
  %1092 = load i64, i64* %RBP.i, align 8
  %1093 = add i64 %1092, -1696
  %1094 = add i64 %1091, 6
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i32*
  %1096 = load i32, i32* %1095, align 4
  %1097 = zext i32 %1096 to i64
  store i64 %1097, i64* %RAX.i491, align 8
  %1098 = add i64 %1092, -20
  %1099 = add i64 %1091, 9
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i32*
  store i32 %1096, i32* %1100, align 4
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_429fc4

block_.L_429fc4:                                  ; preds = %block_.L_429fbb, %block_.L_429f86
  %1101 = phi i64 [ %.pre110, %block_.L_429fbb ], [ %1055, %block_.L_429f86 ]
  %1102 = load i64, i64* %RBP.i, align 8
  %1103 = add i64 %1102, -16
  %1104 = add i64 %1101, 3
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i32*
  %1106 = load i32, i32* %1105, align 4
  %1107 = zext i32 %1106 to i64
  store i64 %1107, i64* %RAX.i491, align 8
  %1108 = add i64 %1102, -20
  %1109 = add i64 %1101, 6
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i32*
  %1111 = load i32, i32* %1110, align 4
  %1112 = sub i32 %1106, %1111
  %1113 = icmp ult i32 %1106, %1111
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %14, align 1
  %1115 = and i32 %1112, 255
  %1116 = tail call i32 @llvm.ctpop.i32(i32 %1115)
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  %1119 = xor i8 %1118, 1
  store i8 %1119, i8* %21, align 1
  %1120 = xor i32 %1111, %1106
  %1121 = xor i32 %1120, %1112
  %1122 = lshr i32 %1121, 4
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  store i8 %1124, i8* %27, align 1
  %1125 = icmp eq i32 %1112, 0
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %30, align 1
  %1127 = lshr i32 %1112, 31
  %1128 = trunc i32 %1127 to i8
  store i8 %1128, i8* %33, align 1
  %1129 = lshr i32 %1106, 31
  %1130 = lshr i32 %1111, 31
  %1131 = xor i32 %1130, %1129
  %1132 = xor i32 %1127, %1129
  %1133 = add nuw nsw i32 %1132, %1131
  %1134 = icmp eq i32 %1133, 2
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %39, align 1
  %1136 = icmp ne i8 %1128, 0
  %1137 = xor i1 %1136, %1134
  %.v145 = select i1 %1137, i64 12, i64 26
  %1138 = add i64 %1101, %.v145
  %1139 = add i64 %1138, 3
  store i64 %1139, i64* %3, align 8
  br i1 %1137, label %block_429fd0, label %block_.L_429fde

block_429fd0:                                     ; preds = %block_.L_429fc4
  %1140 = load i32, i32* %1105, align 4
  %1141 = zext i32 %1140 to i64
  store i64 %1141, i64* %RAX.i491, align 8
  %1142 = add i64 %1102, -1700
  %1143 = add i64 %1138, 9
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i32*
  store i32 %1140, i32* %1144, align 4
  %1145 = load i64, i64* %3, align 8
  %1146 = add i64 %1145, 14
  store i64 %1146, i64* %3, align 8
  br label %block_.L_429fe7

block_.L_429fde:                                  ; preds = %block_.L_429fc4
  %1147 = load i32, i32* %1110, align 4
  %1148 = zext i32 %1147 to i64
  store i64 %1148, i64* %RAX.i491, align 8
  %1149 = add i64 %1102, -1700
  %1150 = add i64 %1138, 9
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i32*
  store i32 %1147, i32* %1151, align 4
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_429fe7

block_.L_429fe7:                                  ; preds = %block_.L_429fde, %block_429fd0
  %1152 = phi i64 [ %.pre111, %block_.L_429fde ], [ %1146, %block_429fd0 ]
  %1153 = load i64, i64* %RBP.i, align 8
  %1154 = add i64 %1153, -1700
  %1155 = add i64 %1152, 6
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i32*
  %1157 = load i32, i32* %1156, align 4
  %1158 = zext i32 %1157 to i64
  store i64 %1158, i64* %RAX.i491, align 8
  %1159 = add i64 %1152, add (i64 ptrtoint (%G_0xb913f__rip__type* @G_0xb913f__rip_ to i64), i64 6)
  %1160 = add i64 %1152, 14
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1159 to i32*
  %1162 = load i32, i32* %1161, align 4
  store i32 %1162, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %1163 = load <2 x i32>, <2 x i32>* %86, align 1
  %1164 = load <2 x i32>, <2 x i32>* %75, align 1
  %1165 = sitofp i32 %1157 to float
  store float %1165, float* %66, align 1
  %1166 = extractelement <2 x i32> %1163, i32 1
  store i32 %1166, i32* %76, align 1
  %1167 = extractelement <2 x i32> %1164, i32 0
  store i32 %1167, i32* %77, align 1
  %1168 = extractelement <2 x i32> %1164, i32 1
  store i32 %1168, i32* %78, align 1
  %1169 = load <2 x float>, <2 x float>* %60, align 1
  %1170 = load <2 x i32>, <2 x i32>* %80, align 1
  %1171 = load <2 x float>, <2 x float>* %74, align 1
  %1172 = extractelement <2 x float> %1169, i32 0
  %1173 = extractelement <2 x float> %1171, i32 0
  %1174 = fmul float %1172, %1173
  store float %1174, float* %79, align 1
  %1175 = bitcast <2 x float> %1169 to <2 x i32>
  %1176 = extractelement <2 x i32> %1175, i32 1
  store i32 %1176, i32* %56, align 1
  %1177 = extractelement <2 x i32> %1170, i32 0
  store i32 %1177, i32* %57, align 1
  %1178 = extractelement <2 x i32> %1170, i32 1
  store i32 %1178, i32* %59, align 1
  %1179 = add i64 %1153, -16
  %1180 = add i64 %1152, 27
  store i64 %1180, i64* %3, align 8
  %1181 = bitcast <2 x float> %1171 to <2 x i32>
  %1182 = load <2 x i32>, <2 x i32>* %75, align 1
  %1183 = inttoptr i64 %1179 to i32*
  %1184 = load i32, i32* %1183, align 4
  %1185 = sitofp i32 %1184 to float
  store float %1185, float* %66, align 1
  %1186 = extractelement <2 x i32> %1181, i32 1
  store i32 %1186, i32* %76, align 1
  %1187 = extractelement <2 x i32> %1182, i32 0
  store i32 %1187, i32* %77, align 1
  %1188 = extractelement <2 x i32> %1182, i32 1
  store i32 %1188, i32* %78, align 1
  %1189 = load <2 x float>, <2 x float>* %60, align 1
  %1190 = load <2 x i32>, <2 x i32>* %80, align 1
  %1191 = load <2 x float>, <2 x float>* %74, align 1
  %1192 = extractelement <2 x float> %1189, i32 0
  %1193 = extractelement <2 x float> %1191, i32 0
  %1194 = fadd float %1192, %1193
  store float %1194, float* %79, align 1
  %1195 = bitcast <2 x float> %1189 to <2 x i32>
  %1196 = extractelement <2 x i32> %1195, i32 1
  store i32 %1196, i32* %56, align 1
  %1197 = extractelement <2 x i32> %1190, i32 0
  store i32 %1197, i32* %57, align 1
  %1198 = extractelement <2 x i32> %1190, i32 1
  store i32 %1198, i32* %59, align 1
  %1199 = add i64 %1153, -20
  %1200 = add i64 %1152, 36
  store i64 %1200, i64* %3, align 8
  %1201 = bitcast <2 x float> %1191 to <2 x i32>
  %1202 = load <2 x i32>, <2 x i32>* %75, align 1
  %1203 = inttoptr i64 %1199 to i32*
  %1204 = load i32, i32* %1203, align 4
  %1205 = sitofp i32 %1204 to float
  store float %1205, float* %66, align 1
  %1206 = extractelement <2 x i32> %1201, i32 1
  store i32 %1206, i32* %76, align 1
  %1207 = extractelement <2 x i32> %1202, i32 0
  store i32 %1207, i32* %77, align 1
  %1208 = extractelement <2 x i32> %1202, i32 1
  store i32 %1208, i32* %78, align 1
  %1209 = load <2 x float>, <2 x float>* %60, align 1
  %1210 = load <2 x i32>, <2 x i32>* %80, align 1
  %1211 = load <2 x float>, <2 x float>* %74, align 1
  %1212 = extractelement <2 x float> %1209, i32 0
  %1213 = extractelement <2 x float> %1211, i32 0
  %1214 = fadd float %1212, %1213
  store float %1214, float* %79, align 1
  %1215 = bitcast <2 x float> %1209 to <2 x i32>
  %1216 = extractelement <2 x i32> %1215, i32 1
  store i32 %1216, i32* %56, align 1
  %1217 = extractelement <2 x i32> %1210, i32 0
  store i32 %1217, i32* %57, align 1
  %1218 = extractelement <2 x i32> %1210, i32 1
  store i32 %1218, i32* %59, align 1
  %1219 = load i64, i64* %RBP.i, align 8
  %1220 = add i64 %1219, -24
  %1221 = add i64 %1152, 45
  store i64 %1221, i64* %3, align 8
  %1222 = load <2 x float>, <2 x float>* %60, align 1
  %1223 = extractelement <2 x float> %1222, i32 0
  %1224 = inttoptr i64 %1220 to float*
  store float %1223, float* %1224, align 4
  %1225 = load i64, i64* %RBP.i, align 8
  %1226 = add i64 %1225, -8
  %1227 = load i64, i64* %3, align 8
  %1228 = add i64 %1227, 4
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1226 to i64*
  %1230 = load i64, i64* %1229, align 8
  store i64 %1230, i64* %RCX.i526, align 8
  %1231 = add i64 %1225, -12
  %1232 = add i64 %1227, 8
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1231 to i32*
  %1234 = load i32, i32* %1233, align 4
  %1235 = sext i32 %1234 to i64
  store i64 %1235, i64* %RDX.i1190, align 8
  %1236 = shl nsw i64 %1235, 2
  %1237 = add i64 %1230, 2000
  %1238 = add i64 %1237, %1236
  %1239 = add i64 %1227, 17
  store i64 %1239, i64* %3, align 8
  %1240 = inttoptr i64 %1238 to i32*
  %1241 = load i32, i32* %1240, align 4
  store i32 %1241, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %1242 = add i64 %1227, 21
  store i64 %1242, i64* %3, align 8
  %1243 = load i64, i64* %1229, align 8
  store i64 %1243, i64* %RCX.i526, align 8
  %1244 = add i64 %1227, 25
  store i64 %1244, i64* %3, align 8
  %1245 = load i32, i32* %1233, align 4
  %1246 = sext i32 %1245 to i64
  store i64 %1246, i64* %RDX.i1190, align 8
  %1247 = shl nsw i64 %1246, 2
  %1248 = add i64 %1243, 400
  %1249 = add i64 %1248, %1247
  %1250 = add i64 %1227, 34
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1249 to i32*
  %1252 = load i32, i32* %1251, align 4
  store i32 %1252, i32* %67, align 1
  store float 0.000000e+00, float* %69, align 1
  store float 0.000000e+00, float* %71, align 1
  store float 0.000000e+00, float* %73, align 1
  %1253 = add i64 %1227, 37
  store i64 %1253, i64* %3, align 8
  %1254 = load <2 x float>, <2 x float>* %74, align 1
  %1255 = extractelement <2 x float> %1254, i32 0
  %1256 = load <2 x float>, <2 x float>* %60, align 1
  %1257 = extractelement <2 x float> %1256, i32 0
  %1258 = fcmp uno float %1255, %1257
  br i1 %1258, label %1259, label %1269

; <label>:1259:                                   ; preds = %block_.L_429fe7
  %1260 = fadd float %1255, %1257
  %1261 = bitcast float %1260 to i32
  %1262 = and i32 %1261, 2143289344
  %1263 = icmp eq i32 %1262, 2139095040
  %1264 = and i32 %1261, 4194303
  %1265 = icmp ne i32 %1264, 0
  %1266 = and i1 %1263, %1265
  br i1 %1266, label %1267, label %1275

; <label>:1267:                                   ; preds = %1259
  %1268 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1253, %struct.Memory* %MEMORY.3)
  %.pre112 = load i64, i64* %3, align 8
  %.pre113 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomiss__xmm0___xmm1.exit844

; <label>:1269:                                   ; preds = %block_.L_429fe7
  %1270 = fcmp ogt float %1255, %1257
  br i1 %1270, label %1275, label %1271

; <label>:1271:                                   ; preds = %1269
  %1272 = fcmp olt float %1255, %1257
  br i1 %1272, label %1275, label %1273

; <label>:1273:                                   ; preds = %1271
  %1274 = fcmp oeq float %1255, %1257
  br i1 %1274, label %1275, label %1279

; <label>:1275:                                   ; preds = %1273, %1271, %1269, %1259
  %1276 = phi i8 [ 0, %1269 ], [ 0, %1271 ], [ 1, %1273 ], [ 1, %1259 ]
  %1277 = phi i8 [ 0, %1269 ], [ 0, %1271 ], [ 0, %1273 ], [ 1, %1259 ]
  %1278 = phi i8 [ 0, %1269 ], [ 1, %1271 ], [ 0, %1273 ], [ 1, %1259 ]
  store i8 %1276, i8* %30, align 1
  store i8 %1277, i8* %21, align 1
  store i8 %1278, i8* %14, align 1
  br label %1279

; <label>:1279:                                   ; preds = %1275, %1273
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit844

routine_ucomiss__xmm0___xmm1.exit844:             ; preds = %1279, %1267
  %1280 = phi i64 [ %.pre113, %1267 ], [ %1225, %1279 ]
  %1281 = phi i64 [ %.pre112, %1267 ], [ %1253, %1279 ]
  %1282 = phi %struct.Memory* [ %1268, %1267 ], [ %MEMORY.3, %1279 ]
  %1283 = load i8, i8* %14, align 1
  %1284 = load i8, i8* %30, align 1
  %1285 = or i8 %1284, %1283
  %1286 = icmp ne i8 %1285, 0
  %.v159 = select i1 %1286, i64 36, i64 6
  %1287 = add i64 %1281, %.v159
  %1288 = add i64 %1280, -8
  %1289 = add i64 %1287, 4
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i64*
  %1291 = load i64, i64* %1290, align 8
  store i64 %1291, i64* %RAX.i491, align 8
  %1292 = add i64 %1280, -12
  %1293 = add i64 %1287, 8
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i32*
  %1295 = load i32, i32* %1294, align 4
  %1296 = sext i32 %1295 to i64
  store i64 %1296, i64* %RCX.i526, align 8
  %1297 = shl nsw i64 %1296, 2
  br i1 %1286, label %block_.L_42a05d, label %block_42a03f

block_42a03f:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit844
  %1298 = add i64 %1291, 400
  %1299 = add i64 %1298, %1297
  %1300 = add i64 %1287, 17
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i32*
  %1302 = load i32, i32* %1301, align 4
  store i32 %1302, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %1303 = add i64 %1280, -1704
  %1304 = add i64 %1287, 25
  store i64 %1304, i64* %3, align 8
  %1305 = load <2 x float>, <2 x float>* %60, align 1
  %1306 = extractelement <2 x float> %1305, i32 0
  %1307 = inttoptr i64 %1303 to float*
  store float %1306, float* %1307, align 4
  %1308 = load i64, i64* %3, align 8
  %1309 = add i64 %1308, 30
  store i64 %1309, i64* %3, align 8
  br label %block_.L_42a076

block_.L_42a05d:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit844
  %1310 = add i64 %1291, 2000
  %1311 = add i64 %1310, %1297
  %1312 = add i64 %1287, 17
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1311 to i32*
  %1314 = load i32, i32* %1313, align 4
  store i32 %1314, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %1315 = add i64 %1280, -1704
  %1316 = add i64 %1287, 25
  store i64 %1316, i64* %3, align 8
  %1317 = load <2 x float>, <2 x float>* %60, align 1
  %1318 = extractelement <2 x float> %1317, i32 0
  %1319 = inttoptr i64 %1315 to float*
  store float %1318, float* %1319, align 4
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_42a076

block_.L_42a076:                                  ; preds = %block_.L_42a05d, %block_42a03f
  %1320 = phi i64 [ %.pre114, %block_.L_42a05d ], [ %1309, %block_42a03f ]
  %1321 = load i64, i64* %RBP.i, align 8
  %1322 = add i64 %1321, -1704
  %1323 = add i64 %1320, 8
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i32*
  %1325 = load i32, i32* %1324, align 4
  store i32 %1325, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  store i64 ptrtoint (%G__0x7ae468_type* @G__0x7ae468 to i64), i64* %RDI.i, align 8
  %1326 = add i64 %1321, -24
  %1327 = add i64 %1320, 23
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i32*
  %1329 = load i32, i32* %1328, align 4
  store i32 %1329, i32* %67, align 1
  store float 0.000000e+00, float* %69, align 1
  store float 0.000000e+00, float* %71, align 1
  store float 0.000000e+00, float* %73, align 1
  %1330 = add i64 %1321, -1708
  %1331 = add i64 %1320, 31
  store i64 %1331, i64* %3, align 8
  %1332 = load <2 x float>, <2 x float>* %60, align 1
  %1333 = extractelement <2 x float> %1332, i32 0
  %1334 = inttoptr i64 %1330 to float*
  store float %1333, float* %1334, align 4
  %1335 = load i64, i64* %3, align 8
  %1336 = load <2 x i32>, <2 x i32>* %86, align 1
  %1337 = load <2 x i32>, <2 x i32>* %75, align 1
  %1338 = extractelement <2 x i32> %1336, i32 0
  store i32 %1338, i32* %54, align 1
  %1339 = extractelement <2 x i32> %1336, i32 1
  store i32 %1339, i32* %56, align 1
  %1340 = extractelement <2 x i32> %1337, i32 0
  store i32 %1340, i32* %57, align 1
  %1341 = extractelement <2 x i32> %1337, i32 1
  store i32 %1341, i32* %59, align 1
  %1342 = add i64 %1335, 755659
  %1343 = add i64 %1335, 8
  %1344 = load i64, i64* %6, align 8
  %1345 = add i64 %1344, -8
  %1346 = inttoptr i64 %1345 to i64*
  store i64 %1343, i64* %1346, align 8
  store i64 %1345, i64* %6, align 8
  store i64 %1342, i64* %3, align 8
  %call2_42a098 = tail call %struct.Memory* @sub_4e2860.gg_interpolate(%struct.State* nonnull %0, i64 %1342, %struct.Memory* %1282)
  %1347 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x7ae4c8_type* @G__0x7ae4c8 to i64), i64* %RDI.i, align 8
  %1348 = load i64, i64* %RBP.i, align 8
  %1349 = add i64 %1348, -1708
  %1350 = add i64 %1347, 18
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1349 to i32*
  %1352 = load i32, i32* %1351, align 4
  store i32 %1352, i32* %67, align 1
  store float 0.000000e+00, float* %69, align 1
  store float 0.000000e+00, float* %71, align 1
  store float 0.000000e+00, float* %73, align 1
  %1353 = load <2 x float>, <2 x float>* %74, align 1
  %1354 = load <2 x i32>, <2 x i32>* %75, align 1
  %1355 = load <2 x float>, <2 x float>* %60, align 1
  %1356 = extractelement <2 x float> %1353, i32 0
  %1357 = extractelement <2 x float> %1355, i32 0
  %1358 = fdiv float %1356, %1357
  store float %1358, float* %66, align 1
  %1359 = bitcast <2 x float> %1353 to <2 x i32>
  %1360 = extractelement <2 x i32> %1359, i32 1
  store i32 %1360, i32* %76, align 1
  %1361 = extractelement <2 x i32> %1354, i32 0
  store i32 %1361, i32* %77, align 1
  %1362 = extractelement <2 x i32> %1354, i32 1
  store i32 %1362, i32* %78, align 1
  %1363 = add i64 %1348, -1636
  %1364 = add i64 %1347, 30
  store i64 %1364, i64* %3, align 8
  %1365 = load <2 x float>, <2 x float>* %74, align 1
  %1366 = extractelement <2 x float> %1365, i32 0
  %1367 = inttoptr i64 %1363 to float*
  store float %1366, float* %1367, align 4
  %1368 = load i64, i64* %RBP.i, align 8
  %1369 = add i64 %1368, -1636
  %1370 = load i64, i64* %3, align 8
  %1371 = add i64 %1370, 8
  store i64 %1371, i64* %3, align 8
  %1372 = inttoptr i64 %1369 to i32*
  %1373 = load i32, i32* %1372, align 4
  store i32 %1373, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %1374 = add i64 %1370, 755621
  %1375 = add i64 %1370, 13
  %1376 = load i64, i64* %6, align 8
  %1377 = add i64 %1376, -8
  %1378 = inttoptr i64 %1377 to i64*
  store i64 %1375, i64* %1378, align 8
  store i64 %1377, i64* %6, align 8
  store i64 %1374, i64* %3, align 8
  %call2_42a0c3 = tail call %struct.Memory* @sub_4e2860.gg_interpolate(%struct.State* nonnull %0, i64 %1374, %struct.Memory* %call2_42a098)
  %1379 = load i64, i64* %RBP.i, align 8
  %1380 = add i64 %1379, -12
  %1381 = load i64, i64* %3, align 8
  %1382 = add i64 %1381, 4
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1380 to i32*
  %1384 = load i32, i32* %1383, align 4
  %1385 = sext i32 %1384 to i64
  store i64 %1385, i64* %RDI.i, align 8
  %1386 = shl nsw i64 %1385, 2
  %1387 = add i64 %1379, -1632
  %1388 = add i64 %1387, %1386
  %1389 = add i64 %1381, 13
  store i64 %1389, i64* %3, align 8
  %1390 = load <2 x float>, <2 x float>* %60, align 1
  %1391 = load <2 x i32>, <2 x i32>* %80, align 1
  %1392 = inttoptr i64 %1388 to float*
  %1393 = load float, float* %1392, align 4
  %1394 = extractelement <2 x float> %1390, i32 0
  %1395 = fmul float %1394, %1393
  store float %1395, float* %79, align 1
  %1396 = bitcast <2 x float> %1390 to <2 x i32>
  %1397 = extractelement <2 x i32> %1396, i32 1
  store i32 %1397, i32* %56, align 1
  %1398 = extractelement <2 x i32> %1391, i32 0
  store i32 %1398, i32* %57, align 1
  %1399 = extractelement <2 x i32> %1391, i32 1
  store i32 %1399, i32* %59, align 1
  %1400 = add i64 %1381, 22
  store i64 %1400, i64* %3, align 8
  %1401 = load <2 x float>, <2 x float>* %60, align 1
  %1402 = extractelement <2 x float> %1401, i32 0
  store float %1402, float* %1392, align 4
  %1403 = load i64, i64* %RBP.i, align 8
  %1404 = add i64 %1403, -12
  %1405 = load i64, i64* %3, align 8
  %1406 = add i64 %1405, 4
  store i64 %1406, i64* %3, align 8
  %1407 = inttoptr i64 %1404 to i32*
  %1408 = load i32, i32* %1407, align 4
  %1409 = sext i32 %1408 to i64
  store i64 %1409, i64* %RDI.i, align 8
  %1410 = add nsw i64 %1409, 12099168
  %1411 = add i64 %1405, 12
  store i64 %1411, i64* %3, align 8
  %1412 = inttoptr i64 %1410 to i8*
  %1413 = load i8, i8* %1412, align 1
  %1414 = zext i8 %1413 to i64
  store i64 %1414, i64* %RAX.i491, align 8
  %1415 = zext i8 %1413 to i32
  %1416 = add nsw i32 %1415, -2
  %1417 = icmp ult i8 %1413, 2
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %14, align 1
  %1419 = and i32 %1416, 255
  %1420 = tail call i32 @llvm.ctpop.i32(i32 %1419)
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  %1423 = xor i8 %1422, 1
  store i8 %1423, i8* %21, align 1
  %1424 = xor i32 %1416, %1415
  %1425 = lshr i32 %1424, 4
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  store i8 %1427, i8* %27, align 1
  %1428 = icmp eq i32 %1416, 0
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %30, align 1
  %1430 = lshr i32 %1416, 31
  %1431 = trunc i32 %1430 to i8
  store i8 %1431, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v146 = select i1 %1428, i64 21, i64 47
  %1432 = add i64 %1405, %.v146
  store i64 %1432, i64* %3, align 8
  br i1 %1428, label %block_42a0f3, label %block_.L_42a10d

block_42a0f3:                                     ; preds = %block_.L_42a076
  %1433 = add i64 %1432, ptrtoint (%G_0xb9011__rip__type* @G_0xb9011__rip_ to i64)
  %1434 = add i64 %1432, 8
  store i64 %1434, i64* %3, align 8
  %1435 = inttoptr i64 %1433 to i32*
  %1436 = load i32, i32* %1435, align 4
  store i32 %1436, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %1437 = add i64 %1432, 12
  store i64 %1437, i64* %3, align 8
  %1438 = load i32, i32* %1407, align 4
  %1439 = sext i32 %1438 to i64
  store i64 %1439, i64* %RAX.i491, align 8
  %1440 = shl nsw i64 %1439, 2
  %1441 = add i64 %1403, -1632
  %1442 = add i64 %1441, %1440
  %1443 = add i64 %1432, 21
  store i64 %1443, i64* %3, align 8
  %1444 = load <2 x float>, <2 x float>* %60, align 1
  %1445 = extractelement <2 x float> %1444, i32 0
  %1446 = inttoptr i64 %1442 to float*
  store float %1445, float* %1446, align 4
  %1447 = load i64, i64* %3, align 8
  %1448 = add i64 %1447, 52
  br label %block_.L_42a13c

block_.L_42a10d:                                  ; preds = %block_.L_42a076
  %1449 = add i64 %1432, 4
  store i64 %1449, i64* %3, align 8
  %1450 = load i32, i32* %1407, align 4
  %1451 = sext i32 %1450 to i64
  store i64 %1451, i64* %RAX.i491, align 8
  %1452 = add nsw i64 %1451, 12099168
  %1453 = add i64 %1432, 12
  store i64 %1453, i64* %3, align 8
  %1454 = inttoptr i64 %1452 to i8*
  %1455 = load i8, i8* %1454, align 1
  %1456 = zext i8 %1455 to i64
  store i64 %1456, i64* %RCX.i526, align 8
  %1457 = zext i8 %1455 to i32
  %1458 = add nsw i32 %1457, -1
  %1459 = icmp eq i8 %1455, 0
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %14, align 1
  %1461 = and i32 %1458, 255
  %1462 = tail call i32 @llvm.ctpop.i32(i32 %1461)
  %1463 = trunc i32 %1462 to i8
  %1464 = and i8 %1463, 1
  %1465 = xor i8 %1464, 1
  store i8 %1465, i8* %21, align 1
  %1466 = xor i32 %1458, %1457
  %1467 = lshr i32 %1466, 4
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  store i8 %1469, i8* %27, align 1
  %1470 = icmp eq i32 %1458, 0
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %30, align 1
  %1472 = lshr i32 %1458, 31
  %1473 = trunc i32 %1472 to i8
  store i8 %1473, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v147 = select i1 %1470, i64 21, i64 42
  %1474 = add i64 %1432, %.v147
  store i64 %1474, i64* %3, align 8
  br i1 %1470, label %block_42a122, label %block_.L_42a137

block_42a122:                                     ; preds = %block_.L_42a10d
  %1475 = add i64 %1474, ptrtoint (%G_0xb8fda__rip__type* @G_0xb8fda__rip_ to i64)
  %1476 = add i64 %1474, 8
  store i64 %1476, i64* %3, align 8
  %1477 = inttoptr i64 %1475 to i32*
  %1478 = load i32, i32* %1477, align 4
  store i32 %1478, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %1479 = add i64 %1474, 12
  store i64 %1479, i64* %3, align 8
  %1480 = load i32, i32* %1407, align 4
  %1481 = sext i32 %1480 to i64
  store i64 %1481, i64* %RAX.i491, align 8
  %1482 = shl nsw i64 %1481, 2
  %1483 = add i64 %1403, -1632
  %1484 = add i64 %1483, %1482
  %1485 = add i64 %1474, 21
  store i64 %1485, i64* %3, align 8
  %1486 = load <2 x float>, <2 x float>* %60, align 1
  %1487 = extractelement <2 x float> %1486, i32 0
  %1488 = inttoptr i64 %1484 to float*
  store float %1487, float* %1488, align 4
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_42a137

block_.L_42a137:                                  ; preds = %block_.L_42a10d, %block_42a122
  %1489 = phi i64 [ %.pre115, %block_42a122 ], [ %1474, %block_.L_42a10d ]
  %1490 = add i64 %1489, 5
  store i64 %1490, i64* %3, align 8
  br label %block_.L_42a13c

block_.L_42a13c:                                  ; preds = %block_.L_42a137, %block_42a0f3
  %storemerge = phi i64 [ %1448, %block_42a0f3 ], [ %1490, %block_.L_42a137 ]
  %1491 = add i64 %storemerge, 5
  store i64 %1491, i64* %3, align 8
  %.pre116 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42a141

block_.L_42a141:                                  ; preds = %block_429d48, %block_.L_42a13c
  %1492 = phi i64 [ %179, %block_429d48 ], [ %1491, %block_.L_42a13c ]
  %1493 = phi i64 [ %156, %block_429d48 ], [ %.pre116, %block_.L_42a13c ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.0, %block_429d48 ], [ %call2_42a0c3, %block_.L_42a13c ]
  %1494 = add i64 %1493, -12
  %1495 = add i64 %1492, 4
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = sext i32 %1497 to i64
  store i64 %1498, i64* %RAX.i491, align 8
  %1499 = shl nsw i64 %1498, 2
  %1500 = add i64 %1493, -1632
  %1501 = add i64 %1500, %1499
  %1502 = add i64 %1492, 13
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i32*
  %1504 = load i32, i32* %1503, align 4
  store i32 %1504, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %1505 = add i64 %1493, -8
  %1506 = add i64 %1492, 17
  store i64 %1506, i64* %3, align 8
  %1507 = inttoptr i64 %1505 to i64*
  %1508 = load i64, i64* %1507, align 8
  store i64 %1508, i64* %RAX.i491, align 8
  %1509 = add i64 %1492, 21
  store i64 %1509, i64* %3, align 8
  %1510 = load i32, i32* %1496, align 4
  %1511 = sext i32 %1510 to i64
  store i64 %1511, i64* %RCX.i526, align 8
  %1512 = shl nsw i64 %1511, 2
  %1513 = add i64 %1508, 31016
  %1514 = add i64 %1513, %1512
  %1515 = add i64 %1492, 30
  store i64 %1515, i64* %3, align 8
  %1516 = load <2 x float>, <2 x float>* %60, align 1
  %1517 = extractelement <2 x float> %1516, i32 0
  %1518 = inttoptr i64 %1514 to float*
  store float %1517, float* %1518, align 4
  %.pre117 = load i64, i64* %3, align 8
  %.pre118 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42a15f

block_.L_42a15f:                                  ; preds = %block_.L_42a141, %block_429d33
  %1519 = phi i64 [ %90, %block_429d33 ], [ %.pre118, %block_.L_42a141 ]
  %1520 = phi i64 [ %145, %block_429d33 ], [ %.pre117, %block_.L_42a141 ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.0, %block_429d33 ], [ %MEMORY.11, %block_.L_42a141 ]
  %1521 = add i64 %1519, -12
  %1522 = add i64 %1520, 8
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1521 to i32*
  %1524 = load i32, i32* %1523, align 4
  %1525 = add i32 %1524, 1
  %1526 = zext i32 %1525 to i64
  store i64 %1526, i64* %RAX.i491, align 8
  %1527 = icmp eq i32 %1524, -1
  %1528 = icmp eq i32 %1525, 0
  %1529 = or i1 %1527, %1528
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %14, align 1
  %1531 = and i32 %1525, 255
  %1532 = tail call i32 @llvm.ctpop.i32(i32 %1531)
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  %1535 = xor i8 %1534, 1
  store i8 %1535, i8* %21, align 1
  %1536 = xor i32 %1525, %1524
  %1537 = lshr i32 %1536, 4
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  store i8 %1539, i8* %27, align 1
  %1540 = zext i1 %1528 to i8
  store i8 %1540, i8* %30, align 1
  %1541 = lshr i32 %1525, 31
  %1542 = trunc i32 %1541 to i8
  store i8 %1542, i8* %33, align 1
  %1543 = lshr i32 %1524, 31
  %1544 = xor i32 %1541, %1543
  %1545 = add nuw nsw i32 %1544, %1541
  %1546 = icmp eq i32 %1545, 2
  %1547 = zext i1 %1546 to i8
  store i8 %1547, i8* %39, align 1
  %1548 = add i64 %1520, 14
  store i64 %1548, i64* %3, align 8
  store i32 %1525, i32* %1523, align 4
  %1549 = load i64, i64* %3, align 8
  %1550 = add i64 %1549, -1095
  store i64 %1550, i64* %3, align 8
  br label %block_.L_429d26

block_.L_42a172:                                  ; preds = %block_.L_429d26
  %1551 = add i64 %119, 7
  store i64 %1551, i64* %3, align 8
  store i32 21, i32* %93, align 4
  %1552 = bitcast %union.VectorReg* %64 to double*
  %1553 = bitcast [32 x %union.VectorReg]* %51 to double*
  %1554 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %51, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1555 = bitcast i64* %53 to double*
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %1557 = bitcast %union.VectorReg* %1556 to double*
  %.pre47 = load i64, i64* %3, align 8
  %1558 = bitcast [32 x %union.VectorReg]* %51 to <4 x i32>*
  %1559 = bitcast %union.VectorReg* %64 to <4 x i32>*
  %1560 = bitcast [32 x %union.VectorReg]* %51 to <4 x i32>*
  %1561 = bitcast i64* %53 to <2 x i32>*
  %1562 = bitcast %union.VectorReg* %64 to <4 x i32>*
  %1563 = bitcast [32 x %union.VectorReg]* %51 to <4 x i32>*
  br label %block_.L_42a179

block_.L_42a179:                                  ; preds = %block_.L_42a56c, %block_.L_42a172
  %1564 = phi i64 [ %.pre47, %block_.L_42a172 ], [ %2824, %block_.L_42a56c ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.0, %block_.L_42a172 ], [ %MEMORY.26, %block_.L_42a56c ]
  %1565 = load i64, i64* %RBP.i, align 8
  %1566 = add i64 %1565, -12
  %1567 = add i64 %1564, 7
  store i64 %1567, i64* %3, align 8
  %1568 = inttoptr i64 %1566 to i32*
  %1569 = load i32, i32* %1568, align 4
  %1570 = add i32 %1569, -400
  %1571 = icmp ult i32 %1569, 400
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %14, align 1
  %1573 = and i32 %1570, 255
  %1574 = tail call i32 @llvm.ctpop.i32(i32 %1573)
  %1575 = trunc i32 %1574 to i8
  %1576 = and i8 %1575, 1
  %1577 = xor i8 %1576, 1
  store i8 %1577, i8* %21, align 1
  %1578 = xor i32 %1569, 16
  %1579 = xor i32 %1578, %1570
  %1580 = lshr i32 %1579, 4
  %1581 = trunc i32 %1580 to i8
  %1582 = and i8 %1581, 1
  store i8 %1582, i8* %27, align 1
  %1583 = icmp eq i32 %1570, 0
  %1584 = zext i1 %1583 to i8
  store i8 %1584, i8* %30, align 1
  %1585 = lshr i32 %1570, 31
  %1586 = trunc i32 %1585 to i8
  store i8 %1586, i8* %33, align 1
  %1587 = lshr i32 %1569, 31
  %1588 = xor i32 %1585, %1587
  %1589 = add nuw nsw i32 %1588, %1587
  %1590 = icmp eq i32 %1589, 2
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %39, align 1
  %1592 = icmp ne i8 %1586, 0
  %1593 = xor i1 %1592, %1590
  %.v122 = select i1 %1593, i64 13, i64 1030
  %1594 = add i64 %1564, %.v122
  store i64 %1594, i64* %3, align 8
  br i1 %1593, label %block_42a186, label %block_.L_42a57f

block_42a186:                                     ; preds = %block_.L_42a179
  %1595 = add i64 %1594, 4
  store i64 %1595, i64* %3, align 8
  %1596 = load i32, i32* %1568, align 4
  %1597 = sext i32 %1596 to i64
  store i64 %1597, i64* %RAX.i491, align 8
  %1598 = add nsw i64 %1597, 12099168
  %1599 = add i64 %1594, 12
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i8*
  %1601 = load i8, i8* %1600, align 1
  %1602 = zext i8 %1601 to i64
  store i64 %1602, i64* %RCX.i526, align 8
  %1603 = zext i8 %1601 to i32
  %1604 = add nsw i32 %1603, -3
  %1605 = icmp ult i8 %1601, 3
  %1606 = zext i1 %1605 to i8
  store i8 %1606, i8* %14, align 1
  %1607 = and i32 %1604, 255
  %1608 = tail call i32 @llvm.ctpop.i32(i32 %1607)
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  %1611 = xor i8 %1610, 1
  store i8 %1611, i8* %21, align 1
  %1612 = xor i32 %1604, %1603
  %1613 = lshr i32 %1612, 4
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  store i8 %1615, i8* %27, align 1
  %1616 = icmp eq i32 %1604, 0
  %1617 = zext i1 %1616 to i8
  store i8 %1617, i8* %30, align 1
  %1618 = lshr i32 %1604, 31
  %1619 = trunc i32 %1618 to i8
  store i8 %1619, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v131 = select i1 %1616, i64 998, i64 21
  %1620 = add i64 %1594, %.v131
  store i64 %1620, i64* %3, align 8
  br i1 %1616, label %block_.L_42a56c, label %block_42a19b

block_42a19b:                                     ; preds = %block_42a186
  %1621 = add i64 %1565, -8
  %1622 = add i64 %1620, 4
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1621 to i64*
  %1624 = load i64, i64* %1623, align 8
  store i64 %1624, i64* %RAX.i491, align 8
  %1625 = add i64 %1620, 8
  store i64 %1625, i64* %3, align 8
  %1626 = load i32, i32* %1568, align 4
  %1627 = sext i32 %1626 to i64
  store i64 %1627, i64* %RCX.i526, align 8
  %1628 = add i64 %1624, %1627
  %1629 = add i64 %1620, 12
  store i64 %1629, i64* %3, align 8
  %1630 = inttoptr i64 %1628 to i8*
  %1631 = load i8, i8* %1630, align 1
  store i8 0, i8* %14, align 1
  %1632 = zext i8 %1631 to i32
  %1633 = tail call i32 @llvm.ctpop.i32(i32 %1632)
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  %1636 = xor i8 %1635, 1
  store i8 %1636, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1637 = icmp eq i8 %1631, 0
  %1638 = zext i1 %1637 to i8
  store i8 %1638, i8* %30, align 1
  %1639 = lshr i8 %1631, 7
  store i8 %1639, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v132 = select i1 %1637, i64 18, i64 972
  %1640 = add i64 %1620, %.v132
  store i64 %1640, i64* %3, align 8
  br i1 %1637, label %block_42a1ad, label %block_.L_42a567

block_42a1ad:                                     ; preds = %block_42a19b
  %1641 = add i64 %1565, -1640
  %1642 = add i64 %1640, 10
  store i64 %1642, i64* %3, align 8
  %1643 = inttoptr i64 %1641 to i32*
  store i32 0, i32* %1643, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_42a1b7

block_.L_42a1b7:                                  ; preds = %block_.L_42a54e, %block_42a1ad
  %1644 = phi i64 [ %.pre57, %block_42a1ad ], [ %2788, %block_.L_42a54e ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.13, %block_42a1ad ], [ %MEMORY.24, %block_.L_42a54e ]
  %1645 = load i64, i64* %RBP.i, align 8
  %1646 = add i64 %1645, -1640
  %1647 = add i64 %1644, 7
  store i64 %1647, i64* %3, align 8
  %1648 = inttoptr i64 %1646 to i32*
  %1649 = load i32, i32* %1648, align 4
  %1650 = add i32 %1649, -4
  %1651 = icmp ult i32 %1649, 4
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %14, align 1
  %1653 = and i32 %1650, 255
  %1654 = tail call i32 @llvm.ctpop.i32(i32 %1653)
  %1655 = trunc i32 %1654 to i8
  %1656 = and i8 %1655, 1
  %1657 = xor i8 %1656, 1
  store i8 %1657, i8* %21, align 1
  %1658 = xor i32 %1650, %1649
  %1659 = lshr i32 %1658, 4
  %1660 = trunc i32 %1659 to i8
  %1661 = and i8 %1660, 1
  store i8 %1661, i8* %27, align 1
  %1662 = icmp eq i32 %1650, 0
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %30, align 1
  %1664 = lshr i32 %1650, 31
  %1665 = trunc i32 %1664 to i8
  store i8 %1665, i8* %33, align 1
  %1666 = lshr i32 %1649, 31
  %1667 = xor i32 %1664, %1666
  %1668 = add nuw nsw i32 %1667, %1666
  %1669 = icmp eq i32 %1668, 2
  %1670 = zext i1 %1669 to i8
  store i8 %1670, i8* %39, align 1
  %1671 = icmp ne i8 %1665, 0
  %1672 = xor i1 %1671, %1669
  %.v133 = select i1 %1672, i64 13, i64 939
  %1673 = add i64 %1644, %.v133
  store i64 %1673, i64* %3, align 8
  br i1 %1672, label %block_42a1c4, label %block_.L_42a562

block_42a1c4:                                     ; preds = %block_.L_42a1b7
  %1674 = add i64 %1645, -12
  %1675 = add i64 %1673, 3
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to i32*
  %1677 = load i32, i32* %1676, align 4
  %1678 = zext i32 %1677 to i64
  store i64 %1678, i64* %RAX.i491, align 8
  %1679 = add i64 %1673, 10
  store i64 %1679, i64* %3, align 8
  %1680 = load i32, i32* %1648, align 4
  %1681 = sext i32 %1680 to i64
  store i64 %1681, i64* %RCX.i526, align 8
  %1682 = shl nsw i64 %1681, 2
  %1683 = add nsw i64 %1682, 8053168
  %1684 = add i64 %1673, 17
  store i64 %1684, i64* %3, align 8
  %1685 = inttoptr i64 %1683 to i32*
  %1686 = load i32, i32* %1685, align 4
  %1687 = add i32 %1686, %1677
  %1688 = zext i32 %1687 to i64
  store i64 %1688, i64* %RAX.i491, align 8
  %1689 = icmp ult i32 %1687, %1677
  %1690 = icmp ult i32 %1687, %1686
  %1691 = or i1 %1689, %1690
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %14, align 1
  %1693 = and i32 %1687, 255
  %1694 = tail call i32 @llvm.ctpop.i32(i32 %1693)
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  %1697 = xor i8 %1696, 1
  store i8 %1697, i8* %21, align 1
  %1698 = xor i32 %1686, %1677
  %1699 = xor i32 %1698, %1687
  %1700 = lshr i32 %1699, 4
  %1701 = trunc i32 %1700 to i8
  %1702 = and i8 %1701, 1
  store i8 %1702, i8* %27, align 1
  %1703 = icmp eq i32 %1687, 0
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %30, align 1
  %1705 = lshr i32 %1687, 31
  %1706 = trunc i32 %1705 to i8
  store i8 %1706, i8* %33, align 1
  %1707 = lshr i32 %1677, 31
  %1708 = lshr i32 %1686, 31
  %1709 = xor i32 %1705, %1707
  %1710 = xor i32 %1705, %1708
  %1711 = add nuw nsw i32 %1709, %1710
  %1712 = icmp eq i32 %1711, 2
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %39, align 1
  %1714 = sext i32 %1687 to i64
  store i64 %1714, i64* %RCX.i526, align 8
  %1715 = add nsw i64 %1714, 12099168
  %1716 = add i64 %1673, 28
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1715 to i8*
  %1718 = load i8, i8* %1717, align 1
  %1719 = zext i8 %1718 to i64
  store i64 %1719, i64* %RAX.i491, align 8
  %1720 = zext i8 %1718 to i32
  %1721 = add nsw i32 %1720, -3
  %1722 = icmp ult i8 %1718, 3
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %14, align 1
  %1724 = and i32 %1721, 255
  %1725 = tail call i32 @llvm.ctpop.i32(i32 %1724)
  %1726 = trunc i32 %1725 to i8
  %1727 = and i8 %1726, 1
  %1728 = xor i8 %1727, 1
  store i8 %1728, i8* %21, align 1
  %1729 = xor i32 %1721, %1720
  %1730 = lshr i32 %1729, 4
  %1731 = trunc i32 %1730 to i8
  %1732 = and i8 %1731, 1
  store i8 %1732, i8* %27, align 1
  %1733 = icmp eq i32 %1721, 0
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %30, align 1
  %1735 = lshr i32 %1721, 31
  %1736 = trunc i32 %1735 to i8
  store i8 %1736, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v134 = select i1 %1733, i64 37, i64 42
  %1737 = add i64 %1673, %.v134
  store i64 %1737, i64* %3, align 8
  br i1 %1733, label %block_42a1e9, label %block_.L_42a1ee

block_42a1e9:                                     ; preds = %block_42a1c4
  %1738 = add i64 %1737, 869
  br label %block_.L_42a54e

block_.L_42a1ee:                                  ; preds = %block_42a1c4
  store <4 x i32> zeroinitializer, <4 x i32>* %1558, align 1
  %1739 = add i64 %1645, -8
  %1740 = add i64 %1737, 7
  store i64 %1740, i64* %3, align 8
  %1741 = inttoptr i64 %1739 to i64*
  %1742 = load i64, i64* %1741, align 8
  store i64 %1742, i64* %RAX.i491, align 8
  %1743 = add i64 %1737, 11
  store i64 %1743, i64* %3, align 8
  %1744 = load i32, i32* %1676, align 4
  %1745 = sext i32 %1744 to i64
  store i64 %1745, i64* %RCX.i526, align 8
  %1746 = shl nsw i64 %1745, 2
  %1747 = add i64 %1742, 31016
  %1748 = add i64 %1747, %1746
  %1749 = add i64 %1737, 20
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to float*
  %1751 = load float, float* %1750, align 4
  %1752 = fpext float %1751 to double
  store double %1752, double* %1552, align 1
  %1753 = add i64 %1737, 24
  store i64 %1753, i64* %3, align 8
  %1754 = load double, double* %1553, align 1
  %1755 = fcmp uno double %1752, %1754
  br i1 %1755, label %1756, label %1766

; <label>:1756:                                   ; preds = %block_.L_42a1ee
  %1757 = fadd double %1752, %1754
  %1758 = bitcast double %1757 to i64
  %1759 = and i64 %1758, 9221120237041090560
  %1760 = icmp eq i64 %1759, 9218868437227405312
  %1761 = and i64 %1758, 2251799813685247
  %1762 = icmp ne i64 %1761, 0
  %1763 = and i1 %1760, %1762
  br i1 %1763, label %1764, label %1772

; <label>:1764:                                   ; preds = %1756
  %1765 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1753, %struct.Memory* %MEMORY.14)
  %.pre58 = load i64, i64* %3, align 8
  %.pre59 = load i8, i8* %14, align 1
  %.pre60 = load i8, i8* %30, align 1
  %.pre61 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit642

; <label>:1766:                                   ; preds = %block_.L_42a1ee
  %1767 = fcmp ogt double %1752, %1754
  br i1 %1767, label %1772, label %1768

; <label>:1768:                                   ; preds = %1766
  %1769 = fcmp olt double %1752, %1754
  br i1 %1769, label %1772, label %1770

; <label>:1770:                                   ; preds = %1768
  %1771 = fcmp oeq double %1752, %1754
  br i1 %1771, label %1772, label %1776

; <label>:1772:                                   ; preds = %1770, %1768, %1766, %1756
  %1773 = phi i8 [ 0, %1766 ], [ 0, %1768 ], [ 1, %1770 ], [ 1, %1756 ]
  %1774 = phi i8 [ 0, %1766 ], [ 0, %1768 ], [ 0, %1770 ], [ 1, %1756 ]
  %1775 = phi i8 [ 0, %1766 ], [ 1, %1768 ], [ 0, %1770 ], [ 1, %1756 ]
  store i8 %1773, i8* %30, align 1
  store i8 %1774, i8* %21, align 1
  store i8 %1775, i8* %14, align 1
  br label %1776

; <label>:1776:                                   ; preds = %1772, %1770
  %1777 = phi i8 [ %1773, %1772 ], [ 0, %1770 ]
  %1778 = phi i8 [ %1775, %1772 ], [ %1723, %1770 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit642

routine_ucomisd__xmm0___xmm1.exit642:             ; preds = %1776, %1764
  %1779 = phi i64 [ %.pre61, %1764 ], [ %1645, %1776 ]
  %1780 = phi i8 [ %.pre60, %1764 ], [ %1777, %1776 ]
  %1781 = phi i8 [ %.pre59, %1764 ], [ %1778, %1776 ]
  %1782 = phi i64 [ %.pre58, %1764 ], [ %1753, %1776 ]
  %1783 = phi %struct.Memory* [ %1765, %1764 ], [ %MEMORY.14, %1776 ]
  %1784 = or i8 %1780, %1781
  %1785 = icmp ne i8 %1784, 0
  %.v = select i1 %1785, i64 431, i64 6
  %1786 = add i64 %1782, %.v
  %1787 = add i64 %1779, -8
  %1788 = add i64 %1786, 4
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1787 to i64*
  %1790 = load i64, i64* %1789, align 8
  store i64 %1790, i64* %RAX.i491, align 8
  %1791 = add i64 %1779, -12
  %1792 = add i64 %1786, 7
  store i64 %1792, i64* %3, align 8
  %1793 = inttoptr i64 %1791 to i32*
  %1794 = load i32, i32* %1793, align 4
  %1795 = zext i32 %1794 to i64
  store i64 %1795, i64* %RCX.i526, align 8
  %1796 = add i64 %1779, -1640
  %1797 = add i64 %1786, 14
  store i64 %1797, i64* %3, align 8
  %1798 = inttoptr i64 %1796 to i32*
  %1799 = load i32, i32* %1798, align 4
  %1800 = sext i32 %1799 to i64
  store i64 %1800, i64* %82, align 8
  %1801 = shl nsw i64 %1800, 2
  %1802 = add nsw i64 %1801, 8053168
  %1803 = add i64 %1786, 21
  store i64 %1803, i64* %3, align 8
  %1804 = inttoptr i64 %1802 to i32*
  %1805 = load i32, i32* %1804, align 4
  %1806 = add i32 %1805, %1794
  %1807 = zext i32 %1806 to i64
  store i64 %1807, i64* %RCX.i526, align 8
  %1808 = icmp ult i32 %1806, %1794
  %1809 = icmp ult i32 %1806, %1805
  %1810 = or i1 %1808, %1809
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %14, align 1
  %1812 = and i32 %1806, 255
  %1813 = tail call i32 @llvm.ctpop.i32(i32 %1812)
  %1814 = trunc i32 %1813 to i8
  %1815 = and i8 %1814, 1
  %1816 = xor i8 %1815, 1
  store i8 %1816, i8* %21, align 1
  %1817 = xor i32 %1805, %1794
  %1818 = xor i32 %1817, %1806
  %1819 = lshr i32 %1818, 4
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  store i8 %1821, i8* %27, align 1
  %1822 = icmp eq i32 %1806, 0
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %30, align 1
  %1824 = lshr i32 %1806, 31
  %1825 = trunc i32 %1824 to i8
  store i8 %1825, i8* %33, align 1
  %1826 = lshr i32 %1794, 31
  %1827 = lshr i32 %1805, 31
  %1828 = xor i32 %1824, %1826
  %1829 = xor i32 %1824, %1827
  %1830 = add nuw nsw i32 %1828, %1829
  %1831 = icmp eq i32 %1830, 2
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %39, align 1
  %1833 = sext i32 %1806 to i64
  store i64 %1833, i64* %82, align 8
  %1834 = add i64 %1790, %1833
  %1835 = add i64 %1786, 28
  store i64 %1835, i64* %3, align 8
  %1836 = inttoptr i64 %1834 to i8*
  %1837 = load i8, i8* %1836, align 1
  store i8 0, i8* %14, align 1
  %1838 = zext i8 %1837 to i32
  %1839 = tail call i32 @llvm.ctpop.i32(i32 %1838)
  %1840 = trunc i32 %1839 to i8
  %1841 = and i8 %1840, 1
  %1842 = xor i8 %1841, 1
  store i8 %1842, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1843 = icmp eq i8 %1837, 0
  %1844 = zext i1 %1843 to i8
  store i8 %1844, i8* %30, align 1
  %1845 = lshr i8 %1837, 7
  store i8 %1845, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br i1 %1785, label %block_.L_42a3b5, label %block_42a20c

block_42a20c:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit642
  %.v135 = select i1 %1843, i64 34, i64 420
  %1846 = add i64 %1786, %.v135
  store i64 %1846, i64* %3, align 8
  br i1 %1843, label %block_42a22e, label %block_.L_42a3b0

block_42a22e:                                     ; preds = %block_42a20c
  %1847 = add i64 %1846, ptrtoint (%G_0xb8d2a__rip__type* @G_0xb8d2a__rip_ to i64)
  %1848 = add i64 %1846, 8
  store i64 %1848, i64* %3, align 8
  %1849 = inttoptr i64 %1847 to i64*
  %1850 = load i64, i64* %1849, align 8
  store i64 %1850, i64* %1554, align 1
  store double 0.000000e+00, double* %1555, align 1
  %1851 = add i64 %1846, 12
  store i64 %1851, i64* %3, align 8
  %1852 = load i64, i64* %1789, align 8
  store i64 %1852, i64* %RAX.i491, align 8
  %1853 = add i64 %1846, 15
  store i64 %1853, i64* %3, align 8
  %1854 = load i32, i32* %1793, align 4
  %1855 = zext i32 %1854 to i64
  store i64 %1855, i64* %RCX.i526, align 8
  %1856 = add i64 %1846, 22
  store i64 %1856, i64* %3, align 8
  %1857 = load i32, i32* %1798, align 4
  %1858 = sext i32 %1857 to i64
  store i64 %1858, i64* %82, align 8
  %1859 = shl nsw i64 %1858, 2
  %1860 = add nsw i64 %1859, 8053168
  %1861 = add i64 %1846, 29
  store i64 %1861, i64* %3, align 8
  %1862 = inttoptr i64 %1860 to i32*
  %1863 = load i32, i32* %1862, align 4
  %1864 = add i32 %1863, %1854
  %1865 = zext i32 %1864 to i64
  store i64 %1865, i64* %RCX.i526, align 8
  %1866 = icmp ult i32 %1864, %1854
  %1867 = icmp ult i32 %1864, %1863
  %1868 = or i1 %1866, %1867
  %1869 = zext i1 %1868 to i8
  store i8 %1869, i8* %14, align 1
  %1870 = and i32 %1864, 255
  %1871 = tail call i32 @llvm.ctpop.i32(i32 %1870)
  %1872 = trunc i32 %1871 to i8
  %1873 = and i8 %1872, 1
  %1874 = xor i8 %1873, 1
  store i8 %1874, i8* %21, align 1
  %1875 = xor i32 %1863, %1854
  %1876 = xor i32 %1875, %1864
  %1877 = lshr i32 %1876, 4
  %1878 = trunc i32 %1877 to i8
  %1879 = and i8 %1878, 1
  store i8 %1879, i8* %27, align 1
  %1880 = icmp eq i32 %1864, 0
  %1881 = zext i1 %1880 to i8
  store i8 %1881, i8* %30, align 1
  %1882 = lshr i32 %1864, 31
  %1883 = trunc i32 %1882 to i8
  store i8 %1883, i8* %33, align 1
  %1884 = lshr i32 %1854, 31
  %1885 = lshr i32 %1863, 31
  %1886 = xor i32 %1882, %1884
  %1887 = xor i32 %1882, %1885
  %1888 = add nuw nsw i32 %1886, %1887
  %1889 = icmp eq i32 %1888, 2
  %1890 = zext i1 %1889 to i8
  store i8 %1890, i8* %39, align 1
  %1891 = sext i32 %1864 to i64
  store i64 %1891, i64* %82, align 8
  %1892 = shl nsw i64 %1891, 2
  %1893 = add nsw i64 %1892, 11600
  %1894 = add i64 %1893, %1852
  %1895 = add i64 %1846, 41
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1894 to i32*
  %1897 = load i32, i32* %1896, align 4
  store i32 %1897, i32* %67, align 1
  store float 0.000000e+00, float* %69, align 1
  store float 0.000000e+00, float* %71, align 1
  store float 0.000000e+00, float* %73, align 1
  %1898 = add i64 %1846, 44
  store i64 %1898, i64* %3, align 8
  %1899 = load i32, i32* %1793, align 4
  %1900 = zext i32 %1899 to i64
  store i64 %1900, i64* %RCX.i526, align 8
  %1901 = add i64 %1846, 51
  store i64 %1901, i64* %3, align 8
  %1902 = load i32, i32* %1798, align 4
  %1903 = sext i32 %1902 to i64
  store i64 %1903, i64* %RAX.i491, align 8
  %1904 = shl nsw i64 %1903, 2
  %1905 = add nsw i64 %1904, 8053168
  %1906 = add i64 %1846, 58
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1905 to i32*
  %1908 = load i32, i32* %1907, align 4
  %1909 = add i32 %1908, %1899
  %1910 = zext i32 %1909 to i64
  store i64 %1910, i64* %RCX.i526, align 8
  %1911 = icmp ult i32 %1909, %1899
  %1912 = icmp ult i32 %1909, %1908
  %1913 = or i1 %1911, %1912
  %1914 = zext i1 %1913 to i8
  store i8 %1914, i8* %14, align 1
  %1915 = and i32 %1909, 255
  %1916 = tail call i32 @llvm.ctpop.i32(i32 %1915)
  %1917 = trunc i32 %1916 to i8
  %1918 = and i8 %1917, 1
  %1919 = xor i8 %1918, 1
  store i8 %1919, i8* %21, align 1
  %1920 = xor i32 %1908, %1899
  %1921 = xor i32 %1920, %1909
  %1922 = lshr i32 %1921, 4
  %1923 = trunc i32 %1922 to i8
  %1924 = and i8 %1923, 1
  store i8 %1924, i8* %27, align 1
  %1925 = icmp eq i32 %1909, 0
  %1926 = zext i1 %1925 to i8
  store i8 %1926, i8* %30, align 1
  %1927 = lshr i32 %1909, 31
  %1928 = trunc i32 %1927 to i8
  store i8 %1928, i8* %33, align 1
  %1929 = lshr i32 %1899, 31
  %1930 = lshr i32 %1908, 31
  %1931 = xor i32 %1927, %1929
  %1932 = xor i32 %1927, %1930
  %1933 = add nuw nsw i32 %1931, %1932
  %1934 = icmp eq i32 %1933, 2
  %1935 = zext i1 %1934 to i8
  store i8 %1935, i8* %39, align 1
  %1936 = sext i32 %1909 to i64
  store i64 %1936, i64* %RAX.i491, align 8
  %1937 = load i64, i64* %RBP.i, align 8
  %1938 = shl nsw i64 %1936, 2
  %1939 = add nsw i64 %1938, -1632
  %1940 = add i64 %1939, %1937
  %1941 = add i64 %1846, 70
  store i64 %1941, i64* %3, align 8
  %1942 = load <2 x float>, <2 x float>* %74, align 1
  %1943 = load <2 x i32>, <2 x i32>* %75, align 1
  %1944 = inttoptr i64 %1940 to float*
  %1945 = load float, float* %1944, align 4
  %1946 = extractelement <2 x float> %1942, i32 0
  %1947 = fmul float %1946, %1945
  store float %1947, float* %66, align 1
  %1948 = bitcast <2 x float> %1942 to <2 x i32>
  %1949 = extractelement <2 x i32> %1948, i32 1
  store i32 %1949, i32* %76, align 1
  %1950 = extractelement <2 x i32> %1943, i32 0
  store i32 %1950, i32* %77, align 1
  %1951 = extractelement <2 x i32> %1943, i32 1
  store i32 %1951, i32* %78, align 1
  %1952 = load <2 x float>, <2 x float>* %74, align 1
  %1953 = extractelement <2 x float> %1952, i32 0
  %1954 = fpext float %1953 to double
  store double %1954, double* %1552, align 1
  %1955 = add i64 %1937, -8
  %1956 = add i64 %1846, 78
  store i64 %1956, i64* %3, align 8
  %1957 = inttoptr i64 %1955 to i64*
  %1958 = load i64, i64* %1957, align 8
  store i64 %1958, i64* %RAX.i491, align 8
  %1959 = add i64 %1937, -12
  %1960 = add i64 %1846, 81
  store i64 %1960, i64* %3, align 8
  %1961 = inttoptr i64 %1959 to i32*
  %1962 = load i32, i32* %1961, align 4
  %1963 = zext i32 %1962 to i64
  store i64 %1963, i64* %RCX.i526, align 8
  %1964 = add i64 %1937, -1640
  %1965 = add i64 %1846, 88
  store i64 %1965, i64* %3, align 8
  %1966 = inttoptr i64 %1964 to i32*
  %1967 = load i32, i32* %1966, align 4
  %1968 = sext i32 %1967 to i64
  store i64 %1968, i64* %82, align 8
  %1969 = shl nsw i64 %1968, 2
  %1970 = add nsw i64 %1969, 8053168
  %1971 = add i64 %1846, 95
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1970 to i32*
  %1973 = load i32, i32* %1972, align 4
  %1974 = add i32 %1973, %1962
  %1975 = zext i32 %1974 to i64
  store i64 %1975, i64* %RCX.i526, align 8
  %1976 = icmp ult i32 %1974, %1962
  %1977 = icmp ult i32 %1974, %1973
  %1978 = or i1 %1976, %1977
  %1979 = zext i1 %1978 to i8
  store i8 %1979, i8* %14, align 1
  %1980 = and i32 %1974, 255
  %1981 = tail call i32 @llvm.ctpop.i32(i32 %1980)
  %1982 = trunc i32 %1981 to i8
  %1983 = and i8 %1982, 1
  %1984 = xor i8 %1983, 1
  store i8 %1984, i8* %21, align 1
  %1985 = xor i32 %1973, %1962
  %1986 = xor i32 %1985, %1974
  %1987 = lshr i32 %1986, 4
  %1988 = trunc i32 %1987 to i8
  %1989 = and i8 %1988, 1
  store i8 %1989, i8* %27, align 1
  %1990 = icmp eq i32 %1974, 0
  %1991 = zext i1 %1990 to i8
  store i8 %1991, i8* %30, align 1
  %1992 = lshr i32 %1974, 31
  %1993 = trunc i32 %1992 to i8
  store i8 %1993, i8* %33, align 1
  %1994 = lshr i32 %1962, 31
  %1995 = lshr i32 %1973, 31
  %1996 = xor i32 %1992, %1994
  %1997 = xor i32 %1992, %1995
  %1998 = add nuw nsw i32 %1996, %1997
  %1999 = icmp eq i32 %1998, 2
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %39, align 1
  %2001 = sext i32 %1974 to i64
  store i64 %2001, i64* %82, align 8
  %2002 = shl nsw i64 %2001, 2
  %2003 = add nsw i64 %2002, 11600
  %2004 = add i64 %2003, %1958
  %2005 = add i64 %1846, 107
  store i64 %2005, i64* %3, align 8
  %2006 = inttoptr i64 %2004 to float*
  %2007 = load float, float* %2006, align 4
  %2008 = fpext float %2007 to double
  store double %2008, double* %1557, align 1
  %2009 = load double, double* %1553, align 1
  %2010 = load <2 x i32>, <2 x i32>* %1561, align 1
  %2011 = fsub double %2009, %2008
  store double %2011, double* %1553, align 1
  %2012 = load i64, i64* %RBP.i, align 8
  %2013 = add i64 %2012, -12
  %2014 = add i64 %1846, 115
  store i64 %2014, i64* %3, align 8
  %2015 = inttoptr i64 %2013 to i32*
  %2016 = load i32, i32* %2015, align 4
  %2017 = sext i32 %2016 to i64
  store i64 %2017, i64* %RAX.i491, align 8
  %2018 = shl nsw i64 %2017, 2
  %2019 = add i64 %2012, -1632
  %2020 = add i64 %2019, %2018
  %2021 = add i64 %1846, 124
  store i64 %2021, i64* %3, align 8
  %2022 = inttoptr i64 %2020 to float*
  %2023 = load float, float* %2022, align 4
  %2024 = fpext float %2023 to double
  store double %2024, double* %1557, align 1
  %2025 = fmul double %2024, %2011
  %2026 = load double, double* %1552, align 1
  %2027 = fadd double %2025, %2026
  store double %2027, double* %1552, align 1
  %2028 = bitcast double %2025 to <2 x i32>
  %2029 = fptrunc double %2027 to float
  store float %2029, float* %79, align 1
  %2030 = extractelement <2 x i32> %2028, i32 1
  store i32 %2030, i32* %56, align 1
  %2031 = extractelement <2 x i32> %2010, i32 0
  store i32 %2031, i32* %57, align 1
  %2032 = extractelement <2 x i32> %2010, i32 1
  store i32 %2032, i32* %59, align 1
  %2033 = add i64 %2012, -1648
  %2034 = add i64 %1846, 144
  store i64 %2034, i64* %3, align 8
  %2035 = load <2 x float>, <2 x float>* %60, align 1
  %2036 = extractelement <2 x float> %2035, i32 0
  %2037 = inttoptr i64 %2033 to float*
  store float %2036, float* %2037, align 4
  %2038 = load i64, i64* %RBP.i, align 8
  %2039 = add i64 %2038, -8
  %2040 = load i64, i64* %3, align 8
  %2041 = add i64 %2040, 4
  store i64 %2041, i64* %3, align 8
  %2042 = inttoptr i64 %2039 to i64*
  %2043 = load i64, i64* %2042, align 8
  store i64 %2043, i64* %RAX.i491, align 8
  %2044 = add i64 %2038, -12
  %2045 = add i64 %2040, 8
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2044 to i32*
  %2047 = load i32, i32* %2046, align 4
  %2048 = sext i32 %2047 to i64
  store i64 %2048, i64* %82, align 8
  %2049 = shl nsw i64 %2048, 2
  %2050 = add i64 %2043, 31016
  %2051 = add i64 %2050, %2049
  %2052 = add i64 %2040, 17
  store i64 %2052, i64* %3, align 8
  %2053 = inttoptr i64 %2051 to i32*
  %2054 = load i32, i32* %2053, align 4
  store i32 %2054, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %2055 = add i64 %2038, -1648
  %2056 = add i64 %2040, 25
  store i64 %2056, i64* %3, align 8
  %2057 = inttoptr i64 %2055 to i32*
  %2058 = load i32, i32* %2057, align 4
  store i32 %2058, i32* %67, align 1
  store float 0.000000e+00, float* %69, align 1
  store float 0.000000e+00, float* %71, align 1
  store float 0.000000e+00, float* %73, align 1
  %2059 = add i64 %2040, 28
  store i64 %2059, i64* %3, align 8
  %2060 = load <2 x float>, <2 x float>* %74, align 1
  %2061 = extractelement <2 x float> %2060, i32 0
  %2062 = load <2 x float>, <2 x float>* %60, align 1
  %2063 = extractelement <2 x float> %2062, i32 0
  %2064 = fcmp uno float %2061, %2063
  br i1 %2064, label %2065, label %2075

; <label>:2065:                                   ; preds = %block_42a22e
  %2066 = fadd float %2061, %2063
  %2067 = bitcast float %2066 to i32
  %2068 = and i32 %2067, 2143289344
  %2069 = icmp eq i32 %2068, 2139095040
  %2070 = and i32 %2067, 4194303
  %2071 = icmp ne i32 %2070, 0
  %2072 = and i1 %2069, %2071
  br i1 %2072, label %2073, label %2081

; <label>:2073:                                   ; preds = %2065
  %2074 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2059, %struct.Memory* %1783)
  %.pre62 = load i64, i64* %3, align 8
  %.pre63 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomiss__xmm0___xmm1.exit523

; <label>:2075:                                   ; preds = %block_42a22e
  %2076 = fcmp ogt float %2061, %2063
  br i1 %2076, label %2081, label %2077

; <label>:2077:                                   ; preds = %2075
  %2078 = fcmp olt float %2061, %2063
  br i1 %2078, label %2081, label %2079

; <label>:2079:                                   ; preds = %2077
  %2080 = fcmp oeq float %2061, %2063
  br i1 %2080, label %2081, label %2085

; <label>:2081:                                   ; preds = %2079, %2077, %2075, %2065
  %2082 = phi i8 [ 0, %2075 ], [ 0, %2077 ], [ 1, %2079 ], [ 1, %2065 ]
  %2083 = phi i8 [ 0, %2075 ], [ 0, %2077 ], [ 0, %2079 ], [ 1, %2065 ]
  %2084 = phi i8 [ 0, %2075 ], [ 1, %2077 ], [ 0, %2079 ], [ 1, %2065 ]
  store i8 %2082, i8* %30, align 1
  store i8 %2083, i8* %21, align 1
  store i8 %2084, i8* %14, align 1
  br label %2085

; <label>:2085:                                   ; preds = %2081, %2079
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit523

routine_ucomiss__xmm0___xmm1.exit523:             ; preds = %2085, %2073
  %2086 = phi i64 [ %.pre63, %2073 ], [ %2038, %2085 ]
  %2087 = phi i64 [ %.pre62, %2073 ], [ %2059, %2085 ]
  %2088 = phi %struct.Memory* [ %2074, %2073 ], [ %1783, %2085 ]
  %2089 = load i8, i8* %14, align 1
  %2090 = load i8, i8* %30, align 1
  %2091 = or i8 %2090, %2089
  %2092 = icmp ne i8 %2091, 0
  %.v155 = select i1 %2092, i64 36, i64 6
  %2093 = add i64 %2087, %.v155
  store i64 %2093, i64* %3, align 8
  br i1 %2092, label %block_.L_42a2fe, label %block_42a2e0

block_42a2e0:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit523
  %2094 = add i64 %2086, -8
  %2095 = add i64 %2093, 4
  store i64 %2095, i64* %3, align 8
  %2096 = inttoptr i64 %2094 to i64*
  %2097 = load i64, i64* %2096, align 8
  store i64 %2097, i64* %RAX.i491, align 8
  %2098 = add i64 %2086, -12
  %2099 = add i64 %2093, 8
  store i64 %2099, i64* %3, align 8
  %2100 = inttoptr i64 %2098 to i32*
  %2101 = load i32, i32* %2100, align 4
  %2102 = sext i32 %2101 to i64
  store i64 %2102, i64* %RCX.i526, align 8
  %2103 = shl nsw i64 %2102, 2
  %2104 = add i64 %2097, 31016
  %2105 = add i64 %2104, %2103
  %2106 = add i64 %2093, 17
  store i64 %2106, i64* %3, align 8
  %2107 = inttoptr i64 %2105 to i32*
  %2108 = load i32, i32* %2107, align 4
  store i32 %2108, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %2109 = add i64 %2086, -1712
  %2110 = add i64 %2093, 25
  store i64 %2110, i64* %3, align 8
  %2111 = load <2 x float>, <2 x float>* %60, align 1
  %2112 = extractelement <2 x float> %2111, i32 0
  %2113 = inttoptr i64 %2109 to float*
  store float %2112, float* %2113, align 4
  %2114 = load i64, i64* %3, align 8
  %2115 = add i64 %2114, 21
  store i64 %2115, i64* %3, align 8
  br label %block_.L_42a30e

block_.L_42a2fe:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit523
  %2116 = add i64 %2086, -1648
  %2117 = add i64 %2093, 8
  store i64 %2117, i64* %3, align 8
  %2118 = inttoptr i64 %2116 to i32*
  %2119 = load i32, i32* %2118, align 4
  store i32 %2119, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %2120 = add i64 %2086, -1712
  %2121 = add i64 %2093, 16
  store i64 %2121, i64* %3, align 8
  %2122 = load <2 x float>, <2 x float>* %60, align 1
  %2123 = extractelement <2 x float> %2122, i32 0
  %2124 = inttoptr i64 %2120 to float*
  store float %2123, float* %2124, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_42a30e

block_.L_42a30e:                                  ; preds = %block_.L_42a2fe, %block_42a2e0
  %2125 = phi i64 [ %.pre64, %block_.L_42a2fe ], [ %2115, %block_42a2e0 ]
  %2126 = load i64, i64* %RBP.i, align 8
  %2127 = add i64 %2126, -1712
  %2128 = add i64 %2125, 8
  store i64 %2128, i64* %3, align 8
  %2129 = inttoptr i64 %2127 to i32*
  %2130 = load i32, i32* %2129, align 4
  store i32 %2130, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  store <4 x i32> zeroinitializer, <4 x i32>* %1562, align 1
  %2131 = add i64 %2125, 14
  store i64 %2131, i64* %3, align 8
  %2132 = load <2 x float>, <2 x float>* %60, align 1
  %2133 = extractelement <2 x float> %2132, i32 0
  %2134 = load <2 x float>, <2 x float>* %74, align 1
  %2135 = extractelement <2 x float> %2134, i32 0
  %2136 = fcmp uno float %2133, %2135
  br i1 %2136, label %2137, label %2147

; <label>:2137:                                   ; preds = %block_.L_42a30e
  %2138 = fadd float %2133, %2135
  %2139 = bitcast float %2138 to i32
  %2140 = and i32 %2139, 2143289344
  %2141 = icmp eq i32 %2140, 2139095040
  %2142 = and i32 %2139, 4194303
  %2143 = icmp ne i32 %2142, 0
  %2144 = and i1 %2141, %2143
  br i1 %2144, label %2145, label %2153

; <label>:2145:                                   ; preds = %2137
  %2146 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2131, %struct.Memory* %2088)
  %.pre65 = load i64, i64* %3, align 8
  br label %routine_ucomiss__xmm1___xmm0.exit489

; <label>:2147:                                   ; preds = %block_.L_42a30e
  %2148 = fcmp ogt float %2133, %2135
  br i1 %2148, label %2153, label %2149

; <label>:2149:                                   ; preds = %2147
  %2150 = fcmp olt float %2133, %2135
  br i1 %2150, label %2153, label %2151

; <label>:2151:                                   ; preds = %2149
  %2152 = fcmp oeq float %2133, %2135
  br i1 %2152, label %2153, label %2157

; <label>:2153:                                   ; preds = %2151, %2149, %2147, %2137
  %2154 = phi i8 [ 0, %2147 ], [ 0, %2149 ], [ 1, %2151 ], [ 1, %2137 ]
  %2155 = phi i8 [ 0, %2147 ], [ 0, %2149 ], [ 0, %2151 ], [ 1, %2137 ]
  %2156 = phi i8 [ 0, %2147 ], [ 1, %2149 ], [ 0, %2151 ], [ 1, %2137 ]
  store i8 %2154, i8* %30, align 1
  store i8 %2155, i8* %21, align 1
  store i8 %2156, i8* %14, align 1
  br label %2157

; <label>:2157:                                   ; preds = %2153, %2151
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm1___xmm0.exit489

routine_ucomiss__xmm1___xmm0.exit489:             ; preds = %2157, %2145
  %2158 = phi i64 [ %.pre65, %2145 ], [ %2131, %2157 ]
  %2159 = phi %struct.Memory* [ %2146, %2145 ], [ %2088, %2157 ]
  %2160 = load i8, i8* %14, align 1
  %2161 = load i8, i8* %30, align 1
  %2162 = or i8 %2161, %2160
  %2163 = icmp ne i8 %2162, 0
  %.v156 = select i1 %2163, i64 107, i64 6
  %2164 = add i64 %2158, %.v156
  store i64 %2164, i64* %3, align 8
  br i1 %2163, label %block_.L_42a387, label %block_42a322

block_42a322:                                     ; preds = %routine_ucomiss__xmm1___xmm0.exit489
  %2165 = load i64, i64* %RBP.i, align 8
  %2166 = add i64 %2165, -8
  %2167 = add i64 %2164, 4
  store i64 %2167, i64* %3, align 8
  %2168 = inttoptr i64 %2166 to i64*
  %2169 = load i64, i64* %2168, align 8
  store i64 %2169, i64* %RAX.i491, align 8
  %2170 = add i64 %2165, -12
  %2171 = add i64 %2164, 8
  store i64 %2171, i64* %3, align 8
  %2172 = inttoptr i64 %2170 to i32*
  %2173 = load i32, i32* %2172, align 4
  %2174 = sext i32 %2173 to i64
  store i64 %2174, i64* %RCX.i526, align 8
  %2175 = shl nsw i64 %2174, 2
  %2176 = add i64 %2169, 31016
  %2177 = add i64 %2176, %2175
  %2178 = add i64 %2164, 17
  store i64 %2178, i64* %3, align 8
  %2179 = inttoptr i64 %2177 to i32*
  %2180 = load i32, i32* %2179, align 4
  store i32 %2180, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %2181 = add i64 %2165, -1648
  %2182 = add i64 %2164, 25
  store i64 %2182, i64* %3, align 8
  %2183 = inttoptr i64 %2181 to i32*
  %2184 = load i32, i32* %2183, align 4
  store i32 %2184, i32* %67, align 1
  store float 0.000000e+00, float* %69, align 1
  store float 0.000000e+00, float* %71, align 1
  store float 0.000000e+00, float* %73, align 1
  %2185 = add i64 %2164, 28
  store i64 %2185, i64* %3, align 8
  %2186 = load <2 x float>, <2 x float>* %74, align 1
  %2187 = extractelement <2 x float> %2186, i32 0
  %2188 = load <2 x float>, <2 x float>* %60, align 1
  %2189 = extractelement <2 x float> %2188, i32 0
  %2190 = fcmp uno float %2187, %2189
  br i1 %2190, label %2191, label %2201

; <label>:2191:                                   ; preds = %block_42a322
  %2192 = fadd float %2187, %2189
  %2193 = bitcast float %2192 to i32
  %2194 = and i32 %2193, 2143289344
  %2195 = icmp eq i32 %2194, 2139095040
  %2196 = and i32 %2193, 4194303
  %2197 = icmp ne i32 %2196, 0
  %2198 = and i1 %2195, %2197
  br i1 %2198, label %2199, label %2207

; <label>:2199:                                   ; preds = %2191
  %2200 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2185, %struct.Memory* %2159)
  %.pre66 = load i64, i64* %3, align 8
  %.pre67 = load i8, i8* %14, align 1
  %.pre68 = load i8, i8* %30, align 1
  %.pre69 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomiss__xmm0___xmm1.exit470

; <label>:2201:                                   ; preds = %block_42a322
  %2202 = fcmp ogt float %2187, %2189
  br i1 %2202, label %2207, label %2203

; <label>:2203:                                   ; preds = %2201
  %2204 = fcmp olt float %2187, %2189
  br i1 %2204, label %2207, label %2205

; <label>:2205:                                   ; preds = %2203
  %2206 = fcmp oeq float %2187, %2189
  br i1 %2206, label %2207, label %2211

; <label>:2207:                                   ; preds = %2205, %2203, %2201, %2191
  %2208 = phi i8 [ 0, %2201 ], [ 0, %2203 ], [ 1, %2205 ], [ 1, %2191 ]
  %2209 = phi i8 [ 0, %2201 ], [ 0, %2203 ], [ 0, %2205 ], [ 1, %2191 ]
  %2210 = phi i8 [ 0, %2201 ], [ 1, %2203 ], [ 0, %2205 ], [ 1, %2191 ]
  store i8 %2208, i8* %30, align 1
  store i8 %2209, i8* %21, align 1
  store i8 %2210, i8* %14, align 1
  br label %2211

; <label>:2211:                                   ; preds = %2207, %2205
  %2212 = phi i8 [ %2208, %2207 ], [ %2161, %2205 ]
  %2213 = phi i8 [ %2210, %2207 ], [ %2160, %2205 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit470

routine_ucomiss__xmm0___xmm1.exit470:             ; preds = %2211, %2199
  %2214 = phi i64 [ %.pre69, %2199 ], [ %2165, %2211 ]
  %2215 = phi i8 [ %.pre68, %2199 ], [ %2212, %2211 ]
  %2216 = phi i8 [ %.pre67, %2199 ], [ %2213, %2211 ]
  %2217 = phi i64 [ %.pre66, %2199 ], [ %2185, %2211 ]
  %2218 = phi %struct.Memory* [ %2200, %2199 ], [ %2159, %2211 ]
  %2219 = or i8 %2215, %2216
  %2220 = icmp ne i8 %2219, 0
  %.v136 = select i1 %2220, i64 36, i64 6
  %2221 = add i64 %2217, %.v136
  store i64 %2221, i64* %3, align 8
  br i1 %2220, label %block_.L_42a362, label %block_42a344

block_42a344:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit470
  %2222 = add i64 %2214, -8
  %2223 = add i64 %2221, 4
  store i64 %2223, i64* %3, align 8
  %2224 = inttoptr i64 %2222 to i64*
  %2225 = load i64, i64* %2224, align 8
  store i64 %2225, i64* %RAX.i491, align 8
  %2226 = add i64 %2214, -12
  %2227 = add i64 %2221, 8
  store i64 %2227, i64* %3, align 8
  %2228 = inttoptr i64 %2226 to i32*
  %2229 = load i32, i32* %2228, align 4
  %2230 = sext i32 %2229 to i64
  store i64 %2230, i64* %RCX.i526, align 8
  %2231 = shl nsw i64 %2230, 2
  %2232 = add i64 %2225, 31016
  %2233 = add i64 %2232, %2231
  %2234 = add i64 %2221, 17
  store i64 %2234, i64* %3, align 8
  %2235 = inttoptr i64 %2233 to i32*
  %2236 = load i32, i32* %2235, align 4
  store i32 %2236, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %2237 = add i64 %2214, -1716
  %2238 = add i64 %2221, 25
  store i64 %2238, i64* %3, align 8
  %2239 = load <2 x float>, <2 x float>* %60, align 1
  %2240 = extractelement <2 x float> %2239, i32 0
  %2241 = inttoptr i64 %2237 to float*
  store float %2240, float* %2241, align 4
  %2242 = load i64, i64* %3, align 8
  %2243 = add i64 %2242, 21
  store i64 %2243, i64* %3, align 8
  br label %block_.L_42a372

block_.L_42a362:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit470
  %2244 = add i64 %2214, -1648
  %2245 = add i64 %2221, 8
  store i64 %2245, i64* %3, align 8
  %2246 = inttoptr i64 %2244 to i32*
  %2247 = load i32, i32* %2246, align 4
  store i32 %2247, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %2248 = add i64 %2214, -1716
  %2249 = add i64 %2221, 16
  store i64 %2249, i64* %3, align 8
  %2250 = load <2 x float>, <2 x float>* %60, align 1
  %2251 = extractelement <2 x float> %2250, i32 0
  %2252 = inttoptr i64 %2248 to float*
  store float %2251, float* %2252, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_42a372

block_.L_42a372:                                  ; preds = %block_.L_42a362, %block_42a344
  %2253 = phi i64 [ %.pre70, %block_.L_42a362 ], [ %2243, %block_42a344 ]
  %2254 = load i64, i64* %RBP.i, align 8
  %2255 = add i64 %2254, -1716
  %2256 = add i64 %2253, 8
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2255 to i32*
  %2258 = load i32, i32* %2257, align 4
  store i32 %2258, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %2259 = add i64 %2254, -1720
  %2260 = add i64 %2253, 16
  store i64 %2260, i64* %3, align 8
  %2261 = load <2 x float>, <2 x float>* %60, align 1
  %2262 = extractelement <2 x float> %2261, i32 0
  %2263 = inttoptr i64 %2259 to float*
  store float %2262, float* %2263, align 4
  %2264 = load i64, i64* %3, align 8
  %2265 = add i64 %2264, 21
  br label %block_.L_42a397

block_.L_42a387:                                  ; preds = %routine_ucomiss__xmm1___xmm0.exit489
  store <4 x i32> zeroinitializer, <4 x i32>* %1563, align 1
  %2266 = load i64, i64* %RBP.i, align 8
  %2267 = add i64 %2266, -1720
  %2268 = add i64 %2164, 11
  store i64 %2268, i64* %3, align 8
  %2269 = load <2 x float>, <2 x float>* %60, align 1
  %2270 = extractelement <2 x float> %2269, i32 0
  %2271 = inttoptr i64 %2267 to float*
  store float %2270, float* %2271, align 4
  %2272 = load i64, i64* %3, align 8
  %2273 = add i64 %2272, 5
  store i64 %2273, i64* %3, align 8
  br label %block_.L_42a397

block_.L_42a397:                                  ; preds = %block_.L_42a387, %block_.L_42a372
  %storemerge37 = phi i64 [ %2265, %block_.L_42a372 ], [ %2273, %block_.L_42a387 ]
  %MEMORY.17 = phi %struct.Memory* [ %2218, %block_.L_42a372 ], [ %2159, %block_.L_42a387 ]
  %2274 = load i64, i64* %RBP.i, align 8
  %2275 = add i64 %2274, -1720
  %2276 = add i64 %storemerge37, 8
  store i64 %2276, i64* %3, align 8
  %2277 = inttoptr i64 %2275 to i32*
  %2278 = load i32, i32* %2277, align 4
  store i32 %2278, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %2279 = add i64 %2274, -8
  %2280 = add i64 %storemerge37, 12
  store i64 %2280, i64* %3, align 8
  %2281 = inttoptr i64 %2279 to i64*
  %2282 = load i64, i64* %2281, align 8
  store i64 %2282, i64* %RAX.i491, align 8
  %2283 = add i64 %2274, -12
  %2284 = add i64 %storemerge37, 16
  store i64 %2284, i64* %3, align 8
  %2285 = inttoptr i64 %2283 to i32*
  %2286 = load i32, i32* %2285, align 4
  %2287 = sext i32 %2286 to i64
  store i64 %2287, i64* %RCX.i526, align 8
  %2288 = shl nsw i64 %2287, 2
  %2289 = add i64 %2282, 31016
  %2290 = add i64 %2289, %2288
  %2291 = add i64 %storemerge37, 25
  store i64 %2291, i64* %3, align 8
  %2292 = load <2 x float>, <2 x float>* %60, align 1
  %2293 = extractelement <2 x float> %2292, i32 0
  %2294 = inttoptr i64 %2290 to float*
  store float %2293, float* %2294, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_42a3b0

block_.L_42a3b0:                                  ; preds = %block_42a20c, %block_.L_42a397
  %2295 = phi i64 [ %1846, %block_42a20c ], [ %.pre71, %block_.L_42a397 ]
  %MEMORY.18 = phi %struct.Memory* [ %1783, %block_42a20c ], [ %MEMORY.17, %block_.L_42a397 ]
  %2296 = add i64 %2295, 409
  br label %block_.L_42a549

block_.L_42a3b5:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit642
  %.v137 = select i1 %1843, i64 34, i64 399
  %2297 = add i64 %1786, %.v137
  store i64 %2297, i64* %3, align 8
  br i1 %1843, label %block_42a3d7, label %block_.L_42a544

block_42a3d7:                                     ; preds = %block_.L_42a3b5
  %2298 = add i64 %2297, ptrtoint (%G_0xb8d2d__rip__type* @G_0xb8d2d__rip_ to i64)
  %2299 = add i64 %2297, 8
  store i64 %2299, i64* %3, align 8
  %2300 = inttoptr i64 %2298 to i32*
  %2301 = load i32, i32* %2300, align 4
  store i32 %2301, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %2302 = add i64 %2297, 12
  store i64 %2302, i64* %3, align 8
  %2303 = load i64, i64* %1789, align 8
  store i64 %2303, i64* %RAX.i491, align 8
  %2304 = add i64 %2297, 15
  store i64 %2304, i64* %3, align 8
  %2305 = load i32, i32* %1793, align 4
  %2306 = zext i32 %2305 to i64
  store i64 %2306, i64* %RCX.i526, align 8
  %2307 = add i64 %2297, 22
  store i64 %2307, i64* %3, align 8
  %2308 = load i32, i32* %1798, align 4
  %2309 = sext i32 %2308 to i64
  store i64 %2309, i64* %82, align 8
  %2310 = shl nsw i64 %2309, 2
  %2311 = add nsw i64 %2310, 8053168
  %2312 = add i64 %2297, 29
  store i64 %2312, i64* %3, align 8
  %2313 = inttoptr i64 %2311 to i32*
  %2314 = load i32, i32* %2313, align 4
  %2315 = add i32 %2314, %2305
  %2316 = zext i32 %2315 to i64
  store i64 %2316, i64* %RCX.i526, align 8
  %2317 = icmp ult i32 %2315, %2305
  %2318 = icmp ult i32 %2315, %2314
  %2319 = or i1 %2317, %2318
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %14, align 1
  %2321 = and i32 %2315, 255
  %2322 = tail call i32 @llvm.ctpop.i32(i32 %2321)
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  %2325 = xor i8 %2324, 1
  store i8 %2325, i8* %21, align 1
  %2326 = xor i32 %2314, %2305
  %2327 = xor i32 %2326, %2315
  %2328 = lshr i32 %2327, 4
  %2329 = trunc i32 %2328 to i8
  %2330 = and i8 %2329, 1
  store i8 %2330, i8* %27, align 1
  %2331 = icmp eq i32 %2315, 0
  %2332 = zext i1 %2331 to i8
  store i8 %2332, i8* %30, align 1
  %2333 = lshr i32 %2315, 31
  %2334 = trunc i32 %2333 to i8
  store i8 %2334, i8* %33, align 1
  %2335 = lshr i32 %2305, 31
  %2336 = lshr i32 %2314, 31
  %2337 = xor i32 %2333, %2335
  %2338 = xor i32 %2333, %2336
  %2339 = add nuw nsw i32 %2337, %2338
  %2340 = icmp eq i32 %2339, 2
  %2341 = zext i1 %2340 to i8
  store i8 %2341, i8* %39, align 1
  %2342 = sext i32 %2315 to i64
  store i64 %2342, i64* %82, align 8
  %2343 = shl nsw i64 %2342, 2
  %2344 = add nsw i64 %2343, 10000
  %2345 = add i64 %2344, %2303
  %2346 = add i64 %2297, 41
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2345 to i32*
  %2348 = load i32, i32* %2347, align 4
  store i32 %2348, i32* %67, align 1
  store float 0.000000e+00, float* %69, align 1
  store float 0.000000e+00, float* %71, align 1
  store float 0.000000e+00, float* %73, align 1
  %2349 = add i64 %2297, 44
  store i64 %2349, i64* %3, align 8
  %2350 = load i32, i32* %1793, align 4
  %2351 = zext i32 %2350 to i64
  store i64 %2351, i64* %RCX.i526, align 8
  %2352 = add i64 %2297, 51
  store i64 %2352, i64* %3, align 8
  %2353 = load i32, i32* %1798, align 4
  %2354 = sext i32 %2353 to i64
  store i64 %2354, i64* %RAX.i491, align 8
  %2355 = shl nsw i64 %2354, 2
  %2356 = add nsw i64 %2355, 8053168
  %2357 = add i64 %2297, 58
  store i64 %2357, i64* %3, align 8
  %2358 = inttoptr i64 %2356 to i32*
  %2359 = load i32, i32* %2358, align 4
  %2360 = add i32 %2359, %2350
  %2361 = zext i32 %2360 to i64
  store i64 %2361, i64* %RCX.i526, align 8
  %2362 = icmp ult i32 %2360, %2350
  %2363 = icmp ult i32 %2360, %2359
  %2364 = or i1 %2362, %2363
  %2365 = zext i1 %2364 to i8
  store i8 %2365, i8* %14, align 1
  %2366 = and i32 %2360, 255
  %2367 = tail call i32 @llvm.ctpop.i32(i32 %2366)
  %2368 = trunc i32 %2367 to i8
  %2369 = and i8 %2368, 1
  %2370 = xor i8 %2369, 1
  store i8 %2370, i8* %21, align 1
  %2371 = xor i32 %2359, %2350
  %2372 = xor i32 %2371, %2360
  %2373 = lshr i32 %2372, 4
  %2374 = trunc i32 %2373 to i8
  %2375 = and i8 %2374, 1
  store i8 %2375, i8* %27, align 1
  %2376 = icmp eq i32 %2360, 0
  %2377 = zext i1 %2376 to i8
  store i8 %2377, i8* %30, align 1
  %2378 = lshr i32 %2360, 31
  %2379 = trunc i32 %2378 to i8
  store i8 %2379, i8* %33, align 1
  %2380 = lshr i32 %2350, 31
  %2381 = lshr i32 %2359, 31
  %2382 = xor i32 %2378, %2380
  %2383 = xor i32 %2378, %2381
  %2384 = add nuw nsw i32 %2382, %2383
  %2385 = icmp eq i32 %2384, 2
  %2386 = zext i1 %2385 to i8
  store i8 %2386, i8* %39, align 1
  %2387 = sext i32 %2360 to i64
  store i64 %2387, i64* %RAX.i491, align 8
  %2388 = load i64, i64* %RBP.i, align 8
  %2389 = shl nsw i64 %2387, 2
  %2390 = add nsw i64 %2389, -1632
  %2391 = add i64 %2390, %2388
  %2392 = add i64 %2297, 70
  store i64 %2392, i64* %3, align 8
  %2393 = load <2 x float>, <2 x float>* %74, align 1
  %2394 = load <2 x i32>, <2 x i32>* %75, align 1
  %2395 = inttoptr i64 %2391 to float*
  %2396 = load float, float* %2395, align 4
  %2397 = extractelement <2 x float> %2393, i32 0
  %2398 = fmul float %2397, %2396
  store float %2398, float* %66, align 1
  %2399 = bitcast <2 x float> %2393 to <2 x i32>
  %2400 = extractelement <2 x i32> %2399, i32 1
  store i32 %2400, i32* %76, align 1
  %2401 = extractelement <2 x i32> %2394, i32 0
  store i32 %2401, i32* %77, align 1
  %2402 = extractelement <2 x i32> %2394, i32 1
  store i32 %2402, i32* %78, align 1
  %2403 = add i64 %2388, -8
  %2404 = add i64 %2297, 74
  store i64 %2404, i64* %3, align 8
  %2405 = inttoptr i64 %2403 to i64*
  %2406 = load i64, i64* %2405, align 8
  store i64 %2406, i64* %RAX.i491, align 8
  %2407 = add i64 %2388, -12
  %2408 = add i64 %2297, 77
  store i64 %2408, i64* %3, align 8
  %2409 = inttoptr i64 %2407 to i32*
  %2410 = load i32, i32* %2409, align 4
  %2411 = zext i32 %2410 to i64
  store i64 %2411, i64* %RCX.i526, align 8
  %2412 = add i64 %2388, -1640
  %2413 = add i64 %2297, 84
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2412 to i32*
  %2415 = load i32, i32* %2414, align 4
  %2416 = sext i32 %2415 to i64
  store i64 %2416, i64* %82, align 8
  %2417 = shl nsw i64 %2416, 2
  %2418 = add nsw i64 %2417, 8053168
  %2419 = add i64 %2297, 91
  store i64 %2419, i64* %3, align 8
  %2420 = inttoptr i64 %2418 to i32*
  %2421 = load i32, i32* %2420, align 4
  %2422 = add i32 %2421, %2410
  %2423 = zext i32 %2422 to i64
  store i64 %2423, i64* %RCX.i526, align 8
  %2424 = icmp ult i32 %2422, %2410
  %2425 = icmp ult i32 %2422, %2421
  %2426 = or i1 %2424, %2425
  %2427 = zext i1 %2426 to i8
  store i8 %2427, i8* %14, align 1
  %2428 = and i32 %2422, 255
  %2429 = tail call i32 @llvm.ctpop.i32(i32 %2428)
  %2430 = trunc i32 %2429 to i8
  %2431 = and i8 %2430, 1
  %2432 = xor i8 %2431, 1
  store i8 %2432, i8* %21, align 1
  %2433 = xor i32 %2421, %2410
  %2434 = xor i32 %2433, %2422
  %2435 = lshr i32 %2434, 4
  %2436 = trunc i32 %2435 to i8
  %2437 = and i8 %2436, 1
  store i8 %2437, i8* %27, align 1
  %2438 = icmp eq i32 %2422, 0
  %2439 = zext i1 %2438 to i8
  store i8 %2439, i8* %30, align 1
  %2440 = lshr i32 %2422, 31
  %2441 = trunc i32 %2440 to i8
  store i8 %2441, i8* %33, align 1
  %2442 = lshr i32 %2410, 31
  %2443 = lshr i32 %2421, 31
  %2444 = xor i32 %2440, %2442
  %2445 = xor i32 %2440, %2443
  %2446 = add nuw nsw i32 %2444, %2445
  %2447 = icmp eq i32 %2446, 2
  %2448 = zext i1 %2447 to i8
  store i8 %2448, i8* %39, align 1
  %2449 = sext i32 %2422 to i64
  store i64 %2449, i64* %82, align 8
  %2450 = shl nsw i64 %2449, 2
  %2451 = add nsw i64 %2450, 10000
  %2452 = add i64 %2451, %2406
  %2453 = add i64 %2297, 103
  store i64 %2453, i64* %3, align 8
  %2454 = load <2 x float>, <2 x float>* %60, align 1
  %2455 = load <2 x i32>, <2 x i32>* %80, align 1
  %2456 = inttoptr i64 %2452 to float*
  %2457 = load float, float* %2456, align 4
  %2458 = extractelement <2 x float> %2454, i32 0
  %2459 = fsub float %2458, %2457
  store float %2459, float* %79, align 1
  %2460 = bitcast <2 x float> %2454 to <2 x i32>
  %2461 = extractelement <2 x i32> %2460, i32 1
  store i32 %2461, i32* %56, align 1
  %2462 = extractelement <2 x i32> %2455, i32 0
  store i32 %2462, i32* %57, align 1
  %2463 = extractelement <2 x i32> %2455, i32 1
  store i32 %2463, i32* %59, align 1
  %2464 = load i64, i64* %RBP.i, align 8
  %2465 = add i64 %2464, -12
  %2466 = add i64 %2297, 107
  store i64 %2466, i64* %3, align 8
  %2467 = inttoptr i64 %2465 to i32*
  %2468 = load i32, i32* %2467, align 4
  %2469 = sext i32 %2468 to i64
  store i64 %2469, i64* %RAX.i491, align 8
  %2470 = shl nsw i64 %2469, 2
  %2471 = add i64 %2464, -1632
  %2472 = add i64 %2471, %2470
  %2473 = add i64 %2297, 116
  store i64 %2473, i64* %3, align 8
  %2474 = load <2 x float>, <2 x float>* %60, align 1
  %2475 = load <2 x i32>, <2 x i32>* %80, align 1
  %2476 = inttoptr i64 %2472 to float*
  %2477 = load float, float* %2476, align 4
  %2478 = extractelement <2 x float> %2474, i32 0
  %2479 = fmul float %2478, %2477
  store float %2479, float* %79, align 1
  %2480 = bitcast <2 x float> %2474 to <2 x i32>
  %2481 = extractelement <2 x i32> %2480, i32 1
  store i32 %2481, i32* %56, align 1
  %2482 = extractelement <2 x i32> %2475, i32 0
  store i32 %2482, i32* %57, align 1
  %2483 = extractelement <2 x i32> %2475, i32 1
  store i32 %2483, i32* %59, align 1
  %2484 = load <2 x float>, <2 x float>* %74, align 1
  %2485 = load <2 x i32>, <2 x i32>* %75, align 1
  %2486 = load <2 x float>, <2 x float>* %60, align 1
  %2487 = extractelement <2 x float> %2484, i32 0
  %2488 = extractelement <2 x float> %2486, i32 0
  %2489 = fadd float %2487, %2488
  store float %2489, float* %66, align 1
  %2490 = bitcast <2 x float> %2484 to <2 x i32>
  %2491 = extractelement <2 x i32> %2490, i32 1
  store i32 %2491, i32* %76, align 1
  %2492 = extractelement <2 x i32> %2485, i32 0
  store i32 %2492, i32* %77, align 1
  %2493 = extractelement <2 x i32> %2485, i32 1
  store i32 %2493, i32* %78, align 1
  %2494 = add i64 %2464, -1652
  %2495 = add i64 %2297, 128
  store i64 %2495, i64* %3, align 8
  %2496 = load <2 x float>, <2 x float>* %74, align 1
  %2497 = extractelement <2 x float> %2496, i32 0
  %2498 = inttoptr i64 %2494 to float*
  store float %2497, float* %2498, align 4
  %2499 = load i64, i64* %RBP.i, align 8
  %2500 = add i64 %2499, -8
  %2501 = load i64, i64* %3, align 8
  %2502 = add i64 %2501, 4
  store i64 %2502, i64* %3, align 8
  %2503 = inttoptr i64 %2500 to i64*
  %2504 = load i64, i64* %2503, align 8
  store i64 %2504, i64* %RAX.i491, align 8
  %2505 = add i64 %2499, -12
  %2506 = add i64 %2501, 8
  store i64 %2506, i64* %3, align 8
  %2507 = inttoptr i64 %2505 to i32*
  %2508 = load i32, i32* %2507, align 4
  %2509 = sext i32 %2508 to i64
  store i64 %2509, i64* %82, align 8
  %2510 = shl nsw i64 %2509, 2
  %2511 = add i64 %2504, 31016
  %2512 = add i64 %2511, %2510
  %2513 = add i64 %2501, 17
  store i64 %2513, i64* %3, align 8
  %2514 = inttoptr i64 %2512 to i32*
  %2515 = load i32, i32* %2514, align 4
  store i32 %2515, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %2516 = add i64 %2499, -1652
  %2517 = add i64 %2501, 25
  store i64 %2517, i64* %3, align 8
  %2518 = inttoptr i64 %2516 to i32*
  %2519 = load i32, i32* %2518, align 4
  store i32 %2519, i32* %67, align 1
  store float 0.000000e+00, float* %69, align 1
  store float 0.000000e+00, float* %71, align 1
  store float 0.000000e+00, float* %73, align 1
  %2520 = add i64 %2501, 28
  store i64 %2520, i64* %3, align 8
  %2521 = load <2 x float>, <2 x float>* %74, align 1
  %2522 = extractelement <2 x float> %2521, i32 0
  %2523 = load <2 x float>, <2 x float>* %60, align 1
  %2524 = extractelement <2 x float> %2523, i32 0
  %2525 = fcmp uno float %2522, %2524
  br i1 %2525, label %2526, label %2536

; <label>:2526:                                   ; preds = %block_42a3d7
  %2527 = fadd float %2522, %2524
  %2528 = bitcast float %2527 to i32
  %2529 = and i32 %2528, 2143289344
  %2530 = icmp eq i32 %2529, 2139095040
  %2531 = and i32 %2528, 4194303
  %2532 = icmp ne i32 %2531, 0
  %2533 = and i1 %2530, %2532
  br i1 %2533, label %2534, label %2542

; <label>:2534:                                   ; preds = %2526
  %2535 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2520, %struct.Memory* %1783)
  %.pre72 = load i64, i64* %3, align 8
  %.pre73 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomiss__xmm0___xmm1.exit314

; <label>:2536:                                   ; preds = %block_42a3d7
  %2537 = fcmp ogt float %2522, %2524
  br i1 %2537, label %2542, label %2538

; <label>:2538:                                   ; preds = %2536
  %2539 = fcmp olt float %2522, %2524
  br i1 %2539, label %2542, label %2540

; <label>:2540:                                   ; preds = %2538
  %2541 = fcmp oeq float %2522, %2524
  br i1 %2541, label %2542, label %2546

; <label>:2542:                                   ; preds = %2540, %2538, %2536, %2526
  %2543 = phi i8 [ 0, %2536 ], [ 0, %2538 ], [ 1, %2540 ], [ 1, %2526 ]
  %2544 = phi i8 [ 0, %2536 ], [ 0, %2538 ], [ 0, %2540 ], [ 1, %2526 ]
  %2545 = phi i8 [ 0, %2536 ], [ 1, %2538 ], [ 0, %2540 ], [ 1, %2526 ]
  store i8 %2543, i8* %30, align 1
  store i8 %2544, i8* %21, align 1
  store i8 %2545, i8* %14, align 1
  br label %2546

; <label>:2546:                                   ; preds = %2542, %2540
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit314

routine_ucomiss__xmm0___xmm1.exit314:             ; preds = %2546, %2534
  %2547 = phi i64 [ %.pre73, %2534 ], [ %2499, %2546 ]
  %2548 = phi i64 [ %.pre72, %2534 ], [ %2520, %2546 ]
  %2549 = phi %struct.Memory* [ %2535, %2534 ], [ %1783, %2546 ]
  %2550 = load i8, i8* %14, align 1
  %2551 = load i8, i8* %30, align 1
  %2552 = or i8 %2551, %2550
  %2553 = icmp ne i8 %2552, 0
  %.v157 = select i1 %2553, i64 27, i64 6
  %2554 = add i64 %2548, %.v157
  store i64 %2554, i64* %3, align 8
  br i1 %2553, label %block_.L_42a48e, label %block_42a479

block_42a479:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit314
  %2555 = add i64 %2547, -1652
  %2556 = add i64 %2554, 8
  store i64 %2556, i64* %3, align 8
  %2557 = inttoptr i64 %2555 to i32*
  %2558 = load i32, i32* %2557, align 4
  store i32 %2558, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %2559 = add i64 %2547, -1724
  %2560 = add i64 %2554, 16
  store i64 %2560, i64* %3, align 8
  %2561 = load <2 x float>, <2 x float>* %60, align 1
  %2562 = extractelement <2 x float> %2561, i32 0
  %2563 = inttoptr i64 %2559 to float*
  store float %2562, float* %2563, align 4
  %2564 = load i64, i64* %3, align 8
  %2565 = add i64 %2564, 30
  store i64 %2565, i64* %3, align 8
  br label %block_.L_42a4a7

block_.L_42a48e:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit314
  %2566 = add i64 %2547, -8
  %2567 = add i64 %2554, 4
  store i64 %2567, i64* %3, align 8
  %2568 = inttoptr i64 %2566 to i64*
  %2569 = load i64, i64* %2568, align 8
  store i64 %2569, i64* %RAX.i491, align 8
  %2570 = add i64 %2547, -12
  %2571 = add i64 %2554, 8
  store i64 %2571, i64* %3, align 8
  %2572 = inttoptr i64 %2570 to i32*
  %2573 = load i32, i32* %2572, align 4
  %2574 = sext i32 %2573 to i64
  store i64 %2574, i64* %RCX.i526, align 8
  %2575 = shl nsw i64 %2574, 2
  %2576 = add i64 %2569, 31016
  %2577 = add i64 %2576, %2575
  %2578 = add i64 %2554, 17
  store i64 %2578, i64* %3, align 8
  %2579 = inttoptr i64 %2577 to i32*
  %2580 = load i32, i32* %2579, align 4
  store i32 %2580, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %2581 = add i64 %2547, -1724
  %2582 = add i64 %2554, 25
  store i64 %2582, i64* %3, align 8
  %2583 = load <2 x float>, <2 x float>* %60, align 1
  %2584 = extractelement <2 x float> %2583, i32 0
  %2585 = inttoptr i64 %2581 to float*
  store float %2584, float* %2585, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_42a4a7

block_.L_42a4a7:                                  ; preds = %block_.L_42a48e, %block_42a479
  %2586 = phi i64 [ %.pre74, %block_.L_42a48e ], [ %2565, %block_42a479 ]
  %2587 = load i64, i64* %RBP.i, align 8
  %2588 = add i64 %2587, -1724
  %2589 = add i64 %2586, 8
  store i64 %2589, i64* %3, align 8
  %2590 = inttoptr i64 %2588 to i32*
  %2591 = load i32, i32* %2590, align 4
  store i32 %2591, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  store <4 x i32> zeroinitializer, <4 x i32>* %1559, align 1
  %2592 = add i64 %2586, 14
  store i64 %2592, i64* %3, align 8
  %2593 = load <2 x float>, <2 x float>* %60, align 1
  %2594 = extractelement <2 x float> %2593, i32 0
  %2595 = load <2 x float>, <2 x float>* %74, align 1
  %2596 = extractelement <2 x float> %2595, i32 0
  %2597 = fcmp uno float %2594, %2596
  br i1 %2597, label %2598, label %2608

; <label>:2598:                                   ; preds = %block_.L_42a4a7
  %2599 = fadd float %2594, %2596
  %2600 = bitcast float %2599 to i32
  %2601 = and i32 %2600, 2143289344
  %2602 = icmp eq i32 %2601, 2139095040
  %2603 = and i32 %2600, 4194303
  %2604 = icmp ne i32 %2603, 0
  %2605 = and i1 %2602, %2604
  br i1 %2605, label %2606, label %2614

; <label>:2606:                                   ; preds = %2598
  %2607 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2592, %struct.Memory* %2549)
  %.pre75 = load i64, i64* %3, align 8
  br label %routine_ucomiss__xmm1___xmm0.exit

; <label>:2608:                                   ; preds = %block_.L_42a4a7
  %2609 = fcmp ogt float %2594, %2596
  br i1 %2609, label %2614, label %2610

; <label>:2610:                                   ; preds = %2608
  %2611 = fcmp olt float %2594, %2596
  br i1 %2611, label %2614, label %2612

; <label>:2612:                                   ; preds = %2610
  %2613 = fcmp oeq float %2594, %2596
  br i1 %2613, label %2614, label %2618

; <label>:2614:                                   ; preds = %2612, %2610, %2608, %2598
  %2615 = phi i8 [ 0, %2608 ], [ 0, %2610 ], [ 1, %2612 ], [ 1, %2598 ]
  %2616 = phi i8 [ 0, %2608 ], [ 0, %2610 ], [ 0, %2612 ], [ 1, %2598 ]
  %2617 = phi i8 [ 0, %2608 ], [ 1, %2610 ], [ 0, %2612 ], [ 1, %2598 ]
  store i8 %2615, i8* %30, align 1
  store i8 %2616, i8* %21, align 1
  store i8 %2617, i8* %14, align 1
  br label %2618

; <label>:2618:                                   ; preds = %2614, %2612
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm1___xmm0.exit

routine_ucomiss__xmm1___xmm0.exit:                ; preds = %2618, %2606
  %2619 = phi i64 [ %.pre75, %2606 ], [ %2592, %2618 ]
  %2620 = phi %struct.Memory* [ %2607, %2606 ], [ %2549, %2618 ]
  %2621 = load i8, i8* %14, align 1
  %2622 = load i8, i8* %30, align 1
  %2623 = or i8 %2622, %2621
  %2624 = icmp ne i8 %2623, 0
  %.v158 = select i1 %2624, i64 22, i64 6
  %2625 = add i64 %2619, %.v158
  store i64 %2625, i64* %3, align 8
  br i1 %2624, label %block_.L_42a4cb, label %block_42a4bb

block_42a4bb:                                     ; preds = %routine_ucomiss__xmm1___xmm0.exit
  store <4 x i32> zeroinitializer, <4 x i32>* %1560, align 1
  %2626 = load i64, i64* %RBP.i, align 8
  %2627 = add i64 %2626, -1728
  %2628 = add i64 %2625, 11
  store i64 %2628, i64* %3, align 8
  %2629 = load <2 x float>, <2 x float>* %60, align 1
  %2630 = extractelement <2 x float> %2629, i32 0
  %2631 = inttoptr i64 %2627 to float*
  store float %2630, float* %2631, align 4
  %2632 = load i64, i64* %3, align 8
  %2633 = add i64 %2632, 101
  store i64 %2633, i64* %3, align 8
  br label %block_.L_42a52b

block_.L_42a4cb:                                  ; preds = %routine_ucomiss__xmm1___xmm0.exit
  %2634 = load i64, i64* %RBP.i, align 8
  %2635 = add i64 %2634, -8
  %2636 = add i64 %2625, 4
  store i64 %2636, i64* %3, align 8
  %2637 = inttoptr i64 %2635 to i64*
  %2638 = load i64, i64* %2637, align 8
  store i64 %2638, i64* %RAX.i491, align 8
  %2639 = add i64 %2634, -12
  %2640 = add i64 %2625, 8
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2639 to i32*
  %2642 = load i32, i32* %2641, align 4
  %2643 = sext i32 %2642 to i64
  store i64 %2643, i64* %RCX.i526, align 8
  %2644 = shl nsw i64 %2643, 2
  %2645 = add i64 %2638, 31016
  %2646 = add i64 %2645, %2644
  %2647 = add i64 %2625, 17
  store i64 %2647, i64* %3, align 8
  %2648 = inttoptr i64 %2646 to i32*
  %2649 = load i32, i32* %2648, align 4
  store i32 %2649, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %2650 = add i64 %2634, -1652
  %2651 = add i64 %2625, 25
  store i64 %2651, i64* %3, align 8
  %2652 = inttoptr i64 %2650 to i32*
  %2653 = load i32, i32* %2652, align 4
  store i32 %2653, i32* %67, align 1
  store float 0.000000e+00, float* %69, align 1
  store float 0.000000e+00, float* %71, align 1
  store float 0.000000e+00, float* %73, align 1
  %2654 = add i64 %2625, 28
  store i64 %2654, i64* %3, align 8
  %2655 = load <2 x float>, <2 x float>* %74, align 1
  %2656 = extractelement <2 x float> %2655, i32 0
  %2657 = load <2 x float>, <2 x float>* %60, align 1
  %2658 = extractelement <2 x float> %2657, i32 0
  %2659 = fcmp uno float %2656, %2658
  br i1 %2659, label %2660, label %2670

; <label>:2660:                                   ; preds = %block_.L_42a4cb
  %2661 = fadd float %2656, %2658
  %2662 = bitcast float %2661 to i32
  %2663 = and i32 %2662, 2143289344
  %2664 = icmp eq i32 %2663, 2139095040
  %2665 = and i32 %2662, 4194303
  %2666 = icmp ne i32 %2665, 0
  %2667 = and i1 %2664, %2666
  br i1 %2667, label %2668, label %2676

; <label>:2668:                                   ; preds = %2660
  %2669 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2654, %struct.Memory* %2620)
  %.pre76 = load i64, i64* %3, align 8
  %.pre77 = load i8, i8* %14, align 1
  %.pre78 = load i8, i8* %30, align 1
  %.pre79 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:2670:                                   ; preds = %block_.L_42a4cb
  %2671 = fcmp ogt float %2656, %2658
  br i1 %2671, label %2676, label %2672

; <label>:2672:                                   ; preds = %2670
  %2673 = fcmp olt float %2656, %2658
  br i1 %2673, label %2676, label %2674

; <label>:2674:                                   ; preds = %2672
  %2675 = fcmp oeq float %2656, %2658
  br i1 %2675, label %2676, label %2680

; <label>:2676:                                   ; preds = %2674, %2672, %2670, %2660
  %2677 = phi i8 [ 0, %2670 ], [ 0, %2672 ], [ 1, %2674 ], [ 1, %2660 ]
  %2678 = phi i8 [ 0, %2670 ], [ 0, %2672 ], [ 0, %2674 ], [ 1, %2660 ]
  %2679 = phi i8 [ 0, %2670 ], [ 1, %2672 ], [ 0, %2674 ], [ 1, %2660 ]
  store i8 %2677, i8* %30, align 1
  store i8 %2678, i8* %21, align 1
  store i8 %2679, i8* %14, align 1
  br label %2680

; <label>:2680:                                   ; preds = %2676, %2674
  %2681 = phi i8 [ %2677, %2676 ], [ %2622, %2674 ]
  %2682 = phi i8 [ %2679, %2676 ], [ %2621, %2674 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %2680, %2668
  %2683 = phi i64 [ %.pre79, %2668 ], [ %2634, %2680 ]
  %2684 = phi i8 [ %.pre78, %2668 ], [ %2681, %2680 ]
  %2685 = phi i8 [ %.pre77, %2668 ], [ %2682, %2680 ]
  %2686 = phi i64 [ %.pre76, %2668 ], [ %2654, %2680 ]
  %2687 = phi %struct.Memory* [ %2669, %2668 ], [ %2620, %2680 ]
  %2688 = or i8 %2684, %2685
  %2689 = icmp ne i8 %2688, 0
  %.v138 = select i1 %2689, i64 27, i64 6
  %2690 = add i64 %2686, %.v138
  store i64 %2690, i64* %3, align 8
  br i1 %2689, label %block_.L_42a502, label %block_42a4ed

block_42a4ed:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %2691 = add i64 %2683, -1652
  %2692 = add i64 %2690, 8
  store i64 %2692, i64* %3, align 8
  %2693 = inttoptr i64 %2691 to i32*
  %2694 = load i32, i32* %2693, align 4
  store i32 %2694, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %2695 = add i64 %2683, -1732
  %2696 = add i64 %2690, 16
  store i64 %2696, i64* %3, align 8
  %2697 = load <2 x float>, <2 x float>* %60, align 1
  %2698 = extractelement <2 x float> %2697, i32 0
  %2699 = inttoptr i64 %2695 to float*
  store float %2698, float* %2699, align 4
  %2700 = load i64, i64* %3, align 8
  %2701 = add i64 %2700, 30
  store i64 %2701, i64* %3, align 8
  br label %block_.L_42a51b

block_.L_42a502:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %2702 = add i64 %2683, -8
  %2703 = add i64 %2690, 4
  store i64 %2703, i64* %3, align 8
  %2704 = inttoptr i64 %2702 to i64*
  %2705 = load i64, i64* %2704, align 8
  store i64 %2705, i64* %RAX.i491, align 8
  %2706 = add i64 %2683, -12
  %2707 = add i64 %2690, 8
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to i32*
  %2709 = load i32, i32* %2708, align 4
  %2710 = sext i32 %2709 to i64
  store i64 %2710, i64* %RCX.i526, align 8
  %2711 = shl nsw i64 %2710, 2
  %2712 = add i64 %2705, 31016
  %2713 = add i64 %2712, %2711
  %2714 = add i64 %2690, 17
  store i64 %2714, i64* %3, align 8
  %2715 = inttoptr i64 %2713 to i32*
  %2716 = load i32, i32* %2715, align 4
  store i32 %2716, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %2717 = add i64 %2683, -1732
  %2718 = add i64 %2690, 25
  store i64 %2718, i64* %3, align 8
  %2719 = load <2 x float>, <2 x float>* %60, align 1
  %2720 = extractelement <2 x float> %2719, i32 0
  %2721 = inttoptr i64 %2717 to float*
  store float %2720, float* %2721, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_42a51b

block_.L_42a51b:                                  ; preds = %block_.L_42a502, %block_42a4ed
  %2722 = phi i64 [ %.pre80, %block_.L_42a502 ], [ %2701, %block_42a4ed ]
  %2723 = load i64, i64* %RBP.i, align 8
  %2724 = add i64 %2723, -1732
  %2725 = add i64 %2722, 8
  store i64 %2725, i64* %3, align 8
  %2726 = inttoptr i64 %2724 to i32*
  %2727 = load i32, i32* %2726, align 4
  store i32 %2727, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %2728 = add i64 %2723, -1728
  %2729 = add i64 %2722, 16
  store i64 %2729, i64* %3, align 8
  %2730 = load <2 x float>, <2 x float>* %60, align 1
  %2731 = extractelement <2 x float> %2730, i32 0
  %2732 = inttoptr i64 %2728 to float*
  store float %2731, float* %2732, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_42a52b

block_.L_42a52b:                                  ; preds = %block_.L_42a51b, %block_42a4bb
  %2733 = phi i64 [ %.pre81, %block_.L_42a51b ], [ %2633, %block_42a4bb ]
  %MEMORY.21 = phi %struct.Memory* [ %2687, %block_.L_42a51b ], [ %2620, %block_42a4bb ]
  %2734 = load i64, i64* %RBP.i, align 8
  %2735 = add i64 %2734, -1728
  %2736 = add i64 %2733, 8
  store i64 %2736, i64* %3, align 8
  %2737 = inttoptr i64 %2735 to i32*
  %2738 = load i32, i32* %2737, align 4
  store i32 %2738, i32* %54, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %62, align 1
  store float 0.000000e+00, float* %63, align 1
  %2739 = add i64 %2734, -8
  %2740 = add i64 %2733, 12
  store i64 %2740, i64* %3, align 8
  %2741 = inttoptr i64 %2739 to i64*
  %2742 = load i64, i64* %2741, align 8
  store i64 %2742, i64* %RAX.i491, align 8
  %2743 = add i64 %2734, -12
  %2744 = add i64 %2733, 16
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to i32*
  %2746 = load i32, i32* %2745, align 4
  %2747 = sext i32 %2746 to i64
  store i64 %2747, i64* %RCX.i526, align 8
  %2748 = shl nsw i64 %2747, 2
  %2749 = add i64 %2742, 31016
  %2750 = add i64 %2749, %2748
  %2751 = add i64 %2733, 25
  store i64 %2751, i64* %3, align 8
  %2752 = load <2 x float>, <2 x float>* %60, align 1
  %2753 = extractelement <2 x float> %2752, i32 0
  %2754 = inttoptr i64 %2750 to float*
  store float %2753, float* %2754, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_42a544

block_.L_42a544:                                  ; preds = %block_.L_42a3b5, %block_.L_42a52b
  %2755 = phi i64 [ %2297, %block_.L_42a3b5 ], [ %.pre82, %block_.L_42a52b ]
  %MEMORY.22 = phi %struct.Memory* [ %1783, %block_.L_42a3b5 ], [ %MEMORY.21, %block_.L_42a52b ]
  %2756 = add i64 %2755, 5
  store i64 %2756, i64* %3, align 8
  br label %block_.L_42a549

block_.L_42a549:                                  ; preds = %block_.L_42a544, %block_.L_42a3b0
  %storemerge38 = phi i64 [ %2296, %block_.L_42a3b0 ], [ %2756, %block_.L_42a544 ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.18, %block_.L_42a3b0 ], [ %MEMORY.22, %block_.L_42a544 ]
  %2757 = add i64 %storemerge38, 5
  store i64 %2757, i64* %3, align 8
  %.pre83 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42a54e

block_.L_42a54e:                                  ; preds = %block_.L_42a549, %block_42a1e9
  %2758 = phi i64 [ %1645, %block_42a1e9 ], [ %.pre83, %block_.L_42a549 ]
  %storemerge36 = phi i64 [ %1738, %block_42a1e9 ], [ %2757, %block_.L_42a549 ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.14, %block_42a1e9 ], [ %MEMORY.23, %block_.L_42a549 ]
  %2759 = add i64 %2758, -1640
  %2760 = add i64 %storemerge36, 6
  store i64 %2760, i64* %3, align 8
  %2761 = inttoptr i64 %2759 to i32*
  %2762 = load i32, i32* %2761, align 4
  %2763 = add i32 %2762, 1
  %2764 = zext i32 %2763 to i64
  store i64 %2764, i64* %RAX.i491, align 8
  %2765 = icmp eq i32 %2762, -1
  %2766 = icmp eq i32 %2763, 0
  %2767 = or i1 %2765, %2766
  %2768 = zext i1 %2767 to i8
  store i8 %2768, i8* %14, align 1
  %2769 = and i32 %2763, 255
  %2770 = tail call i32 @llvm.ctpop.i32(i32 %2769)
  %2771 = trunc i32 %2770 to i8
  %2772 = and i8 %2771, 1
  %2773 = xor i8 %2772, 1
  store i8 %2773, i8* %21, align 1
  %2774 = xor i32 %2763, %2762
  %2775 = lshr i32 %2774, 4
  %2776 = trunc i32 %2775 to i8
  %2777 = and i8 %2776, 1
  store i8 %2777, i8* %27, align 1
  %2778 = zext i1 %2766 to i8
  store i8 %2778, i8* %30, align 1
  %2779 = lshr i32 %2763, 31
  %2780 = trunc i32 %2779 to i8
  store i8 %2780, i8* %33, align 1
  %2781 = lshr i32 %2762, 31
  %2782 = xor i32 %2779, %2781
  %2783 = add nuw nsw i32 %2782, %2779
  %2784 = icmp eq i32 %2783, 2
  %2785 = zext i1 %2784 to i8
  store i8 %2785, i8* %39, align 1
  %2786 = add i64 %storemerge36, 15
  store i64 %2786, i64* %3, align 8
  store i32 %2763, i32* %2761, align 4
  %2787 = load i64, i64* %3, align 8
  %2788 = add i64 %2787, -934
  store i64 %2788, i64* %3, align 8
  br label %block_.L_42a1b7

block_.L_42a562:                                  ; preds = %block_.L_42a1b7
  %2789 = add i64 %1673, 5
  store i64 %2789, i64* %3, align 8
  br label %block_.L_42a567

block_.L_42a567:                                  ; preds = %block_42a19b, %block_.L_42a562
  %2790 = phi i64 [ %1565, %block_42a19b ], [ %1645, %block_.L_42a562 ]
  %2791 = phi i64 [ %1640, %block_42a19b ], [ %2789, %block_.L_42a562 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.13, %block_42a19b ], [ %MEMORY.14, %block_.L_42a562 ]
  %2792 = add i64 %2791, 5
  store i64 %2792, i64* %3, align 8
  br label %block_.L_42a56c

block_.L_42a56c:                                  ; preds = %block_.L_42a567, %block_42a186
  %2793 = phi i64 [ %1565, %block_42a186 ], [ %2790, %block_.L_42a567 ]
  %2794 = phi i64 [ %1620, %block_42a186 ], [ %2792, %block_.L_42a567 ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.13, %block_42a186 ], [ %MEMORY.25, %block_.L_42a567 ]
  %2795 = add i64 %2793, -12
  %2796 = add i64 %2794, 8
  store i64 %2796, i64* %3, align 8
  %2797 = inttoptr i64 %2795 to i32*
  %2798 = load i32, i32* %2797, align 4
  %2799 = add i32 %2798, 1
  %2800 = zext i32 %2799 to i64
  store i64 %2800, i64* %RAX.i491, align 8
  %2801 = icmp eq i32 %2798, -1
  %2802 = icmp eq i32 %2799, 0
  %2803 = or i1 %2801, %2802
  %2804 = zext i1 %2803 to i8
  store i8 %2804, i8* %14, align 1
  %2805 = and i32 %2799, 255
  %2806 = tail call i32 @llvm.ctpop.i32(i32 %2805)
  %2807 = trunc i32 %2806 to i8
  %2808 = and i8 %2807, 1
  %2809 = xor i8 %2808, 1
  store i8 %2809, i8* %21, align 1
  %2810 = xor i32 %2799, %2798
  %2811 = lshr i32 %2810, 4
  %2812 = trunc i32 %2811 to i8
  %2813 = and i8 %2812, 1
  store i8 %2813, i8* %27, align 1
  %2814 = zext i1 %2802 to i8
  store i8 %2814, i8* %30, align 1
  %2815 = lshr i32 %2799, 31
  %2816 = trunc i32 %2815 to i8
  store i8 %2816, i8* %33, align 1
  %2817 = lshr i32 %2798, 31
  %2818 = xor i32 %2815, %2817
  %2819 = add nuw nsw i32 %2818, %2815
  %2820 = icmp eq i32 %2819, 2
  %2821 = zext i1 %2820 to i8
  store i8 %2821, i8* %39, align 1
  %2822 = add i64 %2794, 14
  store i64 %2822, i64* %3, align 8
  store i32 %2799, i32* %2797, align 4
  %2823 = load i64, i64* %3, align 8
  %2824 = add i64 %2823, -1025
  store i64 %2824, i64* %3, align 8
  br label %block_.L_42a179

block_.L_42a57f:                                  ; preds = %block_.L_42a179
  %2825 = add i64 %1594, 7
  store i64 %2825, i64* %3, align 8
  store i32 21, i32* %1568, align 4
  %.pre48 = load i64, i64* %3, align 8
  %2826 = bitcast [32 x %union.VectorReg]* %51 to <4 x i32>*
  %2827 = bitcast [32 x %union.VectorReg]* %51 to <4 x i32>*
  %2828 = bitcast [32 x %union.VectorReg]* %51 to <4 x i32>*
  %2829 = bitcast [32 x %union.VectorReg]* %51 to <4 x i32>*
  br label %block_.L_42a586

block_.L_42a586:                                  ; preds = %block_.L_42a6e6, %block_.L_42a57f
  %2830 = phi i64 [ %.pre48, %block_.L_42a57f ], [ %3221, %block_.L_42a6e6 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.13, %block_.L_42a57f ], [ %MEMORY.33, %block_.L_42a6e6 ]
  %2831 = load i64, i64* %RBP.i, align 8
  %2832 = add i64 %2831, -12
  %2833 = add i64 %2830, 7
  store i64 %2833, i64* %3, align 8
  %2834 = inttoptr i64 %2832 to i32*
  %2835 = load i32, i32* %2834, align 4
  %2836 = add i32 %2835, -400
  %2837 = icmp ult i32 %2835, 400
  %2838 = zext i1 %2837 to i8
  store i8 %2838, i8* %14, align 1
  %2839 = and i32 %2836, 255
  %2840 = tail call i32 @llvm.ctpop.i32(i32 %2839)
  %2841 = trunc i32 %2840 to i8
  %2842 = and i8 %2841, 1
  %2843 = xor i8 %2842, 1
  store i8 %2843, i8* %21, align 1
  %2844 = xor i32 %2835, 16
  %2845 = xor i32 %2844, %2836
  %2846 = lshr i32 %2845, 4
  %2847 = trunc i32 %2846 to i8
  %2848 = and i8 %2847, 1
  store i8 %2848, i8* %27, align 1
  %2849 = icmp eq i32 %2836, 0
  %2850 = zext i1 %2849 to i8
  store i8 %2850, i8* %30, align 1
  %2851 = lshr i32 %2836, 31
  %2852 = trunc i32 %2851 to i8
  store i8 %2852, i8* %33, align 1
  %2853 = lshr i32 %2835, 31
  %2854 = xor i32 %2851, %2853
  %2855 = add nuw nsw i32 %2854, %2853
  %2856 = icmp eq i32 %2855, 2
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %39, align 1
  %2858 = icmp ne i8 %2852, 0
  %2859 = xor i1 %2858, %2856
  %.v123 = select i1 %2859, i64 13, i64 371
  %2860 = add i64 %2830, %.v123
  store i64 %2860, i64* %3, align 8
  br i1 %2859, label %block_42a593, label %block_.L_42a6f9

block_42a593:                                     ; preds = %block_.L_42a586
  %2861 = add i64 %2860, 4
  store i64 %2861, i64* %3, align 8
  %2862 = load i32, i32* %2834, align 4
  %2863 = sext i32 %2862 to i64
  store i64 %2863, i64* %RAX.i491, align 8
  %2864 = add nsw i64 %2863, 12099168
  %2865 = add i64 %2860, 12
  store i64 %2865, i64* %3, align 8
  %2866 = inttoptr i64 %2864 to i8*
  %2867 = load i8, i8* %2866, align 1
  %2868 = zext i8 %2867 to i64
  store i64 %2868, i64* %RCX.i526, align 8
  %2869 = zext i8 %2867 to i32
  %2870 = add nsw i32 %2869, -3
  %2871 = icmp ult i8 %2867, 3
  %2872 = zext i1 %2871 to i8
  store i8 %2872, i8* %14, align 1
  %2873 = and i32 %2870, 255
  %2874 = tail call i32 @llvm.ctpop.i32(i32 %2873)
  %2875 = trunc i32 %2874 to i8
  %2876 = and i8 %2875, 1
  %2877 = xor i8 %2876, 1
  store i8 %2877, i8* %21, align 1
  %2878 = xor i32 %2870, %2869
  %2879 = lshr i32 %2878, 4
  %2880 = trunc i32 %2879 to i8
  %2881 = and i8 %2880, 1
  store i8 %2881, i8* %27, align 1
  %2882 = icmp eq i32 %2870, 0
  %2883 = zext i1 %2882 to i8
  store i8 %2883, i8* %30, align 1
  %2884 = lshr i32 %2870, 31
  %2885 = trunc i32 %2884 to i8
  store i8 %2885, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v124 = select i1 %2882, i64 339, i64 21
  %2886 = add i64 %2860, %.v124
  store i64 %2886, i64* %3, align 8
  br i1 %2882, label %block_.L_42a6e6, label %block_42a5a8

block_42a5a8:                                     ; preds = %block_42a593
  %2887 = add i64 %2831, -8
  %2888 = add i64 %2886, 4
  store i64 %2888, i64* %3, align 8
  %2889 = inttoptr i64 %2887 to i64*
  %2890 = load i64, i64* %2889, align 8
  store i64 %2890, i64* %RAX.i491, align 8
  %2891 = add i64 %2886, 8
  store i64 %2891, i64* %3, align 8
  %2892 = load i32, i32* %2834, align 4
  %2893 = sext i32 %2892 to i64
  store i64 %2893, i64* %RCX.i526, align 8
  %2894 = add i64 %2890, %2893
  %2895 = add i64 %2886, 12
  store i64 %2895, i64* %3, align 8
  %2896 = inttoptr i64 %2894 to i8*
  %2897 = load i8, i8* %2896, align 1
  store i8 0, i8* %14, align 1
  %2898 = zext i8 %2897 to i32
  %2899 = tail call i32 @llvm.ctpop.i32(i32 %2898)
  %2900 = trunc i32 %2899 to i8
  %2901 = and i8 %2900, 1
  %2902 = xor i8 %2901, 1
  store i8 %2902, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2903 = icmp eq i8 %2897, 0
  %2904 = zext i1 %2903 to i8
  store i8 %2904, i8* %30, align 1
  %2905 = lshr i8 %2897, 7
  store i8 %2905, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v125 = select i1 %2903, i64 18, i64 313
  %2906 = add i64 %2886, %.v125
  store i64 %2906, i64* %3, align 8
  br i1 %2903, label %block_42a5ba, label %block_.L_42a6e1

block_42a5ba:                                     ; preds = %block_42a5a8
  store <4 x i32> zeroinitializer, <4 x i32>* %2826, align 1
  %2907 = add i64 %2906, 7
  store i64 %2907, i64* %3, align 8
  %2908 = load i64, i64* %2889, align 8
  store i64 %2908, i64* %RAX.i491, align 8
  %2909 = add i64 %2906, 11
  store i64 %2909, i64* %3, align 8
  %2910 = load i32, i32* %2834, align 4
  %2911 = sext i32 %2910 to i64
  store i64 %2911, i64* %RCX.i526, align 8
  %2912 = shl nsw i64 %2911, 2
  %2913 = add i64 %2908, 31016
  %2914 = add i64 %2913, %2912
  %2915 = add i64 %2906, 20
  store i64 %2915, i64* %3, align 8
  %2916 = inttoptr i64 %2914 to float*
  %2917 = load float, float* %2916, align 4
  %2918 = fpext float %2917 to double
  store double %2918, double* %1552, align 1
  %2919 = add i64 %2906, 24
  store i64 %2919, i64* %3, align 8
  %2920 = load double, double* %1553, align 1
  %2921 = fcmp uno double %2918, %2920
  br i1 %2921, label %2922, label %2932

; <label>:2922:                                   ; preds = %block_42a5ba
  %2923 = fadd double %2918, %2920
  %2924 = bitcast double %2923 to i64
  %2925 = and i64 %2924, 9221120237041090560
  %2926 = icmp eq i64 %2925, 9218868437227405312
  %2927 = and i64 %2924, 2251799813685247
  %2928 = icmp ne i64 %2927, 0
  %2929 = and i1 %2926, %2928
  br i1 %2929, label %2930, label %2938

; <label>:2930:                                   ; preds = %2922
  %2931 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2919, %struct.Memory* %MEMORY.27)
  %.pre49 = load i64, i64* %3, align 8
  %.pre50 = load i8, i8* %14, align 1
  %.pre51 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:2932:                                   ; preds = %block_42a5ba
  %2933 = fcmp ogt double %2918, %2920
  br i1 %2933, label %2938, label %2934

; <label>:2934:                                   ; preds = %2932
  %2935 = fcmp olt double %2918, %2920
  br i1 %2935, label %2938, label %2936

; <label>:2936:                                   ; preds = %2934
  %2937 = fcmp oeq double %2918, %2920
  br i1 %2937, label %2938, label %2942

; <label>:2938:                                   ; preds = %2936, %2934, %2932, %2922
  %2939 = phi i8 [ 0, %2932 ], [ 0, %2934 ], [ 1, %2936 ], [ 1, %2922 ]
  %2940 = phi i8 [ 0, %2932 ], [ 0, %2934 ], [ 0, %2936 ], [ 1, %2922 ]
  %2941 = phi i8 [ 0, %2932 ], [ 1, %2934 ], [ 0, %2936 ], [ 1, %2922 ]
  store i8 %2939, i8* %30, align 1
  store i8 %2940, i8* %21, align 1
  store i8 %2941, i8* %14, align 1
  br label %2942

; <label>:2942:                                   ; preds = %2938, %2936
  %2943 = phi i8 [ %2939, %2938 ], [ %2904, %2936 ]
  %2944 = phi i8 [ %2941, %2938 ], [ 0, %2936 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %2942, %2930
  %2945 = phi i8 [ %.pre51, %2930 ], [ %2943, %2942 ]
  %2946 = phi i8 [ %.pre50, %2930 ], [ %2944, %2942 ]
  %2947 = phi i64 [ %.pre49, %2930 ], [ %2919, %2942 ]
  %2948 = phi %struct.Memory* [ %2931, %2930 ], [ %MEMORY.27, %2942 ]
  %2949 = or i8 %2945, %2946
  %2950 = icmp ne i8 %2949, 0
  %.v126 = select i1 %2950, i64 53, i64 6
  %2951 = add i64 %2947, %.v126
  store i64 %2951, i64* %3, align 8
  br i1 %2950, label %block_.L_42a607, label %block_42a5d8

block_42a5d8:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %2952 = load i64, i64* %RBP.i, align 8
  %2953 = add i64 %2952, -8
  %2954 = add i64 %2951, 4
  store i64 %2954, i64* %3, align 8
  %2955 = inttoptr i64 %2953 to i64*
  %2956 = load i64, i64* %2955, align 8
  store i64 %2956, i64* %RAX.i491, align 8
  %2957 = add i64 %2952, -12
  %2958 = add i64 %2951, 8
  store i64 %2958, i64* %3, align 8
  %2959 = inttoptr i64 %2957 to i32*
  %2960 = load i32, i32* %2959, align 4
  %2961 = sext i32 %2960 to i64
  store i64 %2961, i64* %RCX.i526, align 8
  %2962 = shl nsw i64 %2961, 2
  %2963 = add i64 %2956, 32616
  %2964 = add i64 %2963, %2962
  %2965 = add i64 %2951, 15
  store i64 %2965, i64* %3, align 8
  %2966 = inttoptr i64 %2964 to i32*
  %2967 = load i32, i32* %2966, align 4
  %2968 = and i32 %2967, 1
  %2969 = zext i32 %2968 to i64
  store i64 %2969, i64* %RDX.i1190, align 8
  store i8 0, i8* %14, align 1
  %2970 = tail call i32 @llvm.ctpop.i32(i32 %2968)
  %2971 = trunc i32 %2970 to i8
  %2972 = xor i8 %2971, 1
  store i8 %2972, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2973 = icmp eq i32 %2968, 0
  %2974 = trunc i32 %2968 to i8
  %2975 = xor i8 %2974, 1
  store i8 %2975, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v127 = select i1 %2973, i64 47, i64 27
  %2976 = add i64 %2951, %.v127
  store i64 %2976, i64* %3, align 8
  br i1 %2973, label %block_.L_42a607, label %block_42a5f3

block_42a5f3:                                     ; preds = %block_42a5d8
  store <4 x i32> zeroinitializer, <4 x i32>* %2829, align 1
  %2977 = add i64 %2976, 7
  store i64 %2977, i64* %3, align 8
  %2978 = load i64, i64* %2955, align 8
  store i64 %2978, i64* %RAX.i491, align 8
  %2979 = add i64 %2976, 11
  store i64 %2979, i64* %3, align 8
  %2980 = load i32, i32* %2959, align 4
  %2981 = sext i32 %2980 to i64
  store i64 %2981, i64* %RCX.i526, align 8
  %2982 = shl nsw i64 %2981, 2
  %2983 = add i64 %2978, 31016
  %2984 = add i64 %2983, %2982
  %2985 = add i64 %2976, 20
  store i64 %2985, i64* %3, align 8
  %2986 = load <2 x float>, <2 x float>* %60, align 1
  %2987 = extractelement <2 x float> %2986, i32 0
  %2988 = inttoptr i64 %2984 to float*
  store float %2987, float* %2988, align 4
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_42a607

block_.L_42a607:                                  ; preds = %block_42a5f3, %block_42a5d8, %routine_ucomisd__xmm0___xmm1.exit
  %2989 = phi i64 [ %.pre52, %block_42a5f3 ], [ %2976, %block_42a5d8 ], [ %2951, %routine_ucomisd__xmm0___xmm1.exit ]
  store <4 x i32> zeroinitializer, <4 x i32>* %2827, align 1
  %2990 = load i64, i64* %RBP.i, align 8
  %2991 = add i64 %2990, -8
  %2992 = add i64 %2989, 7
  store i64 %2992, i64* %3, align 8
  %2993 = inttoptr i64 %2991 to i64*
  %2994 = load i64, i64* %2993, align 8
  store i64 %2994, i64* %RAX.i491, align 8
  %2995 = add i64 %2990, -12
  %2996 = add i64 %2989, 11
  store i64 %2996, i64* %3, align 8
  %2997 = inttoptr i64 %2995 to i32*
  %2998 = load i32, i32* %2997, align 4
  %2999 = sext i32 %2998 to i64
  store i64 %2999, i64* %RCX.i526, align 8
  %3000 = shl nsw i64 %2999, 2
  %3001 = add i64 %2994, 31016
  %3002 = add i64 %3001, %3000
  %3003 = add i64 %2989, 20
  store i64 %3003, i64* %3, align 8
  %3004 = inttoptr i64 %3002 to float*
  %3005 = load float, float* %3004, align 4
  %3006 = fpext float %3005 to double
  store double %3006, double* %1552, align 1
  %3007 = add i64 %2989, 24
  store i64 %3007, i64* %3, align 8
  %3008 = load double, double* %1553, align 1
  %3009 = fcmp uno double %3008, %3006
  br i1 %3009, label %3010, label %3020

; <label>:3010:                                   ; preds = %block_.L_42a607
  %3011 = fadd double %3006, %3008
  %3012 = bitcast double %3011 to i64
  %3013 = and i64 %3012, 9221120237041090560
  %3014 = icmp eq i64 %3013, 9218868437227405312
  %3015 = and i64 %3012, 2251799813685247
  %3016 = icmp ne i64 %3015, 0
  %3017 = and i1 %3014, %3016
  br i1 %3017, label %3018, label %3026

; <label>:3018:                                   ; preds = %3010
  %3019 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3007, %struct.Memory* %2948)
  %.pre53 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:3020:                                   ; preds = %block_.L_42a607
  %3021 = fcmp ogt double %3008, %3006
  br i1 %3021, label %3026, label %3022

; <label>:3022:                                   ; preds = %3020
  %3023 = fcmp olt double %3008, %3006
  br i1 %3023, label %3026, label %3024

; <label>:3024:                                   ; preds = %3022
  %3025 = fcmp oeq double %3008, %3006
  br i1 %3025, label %3026, label %3030

; <label>:3026:                                   ; preds = %3024, %3022, %3020, %3010
  %3027 = phi i8 [ 0, %3020 ], [ 0, %3022 ], [ 1, %3024 ], [ 1, %3010 ]
  %3028 = phi i8 [ 0, %3020 ], [ 0, %3022 ], [ 0, %3024 ], [ 1, %3010 ]
  %3029 = phi i8 [ 0, %3020 ], [ 1, %3022 ], [ 0, %3024 ], [ 1, %3010 ]
  store i8 %3027, i8* %30, align 1
  store i8 %3028, i8* %21, align 1
  store i8 %3029, i8* %14, align 1
  br label %3030

; <label>:3030:                                   ; preds = %3026, %3024
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %3030, %3018
  %3031 = phi i64 [ %.pre53, %3018 ], [ %3007, %3030 ]
  %3032 = phi %struct.Memory* [ %3019, %3018 ], [ %2948, %3030 ]
  %3033 = add i64 %3031, 53
  %3034 = add i64 %3031, 6
  %3035 = load i8, i8* %14, align 1
  %3036 = load i8, i8* %30, align 1
  %3037 = or i8 %3036, %3035
  %3038 = icmp ne i8 %3037, 0
  %3039 = select i1 %3038, i64 %3033, i64 %3034
  store i64 %3039, i64* %3, align 8
  br i1 %3038, label %block_.L_42a654, label %block_42a625

block_42a625:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %3040 = load i64, i64* %RBP.i, align 8
  %3041 = add i64 %3040, -8
  %3042 = add i64 %3039, 4
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3041 to i64*
  %3044 = load i64, i64* %3043, align 8
  store i64 %3044, i64* %RAX.i491, align 8
  %3045 = add i64 %3040, -12
  %3046 = add i64 %3039, 8
  store i64 %3046, i64* %3, align 8
  %3047 = inttoptr i64 %3045 to i32*
  %3048 = load i32, i32* %3047, align 4
  %3049 = sext i32 %3048 to i64
  store i64 %3049, i64* %RCX.i526, align 8
  %3050 = shl nsw i64 %3049, 2
  %3051 = add i64 %3044, 32616
  %3052 = add i64 %3051, %3050
  %3053 = add i64 %3039, 15
  store i64 %3053, i64* %3, align 8
  %3054 = inttoptr i64 %3052 to i32*
  %3055 = load i32, i32* %3054, align 4
  %3056 = and i32 %3055, 2
  %3057 = zext i32 %3056 to i64
  store i64 %3057, i64* %RDX.i1190, align 8
  store i8 0, i8* %14, align 1
  %3058 = tail call i32 @llvm.ctpop.i32(i32 %3056)
  %3059 = trunc i32 %3058 to i8
  %3060 = xor i8 %3059, 1
  store i8 %3060, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3061 = icmp eq i32 %3056, 0
  %.lobit120 = lshr exact i32 %3056, 1
  %3062 = trunc i32 %.lobit120 to i8
  %3063 = xor i8 %3062, 1
  store i8 %3063, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v128 = select i1 %3061, i64 47, i64 27
  %3064 = add i64 %3039, %.v128
  store i64 %3064, i64* %3, align 8
  br i1 %3061, label %block_.L_42a654, label %block_42a640

block_42a640:                                     ; preds = %block_42a625
  store <4 x i32> zeroinitializer, <4 x i32>* %2828, align 1
  %3065 = add i64 %3064, 7
  store i64 %3065, i64* %3, align 8
  %3066 = load i64, i64* %3043, align 8
  store i64 %3066, i64* %RAX.i491, align 8
  %3067 = add i64 %3064, 11
  store i64 %3067, i64* %3, align 8
  %3068 = load i32, i32* %3047, align 4
  %3069 = sext i32 %3068 to i64
  store i64 %3069, i64* %RCX.i526, align 8
  %3070 = shl nsw i64 %3069, 2
  %3071 = add i64 %3066, 31016
  %3072 = add i64 %3071, %3070
  %3073 = add i64 %3064, 20
  store i64 %3073, i64* %3, align 8
  %3074 = load <2 x float>, <2 x float>* %60, align 1
  %3075 = extractelement <2 x float> %3074, i32 0
  %3076 = inttoptr i64 %3072 to float*
  store float %3075, float* %3076, align 4
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_42a654

block_.L_42a654:                                  ; preds = %block_42a640, %block_42a625, %routine_ucomisd__xmm1___xmm0.exit
  %3077 = phi i64 [ %.pre54, %block_42a640 ], [ %3064, %block_42a625 ], [ %3033, %routine_ucomisd__xmm1___xmm0.exit ]
  %3078 = load i64, i64* %RBP.i, align 8
  %3079 = add i64 %3078, -12
  %3080 = add i64 %3077, 4
  store i64 %3080, i64* %3, align 8
  %3081 = inttoptr i64 %3079 to i32*
  %3082 = load i32, i32* %3081, align 4
  %3083 = sext i32 %3082 to i64
  store i64 %3083, i64* %RAX.i491, align 8
  %3084 = add nsw i64 %3083, 12099168
  %3085 = add i64 %3077, 12
  store i64 %3085, i64* %3, align 8
  %3086 = inttoptr i64 %3084 to i8*
  %3087 = load i8, i8* %3086, align 1
  %3088 = zext i8 %3087 to i64
  store i64 %3088, i64* %RCX.i526, align 8
  %3089 = zext i8 %3087 to i32
  %3090 = add nsw i32 %3089, -2
  %3091 = icmp ult i8 %3087, 2
  %3092 = zext i1 %3091 to i8
  store i8 %3092, i8* %14, align 1
  %3093 = and i32 %3090, 255
  %3094 = tail call i32 @llvm.ctpop.i32(i32 %3093)
  %3095 = trunc i32 %3094 to i8
  %3096 = and i8 %3095, 1
  %3097 = xor i8 %3096, 1
  store i8 %3097, i8* %21, align 1
  %3098 = xor i32 %3090, %3089
  %3099 = lshr i32 %3098, 4
  %3100 = trunc i32 %3099 to i8
  %3101 = and i8 %3100, 1
  store i8 %3101, i8* %27, align 1
  %3102 = icmp eq i32 %3090, 0
  %3103 = zext i1 %3102 to i8
  store i8 %3103, i8* %30, align 1
  %3104 = lshr i32 %3090, 31
  %3105 = trunc i32 %3104 to i8
  store i8 %3105, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v129 = select i1 %3102, i64 21, i64 68
  %3106 = add i64 %3077, %.v129
  store i64 %3106, i64* %3, align 8
  br i1 %3102, label %block_42a669, label %block_.L_42a698

block_42a669:                                     ; preds = %block_.L_42a654
  %3107 = add i64 %3106, ptrtoint (%G_0xb88ef__rip__type* @G_0xb88ef__rip_ to i64)
  %3108 = add i64 %3106, 8
  store i64 %3108, i64* %3, align 8
  %3109 = inttoptr i64 %3107 to i64*
  %3110 = load i64, i64* %3109, align 8
  store i64 %3110, i64* %1554, align 1
  store double 0.000000e+00, double* %1555, align 1
  %3111 = add i64 %3078, -8
  %3112 = add i64 %3106, 12
  store i64 %3112, i64* %3, align 8
  %3113 = inttoptr i64 %3111 to i64*
  %3114 = load i64, i64* %3113, align 8
  store i64 %3114, i64* %RAX.i491, align 8
  %3115 = add i64 %3106, 16
  store i64 %3115, i64* %3, align 8
  %3116 = load i32, i32* %3081, align 4
  %3117 = sext i32 %3116 to i64
  store i64 %3117, i64* %RCX.i526, align 8
  %3118 = shl nsw i64 %3117, 2
  %3119 = add i64 %3114, 31016
  %3120 = add i64 %3119, %3118
  %3121 = add i64 %3106, 25
  store i64 %3121, i64* %3, align 8
  %3122 = inttoptr i64 %3120 to float*
  %3123 = load float, float* %3122, align 4
  %3124 = fpext float %3123 to double
  %3125 = bitcast i64 %3110 to double
  %3126 = fadd double %3124, %3125
  store double %3126, double* %1552, align 1
  %.cast = bitcast i64 %3110 to <2 x i32>
  %3127 = fptrunc double %3126 to float
  store float %3127, float* %79, align 1
  %3128 = extractelement <2 x i32> %.cast, i32 1
  store i32 %3128, i32* %56, align 1
  store i32 0, i32* %57, align 1
  store i32 0, i32* %59, align 1
  %3129 = add i64 %3106, 42
  store i64 %3129, i64* %3, align 8
  %3130 = load <2 x float>, <2 x float>* %60, align 1
  %3131 = extractelement <2 x float> %3130, i32 0
  store float %3131, float* %3122, align 4
  %3132 = load i64, i64* %3, align 8
  %3133 = add i64 %3132, 73
  br label %block_.L_42a6dc

block_.L_42a698:                                  ; preds = %block_.L_42a654
  %3134 = add i64 %3106, 4
  store i64 %3134, i64* %3, align 8
  %3135 = load i32, i32* %3081, align 4
  %3136 = sext i32 %3135 to i64
  store i64 %3136, i64* %RAX.i491, align 8
  %3137 = add nsw i64 %3136, 12099168
  %3138 = add i64 %3106, 12
  store i64 %3138, i64* %3, align 8
  %3139 = inttoptr i64 %3137 to i8*
  %3140 = load i8, i8* %3139, align 1
  %3141 = zext i8 %3140 to i64
  store i64 %3141, i64* %RCX.i526, align 8
  %3142 = zext i8 %3140 to i32
  %3143 = add nsw i32 %3142, -1
  %3144 = icmp eq i8 %3140, 0
  %3145 = zext i1 %3144 to i8
  store i8 %3145, i8* %14, align 1
  %3146 = and i32 %3143, 255
  %3147 = tail call i32 @llvm.ctpop.i32(i32 %3146)
  %3148 = trunc i32 %3147 to i8
  %3149 = and i8 %3148, 1
  %3150 = xor i8 %3149, 1
  store i8 %3150, i8* %21, align 1
  %3151 = xor i32 %3143, %3142
  %3152 = lshr i32 %3151, 4
  %3153 = trunc i32 %3152 to i8
  %3154 = and i8 %3153, 1
  store i8 %3154, i8* %27, align 1
  %3155 = icmp eq i32 %3143, 0
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %30, align 1
  %3157 = lshr i32 %3143, 31
  %3158 = trunc i32 %3157 to i8
  store i8 %3158, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v130 = select i1 %3155, i64 21, i64 63
  %3159 = add i64 %3106, %.v130
  store i64 %3159, i64* %3, align 8
  br i1 %3155, label %block_42a6ad, label %block_.L_42a6d7

block_42a6ad:                                     ; preds = %block_.L_42a698
  %3160 = add i64 %3159, ptrtoint (%G_0xb88ab__rip__type* @G_0xb88ab__rip_ to i64)
  %3161 = add i64 %3159, 8
  store i64 %3161, i64* %3, align 8
  %3162 = inttoptr i64 %3160 to i64*
  %3163 = load i64, i64* %3162, align 8
  store i64 %3163, i64* %1554, align 1
  store double 0.000000e+00, double* %1555, align 1
  %3164 = add i64 %3078, -8
  %3165 = add i64 %3159, 12
  store i64 %3165, i64* %3, align 8
  %3166 = inttoptr i64 %3164 to i64*
  %3167 = load i64, i64* %3166, align 8
  store i64 %3167, i64* %RAX.i491, align 8
  %3168 = add i64 %3159, 16
  store i64 %3168, i64* %3, align 8
  %3169 = load i32, i32* %3081, align 4
  %3170 = sext i32 %3169 to i64
  store i64 %3170, i64* %RCX.i526, align 8
  %3171 = shl nsw i64 %3170, 2
  %3172 = add i64 %3167, 31016
  %3173 = add i64 %3172, %3171
  %3174 = add i64 %3159, 25
  store i64 %3174, i64* %3, align 8
  %3175 = inttoptr i64 %3173 to float*
  %3176 = load float, float* %3175, align 4
  %3177 = fpext float %3176 to double
  %3178 = bitcast i64 %3163 to double
  %3179 = fsub double %3177, %3178
  store double %3179, double* %1552, align 1
  %.cast43 = bitcast i64 %3163 to <2 x i32>
  %3180 = fptrunc double %3179 to float
  store float %3180, float* %79, align 1
  %3181 = extractelement <2 x i32> %.cast43, i32 1
  store i32 %3181, i32* %56, align 1
  store i32 0, i32* %57, align 1
  store i32 0, i32* %59, align 1
  %3182 = add i64 %3159, 42
  store i64 %3182, i64* %3, align 8
  %3183 = load <2 x float>, <2 x float>* %60, align 1
  %3184 = extractelement <2 x float> %3183, i32 0
  store float %3184, float* %3175, align 4
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_42a6d7

block_.L_42a6d7:                                  ; preds = %block_.L_42a698, %block_42a6ad
  %3185 = phi i64 [ %.pre55, %block_42a6ad ], [ %3159, %block_.L_42a698 ]
  %3186 = add i64 %3185, 5
  store i64 %3186, i64* %3, align 8
  br label %block_.L_42a6dc

block_.L_42a6dc:                                  ; preds = %block_.L_42a6d7, %block_42a669
  %storemerge39 = phi i64 [ %3133, %block_42a669 ], [ %3186, %block_.L_42a6d7 ]
  %3187 = add i64 %storemerge39, 5
  store i64 %3187, i64* %3, align 8
  %.pre56.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_42a6e1

block_.L_42a6e1:                                  ; preds = %block_42a5a8, %block_.L_42a6dc
  %.pre56 = phi i64 [ %2831, %block_42a5a8 ], [ %.pre56.pre, %block_.L_42a6dc ]
  %3188 = phi i64 [ %2906, %block_42a5a8 ], [ %3187, %block_.L_42a6dc ]
  %MEMORY.32 = phi %struct.Memory* [ %MEMORY.27, %block_42a5a8 ], [ %3032, %block_.L_42a6dc ]
  %3189 = add i64 %3188, 5
  store i64 %3189, i64* %3, align 8
  br label %block_.L_42a6e6

block_.L_42a6e6:                                  ; preds = %block_.L_42a6e1, %block_42a593
  %3190 = phi i64 [ %2831, %block_42a593 ], [ %.pre56, %block_.L_42a6e1 ]
  %3191 = phi i64 [ %2886, %block_42a593 ], [ %3189, %block_.L_42a6e1 ]
  %MEMORY.33 = phi %struct.Memory* [ %MEMORY.27, %block_42a593 ], [ %MEMORY.32, %block_.L_42a6e1 ]
  %3192 = add i64 %3190, -12
  %3193 = add i64 %3191, 8
  store i64 %3193, i64* %3, align 8
  %3194 = inttoptr i64 %3192 to i32*
  %3195 = load i32, i32* %3194, align 4
  %3196 = add i32 %3195, 1
  %3197 = zext i32 %3196 to i64
  store i64 %3197, i64* %RAX.i491, align 8
  %3198 = icmp eq i32 %3195, -1
  %3199 = icmp eq i32 %3196, 0
  %3200 = or i1 %3198, %3199
  %3201 = zext i1 %3200 to i8
  store i8 %3201, i8* %14, align 1
  %3202 = and i32 %3196, 255
  %3203 = tail call i32 @llvm.ctpop.i32(i32 %3202)
  %3204 = trunc i32 %3203 to i8
  %3205 = and i8 %3204, 1
  %3206 = xor i8 %3205, 1
  store i8 %3206, i8* %21, align 1
  %3207 = xor i32 %3196, %3195
  %3208 = lshr i32 %3207, 4
  %3209 = trunc i32 %3208 to i8
  %3210 = and i8 %3209, 1
  store i8 %3210, i8* %27, align 1
  %3211 = zext i1 %3199 to i8
  store i8 %3211, i8* %30, align 1
  %3212 = lshr i32 %3196, 31
  %3213 = trunc i32 %3212 to i8
  store i8 %3213, i8* %33, align 1
  %3214 = lshr i32 %3195, 31
  %3215 = xor i32 %3212, %3214
  %3216 = add nuw nsw i32 %3215, %3212
  %3217 = icmp eq i32 %3216, 2
  %3218 = zext i1 %3217 to i8
  store i8 %3218, i8* %39, align 1
  %3219 = add i64 %3191, 14
  store i64 %3219, i64* %3, align 8
  store i32 %3196, i32* %3194, align 4
  %3220 = load i64, i64* %3, align 8
  %3221 = add i64 %3220, -366
  store i64 %3221, i64* %3, align 8
  br label %block_.L_42a586

block_.L_42a6f9:                                  ; preds = %block_.L_42a586
  %3222 = load i64, i64* %6, align 8
  %3223 = add i64 %3222, 1744
  store i64 %3223, i64* %6, align 8
  %3224 = icmp ugt i64 %3222, -1745
  %3225 = zext i1 %3224 to i8
  store i8 %3225, i8* %14, align 1
  %3226 = trunc i64 %3223 to i32
  %3227 = and i32 %3226, 255
  %3228 = tail call i32 @llvm.ctpop.i32(i32 %3227)
  %3229 = trunc i32 %3228 to i8
  %3230 = and i8 %3229, 1
  %3231 = xor i8 %3230, 1
  store i8 %3231, i8* %21, align 1
  %3232 = xor i64 %3222, 16
  %3233 = xor i64 %3232, %3223
  %3234 = lshr i64 %3233, 4
  %3235 = trunc i64 %3234 to i8
  %3236 = and i8 %3235, 1
  store i8 %3236, i8* %27, align 1
  %3237 = icmp eq i64 %3223, 0
  %3238 = zext i1 %3237 to i8
  store i8 %3238, i8* %30, align 1
  %3239 = lshr i64 %3223, 63
  %3240 = trunc i64 %3239 to i8
  store i8 %3240, i8* %33, align 1
  %3241 = lshr i64 %3222, 63
  %3242 = xor i64 %3239, %3241
  %3243 = add nuw nsw i64 %3242, %3239
  %3244 = icmp eq i64 %3243, 2
  %3245 = zext i1 %3244 to i8
  store i8 %3245, i8* %39, align 1
  %3246 = add i64 %2860, 8
  store i64 %3246, i64* %3, align 8
  %3247 = add i64 %3222, 1752
  %3248 = inttoptr i64 %3223 to i64*
  %3249 = load i64, i64* %3248, align 8
  store i64 %3249, i64* %RBP.i, align 8
  store i64 %3247, i64* %6, align 8
  %3250 = add i64 %2860, 9
  store i64 %3250, i64* %3, align 8
  %3251 = inttoptr i64 %3247 to i64*
  %3252 = load i64, i64* %3251, align 8
  store i64 %3252, i64* %3, align 8
  %3253 = add i64 %3222, 1760
  store i64 %3253, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0x6d0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1744
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1744
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
define %struct.Memory* @routine_movl__0x15__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jge_.L_42a172(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_je_.L_42a15f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x660__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1632
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_cmpb__0x0____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = zext i8 %9 to i32
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i8 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i8 %9, 7
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42a141(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x66c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1644
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
define %struct.Memory* @routine_movss_0x190__rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 400
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_0x7d0__rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 2000
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to float*
  %18 = load float, float* %17, align 4
  %19 = extractelement <2 x float> %13, i32 0
  %20 = fadd float %19, %18
  %21 = bitcast %union.VectorReg* %3 to float*
  store float %20, float* %21, align 1
  %22 = bitcast <2 x float> %13 to <2 x i32>
  %23 = extractelement <2 x i32> %22, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 0
  %27 = bitcast i64* %14 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %4, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
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
define %struct.Memory* @routine_jbe_.L_429df0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x190__rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 400
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss_0x7d0__rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 2000
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to float*
  %18 = load float, float* %17, align 4
  %19 = extractelement <2 x float> %13, i32 0
  %20 = fsub float %19, %18
  %21 = bitcast %union.VectorReg* %3 to float*
  store float %20, float* %21, align 1
  %22 = bitcast <2 x float> %13 to <2 x i32>
  %23 = extractelement <2 x i32> %22, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 0
  %27 = bitcast i64* %14 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %4, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
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
define %struct.Memory* @routine_movl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x66c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1644
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
define %struct.Memory* @routine_mulss_MINUS0x66c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1644
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x660__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1632
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x678__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1656
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x678__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1656
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
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
define %struct.Memory* @routine_movl_0x7ae438___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_movl__eax__MINUS0x67c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1660
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x67c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1660
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_jge_.L_429e85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl__eax__MINUS0x680__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1664
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x680__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1664
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x684__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1668
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429eb3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x688__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1672
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x688__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1672
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
define %struct.Memory* @routine_subl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x684__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1668
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x684__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1668
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_subl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_0x7ae438___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__edi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x68c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1676
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x68c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1676
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_429f1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x690__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1680
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x690__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1680
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x694__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1684
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429f4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x698__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1688
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x698__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1688
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
define %struct.Memory* @routine_subl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x694__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1684
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x694__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1684
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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
define %struct.Memory* @routine_jle_.L_429f94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jge_.L_429f7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x69c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1692
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429f86(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x69c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1692
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429fc4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_429fb2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x6a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1696
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429fbb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6a0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1696
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_429fde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x6a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1700
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429fe7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6a4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1700
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xb913f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xb913f__rip__type* @G_0xb913f__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2ssl__eax___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x10__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %17 = fadd float %15, %16
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
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x14__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movss_0x7d0__rcx__rdx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 2000
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x190__rcx__rdx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 400
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42a05d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x6a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1704
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
define %struct.Memory* @routine_jmpq_.L_42a076(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x7d0__rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 2000
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x6a8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1704
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
define %struct.Memory* @routine_movq__0x7ae468___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x7ae468_type* @G__0x7ae468 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x6ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1708
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
define %struct.Memory* @routine_callq_.gg_interpolate(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x7ae4c8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x7ae4c8_type* @G__0x7ae4c8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x6ac__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1708
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x664__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1636
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
define %struct.Memory* @routine_movss_MINUS0x664__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1636
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_mulss_MINUS0x660__rbp__rdi_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RDI, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -1632
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to float*
  %18 = load float, float* %17, align 4
  %19 = extractelement <2 x float> %13, i32 0
  %20 = fmul float %19, %18
  %21 = bitcast %union.VectorReg* %3 to float*
  store float %20, float* %21, align 1
  %22 = bitcast <2 x float> %13 to <2 x i32>
  %23 = extractelement <2 x i32> %22, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 0
  %27 = bitcast i64* %14 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %4, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x660__rbp__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1632
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rdi_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
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
define %struct.Memory* @routine_jne_.L_42a10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xb9011__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xb9011__rip__type* @G_0xb9011__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_42a13c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_42a137(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xb8fda__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xb8fda__rip__type* @G_0xb8fda__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_42a141(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x660__rbp__rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -1632
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x7928__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 31016
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a164(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429d26(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42a57f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42a56c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42a567(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x668__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1640
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x668__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1640
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_42a562(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x668__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1640
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
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
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jne_.L_42a1ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42a54e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x7928__rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 31016
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to float*
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = bitcast %union.VectorReg* %3 to double*
  store double %13, double* %14, align 1
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
define %struct.Memory* @routine_jbe_.L_42a3b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x668__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1640
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x7ae1b0___rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RCX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
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
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0____rax__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = zext i8 %9 to i32
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i8 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i8 %9, 7
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42a3b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xb8d2a__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xb8d2a__rip__type* @G_0xb8d2a__rip_ to i64)
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
define %struct.Memory* @routine_movss_0x2d50__rax__rdx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 11600
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x668__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1640
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x7ae1b0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RCX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
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
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x660__rbp__rax_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -1632
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to float*
  %18 = load float, float* %17, align 4
  %19 = extractelement <2 x float> %13, i32 0
  %20 = fmul float %19, %18
  %21 = bitcast %union.VectorReg* %3 to float*
  store float %20, float* %21, align 1
  %22 = bitcast <2 x float> %13 to <2 x i32>
  %23 = extractelement <2 x i32> %22, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 0
  %27 = bitcast i64* %14 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %4, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
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
define %struct.Memory* @routine_cvtss2sd_0x2d50__rax__rdx_4____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 11600
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to float*
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = bitcast %union.VectorReg* %3 to double*
  store double %13, double* %14, align 1
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x660__rbp__rax_4____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1632
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to float*
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = bitcast %union.VectorReg* %3 to double*
  store double %13, double* %14, align 1
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x670__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1648
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
define %struct.Memory* @routine_movss_0x7928__rax__rdx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 31016
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x670__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1648
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
define %struct.Memory* @routine_jbe_.L_42a2fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x7928__rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 31016
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x6b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1712
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
define %struct.Memory* @routine_jmpq_.L_42a30e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x670__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1648
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
define %struct.Memory* @routine_movss_MINUS0x6b0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1712
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

define %struct.Memory* @routine_ucomiss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = extractelement <2 x float> %8, i32 0
  %10 = bitcast %union.VectorReg* %4 to <2 x float>*
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
define %struct.Memory* @routine_jbe_.L_42a387(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jbe_.L_42a362(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x6b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1716
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
define %struct.Memory* @routine_jmpq_.L_42a372(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x6b4__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1716
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x6b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1720
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
define %struct.Memory* @routine_jmpq_.L_42a397(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x6b8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1720
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
define %struct.Memory* @routine_jmpq_.L_42a549(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42a544(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xb8d2d__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xb8d2d__rip__type* @G_0xb8d2d__rip_ to i64)
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
define %struct.Memory* @routine_movss_0x2710__rax__rdx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 10000
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss_0x2710__rax__rdx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 10000
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to float*
  %18 = load float, float* %17, align 4
  %19 = extractelement <2 x float> %13, i32 0
  %20 = fsub float %19, %18
  %21 = bitcast %union.VectorReg* %3 to float*
  store float %20, float* %21, align 1
  %22 = bitcast <2 x float> %13 to <2 x i32>
  %23 = extractelement <2 x i32> %22, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 0
  %27 = bitcast i64* %14 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %4, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x660__rbp__rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -1632
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = bitcast %union.VectorReg* %3 to <2 x float>*
  %13 = load <2 x float>, <2 x float>* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = inttoptr i64 %9 to float*
  %18 = load float, float* %17, align 4
  %19 = extractelement <2 x float> %13, i32 0
  %20 = fmul float %19, %18
  %21 = bitcast %union.VectorReg* %3 to float*
  store float %20, float* %21, align 1
  %22 = bitcast <2 x float> %13 to <2 x i32>
  %23 = extractelement <2 x i32> %22, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %16, i32 0
  %27 = bitcast i64* %14 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %16, i32 1
  %29 = getelementptr inbounds i8, i8* %4, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x674__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1652
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
define %struct.Memory* @routine_movss_MINUS0x674__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1652
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
define %struct.Memory* @routine_jbe_.L_42a48e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_MINUS0x674__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1652
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x6bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1724
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
define %struct.Memory* @routine_jmpq_.L_42a4a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x6bc__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1724
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
define %struct.Memory* @routine_jbe_.L_42a4cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x6c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1728
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
define %struct.Memory* @routine_jmpq_.L_42a52b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42a502(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x6c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1732
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
define %struct.Memory* @routine_jmpq_.L_42a51b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x6c4__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1732
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
define %struct.Memory* @routine_movss_MINUS0x6c0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1728
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
define %struct.Memory* @routine_movl_MINUS0x668__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1640
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x668__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1640
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a1b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a567(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a56c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a571(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a179(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42a6f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42a6e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42a6e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jbe_.L_42a607(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x7f68__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 32616
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %6 to i8
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
define %struct.Memory* @routine_je_.L_42a607(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jbe_.L_42a654(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 1
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
define %struct.Memory* @routine_je_.L_42a654(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
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
define %struct.Memory* @routine_jne_.L_42a698(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xb88ef__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xb88ef__rip__type* @G_0xb88ef__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_42a6dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42a6d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xb88ab__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xb88ab__rip__type* @G_0xb88ab__rip_ to i64)
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
define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a6e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a6e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a6eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a586(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x6d0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1744
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1745
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
