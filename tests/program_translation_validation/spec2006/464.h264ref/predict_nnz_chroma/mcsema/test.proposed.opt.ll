; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6d4690_type = type <{ [8 x i8] }>
%G__0x4b9070_type = type <{ [8 x i8] }>
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
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6d4690 = local_unnamed_addr global %G_0x6d4690_type zeroinitializer
@G__0x4b9070 = global %G__0x4b9070_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memcpy(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_44b2e0.getChroma4x4Neighbour(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @predict_nnz_chroma(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -136
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 128
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i344 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x4b9070_type* @G__0x4b9070 to i64), i64* %RAX.i344, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i409 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 48, i64* %RCX.i409, align 8
  %ECX.i484 = bitcast %union.anon* %40 to i32*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i485 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  store i64 48, i64* %RDX.i485, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %42 = add i64 %7, -104
  store i64 %42, i64* %R8.i, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %43 to i32*
  %44 = add i64 %7, -12
  %45 = load i32, i32* %EDI.i, align 4
  %46 = add i64 %10, 34
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i548 = bitcast %union.anon* %48 to i32*
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -8
  %51 = load i32, i32* %ESI.i548, align 4
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 3
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %50 to i32*
  store i32 %51, i32* %54, align 4
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -36
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 7
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %56 to i32*
  store i32 0, i32* %59, align 4
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -40
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 7
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %61 to i32*
  store i32 0, i32* %64, align 4
  %R9.i542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %66, i64* %R9.i542, align 8
  %67 = add i64 %66, 12
  %68 = add i64 %65, 12
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %67 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %RCX.i409, align 8
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -44
  %74 = add i64 %65, 15
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %73 to i32*
  store i32 %70, i32* %75, align 4
  %RDI.i533 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %76 = load i64, i64* %R8.i, align 8
  %77 = load i64, i64* %3, align 8
  store i64 %76, i64* %RDI.i533, align 8
  %RSI.i531 = getelementptr inbounds %union.anon, %union.anon* %48, i64 0, i32 0
  %78 = load i64, i64* %RAX.i344, align 8
  store i64 %78, i64* %RSI.i531, align 8
  %79 = add i64 %77, -288627
  %80 = add i64 %77, 11
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %81, -8
  %83 = inttoptr i64 %82 to i64*
  store i64 %80, i64* %83, align 8
  store i64 %82, i64* %6, align 8
  store i64 %79, i64* %3, align 8
  %84 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %2)
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -8
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %86 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %RAX.i344, align 8
  %92 = shl nsw i64 %91, 2
  %93 = add i64 %85, -96
  %94 = add i64 %93, %92
  %95 = add i64 %87, 8
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %94 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %RCX.i409, align 8
  %99 = add i64 %85, -100
  %100 = add i64 %87, 11
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %99 to i32*
  store i32 %97, i32* %101, align 4
  %102 = load i64, i64* %3, align 8
  %103 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %103, i64* %RAX.i344, align 8
  %104 = add i64 %103, 72700
  %105 = add i64 %102, 15
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 3
  %.v = select i1 %108, i64 471, i64 21
  %109 = add i64 %102, %.v
  store i64 4294967295, i64* %RCX.i409, align 8
  store i64 0, i64* %R8.i, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %110 = load i64, i64* %RBP.i, align 8
  %111 = add i64 %110, -32
  %112 = add i64 %109, 12
  store i64 %112, i64* %3, align 8
  store i64 %111, i64* %R9.i542, align 8
  br i1 %108, label %block_.L_447a90, label %block_4478ce

block_4478ce:                                     ; preds = %entry
  store i64 2, i64* %RAX.i344, align 8
  %113 = add i64 %110, -44
  %114 = add i64 %109, 20
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RDI.i533, align 8
  %118 = add i64 %110, -4
  %119 = add i64 %109, 23
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %RDX.i485, align 8
  %123 = add i64 %110, -104
  %124 = add i64 %109, 26
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %123 to i32*
  store i32 2, i32* %125, align 4
  %EDX.i491 = bitcast %union.anon* %41 to i32*
  %126 = load i32, i32* %EDX.i491, align 4
  %127 = zext i32 %126 to i64
  %128 = load i64, i64* %3, align 8
  store i64 %127, i64* %RAX.i344, align 8
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %130 = sext i32 %126 to i64
  %131 = lshr i64 %130, 32
  store i64 %131, i64* %129, align 8
  %132 = load i64, i64* %RBP.i, align 8
  %133 = add i64 %132, -104
  %134 = add i64 %128, 6
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %133 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %RSI.i531, align 8
  %138 = add i64 %128, 8
  store i64 %138, i64* %3, align 8
  %139 = sext i32 %136 to i64
  %140 = shl nuw i64 %131, 32
  %141 = or i64 %140, %127
  %142 = sdiv i64 %141, %139
  %143 = shl i64 %142, 32
  %144 = ashr exact i64 %143, 32
  %145 = icmp eq i64 %142, %144
  br i1 %145, label %148, label %146

; <label>:146:                                    ; preds = %block_4478ce
  %147 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %138, %struct.Memory* %84)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre19 = load i64, i64* %3, align 8
  %.pre20 = load i32, i32* %EDX.i491, align 4
  br label %routine_idivl__esi.exit482

; <label>:148:                                    ; preds = %block_4478ce
  %149 = srem i64 %141, %139
  %150 = and i64 %142, 4294967295
  store i64 %150, i64* %RAX.i344, align 8
  %151 = and i64 %149, 4294967295
  store i64 %151, i64* %RDX.i485, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %152 = trunc i64 %149 to i32
  br label %routine_idivl__esi.exit482

routine_idivl__esi.exit482:                       ; preds = %148, %146
  %153 = phi i32 [ %.pre20, %146 ], [ %152, %148 ]
  %154 = phi i64 [ %.pre19, %146 ], [ %138, %148 ]
  %155 = phi i64 [ %.pre, %146 ], [ %132, %148 ]
  %156 = phi %struct.Memory* [ %147, %146 ], [ %84, %148 ]
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %158 = add i64 %155, -8
  %159 = add i64 %154, 4
  store i64 %159, i64* %3, align 8
  %160 = inttoptr i64 %158 to i32*
  %161 = load i32, i32* %160, align 4
  %162 = add i32 %161, -4
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %157, align 8
  %164 = icmp ult i32 %161, 4
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %14, align 1
  %166 = and i32 %162, 255
  %167 = tail call i32 @llvm.ctpop.i32(i32 %166)
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %21, align 1
  %171 = xor i32 %162, %161
  %172 = lshr i32 %171, 4
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  store i8 %174, i8* %26, align 1
  %175 = icmp eq i32 %162, 0
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %29, align 1
  %177 = lshr i32 %162, 31
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %32, align 1
  %179 = lshr i32 %161, 31
  %180 = xor i32 %177, %179
  %181 = add nuw nsw i32 %180, %179
  %182 = icmp eq i32 %181, 2
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %38, align 1
  %184 = zext i32 %153 to i64
  store i64 %184, i64* %RSI.i531, align 8
  store i64 %163, i64* %RDX.i485, align 8
  %185 = add i64 %154, 14832
  %186 = add i64 %154, 18
  %187 = load i64, i64* %6, align 8
  %188 = add i64 %187, -8
  %189 = inttoptr i64 %188 to i64*
  store i64 %186, i64* %189, align 8
  store i64 %188, i64* %6, align 8
  store i64 %185, i64* %3, align 8
  %call2_4478fd = tail call %struct.Memory* @sub_44b2e0.getChroma4x4Neighbour(%struct.State* nonnull %0, i64 %185, %struct.Memory* %156)
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -32
  %192 = load i64, i64* %3, align 8
  %193 = add i64 %192, 4
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %191 to i32*
  %195 = load i32, i32* %194, align 4
  store i8 0, i8* %14, align 1
  %196 = and i32 %195, 255
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196)
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %201 = icmp eq i32 %195, 0
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %29, align 1
  %203 = lshr i32 %195, 31
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v49 = select i1 %201, i64 80, i64 10
  %205 = add i64 %192, %.v49
  store i64 %205, i64* %3, align 8
  br i1 %201, label %block_.L_447952, label %block_44790c

block_44790c:                                     ; preds = %routine_idivl__esi.exit482
  %206 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %206, i64* %RAX.i344, align 8
  %207 = add i64 %206, 224
  %208 = add i64 %205, 15
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  store i8 0, i8* %14, align 1
  %211 = and i32 %210, 255
  %212 = tail call i32 @llvm.ctpop.i32(i32 %211)
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  store i8 %215, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %216 = icmp eq i32 %210, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %29, align 1
  %218 = lshr i32 %210, 31
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v50 = select i1 %216, i64 70, i64 21
  %220 = add i64 %205, %.v50
  store i64 %220, i64* %3, align 8
  br i1 %216, label %block_.L_447952, label %block_447921

block_447921:                                     ; preds = %block_44790c
  %221 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %221, i64* %RAX.i344, align 8
  %222 = add i64 %221, 2364
  %223 = add i64 %220, 15
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i32*
  %225 = load i32, i32* %224, align 4
  store i8 0, i8* %14, align 1
  %226 = and i32 %225, 255
  %227 = tail call i32 @llvm.ctpop.i32(i32 %226)
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  store i8 %230, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %231 = icmp eq i32 %225, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %29, align 1
  %233 = lshr i32 %225, 31
  %234 = trunc i32 %233 to i8
  store i8 %234, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v51 = select i1 %231, i64 49, i64 21
  %235 = add i64 %220, %.v51
  store i64 %235, i64* %3, align 8
  br i1 %231, label %block_.L_447952, label %block_447936

block_447936:                                     ; preds = %block_447921
  %236 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %236, i64* %RAX.i344, align 8
  %237 = add i64 %236, 71784
  %238 = add i64 %235, 15
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RAX.i344, align 8
  %241 = add i64 %190, -28
  %242 = add i64 %235, 19
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %241 to i32*
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  store i64 %245, i64* %RCX.i409, align 8
  %246 = shl nsw i64 %245, 2
  %247 = add i64 %246, %240
  %248 = add i64 %235, 22
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %247 to i32*
  %250 = load i32, i32* %249, align 4
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %RDX.i485, align 8
  %252 = add i64 %235, 25
  store i64 %252, i64* %3, align 8
  %253 = load i32, i32* %194, align 4
  %254 = and i32 %253, %250
  %255 = zext i32 %254 to i64
  store i64 %255, i64* %RDX.i485, align 8
  store i8 0, i8* %14, align 1
  %256 = and i32 %254, 255
  %257 = tail call i32 @llvm.ctpop.i32(i32 %256)
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  store i8 %260, i8* %21, align 1
  %261 = icmp eq i32 %254, 0
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %29, align 1
  %263 = lshr i32 %254, 31
  %264 = trunc i32 %263 to i8
  store i8 %264, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %265 = add i64 %235, 28
  store i64 %265, i64* %3, align 8
  store i32 %254, i32* %194, align 4
  %.pre21 = load i64, i64* %RBP.i, align 8
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_447952

block_.L_447952:                                  ; preds = %block_447936, %block_447921, %block_44790c, %routine_idivl__esi.exit482
  %266 = phi i64 [ %.pre22, %block_447936 ], [ %235, %block_447921 ], [ %220, %block_44790c ], [ %205, %routine_idivl__esi.exit482 ]
  %267 = phi i64 [ %.pre21, %block_447936 ], [ %190, %block_447921 ], [ %190, %block_44790c ], [ %190, %routine_idivl__esi.exit482 ]
  %268 = add i64 %267, -32
  %269 = add i64 %266, 4
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  store i8 0, i8* %14, align 1
  %272 = and i32 %271, 255
  %273 = tail call i32 @llvm.ctpop.i32(i32 %272)
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  %276 = xor i8 %275, 1
  store i8 %276, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %277 = icmp eq i32 %271, 0
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %29, align 1
  %279 = lshr i32 %271, 31
  %280 = trunc i32 %279 to i8
  store i8 %280, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v52 = select i1 %277, i64 89, i64 10
  %281 = add i64 %266, %.v52
  store i64 %281, i64* %3, align 8
  br i1 %277, label %block_.L_4479ab, label %block_44795c

block_44795c:                                     ; preds = %block_.L_447952
  store i64 2, i64* %RAX.i344, align 8
  %282 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %282, i64* %RCX.i409, align 8
  %283 = add i64 %282, 128
  %284 = add i64 %281, 20
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %RCX.i409, align 8
  %287 = add i64 %267, -28
  %288 = add i64 %281, 24
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  store i64 %291, i64* %RDX.i485, align 8
  %292 = shl nsw i64 %291, 3
  %293 = add i64 %292, %286
  %294 = add i64 %281, 28
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i64*
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* %RCX.i409, align 8
  %297 = add i64 %267, -4
  %298 = add i64 %281, 31
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = zext i32 %300 to i64
  store i64 %301, i64* %RSI.i531, align 8
  %302 = add i64 %267, -108
  %303 = add i64 %281, 34
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i32*
  store i32 2, i32* %304, align 4
  %305 = load i32, i32* %ESI.i548, align 4
  %306 = zext i32 %305 to i64
  %307 = load i64, i64* %3, align 8
  store i64 %306, i64* %RAX.i344, align 8
  %308 = sext i32 %305 to i64
  %309 = lshr i64 %308, 32
  store i64 %309, i64* %129, align 8
  %310 = load i64, i64* %RBP.i, align 8
  %311 = add i64 %310, -108
  %312 = add i64 %307, 6
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = zext i32 %314 to i64
  store i64 %315, i64* %RSI.i531, align 8
  %316 = add i64 %307, 8
  store i64 %316, i64* %3, align 8
  %317 = sext i32 %314 to i64
  %318 = shl nuw i64 %309, 32
  %319 = or i64 %318, %306
  %320 = sdiv i64 %319, %317
  %321 = shl i64 %320, 32
  %322 = ashr exact i64 %321, 32
  %323 = icmp eq i64 %320, %322
  br i1 %323, label %326, label %324

; <label>:324:                                    ; preds = %block_44795c
  %325 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %316, %struct.Memory* %call2_4478fd)
  %.pre23 = load i64, i64* %RAX.i344, align 8
  %.pre24 = load i64, i64* %3, align 8
  %.pre25 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit407

; <label>:326:                                    ; preds = %block_44795c
  %327 = srem i64 %319, %317
  %328 = and i64 %320, 4294967295
  store i64 %328, i64* %RAX.i344, align 8
  %329 = and i64 %327, 4294967295
  store i64 %329, i64* %RDX.i485, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__esi.exit407

routine_idivl__esi.exit407:                       ; preds = %326, %324
  %330 = phi i64 [ %.pre25, %324 ], [ %310, %326 ]
  %331 = phi i64 [ %.pre24, %324 ], [ %316, %326 ]
  %332 = phi i64 [ %.pre23, %324 ], [ %328, %326 ]
  %333 = phi %struct.Memory* [ %325, %324 ], [ %call2_4478fd, %326 ]
  %334 = trunc i64 %332 to i32
  %335 = shl i32 %334, 1
  %336 = icmp slt i32 %334, 0
  %337 = icmp slt i32 %335, 0
  %338 = xor i1 %336, %337
  %339 = zext i32 %335 to i64
  store i64 %339, i64* %RAX.i344, align 8
  %.lobit = lshr i32 %334, 31
  %340 = trunc i32 %.lobit to i8
  store i8 %340, i8* %14, align 1
  %341 = and i32 %335, 254
  %342 = tail call i32 @llvm.ctpop.i32(i32 %341)
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  %345 = xor i8 %344, 1
  store i8 %345, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %346 = icmp eq i32 %335, 0
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %29, align 1
  %348 = lshr i32 %334, 30
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  store i8 %350, i8* %32, align 1
  %351 = zext i1 %338 to i8
  store i8 %351, i8* %38, align 1
  %352 = add i64 %330, -24
  %353 = add i64 %331, 5
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i32*
  %355 = load i32, i32* %354, align 4
  %356 = add i32 %355, %335
  %357 = zext i32 %356 to i64
  store i64 %357, i64* %RAX.i344, align 8
  %358 = icmp ult i32 %356, %335
  %359 = icmp ult i32 %356, %355
  %360 = or i1 %358, %359
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %14, align 1
  %362 = and i32 %356, 255
  %363 = tail call i32 @llvm.ctpop.i32(i32 %362)
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  store i8 %366, i8* %21, align 1
  %367 = xor i32 %355, %335
  %368 = xor i32 %367, %356
  %369 = lshr i32 %368, 4
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  store i8 %371, i8* %26, align 1
  %372 = icmp eq i32 %356, 0
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %29, align 1
  %374 = lshr i32 %356, 31
  %375 = trunc i32 %374 to i8
  store i8 %375, i8* %32, align 1
  %376 = lshr i32 %334, 30
  %377 = and i32 %376, 1
  %378 = lshr i32 %355, 31
  %379 = xor i32 %374, %377
  %380 = xor i32 %374, %378
  %381 = add nuw nsw i32 %379, %380
  %382 = icmp eq i32 %381, 2
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %38, align 1
  %384 = sext i32 %356 to i64
  store i64 %384, i64* %RDI.i533, align 8
  %385 = load i64, i64* %RCX.i409, align 8
  %386 = shl nsw i64 %384, 3
  %387 = add i64 %385, %386
  %388 = add i64 %331, 12
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i64*
  %390 = load i64, i64* %389, align 8
  store i64 %390, i64* %RCX.i409, align 8
  %391 = add i64 %330, -20
  %392 = add i64 %331, 15
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = add i32 %394, 4
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RAX.i344, align 8
  %397 = icmp ugt i32 %394, -5
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %14, align 1
  %399 = and i32 %395, 255
  %400 = tail call i32 @llvm.ctpop.i32(i32 %399)
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  store i8 %403, i8* %21, align 1
  %404 = xor i32 %395, %394
  %405 = lshr i32 %404, 4
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  store i8 %407, i8* %26, align 1
  %408 = icmp eq i32 %395, 0
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %29, align 1
  %410 = lshr i32 %395, 31
  %411 = trunc i32 %410 to i8
  store i8 %411, i8* %32, align 1
  %412 = lshr i32 %394, 31
  %413 = xor i32 %410, %412
  %414 = add nuw nsw i32 %413, %410
  %415 = icmp eq i32 %414, 2
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %38, align 1
  %417 = sext i32 %395 to i64
  store i64 %417, i64* %RDI.i533, align 8
  %418 = shl nsw i64 %417, 2
  %419 = add i64 %390, %418
  %420 = add i64 %331, 24
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i32*
  %422 = load i32, i32* %421, align 4
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RAX.i344, align 8
  %424 = load i64, i64* %RBP.i, align 8
  %425 = add i64 %424, -36
  %426 = add i64 %331, 27
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i32*
  store i32 %422, i32* %427, align 4
  %428 = load i64, i64* %RBP.i, align 8
  %429 = add i64 %428, -40
  %430 = load i64, i64* %3, align 8
  %431 = add i64 %430, 3
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %429 to i32*
  %433 = load i32, i32* %432, align 4
  %434 = add i32 %433, 1
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RAX.i344, align 8
  %436 = icmp eq i32 %433, -1
  %437 = icmp eq i32 %434, 0
  %438 = or i1 %436, %437
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %14, align 1
  %440 = and i32 %434, 255
  %441 = tail call i32 @llvm.ctpop.i32(i32 %440)
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  %444 = xor i8 %443, 1
  store i8 %444, i8* %21, align 1
  %445 = xor i32 %434, %433
  %446 = lshr i32 %445, 4
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  store i8 %448, i8* %26, align 1
  %449 = zext i1 %437 to i8
  store i8 %449, i8* %29, align 1
  %450 = lshr i32 %434, 31
  %451 = trunc i32 %450 to i8
  store i8 %451, i8* %32, align 1
  %452 = lshr i32 %433, 31
  %453 = xor i32 %450, %452
  %454 = add nuw nsw i32 %453, %450
  %455 = icmp eq i32 %454, 2
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %38, align 1
  %457 = add i64 %430, 9
  store i64 %457, i64* %3, align 8
  store i32 %434, i32* %432, align 4
  %.pre26 = load i64, i64* %3, align 8
  %.pre27 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4479ab

block_.L_4479ab:                                  ; preds = %routine_idivl__esi.exit407, %block_.L_447952
  %458 = phi i64 [ %267, %block_.L_447952 ], [ %.pre27, %routine_idivl__esi.exit407 ]
  %459 = phi i64 [ %281, %block_.L_447952 ], [ %.pre26, %routine_idivl__esi.exit407 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_4478fd, %block_.L_447952 ], [ %333, %routine_idivl__esi.exit407 ]
  store i64 0, i64* %RCX.i409, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 4294967295, i64* %R8.i, align 8
  %460 = add i64 %458, -32
  store i64 %460, i64* %R9.i542, align 8
  store i64 2, i64* %RAX.i344, align 8
  %461 = add i64 %458, -44
  %462 = add i64 %459, 20
  store i64 %462, i64* %3, align 8
  %463 = inttoptr i64 %461 to i32*
  %464 = load i32, i32* %463, align 4
  %465 = zext i32 %464 to i64
  store i64 %465, i64* %RDI.i533, align 8
  %466 = add i64 %458, -4
  %467 = add i64 %459, 23
  store i64 %467, i64* %3, align 8
  %468 = inttoptr i64 %466 to i32*
  %469 = load i32, i32* %468, align 4
  %470 = zext i32 %469 to i64
  store i64 %470, i64* %RDX.i485, align 8
  %471 = add i64 %458, -112
  %472 = add i64 %459, 26
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %471 to i32*
  store i32 2, i32* %473, align 4
  %474 = load i32, i32* %EDX.i491, align 4
  %475 = zext i32 %474 to i64
  %476 = load i64, i64* %3, align 8
  store i64 %475, i64* %RAX.i344, align 8
  %477 = sext i32 %474 to i64
  %478 = lshr i64 %477, 32
  store i64 %478, i64* %129, align 8
  %479 = load i64, i64* %RBP.i, align 8
  %480 = add i64 %479, -112
  %481 = add i64 %476, 6
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %480 to i32*
  %483 = load i32, i32* %482, align 4
  %484 = zext i32 %483 to i64
  store i64 %484, i64* %RSI.i531, align 8
  %485 = add i64 %476, 8
  store i64 %485, i64* %3, align 8
  %486 = sext i32 %483 to i64
  %487 = shl nuw i64 %478, 32
  %488 = or i64 %487, %475
  %489 = sdiv i64 %488, %486
  %490 = shl i64 %489, 32
  %491 = ashr exact i64 %490, 32
  %492 = icmp eq i64 %489, %491
  br i1 %492, label %495, label %493

; <label>:493:                                    ; preds = %block_.L_4479ab
  %494 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %485, %struct.Memory* %MEMORY.1)
  %.pre28 = load i64, i64* %RBP.i, align 8
  %.pre29 = load i64, i64* %3, align 8
  %.pre30 = load i32, i32* %EDX.i491, align 4
  br label %routine_idivl__esi.exit342

; <label>:495:                                    ; preds = %block_.L_4479ab
  %496 = srem i64 %488, %486
  %497 = and i64 %489, 4294967295
  store i64 %497, i64* %RAX.i344, align 8
  %498 = and i64 %496, 4294967295
  store i64 %498, i64* %RDX.i485, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %499 = trunc i64 %496 to i32
  br label %routine_idivl__esi.exit342

routine_idivl__esi.exit342:                       ; preds = %495, %493
  %500 = phi i32 [ %.pre30, %493 ], [ %499, %495 ]
  %501 = phi i64 [ %.pre29, %493 ], [ %485, %495 ]
  %502 = phi i64 [ %.pre28, %493 ], [ %479, %495 ]
  %503 = phi %struct.Memory* [ %494, %493 ], [ %MEMORY.1, %495 ]
  %504 = add i64 %502, -8
  %505 = add i64 %501, 4
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %504 to i32*
  %507 = load i32, i32* %506, align 4
  %508 = add i32 %507, -4
  %509 = zext i32 %508 to i64
  store i64 %509, i64* %157, align 8
  %510 = icmp ult i32 %507, 4
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %14, align 1
  %512 = and i32 %508, 255
  %513 = tail call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  store i8 %516, i8* %21, align 1
  %517 = xor i32 %508, %507
  %518 = lshr i32 %517, 4
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  store i8 %520, i8* %26, align 1
  %521 = icmp eq i32 %508, 0
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %29, align 1
  %523 = lshr i32 %508, 31
  %524 = trunc i32 %523 to i8
  store i8 %524, i8* %32, align 1
  %525 = lshr i32 %507, 31
  %526 = xor i32 %523, %525
  %527 = add nuw nsw i32 %526, %525
  %528 = icmp eq i32 %527, 2
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %38, align 1
  %530 = zext i32 %500 to i64
  store i64 %530, i64* %RSI.i531, align 8
  store i64 %509, i64* %RDX.i485, align 8
  %531 = add i64 %501, 14611
  %532 = add i64 %501, 18
  %533 = load i64, i64* %6, align 8
  %534 = add i64 %533, -8
  %535 = inttoptr i64 %534 to i64*
  store i64 %532, i64* %535, align 8
  store i64 %534, i64* %6, align 8
  store i64 %531, i64* %3, align 8
  %call2_4479da = tail call %struct.Memory* @sub_44b2e0.getChroma4x4Neighbour(%struct.State* nonnull %0, i64 %531, %struct.Memory* %503)
  %536 = load i64, i64* %RBP.i, align 8
  %537 = add i64 %536, -32
  %538 = load i64, i64* %3, align 8
  %539 = add i64 %538, 4
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %537 to i32*
  %541 = load i32, i32* %540, align 4
  store i8 0, i8* %14, align 1
  %542 = and i32 %541, 255
  %543 = tail call i32 @llvm.ctpop.i32(i32 %542)
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  %546 = xor i8 %545, 1
  store i8 %546, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %547 = icmp eq i32 %541, 0
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %29, align 1
  %549 = lshr i32 %541, 31
  %550 = trunc i32 %549 to i8
  store i8 %550, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v53 = select i1 %547, i64 80, i64 10
  %551 = add i64 %538, %.v53
  store i64 %551, i64* %3, align 8
  br i1 %547, label %block_.L_447a2f, label %block_4479e9

block_4479e9:                                     ; preds = %routine_idivl__esi.exit342
  %552 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %552, i64* %RAX.i344, align 8
  %553 = add i64 %552, 224
  %554 = add i64 %551, 15
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  store i8 0, i8* %14, align 1
  %557 = and i32 %556, 255
  %558 = tail call i32 @llvm.ctpop.i32(i32 %557)
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = xor i8 %560, 1
  store i8 %561, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %562 = icmp eq i32 %556, 0
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %29, align 1
  %564 = lshr i32 %556, 31
  %565 = trunc i32 %564 to i8
  store i8 %565, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v54 = select i1 %562, i64 70, i64 21
  %566 = add i64 %551, %.v54
  store i64 %566, i64* %3, align 8
  br i1 %562, label %block_.L_447a2f, label %block_4479fe

block_4479fe:                                     ; preds = %block_4479e9
  %567 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %567, i64* %RAX.i344, align 8
  %568 = add i64 %567, 2364
  %569 = add i64 %566, 15
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i32*
  %571 = load i32, i32* %570, align 4
  store i8 0, i8* %14, align 1
  %572 = and i32 %571, 255
  %573 = tail call i32 @llvm.ctpop.i32(i32 %572)
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  %576 = xor i8 %575, 1
  store i8 %576, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %577 = icmp eq i32 %571, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %29, align 1
  %579 = lshr i32 %571, 31
  %580 = trunc i32 %579 to i8
  store i8 %580, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v55 = select i1 %577, i64 49, i64 21
  %581 = add i64 %566, %.v55
  store i64 %581, i64* %3, align 8
  br i1 %577, label %block_.L_447a2f, label %block_447a13

block_447a13:                                     ; preds = %block_4479fe
  %582 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %582, i64* %RAX.i344, align 8
  %583 = add i64 %582, 71784
  %584 = add i64 %581, 15
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to i64*
  %586 = load i64, i64* %585, align 8
  store i64 %586, i64* %RAX.i344, align 8
  %587 = add i64 %536, -28
  %588 = add i64 %581, 19
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i32*
  %590 = load i32, i32* %589, align 4
  %591 = sext i32 %590 to i64
  store i64 %591, i64* %RCX.i409, align 8
  %592 = shl nsw i64 %591, 2
  %593 = add i64 %592, %586
  %594 = add i64 %581, 22
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %593 to i32*
  %596 = load i32, i32* %595, align 4
  %597 = zext i32 %596 to i64
  store i64 %597, i64* %RDX.i485, align 8
  %598 = add i64 %581, 25
  store i64 %598, i64* %3, align 8
  %599 = load i32, i32* %540, align 4
  %600 = and i32 %599, %596
  %601 = zext i32 %600 to i64
  store i64 %601, i64* %RDX.i485, align 8
  store i8 0, i8* %14, align 1
  %602 = and i32 %600, 255
  %603 = tail call i32 @llvm.ctpop.i32(i32 %602)
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  %606 = xor i8 %605, 1
  store i8 %606, i8* %21, align 1
  %607 = icmp eq i32 %600, 0
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %29, align 1
  %609 = lshr i32 %600, 31
  %610 = trunc i32 %609 to i8
  store i8 %610, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %611 = add i64 %581, 28
  store i64 %611, i64* %3, align 8
  store i32 %600, i32* %540, align 4
  %.pre31 = load i64, i64* %RBP.i, align 8
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_447a2f

block_.L_447a2f:                                  ; preds = %block_447a13, %block_4479fe, %block_4479e9, %routine_idivl__esi.exit342
  %612 = phi i64 [ %.pre32, %block_447a13 ], [ %581, %block_4479fe ], [ %566, %block_4479e9 ], [ %551, %routine_idivl__esi.exit342 ]
  %613 = phi i64 [ %.pre31, %block_447a13 ], [ %536, %block_4479fe ], [ %536, %block_4479e9 ], [ %536, %routine_idivl__esi.exit342 ]
  %614 = add i64 %613, -32
  %615 = add i64 %612, 4
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i32*
  %617 = load i32, i32* %616, align 4
  store i8 0, i8* %14, align 1
  %618 = and i32 %617, 255
  %619 = tail call i32 @llvm.ctpop.i32(i32 %618)
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  %622 = xor i8 %621, 1
  store i8 %622, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %623 = icmp eq i32 %617, 0
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %29, align 1
  %625 = lshr i32 %617, 31
  %626 = trunc i32 %625 to i8
  store i8 %626, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v56 = select i1 %623, i64 92, i64 10
  %627 = add i64 %612, %.v56
  store i64 %627, i64* %3, align 8
  br i1 %623, label %block_.L_447a8b, label %block_447a39

block_447a39:                                     ; preds = %block_.L_447a2f
  store i64 2, i64* %RAX.i344, align 8
  %628 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %628, i64* %RCX.i409, align 8
  %629 = add i64 %628, 128
  %630 = add i64 %627, 20
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i64*
  %632 = load i64, i64* %631, align 8
  store i64 %632, i64* %RCX.i409, align 8
  %633 = add i64 %613, -28
  %634 = add i64 %627, 24
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to i32*
  %636 = load i32, i32* %635, align 4
  %637 = sext i32 %636 to i64
  store i64 %637, i64* %RDX.i485, align 8
  %638 = shl nsw i64 %637, 3
  %639 = add i64 %638, %632
  %640 = add i64 %627, 28
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i64*
  %642 = load i64, i64* %641, align 8
  store i64 %642, i64* %RCX.i409, align 8
  %643 = add i64 %613, -4
  %644 = add i64 %627, 31
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %RSI.i531, align 8
  %648 = add i64 %613, -116
  %649 = add i64 %627, 34
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i32*
  store i32 2, i32* %650, align 4
  %651 = load i32, i32* %ESI.i548, align 4
  %652 = zext i32 %651 to i64
  %653 = load i64, i64* %3, align 8
  store i64 %652, i64* %RAX.i344, align 8
  %654 = sext i32 %651 to i64
  %655 = lshr i64 %654, 32
  store i64 %655, i64* %129, align 8
  %656 = load i64, i64* %RBP.i, align 8
  %657 = add i64 %656, -116
  %658 = add i64 %653, 6
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = zext i32 %660 to i64
  store i64 %661, i64* %RSI.i531, align 8
  %662 = add i64 %653, 8
  store i64 %662, i64* %3, align 8
  %663 = sext i32 %660 to i64
  %664 = shl nuw i64 %655, 32
  %665 = or i64 %664, %652
  %666 = sdiv i64 %665, %663
  %667 = shl i64 %666, 32
  %668 = ashr exact i64 %667, 32
  %669 = icmp eq i64 %666, %668
  br i1 %669, label %672, label %670

; <label>:670:                                    ; preds = %block_447a39
  %671 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %662, %struct.Memory* %call2_4479da)
  %.pre33 = load i64, i64* %RAX.i344, align 8
  %.pre34 = load i64, i64* %3, align 8
  %.pre35 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:672:                                    ; preds = %block_447a39
  %673 = srem i64 %665, %663
  %674 = and i64 %666, 4294967295
  store i64 %674, i64* %RAX.i344, align 8
  %675 = and i64 %673, 4294967295
  store i64 %675, i64* %RDX.i485, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %672, %670
  %676 = phi i64 [ %.pre35, %670 ], [ %656, %672 ]
  %677 = phi i64 [ %.pre34, %670 ], [ %662, %672 ]
  %678 = phi i64 [ %.pre33, %670 ], [ %674, %672 ]
  %679 = phi %struct.Memory* [ %671, %670 ], [ %call2_4479da, %672 ]
  %680 = trunc i64 %678 to i32
  %681 = shl i32 %680, 1
  %682 = icmp slt i32 %680, 0
  %683 = icmp slt i32 %681, 0
  %684 = xor i1 %682, %683
  %685 = zext i32 %681 to i64
  store i64 %685, i64* %RAX.i344, align 8
  %.lobit18 = lshr i32 %680, 31
  %686 = trunc i32 %.lobit18 to i8
  store i8 %686, i8* %14, align 1
  %687 = and i32 %681, 254
  %688 = tail call i32 @llvm.ctpop.i32(i32 %687)
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  %691 = xor i8 %690, 1
  store i8 %691, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %692 = icmp eq i32 %681, 0
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %29, align 1
  %694 = lshr i32 %680, 30
  %695 = trunc i32 %694 to i8
  %696 = and i8 %695, 1
  store i8 %696, i8* %32, align 1
  %697 = zext i1 %684 to i8
  store i8 %697, i8* %38, align 1
  %698 = add i64 %676, -24
  %699 = add i64 %677, 5
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i32*
  %701 = load i32, i32* %700, align 4
  %702 = add i32 %701, %681
  %703 = zext i32 %702 to i64
  store i64 %703, i64* %RAX.i344, align 8
  %704 = icmp ult i32 %702, %681
  %705 = icmp ult i32 %702, %701
  %706 = or i1 %704, %705
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %14, align 1
  %708 = and i32 %702, 255
  %709 = tail call i32 @llvm.ctpop.i32(i32 %708)
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  %712 = xor i8 %711, 1
  store i8 %712, i8* %21, align 1
  %713 = xor i32 %701, %681
  %714 = xor i32 %713, %702
  %715 = lshr i32 %714, 4
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  store i8 %717, i8* %26, align 1
  %718 = icmp eq i32 %702, 0
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %29, align 1
  %720 = lshr i32 %702, 31
  %721 = trunc i32 %720 to i8
  store i8 %721, i8* %32, align 1
  %722 = lshr i32 %680, 30
  %723 = and i32 %722, 1
  %724 = lshr i32 %701, 31
  %725 = xor i32 %720, %723
  %726 = xor i32 %720, %724
  %727 = add nuw nsw i32 %725, %726
  %728 = icmp eq i32 %727, 2
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %38, align 1
  %730 = sext i32 %702 to i64
  store i64 %730, i64* %RDI.i533, align 8
  %731 = load i64, i64* %RCX.i409, align 8
  %732 = shl nsw i64 %730, 3
  %733 = add i64 %731, %732
  %734 = add i64 %677, 12
  store i64 %734, i64* %3, align 8
  %735 = inttoptr i64 %733 to i64*
  %736 = load i64, i64* %735, align 8
  store i64 %736, i64* %RCX.i409, align 8
  %737 = add i64 %676, -20
  %738 = add i64 %677, 15
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %737 to i32*
  %740 = load i32, i32* %739, align 4
  %741 = add i32 %740, 4
  %742 = zext i32 %741 to i64
  store i64 %742, i64* %RAX.i344, align 8
  %743 = icmp ugt i32 %740, -5
  %744 = zext i1 %743 to i8
  store i8 %744, i8* %14, align 1
  %745 = and i32 %741, 255
  %746 = tail call i32 @llvm.ctpop.i32(i32 %745)
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = xor i8 %748, 1
  store i8 %749, i8* %21, align 1
  %750 = xor i32 %741, %740
  %751 = lshr i32 %750, 4
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  store i8 %753, i8* %26, align 1
  %754 = icmp eq i32 %741, 0
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %29, align 1
  %756 = lshr i32 %741, 31
  %757 = trunc i32 %756 to i8
  store i8 %757, i8* %32, align 1
  %758 = lshr i32 %740, 31
  %759 = xor i32 %756, %758
  %760 = add nuw nsw i32 %759, %756
  %761 = icmp eq i32 %760, 2
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %38, align 1
  %763 = sext i32 %741 to i64
  store i64 %763, i64* %RDI.i533, align 8
  %764 = shl nsw i64 %763, 2
  %765 = add i64 %736, %764
  %766 = add i64 %677, 24
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i32*
  %768 = load i32, i32* %767, align 4
  %769 = zext i32 %768 to i64
  store i64 %769, i64* %RAX.i344, align 8
  %770 = load i64, i64* %RBP.i, align 8
  %771 = add i64 %770, -36
  %772 = add i64 %677, 27
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i32*
  %774 = load i32, i32* %773, align 4
  %775 = add i32 %774, %768
  %776 = zext i32 %775 to i64
  store i64 %776, i64* %RAX.i344, align 8
  %777 = icmp ult i32 %775, %768
  %778 = icmp ult i32 %775, %774
  %779 = or i1 %777, %778
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %14, align 1
  %781 = and i32 %775, 255
  %782 = tail call i32 @llvm.ctpop.i32(i32 %781)
  %783 = trunc i32 %782 to i8
  %784 = and i8 %783, 1
  %785 = xor i8 %784, 1
  store i8 %785, i8* %21, align 1
  %786 = xor i32 %774, %768
  %787 = xor i32 %786, %775
  %788 = lshr i32 %787, 4
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  store i8 %790, i8* %26, align 1
  %791 = icmp eq i32 %775, 0
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %29, align 1
  %793 = lshr i32 %775, 31
  %794 = trunc i32 %793 to i8
  store i8 %794, i8* %32, align 1
  %795 = lshr i32 %768, 31
  %796 = lshr i32 %774, 31
  %797 = xor i32 %793, %795
  %798 = xor i32 %793, %796
  %799 = add nuw nsw i32 %797, %798
  %800 = icmp eq i32 %799, 2
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %38, align 1
  %802 = add i64 %677, 30
  store i64 %802, i64* %3, align 8
  store i32 %775, i32* %773, align 4
  %803 = load i64, i64* %RBP.i, align 8
  %804 = add i64 %803, -40
  %805 = load i64, i64* %3, align 8
  %806 = add i64 %805, 3
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %804 to i32*
  %808 = load i32, i32* %807, align 4
  %809 = add i32 %808, 1
  %810 = zext i32 %809 to i64
  store i64 %810, i64* %RAX.i344, align 8
  %811 = icmp eq i32 %808, -1
  %812 = icmp eq i32 %809, 0
  %813 = or i1 %811, %812
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %14, align 1
  %815 = and i32 %809, 255
  %816 = tail call i32 @llvm.ctpop.i32(i32 %815)
  %817 = trunc i32 %816 to i8
  %818 = and i8 %817, 1
  %819 = xor i8 %818, 1
  store i8 %819, i8* %21, align 1
  %820 = xor i32 %809, %808
  %821 = lshr i32 %820, 4
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  store i8 %823, i8* %26, align 1
  %824 = zext i1 %812 to i8
  store i8 %824, i8* %29, align 1
  %825 = lshr i32 %809, 31
  %826 = trunc i32 %825 to i8
  store i8 %826, i8* %32, align 1
  %827 = lshr i32 %808, 31
  %828 = xor i32 %825, %827
  %829 = add nuw nsw i32 %828, %825
  %830 = icmp eq i32 %829, 2
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %38, align 1
  %832 = add i64 %805, 9
  store i64 %832, i64* %3, align 8
  store i32 %809, i32* %807, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_447a8b

block_.L_447a8b:                                  ; preds = %routine_idivl__esi.exit, %block_.L_447a2f
  %833 = phi i64 [ %627, %block_.L_447a2f ], [ %.pre36, %routine_idivl__esi.exit ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_4479da, %block_.L_447a2f ], [ %679, %routine_idivl__esi.exit ]
  %834 = add i64 %833, 365
  br label %block_.L_447bf8

block_.L_447a90:                                  ; preds = %entry
  %835 = add i64 %110, -44
  %836 = add i64 %109, 15
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = zext i32 %838 to i64
  store i64 %839, i64* %RDI.i533, align 8
  %840 = add i64 %110, -4
  %841 = add i64 %109, 18
  store i64 %841, i64* %3, align 8
  %842 = inttoptr i64 %840 to i32*
  %843 = load i32, i32* %842, align 4
  %844 = zext i32 %843 to i64
  store i64 %844, i64* %RSI.i531, align 8
  %845 = add i64 %110, -8
  %846 = add i64 %109, 21
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i32*
  %848 = load i32, i32* %847, align 4
  %849 = zext i32 %848 to i64
  store i64 %849, i64* %RAX.i344, align 8
  %850 = add i64 %110, -100
  %851 = add i64 %109, 24
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i32*
  %853 = load i32, i32* %852, align 4
  %854 = sub i32 %848, %853
  %855 = zext i32 %854 to i64
  store i64 %855, i64* %RAX.i344, align 8
  %856 = icmp ult i32 %848, %853
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %14, align 1
  %858 = and i32 %854, 255
  %859 = tail call i32 @llvm.ctpop.i32(i32 %858)
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  %862 = xor i8 %861, 1
  store i8 %862, i8* %21, align 1
  %863 = xor i32 %853, %848
  %864 = xor i32 %863, %854
  %865 = lshr i32 %864, 4
  %866 = trunc i32 %865 to i8
  %867 = and i8 %866, 1
  store i8 %867, i8* %26, align 1
  %868 = icmp eq i32 %854, 0
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %29, align 1
  %870 = lshr i32 %854, 31
  %871 = trunc i32 %870 to i8
  store i8 %871, i8* %32, align 1
  %872 = lshr i32 %848, 31
  %873 = lshr i32 %853, 31
  %874 = xor i32 %873, %872
  %875 = xor i32 %870, %872
  %876 = add nuw nsw i32 %875, %874
  %877 = icmp eq i32 %876, 2
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %38, align 1
  store i64 %855, i64* %RDX.i485, align 8
  %879 = add i64 %109, 14416
  %880 = add i64 %109, 31
  %881 = load i64, i64* %6, align 8
  %882 = add i64 %881, -8
  %883 = inttoptr i64 %882 to i64*
  store i64 %880, i64* %883, align 8
  store i64 %882, i64* %6, align 8
  store i64 %879, i64* %3, align 8
  %call2_447aaa = tail call %struct.Memory* @sub_44b2e0.getChroma4x4Neighbour(%struct.State* nonnull %0, i64 %879, %struct.Memory* %84)
  %884 = load i64, i64* %RBP.i, align 8
  %885 = add i64 %884, -32
  %886 = load i64, i64* %3, align 8
  %887 = add i64 %886, 4
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %885 to i32*
  %889 = load i32, i32* %888, align 4
  store i8 0, i8* %14, align 1
  %890 = and i32 %889, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %895 = icmp eq i32 %889, 0
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %29, align 1
  %897 = lshr i32 %889, 31
  %898 = trunc i32 %897 to i8
  store i8 %898, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v58 = select i1 %895, i64 80, i64 10
  %899 = add i64 %886, %.v58
  store i64 %899, i64* %3, align 8
  br i1 %895, label %block_.L_447aff, label %block_447ab9

block_447ab9:                                     ; preds = %block_.L_447a90
  %900 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %900, i64* %RAX.i344, align 8
  %901 = add i64 %900, 224
  %902 = add i64 %899, 15
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i32*
  %904 = load i32, i32* %903, align 4
  store i8 0, i8* %14, align 1
  %905 = and i32 %904, 255
  %906 = tail call i32 @llvm.ctpop.i32(i32 %905)
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  %909 = xor i8 %908, 1
  store i8 %909, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %910 = icmp eq i32 %904, 0
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %29, align 1
  %912 = lshr i32 %904, 31
  %913 = trunc i32 %912 to i8
  store i8 %913, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v59 = select i1 %910, i64 70, i64 21
  %914 = add i64 %899, %.v59
  store i64 %914, i64* %3, align 8
  br i1 %910, label %block_.L_447aff, label %block_447ace

block_447ace:                                     ; preds = %block_447ab9
  %915 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %915, i64* %RAX.i344, align 8
  %916 = add i64 %915, 2364
  %917 = add i64 %914, 15
  store i64 %917, i64* %3, align 8
  %918 = inttoptr i64 %916 to i32*
  %919 = load i32, i32* %918, align 4
  store i8 0, i8* %14, align 1
  %920 = and i32 %919, 255
  %921 = tail call i32 @llvm.ctpop.i32(i32 %920)
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  %924 = xor i8 %923, 1
  store i8 %924, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %925 = icmp eq i32 %919, 0
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %29, align 1
  %927 = lshr i32 %919, 31
  %928 = trunc i32 %927 to i8
  store i8 %928, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v60 = select i1 %925, i64 49, i64 21
  %929 = add i64 %914, %.v60
  store i64 %929, i64* %3, align 8
  br i1 %925, label %block_.L_447aff, label %block_447ae3

block_447ae3:                                     ; preds = %block_447ace
  %930 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %930, i64* %RAX.i344, align 8
  %931 = add i64 %930, 71784
  %932 = add i64 %929, 15
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i64*
  %934 = load i64, i64* %933, align 8
  store i64 %934, i64* %RAX.i344, align 8
  %935 = add i64 %884, -28
  %936 = add i64 %929, 19
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i32*
  %938 = load i32, i32* %937, align 4
  %939 = sext i32 %938 to i64
  store i64 %939, i64* %RCX.i409, align 8
  %940 = shl nsw i64 %939, 2
  %941 = add i64 %940, %934
  %942 = add i64 %929, 22
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i32*
  %944 = load i32, i32* %943, align 4
  %945 = zext i32 %944 to i64
  store i64 %945, i64* %RDX.i485, align 8
  %946 = add i64 %929, 25
  store i64 %946, i64* %3, align 8
  %947 = load i32, i32* %888, align 4
  %948 = and i32 %947, %944
  %949 = zext i32 %948 to i64
  store i64 %949, i64* %RDX.i485, align 8
  store i8 0, i8* %14, align 1
  %950 = and i32 %948, 255
  %951 = tail call i32 @llvm.ctpop.i32(i32 %950)
  %952 = trunc i32 %951 to i8
  %953 = and i8 %952, 1
  %954 = xor i8 %953, 1
  store i8 %954, i8* %21, align 1
  %955 = icmp eq i32 %948, 0
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %29, align 1
  %957 = lshr i32 %948, 31
  %958 = trunc i32 %957 to i8
  store i8 %958, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %959 = add i64 %929, 28
  store i64 %959, i64* %3, align 8
  store i32 %948, i32* %888, align 4
  %.pre37 = load i64, i64* %RBP.i, align 8
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_447aff

block_.L_447aff:                                  ; preds = %block_447ae3, %block_447ace, %block_447ab9, %block_.L_447a90
  %960 = phi i64 [ %.pre38, %block_447ae3 ], [ %929, %block_447ace ], [ %914, %block_447ab9 ], [ %899, %block_.L_447a90 ]
  %961 = phi i64 [ %.pre37, %block_447ae3 ], [ %884, %block_447ace ], [ %884, %block_447ab9 ], [ %884, %block_.L_447a90 ]
  %962 = add i64 %961, -32
  %963 = add i64 %960, 4
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i32*
  %965 = load i32, i32* %964, align 4
  store i8 0, i8* %14, align 1
  %966 = and i32 %965, 255
  %967 = tail call i32 @llvm.ctpop.i32(i32 %966)
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  store i8 %970, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %971 = icmp eq i32 %965, 0
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %29, align 1
  %973 = lshr i32 %965, 31
  %974 = trunc i32 %973 to i8
  store i8 %974, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v61 = select i1 %971, i64 65, i64 10
  %975 = add i64 %960, %.v61
  store i64 %975, i64* %3, align 8
  br i1 %971, label %block_.L_447b40, label %block_447b09

block_447b09:                                     ; preds = %block_.L_447aff
  %976 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %976, i64* %RAX.i344, align 8
  %977 = add i64 %976, 128
  %978 = add i64 %975, 15
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i64*
  %980 = load i64, i64* %979, align 8
  store i64 %980, i64* %RAX.i344, align 8
  %981 = add i64 %961, -28
  %982 = add i64 %975, 19
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i32*
  %984 = load i32, i32* %983, align 4
  %985 = sext i32 %984 to i64
  store i64 %985, i64* %RCX.i409, align 8
  %986 = shl nsw i64 %985, 3
  %987 = add i64 %986, %980
  %988 = add i64 %975, 23
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i64*
  %990 = load i64, i64* %989, align 8
  store i64 %990, i64* %RAX.i344, align 8
  %991 = add i64 %961, -24
  %992 = add i64 %975, 27
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i32*
  %994 = load i32, i32* %993, align 4
  %995 = sext i32 %994 to i64
  store i64 %995, i64* %RCX.i409, align 8
  %996 = shl nsw i64 %995, 3
  %997 = add i64 %996, %990
  %998 = add i64 %975, 31
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %997 to i64*
  %1000 = load i64, i64* %999, align 8
  store i64 %1000, i64* %RAX.i344, align 8
  %1001 = add i64 %961, -100
  %1002 = add i64 %975, 34
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1001 to i32*
  %1004 = load i32, i32* %1003, align 4
  %1005 = zext i32 %1004 to i64
  store i64 %1005, i64* %RDX.i485, align 8
  %1006 = add i64 %961, -20
  %1007 = add i64 %975, 37
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i32*
  %1009 = load i32, i32* %1008, align 4
  %1010 = add i32 %1009, %1004
  %1011 = zext i32 %1010 to i64
  store i64 %1011, i64* %RDX.i485, align 8
  %1012 = icmp ult i32 %1010, %1004
  %1013 = icmp ult i32 %1010, %1009
  %1014 = or i1 %1012, %1013
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %14, align 1
  %1016 = and i32 %1010, 255
  %1017 = tail call i32 @llvm.ctpop.i32(i32 %1016)
  %1018 = trunc i32 %1017 to i8
  %1019 = and i8 %1018, 1
  %1020 = xor i8 %1019, 1
  store i8 %1020, i8* %21, align 1
  %1021 = xor i32 %1009, %1004
  %1022 = xor i32 %1021, %1010
  %1023 = lshr i32 %1022, 4
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  store i8 %1025, i8* %26, align 1
  %1026 = icmp eq i32 %1010, 0
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %29, align 1
  %1028 = lshr i32 %1010, 31
  %1029 = trunc i32 %1028 to i8
  store i8 %1029, i8* %32, align 1
  %1030 = lshr i32 %1004, 31
  %1031 = lshr i32 %1009, 31
  %1032 = xor i32 %1028, %1030
  %1033 = xor i32 %1028, %1031
  %1034 = add nuw nsw i32 %1032, %1033
  %1035 = icmp eq i32 %1034, 2
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %38, align 1
  %1037 = sext i32 %1010 to i64
  store i64 %1037, i64* %RCX.i409, align 8
  %1038 = shl nsw i64 %1037, 2
  %1039 = add i64 %1000, %1038
  %1040 = add i64 %975, 43
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = zext i32 %1042 to i64
  store i64 %1043, i64* %RDX.i485, align 8
  %1044 = add i64 %961, -36
  %1045 = add i64 %975, 46
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i32*
  store i32 %1042, i32* %1046, align 4
  %1047 = load i64, i64* %RBP.i, align 8
  %1048 = add i64 %1047, -40
  %1049 = load i64, i64* %3, align 8
  %1050 = add i64 %1049, 3
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1048 to i32*
  %1052 = load i32, i32* %1051, align 4
  %1053 = add i32 %1052, 1
  %1054 = zext i32 %1053 to i64
  store i64 %1054, i64* %RDX.i485, align 8
  %1055 = icmp eq i32 %1052, -1
  %1056 = icmp eq i32 %1053, 0
  %1057 = or i1 %1055, %1056
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %14, align 1
  %1059 = and i32 %1053, 255
  %1060 = tail call i32 @llvm.ctpop.i32(i32 %1059)
  %1061 = trunc i32 %1060 to i8
  %1062 = and i8 %1061, 1
  %1063 = xor i8 %1062, 1
  store i8 %1063, i8* %21, align 1
  %1064 = xor i32 %1053, %1052
  %1065 = lshr i32 %1064, 4
  %1066 = trunc i32 %1065 to i8
  %1067 = and i8 %1066, 1
  store i8 %1067, i8* %26, align 1
  %1068 = zext i1 %1056 to i8
  store i8 %1068, i8* %29, align 1
  %1069 = lshr i32 %1053, 31
  %1070 = trunc i32 %1069 to i8
  store i8 %1070, i8* %32, align 1
  %1071 = lshr i32 %1052, 31
  %1072 = xor i32 %1069, %1071
  %1073 = add nuw nsw i32 %1072, %1069
  %1074 = icmp eq i32 %1073, 2
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %38, align 1
  %1076 = add i64 %1049, 9
  store i64 %1076, i64* %3, align 8
  store i32 %1053, i32* %1051, align 4
  %.pre39 = load i64, i64* %3, align 8
  %.pre40 = load i64, i64* %RBP.i, align 8
  br label %block_.L_447b40

block_.L_447b40:                                  ; preds = %block_447b09, %block_.L_447aff
  %1077 = phi i64 [ %.pre40, %block_447b09 ], [ %961, %block_.L_447aff ]
  %1078 = phi i64 [ %.pre39, %block_447b09 ], [ %975, %block_.L_447aff ]
  store i64 0, i64* %RCX.i409, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 4294967295, i64* %R8.i, align 8
  %1079 = add i64 %1077, -32
  store i64 %1079, i64* %R9.i542, align 8
  %1080 = add i64 %1077, -44
  %1081 = add i64 %1078, 15
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1080 to i32*
  %1083 = load i32, i32* %1082, align 4
  %1084 = zext i32 %1083 to i64
  store i64 %1084, i64* %RDI.i533, align 8
  %1085 = add i64 %1077, -4
  %1086 = add i64 %1078, 18
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = zext i32 %1088 to i64
  store i64 %1089, i64* %RSI.i531, align 8
  %1090 = add i64 %1077, -8
  %1091 = add i64 %1078, 21
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1090 to i32*
  %1093 = load i32, i32* %1092, align 4
  %1094 = zext i32 %1093 to i64
  store i64 %1094, i64* %RAX.i344, align 8
  %1095 = add i64 %1077, -100
  %1096 = add i64 %1078, 24
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = sub i32 %1093, %1098
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RAX.i344, align 8
  %1101 = icmp ult i32 %1093, %1098
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %14, align 1
  %1103 = and i32 %1099, 255
  %1104 = tail call i32 @llvm.ctpop.i32(i32 %1103)
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  %1107 = xor i8 %1106, 1
  store i8 %1107, i8* %21, align 1
  %1108 = xor i32 %1098, %1093
  %1109 = xor i32 %1108, %1099
  %1110 = lshr i32 %1109, 4
  %1111 = trunc i32 %1110 to i8
  %1112 = and i8 %1111, 1
  store i8 %1112, i8* %26, align 1
  %1113 = icmp eq i32 %1099, 0
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %29, align 1
  %1115 = lshr i32 %1099, 31
  %1116 = trunc i32 %1115 to i8
  store i8 %1116, i8* %32, align 1
  %1117 = lshr i32 %1093, 31
  %1118 = lshr i32 %1098, 31
  %1119 = xor i32 %1118, %1117
  %1120 = xor i32 %1115, %1117
  %1121 = add nuw nsw i32 %1120, %1119
  %1122 = icmp eq i32 %1121, 2
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %38, align 1
  store i64 %1100, i64* %RDX.i485, align 8
  %1124 = add i64 %1078, 14240
  %1125 = add i64 %1078, 31
  %1126 = load i64, i64* %6, align 8
  %1127 = add i64 %1126, -8
  %1128 = inttoptr i64 %1127 to i64*
  store i64 %1125, i64* %1128, align 8
  store i64 %1127, i64* %6, align 8
  store i64 %1124, i64* %3, align 8
  %call2_447b5a = tail call %struct.Memory* @sub_44b2e0.getChroma4x4Neighbour(%struct.State* nonnull %0, i64 %1124, %struct.Memory* %call2_447aaa)
  %1129 = load i64, i64* %RBP.i, align 8
  %1130 = add i64 %1129, -32
  %1131 = load i64, i64* %3, align 8
  %1132 = add i64 %1131, 4
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1130 to i32*
  %1134 = load i32, i32* %1133, align 4
  store i8 0, i8* %14, align 1
  %1135 = and i32 %1134, 255
  %1136 = tail call i32 @llvm.ctpop.i32(i32 %1135)
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  store i8 %1139, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1140 = icmp eq i32 %1134, 0
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %29, align 1
  %1142 = lshr i32 %1134, 31
  %1143 = trunc i32 %1142 to i8
  store i8 %1143, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v62 = select i1 %1140, i64 80, i64 10
  %1144 = add i64 %1131, %.v62
  store i64 %1144, i64* %3, align 8
  br i1 %1140, label %block_.L_447baf, label %block_447b69

block_447b69:                                     ; preds = %block_.L_447b40
  %1145 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %1145, i64* %RAX.i344, align 8
  %1146 = add i64 %1145, 224
  %1147 = add i64 %1144, 15
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i32*
  %1149 = load i32, i32* %1148, align 4
  store i8 0, i8* %14, align 1
  %1150 = and i32 %1149, 255
  %1151 = tail call i32 @llvm.ctpop.i32(i32 %1150)
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 1
  %1154 = xor i8 %1153, 1
  store i8 %1154, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1155 = icmp eq i32 %1149, 0
  %1156 = zext i1 %1155 to i8
  store i8 %1156, i8* %29, align 1
  %1157 = lshr i32 %1149, 31
  %1158 = trunc i32 %1157 to i8
  store i8 %1158, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v63 = select i1 %1155, i64 70, i64 21
  %1159 = add i64 %1144, %.v63
  store i64 %1159, i64* %3, align 8
  br i1 %1155, label %block_.L_447baf, label %block_447b7e

block_447b7e:                                     ; preds = %block_447b69
  %1160 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1160, i64* %RAX.i344, align 8
  %1161 = add i64 %1160, 2364
  %1162 = add i64 %1159, 15
  store i64 %1162, i64* %3, align 8
  %1163 = inttoptr i64 %1161 to i32*
  %1164 = load i32, i32* %1163, align 4
  store i8 0, i8* %14, align 1
  %1165 = and i32 %1164, 255
  %1166 = tail call i32 @llvm.ctpop.i32(i32 %1165)
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  %1169 = xor i8 %1168, 1
  store i8 %1169, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1170 = icmp eq i32 %1164, 0
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %29, align 1
  %1172 = lshr i32 %1164, 31
  %1173 = trunc i32 %1172 to i8
  store i8 %1173, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v64 = select i1 %1170, i64 49, i64 21
  %1174 = add i64 %1159, %.v64
  store i64 %1174, i64* %3, align 8
  br i1 %1170, label %block_.L_447baf, label %block_447b93

block_447b93:                                     ; preds = %block_447b7e
  %1175 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1175, i64* %RAX.i344, align 8
  %1176 = add i64 %1175, 71784
  %1177 = add i64 %1174, 15
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1176 to i64*
  %1179 = load i64, i64* %1178, align 8
  store i64 %1179, i64* %RAX.i344, align 8
  %1180 = add i64 %1129, -28
  %1181 = add i64 %1174, 19
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1180 to i32*
  %1183 = load i32, i32* %1182, align 4
  %1184 = sext i32 %1183 to i64
  store i64 %1184, i64* %RCX.i409, align 8
  %1185 = shl nsw i64 %1184, 2
  %1186 = add i64 %1185, %1179
  %1187 = add i64 %1174, 22
  store i64 %1187, i64* %3, align 8
  %1188 = inttoptr i64 %1186 to i32*
  %1189 = load i32, i32* %1188, align 4
  %1190 = zext i32 %1189 to i64
  store i64 %1190, i64* %RDX.i485, align 8
  %1191 = add i64 %1174, 25
  store i64 %1191, i64* %3, align 8
  %1192 = load i32, i32* %1133, align 4
  %1193 = and i32 %1192, %1189
  %1194 = zext i32 %1193 to i64
  store i64 %1194, i64* %RDX.i485, align 8
  store i8 0, i8* %14, align 1
  %1195 = and i32 %1193, 255
  %1196 = tail call i32 @llvm.ctpop.i32(i32 %1195)
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  store i8 %1199, i8* %21, align 1
  %1200 = icmp eq i32 %1193, 0
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %29, align 1
  %1202 = lshr i32 %1193, 31
  %1203 = trunc i32 %1202 to i8
  store i8 %1203, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1204 = add i64 %1174, 28
  store i64 %1204, i64* %3, align 8
  store i32 %1193, i32* %1133, align 4
  %.pre41 = load i64, i64* %RBP.i, align 8
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_447baf

block_.L_447baf:                                  ; preds = %block_447b93, %block_447b7e, %block_447b69, %block_.L_447b40
  %1205 = phi i64 [ %.pre42, %block_447b93 ], [ %1174, %block_447b7e ], [ %1159, %block_447b69 ], [ %1144, %block_.L_447b40 ]
  %1206 = phi i64 [ %.pre41, %block_447b93 ], [ %1129, %block_447b7e ], [ %1129, %block_447b69 ], [ %1129, %block_.L_447b40 ]
  %1207 = add i64 %1206, -32
  %1208 = add i64 %1205, 4
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1207 to i32*
  %1210 = load i32, i32* %1209, align 4
  store i8 0, i8* %14, align 1
  %1211 = and i32 %1210, 255
  %1212 = tail call i32 @llvm.ctpop.i32(i32 %1211)
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  %1215 = xor i8 %1214, 1
  store i8 %1215, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1216 = icmp eq i32 %1210, 0
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %29, align 1
  %1218 = lshr i32 %1210, 31
  %1219 = trunc i32 %1218 to i8
  store i8 %1219, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v65 = select i1 %1216, i64 68, i64 10
  %1220 = add i64 %1205, %.v65
  store i64 %1220, i64* %3, align 8
  br i1 %1216, label %block_.L_447bf3, label %block_447bb9

block_447bb9:                                     ; preds = %block_.L_447baf
  %1221 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1221, i64* %RAX.i344, align 8
  %1222 = add i64 %1221, 128
  %1223 = add i64 %1220, 15
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1222 to i64*
  %1225 = load i64, i64* %1224, align 8
  store i64 %1225, i64* %RAX.i344, align 8
  %1226 = add i64 %1206, -28
  %1227 = add i64 %1220, 19
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i32*
  %1229 = load i32, i32* %1228, align 4
  %1230 = sext i32 %1229 to i64
  store i64 %1230, i64* %RCX.i409, align 8
  %1231 = shl nsw i64 %1230, 3
  %1232 = add i64 %1231, %1225
  %1233 = add i64 %1220, 23
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i64*
  %1235 = load i64, i64* %1234, align 8
  store i64 %1235, i64* %RAX.i344, align 8
  %1236 = add i64 %1206, -24
  %1237 = add i64 %1220, 27
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to i32*
  %1239 = load i32, i32* %1238, align 4
  %1240 = sext i32 %1239 to i64
  store i64 %1240, i64* %RCX.i409, align 8
  %1241 = shl nsw i64 %1240, 3
  %1242 = add i64 %1241, %1235
  %1243 = add i64 %1220, 31
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %RAX.i344, align 8
  %1246 = add i64 %1206, -100
  %1247 = add i64 %1220, 34
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i32*
  %1249 = load i32, i32* %1248, align 4
  %1250 = zext i32 %1249 to i64
  store i64 %1250, i64* %RDX.i485, align 8
  %1251 = add i64 %1206, -20
  %1252 = add i64 %1220, 37
  store i64 %1252, i64* %3, align 8
  %1253 = inttoptr i64 %1251 to i32*
  %1254 = load i32, i32* %1253, align 4
  %1255 = add i32 %1254, %1249
  %1256 = zext i32 %1255 to i64
  store i64 %1256, i64* %RDX.i485, align 8
  %1257 = icmp ult i32 %1255, %1249
  %1258 = icmp ult i32 %1255, %1254
  %1259 = or i1 %1257, %1258
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %14, align 1
  %1261 = and i32 %1255, 255
  %1262 = tail call i32 @llvm.ctpop.i32(i32 %1261)
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  %1265 = xor i8 %1264, 1
  store i8 %1265, i8* %21, align 1
  %1266 = xor i32 %1254, %1249
  %1267 = xor i32 %1266, %1255
  %1268 = lshr i32 %1267, 4
  %1269 = trunc i32 %1268 to i8
  %1270 = and i8 %1269, 1
  store i8 %1270, i8* %26, align 1
  %1271 = icmp eq i32 %1255, 0
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %29, align 1
  %1273 = lshr i32 %1255, 31
  %1274 = trunc i32 %1273 to i8
  store i8 %1274, i8* %32, align 1
  %1275 = lshr i32 %1249, 31
  %1276 = lshr i32 %1254, 31
  %1277 = xor i32 %1273, %1275
  %1278 = xor i32 %1273, %1276
  %1279 = add nuw nsw i32 %1277, %1278
  %1280 = icmp eq i32 %1279, 2
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %38, align 1
  %1282 = sext i32 %1255 to i64
  store i64 %1282, i64* %RCX.i409, align 8
  %1283 = shl nsw i64 %1282, 2
  %1284 = add i64 %1245, %1283
  %1285 = add i64 %1220, 43
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i32*
  %1287 = load i32, i32* %1286, align 4
  %1288 = zext i32 %1287 to i64
  store i64 %1288, i64* %RDX.i485, align 8
  %1289 = add i64 %1206, -36
  %1290 = add i64 %1220, 46
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i32*
  %1292 = load i32, i32* %1291, align 4
  %1293 = add i32 %1292, %1287
  %1294 = zext i32 %1293 to i64
  store i64 %1294, i64* %RDX.i485, align 8
  %1295 = icmp ult i32 %1293, %1287
  %1296 = icmp ult i32 %1293, %1292
  %1297 = or i1 %1295, %1296
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %14, align 1
  %1299 = and i32 %1293, 255
  %1300 = tail call i32 @llvm.ctpop.i32(i32 %1299)
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  %1303 = xor i8 %1302, 1
  store i8 %1303, i8* %21, align 1
  %1304 = xor i32 %1292, %1287
  %1305 = xor i32 %1304, %1293
  %1306 = lshr i32 %1305, 4
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  store i8 %1308, i8* %26, align 1
  %1309 = icmp eq i32 %1293, 0
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %29, align 1
  %1311 = lshr i32 %1293, 31
  %1312 = trunc i32 %1311 to i8
  store i8 %1312, i8* %32, align 1
  %1313 = lshr i32 %1287, 31
  %1314 = lshr i32 %1292, 31
  %1315 = xor i32 %1311, %1313
  %1316 = xor i32 %1311, %1314
  %1317 = add nuw nsw i32 %1315, %1316
  %1318 = icmp eq i32 %1317, 2
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %38, align 1
  %1320 = load i64, i64* %RBP.i, align 8
  %1321 = add i64 %1320, -36
  %1322 = add i64 %1220, 49
  store i64 %1322, i64* %3, align 8
  %1323 = inttoptr i64 %1321 to i32*
  store i32 %1293, i32* %1323, align 4
  %1324 = load i64, i64* %RBP.i, align 8
  %1325 = add i64 %1324, -40
  %1326 = load i64, i64* %3, align 8
  %1327 = add i64 %1326, 3
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1325 to i32*
  %1329 = load i32, i32* %1328, align 4
  %1330 = add i32 %1329, 1
  %1331 = zext i32 %1330 to i64
  store i64 %1331, i64* %RDX.i485, align 8
  %1332 = icmp eq i32 %1329, -1
  %1333 = icmp eq i32 %1330, 0
  %1334 = or i1 %1332, %1333
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %14, align 1
  %1336 = and i32 %1330, 255
  %1337 = tail call i32 @llvm.ctpop.i32(i32 %1336)
  %1338 = trunc i32 %1337 to i8
  %1339 = and i8 %1338, 1
  %1340 = xor i8 %1339, 1
  store i8 %1340, i8* %21, align 1
  %1341 = xor i32 %1330, %1329
  %1342 = lshr i32 %1341, 4
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  store i8 %1344, i8* %26, align 1
  %1345 = zext i1 %1333 to i8
  store i8 %1345, i8* %29, align 1
  %1346 = lshr i32 %1330, 31
  %1347 = trunc i32 %1346 to i8
  store i8 %1347, i8* %32, align 1
  %1348 = lshr i32 %1329, 31
  %1349 = xor i32 %1346, %1348
  %1350 = add nuw nsw i32 %1349, %1346
  %1351 = icmp eq i32 %1350, 2
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %38, align 1
  %1353 = add i64 %1326, 9
  store i64 %1353, i64* %3, align 8
  store i32 %1330, i32* %1328, align 4
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_447bf3

block_.L_447bf3:                                  ; preds = %block_447bb9, %block_.L_447baf
  %1354 = phi i64 [ %.pre43, %block_447bb9 ], [ %1220, %block_.L_447baf ]
  %1355 = add i64 %1354, 5
  store i64 %1355, i64* %3, align 8
  br label %block_.L_447bf8

block_.L_447bf8:                                  ; preds = %block_.L_447bf3, %block_.L_447a8b
  %storemerge = phi i64 [ %834, %block_.L_447a8b ], [ %1355, %block_.L_447bf3 ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.3, %block_.L_447a8b ], [ %call2_447b5a, %block_.L_447bf3 ]
  %1356 = load i64, i64* %RBP.i, align 8
  %1357 = add i64 %1356, -40
  %1358 = add i64 %storemerge, 4
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1357 to i32*
  %1360 = load i32, i32* %1359, align 4
  %1361 = add i32 %1360, -2
  %1362 = icmp ult i32 %1360, 2
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %14, align 1
  %1364 = and i32 %1361, 255
  %1365 = tail call i32 @llvm.ctpop.i32(i32 %1364)
  %1366 = trunc i32 %1365 to i8
  %1367 = and i8 %1366, 1
  %1368 = xor i8 %1367, 1
  store i8 %1368, i8* %21, align 1
  %1369 = xor i32 %1361, %1360
  %1370 = lshr i32 %1369, 4
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  store i8 %1372, i8* %26, align 1
  %1373 = icmp eq i32 %1361, 0
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %29, align 1
  %1375 = lshr i32 %1361, 31
  %1376 = trunc i32 %1375 to i8
  store i8 %1376, i8* %32, align 1
  %1377 = lshr i32 %1360, 31
  %1378 = xor i32 %1375, %1377
  %1379 = add nuw nsw i32 %1378, %1377
  %1380 = icmp eq i32 %1379, 2
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %38, align 1
  %.v57 = select i1 %1373, i64 10, i64 39
  %1382 = add i64 %storemerge, %.v57
  store i64 %1382, i64* %3, align 8
  br i1 %1373, label %block_447c02, label %block_.L_447c1f

block_447c02:                                     ; preds = %block_.L_447bf8
  %1383 = add i64 %1356, -36
  %1384 = add i64 %1382, 3
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i32*
  %1386 = load i32, i32* %1385, align 4
  %1387 = add i32 %1386, 1
  %1388 = zext i32 %1387 to i64
  store i64 %1388, i64* %RAX.i344, align 8
  %1389 = icmp eq i32 %1386, -1
  %1390 = icmp eq i32 %1387, 0
  %1391 = or i1 %1389, %1390
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %14, align 1
  %1393 = and i32 %1387, 255
  %1394 = tail call i32 @llvm.ctpop.i32(i32 %1393)
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  %1397 = xor i8 %1396, 1
  store i8 %1397, i8* %21, align 1
  %1398 = xor i32 %1387, %1386
  %1399 = lshr i32 %1398, 4
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  store i8 %1401, i8* %26, align 1
  %1402 = zext i1 %1390 to i8
  store i8 %1402, i8* %29, align 1
  %1403 = lshr i32 %1387, 31
  %1404 = trunc i32 %1403 to i8
  store i8 %1404, i8* %32, align 1
  %1405 = lshr i32 %1386, 31
  %1406 = xor i32 %1403, %1405
  %1407 = add nuw nsw i32 %1406, %1403
  %1408 = icmp eq i32 %1407, 2
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %38, align 1
  %1410 = add i64 %1382, 9
  store i64 %1410, i64* %3, align 8
  store i32 %1387, i32* %1385, align 4
  %1411 = load i64, i64* %RBP.i, align 8
  %1412 = add i64 %1411, -40
  %1413 = load i64, i64* %3, align 8
  %1414 = add i64 %1413, 3
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1412 to i32*
  %1416 = load i32, i32* %1415, align 4
  %1417 = zext i32 %1416 to i64
  store i64 %1417, i64* %RAX.i344, align 8
  %1418 = add i64 %1411, -36
  %1419 = add i64 %1413, 6
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i32*
  %1421 = load i32, i32* %1420, align 4
  %1422 = zext i32 %1421 to i64
  store i64 %1422, i64* %RCX.i409, align 8
  %1423 = add i64 %1411, -120
  %1424 = add i64 %1413, 9
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1423 to i32*
  store i32 %1416, i32* %1425, align 4
  %1426 = load i32, i32* %ECX.i484, align 4
  %1427 = zext i32 %1426 to i64
  %1428 = load i64, i64* %3, align 8
  store i64 %1427, i64* %RAX.i344, align 8
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1430 = sext i32 %1426 to i64
  %1431 = lshr i64 %1430, 32
  store i64 %1431, i64* %1429, align 8
  %1432 = load i64, i64* %RBP.i, align 8
  %1433 = add i64 %1432, -120
  %1434 = add i64 %1428, 6
  store i64 %1434, i64* %3, align 8
  %1435 = inttoptr i64 %1433 to i32*
  %1436 = load i32, i32* %1435, align 4
  %1437 = zext i32 %1436 to i64
  store i64 %1437, i64* %RCX.i409, align 8
  %1438 = add i64 %1428, 8
  store i64 %1438, i64* %3, align 8
  %1439 = sext i32 %1436 to i64
  %1440 = shl nuw i64 %1431, 32
  %1441 = or i64 %1440, %1427
  %1442 = sdiv i64 %1441, %1439
  %1443 = shl i64 %1442, 32
  %1444 = ashr exact i64 %1443, 32
  %1445 = icmp eq i64 %1442, %1444
  br i1 %1445, label %1448, label %1446

; <label>:1446:                                   ; preds = %block_447c02
  %EAX.i29 = bitcast %union.anon* %39 to i32*
  %1447 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1438, %struct.Memory* %MEMORY.8)
  %.pre44 = load i64, i64* %RBP.i, align 8
  %.pre45 = load i32, i32* %EAX.i29, align 4
  %.pre46 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:1448:                                   ; preds = %block_447c02
  %1449 = srem i64 %1441, %1439
  %1450 = and i64 %1442, 4294967295
  store i64 %1450, i64* %RAX.i344, align 8
  %1451 = and i64 %1449, 4294967295
  store i64 %1451, i64* %RDX.i485, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1452 = trunc i64 %1442 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1448, %1446
  %1453 = phi i64 [ %.pre46, %1446 ], [ %1438, %1448 ]
  %1454 = phi i32 [ %.pre45, %1446 ], [ %1452, %1448 ]
  %1455 = phi i64 [ %.pre44, %1446 ], [ %1432, %1448 ]
  %1456 = phi %struct.Memory* [ %1447, %1446 ], [ %MEMORY.8, %1448 ]
  %1457 = add i64 %1455, -36
  %1458 = add i64 %1453, 3
  store i64 %1458, i64* %3, align 8
  %1459 = inttoptr i64 %1457 to i32*
  store i32 %1454, i32* %1459, align 4
  %.pre47 = load i64, i64* %RBP.i, align 8
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_447c1f

block_.L_447c1f:                                  ; preds = %block_.L_447bf8, %routine_idivl__ecx.exit
  %1460 = phi i64 [ %1382, %block_.L_447bf8 ], [ %.pre48, %routine_idivl__ecx.exit ]
  %1461 = phi i64 [ %1356, %block_.L_447bf8 ], [ %.pre47, %routine_idivl__ecx.exit ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.8, %block_.L_447bf8 ], [ %1456, %routine_idivl__ecx.exit ]
  %1462 = add i64 %1461, -36
  %1463 = add i64 %1460, 3
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1462 to i32*
  %1465 = load i32, i32* %1464, align 4
  %1466 = zext i32 %1465 to i64
  store i64 %1466, i64* %RAX.i344, align 8
  %1467 = load i64, i64* %6, align 8
  %1468 = add i64 %1467, 128
  store i64 %1468, i64* %6, align 8
  %1469 = icmp ugt i64 %1467, -129
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %14, align 1
  %1471 = trunc i64 %1468 to i32
  %1472 = and i32 %1471, 255
  %1473 = tail call i32 @llvm.ctpop.i32(i32 %1472)
  %1474 = trunc i32 %1473 to i8
  %1475 = and i8 %1474, 1
  %1476 = xor i8 %1475, 1
  store i8 %1476, i8* %21, align 1
  %1477 = xor i64 %1468, %1467
  %1478 = lshr i64 %1477, 4
  %1479 = trunc i64 %1478 to i8
  %1480 = and i8 %1479, 1
  store i8 %1480, i8* %26, align 1
  %1481 = icmp eq i64 %1468, 0
  %1482 = zext i1 %1481 to i8
  store i8 %1482, i8* %29, align 1
  %1483 = lshr i64 %1468, 63
  %1484 = trunc i64 %1483 to i8
  store i8 %1484, i8* %32, align 1
  %1485 = lshr i64 %1467, 63
  %1486 = xor i64 %1483, %1485
  %1487 = add nuw nsw i64 %1486, %1483
  %1488 = icmp eq i64 %1487, 2
  %1489 = zext i1 %1488 to i8
  store i8 %1489, i8* %38, align 1
  %1490 = add i64 %1460, 11
  store i64 %1490, i64* %3, align 8
  %1491 = add i64 %1467, 136
  %1492 = inttoptr i64 %1468 to i64*
  %1493 = load i64, i64* %1492, align 8
  store i64 %1493, i64* %RBP.i, align 8
  store i64 %1491, i64* %6, align 8
  %1494 = add i64 %1460, 12
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1491 to i64*
  %1496 = load i64, i64* %1495, align 8
  store i64 %1496, i64* %3, align 8
  %1497 = add i64 %1467, 144
  store i64 %1497, i64* %6, align 8
  ret %struct.Memory* %MEMORY.9
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
define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 128
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
define %struct.Memory* @routine_movq__0x4b9070___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b9070_type* @G__0x4b9070 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x30___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 48, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x60__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__r9____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x60__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -96
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x11bfc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72700
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_je_.L_447a90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
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
define %struct.Memory* @routine_leaq_MINUS0x20__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl_MINUS0x68__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x4___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, -4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp ult i32 %5, 4
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, %5
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
  %30 = lshr i32 %5, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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
define %struct.Memory* @routine_movl__r10d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.getChroma4x4Neighbour(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_447952(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xe0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 224
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
define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x93c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2364
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
define %struct.Memory* @routine_movq_0x11868__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71784
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl_MINUS0x20__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4479ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x80__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_movslq__eax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_addl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -5
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
define %struct.Memory* @routine_movl___rcx__rdi_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__0xffffffff___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 4294967295, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x70__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_je_.L_447a2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_447a8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x74__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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
define %struct.Memory* @routine_jmpq_.L_447bf8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
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
define %struct.Memory* @routine_je_.L_447aff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_447b40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x80__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_addl_MINUS0x14__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_447baf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_447bf3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x24__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jne_.L_447c1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -129
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
