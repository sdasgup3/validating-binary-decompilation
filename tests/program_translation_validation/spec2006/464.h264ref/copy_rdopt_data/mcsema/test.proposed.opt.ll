; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6d4518_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
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
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6d4518 = local_unnamed_addr global %G_0x6d4518_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4311d0.copy_motion_vectors_MB(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @copy_rdopt_data(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -88
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 80
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i762 = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -12
  %42 = load i32, i32* %EDI.i762, align 4
  %43 = add i64 %10, 10
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i778 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %47, i64* %RAX.i778, align 8
  %RDI.i2177 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %48 = add i64 %47, 12
  %49 = add i64 %46, 11
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %48 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %RDI.i2177, align 8
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -8
  %55 = add i64 %46, 14
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %54 to i32*
  store i32 %51, i32* %56, align 4
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %58, i64* %RAX.i778, align 8
  %59 = add i64 %58, 14168
  %60 = add i64 %57, 15
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %59 to i64*
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %RAX.i778, align 8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i2230 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -8
  %66 = add i64 %57, 19
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = mul nsw i64 %69, 632
  store i64 %70, i64* %RCX.i2230, align 8
  %71 = lshr i64 %70, 63
  %72 = add i64 %70, %62
  %73 = icmp ult i64 %72, %62
  %74 = icmp ult i64 %72, %70
  %75 = or i1 %73, %74
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %14, align 1
  %77 = trunc i64 %72 to i32
  %78 = and i32 %77, 255
  %79 = tail call i32 @llvm.ctpop.i32(i32 %78)
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = xor i8 %81, 1
  store i8 %82, i8* %21, align 1
  %83 = xor i64 %70, %62
  %84 = xor i64 %83, %72
  %85 = lshr i64 %84, 4
  %86 = trunc i64 %85 to i8
  %87 = and i8 %86, 1
  store i8 %87, i8* %27, align 1
  %88 = icmp eq i64 %72, 0
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %30, align 1
  %90 = lshr i64 %72, 63
  %91 = trunc i64 %90 to i8
  store i8 %91, i8* %33, align 1
  %92 = lshr i64 %62, 63
  %93 = xor i64 %90, %92
  %94 = xor i64 %90, %71
  %95 = add nuw nsw i64 %93, %94
  %96 = icmp eq i64 %95, 2
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %39, align 1
  %98 = add i64 %64, -16
  %99 = add i64 %57, 33
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %98 to i64*
  store i64 %72, i64* %100, align 8
  %101 = load i64, i64* %3, align 8
  %102 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %102, i64* %RAX.i778, align 8
  %103 = add i64 %102, 24
  %104 = add i64 %101, 12
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 1
  %108 = zext i1 %107 to i8
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL.i2216 = bitcast %union.anon* %109 to i8*
  store i8 %108, i8* %DL.i2216, align 1
  store i8 0, i8* %14, align 1
  %110 = zext i1 %107 to i32
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110)
  %112 = trunc i32 %111 to i8
  %113 = xor i8 %112, 1
  store i8 %113, i8* %21, align 1
  %114 = xor i8 %108, 1
  store i8 %114, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %115 = zext i1 %107 to i64
  store i64 %115, i64* %RDI.i2177, align 8
  %116 = load i64, i64* %RBP.i, align 8
  %117 = add i64 %116, -36
  %118 = zext i1 %107 to i32
  %119 = add i64 %101, 24
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %117 to i32*
  store i32 %118, i32* %120, align 4
  %121 = load i64, i64* %3, align 8
  %122 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %122, i64* %RAX.i778, align 8
  %123 = add i64 %122, 72400
  %124 = add i64 %121, 15
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
  %.v167 = select i1 %132, i64 84, i64 21
  %136 = add i64 %121, %.v167
  store i64 %136, i64* %3, align 8
  %.pre109 = load i64, i64* %RBP.i, align 8
  br i1 %132, label %block_.L_430146, label %block_430107

block_430107:                                     ; preds = %entry
  %137 = add i64 %.pre109, -16
  %138 = add i64 %136, 4
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i64*
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %RAX.i778, align 8
  %141 = add i64 %140, 532
  %142 = add i64 %136, 11
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %141 to i32*
  %144 = load i32, i32* %143, align 4
  store i8 0, i8* %14, align 1
  %145 = and i32 %144, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145)
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %150 = icmp eq i32 %144, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %30, align 1
  %152 = lshr i32 %144, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v168 = select i1 %150, i64 63, i64 17
  %154 = add i64 %136, %.v168
  store i64 %154, i64* %3, align 8
  br i1 %150, label %block_.L_430146, label %block_430118

block_430118:                                     ; preds = %block_430107
  store i64 2, i64* %RAX.i778, align 8
  store i64 4, i64* %RCX.i2230, align 8
  %RDX.i2192 = getelementptr inbounds %union.anon, %union.anon* %109, i64 0, i32 0
  store i64 %122, i64* %RDX.i2192, align 8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i2190 = getelementptr inbounds %union.anon, %union.anon* %155, i64 0, i32 0
  %156 = add i64 %122, 12
  %157 = add i64 %154, 21
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RSI.i2190, align 8
  %161 = add i64 %.pre109, -56
  %162 = add i64 %154, 24
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %161 to i32*
  store i32 2, i32* %163, align 4
  %ESI.i2183 = bitcast %union.anon* %155 to i32*
  %164 = load i32, i32* %ESI.i2183, align 4
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* %3, align 8
  store i64 %165, i64* %RAX.i778, align 8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %168 = sext i32 %164 to i64
  %169 = lshr i64 %168, 32
  store i64 %169, i64* %167, align 8
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -56
  %172 = add i64 %166, 6
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i32*
  %174 = load i32, i32* %173, align 4
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RSI.i2190, align 8
  %176 = add i64 %166, 8
  store i64 %176, i64* %3, align 8
  %177 = bitcast %union.anon* %109 to i32*
  %178 = sext i32 %174 to i64
  %179 = shl nuw i64 %169, 32
  %180 = or i64 %179, %165
  %181 = sdiv i64 %180, %178
  %182 = shl i64 %181, 32
  %183 = ashr exact i64 %182, 32
  %184 = icmp eq i64 %181, %183
  br i1 %184, label %187, label %185

; <label>:185:                                    ; preds = %block_430118
  %186 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %176, %struct.Memory* %2)
  %.pre = load i32, i32* %177, align 4
  %.pre106 = load i64, i64* %3, align 8
  %.pre107 = load i64, i64* %RSI.i2190, align 8
  %.pre108 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit2174

; <label>:187:                                    ; preds = %block_430118
  %188 = srem i64 %180, %178
  %189 = and i64 %181, 4294967295
  store i64 %189, i64* %RAX.i778, align 8
  %190 = and i64 %188, 4294967295
  store i64 %190, i64* %RDX.i2192, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %191 = trunc i64 %188 to i32
  br label %routine_idivl__esi.exit2174

routine_idivl__esi.exit2174:                      ; preds = %187, %185
  %192 = phi i64 [ %.pre108, %185 ], [ %170, %187 ]
  %193 = phi i64 [ %.pre107, %185 ], [ %175, %187 ]
  %194 = phi i64 [ %.pre106, %185 ], [ %176, %187 ]
  %195 = phi i32 [ %.pre, %185 ], [ %191, %187 ]
  %196 = phi %struct.Memory* [ %186, %185 ], [ %2, %187 ]
  store i8 0, i8* %14, align 1
  %197 = and i32 %195, 255
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197)
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %202 = icmp eq i32 %195, 0
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %30, align 1
  %204 = lshr i32 %195, 31
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %ECX.i2168 = bitcast %union.anon* %63 to i32*
  %206 = load i32, i32* %ECX.i2168, align 4
  %207 = zext i32 %206 to i64
  %208 = select i1 %202, i64 %193, i64 %207
  %209 = and i64 %208, 4294967295
  store i64 %209, i64* %RSI.i2190, align 8
  %210 = add i64 %192, -60
  %211 = trunc i64 %208 to i32
  %212 = add i64 %194, 9
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %210 to i32*
  store i32 %211, i32* %213, align 4
  %214 = load i64, i64* %3, align 8
  %215 = add i64 %214, 15
  br label %block_.L_430150

block_.L_430146:                                  ; preds = %entry, %block_430107
  %216 = phi i64 [ %154, %block_430107 ], [ %136, %entry ]
  store i64 0, i64* %RAX.i778, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %217 = add i64 %.pre109, -60
  %218 = add i64 %216, 5
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i32*
  store i32 0, i32* %219, align 4
  %220 = load i64, i64* %3, align 8
  %221 = add i64 %220, 5
  store i64 %221, i64* %3, align 8
  %.pre154 = getelementptr inbounds %union.anon, %union.anon* %109, i64 0, i32 0
  %.pre155 = bitcast %union.anon* %109 to i32*
  br label %block_.L_430150

block_.L_430150:                                  ; preds = %block_.L_430146, %routine_idivl__esi.exit2174
  %EDX.i2032.pre-phi = phi i32* [ %.pre155, %block_.L_430146 ], [ %177, %routine_idivl__esi.exit2174 ]
  %RDX.i2114.pre-phi = phi i64* [ %.pre154, %block_.L_430146 ], [ %RDX.i2192, %routine_idivl__esi.exit2174 ]
  %storemerge = phi i64 [ %221, %block_.L_430146 ], [ %215, %routine_idivl__esi.exit2174 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_.L_430146 ], [ %196, %routine_idivl__esi.exit2174 ]
  %EAX.i2151.pre-phi = bitcast %union.anon* %45 to i32*
  %222 = load i64, i64* %RBP.i, align 8
  %223 = add i64 %222, -60
  %224 = add i64 %storemerge, 3
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %223 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %RAX.i778, align 8
  %228 = add i64 %222, -52
  %229 = add i64 %storemerge, 6
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i32*
  store i32 %226, i32* %230, align 4
  %231 = load i64, i64* %3, align 8
  %232 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %232, i64* %RCX.i2230, align 8
  %233 = add i64 %232, 3224
  %234 = add i64 %231, 14
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %233 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %RAX.i778, align 8
  %238 = load i64, i64* %RBP.i, align 8
  %239 = add i64 %238, -40
  %240 = add i64 %231, 17
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i32*
  store i32 %236, i32* %241, align 4
  %242 = load i64, i64* %3, align 8
  %243 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %243, i64* %RCX.i2230, align 8
  %244 = add i64 %243, 3096
  %245 = add i64 %242, 14
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i32*
  %247 = load i32, i32* %246, align 4
  %248 = zext i32 %247 to i64
  store i64 %248, i64* %RAX.i778, align 8
  %249 = load i64, i64* %RBP.i, align 8
  %250 = add i64 %249, -16
  %251 = add i64 %242, 18
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i64*
  %253 = load i64, i64* %252, align 8
  %254 = add i64 %253, 72
  %255 = add i64 %242, 21
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  store i32 %247, i32* %256, align 4
  %257 = load i64, i64* %3, align 8
  %258 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %258, i64* %RCX.i2230, align 8
  %259 = add i64 %258, 3208
  %260 = add i64 %257, 14
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = zext i32 %262 to i64
  store i64 %263, i64* %RAX.i778, align 8
  %264 = load i64, i64* %RBP.i, align 8
  %265 = add i64 %264, -16
  %266 = add i64 %257, 18
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i64*
  %268 = load i64, i64* %267, align 8
  %269 = add i64 %268, 460
  %270 = add i64 %257, 24
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i32*
  store i32 %262, i32* %271, align 4
  %272 = load i64, i64* %3, align 8
  %273 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %273, i64* %RCX.i2230, align 8
  %274 = add i64 %273, 3216
  %275 = add i64 %272, 15
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i64*
  %277 = load i64, i64* %276, align 8
  store i64 %277, i64* %RCX.i2230, align 8
  %278 = load i64, i64* %RBP.i, align 8
  %279 = add i64 %278, -16
  %280 = add i64 %272, 19
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i64*
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %RDX.i2114.pre-phi, align 8
  %283 = add i64 %282, 464
  %284 = add i64 %272, 26
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i64*
  store i64 %277, i64* %285, align 8
  %286 = load i64, i64* %3, align 8
  %287 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %287, i64* %RCX.i2230, align 8
  %288 = add i64 %287, 3100
  %289 = add i64 %286, 14
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = zext i32 %291 to i64
  store i64 %292, i64* %RAX.i778, align 8
  %293 = load i64, i64* %RBP.i, align 8
  %294 = add i64 %293, -16
  %295 = add i64 %286, 18
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %294 to i64*
  %297 = load i64, i64* %296, align 8
  %298 = add i64 %297, 580
  %299 = add i64 %286, 24
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to i32*
  store i32 %291, i32* %300, align 4
  %301 = load i64, i64* %3, align 8
  %302 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %302, i64* %RCX.i2230, align 8
  %303 = add i64 %302, 3328
  %304 = add i64 %301, 14
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = zext i32 %306 to i64
  store i64 %307, i64* %RAX.i778, align 8
  %308 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %309 = add i64 %308, 72380
  %310 = add i64 %301, 28
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to i32*
  store i32 %306, i32* %311, align 4
  %312 = load i64, i64* %3, align 8
  %313 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %313, i64* %RCX.i2230, align 8
  %314 = add i64 %313, 3348
  %315 = add i64 %312, 14
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RAX.i778, align 8
  %319 = load i64, i64* %RBP.i, align 8
  %320 = add i64 %319, -16
  %321 = add i64 %312, 18
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %320 to i64*
  %323 = load i64, i64* %322, align 8
  %324 = add i64 %323, 592
  %325 = add i64 %312, 24
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %324 to i32*
  store i32 %317, i32* %326, align 4
  %327 = load i64, i64* %3, align 8
  %328 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %328, i64* %RCX.i2230, align 8
  %329 = add i64 %328, 3352
  %330 = add i64 %327, 14
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = zext i32 %332 to i64
  store i64 %333, i64* %RAX.i778, align 8
  %334 = load i64, i64* %RBP.i, align 8
  %335 = add i64 %334, -16
  %336 = add i64 %327, 18
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %335 to i64*
  %338 = load i64, i64* %337, align 8
  %339 = add i64 %338, 596
  %340 = add i64 %327, 24
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i32*
  store i32 %332, i32* %341, align 4
  %342 = load i64, i64* %3, align 8
  %343 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %343, i64* %RCX.i2230, align 8
  %344 = add i64 %343, 3344
  %345 = add i64 %342, 14
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %344 to i32*
  %347 = load i32, i32* %346, align 4
  %348 = zext i32 %347 to i64
  store i64 %348, i64* %RAX.i778, align 8
  %349 = load i64, i64* %RBP.i, align 8
  %350 = add i64 %349, -16
  %351 = add i64 %342, 18
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i64*
  %353 = load i64, i64* %352, align 8
  %354 = add i64 %353, 12
  %355 = add i64 %342, 21
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i32*
  store i32 %347, i32* %356, align 4
  %357 = load i64, i64* %3, align 8
  %358 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %358, i64* %RCX.i2230, align 8
  %359 = add i64 %358, 3332
  %360 = add i64 %357, 14
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %359 to i32*
  %362 = load i32, i32* %361, align 4
  %363 = zext i32 %362 to i64
  store i64 %363, i64* %RAX.i778, align 8
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -16
  %366 = add i64 %357, 18
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i64*
  %368 = load i64, i64* %367, align 8
  store i64 %368, i64* %RCX.i2230, align 8
  %369 = add i64 %368, 524
  %370 = add i64 %357, 24
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to i32*
  store i32 %362, i32* %371, align 4
  %372 = load i64, i64* %RBP.i, align 8
  %373 = add i64 %372, -20
  %374 = load i64, i64* %3, align 8
  %375 = add i64 %374, 7
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %373 to i32*
  store i32 0, i32* %376, align 4
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_430246

block_.L_430246:                                  ; preds = %block_.L_430325, %block_.L_430150
  %377 = phi i64 [ %721, %block_.L_430325 ], [ %.pre110, %block_.L_430150 ]
  %378 = load i64, i64* %RBP.i, align 8
  %379 = add i64 %378, -20
  %380 = add i64 %377, 3
  store i64 %380, i64* %3, align 8
  %381 = inttoptr i64 %379 to i32*
  %382 = load i32, i32* %381, align 4
  %383 = zext i32 %382 to i64
  store i64 %383, i64* %RAX.i778, align 8
  %384 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %384, i64* %RCX.i2230, align 8
  %385 = add i64 %384, 72692
  %386 = add i64 %377, 17
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i32*
  %388 = load i32, i32* %387, align 4
  %389 = add i32 %388, 4
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RDX.i2114.pre-phi, align 8
  %391 = lshr i32 %389, 31
  %392 = sub i32 %382, %389
  %393 = icmp ult i32 %382, %389
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %14, align 1
  %395 = and i32 %392, 255
  %396 = tail call i32 @llvm.ctpop.i32(i32 %395)
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  %399 = xor i8 %398, 1
  store i8 %399, i8* %21, align 1
  %400 = xor i32 %389, %382
  %401 = xor i32 %400, %392
  %402 = lshr i32 %401, 4
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  store i8 %404, i8* %27, align 1
  %405 = icmp eq i32 %392, 0
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %30, align 1
  %407 = lshr i32 %392, 31
  %408 = trunc i32 %407 to i8
  store i8 %408, i8* %33, align 1
  %409 = lshr i32 %382, 31
  %410 = xor i32 %391, %409
  %411 = xor i32 %407, %409
  %412 = add nuw nsw i32 %411, %410
  %413 = icmp eq i32 %412, 2
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %39, align 1
  %415 = icmp ne i8 %408, 0
  %416 = xor i1 %415, %413
  %.v169 = select i1 %416, i64 28, i64 242
  %417 = add i64 %377, %.v169
  store i64 %417, i64* %3, align 8
  br i1 %416, label %block_430262, label %block_.L_430338

block_430262:                                     ; preds = %block_.L_430246
  %418 = add i64 %378, -24
  %419 = add i64 %417, 7
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i32*
  store i32 0, i32* %420, align 4
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_430269

block_.L_430269:                                  ; preds = %block_.L_430312, %block_430262
  %421 = phi i64 [ %691, %block_.L_430312 ], [ %.pre149, %block_430262 ]
  %422 = load i64, i64* %RBP.i, align 8
  %423 = add i64 %422, -24
  %424 = add i64 %421, 4
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = add i32 %426, -4
  %428 = icmp ult i32 %426, 4
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %14, align 1
  %430 = and i32 %427, 255
  %431 = tail call i32 @llvm.ctpop.i32(i32 %430)
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = xor i8 %433, 1
  store i8 %434, i8* %21, align 1
  %435 = xor i32 %427, %426
  %436 = lshr i32 %435, 4
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  store i8 %438, i8* %27, align 1
  %439 = icmp eq i32 %427, 0
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %30, align 1
  %441 = lshr i32 %427, 31
  %442 = trunc i32 %441 to i8
  store i8 %442, i8* %33, align 1
  %443 = lshr i32 %426, 31
  %444 = xor i32 %441, %443
  %445 = add nuw nsw i32 %444, %443
  %446 = icmp eq i32 %445, 2
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %39, align 1
  %448 = icmp ne i8 %442, 0
  %449 = xor i1 %448, %446
  %.v164 = select i1 %449, i64 10, i64 188
  %450 = add i64 %421, %.v164
  store i64 %450, i64* %3, align 8
  br i1 %449, label %block_430273, label %block_.L_430325

block_430273:                                     ; preds = %block_.L_430269
  %451 = add i64 %422, -28
  %452 = add i64 %450, 7
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i32*
  store i32 0, i32* %453, align 4
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_43027a

block_.L_43027a:                                  ; preds = %block_.L_4302ff, %block_430273
  %454 = phi i64 [ %661, %block_.L_4302ff ], [ %.pre150, %block_430273 ]
  %455 = load i64, i64* %RBP.i, align 8
  %456 = add i64 %455, -28
  %457 = add i64 %454, 4
  store i64 %457, i64* %3, align 8
  %458 = inttoptr i64 %456 to i32*
  %459 = load i32, i32* %458, align 4
  %460 = add i32 %459, -2
  %461 = icmp ult i32 %459, 2
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %14, align 1
  %463 = and i32 %460, 255
  %464 = tail call i32 @llvm.ctpop.i32(i32 %463)
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = xor i8 %466, 1
  store i8 %467, i8* %21, align 1
  %468 = xor i32 %460, %459
  %469 = lshr i32 %468, 4
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  store i8 %471, i8* %27, align 1
  %472 = icmp eq i32 %460, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %30, align 1
  %474 = lshr i32 %460, 31
  %475 = trunc i32 %474 to i8
  store i8 %475, i8* %33, align 1
  %476 = lshr i32 %459, 31
  %477 = xor i32 %474, %476
  %478 = add nuw nsw i32 %477, %476
  %479 = icmp eq i32 %478, 2
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %39, align 1
  %481 = icmp ne i8 %475, 0
  %482 = xor i1 %481, %479
  %.v165 = select i1 %482, i64 10, i64 152
  %483 = add i64 %454, %.v165
  store i64 %483, i64* %3, align 8
  br i1 %482, label %block_430284, label %block_.L_430312

block_430284:                                     ; preds = %block_.L_43027a
  %484 = add i64 %455, -32
  %485 = add i64 %483, 7
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i32*
  store i32 0, i32* %486, align 4
  %.pre151 = load i64, i64* %3, align 8
  br label %block_.L_43028b

block_.L_43028b:                                  ; preds = %block_430295, %block_430284
  %487 = phi i64 [ %631, %block_430295 ], [ %.pre151, %block_430284 ]
  %488 = load i64, i64* %RBP.i, align 8
  %489 = add i64 %488, -32
  %490 = add i64 %487, 4
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i32*
  %492 = load i32, i32* %491, align 4
  %493 = add i32 %492, -65
  %494 = icmp ult i32 %492, 65
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %14, align 1
  %496 = and i32 %493, 255
  %497 = tail call i32 @llvm.ctpop.i32(i32 %496)
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  %500 = xor i8 %499, 1
  store i8 %500, i8* %21, align 1
  %501 = xor i32 %493, %492
  %502 = lshr i32 %501, 4
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  store i8 %504, i8* %27, align 1
  %505 = icmp eq i32 %493, 0
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %30, align 1
  %507 = lshr i32 %493, 31
  %508 = trunc i32 %507 to i8
  store i8 %508, i8* %33, align 1
  %509 = lshr i32 %492, 31
  %510 = xor i32 %507, %509
  %511 = add nuw nsw i32 %510, %509
  %512 = icmp eq i32 %511, 2
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %39, align 1
  %514 = icmp ne i8 %508, 0
  %515 = xor i1 %514, %512
  %.v166 = select i1 %515, i64 10, i64 116
  %516 = add i64 %487, %.v166
  store i64 %516, i64* %3, align 8
  br i1 %515, label %block_430295, label %block_.L_4302ff

block_430295:                                     ; preds = %block_.L_43028b
  %517 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %517, i64* %RAX.i778, align 8
  %518 = add i64 %517, 3080
  %519 = add i64 %516, 15
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i64*
  %521 = load i64, i64* %520, align 8
  store i64 %521, i64* %RAX.i778, align 8
  %522 = add i64 %488, -20
  %523 = add i64 %516, 19
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i32*
  %525 = load i32, i32* %524, align 4
  %526 = sext i32 %525 to i64
  store i64 %526, i64* %RCX.i2230, align 8
  %527 = shl nsw i64 %526, 3
  %528 = add i64 %527, %521
  %529 = add i64 %516, 23
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i64*
  %531 = load i64, i64* %530, align 8
  store i64 %531, i64* %RAX.i778, align 8
  %532 = add i64 %488, -24
  %533 = add i64 %516, 27
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %532 to i32*
  %535 = load i32, i32* %534, align 4
  %536 = sext i32 %535 to i64
  store i64 %536, i64* %RCX.i2230, align 8
  %537 = shl nsw i64 %536, 3
  %538 = add i64 %537, %531
  %539 = add i64 %516, 31
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i64*
  %541 = load i64, i64* %540, align 8
  store i64 %541, i64* %RAX.i778, align 8
  %542 = add i64 %488, -28
  %543 = add i64 %516, 35
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i32*
  %545 = load i32, i32* %544, align 4
  %546 = sext i32 %545 to i64
  store i64 %546, i64* %RCX.i2230, align 8
  %547 = shl nsw i64 %546, 3
  %548 = add i64 %547, %541
  %549 = add i64 %516, 39
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %548 to i64*
  %551 = load i64, i64* %550, align 8
  store i64 %551, i64* %RAX.i778, align 8
  %552 = add i64 %516, 43
  store i64 %552, i64* %3, align 8
  %553 = load i32, i32* %491, align 4
  %554 = sext i32 %553 to i64
  store i64 %554, i64* %RCX.i2230, align 8
  %555 = shl nsw i64 %554, 2
  %556 = add i64 %555, %551
  %557 = add i64 %516, 46
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i32*
  %559 = load i32, i32* %558, align 4
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %RDX.i2114.pre-phi, align 8
  %561 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %561, i64* %RAX.i778, align 8
  %562 = add i64 %561, 14136
  %563 = add i64 %516, 61
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i64*
  %565 = load i64, i64* %564, align 8
  store i64 %565, i64* %RAX.i778, align 8
  %566 = add i64 %516, 65
  store i64 %566, i64* %3, align 8
  %567 = load i32, i32* %524, align 4
  %568 = sext i32 %567 to i64
  store i64 %568, i64* %RCX.i2230, align 8
  %569 = shl nsw i64 %568, 3
  %570 = add i64 %569, %565
  %571 = add i64 %516, 69
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %570 to i64*
  %573 = load i64, i64* %572, align 8
  store i64 %573, i64* %RAX.i778, align 8
  %574 = add i64 %516, 73
  store i64 %574, i64* %3, align 8
  %575 = load i32, i32* %534, align 4
  %576 = sext i32 %575 to i64
  store i64 %576, i64* %RCX.i2230, align 8
  %577 = shl nsw i64 %576, 3
  %578 = add i64 %577, %573
  %579 = add i64 %516, 77
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i64*
  %581 = load i64, i64* %580, align 8
  store i64 %581, i64* %RAX.i778, align 8
  %582 = add i64 %516, 81
  store i64 %582, i64* %3, align 8
  %583 = load i32, i32* %544, align 4
  %584 = sext i32 %583 to i64
  store i64 %584, i64* %RCX.i2230, align 8
  %585 = shl nsw i64 %584, 3
  %586 = add i64 %585, %581
  %587 = add i64 %516, 85
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i64*
  %589 = load i64, i64* %588, align 8
  store i64 %589, i64* %RAX.i778, align 8
  %590 = load i64, i64* %RBP.i, align 8
  %591 = add i64 %590, -32
  %592 = add i64 %516, 89
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i32*
  %594 = load i32, i32* %593, align 4
  %595 = sext i32 %594 to i64
  store i64 %595, i64* %RCX.i2230, align 8
  %596 = shl nsw i64 %595, 2
  %597 = add i64 %596, %589
  %598 = add i64 %516, 92
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %597 to i32*
  store i32 %559, i32* %599, align 4
  %600 = load i64, i64* %RBP.i, align 8
  %601 = add i64 %600, -32
  %602 = load i64, i64* %3, align 8
  %603 = add i64 %602, 3
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %601 to i32*
  %605 = load i32, i32* %604, align 4
  %606 = add i32 %605, 1
  %607 = zext i32 %606 to i64
  store i64 %607, i64* %RAX.i778, align 8
  %608 = icmp eq i32 %605, -1
  %609 = icmp eq i32 %606, 0
  %610 = or i1 %608, %609
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %14, align 1
  %612 = and i32 %606, 255
  %613 = tail call i32 @llvm.ctpop.i32(i32 %612)
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  store i8 %616, i8* %21, align 1
  %617 = xor i32 %606, %605
  %618 = lshr i32 %617, 4
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  store i8 %620, i8* %27, align 1
  %621 = zext i1 %609 to i8
  store i8 %621, i8* %30, align 1
  %622 = lshr i32 %606, 31
  %623 = trunc i32 %622 to i8
  store i8 %623, i8* %33, align 1
  %624 = lshr i32 %605, 31
  %625 = xor i32 %622, %624
  %626 = add nuw nsw i32 %625, %622
  %627 = icmp eq i32 %626, 2
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %39, align 1
  %629 = add i64 %602, 9
  store i64 %629, i64* %3, align 8
  store i32 %606, i32* %604, align 4
  %630 = load i64, i64* %3, align 8
  %631 = add i64 %630, -111
  store i64 %631, i64* %3, align 8
  br label %block_.L_43028b

block_.L_4302ff:                                  ; preds = %block_.L_43028b
  %632 = add i64 %488, -28
  %633 = add i64 %516, 8
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i32*
  %635 = load i32, i32* %634, align 4
  %636 = add i32 %635, 1
  %637 = zext i32 %636 to i64
  store i64 %637, i64* %RAX.i778, align 8
  %638 = icmp eq i32 %635, -1
  %639 = icmp eq i32 %636, 0
  %640 = or i1 %638, %639
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %14, align 1
  %642 = and i32 %636, 255
  %643 = tail call i32 @llvm.ctpop.i32(i32 %642)
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  %646 = xor i8 %645, 1
  store i8 %646, i8* %21, align 1
  %647 = xor i32 %636, %635
  %648 = lshr i32 %647, 4
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  store i8 %650, i8* %27, align 1
  %651 = zext i1 %639 to i8
  store i8 %651, i8* %30, align 1
  %652 = lshr i32 %636, 31
  %653 = trunc i32 %652 to i8
  store i8 %653, i8* %33, align 1
  %654 = lshr i32 %635, 31
  %655 = xor i32 %652, %654
  %656 = add nuw nsw i32 %655, %652
  %657 = icmp eq i32 %656, 2
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %39, align 1
  %659 = add i64 %516, 14
  store i64 %659, i64* %3, align 8
  store i32 %636, i32* %634, align 4
  %660 = load i64, i64* %3, align 8
  %661 = add i64 %660, -147
  store i64 %661, i64* %3, align 8
  br label %block_.L_43027a

block_.L_430312:                                  ; preds = %block_.L_43027a
  %662 = add i64 %455, -24
  %663 = add i64 %483, 8
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = add i32 %665, 1
  %667 = zext i32 %666 to i64
  store i64 %667, i64* %RAX.i778, align 8
  %668 = icmp eq i32 %665, -1
  %669 = icmp eq i32 %666, 0
  %670 = or i1 %668, %669
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %14, align 1
  %672 = and i32 %666, 255
  %673 = tail call i32 @llvm.ctpop.i32(i32 %672)
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  store i8 %676, i8* %21, align 1
  %677 = xor i32 %666, %665
  %678 = lshr i32 %677, 4
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  store i8 %680, i8* %27, align 1
  %681 = zext i1 %669 to i8
  store i8 %681, i8* %30, align 1
  %682 = lshr i32 %666, 31
  %683 = trunc i32 %682 to i8
  store i8 %683, i8* %33, align 1
  %684 = lshr i32 %665, 31
  %685 = xor i32 %682, %684
  %686 = add nuw nsw i32 %685, %682
  %687 = icmp eq i32 %686, 2
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %39, align 1
  %689 = add i64 %483, 14
  store i64 %689, i64* %3, align 8
  store i32 %666, i32* %664, align 4
  %690 = load i64, i64* %3, align 8
  %691 = add i64 %690, -183
  store i64 %691, i64* %3, align 8
  br label %block_.L_430269

block_.L_430325:                                  ; preds = %block_.L_430269
  %692 = add i64 %422, -20
  %693 = add i64 %450, 8
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i32*
  %695 = load i32, i32* %694, align 4
  %696 = add i32 %695, 1
  %697 = zext i32 %696 to i64
  store i64 %697, i64* %RAX.i778, align 8
  %698 = icmp eq i32 %695, -1
  %699 = icmp eq i32 %696, 0
  %700 = or i1 %698, %699
  %701 = zext i1 %700 to i8
  store i8 %701, i8* %14, align 1
  %702 = and i32 %696, 255
  %703 = tail call i32 @llvm.ctpop.i32(i32 %702)
  %704 = trunc i32 %703 to i8
  %705 = and i8 %704, 1
  %706 = xor i8 %705, 1
  store i8 %706, i8* %21, align 1
  %707 = xor i32 %696, %695
  %708 = lshr i32 %707, 4
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  store i8 %710, i8* %27, align 1
  %711 = zext i1 %699 to i8
  store i8 %711, i8* %30, align 1
  %712 = lshr i32 %696, 31
  %713 = trunc i32 %712 to i8
  store i8 %713, i8* %33, align 1
  %714 = lshr i32 %695, 31
  %715 = xor i32 %712, %714
  %716 = add nuw nsw i32 %715, %712
  %717 = icmp eq i32 %716, 2
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %39, align 1
  %719 = add i64 %450, 14
  store i64 %719, i64* %3, align 8
  store i32 %696, i32* %694, align 4
  %720 = load i64, i64* %3, align 8
  %721 = add i64 %720, -237
  store i64 %721, i64* %3, align 8
  br label %block_.L_430246

block_.L_430338:                                  ; preds = %block_.L_430246
  %722 = add i64 %417, 7
  store i64 %722, i64* %3, align 8
  store i32 0, i32* %381, align 4
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_43033f

block_.L_43033f:                                  ; preds = %block_.L_4303d8, %block_.L_430338
  %723 = phi i64 [ %973, %block_.L_4303d8 ], [ %.pre111, %block_.L_430338 ]
  %724 = load i64, i64* %RBP.i, align 8
  %725 = add i64 %724, -20
  %726 = add i64 %723, 4
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = add i32 %728, -3
  %730 = icmp ult i32 %728, 3
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %14, align 1
  %732 = and i32 %729, 255
  %733 = tail call i32 @llvm.ctpop.i32(i32 %732)
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  %736 = xor i8 %735, 1
  store i8 %736, i8* %21, align 1
  %737 = xor i32 %729, %728
  %738 = lshr i32 %737, 4
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  store i8 %740, i8* %27, align 1
  %741 = icmp eq i32 %729, 0
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %30, align 1
  %743 = lshr i32 %729, 31
  %744 = trunc i32 %743 to i8
  store i8 %744, i8* %33, align 1
  %745 = lshr i32 %728, 31
  %746 = xor i32 %743, %745
  %747 = add nuw nsw i32 %746, %745
  %748 = icmp eq i32 %747, 2
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %39, align 1
  %750 = icmp ne i8 %744, 0
  %751 = xor i1 %750, %748
  %.v170 = select i1 %751, i64 10, i64 172
  %752 = add i64 %723, %.v170
  store i64 %752, i64* %3, align 8
  br i1 %751, label %block_430349, label %block_.L_4303eb

block_430349:                                     ; preds = %block_.L_43033f
  %753 = add i64 %724, -28
  %754 = add i64 %752, 7
  store i64 %754, i64* %3, align 8
  %755 = inttoptr i64 %753 to i32*
  store i32 0, i32* %755, align 4
  %.pre147 = load i64, i64* %3, align 8
  br label %block_.L_430350

block_.L_430350:                                  ; preds = %block_.L_4303c5, %block_430349
  %756 = phi i64 [ %943, %block_.L_4303c5 ], [ %.pre147, %block_430349 ]
  %757 = load i64, i64* %RBP.i, align 8
  %758 = add i64 %757, -28
  %759 = add i64 %756, 4
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to i32*
  %761 = load i32, i32* %760, align 4
  %762 = add i32 %761, -2
  %763 = icmp ult i32 %761, 2
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %14, align 1
  %765 = and i32 %762, 255
  %766 = tail call i32 @llvm.ctpop.i32(i32 %765)
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  store i8 %769, i8* %21, align 1
  %770 = xor i32 %762, %761
  %771 = lshr i32 %770, 4
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  store i8 %773, i8* %27, align 1
  %774 = icmp eq i32 %762, 0
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %30, align 1
  %776 = lshr i32 %762, 31
  %777 = trunc i32 %776 to i8
  store i8 %777, i8* %33, align 1
  %778 = lshr i32 %761, 31
  %779 = xor i32 %776, %778
  %780 = add nuw nsw i32 %779, %778
  %781 = icmp eq i32 %780, 2
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %39, align 1
  %783 = icmp ne i8 %777, 0
  %784 = xor i1 %783, %781
  %.v162 = select i1 %784, i64 10, i64 136
  %785 = add i64 %756, %.v162
  store i64 %785, i64* %3, align 8
  br i1 %784, label %block_43035a, label %block_.L_4303d8

block_43035a:                                     ; preds = %block_.L_430350
  %786 = add i64 %757, -32
  %787 = add i64 %785, 7
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i32*
  store i32 0, i32* %788, align 4
  %.pre148 = load i64, i64* %3, align 8
  br label %block_.L_430361

block_.L_430361:                                  ; preds = %block_43036b, %block_43035a
  %789 = phi i64 [ %913, %block_43036b ], [ %.pre148, %block_43035a ]
  %790 = load i64, i64* %RBP.i, align 8
  %791 = add i64 %790, -32
  %792 = add i64 %789, 4
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = add i32 %794, -18
  %796 = icmp ult i32 %794, 18
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %14, align 1
  %798 = and i32 %795, 255
  %799 = tail call i32 @llvm.ctpop.i32(i32 %798)
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  %802 = xor i8 %801, 1
  store i8 %802, i8* %21, align 1
  %803 = xor i32 %794, 16
  %804 = xor i32 %803, %795
  %805 = lshr i32 %804, 4
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  store i8 %807, i8* %27, align 1
  %808 = icmp eq i32 %795, 0
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %30, align 1
  %810 = lshr i32 %795, 31
  %811 = trunc i32 %810 to i8
  store i8 %811, i8* %33, align 1
  %812 = lshr i32 %794, 31
  %813 = xor i32 %810, %812
  %814 = add nuw nsw i32 %813, %812
  %815 = icmp eq i32 %814, 2
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %39, align 1
  %817 = icmp ne i8 %811, 0
  %818 = xor i1 %817, %815
  %.v163 = select i1 %818, i64 10, i64 100
  %819 = add i64 %789, %.v163
  store i64 %819, i64* %3, align 8
  br i1 %818, label %block_43036b, label %block_.L_4303c5

block_43036b:                                     ; preds = %block_.L_430361
  %820 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %820, i64* %RAX.i778, align 8
  %821 = add i64 %820, 3088
  %822 = add i64 %819, 15
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i64*
  %824 = load i64, i64* %823, align 8
  store i64 %824, i64* %RAX.i778, align 8
  %825 = add i64 %790, -20
  %826 = add i64 %819, 19
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to i32*
  %828 = load i32, i32* %827, align 4
  %829 = sext i32 %828 to i64
  store i64 %829, i64* %RCX.i2230, align 8
  %830 = shl nsw i64 %829, 3
  %831 = add i64 %830, %824
  %832 = add i64 %819, 23
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i64*
  %834 = load i64, i64* %833, align 8
  store i64 %834, i64* %RAX.i778, align 8
  %835 = add i64 %790, -28
  %836 = add i64 %819, 27
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = sext i32 %838 to i64
  store i64 %839, i64* %RCX.i2230, align 8
  %840 = shl nsw i64 %839, 3
  %841 = add i64 %840, %834
  %842 = add i64 %819, 31
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i64*
  %844 = load i64, i64* %843, align 8
  store i64 %844, i64* %RAX.i778, align 8
  %845 = add i64 %819, 35
  store i64 %845, i64* %3, align 8
  %846 = load i32, i32* %793, align 4
  %847 = sext i32 %846 to i64
  store i64 %847, i64* %RCX.i2230, align 8
  %848 = shl nsw i64 %847, 2
  %849 = add i64 %848, %844
  %850 = add i64 %819, 38
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i32*
  %852 = load i32, i32* %851, align 4
  %853 = zext i32 %852 to i64
  store i64 %853, i64* %RDX.i2114.pre-phi, align 8
  %854 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %854, i64* %RAX.i778, align 8
  %855 = add i64 %854, 14144
  %856 = add i64 %819, 53
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i64*
  %858 = load i64, i64* %857, align 8
  store i64 %858, i64* %RAX.i778, align 8
  %859 = add i64 %819, 57
  store i64 %859, i64* %3, align 8
  %860 = load i32, i32* %827, align 4
  %861 = sext i32 %860 to i64
  store i64 %861, i64* %RCX.i2230, align 8
  %862 = shl nsw i64 %861, 3
  %863 = add i64 %862, %858
  %864 = add i64 %819, 61
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i64*
  %866 = load i64, i64* %865, align 8
  store i64 %866, i64* %RAX.i778, align 8
  %867 = add i64 %819, 65
  store i64 %867, i64* %3, align 8
  %868 = load i32, i32* %837, align 4
  %869 = sext i32 %868 to i64
  store i64 %869, i64* %RCX.i2230, align 8
  %870 = shl nsw i64 %869, 3
  %871 = add i64 %870, %866
  %872 = add i64 %819, 69
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i64*
  %874 = load i64, i64* %873, align 8
  store i64 %874, i64* %RAX.i778, align 8
  %875 = add i64 %819, 73
  store i64 %875, i64* %3, align 8
  %876 = load i32, i32* %793, align 4
  %877 = sext i32 %876 to i64
  store i64 %877, i64* %RCX.i2230, align 8
  %878 = shl nsw i64 %877, 2
  %879 = add i64 %878, %874
  %880 = add i64 %819, 76
  store i64 %880, i64* %3, align 8
  %881 = inttoptr i64 %879 to i32*
  store i32 %852, i32* %881, align 4
  %882 = load i64, i64* %RBP.i, align 8
  %883 = add i64 %882, -32
  %884 = load i64, i64* %3, align 8
  %885 = add i64 %884, 3
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %883 to i32*
  %887 = load i32, i32* %886, align 4
  %888 = add i32 %887, 1
  %889 = zext i32 %888 to i64
  store i64 %889, i64* %RAX.i778, align 8
  %890 = icmp eq i32 %887, -1
  %891 = icmp eq i32 %888, 0
  %892 = or i1 %890, %891
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %14, align 1
  %894 = and i32 %888, 255
  %895 = tail call i32 @llvm.ctpop.i32(i32 %894)
  %896 = trunc i32 %895 to i8
  %897 = and i8 %896, 1
  %898 = xor i8 %897, 1
  store i8 %898, i8* %21, align 1
  %899 = xor i32 %888, %887
  %900 = lshr i32 %899, 4
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  store i8 %902, i8* %27, align 1
  %903 = zext i1 %891 to i8
  store i8 %903, i8* %30, align 1
  %904 = lshr i32 %888, 31
  %905 = trunc i32 %904 to i8
  store i8 %905, i8* %33, align 1
  %906 = lshr i32 %887, 31
  %907 = xor i32 %904, %906
  %908 = add nuw nsw i32 %907, %904
  %909 = icmp eq i32 %908, 2
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %39, align 1
  %911 = add i64 %884, 9
  store i64 %911, i64* %3, align 8
  store i32 %888, i32* %886, align 4
  %912 = load i64, i64* %3, align 8
  %913 = add i64 %912, -95
  store i64 %913, i64* %3, align 8
  br label %block_.L_430361

block_.L_4303c5:                                  ; preds = %block_.L_430361
  %914 = add i64 %790, -28
  %915 = add i64 %819, 8
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i32*
  %917 = load i32, i32* %916, align 4
  %918 = add i32 %917, 1
  %919 = zext i32 %918 to i64
  store i64 %919, i64* %RAX.i778, align 8
  %920 = icmp eq i32 %917, -1
  %921 = icmp eq i32 %918, 0
  %922 = or i1 %920, %921
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %14, align 1
  %924 = and i32 %918, 255
  %925 = tail call i32 @llvm.ctpop.i32(i32 %924)
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  %928 = xor i8 %927, 1
  store i8 %928, i8* %21, align 1
  %929 = xor i32 %918, %917
  %930 = lshr i32 %929, 4
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  store i8 %932, i8* %27, align 1
  %933 = zext i1 %921 to i8
  store i8 %933, i8* %30, align 1
  %934 = lshr i32 %918, 31
  %935 = trunc i32 %934 to i8
  store i8 %935, i8* %33, align 1
  %936 = lshr i32 %917, 31
  %937 = xor i32 %934, %936
  %938 = add nuw nsw i32 %937, %934
  %939 = icmp eq i32 %938, 2
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %39, align 1
  %941 = add i64 %819, 14
  store i64 %941, i64* %3, align 8
  store i32 %918, i32* %916, align 4
  %942 = load i64, i64* %3, align 8
  %943 = add i64 %942, -131
  store i64 %943, i64* %3, align 8
  br label %block_.L_430350

block_.L_4303d8:                                  ; preds = %block_.L_430350
  %944 = add i64 %757, -20
  %945 = add i64 %785, 8
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i32*
  %947 = load i32, i32* %946, align 4
  %948 = add i32 %947, 1
  %949 = zext i32 %948 to i64
  store i64 %949, i64* %RAX.i778, align 8
  %950 = icmp eq i32 %947, -1
  %951 = icmp eq i32 %948, 0
  %952 = or i1 %950, %951
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %14, align 1
  %954 = and i32 %948, 255
  %955 = tail call i32 @llvm.ctpop.i32(i32 %954)
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  %958 = xor i8 %957, 1
  store i8 %958, i8* %21, align 1
  %959 = xor i32 %948, %947
  %960 = lshr i32 %959, 4
  %961 = trunc i32 %960 to i8
  %962 = and i8 %961, 1
  store i8 %962, i8* %27, align 1
  %963 = zext i1 %951 to i8
  store i8 %963, i8* %30, align 1
  %964 = lshr i32 %948, 31
  %965 = trunc i32 %964 to i8
  store i8 %965, i8* %33, align 1
  %966 = lshr i32 %947, 31
  %967 = xor i32 %964, %966
  %968 = add nuw nsw i32 %967, %964
  %969 = icmp eq i32 %968, 2
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %39, align 1
  %971 = add i64 %785, 14
  store i64 %971, i64* %3, align 8
  store i32 %948, i32* %946, align 4
  %972 = load i64, i64* %3, align 8
  %973 = add i64 %972, -167
  store i64 %973, i64* %3, align 8
  br label %block_.L_43033f

block_.L_4303eb:                                  ; preds = %block_.L_43033f
  %974 = add i64 %724, -24
  %975 = add i64 %752, 7
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  store i32 0, i32* %976, align 4
  %DX.i1799 = bitcast %union.anon* %109 to i16*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1789 = getelementptr inbounds %union.anon, %union.anon* %977, i64 0, i32 0
  %ESI.i1782 = bitcast %union.anon* %977 to i32*
  %.pre112 = load i64, i64* %3, align 8
  br label %block_.L_4303f2

block_.L_4303f2:                                  ; preds = %block_.L_430647, %block_.L_4303eb
  %978 = phi i64 [ %1901, %block_.L_430647 ], [ %.pre112, %block_.L_4303eb ]
  %979 = load i64, i64* %RBP.i, align 8
  %980 = add i64 %979, -24
  %981 = add i64 %978, 4
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i32*
  %983 = load i32, i32* %982, align 4
  %984 = add i32 %983, -4
  %985 = icmp ult i32 %983, 4
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %14, align 1
  %987 = and i32 %984, 255
  %988 = tail call i32 @llvm.ctpop.i32(i32 %987)
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  %991 = xor i8 %990, 1
  store i8 %991, i8* %21, align 1
  %992 = xor i32 %984, %983
  %993 = lshr i32 %992, 4
  %994 = trunc i32 %993 to i8
  %995 = and i8 %994, 1
  store i8 %995, i8* %27, align 1
  %996 = icmp eq i32 %984, 0
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %30, align 1
  %998 = lshr i32 %984, 31
  %999 = trunc i32 %998 to i8
  store i8 %999, i8* %33, align 1
  %1000 = lshr i32 %983, 31
  %1001 = xor i32 %998, %1000
  %1002 = add nuw nsw i32 %1001, %1000
  %1003 = icmp eq i32 %1002, 2
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %39, align 1
  %1005 = icmp ne i8 %999, 0
  %1006 = xor i1 %1005, %1003
  %.v171 = select i1 %1006, i64 10, i64 616
  %1007 = add i64 %978, %.v171
  store i64 %1007, i64* %3, align 8
  br i1 %1006, label %block_4303fc, label %block_.L_43065a

block_4303fc:                                     ; preds = %block_.L_4303f2
  %1008 = add i64 %979, -20
  %1009 = add i64 %1007, 7
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1008 to i32*
  store i32 0, i32* %1010, align 4
  %.pre144 = load i64, i64* %3, align 8
  br label %block_.L_430403

block_.L_430403:                                  ; preds = %block_.L_430634, %block_4303fc
  %1011 = phi i64 [ %1871, %block_.L_430634 ], [ %.pre144, %block_4303fc ]
  %1012 = load i64, i64* %RBP.i, align 8
  %1013 = add i64 %1012, -20
  %1014 = add i64 %1011, 4
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i32*
  %1016 = load i32, i32* %1015, align 4
  %1017 = add i32 %1016, -4
  %1018 = icmp ult i32 %1016, 4
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %14, align 1
  %1020 = and i32 %1017, 255
  %1021 = tail call i32 @llvm.ctpop.i32(i32 %1020)
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  %1024 = xor i8 %1023, 1
  store i8 %1024, i8* %21, align 1
  %1025 = xor i32 %1017, %1016
  %1026 = lshr i32 %1025, 4
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  store i8 %1028, i8* %27, align 1
  %1029 = icmp eq i32 %1017, 0
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %30, align 1
  %1031 = lshr i32 %1017, 31
  %1032 = trunc i32 %1031 to i8
  store i8 %1032, i8* %33, align 1
  %1033 = lshr i32 %1016, 31
  %1034 = xor i32 %1031, %1033
  %1035 = add nuw nsw i32 %1034, %1033
  %1036 = icmp eq i32 %1035, 2
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %39, align 1
  %1038 = icmp ne i8 %1032, 0
  %1039 = xor i1 %1038, %1036
  %.v161 = select i1 %1039, i64 10, i64 580
  %1040 = add i64 %1011, %.v161
  store i64 %1040, i64* %3, align 8
  br i1 %1039, label %block_43040d, label %block_.L_430647

block_43040d:                                     ; preds = %block_.L_430403
  %1041 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  %1042 = add i64 %1041, 3264
  store i64 %1042, i64* %RAX.i778, align 8
  %1043 = icmp ugt i64 %1041, -3265
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %14, align 1
  %1045 = trunc i64 %1042 to i32
  %1046 = and i32 %1045, 255
  %1047 = tail call i32 @llvm.ctpop.i32(i32 %1046)
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  %1050 = xor i8 %1049, 1
  store i8 %1050, i8* %21, align 1
  %1051 = xor i64 %1042, %1041
  %1052 = lshr i64 %1051, 4
  %1053 = trunc i64 %1052 to i8
  %1054 = and i8 %1053, 1
  store i8 %1054, i8* %27, align 1
  %1055 = icmp eq i64 %1042, 0
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %30, align 1
  %1057 = lshr i64 %1042, 63
  %1058 = trunc i64 %1057 to i8
  store i8 %1058, i8* %33, align 1
  %1059 = lshr i64 %1041, 63
  %1060 = xor i64 %1057, %1059
  %1061 = add nuw nsw i64 %1060, %1057
  %1062 = icmp eq i64 %1061, 2
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %39, align 1
  %1064 = add i64 %1012, -24
  %1065 = add i64 %1040, 18
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = sext i32 %1067 to i64
  %1069 = shl nsw i64 %1068, 3
  store i64 %1069, i64* %RCX.i2230, align 8
  %1070 = add i64 %1069, %1042
  store i64 %1070, i64* %RAX.i778, align 8
  %1071 = icmp ult i64 %1070, %1042
  %1072 = icmp ult i64 %1070, %1069
  %1073 = or i1 %1071, %1072
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %14, align 1
  %1075 = trunc i64 %1070 to i32
  %1076 = and i32 %1075, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %21, align 1
  %1081 = xor i64 %1069, %1042
  %1082 = xor i64 %1081, %1070
  %1083 = lshr i64 %1082, 4
  %1084 = trunc i64 %1083 to i8
  %1085 = and i8 %1084, 1
  store i8 %1085, i8* %27, align 1
  %1086 = icmp eq i64 %1070, 0
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %30, align 1
  %1088 = lshr i64 %1070, 63
  %1089 = trunc i64 %1088 to i8
  store i8 %1089, i8* %33, align 1
  %1090 = lshr i64 %1068, 60
  %1091 = and i64 %1090, 1
  %1092 = xor i64 %1088, %1057
  %1093 = xor i64 %1088, %1091
  %1094 = add nuw nsw i64 %1092, %1093
  %1095 = icmp eq i64 %1094, 2
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %39, align 1
  %1097 = load i64, i64* %RBP.i, align 8
  %1098 = add i64 %1097, -20
  %1099 = add i64 %1040, 29
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i32*
  %1101 = load i32, i32* %1100, align 4
  %1102 = sext i32 %1101 to i64
  store i64 %1102, i64* %RCX.i2230, align 8
  %1103 = shl nsw i64 %1102, 1
  %1104 = add i64 %1103, %1070
  %1105 = add i64 %1040, 33
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i16*
  %1107 = load i16, i16* %1106, align 2
  store i16 %1107, i16* %DX.i1799, align 2
  %1108 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1108, i64* %RAX.i778, align 8
  %1109 = add i64 %1108, 6480
  %1110 = add i64 %1040, 48
  store i64 %1110, i64* %3, align 8
  %1111 = inttoptr i64 %1109 to i64*
  %1112 = load i64, i64* %1111, align 8
  store i64 %1112, i64* %RAX.i778, align 8
  %1113 = add i64 %1040, 51
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i64*
  %1115 = load i64, i64* %1114, align 8
  store i64 %1115, i64* %RAX.i778, align 8
  %1116 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1116, i64* %RCX.i2230, align 8
  %1117 = add i64 %1116, 144
  %1118 = add i64 %1040, 65
  store i64 %1118, i64* %3, align 8
  %1119 = inttoptr i64 %1117 to i32*
  %1120 = load i32, i32* %1119, align 4
  %1121 = zext i32 %1120 to i64
  store i64 %1121, i64* %RSI.i1789, align 8
  %1122 = add i64 %1040, 68
  store i64 %1122, i64* %3, align 8
  %1123 = load i32, i32* %1100, align 4
  %1124 = add i32 %1123, %1120
  %1125 = zext i32 %1124 to i64
  store i64 %1125, i64* %RSI.i1789, align 8
  %1126 = icmp ult i32 %1124, %1120
  %1127 = icmp ult i32 %1124, %1123
  %1128 = or i1 %1126, %1127
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %14, align 1
  %1130 = and i32 %1124, 255
  %1131 = tail call i32 @llvm.ctpop.i32(i32 %1130)
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  %1134 = xor i8 %1133, 1
  store i8 %1134, i8* %21, align 1
  %1135 = xor i32 %1123, %1120
  %1136 = xor i32 %1135, %1124
  %1137 = lshr i32 %1136, 4
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  store i8 %1139, i8* %27, align 1
  %1140 = icmp eq i32 %1124, 0
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %30, align 1
  %1142 = lshr i32 %1124, 31
  %1143 = trunc i32 %1142 to i8
  store i8 %1143, i8* %33, align 1
  %1144 = lshr i32 %1120, 31
  %1145 = lshr i32 %1123, 31
  %1146 = xor i32 %1142, %1144
  %1147 = xor i32 %1142, %1145
  %1148 = add nuw nsw i32 %1146, %1147
  %1149 = icmp eq i32 %1148, 2
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %39, align 1
  %1151 = sext i32 %1124 to i64
  store i64 %1151, i64* %RCX.i2230, align 8
  %1152 = shl nsw i64 %1151, 3
  %1153 = add i64 %1115, %1152
  %1154 = add i64 %1040, 75
  store i64 %1154, i64* %3, align 8
  %1155 = inttoptr i64 %1153 to i64*
  %1156 = load i64, i64* %1155, align 8
  store i64 %1156, i64* %RAX.i778, align 8
  store i64 %1116, i64* %RCX.i2230, align 8
  %1157 = add i64 %1116, 148
  %1158 = add i64 %1040, 89
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1157 to i32*
  %1160 = load i32, i32* %1159, align 4
  %1161 = zext i32 %1160 to i64
  store i64 %1161, i64* %RSI.i1789, align 8
  %1162 = load i64, i64* %RBP.i, align 8
  %1163 = add i64 %1162, -24
  %1164 = add i64 %1040, 92
  store i64 %1164, i64* %3, align 8
  %1165 = inttoptr i64 %1163 to i32*
  %1166 = load i32, i32* %1165, align 4
  %1167 = add i32 %1166, %1160
  %1168 = zext i32 %1167 to i64
  store i64 %1168, i64* %RSI.i1789, align 8
  %1169 = sext i32 %1167 to i64
  store i64 %1169, i64* %RCX.i2230, align 8
  %1170 = shl nsw i64 %1169, 1
  %1171 = add i64 %1156, %1170
  %1172 = load i16, i16* %DX.i1799, align 2
  %1173 = add i64 %1040, 99
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1171 to i16*
  store i16 %1172, i16* %1174, align 2
  %1175 = load i64, i64* %3, align 8
  %1176 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  %1177 = add i64 %1176, 24
  store i64 %1177, i64* %RAX.i778, align 8
  %1178 = icmp ugt i64 %1176, -25
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %14, align 1
  %1180 = trunc i64 %1177 to i32
  %1181 = and i32 %1180, 255
  %1182 = tail call i32 @llvm.ctpop.i32(i32 %1181)
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = xor i8 %1184, 1
  store i8 %1185, i8* %21, align 1
  %1186 = xor i64 %1176, 16
  %1187 = xor i64 %1186, %1177
  %1188 = lshr i64 %1187, 4
  %1189 = trunc i64 %1188 to i8
  %1190 = and i8 %1189, 1
  store i8 %1190, i8* %27, align 1
  %1191 = icmp eq i64 %1177, 0
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %30, align 1
  %1193 = lshr i64 %1177, 63
  %1194 = trunc i64 %1193 to i8
  store i8 %1194, i8* %33, align 1
  %1195 = lshr i64 %1176, 63
  %1196 = xor i64 %1193, %1195
  %1197 = add nuw nsw i64 %1196, %1193
  %1198 = icmp eq i64 %1197, 2
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %39, align 1
  %1200 = load i64, i64* %RBP.i, align 8
  %1201 = add i64 %1200, -52
  %1202 = add i64 %1175, 15
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1201 to i32*
  %1204 = load i32, i32* %1203, align 4
  %1205 = zext i32 %1204 to i64
  store i64 %1205, i64* %RSI.i1789, align 8
  %1206 = sext i32 %1204 to i64
  %1207 = mul nsw i64 %1206, 264
  %1208 = lshr i64 %1207, 63
  %1209 = add i64 %1207, %1177
  store i64 %1209, i64* %RAX.i778, align 8
  %1210 = icmp ult i64 %1209, %1177
  %1211 = icmp ult i64 %1209, %1207
  %1212 = or i1 %1210, %1211
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %14, align 1
  %1214 = trunc i64 %1209 to i32
  %1215 = and i32 %1214, 255
  %1216 = tail call i32 @llvm.ctpop.i32(i32 %1215)
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  %1219 = xor i8 %1218, 1
  store i8 %1219, i8* %21, align 1
  %1220 = xor i64 %1207, %1177
  %1221 = xor i64 %1220, %1209
  %1222 = lshr i64 %1221, 4
  %1223 = trunc i64 %1222 to i8
  %1224 = and i8 %1223, 1
  store i8 %1224, i8* %27, align 1
  %1225 = icmp eq i64 %1209, 0
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %30, align 1
  %1227 = lshr i64 %1209, 63
  %1228 = trunc i64 %1227 to i8
  store i8 %1228, i8* %33, align 1
  %1229 = xor i64 %1227, %1193
  %1230 = xor i64 %1227, %1208
  %1231 = add nuw nsw i64 %1229, %1230
  %1232 = icmp eq i64 %1231, 2
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %39, align 1
  %1234 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1234, i64* %RCX.i2230, align 8
  %1235 = add i64 %1234, 6480
  %1236 = add i64 %1175, 46
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i64*
  %1238 = load i64, i64* %1237, align 8
  store i64 %1238, i64* %RCX.i2230, align 8
  %1239 = add i64 %1175, 49
  store i64 %1239, i64* %3, align 8
  %1240 = inttoptr i64 %1238 to i64*
  %1241 = load i64, i64* %1240, align 8
  store i64 %1241, i64* %RCX.i2230, align 8
  %1242 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1242, i64* %RDI.i2177, align 8
  %1243 = add i64 %1242, 144
  %1244 = add i64 %1175, 63
  store i64 %1244, i64* %3, align 8
  %1245 = inttoptr i64 %1243 to i32*
  %1246 = load i32, i32* %1245, align 4
  %1247 = zext i32 %1246 to i64
  store i64 %1247, i64* %RSI.i1789, align 8
  %1248 = load i64, i64* %RBP.i, align 8
  %1249 = add i64 %1248, -20
  %1250 = add i64 %1175, 66
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1249 to i32*
  %1252 = load i32, i32* %1251, align 4
  %1253 = add i32 %1252, %1246
  %1254 = zext i32 %1253 to i64
  store i64 %1254, i64* %RSI.i1789, align 8
  %1255 = icmp ult i32 %1253, %1246
  %1256 = icmp ult i32 %1253, %1252
  %1257 = or i1 %1255, %1256
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %14, align 1
  %1259 = and i32 %1253, 255
  %1260 = tail call i32 @llvm.ctpop.i32(i32 %1259)
  %1261 = trunc i32 %1260 to i8
  %1262 = and i8 %1261, 1
  %1263 = xor i8 %1262, 1
  store i8 %1263, i8* %21, align 1
  %1264 = xor i32 %1252, %1246
  %1265 = xor i32 %1264, %1253
  %1266 = lshr i32 %1265, 4
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  store i8 %1268, i8* %27, align 1
  %1269 = icmp eq i32 %1253, 0
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %30, align 1
  %1271 = lshr i32 %1253, 31
  %1272 = trunc i32 %1271 to i8
  store i8 %1272, i8* %33, align 1
  %1273 = lshr i32 %1246, 31
  %1274 = lshr i32 %1252, 31
  %1275 = xor i32 %1271, %1273
  %1276 = xor i32 %1271, %1274
  %1277 = add nuw nsw i32 %1275, %1276
  %1278 = icmp eq i32 %1277, 2
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %39, align 1
  %1280 = sext i32 %1253 to i64
  store i64 %1280, i64* %RDI.i2177, align 8
  %1281 = shl nsw i64 %1280, 3
  %1282 = add i64 %1241, %1281
  %1283 = add i64 %1175, 73
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1282 to i64*
  %1285 = load i64, i64* %1284, align 8
  store i64 %1285, i64* %RCX.i2230, align 8
  store i64 %1242, i64* %RDI.i2177, align 8
  %1286 = add i64 %1242, 148
  %1287 = add i64 %1175, 87
  store i64 %1287, i64* %3, align 8
  %1288 = inttoptr i64 %1286 to i32*
  %1289 = load i32, i32* %1288, align 4
  %1290 = zext i32 %1289 to i64
  store i64 %1290, i64* %RSI.i1789, align 8
  %1291 = add i64 %1248, -24
  %1292 = add i64 %1175, 90
  store i64 %1292, i64* %3, align 8
  %1293 = inttoptr i64 %1291 to i32*
  %1294 = load i32, i32* %1293, align 4
  %1295 = add i32 %1294, %1289
  %1296 = zext i32 %1295 to i64
  store i64 %1296, i64* %RSI.i1789, align 8
  %1297 = icmp ult i32 %1295, %1289
  %1298 = icmp ult i32 %1295, %1294
  %1299 = or i1 %1297, %1298
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %14, align 1
  %1301 = and i32 %1295, 255
  %1302 = tail call i32 @llvm.ctpop.i32(i32 %1301)
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  %1305 = xor i8 %1304, 1
  store i8 %1305, i8* %21, align 1
  %1306 = xor i32 %1294, %1289
  %1307 = xor i32 %1306, %1295
  %1308 = lshr i32 %1307, 4
  %1309 = trunc i32 %1308 to i8
  %1310 = and i8 %1309, 1
  store i8 %1310, i8* %27, align 1
  %1311 = icmp eq i32 %1295, 0
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %30, align 1
  %1313 = lshr i32 %1295, 31
  %1314 = trunc i32 %1313 to i8
  store i8 %1314, i8* %33, align 1
  %1315 = lshr i32 %1289, 31
  %1316 = lshr i32 %1294, 31
  %1317 = xor i32 %1313, %1315
  %1318 = xor i32 %1313, %1316
  %1319 = add nuw nsw i32 %1317, %1318
  %1320 = icmp eq i32 %1319, 2
  %1321 = zext i1 %1320 to i8
  store i8 %1321, i8* %39, align 1
  %1322 = sext i32 %1295 to i64
  store i64 %1322, i64* %RDI.i2177, align 8
  %1323 = shl nsw i64 %1322, 1
  %1324 = add i64 %1285, %1323
  %1325 = add i64 %1175, 98
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i16*
  %1327 = load i16, i16* %1326, align 2
  %1328 = sext i16 %1327 to i64
  store i64 %1328, i64* %RCX.i2230, align 8
  %1329 = load i64, i64* %RAX.i778, align 8
  %1330 = shl nsw i64 %1328, 3
  %1331 = add i64 %1330, %1329
  %1332 = add i64 %1175, 102
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i64*
  %1334 = load i64, i64* %1333, align 8
  store i64 %1334, i64* %RAX.i778, align 8
  %1335 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1335, i64* %RCX.i2230, align 8
  %1336 = add i64 %1335, 6488
  %1337 = add i64 %1175, 117
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1336 to i64*
  %1339 = load i64, i64* %1338, align 8
  store i64 %1339, i64* %RCX.i2230, align 8
  %1340 = add i64 %1175, 120
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to i64*
  %1342 = load i64, i64* %1341, align 8
  store i64 %1342, i64* %RCX.i2230, align 8
  %1343 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1343, i64* %RDI.i2177, align 8
  %1344 = add i64 %1343, 144
  %1345 = add i64 %1175, 134
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1344 to i32*
  %1347 = load i32, i32* %1346, align 4
  %1348 = zext i32 %1347 to i64
  store i64 %1348, i64* %RSI.i1789, align 8
  %1349 = load i64, i64* %RBP.i, align 8
  %1350 = add i64 %1349, -20
  %1351 = add i64 %1175, 137
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i32*
  %1353 = load i32, i32* %1352, align 4
  %1354 = add i32 %1353, %1347
  %1355 = zext i32 %1354 to i64
  store i64 %1355, i64* %RSI.i1789, align 8
  %1356 = icmp ult i32 %1354, %1347
  %1357 = icmp ult i32 %1354, %1353
  %1358 = or i1 %1356, %1357
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %14, align 1
  %1360 = and i32 %1354, 255
  %1361 = tail call i32 @llvm.ctpop.i32(i32 %1360)
  %1362 = trunc i32 %1361 to i8
  %1363 = and i8 %1362, 1
  %1364 = xor i8 %1363, 1
  store i8 %1364, i8* %21, align 1
  %1365 = xor i32 %1353, %1347
  %1366 = xor i32 %1365, %1354
  %1367 = lshr i32 %1366, 4
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  store i8 %1369, i8* %27, align 1
  %1370 = icmp eq i32 %1354, 0
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %30, align 1
  %1372 = lshr i32 %1354, 31
  %1373 = trunc i32 %1372 to i8
  store i8 %1373, i8* %33, align 1
  %1374 = lshr i32 %1347, 31
  %1375 = lshr i32 %1353, 31
  %1376 = xor i32 %1372, %1374
  %1377 = xor i32 %1372, %1375
  %1378 = add nuw nsw i32 %1376, %1377
  %1379 = icmp eq i32 %1378, 2
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %39, align 1
  %1381 = sext i32 %1354 to i64
  store i64 %1381, i64* %RDI.i2177, align 8
  %1382 = shl nsw i64 %1381, 3
  %1383 = add i64 %1342, %1382
  %1384 = add i64 %1175, 144
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i64*
  %1386 = load i64, i64* %1385, align 8
  store i64 %1386, i64* %RCX.i2230, align 8
  store i64 %1343, i64* %RDI.i2177, align 8
  %1387 = add i64 %1343, 148
  %1388 = add i64 %1175, 158
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i32*
  %1390 = load i32, i32* %1389, align 4
  %1391 = zext i32 %1390 to i64
  store i64 %1391, i64* %RSI.i1789, align 8
  %1392 = add i64 %1349, -24
  %1393 = add i64 %1175, 161
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i32*
  %1395 = load i32, i32* %1394, align 4
  %1396 = add i32 %1395, %1390
  %1397 = zext i32 %1396 to i64
  store i64 %1397, i64* %RSI.i1789, align 8
  %1398 = icmp ult i32 %1396, %1390
  %1399 = icmp ult i32 %1396, %1395
  %1400 = or i1 %1398, %1399
  %1401 = zext i1 %1400 to i8
  store i8 %1401, i8* %14, align 1
  %1402 = and i32 %1396, 255
  %1403 = tail call i32 @llvm.ctpop.i32(i32 %1402)
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  %1406 = xor i8 %1405, 1
  store i8 %1406, i8* %21, align 1
  %1407 = xor i32 %1395, %1390
  %1408 = xor i32 %1407, %1396
  %1409 = lshr i32 %1408, 4
  %1410 = trunc i32 %1409 to i8
  %1411 = and i8 %1410, 1
  store i8 %1411, i8* %27, align 1
  %1412 = icmp eq i32 %1396, 0
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %30, align 1
  %1414 = lshr i32 %1396, 31
  %1415 = trunc i32 %1414 to i8
  store i8 %1415, i8* %33, align 1
  %1416 = lshr i32 %1390, 31
  %1417 = lshr i32 %1395, 31
  %1418 = xor i32 %1414, %1416
  %1419 = xor i32 %1414, %1417
  %1420 = add nuw nsw i32 %1418, %1419
  %1421 = icmp eq i32 %1420, 2
  %1422 = zext i1 %1421 to i8
  store i8 %1422, i8* %39, align 1
  %1423 = sext i32 %1396 to i64
  store i64 %1423, i64* %RDI.i2177, align 8
  %1424 = shl nsw i64 %1423, 3
  %1425 = add i64 %1386, %1424
  %1426 = load i64, i64* %RAX.i778, align 8
  %1427 = add i64 %1175, 168
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1425 to i64*
  store i64 %1426, i64* %1428, align 8
  %1429 = load i64, i64* %RBP.i, align 8
  %1430 = add i64 %1429, -36
  %1431 = load i64, i64* %3, align 8
  %1432 = add i64 %1431, 4
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1430 to i32*
  %1434 = load i32, i32* %1433, align 4
  store i8 0, i8* %14, align 1
  %1435 = and i32 %1434, 255
  %1436 = tail call i32 @llvm.ctpop.i32(i32 %1435)
  %1437 = trunc i32 %1436 to i8
  %1438 = and i8 %1437, 1
  %1439 = xor i8 %1438, 1
  store i8 %1439, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1440 = icmp eq i32 %1434, 0
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %30, align 1
  %1442 = lshr i32 %1434, 31
  %1443 = trunc i32 %1442 to i8
  store i8 %1443, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v195 = select i1 %1440, i64 284, i64 10
  %1444 = add i64 %1431, %.v195
  store i64 %1444, i64* %3, align 8
  br i1 %1440, label %block_.L_430634, label %block_430522

block_430522:                                     ; preds = %block_43040d
  %1445 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  %1446 = add i64 %1445, 3264
  %1447 = lshr i64 %1446, 63
  %1448 = add i64 %1445, 3296
  store i64 %1448, i64* %RAX.i778, align 8
  %1449 = icmp ugt i64 %1446, -33
  %1450 = zext i1 %1449 to i8
  store i8 %1450, i8* %14, align 1
  %1451 = trunc i64 %1448 to i32
  %1452 = and i32 %1451, 255
  %1453 = tail call i32 @llvm.ctpop.i32(i32 %1452)
  %1454 = trunc i32 %1453 to i8
  %1455 = and i8 %1454, 1
  %1456 = xor i8 %1455, 1
  store i8 %1456, i8* %21, align 1
  %1457 = xor i64 %1448, %1446
  %1458 = lshr i64 %1457, 4
  %1459 = trunc i64 %1458 to i8
  %1460 = and i8 %1459, 1
  store i8 %1460, i8* %27, align 1
  %1461 = icmp eq i64 %1448, 0
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %30, align 1
  %1463 = lshr i64 %1448, 63
  %1464 = trunc i64 %1463 to i8
  store i8 %1464, i8* %33, align 1
  %1465 = xor i64 %1463, %1447
  %1466 = add nuw nsw i64 %1465, %1463
  %1467 = icmp eq i64 %1466, 2
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %39, align 1
  %1469 = add i64 %1429, -24
  %1470 = add i64 %1444, 22
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i32*
  %1472 = load i32, i32* %1471, align 4
  %1473 = sext i32 %1472 to i64
  %1474 = shl nsw i64 %1473, 3
  store i64 %1474, i64* %RCX.i2230, align 8
  %1475 = add i64 %1474, %1448
  store i64 %1475, i64* %RAX.i778, align 8
  %1476 = icmp ult i64 %1475, %1448
  %1477 = icmp ult i64 %1475, %1474
  %1478 = or i1 %1476, %1477
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %14, align 1
  %1480 = trunc i64 %1475 to i32
  %1481 = and i32 %1480, 255
  %1482 = tail call i32 @llvm.ctpop.i32(i32 %1481)
  %1483 = trunc i32 %1482 to i8
  %1484 = and i8 %1483, 1
  %1485 = xor i8 %1484, 1
  store i8 %1485, i8* %21, align 1
  %1486 = xor i64 %1474, %1448
  %1487 = xor i64 %1486, %1475
  %1488 = lshr i64 %1487, 4
  %1489 = trunc i64 %1488 to i8
  %1490 = and i8 %1489, 1
  store i8 %1490, i8* %27, align 1
  %1491 = icmp eq i64 %1475, 0
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %30, align 1
  %1493 = lshr i64 %1475, 63
  %1494 = trunc i64 %1493 to i8
  store i8 %1494, i8* %33, align 1
  %1495 = lshr i64 %1473, 60
  %1496 = and i64 %1495, 1
  %1497 = xor i64 %1493, %1463
  %1498 = xor i64 %1493, %1496
  %1499 = add nuw nsw i64 %1497, %1498
  %1500 = icmp eq i64 %1499, 2
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %39, align 1
  %1502 = load i64, i64* %RBP.i, align 8
  %1503 = add i64 %1502, -20
  %1504 = add i64 %1444, 33
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i32*
  %1506 = load i32, i32* %1505, align 4
  %1507 = sext i32 %1506 to i64
  store i64 %1507, i64* %RCX.i2230, align 8
  %1508 = shl nsw i64 %1507, 1
  %1509 = add i64 %1508, %1475
  %1510 = add i64 %1444, 37
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i16*
  %1512 = load i16, i16* %1511, align 2
  store i16 %1512, i16* %DX.i1799, align 2
  %1513 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1513, i64* %RAX.i778, align 8
  %1514 = add i64 %1513, 6480
  %1515 = add i64 %1444, 52
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1514 to i64*
  %1517 = load i64, i64* %1516, align 8
  store i64 %1517, i64* %RAX.i778, align 8
  %1518 = add i64 %1517, 8
  %1519 = add i64 %1444, 56
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i64*
  %1521 = load i64, i64* %1520, align 8
  store i64 %1521, i64* %RAX.i778, align 8
  %1522 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1522, i64* %RCX.i2230, align 8
  %1523 = add i64 %1522, 144
  %1524 = add i64 %1444, 70
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i32*
  %1526 = load i32, i32* %1525, align 4
  %1527 = zext i32 %1526 to i64
  store i64 %1527, i64* %RSI.i1789, align 8
  %1528 = add i64 %1444, 73
  store i64 %1528, i64* %3, align 8
  %1529 = load i32, i32* %1505, align 4
  %1530 = add i32 %1529, %1526
  %1531 = zext i32 %1530 to i64
  store i64 %1531, i64* %RSI.i1789, align 8
  %1532 = icmp ult i32 %1530, %1526
  %1533 = icmp ult i32 %1530, %1529
  %1534 = or i1 %1532, %1533
  %1535 = zext i1 %1534 to i8
  store i8 %1535, i8* %14, align 1
  %1536 = and i32 %1530, 255
  %1537 = tail call i32 @llvm.ctpop.i32(i32 %1536)
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = xor i8 %1539, 1
  store i8 %1540, i8* %21, align 1
  %1541 = xor i32 %1529, %1526
  %1542 = xor i32 %1541, %1530
  %1543 = lshr i32 %1542, 4
  %1544 = trunc i32 %1543 to i8
  %1545 = and i8 %1544, 1
  store i8 %1545, i8* %27, align 1
  %1546 = icmp eq i32 %1530, 0
  %1547 = zext i1 %1546 to i8
  store i8 %1547, i8* %30, align 1
  %1548 = lshr i32 %1530, 31
  %1549 = trunc i32 %1548 to i8
  store i8 %1549, i8* %33, align 1
  %1550 = lshr i32 %1526, 31
  %1551 = lshr i32 %1529, 31
  %1552 = xor i32 %1548, %1550
  %1553 = xor i32 %1548, %1551
  %1554 = add nuw nsw i32 %1552, %1553
  %1555 = icmp eq i32 %1554, 2
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %39, align 1
  %1557 = sext i32 %1530 to i64
  store i64 %1557, i64* %RCX.i2230, align 8
  %1558 = shl nsw i64 %1557, 3
  %1559 = add i64 %1521, %1558
  %1560 = add i64 %1444, 80
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1559 to i64*
  %1562 = load i64, i64* %1561, align 8
  store i64 %1562, i64* %RAX.i778, align 8
  store i64 %1522, i64* %RCX.i2230, align 8
  %1563 = add i64 %1522, 148
  %1564 = add i64 %1444, 94
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i32*
  %1566 = load i32, i32* %1565, align 4
  %1567 = zext i32 %1566 to i64
  store i64 %1567, i64* %RSI.i1789, align 8
  %1568 = load i64, i64* %RBP.i, align 8
  %1569 = add i64 %1568, -24
  %1570 = add i64 %1444, 97
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1569 to i32*
  %1572 = load i32, i32* %1571, align 4
  %1573 = add i32 %1572, %1566
  %1574 = zext i32 %1573 to i64
  store i64 %1574, i64* %RSI.i1789, align 8
  %1575 = sext i32 %1573 to i64
  store i64 %1575, i64* %RCX.i2230, align 8
  %1576 = shl nsw i64 %1575, 1
  %1577 = add i64 %1562, %1576
  %1578 = load i16, i16* %DX.i1799, align 2
  %1579 = add i64 %1444, 104
  store i64 %1579, i64* %3, align 8
  %1580 = inttoptr i64 %1577 to i16*
  store i16 %1578, i16* %1580, align 2
  %1581 = load i64, i64* %3, align 8
  %1582 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  %1583 = add i64 %1582, 24
  store i64 %1583, i64* %RAX.i778, align 8
  %1584 = icmp ugt i64 %1582, -25
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %14, align 1
  %1586 = trunc i64 %1583 to i32
  %1587 = and i32 %1586, 255
  %1588 = tail call i32 @llvm.ctpop.i32(i32 %1587)
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = xor i8 %1590, 1
  store i8 %1591, i8* %21, align 1
  %1592 = xor i64 %1582, 16
  %1593 = xor i64 %1592, %1583
  %1594 = lshr i64 %1593, 4
  %1595 = trunc i64 %1594 to i8
  %1596 = and i8 %1595, 1
  store i8 %1596, i8* %27, align 1
  %1597 = icmp eq i64 %1583, 0
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %30, align 1
  %1599 = lshr i64 %1583, 63
  %1600 = trunc i64 %1599 to i8
  store i8 %1600, i8* %33, align 1
  %1601 = lshr i64 %1582, 63
  %1602 = xor i64 %1599, %1601
  %1603 = add nuw nsw i64 %1602, %1599
  %1604 = icmp eq i64 %1603, 2
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %39, align 1
  %1606 = load i64, i64* %RBP.i, align 8
  %1607 = add i64 %1606, -52
  %1608 = add i64 %1581, 15
  store i64 %1608, i64* %3, align 8
  %1609 = inttoptr i64 %1607 to i32*
  %1610 = load i32, i32* %1609, align 4
  %1611 = add i32 %1610, 1
  %1612 = zext i32 %1611 to i64
  store i64 %1612, i64* %RSI.i1789, align 8
  %1613 = sext i32 %1611 to i64
  %1614 = mul nsw i64 %1613, 264
  %1615 = lshr i64 %1614, 63
  %1616 = load i64, i64* %RAX.i778, align 8
  %1617 = add i64 %1614, %1616
  store i64 %1617, i64* %RAX.i778, align 8
  %1618 = icmp ult i64 %1617, %1616
  %1619 = icmp ult i64 %1617, %1614
  %1620 = or i1 %1618, %1619
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %14, align 1
  %1622 = trunc i64 %1617 to i32
  %1623 = and i32 %1622, 255
  %1624 = tail call i32 @llvm.ctpop.i32(i32 %1623)
  %1625 = trunc i32 %1624 to i8
  %1626 = and i8 %1625, 1
  %1627 = xor i8 %1626, 1
  store i8 %1627, i8* %21, align 1
  %1628 = xor i64 %1614, %1616
  %1629 = xor i64 %1628, %1617
  %1630 = lshr i64 %1629, 4
  %1631 = trunc i64 %1630 to i8
  %1632 = and i8 %1631, 1
  store i8 %1632, i8* %27, align 1
  %1633 = icmp eq i64 %1617, 0
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %30, align 1
  %1635 = lshr i64 %1617, 63
  %1636 = trunc i64 %1635 to i8
  store i8 %1636, i8* %33, align 1
  %1637 = lshr i64 %1616, 63
  %1638 = xor i64 %1635, %1637
  %1639 = xor i64 %1635, %1615
  %1640 = add nuw nsw i64 %1638, %1639
  %1641 = icmp eq i64 %1640, 2
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %39, align 1
  %1643 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1643, i64* %RCX.i2230, align 8
  %1644 = add i64 %1643, 6480
  %1645 = add i64 %1581, 46
  store i64 %1645, i64* %3, align 8
  %1646 = inttoptr i64 %1644 to i64*
  %1647 = load i64, i64* %1646, align 8
  store i64 %1647, i64* %RCX.i2230, align 8
  %1648 = add i64 %1647, 8
  %1649 = add i64 %1581, 50
  store i64 %1649, i64* %3, align 8
  %1650 = inttoptr i64 %1648 to i64*
  %1651 = load i64, i64* %1650, align 8
  store i64 %1651, i64* %RCX.i2230, align 8
  %1652 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1652, i64* %RDI.i2177, align 8
  %1653 = add i64 %1652, 144
  %1654 = add i64 %1581, 64
  store i64 %1654, i64* %3, align 8
  %1655 = inttoptr i64 %1653 to i32*
  %1656 = load i32, i32* %1655, align 4
  %1657 = zext i32 %1656 to i64
  store i64 %1657, i64* %RSI.i1789, align 8
  %1658 = load i64, i64* %RBP.i, align 8
  %1659 = add i64 %1658, -20
  %1660 = add i64 %1581, 67
  store i64 %1660, i64* %3, align 8
  %1661 = inttoptr i64 %1659 to i32*
  %1662 = load i32, i32* %1661, align 4
  %1663 = add i32 %1662, %1656
  %1664 = zext i32 %1663 to i64
  store i64 %1664, i64* %RSI.i1789, align 8
  %1665 = icmp ult i32 %1663, %1656
  %1666 = icmp ult i32 %1663, %1662
  %1667 = or i1 %1665, %1666
  %1668 = zext i1 %1667 to i8
  store i8 %1668, i8* %14, align 1
  %1669 = and i32 %1663, 255
  %1670 = tail call i32 @llvm.ctpop.i32(i32 %1669)
  %1671 = trunc i32 %1670 to i8
  %1672 = and i8 %1671, 1
  %1673 = xor i8 %1672, 1
  store i8 %1673, i8* %21, align 1
  %1674 = xor i32 %1662, %1656
  %1675 = xor i32 %1674, %1663
  %1676 = lshr i32 %1675, 4
  %1677 = trunc i32 %1676 to i8
  %1678 = and i8 %1677, 1
  store i8 %1678, i8* %27, align 1
  %1679 = icmp eq i32 %1663, 0
  %1680 = zext i1 %1679 to i8
  store i8 %1680, i8* %30, align 1
  %1681 = lshr i32 %1663, 31
  %1682 = trunc i32 %1681 to i8
  store i8 %1682, i8* %33, align 1
  %1683 = lshr i32 %1656, 31
  %1684 = lshr i32 %1662, 31
  %1685 = xor i32 %1681, %1683
  %1686 = xor i32 %1681, %1684
  %1687 = add nuw nsw i32 %1685, %1686
  %1688 = icmp eq i32 %1687, 2
  %1689 = zext i1 %1688 to i8
  store i8 %1689, i8* %39, align 1
  %1690 = sext i32 %1663 to i64
  store i64 %1690, i64* %RDI.i2177, align 8
  %1691 = shl nsw i64 %1690, 3
  %1692 = add i64 %1651, %1691
  %1693 = add i64 %1581, 74
  store i64 %1693, i64* %3, align 8
  %1694 = inttoptr i64 %1692 to i64*
  %1695 = load i64, i64* %1694, align 8
  store i64 %1695, i64* %RCX.i2230, align 8
  store i64 %1652, i64* %RDI.i2177, align 8
  %1696 = add i64 %1652, 148
  %1697 = add i64 %1581, 88
  store i64 %1697, i64* %3, align 8
  %1698 = inttoptr i64 %1696 to i32*
  %1699 = load i32, i32* %1698, align 4
  %1700 = zext i32 %1699 to i64
  store i64 %1700, i64* %RSI.i1789, align 8
  %1701 = add i64 %1658, -24
  %1702 = add i64 %1581, 91
  store i64 %1702, i64* %3, align 8
  %1703 = inttoptr i64 %1701 to i32*
  %1704 = load i32, i32* %1703, align 4
  %1705 = add i32 %1704, %1699
  %1706 = zext i32 %1705 to i64
  store i64 %1706, i64* %RSI.i1789, align 8
  %1707 = icmp ult i32 %1705, %1699
  %1708 = icmp ult i32 %1705, %1704
  %1709 = or i1 %1707, %1708
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %14, align 1
  %1711 = and i32 %1705, 255
  %1712 = tail call i32 @llvm.ctpop.i32(i32 %1711)
  %1713 = trunc i32 %1712 to i8
  %1714 = and i8 %1713, 1
  %1715 = xor i8 %1714, 1
  store i8 %1715, i8* %21, align 1
  %1716 = xor i32 %1704, %1699
  %1717 = xor i32 %1716, %1705
  %1718 = lshr i32 %1717, 4
  %1719 = trunc i32 %1718 to i8
  %1720 = and i8 %1719, 1
  store i8 %1720, i8* %27, align 1
  %1721 = icmp eq i32 %1705, 0
  %1722 = zext i1 %1721 to i8
  store i8 %1722, i8* %30, align 1
  %1723 = lshr i32 %1705, 31
  %1724 = trunc i32 %1723 to i8
  store i8 %1724, i8* %33, align 1
  %1725 = lshr i32 %1699, 31
  %1726 = lshr i32 %1704, 31
  %1727 = xor i32 %1723, %1725
  %1728 = xor i32 %1723, %1726
  %1729 = add nuw nsw i32 %1727, %1728
  %1730 = icmp eq i32 %1729, 2
  %1731 = zext i1 %1730 to i8
  store i8 %1731, i8* %39, align 1
  %1732 = sext i32 %1705 to i64
  store i64 %1732, i64* %RDI.i2177, align 8
  %1733 = shl nsw i64 %1732, 1
  %1734 = add i64 %1695, %1733
  %1735 = add i64 %1581, 99
  store i64 %1735, i64* %3, align 8
  %1736 = inttoptr i64 %1734 to i16*
  %1737 = load i16, i16* %1736, align 2
  %1738 = sext i16 %1737 to i64
  store i64 %1738, i64* %RCX.i2230, align 8
  %1739 = load i64, i64* %RAX.i778, align 8
  %1740 = shl nsw i64 %1738, 3
  %1741 = add i64 %1740, %1739
  %1742 = add i64 %1581, 103
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to i64*
  %1744 = load i64, i64* %1743, align 8
  store i64 %1744, i64* %RAX.i778, align 8
  %1745 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1745, i64* %RCX.i2230, align 8
  %1746 = add i64 %1745, 6488
  %1747 = add i64 %1581, 118
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1746 to i64*
  %1749 = load i64, i64* %1748, align 8
  store i64 %1749, i64* %RCX.i2230, align 8
  %1750 = add i64 %1749, 8
  %1751 = add i64 %1581, 122
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1750 to i64*
  %1753 = load i64, i64* %1752, align 8
  store i64 %1753, i64* %RCX.i2230, align 8
  %1754 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1754, i64* %RDI.i2177, align 8
  %1755 = add i64 %1754, 144
  %1756 = add i64 %1581, 136
  store i64 %1756, i64* %3, align 8
  %1757 = inttoptr i64 %1755 to i32*
  %1758 = load i32, i32* %1757, align 4
  %1759 = zext i32 %1758 to i64
  store i64 %1759, i64* %RSI.i1789, align 8
  %1760 = load i64, i64* %RBP.i, align 8
  %1761 = add i64 %1760, -20
  %1762 = add i64 %1581, 139
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to i32*
  %1764 = load i32, i32* %1763, align 4
  %1765 = add i32 %1764, %1758
  %1766 = zext i32 %1765 to i64
  store i64 %1766, i64* %RSI.i1789, align 8
  %1767 = icmp ult i32 %1765, %1758
  %1768 = icmp ult i32 %1765, %1764
  %1769 = or i1 %1767, %1768
  %1770 = zext i1 %1769 to i8
  store i8 %1770, i8* %14, align 1
  %1771 = and i32 %1765, 255
  %1772 = tail call i32 @llvm.ctpop.i32(i32 %1771)
  %1773 = trunc i32 %1772 to i8
  %1774 = and i8 %1773, 1
  %1775 = xor i8 %1774, 1
  store i8 %1775, i8* %21, align 1
  %1776 = xor i32 %1764, %1758
  %1777 = xor i32 %1776, %1765
  %1778 = lshr i32 %1777, 4
  %1779 = trunc i32 %1778 to i8
  %1780 = and i8 %1779, 1
  store i8 %1780, i8* %27, align 1
  %1781 = icmp eq i32 %1765, 0
  %1782 = zext i1 %1781 to i8
  store i8 %1782, i8* %30, align 1
  %1783 = lshr i32 %1765, 31
  %1784 = trunc i32 %1783 to i8
  store i8 %1784, i8* %33, align 1
  %1785 = lshr i32 %1758, 31
  %1786 = lshr i32 %1764, 31
  %1787 = xor i32 %1783, %1785
  %1788 = xor i32 %1783, %1786
  %1789 = add nuw nsw i32 %1787, %1788
  %1790 = icmp eq i32 %1789, 2
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %39, align 1
  %1792 = sext i32 %1765 to i64
  store i64 %1792, i64* %RDI.i2177, align 8
  %1793 = shl nsw i64 %1792, 3
  %1794 = add i64 %1753, %1793
  %1795 = add i64 %1581, 146
  store i64 %1795, i64* %3, align 8
  %1796 = inttoptr i64 %1794 to i64*
  %1797 = load i64, i64* %1796, align 8
  store i64 %1797, i64* %RCX.i2230, align 8
  store i64 %1754, i64* %RDI.i2177, align 8
  %1798 = add i64 %1754, 148
  %1799 = add i64 %1581, 160
  store i64 %1799, i64* %3, align 8
  %1800 = inttoptr i64 %1798 to i32*
  %1801 = load i32, i32* %1800, align 4
  %1802 = zext i32 %1801 to i64
  store i64 %1802, i64* %RSI.i1789, align 8
  %1803 = add i64 %1760, -24
  %1804 = add i64 %1581, 163
  store i64 %1804, i64* %3, align 8
  %1805 = inttoptr i64 %1803 to i32*
  %1806 = load i32, i32* %1805, align 4
  %1807 = add i32 %1806, %1801
  %1808 = zext i32 %1807 to i64
  store i64 %1808, i64* %RSI.i1789, align 8
  %1809 = icmp ult i32 %1807, %1801
  %1810 = icmp ult i32 %1807, %1806
  %1811 = or i1 %1809, %1810
  %1812 = zext i1 %1811 to i8
  store i8 %1812, i8* %14, align 1
  %1813 = and i32 %1807, 255
  %1814 = tail call i32 @llvm.ctpop.i32(i32 %1813)
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  store i8 %1817, i8* %21, align 1
  %1818 = xor i32 %1806, %1801
  %1819 = xor i32 %1818, %1807
  %1820 = lshr i32 %1819, 4
  %1821 = trunc i32 %1820 to i8
  %1822 = and i8 %1821, 1
  store i8 %1822, i8* %27, align 1
  %1823 = icmp eq i32 %1807, 0
  %1824 = zext i1 %1823 to i8
  store i8 %1824, i8* %30, align 1
  %1825 = lshr i32 %1807, 31
  %1826 = trunc i32 %1825 to i8
  store i8 %1826, i8* %33, align 1
  %1827 = lshr i32 %1801, 31
  %1828 = lshr i32 %1806, 31
  %1829 = xor i32 %1825, %1827
  %1830 = xor i32 %1825, %1828
  %1831 = add nuw nsw i32 %1829, %1830
  %1832 = icmp eq i32 %1831, 2
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %39, align 1
  %1834 = sext i32 %1807 to i64
  store i64 %1834, i64* %RDI.i2177, align 8
  %1835 = shl nsw i64 %1834, 3
  %1836 = add i64 %1797, %1835
  %1837 = load i64, i64* %RAX.i778, align 8
  %1838 = add i64 %1581, 170
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1836 to i64*
  store i64 %1837, i64* %1839, align 8
  %.pre145 = load i64, i64* %3, align 8
  %.pre146 = load i64, i64* %RBP.i, align 8
  br label %block_.L_430634

block_.L_430634:                                  ; preds = %block_430522, %block_43040d
  %1840 = phi i64 [ %.pre146, %block_430522 ], [ %1429, %block_43040d ]
  %1841 = phi i64 [ %.pre145, %block_430522 ], [ %1444, %block_43040d ]
  %1842 = add i64 %1840, -20
  %1843 = add i64 %1841, 8
  store i64 %1843, i64* %3, align 8
  %1844 = inttoptr i64 %1842 to i32*
  %1845 = load i32, i32* %1844, align 4
  %1846 = add i32 %1845, 1
  %1847 = zext i32 %1846 to i64
  store i64 %1847, i64* %RAX.i778, align 8
  %1848 = icmp eq i32 %1845, -1
  %1849 = icmp eq i32 %1846, 0
  %1850 = or i1 %1848, %1849
  %1851 = zext i1 %1850 to i8
  store i8 %1851, i8* %14, align 1
  %1852 = and i32 %1846, 255
  %1853 = tail call i32 @llvm.ctpop.i32(i32 %1852)
  %1854 = trunc i32 %1853 to i8
  %1855 = and i8 %1854, 1
  %1856 = xor i8 %1855, 1
  store i8 %1856, i8* %21, align 1
  %1857 = xor i32 %1846, %1845
  %1858 = lshr i32 %1857, 4
  %1859 = trunc i32 %1858 to i8
  %1860 = and i8 %1859, 1
  store i8 %1860, i8* %27, align 1
  %1861 = zext i1 %1849 to i8
  store i8 %1861, i8* %30, align 1
  %1862 = lshr i32 %1846, 31
  %1863 = trunc i32 %1862 to i8
  store i8 %1863, i8* %33, align 1
  %1864 = lshr i32 %1845, 31
  %1865 = xor i32 %1862, %1864
  %1866 = add nuw nsw i32 %1865, %1862
  %1867 = icmp eq i32 %1866, 2
  %1868 = zext i1 %1867 to i8
  store i8 %1868, i8* %39, align 1
  %1869 = add i64 %1841, 14
  store i64 %1869, i64* %3, align 8
  store i32 %1846, i32* %1844, align 4
  %1870 = load i64, i64* %3, align 8
  %1871 = add i64 %1870, -575
  store i64 %1871, i64* %3, align 8
  br label %block_.L_430403

block_.L_430647:                                  ; preds = %block_.L_430403
  %1872 = add i64 %1012, -24
  %1873 = add i64 %1040, 8
  store i64 %1873, i64* %3, align 8
  %1874 = inttoptr i64 %1872 to i32*
  %1875 = load i32, i32* %1874, align 4
  %1876 = add i32 %1875, 1
  %1877 = zext i32 %1876 to i64
  store i64 %1877, i64* %RAX.i778, align 8
  %1878 = icmp eq i32 %1875, -1
  %1879 = icmp eq i32 %1876, 0
  %1880 = or i1 %1878, %1879
  %1881 = zext i1 %1880 to i8
  store i8 %1881, i8* %14, align 1
  %1882 = and i32 %1876, 255
  %1883 = tail call i32 @llvm.ctpop.i32(i32 %1882)
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  %1886 = xor i8 %1885, 1
  store i8 %1886, i8* %21, align 1
  %1887 = xor i32 %1876, %1875
  %1888 = lshr i32 %1887, 4
  %1889 = trunc i32 %1888 to i8
  %1890 = and i8 %1889, 1
  store i8 %1890, i8* %27, align 1
  %1891 = zext i1 %1879 to i8
  store i8 %1891, i8* %30, align 1
  %1892 = lshr i32 %1876, 31
  %1893 = trunc i32 %1892 to i8
  store i8 %1893, i8* %33, align 1
  %1894 = lshr i32 %1875, 31
  %1895 = xor i32 %1892, %1894
  %1896 = add nuw nsw i32 %1895, %1892
  %1897 = icmp eq i32 %1896, 2
  %1898 = zext i1 %1897 to i8
  store i8 %1898, i8* %39, align 1
  %1899 = add i64 %1040, 14
  store i64 %1899, i64* %3, align 8
  store i32 %1876, i32* %1874, align 4
  %1900 = load i64, i64* %3, align 8
  %1901 = add i64 %1900, -611
  store i64 %1901, i64* %3, align 8
  br label %block_.L_4303f2

block_.L_43065a:                                  ; preds = %block_.L_4303f2
  %1902 = add i64 %1007, 7
  store i64 %1902, i64* %3, align 8
  store i32 0, i32* %982, align 4
  %SI.i1476 = bitcast %union.anon* %977 to i16*
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_430661

block_.L_430661:                                  ; preds = %block_.L_4306ea, %block_.L_43065a
  %1903 = phi i64 [ %2188, %block_.L_4306ea ], [ %.pre113, %block_.L_43065a ]
  %1904 = load i64, i64* %RBP.i, align 8
  %1905 = add i64 %1904, -24
  %1906 = add i64 %1903, 4
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1905 to i32*
  %1908 = load i32, i32* %1907, align 4
  %1909 = add i32 %1908, -16
  %1910 = icmp ult i32 %1908, 16
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %14, align 1
  %1912 = and i32 %1909, 255
  %1913 = tail call i32 @llvm.ctpop.i32(i32 %1912)
  %1914 = trunc i32 %1913 to i8
  %1915 = and i8 %1914, 1
  %1916 = xor i8 %1915, 1
  store i8 %1916, i8* %21, align 1
  %1917 = xor i32 %1908, 16
  %1918 = xor i32 %1917, %1909
  %1919 = lshr i32 %1918, 4
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  store i8 %1921, i8* %27, align 1
  %1922 = icmp eq i32 %1909, 0
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %30, align 1
  %1924 = lshr i32 %1909, 31
  %1925 = trunc i32 %1924 to i8
  store i8 %1925, i8* %33, align 1
  %1926 = lshr i32 %1908, 31
  %1927 = xor i32 %1924, %1926
  %1928 = add nuw nsw i32 %1927, %1926
  %1929 = icmp eq i32 %1928, 2
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %39, align 1
  %1931 = icmp ne i8 %1925, 0
  %1932 = xor i1 %1931, %1929
  %.v172 = select i1 %1932, i64 10, i64 156
  %1933 = add i64 %1903, %.v172
  store i64 %1933, i64* %3, align 8
  br i1 %1932, label %block_43066b, label %block_.L_4306fd

block_43066b:                                     ; preds = %block_.L_430661
  %1934 = add i64 %1904, -20
  %1935 = add i64 %1933, 7
  store i64 %1935, i64* %3, align 8
  %1936 = inttoptr i64 %1934 to i32*
  store i32 0, i32* %1936, align 4
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_430672

block_.L_430672:                                  ; preds = %block_43067c, %block_43066b
  %1937 = phi i64 [ %2158, %block_43067c ], [ %.pre143, %block_43066b ]
  %1938 = load i64, i64* %RBP.i, align 8
  %1939 = add i64 %1938, -20
  %1940 = add i64 %1937, 4
  store i64 %1940, i64* %3, align 8
  %1941 = inttoptr i64 %1939 to i32*
  %1942 = load i32, i32* %1941, align 4
  %1943 = add i32 %1942, -16
  %1944 = icmp ult i32 %1942, 16
  %1945 = zext i1 %1944 to i8
  store i8 %1945, i8* %14, align 1
  %1946 = and i32 %1943, 255
  %1947 = tail call i32 @llvm.ctpop.i32(i32 %1946)
  %1948 = trunc i32 %1947 to i8
  %1949 = and i8 %1948, 1
  %1950 = xor i8 %1949, 1
  store i8 %1950, i8* %21, align 1
  %1951 = xor i32 %1942, 16
  %1952 = xor i32 %1951, %1943
  %1953 = lshr i32 %1952, 4
  %1954 = trunc i32 %1953 to i8
  %1955 = and i8 %1954, 1
  store i8 %1955, i8* %27, align 1
  %1956 = icmp eq i32 %1943, 0
  %1957 = zext i1 %1956 to i8
  store i8 %1957, i8* %30, align 1
  %1958 = lshr i32 %1943, 31
  %1959 = trunc i32 %1958 to i8
  store i8 %1959, i8* %33, align 1
  %1960 = lshr i32 %1942, 31
  %1961 = xor i32 %1958, %1960
  %1962 = add nuw nsw i32 %1961, %1960
  %1963 = icmp eq i32 %1962, 2
  %1964 = zext i1 %1963 to i8
  store i8 %1964, i8* %39, align 1
  %1965 = icmp ne i8 %1959, 0
  %1966 = xor i1 %1965, %1963
  %.v160 = select i1 %1966, i64 10, i64 120
  %1967 = add i64 %1937, %.v160
  store i64 %1967, i64* %3, align 8
  br i1 %1966, label %block_43067c, label %block_.L_4306ea

block_43067c:                                     ; preds = %block_.L_430672
  %1968 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  %1969 = add i64 %1968, 8
  store i64 %1969, i64* %RAX.i778, align 8
  %1970 = icmp ugt i64 %1968, -9
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %14, align 1
  %1972 = trunc i64 %1969 to i32
  %1973 = and i32 %1972, 255
  %1974 = tail call i32 @llvm.ctpop.i32(i32 %1973)
  %1975 = trunc i32 %1974 to i8
  %1976 = and i8 %1975, 1
  %1977 = xor i8 %1976, 1
  store i8 %1977, i8* %21, align 1
  %1978 = xor i64 %1969, %1968
  %1979 = lshr i64 %1978, 4
  %1980 = trunc i64 %1979 to i8
  %1981 = and i8 %1980, 1
  store i8 %1981, i8* %27, align 1
  %1982 = icmp eq i64 %1969, 0
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %30, align 1
  %1984 = lshr i64 %1969, 63
  %1985 = trunc i64 %1984 to i8
  store i8 %1985, i8* %33, align 1
  %1986 = lshr i64 %1968, 63
  %1987 = xor i64 %1984, %1986
  %1988 = add nuw nsw i64 %1987, %1984
  %1989 = icmp eq i64 %1988, 2
  %1990 = zext i1 %1989 to i8
  store i8 %1990, i8* %39, align 1
  %1991 = add i64 %1938, -24
  %1992 = add i64 %1967, 16
  store i64 %1992, i64* %3, align 8
  %1993 = inttoptr i64 %1991 to i32*
  %1994 = load i32, i32* %1993, align 4
  %1995 = sext i32 %1994 to i64
  %1996 = shl nsw i64 %1995, 6
  store i64 %1996, i64* %RCX.i2230, align 8
  %1997 = add i64 %1996, %1969
  store i64 %1997, i64* %RAX.i778, align 8
  %1998 = icmp ult i64 %1997, %1969
  %1999 = icmp ult i64 %1997, %1996
  %2000 = or i1 %1998, %1999
  %2001 = zext i1 %2000 to i8
  store i8 %2001, i8* %14, align 1
  %2002 = trunc i64 %1997 to i32
  %2003 = and i32 %2002, 255
  %2004 = tail call i32 @llvm.ctpop.i32(i32 %2003)
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  %2007 = xor i8 %2006, 1
  store i8 %2007, i8* %21, align 1
  %2008 = xor i64 %1969, %1997
  %2009 = lshr i64 %2008, 4
  %2010 = trunc i64 %2009 to i8
  %2011 = and i8 %2010, 1
  store i8 %2011, i8* %27, align 1
  %2012 = icmp eq i64 %1997, 0
  %2013 = zext i1 %2012 to i8
  store i8 %2013, i8* %30, align 1
  %2014 = lshr i64 %1997, 63
  %2015 = trunc i64 %2014 to i8
  store i8 %2015, i8* %33, align 1
  %2016 = lshr i64 %1995, 57
  %2017 = and i64 %2016, 1
  %2018 = xor i64 %2014, %1984
  %2019 = xor i64 %2014, %2017
  %2020 = add nuw nsw i64 %2018, %2019
  %2021 = icmp eq i64 %2020, 2
  %2022 = zext i1 %2021 to i8
  store i8 %2022, i8* %39, align 1
  %2023 = load i64, i64* %RBP.i, align 8
  %2024 = add i64 %2023, -20
  %2025 = add i64 %1967, 27
  store i64 %2025, i64* %3, align 8
  %2026 = inttoptr i64 %2024 to i32*
  %2027 = load i32, i32* %2026, align 4
  %2028 = sext i32 %2027 to i64
  store i64 %2028, i64* %RCX.i2230, align 8
  %2029 = shl nsw i64 %2028, 2
  %2030 = add i64 %2029, %1997
  %2031 = add i64 %1967, 30
  store i64 %2031, i64* %3, align 8
  %2032 = inttoptr i64 %2030 to i32*
  %2033 = load i32, i32* %2032, align 4
  %2034 = zext i32 %2033 to i64
  store i64 %2034, i64* %RDX.i2114.pre-phi, align 8
  %2035 = trunc i32 %2033 to i16
  store i16 %2035, i16* %SI.i1476, align 2
  %2036 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %2036, i64* %RAX.i778, align 8
  %2037 = add i64 %2036, 6424
  %2038 = add i64 %1967, 48
  store i64 %2038, i64* %3, align 8
  %2039 = inttoptr i64 %2037 to i64*
  %2040 = load i64, i64* %2039, align 8
  store i64 %2040, i64* %RAX.i778, align 8
  %2041 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2041, i64* %RCX.i2230, align 8
  %2042 = add i64 %2041, 156
  %2043 = add i64 %1967, 62
  store i64 %2043, i64* %3, align 8
  %2044 = inttoptr i64 %2042 to i32*
  %2045 = load i32, i32* %2044, align 4
  %2046 = zext i32 %2045 to i64
  store i64 %2046, i64* %RDX.i2114.pre-phi, align 8
  %2047 = add i64 %2023, -24
  %2048 = add i64 %1967, 65
  store i64 %2048, i64* %3, align 8
  %2049 = inttoptr i64 %2047 to i32*
  %2050 = load i32, i32* %2049, align 4
  %2051 = add i32 %2050, %2045
  %2052 = zext i32 %2051 to i64
  store i64 %2052, i64* %RDX.i2114.pre-phi, align 8
  %2053 = icmp ult i32 %2051, %2045
  %2054 = icmp ult i32 %2051, %2050
  %2055 = or i1 %2053, %2054
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %14, align 1
  %2057 = and i32 %2051, 255
  %2058 = tail call i32 @llvm.ctpop.i32(i32 %2057)
  %2059 = trunc i32 %2058 to i8
  %2060 = and i8 %2059, 1
  %2061 = xor i8 %2060, 1
  store i8 %2061, i8* %21, align 1
  %2062 = xor i32 %2050, %2045
  %2063 = xor i32 %2062, %2051
  %2064 = lshr i32 %2063, 4
  %2065 = trunc i32 %2064 to i8
  %2066 = and i8 %2065, 1
  store i8 %2066, i8* %27, align 1
  %2067 = icmp eq i32 %2051, 0
  %2068 = zext i1 %2067 to i8
  store i8 %2068, i8* %30, align 1
  %2069 = lshr i32 %2051, 31
  %2070 = trunc i32 %2069 to i8
  store i8 %2070, i8* %33, align 1
  %2071 = lshr i32 %2045, 31
  %2072 = lshr i32 %2050, 31
  %2073 = xor i32 %2069, %2071
  %2074 = xor i32 %2069, %2072
  %2075 = add nuw nsw i32 %2073, %2074
  %2076 = icmp eq i32 %2075, 2
  %2077 = zext i1 %2076 to i8
  store i8 %2077, i8* %39, align 1
  %2078 = sext i32 %2051 to i64
  store i64 %2078, i64* %RCX.i2230, align 8
  %2079 = shl nsw i64 %2078, 3
  %2080 = add i64 %2040, %2079
  %2081 = add i64 %1967, 72
  store i64 %2081, i64* %3, align 8
  %2082 = inttoptr i64 %2080 to i64*
  %2083 = load i64, i64* %2082, align 8
  store i64 %2083, i64* %RAX.i778, align 8
  store i64 %2041, i64* %RCX.i2230, align 8
  %2084 = add i64 %2041, 152
  %2085 = add i64 %1967, 86
  store i64 %2085, i64* %3, align 8
  %2086 = inttoptr i64 %2084 to i32*
  %2087 = load i32, i32* %2086, align 4
  %2088 = zext i32 %2087 to i64
  store i64 %2088, i64* %RDX.i2114.pre-phi, align 8
  %2089 = load i64, i64* %RBP.i, align 8
  %2090 = add i64 %2089, -20
  %2091 = add i64 %1967, 89
  store i64 %2091, i64* %3, align 8
  %2092 = inttoptr i64 %2090 to i32*
  %2093 = load i32, i32* %2092, align 4
  %2094 = add i32 %2093, %2087
  %2095 = zext i32 %2094 to i64
  store i64 %2095, i64* %RDX.i2114.pre-phi, align 8
  %2096 = icmp ult i32 %2094, %2087
  %2097 = icmp ult i32 %2094, %2093
  %2098 = or i1 %2096, %2097
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %14, align 1
  %2100 = and i32 %2094, 255
  %2101 = tail call i32 @llvm.ctpop.i32(i32 %2100)
  %2102 = trunc i32 %2101 to i8
  %2103 = and i8 %2102, 1
  %2104 = xor i8 %2103, 1
  store i8 %2104, i8* %21, align 1
  %2105 = xor i32 %2093, %2087
  %2106 = xor i32 %2105, %2094
  %2107 = lshr i32 %2106, 4
  %2108 = trunc i32 %2107 to i8
  %2109 = and i8 %2108, 1
  store i8 %2109, i8* %27, align 1
  %2110 = icmp eq i32 %2094, 0
  %2111 = zext i1 %2110 to i8
  store i8 %2111, i8* %30, align 1
  %2112 = lshr i32 %2094, 31
  %2113 = trunc i32 %2112 to i8
  store i8 %2113, i8* %33, align 1
  %2114 = lshr i32 %2087, 31
  %2115 = lshr i32 %2093, 31
  %2116 = xor i32 %2112, %2114
  %2117 = xor i32 %2112, %2115
  %2118 = add nuw nsw i32 %2116, %2117
  %2119 = icmp eq i32 %2118, 2
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %39, align 1
  %2121 = sext i32 %2094 to i64
  store i64 %2121, i64* %RCX.i2230, align 8
  %2122 = shl nsw i64 %2121, 1
  %2123 = add i64 %2083, %2122
  %2124 = load i16, i16* %SI.i1476, align 2
  %2125 = add i64 %1967, 96
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2123 to i16*
  store i16 %2124, i16* %2126, align 2
  %2127 = load i64, i64* %RBP.i, align 8
  %2128 = add i64 %2127, -20
  %2129 = load i64, i64* %3, align 8
  %2130 = add i64 %2129, 3
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2128 to i32*
  %2132 = load i32, i32* %2131, align 4
  %2133 = add i32 %2132, 1
  %2134 = zext i32 %2133 to i64
  store i64 %2134, i64* %RAX.i778, align 8
  %2135 = icmp eq i32 %2132, -1
  %2136 = icmp eq i32 %2133, 0
  %2137 = or i1 %2135, %2136
  %2138 = zext i1 %2137 to i8
  store i8 %2138, i8* %14, align 1
  %2139 = and i32 %2133, 255
  %2140 = tail call i32 @llvm.ctpop.i32(i32 %2139)
  %2141 = trunc i32 %2140 to i8
  %2142 = and i8 %2141, 1
  %2143 = xor i8 %2142, 1
  store i8 %2143, i8* %21, align 1
  %2144 = xor i32 %2133, %2132
  %2145 = lshr i32 %2144, 4
  %2146 = trunc i32 %2145 to i8
  %2147 = and i8 %2146, 1
  store i8 %2147, i8* %27, align 1
  %2148 = zext i1 %2136 to i8
  store i8 %2148, i8* %30, align 1
  %2149 = lshr i32 %2133, 31
  %2150 = trunc i32 %2149 to i8
  store i8 %2150, i8* %33, align 1
  %2151 = lshr i32 %2132, 31
  %2152 = xor i32 %2149, %2151
  %2153 = add nuw nsw i32 %2152, %2149
  %2154 = icmp eq i32 %2153, 2
  %2155 = zext i1 %2154 to i8
  store i8 %2155, i8* %39, align 1
  %2156 = add i64 %2129, 9
  store i64 %2156, i64* %3, align 8
  store i32 %2133, i32* %2131, align 4
  %2157 = load i64, i64* %3, align 8
  %2158 = add i64 %2157, -115
  store i64 %2158, i64* %3, align 8
  br label %block_.L_430672

block_.L_4306ea:                                  ; preds = %block_.L_430672
  %2159 = add i64 %1938, -24
  %2160 = add i64 %1967, 8
  store i64 %2160, i64* %3, align 8
  %2161 = inttoptr i64 %2159 to i32*
  %2162 = load i32, i32* %2161, align 4
  %2163 = add i32 %2162, 1
  %2164 = zext i32 %2163 to i64
  store i64 %2164, i64* %RAX.i778, align 8
  %2165 = icmp eq i32 %2162, -1
  %2166 = icmp eq i32 %2163, 0
  %2167 = or i1 %2165, %2166
  %2168 = zext i1 %2167 to i8
  store i8 %2168, i8* %14, align 1
  %2169 = and i32 %2163, 255
  %2170 = tail call i32 @llvm.ctpop.i32(i32 %2169)
  %2171 = trunc i32 %2170 to i8
  %2172 = and i8 %2171, 1
  %2173 = xor i8 %2172, 1
  store i8 %2173, i8* %21, align 1
  %2174 = xor i32 %2163, %2162
  %2175 = lshr i32 %2174, 4
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  store i8 %2177, i8* %27, align 1
  %2178 = zext i1 %2166 to i8
  store i8 %2178, i8* %30, align 1
  %2179 = lshr i32 %2163, 31
  %2180 = trunc i32 %2179 to i8
  store i8 %2180, i8* %33, align 1
  %2181 = lshr i32 %2162, 31
  %2182 = xor i32 %2179, %2181
  %2183 = add nuw nsw i32 %2182, %2179
  %2184 = icmp eq i32 %2183, 2
  %2185 = zext i1 %2184 to i8
  store i8 %2185, i8* %39, align 1
  %2186 = add i64 %1967, 14
  store i64 %2186, i64* %3, align 8
  store i32 %2163, i32* %2161, align 4
  %2187 = load i64, i64* %3, align 8
  %2188 = add i64 %2187, -151
  store i64 %2188, i64* %3, align 8
  br label %block_.L_430661

block_.L_4306fd:                                  ; preds = %block_.L_430661
  %2189 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2189, i64* %RAX.i778, align 8
  %2190 = add i64 %2189, 72700
  %2191 = add i64 %1933, 15
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2190 to i32*
  %2193 = load i32, i32* %2192, align 4
  store i8 0, i8* %14, align 1
  %2194 = and i32 %2193, 255
  %2195 = tail call i32 @llvm.ctpop.i32(i32 %2194)
  %2196 = trunc i32 %2195 to i8
  %2197 = and i8 %2196, 1
  %2198 = xor i8 %2197, 1
  store i8 %2198, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2199 = icmp eq i32 %2193, 0
  %2200 = zext i1 %2199 to i8
  store i8 %2200, i8* %30, align 1
  %2201 = lshr i32 %2193, 31
  %2202 = trunc i32 %2201 to i8
  store i8 %2202, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v173 = select i1 %2199, i64 322, i64 21
  %2203 = add i64 %1933, %.v173
  store i64 %2203, i64* %3, align 8
  br i1 %2199, label %block_.L_43083f, label %block_430712

block_430712:                                     ; preds = %block_.L_4306fd
  %2204 = add i64 %2203, 7
  store i64 %2204, i64* %3, align 8
  store i32 0, i32* %1907, align 4
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_430719

block_.L_430719:                                  ; preds = %block_.L_430827, %block_430712
  %2205 = phi i64 [ %2648, %block_.L_430827 ], [ %.pre114, %block_430712 ]
  %2206 = load i64, i64* %RBP.i, align 8
  %2207 = add i64 %2206, -24
  %2208 = add i64 %2205, 3
  store i64 %2208, i64* %3, align 8
  %2209 = inttoptr i64 %2207 to i32*
  %2210 = load i32, i32* %2209, align 4
  %2211 = zext i32 %2210 to i64
  store i64 %2211, i64* %RAX.i778, align 8
  %2212 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2212, i64* %RCX.i2230, align 8
  %2213 = add i64 %2212, 72712
  %2214 = add i64 %2205, 17
  store i64 %2214, i64* %3, align 8
  %2215 = inttoptr i64 %2213 to i32*
  %2216 = load i32, i32* %2215, align 4
  %2217 = sub i32 %2210, %2216
  %2218 = icmp ult i32 %2210, %2216
  %2219 = zext i1 %2218 to i8
  store i8 %2219, i8* %14, align 1
  %2220 = and i32 %2217, 255
  %2221 = tail call i32 @llvm.ctpop.i32(i32 %2220)
  %2222 = trunc i32 %2221 to i8
  %2223 = and i8 %2222, 1
  %2224 = xor i8 %2223, 1
  store i8 %2224, i8* %21, align 1
  %2225 = xor i32 %2216, %2210
  %2226 = xor i32 %2225, %2217
  %2227 = lshr i32 %2226, 4
  %2228 = trunc i32 %2227 to i8
  %2229 = and i8 %2228, 1
  store i8 %2229, i8* %27, align 1
  %2230 = icmp eq i32 %2217, 0
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %30, align 1
  %2232 = lshr i32 %2217, 31
  %2233 = trunc i32 %2232 to i8
  store i8 %2233, i8* %33, align 1
  %2234 = lshr i32 %2210, 31
  %2235 = lshr i32 %2216, 31
  %2236 = xor i32 %2235, %2234
  %2237 = xor i32 %2232, %2234
  %2238 = add nuw nsw i32 %2237, %2236
  %2239 = icmp eq i32 %2238, 2
  %2240 = zext i1 %2239 to i8
  store i8 %2240, i8* %39, align 1
  %2241 = icmp ne i8 %2233, 0
  %2242 = xor i1 %2241, %2239
  %.v174 = select i1 %2242, i64 23, i64 289
  %2243 = add i64 %2205, %.v174
  store i64 %2243, i64* %3, align 8
  br i1 %2242, label %block_430730, label %block_.L_43083a

block_430730:                                     ; preds = %block_.L_430719
  %2244 = add i64 %2206, -20
  %2245 = add i64 %2243, 7
  store i64 %2245, i64* %3, align 8
  %2246 = inttoptr i64 %2244 to i32*
  store i32 0, i32* %2246, align 4
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_430737

block_.L_430737:                                  ; preds = %block_43074e, %block_430730
  %2247 = phi i64 [ %2618, %block_43074e ], [ %.pre115, %block_430730 ]
  %2248 = load i64, i64* %RBP.i, align 8
  %2249 = add i64 %2248, -20
  %2250 = add i64 %2247, 3
  store i64 %2250, i64* %3, align 8
  %2251 = inttoptr i64 %2249 to i32*
  %2252 = load i32, i32* %2251, align 4
  %2253 = zext i32 %2252 to i64
  store i64 %2253, i64* %RAX.i778, align 8
  %2254 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2254, i64* %RCX.i2230, align 8
  %2255 = add i64 %2254, 72708
  %2256 = add i64 %2247, 17
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2255 to i32*
  %2258 = load i32, i32* %2257, align 4
  %2259 = sub i32 %2252, %2258
  %2260 = icmp ult i32 %2252, %2258
  %2261 = zext i1 %2260 to i8
  store i8 %2261, i8* %14, align 1
  %2262 = and i32 %2259, 255
  %2263 = tail call i32 @llvm.ctpop.i32(i32 %2262)
  %2264 = trunc i32 %2263 to i8
  %2265 = and i8 %2264, 1
  %2266 = xor i8 %2265, 1
  store i8 %2266, i8* %21, align 1
  %2267 = xor i32 %2258, %2252
  %2268 = xor i32 %2267, %2259
  %2269 = lshr i32 %2268, 4
  %2270 = trunc i32 %2269 to i8
  %2271 = and i8 %2270, 1
  store i8 %2271, i8* %27, align 1
  %2272 = icmp eq i32 %2259, 0
  %2273 = zext i1 %2272 to i8
  store i8 %2273, i8* %30, align 1
  %2274 = lshr i32 %2259, 31
  %2275 = trunc i32 %2274 to i8
  store i8 %2275, i8* %33, align 1
  %2276 = lshr i32 %2252, 31
  %2277 = lshr i32 %2258, 31
  %2278 = xor i32 %2277, %2276
  %2279 = xor i32 %2274, %2276
  %2280 = add nuw nsw i32 %2279, %2278
  %2281 = icmp eq i32 %2280, 2
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %39, align 1
  %2283 = icmp ne i8 %2275, 0
  %2284 = xor i1 %2283, %2281
  %.v159 = select i1 %2284, i64 23, i64 240
  %2285 = add i64 %2247, %.v159
  store i64 %2285, i64* %3, align 8
  br i1 %2284, label %block_43074e, label %block_.L_430827

block_43074e:                                     ; preds = %block_.L_430737
  %2286 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  %2287 = add i64 %2286, 1032
  store i64 %2287, i64* %RAX.i778, align 8
  %2288 = icmp ugt i64 %2286, -1033
  %2289 = zext i1 %2288 to i8
  store i8 %2289, i8* %14, align 1
  %2290 = trunc i64 %2287 to i32
  %2291 = and i32 %2290, 255
  %2292 = tail call i32 @llvm.ctpop.i32(i32 %2291)
  %2293 = trunc i32 %2292 to i8
  %2294 = and i8 %2293, 1
  %2295 = xor i8 %2294, 1
  store i8 %2295, i8* %21, align 1
  %2296 = xor i64 %2287, %2286
  %2297 = lshr i64 %2296, 4
  %2298 = trunc i64 %2297 to i8
  %2299 = and i8 %2298, 1
  store i8 %2299, i8* %27, align 1
  %2300 = icmp eq i64 %2287, 0
  %2301 = zext i1 %2300 to i8
  store i8 %2301, i8* %30, align 1
  %2302 = lshr i64 %2287, 63
  %2303 = trunc i64 %2302 to i8
  store i8 %2303, i8* %33, align 1
  %2304 = lshr i64 %2286, 63
  %2305 = xor i64 %2302, %2304
  %2306 = add nuw nsw i64 %2305, %2302
  %2307 = icmp eq i64 %2306, 2
  %2308 = zext i1 %2307 to i8
  store i8 %2308, i8* %39, align 1
  %2309 = add i64 %2248, -24
  %2310 = add i64 %2285, 18
  store i64 %2310, i64* %3, align 8
  %2311 = inttoptr i64 %2309 to i32*
  %2312 = load i32, i32* %2311, align 4
  %2313 = sext i32 %2312 to i64
  %2314 = shl nsw i64 %2313, 6
  store i64 %2314, i64* %RCX.i2230, align 8
  %2315 = add i64 %2314, %2287
  store i64 %2315, i64* %RAX.i778, align 8
  %2316 = icmp ult i64 %2315, %2287
  %2317 = icmp ult i64 %2315, %2314
  %2318 = or i1 %2316, %2317
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %14, align 1
  %2320 = trunc i64 %2315 to i32
  %2321 = and i32 %2320, 255
  %2322 = tail call i32 @llvm.ctpop.i32(i32 %2321)
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  %2325 = xor i8 %2324, 1
  store i8 %2325, i8* %21, align 1
  %2326 = xor i64 %2287, %2315
  %2327 = lshr i64 %2326, 4
  %2328 = trunc i64 %2327 to i8
  %2329 = and i8 %2328, 1
  store i8 %2329, i8* %27, align 1
  %2330 = icmp eq i64 %2315, 0
  %2331 = zext i1 %2330 to i8
  store i8 %2331, i8* %30, align 1
  %2332 = lshr i64 %2315, 63
  %2333 = trunc i64 %2332 to i8
  store i8 %2333, i8* %33, align 1
  %2334 = lshr i64 %2313, 57
  %2335 = and i64 %2334, 1
  %2336 = xor i64 %2332, %2302
  %2337 = xor i64 %2332, %2335
  %2338 = add nuw nsw i64 %2336, %2337
  %2339 = icmp eq i64 %2338, 2
  %2340 = zext i1 %2339 to i8
  store i8 %2340, i8* %39, align 1
  %2341 = load i64, i64* %RBP.i, align 8
  %2342 = add i64 %2341, -20
  %2343 = add i64 %2285, 29
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i32*
  %2345 = load i32, i32* %2344, align 4
  %2346 = sext i32 %2345 to i64
  store i64 %2346, i64* %RCX.i2230, align 8
  %2347 = shl nsw i64 %2346, 2
  %2348 = add i64 %2347, %2315
  %2349 = add i64 %2285, 32
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2348 to i32*
  %2351 = load i32, i32* %2350, align 4
  %2352 = zext i32 %2351 to i64
  store i64 %2352, i64* %RDX.i2114.pre-phi, align 8
  %2353 = trunc i32 %2351 to i16
  store i16 %2353, i16* %SI.i1476, align 2
  %2354 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %2354, i64* %RAX.i778, align 8
  %2355 = add i64 %2354, 6464
  %2356 = add i64 %2285, 50
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i64*
  %2358 = load i64, i64* %2357, align 8
  store i64 %2358, i64* %RAX.i778, align 8
  %2359 = add i64 %2285, 53
  store i64 %2359, i64* %3, align 8
  %2360 = inttoptr i64 %2358 to i64*
  %2361 = load i64, i64* %2360, align 8
  store i64 %2361, i64* %RAX.i778, align 8
  %2362 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2362, i64* %RCX.i2230, align 8
  %2363 = add i64 %2362, 164
  %2364 = add i64 %2285, 67
  store i64 %2364, i64* %3, align 8
  %2365 = inttoptr i64 %2363 to i32*
  %2366 = load i32, i32* %2365, align 4
  %2367 = zext i32 %2366 to i64
  store i64 %2367, i64* %RDX.i2114.pre-phi, align 8
  %2368 = add i64 %2341, -24
  %2369 = add i64 %2285, 70
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to i32*
  %2371 = load i32, i32* %2370, align 4
  %2372 = add i32 %2371, %2366
  %2373 = zext i32 %2372 to i64
  store i64 %2373, i64* %RDX.i2114.pre-phi, align 8
  %2374 = icmp ult i32 %2372, %2366
  %2375 = icmp ult i32 %2372, %2371
  %2376 = or i1 %2374, %2375
  %2377 = zext i1 %2376 to i8
  store i8 %2377, i8* %14, align 1
  %2378 = and i32 %2372, 255
  %2379 = tail call i32 @llvm.ctpop.i32(i32 %2378)
  %2380 = trunc i32 %2379 to i8
  %2381 = and i8 %2380, 1
  %2382 = xor i8 %2381, 1
  store i8 %2382, i8* %21, align 1
  %2383 = xor i32 %2371, %2366
  %2384 = xor i32 %2383, %2372
  %2385 = lshr i32 %2384, 4
  %2386 = trunc i32 %2385 to i8
  %2387 = and i8 %2386, 1
  store i8 %2387, i8* %27, align 1
  %2388 = icmp eq i32 %2372, 0
  %2389 = zext i1 %2388 to i8
  store i8 %2389, i8* %30, align 1
  %2390 = lshr i32 %2372, 31
  %2391 = trunc i32 %2390 to i8
  store i8 %2391, i8* %33, align 1
  %2392 = lshr i32 %2366, 31
  %2393 = lshr i32 %2371, 31
  %2394 = xor i32 %2390, %2392
  %2395 = xor i32 %2390, %2393
  %2396 = add nuw nsw i32 %2394, %2395
  %2397 = icmp eq i32 %2396, 2
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %39, align 1
  %2399 = sext i32 %2372 to i64
  store i64 %2399, i64* %RCX.i2230, align 8
  %2400 = shl nsw i64 %2399, 3
  %2401 = add i64 %2361, %2400
  %2402 = add i64 %2285, 77
  store i64 %2402, i64* %3, align 8
  %2403 = inttoptr i64 %2401 to i64*
  %2404 = load i64, i64* %2403, align 8
  store i64 %2404, i64* %RAX.i778, align 8
  store i64 %2362, i64* %RCX.i2230, align 8
  %2405 = add i64 %2362, 160
  %2406 = add i64 %2285, 91
  store i64 %2406, i64* %3, align 8
  %2407 = inttoptr i64 %2405 to i32*
  %2408 = load i32, i32* %2407, align 4
  %2409 = zext i32 %2408 to i64
  store i64 %2409, i64* %RDX.i2114.pre-phi, align 8
  %2410 = load i64, i64* %RBP.i, align 8
  %2411 = add i64 %2410, -20
  %2412 = add i64 %2285, 94
  store i64 %2412, i64* %3, align 8
  %2413 = inttoptr i64 %2411 to i32*
  %2414 = load i32, i32* %2413, align 4
  %2415 = add i32 %2414, %2408
  %2416 = zext i32 %2415 to i64
  store i64 %2416, i64* %RDX.i2114.pre-phi, align 8
  %2417 = sext i32 %2415 to i64
  store i64 %2417, i64* %RCX.i2230, align 8
  %2418 = shl nsw i64 %2417, 1
  %2419 = add i64 %2404, %2418
  %2420 = load i16, i16* %SI.i1476, align 2
  %2421 = add i64 %2285, 101
  store i64 %2421, i64* %3, align 8
  %2422 = inttoptr i64 %2419 to i16*
  store i16 %2420, i16* %2422, align 2
  %2423 = load i64, i64* %3, align 8
  %2424 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  %2425 = add i64 %2424, 2056
  store i64 %2425, i64* %RAX.i778, align 8
  %2426 = icmp ugt i64 %2424, -2057
  %2427 = zext i1 %2426 to i8
  store i8 %2427, i8* %14, align 1
  %2428 = trunc i64 %2425 to i32
  %2429 = and i32 %2428, 255
  %2430 = tail call i32 @llvm.ctpop.i32(i32 %2429)
  %2431 = trunc i32 %2430 to i8
  %2432 = and i8 %2431, 1
  %2433 = xor i8 %2432, 1
  store i8 %2433, i8* %21, align 1
  %2434 = xor i64 %2425, %2424
  %2435 = lshr i64 %2434, 4
  %2436 = trunc i64 %2435 to i8
  %2437 = and i8 %2436, 1
  store i8 %2437, i8* %27, align 1
  %2438 = icmp eq i64 %2425, 0
  %2439 = zext i1 %2438 to i8
  store i8 %2439, i8* %30, align 1
  %2440 = lshr i64 %2425, 63
  %2441 = trunc i64 %2440 to i8
  store i8 %2441, i8* %33, align 1
  %2442 = lshr i64 %2424, 63
  %2443 = xor i64 %2440, %2442
  %2444 = add nuw nsw i64 %2443, %2440
  %2445 = icmp eq i64 %2444, 2
  %2446 = zext i1 %2445 to i8
  store i8 %2446, i8* %39, align 1
  %2447 = load i64, i64* %RBP.i, align 8
  %2448 = add i64 %2447, -24
  %2449 = add i64 %2423, 18
  store i64 %2449, i64* %3, align 8
  %2450 = inttoptr i64 %2448 to i32*
  %2451 = load i32, i32* %2450, align 4
  %2452 = sext i32 %2451 to i64
  %2453 = shl nsw i64 %2452, 6
  store i64 %2453, i64* %RCX.i2230, align 8
  %2454 = add i64 %2453, %2425
  store i64 %2454, i64* %RAX.i778, align 8
  %2455 = icmp ult i64 %2454, %2425
  %2456 = icmp ult i64 %2454, %2453
  %2457 = or i1 %2455, %2456
  %2458 = zext i1 %2457 to i8
  store i8 %2458, i8* %14, align 1
  %2459 = trunc i64 %2454 to i32
  %2460 = and i32 %2459, 255
  %2461 = tail call i32 @llvm.ctpop.i32(i32 %2460)
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  %2464 = xor i8 %2463, 1
  store i8 %2464, i8* %21, align 1
  %2465 = xor i64 %2425, %2454
  %2466 = lshr i64 %2465, 4
  %2467 = trunc i64 %2466 to i8
  %2468 = and i8 %2467, 1
  store i8 %2468, i8* %27, align 1
  %2469 = icmp eq i64 %2454, 0
  %2470 = zext i1 %2469 to i8
  store i8 %2470, i8* %30, align 1
  %2471 = lshr i64 %2454, 63
  %2472 = trunc i64 %2471 to i8
  store i8 %2472, i8* %33, align 1
  %2473 = lshr i64 %2452, 57
  %2474 = and i64 %2473, 1
  %2475 = xor i64 %2471, %2440
  %2476 = xor i64 %2471, %2474
  %2477 = add nuw nsw i64 %2475, %2476
  %2478 = icmp eq i64 %2477, 2
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %39, align 1
  %2480 = add i64 %2447, -20
  %2481 = add i64 %2423, 29
  store i64 %2481, i64* %3, align 8
  %2482 = inttoptr i64 %2480 to i32*
  %2483 = load i32, i32* %2482, align 4
  %2484 = sext i32 %2483 to i64
  store i64 %2484, i64* %RCX.i2230, align 8
  %2485 = shl nsw i64 %2484, 2
  %2486 = add i64 %2485, %2454
  %2487 = add i64 %2423, 32
  store i64 %2487, i64* %3, align 8
  %2488 = inttoptr i64 %2486 to i32*
  %2489 = load i32, i32* %2488, align 4
  %2490 = zext i32 %2489 to i64
  store i64 %2490, i64* %RDX.i2114.pre-phi, align 8
  %2491 = trunc i32 %2489 to i16
  store i16 %2491, i16* %SI.i1476, align 2
  %2492 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %2492, i64* %RAX.i778, align 8
  %2493 = add i64 %2492, 6464
  %2494 = add i64 %2423, 50
  store i64 %2494, i64* %3, align 8
  %2495 = inttoptr i64 %2493 to i64*
  %2496 = load i64, i64* %2495, align 8
  store i64 %2496, i64* %RAX.i778, align 8
  %2497 = add i64 %2496, 8
  %2498 = add i64 %2423, 54
  store i64 %2498, i64* %3, align 8
  %2499 = inttoptr i64 %2497 to i64*
  %2500 = load i64, i64* %2499, align 8
  store i64 %2500, i64* %RAX.i778, align 8
  %2501 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2501, i64* %RCX.i2230, align 8
  %2502 = add i64 %2501, 164
  %2503 = add i64 %2423, 68
  store i64 %2503, i64* %3, align 8
  %2504 = inttoptr i64 %2502 to i32*
  %2505 = load i32, i32* %2504, align 4
  %2506 = zext i32 %2505 to i64
  store i64 %2506, i64* %RDX.i2114.pre-phi, align 8
  %2507 = load i64, i64* %RBP.i, align 8
  %2508 = add i64 %2507, -24
  %2509 = add i64 %2423, 71
  store i64 %2509, i64* %3, align 8
  %2510 = inttoptr i64 %2508 to i32*
  %2511 = load i32, i32* %2510, align 4
  %2512 = add i32 %2511, %2505
  %2513 = zext i32 %2512 to i64
  store i64 %2513, i64* %RDX.i2114.pre-phi, align 8
  %2514 = icmp ult i32 %2512, %2505
  %2515 = icmp ult i32 %2512, %2511
  %2516 = or i1 %2514, %2515
  %2517 = zext i1 %2516 to i8
  store i8 %2517, i8* %14, align 1
  %2518 = and i32 %2512, 255
  %2519 = tail call i32 @llvm.ctpop.i32(i32 %2518)
  %2520 = trunc i32 %2519 to i8
  %2521 = and i8 %2520, 1
  %2522 = xor i8 %2521, 1
  store i8 %2522, i8* %21, align 1
  %2523 = xor i32 %2511, %2505
  %2524 = xor i32 %2523, %2512
  %2525 = lshr i32 %2524, 4
  %2526 = trunc i32 %2525 to i8
  %2527 = and i8 %2526, 1
  store i8 %2527, i8* %27, align 1
  %2528 = icmp eq i32 %2512, 0
  %2529 = zext i1 %2528 to i8
  store i8 %2529, i8* %30, align 1
  %2530 = lshr i32 %2512, 31
  %2531 = trunc i32 %2530 to i8
  store i8 %2531, i8* %33, align 1
  %2532 = lshr i32 %2505, 31
  %2533 = lshr i32 %2511, 31
  %2534 = xor i32 %2530, %2532
  %2535 = xor i32 %2530, %2533
  %2536 = add nuw nsw i32 %2534, %2535
  %2537 = icmp eq i32 %2536, 2
  %2538 = zext i1 %2537 to i8
  store i8 %2538, i8* %39, align 1
  %2539 = sext i32 %2512 to i64
  store i64 %2539, i64* %RCX.i2230, align 8
  %2540 = shl nsw i64 %2539, 3
  %2541 = add i64 %2500, %2540
  %2542 = add i64 %2423, 78
  store i64 %2542, i64* %3, align 8
  %2543 = inttoptr i64 %2541 to i64*
  %2544 = load i64, i64* %2543, align 8
  store i64 %2544, i64* %RAX.i778, align 8
  store i64 %2501, i64* %RCX.i2230, align 8
  %2545 = add i64 %2501, 160
  %2546 = add i64 %2423, 92
  store i64 %2546, i64* %3, align 8
  %2547 = inttoptr i64 %2545 to i32*
  %2548 = load i32, i32* %2547, align 4
  %2549 = zext i32 %2548 to i64
  store i64 %2549, i64* %RDX.i2114.pre-phi, align 8
  %2550 = add i64 %2507, -20
  %2551 = add i64 %2423, 95
  store i64 %2551, i64* %3, align 8
  %2552 = inttoptr i64 %2550 to i32*
  %2553 = load i32, i32* %2552, align 4
  %2554 = add i32 %2553, %2548
  %2555 = zext i32 %2554 to i64
  store i64 %2555, i64* %RDX.i2114.pre-phi, align 8
  %2556 = icmp ult i32 %2554, %2548
  %2557 = icmp ult i32 %2554, %2553
  %2558 = or i1 %2556, %2557
  %2559 = zext i1 %2558 to i8
  store i8 %2559, i8* %14, align 1
  %2560 = and i32 %2554, 255
  %2561 = tail call i32 @llvm.ctpop.i32(i32 %2560)
  %2562 = trunc i32 %2561 to i8
  %2563 = and i8 %2562, 1
  %2564 = xor i8 %2563, 1
  store i8 %2564, i8* %21, align 1
  %2565 = xor i32 %2553, %2548
  %2566 = xor i32 %2565, %2554
  %2567 = lshr i32 %2566, 4
  %2568 = trunc i32 %2567 to i8
  %2569 = and i8 %2568, 1
  store i8 %2569, i8* %27, align 1
  %2570 = icmp eq i32 %2554, 0
  %2571 = zext i1 %2570 to i8
  store i8 %2571, i8* %30, align 1
  %2572 = lshr i32 %2554, 31
  %2573 = trunc i32 %2572 to i8
  store i8 %2573, i8* %33, align 1
  %2574 = lshr i32 %2548, 31
  %2575 = lshr i32 %2553, 31
  %2576 = xor i32 %2572, %2574
  %2577 = xor i32 %2572, %2575
  %2578 = add nuw nsw i32 %2576, %2577
  %2579 = icmp eq i32 %2578, 2
  %2580 = zext i1 %2579 to i8
  store i8 %2580, i8* %39, align 1
  %2581 = sext i32 %2554 to i64
  store i64 %2581, i64* %RCX.i2230, align 8
  %2582 = shl nsw i64 %2581, 1
  %2583 = add i64 %2544, %2582
  %2584 = load i16, i16* %SI.i1476, align 2
  %2585 = add i64 %2423, 102
  store i64 %2585, i64* %3, align 8
  %2586 = inttoptr i64 %2583 to i16*
  store i16 %2584, i16* %2586, align 2
  %2587 = load i64, i64* %RBP.i, align 8
  %2588 = add i64 %2587, -20
  %2589 = load i64, i64* %3, align 8
  %2590 = add i64 %2589, 3
  store i64 %2590, i64* %3, align 8
  %2591 = inttoptr i64 %2588 to i32*
  %2592 = load i32, i32* %2591, align 4
  %2593 = add i32 %2592, 1
  %2594 = zext i32 %2593 to i64
  store i64 %2594, i64* %RAX.i778, align 8
  %2595 = icmp eq i32 %2592, -1
  %2596 = icmp eq i32 %2593, 0
  %2597 = or i1 %2595, %2596
  %2598 = zext i1 %2597 to i8
  store i8 %2598, i8* %14, align 1
  %2599 = and i32 %2593, 255
  %2600 = tail call i32 @llvm.ctpop.i32(i32 %2599)
  %2601 = trunc i32 %2600 to i8
  %2602 = and i8 %2601, 1
  %2603 = xor i8 %2602, 1
  store i8 %2603, i8* %21, align 1
  %2604 = xor i32 %2593, %2592
  %2605 = lshr i32 %2604, 4
  %2606 = trunc i32 %2605 to i8
  %2607 = and i8 %2606, 1
  store i8 %2607, i8* %27, align 1
  %2608 = zext i1 %2596 to i8
  store i8 %2608, i8* %30, align 1
  %2609 = lshr i32 %2593, 31
  %2610 = trunc i32 %2609 to i8
  store i8 %2610, i8* %33, align 1
  %2611 = lshr i32 %2592, 31
  %2612 = xor i32 %2609, %2611
  %2613 = add nuw nsw i32 %2612, %2609
  %2614 = icmp eq i32 %2613, 2
  %2615 = zext i1 %2614 to i8
  store i8 %2615, i8* %39, align 1
  %2616 = add i64 %2589, 9
  store i64 %2616, i64* %3, align 8
  store i32 %2593, i32* %2591, align 4
  %2617 = load i64, i64* %3, align 8
  %2618 = add i64 %2617, -235
  store i64 %2618, i64* %3, align 8
  br label %block_.L_430737

block_.L_430827:                                  ; preds = %block_.L_430737
  %2619 = add i64 %2248, -24
  %2620 = add i64 %2285, 8
  store i64 %2620, i64* %3, align 8
  %2621 = inttoptr i64 %2619 to i32*
  %2622 = load i32, i32* %2621, align 4
  %2623 = add i32 %2622, 1
  %2624 = zext i32 %2623 to i64
  store i64 %2624, i64* %RAX.i778, align 8
  %2625 = icmp eq i32 %2622, -1
  %2626 = icmp eq i32 %2623, 0
  %2627 = or i1 %2625, %2626
  %2628 = zext i1 %2627 to i8
  store i8 %2628, i8* %14, align 1
  %2629 = and i32 %2623, 255
  %2630 = tail call i32 @llvm.ctpop.i32(i32 %2629)
  %2631 = trunc i32 %2630 to i8
  %2632 = and i8 %2631, 1
  %2633 = xor i8 %2632, 1
  store i8 %2633, i8* %21, align 1
  %2634 = xor i32 %2623, %2622
  %2635 = lshr i32 %2634, 4
  %2636 = trunc i32 %2635 to i8
  %2637 = and i8 %2636, 1
  store i8 %2637, i8* %27, align 1
  %2638 = zext i1 %2626 to i8
  store i8 %2638, i8* %30, align 1
  %2639 = lshr i32 %2623, 31
  %2640 = trunc i32 %2639 to i8
  store i8 %2640, i8* %33, align 1
  %2641 = lshr i32 %2622, 31
  %2642 = xor i32 %2639, %2641
  %2643 = add nuw nsw i32 %2642, %2639
  %2644 = icmp eq i32 %2643, 2
  %2645 = zext i1 %2644 to i8
  store i8 %2645, i8* %39, align 1
  %2646 = add i64 %2285, 14
  store i64 %2646, i64* %3, align 8
  store i32 %2623, i32* %2621, align 4
  %2647 = load i64, i64* %3, align 8
  %2648 = add i64 %2647, -284
  store i64 %2648, i64* %3, align 8
  br label %block_.L_430719

block_.L_43083a:                                  ; preds = %block_.L_430719
  %2649 = add i64 %2243, 5
  store i64 %2649, i64* %3, align 8
  br label %block_.L_43083f

block_.L_43083f:                                  ; preds = %block_.L_43083a, %block_.L_4306fd
  %2650 = phi i64 [ %2649, %block_.L_43083a ], [ %2203, %block_.L_4306fd ]
  %2651 = phi i64 [ %2206, %block_.L_43083a ], [ %1904, %block_.L_4306fd ]
  %2652 = add i64 %2651, -20
  %2653 = add i64 %2650, 7
  store i64 %2653, i64* %3, align 8
  %2654 = inttoptr i64 %2652 to i32*
  store i32 0, i32* %2654, align 4
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_430846

block_.L_430846:                                  ; preds = %block_430850, %block_.L_43083f
  %2655 = phi i64 [ %2767, %block_430850 ], [ %.pre116, %block_.L_43083f ]
  %2656 = load i64, i64* %RBP.i, align 8
  %2657 = add i64 %2656, -20
  %2658 = add i64 %2655, 4
  store i64 %2658, i64* %3, align 8
  %2659 = inttoptr i64 %2657 to i32*
  %2660 = load i32, i32* %2659, align 4
  %2661 = add i32 %2660, -4
  %2662 = icmp ult i32 %2660, 4
  %2663 = zext i1 %2662 to i8
  store i8 %2663, i8* %14, align 1
  %2664 = and i32 %2661, 255
  %2665 = tail call i32 @llvm.ctpop.i32(i32 %2664)
  %2666 = trunc i32 %2665 to i8
  %2667 = and i8 %2666, 1
  %2668 = xor i8 %2667, 1
  store i8 %2668, i8* %21, align 1
  %2669 = xor i32 %2661, %2660
  %2670 = lshr i32 %2669, 4
  %2671 = trunc i32 %2670 to i8
  %2672 = and i8 %2671, 1
  store i8 %2672, i8* %27, align 1
  %2673 = icmp eq i32 %2661, 0
  %2674 = zext i1 %2673 to i8
  store i8 %2674, i8* %30, align 1
  %2675 = lshr i32 %2661, 31
  %2676 = trunc i32 %2675 to i8
  store i8 %2676, i8* %33, align 1
  %2677 = lshr i32 %2660, 31
  %2678 = xor i32 %2675, %2677
  %2679 = add nuw nsw i32 %2678, %2677
  %2680 = icmp eq i32 %2679, 2
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %39, align 1
  %2682 = icmp ne i8 %2676, 0
  %2683 = xor i1 %2682, %2680
  %.v175 = select i1 %2683, i64 10, i64 92
  %2684 = add i64 %2655, %.v175
  %2685 = add i64 %2684, 8
  store i64 %2685, i64* %3, align 8
  %2686 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %2686, i64* %RAX.i778, align 8
  br i1 %2683, label %block_430850, label %block_.L_4308a2

block_430850:                                     ; preds = %block_.L_430846
  %2687 = add i64 %2684, 12
  store i64 %2687, i64* %3, align 8
  %2688 = load i32, i32* %2659, align 4
  %2689 = sext i32 %2688 to i64
  store i64 %2689, i64* %RCX.i2230, align 8
  %2690 = shl nsw i64 %2689, 2
  %2691 = add i64 %2686, 3104
  %2692 = add i64 %2691, %2690
  %2693 = add i64 %2684, 19
  store i64 %2693, i64* %3, align 8
  %2694 = inttoptr i64 %2692 to i32*
  %2695 = load i32, i32* %2694, align 4
  %2696 = zext i32 %2695 to i64
  store i64 %2696, i64* %RDX.i2114.pre-phi, align 8
  %2697 = add i64 %2656, -16
  %2698 = add i64 %2684, 23
  store i64 %2698, i64* %3, align 8
  %2699 = inttoptr i64 %2697 to i64*
  %2700 = load i64, i64* %2699, align 8
  store i64 %2700, i64* %RAX.i778, align 8
  %2701 = add i64 %2684, 27
  store i64 %2701, i64* %3, align 8
  %2702 = load i32, i32* %2659, align 4
  %2703 = sext i32 %2702 to i64
  store i64 %2703, i64* %RCX.i2230, align 8
  %2704 = shl nsw i64 %2703, 2
  %2705 = add i64 %2700, 472
  %2706 = add i64 %2705, %2704
  %2707 = add i64 %2684, 34
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to i32*
  store i32 %2695, i32* %2708, align 4
  %2709 = load i64, i64* %3, align 8
  %2710 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %2710, i64* %RAX.i778, align 8
  %2711 = load i64, i64* %RBP.i, align 8
  %2712 = add i64 %2711, -20
  %2713 = add i64 %2709, 12
  store i64 %2713, i64* %3, align 8
  %2714 = inttoptr i64 %2712 to i32*
  %2715 = load i32, i32* %2714, align 4
  %2716 = sext i32 %2715 to i64
  store i64 %2716, i64* %RCX.i2230, align 8
  %2717 = shl nsw i64 %2716, 2
  %2718 = add i64 %2710, 3120
  %2719 = add i64 %2718, %2717
  %2720 = add i64 %2709, 19
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to i32*
  %2722 = load i32, i32* %2721, align 4
  %2723 = zext i32 %2722 to i64
  store i64 %2723, i64* %RDX.i2114.pre-phi, align 8
  %2724 = add i64 %2711, -16
  %2725 = add i64 %2709, 23
  store i64 %2725, i64* %3, align 8
  %2726 = inttoptr i64 %2724 to i64*
  %2727 = load i64, i64* %2726, align 8
  store i64 %2727, i64* %RAX.i778, align 8
  %2728 = add i64 %2709, 27
  store i64 %2728, i64* %3, align 8
  %2729 = load i32, i32* %2714, align 4
  %2730 = sext i32 %2729 to i64
  store i64 %2730, i64* %RCX.i2230, align 8
  %2731 = shl nsw i64 %2730, 2
  %2732 = add i64 %2727, 488
  %2733 = add i64 %2732, %2731
  %2734 = add i64 %2709, 34
  store i64 %2734, i64* %3, align 8
  %2735 = inttoptr i64 %2733 to i32*
  store i32 %2722, i32* %2735, align 4
  %2736 = load i64, i64* %RBP.i, align 8
  %2737 = add i64 %2736, -20
  %2738 = load i64, i64* %3, align 8
  %2739 = add i64 %2738, 3
  store i64 %2739, i64* %3, align 8
  %2740 = inttoptr i64 %2737 to i32*
  %2741 = load i32, i32* %2740, align 4
  %2742 = add i32 %2741, 1
  %2743 = zext i32 %2742 to i64
  store i64 %2743, i64* %RAX.i778, align 8
  %2744 = icmp eq i32 %2741, -1
  %2745 = icmp eq i32 %2742, 0
  %2746 = or i1 %2744, %2745
  %2747 = zext i1 %2746 to i8
  store i8 %2747, i8* %14, align 1
  %2748 = and i32 %2742, 255
  %2749 = tail call i32 @llvm.ctpop.i32(i32 %2748)
  %2750 = trunc i32 %2749 to i8
  %2751 = and i8 %2750, 1
  %2752 = xor i8 %2751, 1
  store i8 %2752, i8* %21, align 1
  %2753 = xor i32 %2742, %2741
  %2754 = lshr i32 %2753, 4
  %2755 = trunc i32 %2754 to i8
  %2756 = and i8 %2755, 1
  store i8 %2756, i8* %27, align 1
  %2757 = zext i1 %2745 to i8
  store i8 %2757, i8* %30, align 1
  %2758 = lshr i32 %2742, 31
  %2759 = trunc i32 %2758 to i8
  store i8 %2759, i8* %33, align 1
  %2760 = lshr i32 %2741, 31
  %2761 = xor i32 %2758, %2760
  %2762 = add nuw nsw i32 %2761, %2758
  %2763 = icmp eq i32 %2762, 2
  %2764 = zext i1 %2763 to i8
  store i8 %2764, i8* %39, align 1
  %2765 = add i64 %2738, 9
  store i64 %2765, i64* %3, align 8
  store i32 %2742, i32* %2740, align 4
  %2766 = load i64, i64* %3, align 8
  %2767 = add i64 %2766, -87
  store i64 %2767, i64* %3, align 8
  br label %block_.L_430846

block_.L_4308a2:                                  ; preds = %block_.L_430846
  %2768 = add i64 %2686, 3336
  %2769 = add i64 %2684, 14
  store i64 %2769, i64* %3, align 8
  %2770 = inttoptr i64 %2768 to i32*
  %2771 = load i32, i32* %2770, align 4
  %2772 = zext i32 %2771 to i64
  store i64 %2772, i64* %RCX.i2230, align 8
  %2773 = add i64 %2656, -16
  %2774 = add i64 %2684, 18
  store i64 %2774, i64* %3, align 8
  %2775 = inttoptr i64 %2773 to i64*
  %2776 = load i64, i64* %2775, align 8
  store i64 %2776, i64* %RAX.i778, align 8
  %2777 = add i64 %2776, 572
  %2778 = add i64 %2684, 24
  store i64 %2778, i64* %3, align 8
  %2779 = inttoptr i64 %2777 to i32*
  store i32 %2771, i32* %2779, align 4
  %2780 = load i64, i64* %RBP.i, align 8
  %2781 = add i64 %2780, -40
  %2782 = load i64, i64* %3, align 8
  %2783 = add i64 %2782, 4
  store i64 %2783, i64* %3, align 8
  %2784 = inttoptr i64 %2781 to i32*
  %2785 = load i32, i32* %2784, align 4
  %2786 = add i32 %2785, -8
  %2787 = icmp ult i32 %2785, 8
  %2788 = zext i1 %2787 to i8
  store i8 %2788, i8* %14, align 1
  %2789 = and i32 %2786, 255
  %2790 = tail call i32 @llvm.ctpop.i32(i32 %2789)
  %2791 = trunc i32 %2790 to i8
  %2792 = and i8 %2791, 1
  %2793 = xor i8 %2792, 1
  store i8 %2793, i8* %21, align 1
  %2794 = xor i32 %2786, %2785
  %2795 = lshr i32 %2794, 4
  %2796 = trunc i32 %2795 to i8
  %2797 = and i8 %2796, 1
  store i8 %2797, i8* %27, align 1
  %2798 = icmp eq i32 %2786, 0
  %2799 = zext i1 %2798 to i8
  store i8 %2799, i8* %30, align 1
  %2800 = lshr i32 %2786, 31
  %2801 = trunc i32 %2800 to i8
  store i8 %2801, i8* %33, align 1
  %2802 = lshr i32 %2785, 31
  %2803 = xor i32 %2800, %2802
  %2804 = add nuw nsw i32 %2803, %2802
  %2805 = icmp eq i32 %2804, 2
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %39, align 1
  %.v176 = select i1 %2798, i64 10, i64 245
  %2807 = add i64 %2782, %.v176
  store i64 %2807, i64* %3, align 8
  br i1 %2798, label %block_4308c4, label %block_.L_4309af

block_4308c4:                                     ; preds = %block_.L_4308a2
  %2808 = add i64 %2780, -28
  %2809 = add i64 %2807, 7
  store i64 %2809, i64* %3, align 8
  %2810 = inttoptr i64 %2808 to i32*
  store i32 0, i32* %2810, align 4
  %2811 = load i64, i64* %3, align 8
  %2812 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2812, i64* %RAX.i778, align 8
  %2813 = add i64 %2812, 148
  %2814 = add i64 %2811, 14
  store i64 %2814, i64* %3, align 8
  %2815 = inttoptr i64 %2813 to i32*
  %2816 = load i32, i32* %2815, align 4
  %2817 = zext i32 %2816 to i64
  store i64 %2817, i64* %RCX.i2230, align 8
  %2818 = load i64, i64* %RBP.i, align 8
  %2819 = add i64 %2818, -24
  %2820 = add i64 %2811, 17
  store i64 %2820, i64* %3, align 8
  %2821 = inttoptr i64 %2819 to i32*
  store i32 %2816, i32* %2821, align 4
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_4308dc

block_.L_4308dc:                                  ; preds = %block_.L_430997, %block_4308c4
  %2822 = phi i64 [ %3073, %block_.L_430997 ], [ %.pre117, %block_4308c4 ]
  %2823 = load i64, i64* %RBP.i, align 8
  %2824 = add i64 %2823, -24
  %2825 = add i64 %2822, 3
  store i64 %2825, i64* %3, align 8
  %2826 = inttoptr i64 %2824 to i32*
  %2827 = load i32, i32* %2826, align 4
  %2828 = zext i32 %2827 to i64
  store i64 %2828, i64* %RAX.i778, align 8
  %2829 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2829, i64* %RCX.i2230, align 8
  %2830 = add i64 %2829, 148
  %2831 = add i64 %2822, 17
  store i64 %2831, i64* %3, align 8
  %2832 = inttoptr i64 %2830 to i32*
  %2833 = load i32, i32* %2832, align 4
  %2834 = add i32 %2833, 4
  %2835 = zext i32 %2834 to i64
  store i64 %2835, i64* %RDX.i2114.pre-phi, align 8
  %2836 = lshr i32 %2834, 31
  %2837 = sub i32 %2827, %2834
  %2838 = icmp ult i32 %2827, %2834
  %2839 = zext i1 %2838 to i8
  store i8 %2839, i8* %14, align 1
  %2840 = and i32 %2837, 255
  %2841 = tail call i32 @llvm.ctpop.i32(i32 %2840)
  %2842 = trunc i32 %2841 to i8
  %2843 = and i8 %2842, 1
  %2844 = xor i8 %2843, 1
  store i8 %2844, i8* %21, align 1
  %2845 = xor i32 %2834, %2827
  %2846 = xor i32 %2845, %2837
  %2847 = lshr i32 %2846, 4
  %2848 = trunc i32 %2847 to i8
  %2849 = and i8 %2848, 1
  store i8 %2849, i8* %27, align 1
  %2850 = icmp eq i32 %2837, 0
  %2851 = zext i1 %2850 to i8
  store i8 %2851, i8* %30, align 1
  %2852 = lshr i32 %2837, 31
  %2853 = trunc i32 %2852 to i8
  store i8 %2853, i8* %33, align 1
  %2854 = lshr i32 %2827, 31
  %2855 = xor i32 %2836, %2854
  %2856 = xor i32 %2852, %2854
  %2857 = add nuw nsw i32 %2856, %2855
  %2858 = icmp eq i32 %2857, 2
  %2859 = zext i1 %2858 to i8
  store i8 %2859, i8* %39, align 1
  %2860 = icmp ne i8 %2853, 0
  %2861 = xor i1 %2860, %2858
  %.v194 = select i1 %2861, i64 28, i64 206
  %2862 = add i64 %2822, %.v194
  store i64 %2862, i64* %3, align 8
  br i1 %2861, label %block_4308f8, label %block_.L_4309aa

block_4308f8:                                     ; preds = %block_.L_4308dc
  store i64 %2829, i64* %RAX.i778, align 8
  %2863 = add i64 %2829, 144
  %2864 = add i64 %2862, 14
  store i64 %2864, i64* %3, align 8
  %2865 = inttoptr i64 %2863 to i32*
  %2866 = load i32, i32* %2865, align 4
  %2867 = zext i32 %2866 to i64
  store i64 %2867, i64* %RCX.i2230, align 8
  %2868 = add i64 %2823, -20
  %2869 = add i64 %2862, 17
  store i64 %2869, i64* %3, align 8
  %2870 = inttoptr i64 %2868 to i32*
  store i32 %2866, i32* %2870, align 4
  %.pre118 = load i64, i64* %3, align 8
  br label %block_.L_430909

block_.L_430909:                                  ; preds = %block_430925, %block_4308f8
  %2871 = phi i64 [ %3043, %block_430925 ], [ %.pre118, %block_4308f8 ]
  %2872 = load i64, i64* %RBP.i, align 8
  %2873 = add i64 %2872, -20
  %2874 = add i64 %2871, 3
  store i64 %2874, i64* %3, align 8
  %2875 = inttoptr i64 %2873 to i32*
  %2876 = load i32, i32* %2875, align 4
  %2877 = zext i32 %2876 to i64
  store i64 %2877, i64* %RAX.i778, align 8
  %2878 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2878, i64* %RCX.i2230, align 8
  %2879 = add i64 %2878, 144
  %2880 = add i64 %2871, 17
  store i64 %2880, i64* %3, align 8
  %2881 = inttoptr i64 %2879 to i32*
  %2882 = load i32, i32* %2881, align 4
  %2883 = add i32 %2882, 4
  %2884 = zext i32 %2883 to i64
  store i64 %2884, i64* %RDX.i2114.pre-phi, align 8
  %2885 = lshr i32 %2883, 31
  %2886 = sub i32 %2876, %2883
  %2887 = icmp ult i32 %2876, %2883
  %2888 = zext i1 %2887 to i8
  store i8 %2888, i8* %14, align 1
  %2889 = and i32 %2886, 255
  %2890 = tail call i32 @llvm.ctpop.i32(i32 %2889)
  %2891 = trunc i32 %2890 to i8
  %2892 = and i8 %2891, 1
  %2893 = xor i8 %2892, 1
  store i8 %2893, i8* %21, align 1
  %2894 = xor i32 %2883, %2876
  %2895 = xor i32 %2894, %2886
  %2896 = lshr i32 %2895, 4
  %2897 = trunc i32 %2896 to i8
  %2898 = and i8 %2897, 1
  store i8 %2898, i8* %27, align 1
  %2899 = icmp eq i32 %2886, 0
  %2900 = zext i1 %2899 to i8
  store i8 %2900, i8* %30, align 1
  %2901 = lshr i32 %2886, 31
  %2902 = trunc i32 %2901 to i8
  store i8 %2902, i8* %33, align 1
  %2903 = lshr i32 %2876, 31
  %2904 = xor i32 %2885, %2903
  %2905 = xor i32 %2901, %2903
  %2906 = add nuw nsw i32 %2905, %2904
  %2907 = icmp eq i32 %2906, 2
  %2908 = zext i1 %2907 to i8
  store i8 %2908, i8* %39, align 1
  %2909 = icmp ne i8 %2902, 0
  %2910 = xor i1 %2909, %2907
  %.v156 = select i1 %2910, i64 28, i64 142
  %2911 = add i64 %2871, %.v156
  store i64 %2911, i64* %3, align 8
  br i1 %2910, label %block_430925, label %block_.L_430997

block_430925:                                     ; preds = %block_.L_430909
  %2912 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %2912, i64* %RAX.i778, align 8
  %2913 = add i64 %2912, 3136
  %2914 = add i64 %2911, 15
  store i64 %2914, i64* %3, align 8
  %2915 = inttoptr i64 %2913 to i64*
  %2916 = load i64, i64* %2915, align 8
  store i64 %2916, i64* %RAX.i778, align 8
  %2917 = add i64 %2911, 19
  store i64 %2917, i64* %3, align 8
  %2918 = load i32, i32* %2875, align 4
  %2919 = sext i32 %2918 to i64
  store i64 %2919, i64* %RCX.i2230, align 8
  %2920 = shl nsw i64 %2919, 3
  %2921 = add i64 %2920, %2916
  %2922 = add i64 %2911, 23
  store i64 %2922, i64* %3, align 8
  %2923 = inttoptr i64 %2921 to i64*
  %2924 = load i64, i64* %2923, align 8
  store i64 %2924, i64* %RAX.i778, align 8
  %2925 = add i64 %2872, -24
  %2926 = add i64 %2911, 27
  store i64 %2926, i64* %3, align 8
  %2927 = inttoptr i64 %2925 to i32*
  %2928 = load i32, i32* %2927, align 4
  %2929 = sext i32 %2928 to i64
  store i64 %2929, i64* %RCX.i2230, align 8
  %2930 = shl nsw i64 %2929, 2
  %2931 = add i64 %2930, %2924
  %2932 = add i64 %2911, 30
  store i64 %2932, i64* %3, align 8
  %2933 = inttoptr i64 %2931 to i32*
  %2934 = load i32, i32* %2933, align 4
  %2935 = zext i32 %2934 to i64
  store i64 %2935, i64* %RDX.i2114.pre-phi, align 8
  store i64 %2878, i64* %RAX.i778, align 8
  %2936 = add i64 %2878, 104
  %2937 = add i64 %2911, 42
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to i64*
  %2939 = load i64, i64* %2938, align 8
  store i64 %2939, i64* %RAX.i778, align 8
  %2940 = add i64 %2911, 46
  store i64 %2940, i64* %3, align 8
  %2941 = load i32, i32* %2875, align 4
  %2942 = sext i32 %2941 to i64
  store i64 %2942, i64* %RCX.i2230, align 8
  %2943 = shl nsw i64 %2942, 3
  %2944 = add i64 %2943, %2939
  %2945 = add i64 %2911, 50
  store i64 %2945, i64* %3, align 8
  %2946 = inttoptr i64 %2944 to i64*
  %2947 = load i64, i64* %2946, align 8
  store i64 %2947, i64* %RAX.i778, align 8
  %2948 = add i64 %2911, 54
  store i64 %2948, i64* %3, align 8
  %2949 = load i32, i32* %2927, align 4
  %2950 = sext i32 %2949 to i64
  store i64 %2950, i64* %RCX.i2230, align 8
  %2951 = shl nsw i64 %2950, 2
  %2952 = add i64 %2951, %2947
  %2953 = add i64 %2911, 57
  store i64 %2953, i64* %3, align 8
  %2954 = inttoptr i64 %2952 to i32*
  store i32 %2934, i32* %2954, align 4
  %2955 = load i64, i64* %3, align 8
  %2956 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %2956, i64* %RAX.i778, align 8
  %2957 = load i64, i64* %RBP.i, align 8
  %2958 = add i64 %2957, -28
  %2959 = add i64 %2955, 12
  store i64 %2959, i64* %3, align 8
  %2960 = inttoptr i64 %2958 to i32*
  %2961 = load i32, i32* %2960, align 4
  %2962 = sext i32 %2961 to i64
  store i64 %2962, i64* %RCX.i2230, align 8
  %2963 = shl nsw i64 %2962, 2
  %2964 = add i64 %2956, 3144
  %2965 = add i64 %2964, %2963
  %2966 = add i64 %2955, 19
  store i64 %2966, i64* %3, align 8
  %2967 = inttoptr i64 %2965 to i32*
  %2968 = load i32, i32* %2967, align 4
  %2969 = zext i32 %2968 to i64
  store i64 %2969, i64* %RDX.i2114.pre-phi, align 8
  %2970 = add i64 %2957, -16
  %2971 = add i64 %2955, 23
  store i64 %2971, i64* %3, align 8
  %2972 = inttoptr i64 %2970 to i64*
  %2973 = load i64, i64* %2972, align 8
  store i64 %2973, i64* %RAX.i778, align 8
  %2974 = add i64 %2955, 27
  store i64 %2974, i64* %3, align 8
  %2975 = load i32, i32* %2960, align 4
  %2976 = sext i32 %2975 to i64
  store i64 %2976, i64* %RCX.i2230, align 8
  %2977 = shl nsw i64 %2976, 2
  %2978 = add i64 %2973, 332
  %2979 = add i64 %2978, %2977
  %2980 = add i64 %2955, 34
  store i64 %2980, i64* %3, align 8
  %2981 = inttoptr i64 %2979 to i32*
  store i32 %2968, i32* %2981, align 4
  %2982 = load i64, i64* %RBP.i, align 8
  %2983 = add i64 %2982, -20
  %2984 = load i64, i64* %3, align 8
  %2985 = add i64 %2984, 3
  store i64 %2985, i64* %3, align 8
  %2986 = inttoptr i64 %2983 to i32*
  %2987 = load i32, i32* %2986, align 4
  %2988 = add i32 %2987, 1
  %2989 = zext i32 %2988 to i64
  store i64 %2989, i64* %RAX.i778, align 8
  %2990 = icmp eq i32 %2987, -1
  %2991 = icmp eq i32 %2988, 0
  %2992 = or i1 %2990, %2991
  %2993 = zext i1 %2992 to i8
  store i8 %2993, i8* %14, align 1
  %2994 = and i32 %2988, 255
  %2995 = tail call i32 @llvm.ctpop.i32(i32 %2994)
  %2996 = trunc i32 %2995 to i8
  %2997 = and i8 %2996, 1
  %2998 = xor i8 %2997, 1
  store i8 %2998, i8* %21, align 1
  %2999 = xor i32 %2988, %2987
  %3000 = lshr i32 %2999, 4
  %3001 = trunc i32 %3000 to i8
  %3002 = and i8 %3001, 1
  store i8 %3002, i8* %27, align 1
  %3003 = zext i1 %2991 to i8
  store i8 %3003, i8* %30, align 1
  %3004 = lshr i32 %2988, 31
  %3005 = trunc i32 %3004 to i8
  store i8 %3005, i8* %33, align 1
  %3006 = lshr i32 %2987, 31
  %3007 = xor i32 %3004, %3006
  %3008 = add nuw nsw i32 %3007, %3004
  %3009 = icmp eq i32 %3008, 2
  %3010 = zext i1 %3009 to i8
  store i8 %3010, i8* %39, align 1
  %3011 = add i64 %2984, 9
  store i64 %3011, i64* %3, align 8
  store i32 %2988, i32* %2986, align 4
  %3012 = load i64, i64* %RBP.i, align 8
  %3013 = add i64 %3012, -28
  %3014 = load i64, i64* %3, align 8
  %3015 = add i64 %3014, 3
  store i64 %3015, i64* %3, align 8
  %3016 = inttoptr i64 %3013 to i32*
  %3017 = load i32, i32* %3016, align 4
  %3018 = add i32 %3017, 1
  %3019 = zext i32 %3018 to i64
  store i64 %3019, i64* %RAX.i778, align 8
  %3020 = icmp eq i32 %3017, -1
  %3021 = icmp eq i32 %3018, 0
  %3022 = or i1 %3020, %3021
  %3023 = zext i1 %3022 to i8
  store i8 %3023, i8* %14, align 1
  %3024 = and i32 %3018, 255
  %3025 = tail call i32 @llvm.ctpop.i32(i32 %3024)
  %3026 = trunc i32 %3025 to i8
  %3027 = and i8 %3026, 1
  %3028 = xor i8 %3027, 1
  store i8 %3028, i8* %21, align 1
  %3029 = xor i32 %3018, %3017
  %3030 = lshr i32 %3029, 4
  %3031 = trunc i32 %3030 to i8
  %3032 = and i8 %3031, 1
  store i8 %3032, i8* %27, align 1
  %3033 = zext i1 %3021 to i8
  store i8 %3033, i8* %30, align 1
  %3034 = lshr i32 %3018, 31
  %3035 = trunc i32 %3034 to i8
  store i8 %3035, i8* %33, align 1
  %3036 = lshr i32 %3017, 31
  %3037 = xor i32 %3034, %3036
  %3038 = add nuw nsw i32 %3037, %3034
  %3039 = icmp eq i32 %3038, 2
  %3040 = zext i1 %3039 to i8
  store i8 %3040, i8* %39, align 1
  %3041 = add i64 %3014, 9
  store i64 %3041, i64* %3, align 8
  store i32 %3018, i32* %3016, align 4
  %3042 = load i64, i64* %3, align 8
  %3043 = add i64 %3042, -137
  store i64 %3043, i64* %3, align 8
  br label %block_.L_430909

block_.L_430997:                                  ; preds = %block_.L_430909
  %3044 = add i64 %2872, -24
  %3045 = add i64 %2911, 8
  store i64 %3045, i64* %3, align 8
  %3046 = inttoptr i64 %3044 to i32*
  %3047 = load i32, i32* %3046, align 4
  %3048 = add i32 %3047, 1
  %3049 = zext i32 %3048 to i64
  store i64 %3049, i64* %RAX.i778, align 8
  %3050 = icmp eq i32 %3047, -1
  %3051 = icmp eq i32 %3048, 0
  %3052 = or i1 %3050, %3051
  %3053 = zext i1 %3052 to i8
  store i8 %3053, i8* %14, align 1
  %3054 = and i32 %3048, 255
  %3055 = tail call i32 @llvm.ctpop.i32(i32 %3054)
  %3056 = trunc i32 %3055 to i8
  %3057 = and i8 %3056, 1
  %3058 = xor i8 %3057, 1
  store i8 %3058, i8* %21, align 1
  %3059 = xor i32 %3048, %3047
  %3060 = lshr i32 %3059, 4
  %3061 = trunc i32 %3060 to i8
  %3062 = and i8 %3061, 1
  store i8 %3062, i8* %27, align 1
  %3063 = zext i1 %3051 to i8
  store i8 %3063, i8* %30, align 1
  %3064 = lshr i32 %3048, 31
  %3065 = trunc i32 %3064 to i8
  store i8 %3065, i8* %33, align 1
  %3066 = lshr i32 %3047, 31
  %3067 = xor i32 %3064, %3066
  %3068 = add nuw nsw i32 %3067, %3064
  %3069 = icmp eq i32 %3068, 2
  %3070 = zext i1 %3069 to i8
  store i8 %3070, i8* %39, align 1
  %3071 = add i64 %2911, 14
  store i64 %3071, i64* %3, align 8
  store i32 %3048, i32* %3046, align 4
  %3072 = load i64, i64* %3, align 8
  %3073 = add i64 %3072, -201
  store i64 %3073, i64* %3, align 8
  br label %block_.L_4308dc

block_.L_4309aa:                                  ; preds = %block_.L_4308dc
  %3074 = add i64 %2862, 484
  br label %block_.L_430b8e

block_.L_4309af:                                  ; preds = %block_.L_4308a2
  %3075 = add i64 %2807, 4
  store i64 %3075, i64* %3, align 8
  %3076 = load i32, i32* %2784, align 4
  %3077 = add i32 %3076, -9
  %3078 = icmp ult i32 %3076, 9
  %3079 = zext i1 %3078 to i8
  store i8 %3079, i8* %14, align 1
  %3080 = and i32 %3077, 255
  %3081 = tail call i32 @llvm.ctpop.i32(i32 %3080)
  %3082 = trunc i32 %3081 to i8
  %3083 = and i8 %3082, 1
  %3084 = xor i8 %3083, 1
  store i8 %3084, i8* %21, align 1
  %3085 = xor i32 %3077, %3076
  %3086 = lshr i32 %3085, 4
  %3087 = trunc i32 %3086 to i8
  %3088 = and i8 %3087, 1
  store i8 %3088, i8* %27, align 1
  %3089 = icmp eq i32 %3077, 0
  %3090 = zext i1 %3089 to i8
  store i8 %3090, i8* %30, align 1
  %3091 = lshr i32 %3077, 31
  %3092 = trunc i32 %3091 to i8
  store i8 %3092, i8* %33, align 1
  %3093 = lshr i32 %3076, 31
  %3094 = xor i32 %3091, %3093
  %3095 = add nuw nsw i32 %3094, %3093
  %3096 = icmp eq i32 %3095, 2
  %3097 = zext i1 %3096 to i8
  store i8 %3097, i8* %39, align 1
  %.v177 = select i1 %3089, i64 214, i64 10
  %3098 = add i64 %2807, %.v177
  store i64 %3098, i64* %3, align 8
  br i1 %3089, label %block_.L_430a85, label %block_4309b9

block_4309b9:                                     ; preds = %block_.L_4309af
  %3099 = add i64 %3098, 4
  store i64 %3099, i64* %3, align 8
  %3100 = load i32, i32* %2784, align 4
  %3101 = add i32 %3100, -13
  %3102 = icmp ult i32 %3100, 13
  %3103 = zext i1 %3102 to i8
  store i8 %3103, i8* %14, align 1
  %3104 = and i32 %3101, 255
  %3105 = tail call i32 @llvm.ctpop.i32(i32 %3104)
  %3106 = trunc i32 %3105 to i8
  %3107 = and i8 %3106, 1
  %3108 = xor i8 %3107, 1
  store i8 %3108, i8* %21, align 1
  %3109 = xor i32 %3101, %3100
  %3110 = lshr i32 %3109, 4
  %3111 = trunc i32 %3110 to i8
  %3112 = and i8 %3111, 1
  store i8 %3112, i8* %27, align 1
  %3113 = icmp eq i32 %3101, 0
  %3114 = zext i1 %3113 to i8
  store i8 %3114, i8* %30, align 1
  %3115 = lshr i32 %3101, 31
  %3116 = trunc i32 %3115 to i8
  store i8 %3116, i8* %33, align 1
  %3117 = lshr i32 %3100, 31
  %3118 = xor i32 %3115, %3117
  %3119 = add nuw nsw i32 %3118, %3117
  %3120 = icmp eq i32 %3119, 2
  %3121 = zext i1 %3120 to i8
  store i8 %3121, i8* %39, align 1
  %.v178 = select i1 %3113, i64 204, i64 10
  %3122 = add i64 %3098, %.v178
  store i64 %3122, i64* %3, align 8
  br i1 %3113, label %block_.L_430a85, label %block_4309c3

block_4309c3:                                     ; preds = %block_4309b9
  %3123 = add i64 %2780, -28
  %3124 = add i64 %3122, 7
  store i64 %3124, i64* %3, align 8
  %3125 = inttoptr i64 %3123 to i32*
  store i32 0, i32* %3125, align 4
  %3126 = load i64, i64* %3, align 8
  %3127 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3127, i64* %RAX.i778, align 8
  %3128 = add i64 %3127, 148
  %3129 = add i64 %3126, 14
  store i64 %3129, i64* %3, align 8
  %3130 = inttoptr i64 %3128 to i32*
  %3131 = load i32, i32* %3130, align 4
  %3132 = zext i32 %3131 to i64
  store i64 %3132, i64* %RCX.i2230, align 8
  %3133 = load i64, i64* %RBP.i, align 8
  %3134 = add i64 %3133, -24
  %3135 = add i64 %3126, 17
  store i64 %3135, i64* %3, align 8
  %3136 = inttoptr i64 %3134 to i32*
  store i32 %3131, i32* %3136, align 4
  %.pre119 = load i64, i64* %3, align 8
  br label %block_.L_4309db

block_.L_4309db:                                  ; preds = %block_.L_430a6d, %block_4309c3
  %3137 = phi i64 [ %3355, %block_.L_430a6d ], [ %.pre119, %block_4309c3 ]
  %3138 = load i64, i64* %RBP.i, align 8
  %3139 = add i64 %3138, -24
  %3140 = add i64 %3137, 3
  store i64 %3140, i64* %3, align 8
  %3141 = inttoptr i64 %3139 to i32*
  %3142 = load i32, i32* %3141, align 4
  %3143 = zext i32 %3142 to i64
  store i64 %3143, i64* %RAX.i778, align 8
  %3144 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3144, i64* %RCX.i2230, align 8
  %3145 = add i64 %3144, 148
  %3146 = add i64 %3137, 17
  store i64 %3146, i64* %3, align 8
  %3147 = inttoptr i64 %3145 to i32*
  %3148 = load i32, i32* %3147, align 4
  %3149 = add i32 %3148, 4
  %3150 = zext i32 %3149 to i64
  store i64 %3150, i64* %RDX.i2114.pre-phi, align 8
  %3151 = lshr i32 %3149, 31
  %3152 = sub i32 %3142, %3149
  %3153 = icmp ult i32 %3142, %3149
  %3154 = zext i1 %3153 to i8
  store i8 %3154, i8* %14, align 1
  %3155 = and i32 %3152, 255
  %3156 = tail call i32 @llvm.ctpop.i32(i32 %3155)
  %3157 = trunc i32 %3156 to i8
  %3158 = and i8 %3157, 1
  %3159 = xor i8 %3158, 1
  store i8 %3159, i8* %21, align 1
  %3160 = xor i32 %3149, %3142
  %3161 = xor i32 %3160, %3152
  %3162 = lshr i32 %3161, 4
  %3163 = trunc i32 %3162 to i8
  %3164 = and i8 %3163, 1
  store i8 %3164, i8* %27, align 1
  %3165 = icmp eq i32 %3152, 0
  %3166 = zext i1 %3165 to i8
  store i8 %3166, i8* %30, align 1
  %3167 = lshr i32 %3152, 31
  %3168 = trunc i32 %3167 to i8
  store i8 %3168, i8* %33, align 1
  %3169 = lshr i32 %3142, 31
  %3170 = xor i32 %3151, %3169
  %3171 = xor i32 %3167, %3169
  %3172 = add nuw nsw i32 %3171, %3170
  %3173 = icmp eq i32 %3172, 2
  %3174 = zext i1 %3173 to i8
  store i8 %3174, i8* %39, align 1
  %3175 = icmp ne i8 %3168, 0
  %3176 = xor i1 %3175, %3173
  %.v179 = select i1 %3176, i64 28, i64 165
  %3177 = add i64 %3137, %.v179
  store i64 %3177, i64* %3, align 8
  br i1 %3176, label %block_4309f7, label %block_.L_430a80

block_4309f7:                                     ; preds = %block_.L_4309db
  store i64 %3144, i64* %RAX.i778, align 8
  %3178 = add i64 %3144, 144
  %3179 = add i64 %3177, 14
  store i64 %3179, i64* %3, align 8
  %3180 = inttoptr i64 %3178 to i32*
  %3181 = load i32, i32* %3180, align 4
  %3182 = zext i32 %3181 to i64
  store i64 %3182, i64* %RCX.i2230, align 8
  %3183 = add i64 %3138, -20
  %3184 = add i64 %3177, 17
  store i64 %3184, i64* %3, align 8
  %3185 = inttoptr i64 %3183 to i32*
  store i32 %3181, i32* %3185, align 4
  %.pre120 = load i64, i64* %3, align 8
  br label %block_.L_430a08

block_.L_430a08:                                  ; preds = %block_430a24, %block_4309f7
  %3186 = phi i64 [ %3325, %block_430a24 ], [ %.pre120, %block_4309f7 ]
  %3187 = load i64, i64* %RBP.i, align 8
  %3188 = add i64 %3187, -20
  %3189 = add i64 %3186, 3
  store i64 %3189, i64* %3, align 8
  %3190 = inttoptr i64 %3188 to i32*
  %3191 = load i32, i32* %3190, align 4
  %3192 = zext i32 %3191 to i64
  store i64 %3192, i64* %RAX.i778, align 8
  %3193 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3193, i64* %RCX.i2230, align 8
  %3194 = add i64 %3193, 144
  %3195 = add i64 %3186, 17
  store i64 %3195, i64* %3, align 8
  %3196 = inttoptr i64 %3194 to i32*
  %3197 = load i32, i32* %3196, align 4
  %3198 = add i32 %3197, 4
  %3199 = zext i32 %3198 to i64
  store i64 %3199, i64* %RDX.i2114.pre-phi, align 8
  %3200 = lshr i32 %3198, 31
  %3201 = sub i32 %3191, %3198
  %3202 = icmp ult i32 %3191, %3198
  %3203 = zext i1 %3202 to i8
  store i8 %3203, i8* %14, align 1
  %3204 = and i32 %3201, 255
  %3205 = tail call i32 @llvm.ctpop.i32(i32 %3204)
  %3206 = trunc i32 %3205 to i8
  %3207 = and i8 %3206, 1
  %3208 = xor i8 %3207, 1
  store i8 %3208, i8* %21, align 1
  %3209 = xor i32 %3198, %3191
  %3210 = xor i32 %3209, %3201
  %3211 = lshr i32 %3210, 4
  %3212 = trunc i32 %3211 to i8
  %3213 = and i8 %3212, 1
  store i8 %3213, i8* %27, align 1
  %3214 = icmp eq i32 %3201, 0
  %3215 = zext i1 %3214 to i8
  store i8 %3215, i8* %30, align 1
  %3216 = lshr i32 %3201, 31
  %3217 = trunc i32 %3216 to i8
  store i8 %3217, i8* %33, align 1
  %3218 = lshr i32 %3191, 31
  %3219 = xor i32 %3200, %3218
  %3220 = xor i32 %3216, %3218
  %3221 = add nuw nsw i32 %3220, %3219
  %3222 = icmp eq i32 %3221, 2
  %3223 = zext i1 %3222 to i8
  store i8 %3223, i8* %39, align 1
  %3224 = icmp ne i8 %3217, 0
  %3225 = xor i1 %3224, %3222
  %.v157 = select i1 %3225, i64 28, i64 101
  %3226 = add i64 %3186, %.v157
  store i64 %3226, i64* %3, align 8
  br i1 %3225, label %block_430a24, label %block_.L_430a6d

block_430a24:                                     ; preds = %block_.L_430a08
  store i64 %3193, i64* %RAX.i778, align 8
  %3227 = add i64 %3193, 104
  %3228 = add i64 %3226, 12
  store i64 %3228, i64* %3, align 8
  %3229 = inttoptr i64 %3227 to i64*
  %3230 = load i64, i64* %3229, align 8
  store i64 %3230, i64* %RAX.i778, align 8
  %3231 = add i64 %3226, 16
  store i64 %3231, i64* %3, align 8
  %3232 = load i32, i32* %3190, align 4
  %3233 = sext i32 %3232 to i64
  store i64 %3233, i64* %RCX.i2230, align 8
  %3234 = shl nsw i64 %3233, 3
  %3235 = add i64 %3234, %3230
  %3236 = add i64 %3226, 20
  store i64 %3236, i64* %3, align 8
  %3237 = inttoptr i64 %3235 to i64*
  %3238 = load i64, i64* %3237, align 8
  store i64 %3238, i64* %RAX.i778, align 8
  %3239 = add i64 %3187, -24
  %3240 = add i64 %3226, 24
  store i64 %3240, i64* %3, align 8
  %3241 = inttoptr i64 %3239 to i32*
  %3242 = load i32, i32* %3241, align 4
  %3243 = sext i32 %3242 to i64
  store i64 %3243, i64* %RCX.i2230, align 8
  %3244 = shl nsw i64 %3243, 2
  %3245 = add i64 %3244, %3238
  %3246 = add i64 %3226, 31
  store i64 %3246, i64* %3, align 8
  %3247 = inttoptr i64 %3245 to i32*
  store i32 2, i32* %3247, align 4
  %3248 = load i64, i64* %RBP.i, align 8
  %3249 = add i64 %3248, -16
  %3250 = load i64, i64* %3, align 8
  %3251 = add i64 %3250, 4
  store i64 %3251, i64* %3, align 8
  %3252 = inttoptr i64 %3249 to i64*
  %3253 = load i64, i64* %3252, align 8
  store i64 %3253, i64* %RAX.i778, align 8
  %3254 = add i64 %3248, -28
  %3255 = add i64 %3250, 8
  store i64 %3255, i64* %3, align 8
  %3256 = inttoptr i64 %3254 to i32*
  %3257 = load i32, i32* %3256, align 4
  %3258 = sext i32 %3257 to i64
  store i64 %3258, i64* %RCX.i2230, align 8
  %3259 = shl nsw i64 %3258, 2
  %3260 = add i64 %3253, 332
  %3261 = add i64 %3260, %3259
  %3262 = add i64 %3250, 19
  store i64 %3262, i64* %3, align 8
  %3263 = inttoptr i64 %3261 to i32*
  store i32 2, i32* %3263, align 4
  %3264 = load i64, i64* %RBP.i, align 8
  %3265 = add i64 %3264, -20
  %3266 = load i64, i64* %3, align 8
  %3267 = add i64 %3266, 3
  store i64 %3267, i64* %3, align 8
  %3268 = inttoptr i64 %3265 to i32*
  %3269 = load i32, i32* %3268, align 4
  %3270 = add i32 %3269, 1
  %3271 = zext i32 %3270 to i64
  store i64 %3271, i64* %RAX.i778, align 8
  %3272 = icmp eq i32 %3269, -1
  %3273 = icmp eq i32 %3270, 0
  %3274 = or i1 %3272, %3273
  %3275 = zext i1 %3274 to i8
  store i8 %3275, i8* %14, align 1
  %3276 = and i32 %3270, 255
  %3277 = tail call i32 @llvm.ctpop.i32(i32 %3276)
  %3278 = trunc i32 %3277 to i8
  %3279 = and i8 %3278, 1
  %3280 = xor i8 %3279, 1
  store i8 %3280, i8* %21, align 1
  %3281 = xor i32 %3270, %3269
  %3282 = lshr i32 %3281, 4
  %3283 = trunc i32 %3282 to i8
  %3284 = and i8 %3283, 1
  store i8 %3284, i8* %27, align 1
  %3285 = zext i1 %3273 to i8
  store i8 %3285, i8* %30, align 1
  %3286 = lshr i32 %3270, 31
  %3287 = trunc i32 %3286 to i8
  store i8 %3287, i8* %33, align 1
  %3288 = lshr i32 %3269, 31
  %3289 = xor i32 %3286, %3288
  %3290 = add nuw nsw i32 %3289, %3286
  %3291 = icmp eq i32 %3290, 2
  %3292 = zext i1 %3291 to i8
  store i8 %3292, i8* %39, align 1
  %3293 = add i64 %3266, 9
  store i64 %3293, i64* %3, align 8
  store i32 %3270, i32* %3268, align 4
  %3294 = load i64, i64* %RBP.i, align 8
  %3295 = add i64 %3294, -28
  %3296 = load i64, i64* %3, align 8
  %3297 = add i64 %3296, 3
  store i64 %3297, i64* %3, align 8
  %3298 = inttoptr i64 %3295 to i32*
  %3299 = load i32, i32* %3298, align 4
  %3300 = add i32 %3299, 1
  %3301 = zext i32 %3300 to i64
  store i64 %3301, i64* %RAX.i778, align 8
  %3302 = icmp eq i32 %3299, -1
  %3303 = icmp eq i32 %3300, 0
  %3304 = or i1 %3302, %3303
  %3305 = zext i1 %3304 to i8
  store i8 %3305, i8* %14, align 1
  %3306 = and i32 %3300, 255
  %3307 = tail call i32 @llvm.ctpop.i32(i32 %3306)
  %3308 = trunc i32 %3307 to i8
  %3309 = and i8 %3308, 1
  %3310 = xor i8 %3309, 1
  store i8 %3310, i8* %21, align 1
  %3311 = xor i32 %3300, %3299
  %3312 = lshr i32 %3311, 4
  %3313 = trunc i32 %3312 to i8
  %3314 = and i8 %3313, 1
  store i8 %3314, i8* %27, align 1
  %3315 = zext i1 %3303 to i8
  store i8 %3315, i8* %30, align 1
  %3316 = lshr i32 %3300, 31
  %3317 = trunc i32 %3316 to i8
  store i8 %3317, i8* %33, align 1
  %3318 = lshr i32 %3299, 31
  %3319 = xor i32 %3316, %3318
  %3320 = add nuw nsw i32 %3319, %3316
  %3321 = icmp eq i32 %3320, 2
  %3322 = zext i1 %3321 to i8
  store i8 %3322, i8* %39, align 1
  %3323 = add i64 %3296, 9
  store i64 %3323, i64* %3, align 8
  store i32 %3300, i32* %3298, align 4
  %3324 = load i64, i64* %3, align 8
  %3325 = add i64 %3324, -96
  store i64 %3325, i64* %3, align 8
  br label %block_.L_430a08

block_.L_430a6d:                                  ; preds = %block_.L_430a08
  %3326 = add i64 %3187, -24
  %3327 = add i64 %3226, 8
  store i64 %3327, i64* %3, align 8
  %3328 = inttoptr i64 %3326 to i32*
  %3329 = load i32, i32* %3328, align 4
  %3330 = add i32 %3329, 1
  %3331 = zext i32 %3330 to i64
  store i64 %3331, i64* %RAX.i778, align 8
  %3332 = icmp eq i32 %3329, -1
  %3333 = icmp eq i32 %3330, 0
  %3334 = or i1 %3332, %3333
  %3335 = zext i1 %3334 to i8
  store i8 %3335, i8* %14, align 1
  %3336 = and i32 %3330, 255
  %3337 = tail call i32 @llvm.ctpop.i32(i32 %3336)
  %3338 = trunc i32 %3337 to i8
  %3339 = and i8 %3338, 1
  %3340 = xor i8 %3339, 1
  store i8 %3340, i8* %21, align 1
  %3341 = xor i32 %3330, %3329
  %3342 = lshr i32 %3341, 4
  %3343 = trunc i32 %3342 to i8
  %3344 = and i8 %3343, 1
  store i8 %3344, i8* %27, align 1
  %3345 = zext i1 %3333 to i8
  store i8 %3345, i8* %30, align 1
  %3346 = lshr i32 %3330, 31
  %3347 = trunc i32 %3346 to i8
  store i8 %3347, i8* %33, align 1
  %3348 = lshr i32 %3329, 31
  %3349 = xor i32 %3346, %3348
  %3350 = add nuw nsw i32 %3349, %3346
  %3351 = icmp eq i32 %3350, 2
  %3352 = zext i1 %3351 to i8
  store i8 %3352, i8* %39, align 1
  %3353 = add i64 %3226, 14
  store i64 %3353, i64* %3, align 8
  store i32 %3330, i32* %3328, align 4
  %3354 = load i64, i64* %3, align 8
  %3355 = add i64 %3354, -160
  store i64 %3355, i64* %3, align 8
  br label %block_.L_4309db

block_.L_430a80:                                  ; preds = %block_.L_4309db
  %3356 = add i64 %3177, 265
  br label %block_.L_430b89

block_.L_430a85:                                  ; preds = %block_4309b9, %block_.L_4309af
  %3357 = phi i64 [ %3122, %block_4309b9 ], [ %3098, %block_.L_4309af ]
  %3358 = add i64 %3357, 4
  store i64 %3358, i64* %3, align 8
  %3359 = load i32, i32* %2784, align 4
  %3360 = add i32 %3359, -9
  %3361 = icmp ult i32 %3359, 9
  %3362 = zext i1 %3361 to i8
  store i8 %3362, i8* %14, align 1
  %3363 = and i32 %3360, 255
  %3364 = tail call i32 @llvm.ctpop.i32(i32 %3363)
  %3365 = trunc i32 %3364 to i8
  %3366 = and i8 %3365, 1
  %3367 = xor i8 %3366, 1
  store i8 %3367, i8* %21, align 1
  %3368 = xor i32 %3360, %3359
  %3369 = lshr i32 %3368, 4
  %3370 = trunc i32 %3369 to i8
  %3371 = and i8 %3370, 1
  store i8 %3371, i8* %27, align 1
  %3372 = icmp eq i32 %3360, 0
  %3373 = zext i1 %3372 to i8
  store i8 %3373, i8* %30, align 1
  %3374 = lshr i32 %3360, 31
  %3375 = trunc i32 %3374 to i8
  store i8 %3375, i8* %33, align 1
  %3376 = lshr i32 %3359, 31
  %3377 = xor i32 %3374, %3376
  %3378 = add nuw nsw i32 %3377, %3376
  %3379 = icmp eq i32 %3378, 2
  %3380 = zext i1 %3379 to i8
  store i8 %3380, i8* %39, align 1
  %.v191 = select i1 %3372, i64 20, i64 10
  %3381 = add i64 %3357, %.v191
  store i64 %3381, i64* %3, align 8
  br i1 %3372, label %block_.L_430a99, label %block_430a8f

block_430a8f:                                     ; preds = %block_.L_430a85
  %3382 = add i64 %3381, 4
  store i64 %3382, i64* %3, align 8
  %3383 = load i32, i32* %2784, align 4
  %3384 = add i32 %3383, -13
  %3385 = icmp ult i32 %3383, 13
  %3386 = zext i1 %3385 to i8
  store i8 %3386, i8* %14, align 1
  %3387 = and i32 %3384, 255
  %3388 = tail call i32 @llvm.ctpop.i32(i32 %3387)
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  %3391 = xor i8 %3390, 1
  store i8 %3391, i8* %21, align 1
  %3392 = xor i32 %3384, %3383
  %3393 = lshr i32 %3392, 4
  %3394 = trunc i32 %3393 to i8
  %3395 = and i8 %3394, 1
  store i8 %3395, i8* %27, align 1
  %3396 = icmp eq i32 %3384, 0
  %3397 = zext i1 %3396 to i8
  store i8 %3397, i8* %30, align 1
  %3398 = lshr i32 %3384, 31
  %3399 = trunc i32 %3398 to i8
  store i8 %3399, i8* %33, align 1
  %3400 = lshr i32 %3383, 31
  %3401 = xor i32 %3398, %3400
  %3402 = add nuw nsw i32 %3401, %3400
  %3403 = icmp eq i32 %3402, 2
  %3404 = zext i1 %3403 to i8
  store i8 %3404, i8* %39, align 1
  %.v192 = select i1 %3396, i64 10, i64 245
  %3405 = add i64 %3381, %.v192
  store i64 %3405, i64* %3, align 8
  br i1 %3396, label %block_.L_430a99, label %block_430a8f.block_.L_430b84_crit_edge

block_430a8f.block_.L_430b84_crit_edge:           ; preds = %block_430a8f
  %.pre122.pre.pre = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br label %block_.L_430b84

block_.L_430a99:                                  ; preds = %block_430a8f, %block_.L_430a85
  %3406 = phi i64 [ %3405, %block_430a8f ], [ %3381, %block_.L_430a85 ]
  %3407 = add i64 %2780, -28
  %3408 = add i64 %3406, 7
  store i64 %3408, i64* %3, align 8
  %3409 = inttoptr i64 %3407 to i32*
  store i32 0, i32* %3409, align 4
  %3410 = load i64, i64* %3, align 8
  %3411 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3411, i64* %RAX.i778, align 8
  %3412 = add i64 %3411, 148
  %3413 = add i64 %3410, 14
  store i64 %3413, i64* %3, align 8
  %3414 = inttoptr i64 %3412 to i32*
  %3415 = load i32, i32* %3414, align 4
  %3416 = zext i32 %3415 to i64
  store i64 %3416, i64* %RCX.i2230, align 8
  %3417 = load i64, i64* %RBP.i, align 8
  %3418 = add i64 %3417, -24
  %3419 = add i64 %3410, 17
  store i64 %3419, i64* %3, align 8
  %3420 = inttoptr i64 %3418 to i32*
  store i32 %3415, i32* %3420, align 4
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_430ab1

block_.L_430ab1:                                  ; preds = %block_.L_430b6c, %block_.L_430a99
  %3421 = phi i64 [ %3672, %block_.L_430b6c ], [ %.pre121, %block_.L_430a99 ]
  %3422 = load i64, i64* %RBP.i, align 8
  %3423 = add i64 %3422, -24
  %3424 = add i64 %3421, 3
  store i64 %3424, i64* %3, align 8
  %3425 = inttoptr i64 %3423 to i32*
  %3426 = load i32, i32* %3425, align 4
  %3427 = zext i32 %3426 to i64
  store i64 %3427, i64* %RAX.i778, align 8
  %3428 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3428, i64* %RCX.i2230, align 8
  %3429 = add i64 %3428, 148
  %3430 = add i64 %3421, 17
  store i64 %3430, i64* %3, align 8
  %3431 = inttoptr i64 %3429 to i32*
  %3432 = load i32, i32* %3431, align 4
  %3433 = add i32 %3432, 4
  %3434 = zext i32 %3433 to i64
  store i64 %3434, i64* %RDX.i2114.pre-phi, align 8
  %3435 = lshr i32 %3433, 31
  %3436 = sub i32 %3426, %3433
  %3437 = icmp ult i32 %3426, %3433
  %3438 = zext i1 %3437 to i8
  store i8 %3438, i8* %14, align 1
  %3439 = and i32 %3436, 255
  %3440 = tail call i32 @llvm.ctpop.i32(i32 %3439)
  %3441 = trunc i32 %3440 to i8
  %3442 = and i8 %3441, 1
  %3443 = xor i8 %3442, 1
  store i8 %3443, i8* %21, align 1
  %3444 = xor i32 %3433, %3426
  %3445 = xor i32 %3444, %3436
  %3446 = lshr i32 %3445, 4
  %3447 = trunc i32 %3446 to i8
  %3448 = and i8 %3447, 1
  store i8 %3448, i8* %27, align 1
  %3449 = icmp eq i32 %3436, 0
  %3450 = zext i1 %3449 to i8
  store i8 %3450, i8* %30, align 1
  %3451 = lshr i32 %3436, 31
  %3452 = trunc i32 %3451 to i8
  store i8 %3452, i8* %33, align 1
  %3453 = lshr i32 %3426, 31
  %3454 = xor i32 %3435, %3453
  %3455 = xor i32 %3451, %3453
  %3456 = add nuw nsw i32 %3455, %3454
  %3457 = icmp eq i32 %3456, 2
  %3458 = zext i1 %3457 to i8
  store i8 %3458, i8* %39, align 1
  %3459 = icmp ne i8 %3452, 0
  %3460 = xor i1 %3459, %3457
  %.v193 = select i1 %3460, i64 28, i64 206
  %3461 = add i64 %3421, %.v193
  store i64 %3461, i64* %3, align 8
  br i1 %3460, label %block_430acd, label %block_.L_430b7f

block_430acd:                                     ; preds = %block_.L_430ab1
  store i64 %3428, i64* %RAX.i778, align 8
  %3462 = add i64 %3428, 144
  %3463 = add i64 %3461, 14
  store i64 %3463, i64* %3, align 8
  %3464 = inttoptr i64 %3462 to i32*
  %3465 = load i32, i32* %3464, align 4
  %3466 = zext i32 %3465 to i64
  store i64 %3466, i64* %RCX.i2230, align 8
  %3467 = add i64 %3422, -20
  %3468 = add i64 %3461, 17
  store i64 %3468, i64* %3, align 8
  %3469 = inttoptr i64 %3467 to i32*
  store i32 %3465, i32* %3469, align 4
  %.pre142 = load i64, i64* %3, align 8
  br label %block_.L_430ade

block_.L_430ade:                                  ; preds = %block_430afa, %block_430acd
  %3470 = phi i64 [ %3642, %block_430afa ], [ %.pre142, %block_430acd ]
  %3471 = load i64, i64* %RBP.i, align 8
  %3472 = add i64 %3471, -20
  %3473 = add i64 %3470, 3
  store i64 %3473, i64* %3, align 8
  %3474 = inttoptr i64 %3472 to i32*
  %3475 = load i32, i32* %3474, align 4
  %3476 = zext i32 %3475 to i64
  store i64 %3476, i64* %RAX.i778, align 8
  %3477 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3477, i64* %RCX.i2230, align 8
  %3478 = add i64 %3477, 144
  %3479 = add i64 %3470, 17
  store i64 %3479, i64* %3, align 8
  %3480 = inttoptr i64 %3478 to i32*
  %3481 = load i32, i32* %3480, align 4
  %3482 = add i32 %3481, 4
  %3483 = zext i32 %3482 to i64
  store i64 %3483, i64* %RDX.i2114.pre-phi, align 8
  %3484 = lshr i32 %3482, 31
  %3485 = sub i32 %3475, %3482
  %3486 = icmp ult i32 %3475, %3482
  %3487 = zext i1 %3486 to i8
  store i8 %3487, i8* %14, align 1
  %3488 = and i32 %3485, 255
  %3489 = tail call i32 @llvm.ctpop.i32(i32 %3488)
  %3490 = trunc i32 %3489 to i8
  %3491 = and i8 %3490, 1
  %3492 = xor i8 %3491, 1
  store i8 %3492, i8* %21, align 1
  %3493 = xor i32 %3482, %3475
  %3494 = xor i32 %3493, %3485
  %3495 = lshr i32 %3494, 4
  %3496 = trunc i32 %3495 to i8
  %3497 = and i8 %3496, 1
  store i8 %3497, i8* %27, align 1
  %3498 = icmp eq i32 %3485, 0
  %3499 = zext i1 %3498 to i8
  store i8 %3499, i8* %30, align 1
  %3500 = lshr i32 %3485, 31
  %3501 = trunc i32 %3500 to i8
  store i8 %3501, i8* %33, align 1
  %3502 = lshr i32 %3475, 31
  %3503 = xor i32 %3484, %3502
  %3504 = xor i32 %3500, %3502
  %3505 = add nuw nsw i32 %3504, %3503
  %3506 = icmp eq i32 %3505, 2
  %3507 = zext i1 %3506 to i8
  store i8 %3507, i8* %39, align 1
  %3508 = icmp ne i8 %3501, 0
  %3509 = xor i1 %3508, %3506
  %.v158 = select i1 %3509, i64 28, i64 142
  %3510 = add i64 %3470, %.v158
  store i64 %3510, i64* %3, align 8
  br i1 %3509, label %block_430afa, label %block_.L_430b6c

block_430afa:                                     ; preds = %block_.L_430ade
  %3511 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %3511, i64* %RAX.i778, align 8
  %3512 = add i64 %3511, 3136
  %3513 = add i64 %3510, 15
  store i64 %3513, i64* %3, align 8
  %3514 = inttoptr i64 %3512 to i64*
  %3515 = load i64, i64* %3514, align 8
  store i64 %3515, i64* %RAX.i778, align 8
  %3516 = add i64 %3510, 19
  store i64 %3516, i64* %3, align 8
  %3517 = load i32, i32* %3474, align 4
  %3518 = sext i32 %3517 to i64
  store i64 %3518, i64* %RCX.i2230, align 8
  %3519 = shl nsw i64 %3518, 3
  %3520 = add i64 %3519, %3515
  %3521 = add i64 %3510, 23
  store i64 %3521, i64* %3, align 8
  %3522 = inttoptr i64 %3520 to i64*
  %3523 = load i64, i64* %3522, align 8
  store i64 %3523, i64* %RAX.i778, align 8
  %3524 = add i64 %3471, -24
  %3525 = add i64 %3510, 27
  store i64 %3525, i64* %3, align 8
  %3526 = inttoptr i64 %3524 to i32*
  %3527 = load i32, i32* %3526, align 4
  %3528 = sext i32 %3527 to i64
  store i64 %3528, i64* %RCX.i2230, align 8
  %3529 = shl nsw i64 %3528, 2
  %3530 = add i64 %3529, %3523
  %3531 = add i64 %3510, 30
  store i64 %3531, i64* %3, align 8
  %3532 = inttoptr i64 %3530 to i32*
  %3533 = load i32, i32* %3532, align 4
  %3534 = zext i32 %3533 to i64
  store i64 %3534, i64* %RDX.i2114.pre-phi, align 8
  store i64 %3477, i64* %RAX.i778, align 8
  %3535 = add i64 %3477, 104
  %3536 = add i64 %3510, 42
  store i64 %3536, i64* %3, align 8
  %3537 = inttoptr i64 %3535 to i64*
  %3538 = load i64, i64* %3537, align 8
  store i64 %3538, i64* %RAX.i778, align 8
  %3539 = add i64 %3510, 46
  store i64 %3539, i64* %3, align 8
  %3540 = load i32, i32* %3474, align 4
  %3541 = sext i32 %3540 to i64
  store i64 %3541, i64* %RCX.i2230, align 8
  %3542 = shl nsw i64 %3541, 3
  %3543 = add i64 %3542, %3538
  %3544 = add i64 %3510, 50
  store i64 %3544, i64* %3, align 8
  %3545 = inttoptr i64 %3543 to i64*
  %3546 = load i64, i64* %3545, align 8
  store i64 %3546, i64* %RAX.i778, align 8
  %3547 = add i64 %3510, 54
  store i64 %3547, i64* %3, align 8
  %3548 = load i32, i32* %3526, align 4
  %3549 = sext i32 %3548 to i64
  store i64 %3549, i64* %RCX.i2230, align 8
  %3550 = shl nsw i64 %3549, 2
  %3551 = add i64 %3550, %3546
  %3552 = add i64 %3510, 57
  store i64 %3552, i64* %3, align 8
  %3553 = inttoptr i64 %3551 to i32*
  store i32 %3533, i32* %3553, align 4
  %3554 = load i64, i64* %3, align 8
  %3555 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %3555, i64* %RAX.i778, align 8
  %3556 = load i64, i64* %RBP.i, align 8
  %3557 = add i64 %3556, -28
  %3558 = add i64 %3554, 12
  store i64 %3558, i64* %3, align 8
  %3559 = inttoptr i64 %3557 to i32*
  %3560 = load i32, i32* %3559, align 4
  %3561 = sext i32 %3560 to i64
  store i64 %3561, i64* %RCX.i2230, align 8
  %3562 = shl nsw i64 %3561, 2
  %3563 = add i64 %3555, 3144
  %3564 = add i64 %3563, %3562
  %3565 = add i64 %3554, 19
  store i64 %3565, i64* %3, align 8
  %3566 = inttoptr i64 %3564 to i32*
  %3567 = load i32, i32* %3566, align 4
  %3568 = zext i32 %3567 to i64
  store i64 %3568, i64* %RDX.i2114.pre-phi, align 8
  %3569 = add i64 %3556, -16
  %3570 = add i64 %3554, 23
  store i64 %3570, i64* %3, align 8
  %3571 = inttoptr i64 %3569 to i64*
  %3572 = load i64, i64* %3571, align 8
  store i64 %3572, i64* %RAX.i778, align 8
  %3573 = add i64 %3554, 27
  store i64 %3573, i64* %3, align 8
  %3574 = load i32, i32* %3559, align 4
  %3575 = sext i32 %3574 to i64
  store i64 %3575, i64* %RCX.i2230, align 8
  %3576 = shl nsw i64 %3575, 2
  %3577 = add i64 %3572, 332
  %3578 = add i64 %3577, %3576
  %3579 = add i64 %3554, 34
  store i64 %3579, i64* %3, align 8
  %3580 = inttoptr i64 %3578 to i32*
  store i32 %3567, i32* %3580, align 4
  %3581 = load i64, i64* %RBP.i, align 8
  %3582 = add i64 %3581, -20
  %3583 = load i64, i64* %3, align 8
  %3584 = add i64 %3583, 3
  store i64 %3584, i64* %3, align 8
  %3585 = inttoptr i64 %3582 to i32*
  %3586 = load i32, i32* %3585, align 4
  %3587 = add i32 %3586, 1
  %3588 = zext i32 %3587 to i64
  store i64 %3588, i64* %RAX.i778, align 8
  %3589 = icmp eq i32 %3586, -1
  %3590 = icmp eq i32 %3587, 0
  %3591 = or i1 %3589, %3590
  %3592 = zext i1 %3591 to i8
  store i8 %3592, i8* %14, align 1
  %3593 = and i32 %3587, 255
  %3594 = tail call i32 @llvm.ctpop.i32(i32 %3593)
  %3595 = trunc i32 %3594 to i8
  %3596 = and i8 %3595, 1
  %3597 = xor i8 %3596, 1
  store i8 %3597, i8* %21, align 1
  %3598 = xor i32 %3587, %3586
  %3599 = lshr i32 %3598, 4
  %3600 = trunc i32 %3599 to i8
  %3601 = and i8 %3600, 1
  store i8 %3601, i8* %27, align 1
  %3602 = zext i1 %3590 to i8
  store i8 %3602, i8* %30, align 1
  %3603 = lshr i32 %3587, 31
  %3604 = trunc i32 %3603 to i8
  store i8 %3604, i8* %33, align 1
  %3605 = lshr i32 %3586, 31
  %3606 = xor i32 %3603, %3605
  %3607 = add nuw nsw i32 %3606, %3603
  %3608 = icmp eq i32 %3607, 2
  %3609 = zext i1 %3608 to i8
  store i8 %3609, i8* %39, align 1
  %3610 = add i64 %3583, 9
  store i64 %3610, i64* %3, align 8
  store i32 %3587, i32* %3585, align 4
  %3611 = load i64, i64* %RBP.i, align 8
  %3612 = add i64 %3611, -28
  %3613 = load i64, i64* %3, align 8
  %3614 = add i64 %3613, 3
  store i64 %3614, i64* %3, align 8
  %3615 = inttoptr i64 %3612 to i32*
  %3616 = load i32, i32* %3615, align 4
  %3617 = add i32 %3616, 1
  %3618 = zext i32 %3617 to i64
  store i64 %3618, i64* %RAX.i778, align 8
  %3619 = icmp eq i32 %3616, -1
  %3620 = icmp eq i32 %3617, 0
  %3621 = or i1 %3619, %3620
  %3622 = zext i1 %3621 to i8
  store i8 %3622, i8* %14, align 1
  %3623 = and i32 %3617, 255
  %3624 = tail call i32 @llvm.ctpop.i32(i32 %3623)
  %3625 = trunc i32 %3624 to i8
  %3626 = and i8 %3625, 1
  %3627 = xor i8 %3626, 1
  store i8 %3627, i8* %21, align 1
  %3628 = xor i32 %3617, %3616
  %3629 = lshr i32 %3628, 4
  %3630 = trunc i32 %3629 to i8
  %3631 = and i8 %3630, 1
  store i8 %3631, i8* %27, align 1
  %3632 = zext i1 %3620 to i8
  store i8 %3632, i8* %30, align 1
  %3633 = lshr i32 %3617, 31
  %3634 = trunc i32 %3633 to i8
  store i8 %3634, i8* %33, align 1
  %3635 = lshr i32 %3616, 31
  %3636 = xor i32 %3633, %3635
  %3637 = add nuw nsw i32 %3636, %3633
  %3638 = icmp eq i32 %3637, 2
  %3639 = zext i1 %3638 to i8
  store i8 %3639, i8* %39, align 1
  %3640 = add i64 %3613, 9
  store i64 %3640, i64* %3, align 8
  store i32 %3617, i32* %3615, align 4
  %3641 = load i64, i64* %3, align 8
  %3642 = add i64 %3641, -137
  store i64 %3642, i64* %3, align 8
  br label %block_.L_430ade

block_.L_430b6c:                                  ; preds = %block_.L_430ade
  %3643 = add i64 %3471, -24
  %3644 = add i64 %3510, 8
  store i64 %3644, i64* %3, align 8
  %3645 = inttoptr i64 %3643 to i32*
  %3646 = load i32, i32* %3645, align 4
  %3647 = add i32 %3646, 1
  %3648 = zext i32 %3647 to i64
  store i64 %3648, i64* %RAX.i778, align 8
  %3649 = icmp eq i32 %3646, -1
  %3650 = icmp eq i32 %3647, 0
  %3651 = or i1 %3649, %3650
  %3652 = zext i1 %3651 to i8
  store i8 %3652, i8* %14, align 1
  %3653 = and i32 %3647, 255
  %3654 = tail call i32 @llvm.ctpop.i32(i32 %3653)
  %3655 = trunc i32 %3654 to i8
  %3656 = and i8 %3655, 1
  %3657 = xor i8 %3656, 1
  store i8 %3657, i8* %21, align 1
  %3658 = xor i32 %3647, %3646
  %3659 = lshr i32 %3658, 4
  %3660 = trunc i32 %3659 to i8
  %3661 = and i8 %3660, 1
  store i8 %3661, i8* %27, align 1
  %3662 = zext i1 %3650 to i8
  store i8 %3662, i8* %30, align 1
  %3663 = lshr i32 %3647, 31
  %3664 = trunc i32 %3663 to i8
  store i8 %3664, i8* %33, align 1
  %3665 = lshr i32 %3646, 31
  %3666 = xor i32 %3663, %3665
  %3667 = add nuw nsw i32 %3666, %3663
  %3668 = icmp eq i32 %3667, 2
  %3669 = zext i1 %3668 to i8
  store i8 %3669, i8* %39, align 1
  %3670 = add i64 %3510, 14
  store i64 %3670, i64* %3, align 8
  store i32 %3647, i32* %3645, align 4
  %3671 = load i64, i64* %3, align 8
  %3672 = add i64 %3671, -201
  store i64 %3672, i64* %3, align 8
  br label %block_.L_430ab1

block_.L_430b7f:                                  ; preds = %block_.L_430ab1
  %3673 = add i64 %3461, 5
  store i64 %3673, i64* %3, align 8
  br label %block_.L_430b84

block_.L_430b84:                                  ; preds = %block_430a8f.block_.L_430b84_crit_edge, %block_.L_430b7f
  %.pre122.pre = phi i64 [ %3428, %block_.L_430b7f ], [ %.pre122.pre.pre, %block_430a8f.block_.L_430b84_crit_edge ]
  %3674 = phi i64 [ %3673, %block_.L_430b7f ], [ %3405, %block_430a8f.block_.L_430b84_crit_edge ]
  %3675 = add i64 %3674, 5
  store i64 %3675, i64* %3, align 8
  br label %block_.L_430b89

block_.L_430b89:                                  ; preds = %block_.L_430b84, %block_.L_430a80
  %.pre122 = phi i64 [ %3144, %block_.L_430a80 ], [ %.pre122.pre, %block_.L_430b84 ]
  %storemerge53 = phi i64 [ %3356, %block_.L_430a80 ], [ %3675, %block_.L_430b84 ]
  %3676 = add i64 %storemerge53, 5
  store i64 %3676, i64* %3, align 8
  br label %block_.L_430b8e

block_.L_430b8e:                                  ; preds = %block_.L_430b89, %block_.L_4309aa
  %3677 = phi i64 [ %2829, %block_.L_4309aa ], [ %.pre122, %block_.L_430b89 ]
  %storemerge45 = phi i64 [ %3074, %block_.L_4309aa ], [ %3676, %block_.L_430b89 ]
  store i64 %3677, i64* %RAX.i778, align 8
  %3678 = add i64 %3677, 72400
  %3679 = add i64 %storemerge45, 15
  store i64 %3679, i64* %3, align 8
  %3680 = inttoptr i64 %3678 to i32*
  %3681 = load i32, i32* %3680, align 4
  store i8 0, i8* %14, align 1
  %3682 = and i32 %3681, 255
  %3683 = tail call i32 @llvm.ctpop.i32(i32 %3682)
  %3684 = trunc i32 %3683 to i8
  %3685 = and i8 %3684, 1
  %3686 = xor i8 %3685, 1
  store i8 %3686, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3687 = icmp eq i32 %3681, 0
  %3688 = zext i1 %3687 to i8
  store i8 %3688, i8* %30, align 1
  %3689 = lshr i32 %3681, 31
  %3690 = trunc i32 %3689 to i8
  store i8 %3690, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v180 = select i1 %3687, i64 1585, i64 21
  %3691 = add i64 %storemerge45, %.v180
  store i64 %3691, i64* %3, align 8
  br i1 %3687, label %block_.L_4311bf, label %block_430ba3

block_430ba3:                                     ; preds = %block_.L_430b8e
  %3692 = add i64 %3691, 1581
  %3693 = add i64 %3691, 5
  %3694 = load i64, i64* %6, align 8
  %3695 = add i64 %3694, -8
  %3696 = inttoptr i64 %3695 to i64*
  store i64 %3693, i64* %3696, align 8
  store i64 %3695, i64* %6, align 8
  store i64 %3692, i64* %3, align 8
  %call2_430ba3 = tail call %struct.Memory* @sub_4311d0.copy_motion_vectors_MB(%struct.State* nonnull %0, i64 %3692, %struct.Memory* %MEMORY.1)
  %3697 = load i64, i64* %RBP.i, align 8
  %3698 = add i64 %3697, -16
  %3699 = load i64, i64* %3, align 8
  %3700 = add i64 %3699, 4
  store i64 %3700, i64* %3, align 8
  %3701 = inttoptr i64 %3698 to i64*
  %3702 = load i64, i64* %3701, align 8
  store i64 %3702, i64* %RAX.i778, align 8
  %3703 = add i64 %3702, 72
  %3704 = add i64 %3699, 8
  store i64 %3704, i64* %3, align 8
  %3705 = inttoptr i64 %3703 to i32*
  %3706 = load i32, i32* %3705, align 4
  %3707 = add i32 %3706, -9
  %3708 = icmp ult i32 %3706, 9
  %3709 = zext i1 %3708 to i8
  store i8 %3709, i8* %14, align 1
  %3710 = and i32 %3707, 255
  %3711 = tail call i32 @llvm.ctpop.i32(i32 %3710)
  %3712 = trunc i32 %3711 to i8
  %3713 = and i8 %3712, 1
  %3714 = xor i8 %3713, 1
  store i8 %3714, i8* %21, align 1
  %3715 = xor i32 %3707, %3706
  %3716 = lshr i32 %3715, 4
  %3717 = trunc i32 %3716 to i8
  %3718 = and i8 %3717, 1
  store i8 %3718, i8* %27, align 1
  %3719 = icmp eq i32 %3707, 0
  %3720 = zext i1 %3719 to i8
  store i8 %3720, i8* %30, align 1
  %3721 = lshr i32 %3707, 31
  %3722 = trunc i32 %3721 to i8
  store i8 %3722, i8* %33, align 1
  %3723 = lshr i32 %3706, 31
  %3724 = xor i32 %3721, %3723
  %3725 = add nuw nsw i32 %3724, %3723
  %3726 = icmp eq i32 %3725, 2
  %3727 = zext i1 %3726 to i8
  store i8 %3727, i8* %39, align 1
  %.v181 = select i1 %3719, i64 1179, i64 14
  %3728 = add i64 %3699, %.v181
  store i64 %3728, i64* %3, align 8
  br i1 %3719, label %block_.L_431043, label %block_430bb6

block_430bb6:                                     ; preds = %block_430ba3
  %3729 = add i64 %3728, 4
  store i64 %3729, i64* %3, align 8
  %3730 = load i64, i64* %3701, align 8
  store i64 %3730, i64* %RAX.i778, align 8
  %3731 = add i64 %3730, 72
  %3732 = add i64 %3728, 8
  store i64 %3732, i64* %3, align 8
  %3733 = inttoptr i64 %3731 to i32*
  %3734 = load i32, i32* %3733, align 4
  %3735 = add i32 %3734, -10
  %3736 = icmp ult i32 %3734, 10
  %3737 = zext i1 %3736 to i8
  store i8 %3737, i8* %14, align 1
  %3738 = and i32 %3735, 255
  %3739 = tail call i32 @llvm.ctpop.i32(i32 %3738)
  %3740 = trunc i32 %3739 to i8
  %3741 = and i8 %3740, 1
  %3742 = xor i8 %3741, 1
  store i8 %3742, i8* %21, align 1
  %3743 = xor i32 %3735, %3734
  %3744 = lshr i32 %3743, 4
  %3745 = trunc i32 %3744 to i8
  %3746 = and i8 %3745, 1
  store i8 %3746, i8* %27, align 1
  %3747 = icmp eq i32 %3735, 0
  %3748 = zext i1 %3747 to i8
  store i8 %3748, i8* %30, align 1
  %3749 = lshr i32 %3735, 31
  %3750 = trunc i32 %3749 to i8
  store i8 %3750, i8* %33, align 1
  %3751 = lshr i32 %3734, 31
  %3752 = xor i32 %3749, %3751
  %3753 = add nuw nsw i32 %3752, %3751
  %3754 = icmp eq i32 %3753, 2
  %3755 = zext i1 %3754 to i8
  store i8 %3755, i8* %39, align 1
  %.v182 = select i1 %3747, i64 1165, i64 14
  %3756 = add i64 %3728, %.v182
  store i64 %3756, i64* %3, align 8
  br i1 %3747, label %block_.L_431043, label %block_430bc4

block_430bc4:                                     ; preds = %block_430bb6
  %3757 = add i64 %3756, 4
  store i64 %3757, i64* %3, align 8
  %3758 = load i64, i64* %3701, align 8
  store i64 %3758, i64* %RAX.i778, align 8
  %3759 = add i64 %3758, 72
  %3760 = add i64 %3756, 8
  store i64 %3760, i64* %3, align 8
  %3761 = inttoptr i64 %3759 to i32*
  %3762 = load i32, i32* %3761, align 4
  %3763 = add i32 %3762, -13
  %3764 = icmp ult i32 %3762, 13
  %3765 = zext i1 %3764 to i8
  store i8 %3765, i8* %14, align 1
  %3766 = and i32 %3763, 255
  %3767 = tail call i32 @llvm.ctpop.i32(i32 %3766)
  %3768 = trunc i32 %3767 to i8
  %3769 = and i8 %3768, 1
  %3770 = xor i8 %3769, 1
  store i8 %3770, i8* %21, align 1
  %3771 = xor i32 %3763, %3762
  %3772 = lshr i32 %3771, 4
  %3773 = trunc i32 %3772 to i8
  %3774 = and i8 %3773, 1
  store i8 %3774, i8* %27, align 1
  %3775 = icmp eq i32 %3763, 0
  %3776 = zext i1 %3775 to i8
  store i8 %3776, i8* %30, align 1
  %3777 = lshr i32 %3763, 31
  %3778 = trunc i32 %3777 to i8
  store i8 %3778, i8* %33, align 1
  %3779 = lshr i32 %3762, 31
  %3780 = xor i32 %3777, %3779
  %3781 = add nuw nsw i32 %3780, %3779
  %3782 = icmp eq i32 %3781, 2
  %3783 = zext i1 %3782 to i8
  store i8 %3783, i8* %39, align 1
  %.v183 = select i1 %3775, i64 1151, i64 14
  %3784 = add i64 %3756, %.v183
  store i64 %3784, i64* %3, align 8
  br i1 %3775, label %block_.L_431043, label %block_430bd2

block_430bd2:                                     ; preds = %block_430bc4
  %3785 = add i64 %3697, -24
  %3786 = add i64 %3784, 7
  store i64 %3786, i64* %3, align 8
  %3787 = inttoptr i64 %3785 to i32*
  store i32 0, i32* %3787, align 4
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8.i749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre123 = load i64, i64* %3, align 8
  br label %block_.L_430bd9

block_.L_430bd9:                                  ; preds = %block_.L_43102b, %block_430bd2
  %3789 = phi i64 [ %.pre123, %block_430bd2 ], [ %5471, %block_.L_43102b ]
  %MEMORY.29 = phi %struct.Memory* [ %call2_430ba3, %block_430bd2 ], [ %MEMORY.30, %block_.L_43102b ]
  %3790 = load i64, i64* %RBP.i, align 8
  %3791 = add i64 %3790, -24
  %3792 = add i64 %3789, 4
  store i64 %3792, i64* %3, align 8
  %3793 = inttoptr i64 %3791 to i32*
  %3794 = load i32, i32* %3793, align 4
  %3795 = add i32 %3794, -4
  %3796 = icmp ult i32 %3794, 4
  %3797 = zext i1 %3796 to i8
  store i8 %3797, i8* %14, align 1
  %3798 = and i32 %3795, 255
  %3799 = tail call i32 @llvm.ctpop.i32(i32 %3798)
  %3800 = trunc i32 %3799 to i8
  %3801 = and i8 %3800, 1
  %3802 = xor i8 %3801, 1
  store i8 %3802, i8* %21, align 1
  %3803 = xor i32 %3795, %3794
  %3804 = lshr i32 %3803, 4
  %3805 = trunc i32 %3804 to i8
  %3806 = and i8 %3805, 1
  store i8 %3806, i8* %27, align 1
  %3807 = icmp eq i32 %3795, 0
  %3808 = zext i1 %3807 to i8
  store i8 %3808, i8* %30, align 1
  %3809 = lshr i32 %3795, 31
  %3810 = trunc i32 %3809 to i8
  store i8 %3810, i8* %33, align 1
  %3811 = lshr i32 %3794, 31
  %3812 = xor i32 %3809, %3811
  %3813 = add nuw nsw i32 %3812, %3811
  %3814 = icmp eq i32 %3813, 2
  %3815 = zext i1 %3814 to i8
  store i8 %3815, i8* %39, align 1
  %3816 = icmp ne i8 %3810, 0
  %3817 = xor i1 %3816, %3814
  %.v184 = select i1 %3817, i64 10, i64 1125
  %3818 = add i64 %3789, %.v184
  store i64 %3818, i64* %3, align 8
  br i1 %3817, label %block_430be3, label %block_.L_43103e

block_430be3:                                     ; preds = %block_.L_430bd9
  %3819 = add i64 %3790, -20
  %3820 = add i64 %3818, 7
  store i64 %3820, i64* %3, align 8
  %3821 = inttoptr i64 %3819 to i32*
  store i32 0, i32* %3821, align 4
  %.pre124 = load i64, i64* %3, align 8
  br label %block_.L_430bea

block_.L_430bea:                                  ; preds = %block_.L_431018, %block_430be3
  %3822 = phi i64 [ %.pre124, %block_430be3 ], [ %5441, %block_.L_431018 ]
  %MEMORY.30 = phi %struct.Memory* [ %MEMORY.29, %block_430be3 ], [ %4050, %block_.L_431018 ]
  %3823 = load i64, i64* %RBP.i, align 8
  %3824 = add i64 %3823, -20
  %3825 = add i64 %3822, 4
  store i64 %3825, i64* %3, align 8
  %3826 = inttoptr i64 %3824 to i32*
  %3827 = load i32, i32* %3826, align 4
  %3828 = add i32 %3827, -4
  %3829 = icmp ult i32 %3827, 4
  %3830 = zext i1 %3829 to i8
  store i8 %3830, i8* %14, align 1
  %3831 = and i32 %3828, 255
  %3832 = tail call i32 @llvm.ctpop.i32(i32 %3831)
  %3833 = trunc i32 %3832 to i8
  %3834 = and i8 %3833, 1
  %3835 = xor i8 %3834, 1
  store i8 %3835, i8* %21, align 1
  %3836 = xor i32 %3828, %3827
  %3837 = lshr i32 %3836, 4
  %3838 = trunc i32 %3837 to i8
  %3839 = and i8 %3838, 1
  store i8 %3839, i8* %27, align 1
  %3840 = icmp eq i32 %3828, 0
  %3841 = zext i1 %3840 to i8
  store i8 %3841, i8* %30, align 1
  %3842 = lshr i32 %3828, 31
  %3843 = trunc i32 %3842 to i8
  store i8 %3843, i8* %33, align 1
  %3844 = lshr i32 %3827, 31
  %3845 = xor i32 %3842, %3844
  %3846 = add nuw nsw i32 %3845, %3844
  %3847 = icmp eq i32 %3846, 2
  %3848 = zext i1 %3847 to i8
  store i8 %3848, i8* %39, align 1
  %3849 = icmp ne i8 %3843, 0
  %3850 = xor i1 %3849, %3847
  %.v185 = select i1 %3850, i64 10, i64 1089
  %3851 = add i64 %3822, %.v185
  %3852 = add i64 %3851, 5
  store i64 %3852, i64* %3, align 8
  br i1 %3850, label %block_430bf4, label %block_.L_43102b

block_430bf4:                                     ; preds = %block_.L_430bea
  store i64 2, i64* %RAX.i778, align 8
  %3853 = add i64 %3823, -16
  %3854 = add i64 %3851, 9
  store i64 %3854, i64* %3, align 8
  %3855 = inttoptr i64 %3853 to i64*
  %3856 = load i64, i64* %3855, align 8
  store i64 %3856, i64* %RCX.i2230, align 8
  %3857 = add i64 %3851, 12
  store i64 %3857, i64* %3, align 8
  %3858 = load i32, i32* %3826, align 4
  %3859 = zext i32 %3858 to i64
  store i64 %3859, i64* %RDX.i2114.pre-phi, align 8
  %3860 = add i64 %3823, -64
  %3861 = add i64 %3851, 15
  store i64 %3861, i64* %3, align 8
  %3862 = inttoptr i64 %3860 to i32*
  store i32 2, i32* %3862, align 4
  %3863 = load i32, i32* %EDX.i2032.pre-phi, align 4
  %3864 = zext i32 %3863 to i64
  %3865 = load i64, i64* %3, align 8
  store i64 %3864, i64* %RAX.i778, align 8
  %3866 = sext i32 %3863 to i64
  %3867 = lshr i64 %3866, 32
  store i64 %3867, i64* %3788, align 8
  %3868 = load i64, i64* %RBP.i, align 8
  %3869 = add i64 %3868, -64
  %3870 = add i64 %3865, 6
  store i64 %3870, i64* %3, align 8
  %3871 = inttoptr i64 %3869 to i32*
  %3872 = load i32, i32* %3871, align 4
  %3873 = zext i32 %3872 to i64
  store i64 %3873, i64* %RSI.i1789, align 8
  %3874 = add i64 %3865, 8
  store i64 %3874, i64* %3, align 8
  %3875 = sext i32 %3872 to i64
  %3876 = shl nuw i64 %3867, 32
  %3877 = or i64 %3876, %3864
  %3878 = sdiv i64 %3877, %3875
  %3879 = shl i64 %3878, 32
  %3880 = ashr exact i64 %3879, 32
  %3881 = icmp eq i64 %3878, %3880
  br i1 %3881, label %3884, label %3882

; <label>:3882:                                   ; preds = %block_430bf4
  %3883 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3874, %struct.Memory* %MEMORY.30)
  %.pre125 = load i64, i64* %RBP.i, align 8
  %.pre126 = load i64, i64* %3, align 8
  %.pre127 = load i32, i32* %EAX.i2151.pre-phi, align 4
  br label %routine_idivl__esi.exit776

; <label>:3884:                                   ; preds = %block_430bf4
  %3885 = srem i64 %3877, %3875
  %3886 = and i64 %3878, 4294967295
  store i64 %3886, i64* %RAX.i778, align 8
  %3887 = and i64 %3885, 4294967295
  store i64 %3887, i64* %RDX.i2114.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3888 = trunc i64 %3878 to i32
  br label %routine_idivl__esi.exit776

routine_idivl__esi.exit776:                       ; preds = %3884, %3882
  %3889 = phi i32 [ %.pre127, %3882 ], [ %3888, %3884 ]
  %3890 = phi i64 [ %.pre126, %3882 ], [ %3874, %3884 ]
  %3891 = phi i64 [ %.pre125, %3882 ], [ %3868, %3884 ]
  %3892 = phi %struct.Memory* [ %3883, %3882 ], [ %MEMORY.30, %3884 ]
  %3893 = add i64 %3891, -24
  %3894 = add i64 %3890, 3
  store i64 %3894, i64* %3, align 8
  %3895 = inttoptr i64 %3893 to i32*
  %3896 = load i32, i32* %3895, align 4
  %3897 = zext i32 %3896 to i64
  store i64 %3897, i64* %RDI.i2177, align 8
  %3898 = add i64 %3891, -68
  %3899 = add i64 %3890, 6
  store i64 %3899, i64* %3, align 8
  %3900 = inttoptr i64 %3898 to i32*
  store i32 %3889, i32* %3900, align 4
  %3901 = load i32, i32* %EDI.i762, align 4
  %3902 = zext i32 %3901 to i64
  %3903 = load i64, i64* %3, align 8
  store i64 %3902, i64* %RAX.i778, align 8
  %3904 = sext i32 %3901 to i64
  %3905 = lshr i64 %3904, 32
  store i64 %3905, i64* %3788, align 8
  %3906 = load i32, i32* %ESI.i1782, align 4
  %3907 = add i64 %3903, 5
  store i64 %3907, i64* %3, align 8
  %3908 = sext i32 %3906 to i64
  %3909 = shl nuw i64 %3905, 32
  %3910 = or i64 %3909, %3902
  %3911 = sdiv i64 %3910, %3908
  %3912 = shl i64 %3911, 32
  %3913 = ashr exact i64 %3912, 32
  %3914 = icmp eq i64 %3911, %3913
  br i1 %3914, label %3917, label %3915

; <label>:3915:                                   ; preds = %routine_idivl__esi.exit776
  %3916 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3907, %struct.Memory* %3892)
  %.pre128 = load i64, i64* %RAX.i778, align 8
  %.pre129 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit760

; <label>:3917:                                   ; preds = %routine_idivl__esi.exit776
  %3918 = srem i64 %3910, %3908
  %3919 = and i64 %3911, 4294967295
  store i64 %3919, i64* %RAX.i778, align 8
  %3920 = and i64 %3918, 4294967295
  store i64 %3920, i64* %RDX.i2114.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__esi.exit760

routine_idivl__esi.exit760:                       ; preds = %3917, %3915
  %3921 = phi i64 [ %.pre129, %3915 ], [ %3907, %3917 ]
  %3922 = phi i64 [ %.pre128, %3915 ], [ %3919, %3917 ]
  %3923 = phi %struct.Memory* [ %3916, %3915 ], [ %3892, %3917 ]
  %3924 = trunc i64 %3922 to i32
  %3925 = shl i32 %3924, 1
  %3926 = icmp slt i32 %3924, 0
  %3927 = icmp slt i32 %3925, 0
  %3928 = xor i1 %3926, %3927
  %3929 = zext i32 %3925 to i64
  store i64 %3929, i64* %RAX.i778, align 8
  %.lobit46 = lshr i32 %3924, 31
  %3930 = trunc i32 %.lobit46 to i8
  store i8 %3930, i8* %14, align 1
  %3931 = and i32 %3925, 254
  %3932 = tail call i32 @llvm.ctpop.i32(i32 %3931)
  %3933 = trunc i32 %3932 to i8
  %3934 = and i8 %3933, 1
  %3935 = xor i8 %3934, 1
  store i8 %3935, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3936 = icmp eq i32 %3925, 0
  %3937 = zext i1 %3936 to i8
  store i8 %3937, i8* %30, align 1
  %3938 = lshr i32 %3924, 30
  %3939 = trunc i32 %3938 to i8
  %3940 = and i8 %3939, 1
  store i8 %3940, i8* %33, align 1
  %3941 = zext i1 %3928 to i8
  store i8 %3941, i8* %39, align 1
  %3942 = load i64, i64* %RBP.i, align 8
  %3943 = add i64 %3942, -68
  %3944 = add i64 %3921, 5
  store i64 %3944, i64* %3, align 8
  %3945 = inttoptr i64 %3943 to i32*
  %3946 = load i32, i32* %3945, align 4
  %3947 = add i32 %3925, %3946
  %3948 = zext i32 %3947 to i64
  store i64 %3948, i64* %RDI.i2177, align 8
  %3949 = icmp ult i32 %3947, %3946
  %3950 = icmp ult i32 %3947, %3925
  %3951 = or i1 %3949, %3950
  %3952 = zext i1 %3951 to i8
  store i8 %3952, i8* %14, align 1
  %3953 = and i32 %3947, 255
  %3954 = tail call i32 @llvm.ctpop.i32(i32 %3953)
  %3955 = trunc i32 %3954 to i8
  %3956 = and i8 %3955, 1
  %3957 = xor i8 %3956, 1
  store i8 %3957, i8* %21, align 1
  %3958 = xor i32 %3925, %3946
  %3959 = xor i32 %3958, %3947
  %3960 = lshr i32 %3959, 4
  %3961 = trunc i32 %3960 to i8
  %3962 = and i8 %3961, 1
  store i8 %3962, i8* %27, align 1
  %3963 = icmp eq i32 %3947, 0
  %3964 = zext i1 %3963 to i8
  store i8 %3964, i8* %30, align 1
  %3965 = lshr i32 %3947, 31
  %3966 = trunc i32 %3965 to i8
  store i8 %3966, i8* %33, align 1
  %3967 = lshr i32 %3946, 31
  %3968 = lshr i32 %3924, 30
  %3969 = and i32 %3968, 1
  %3970 = xor i32 %3965, %3967
  %3971 = xor i32 %3965, %3969
  %3972 = add nuw nsw i32 %3970, %3971
  %3973 = icmp eq i32 %3972, 2
  %3974 = zext i1 %3973 to i8
  store i8 %3974, i8* %39, align 1
  %3975 = sext i32 %3947 to i64
  store i64 %3975, i64* %R8.i749, align 8
  %3976 = load i64, i64* %RCX.i2230, align 8
  %3977 = shl nsw i64 %3975, 2
  %3978 = add nsw i64 %3977, 472
  %3979 = add i64 %3978, %3976
  %3980 = add i64 %3921, 18
  store i64 %3980, i64* %3, align 8
  %3981 = inttoptr i64 %3979 to i32*
  %3982 = load i32, i32* %3981, align 4
  %3983 = zext i32 %3982 to i64
  store i64 %3983, i64* %RAX.i778, align 8
  %3984 = add i64 %3942, -44
  %3985 = add i64 %3921, 21
  store i64 %3985, i64* %3, align 8
  %3986 = inttoptr i64 %3984 to i32*
  store i32 %3982, i32* %3986, align 4
  %3987 = load i64, i64* %RBP.i, align 8
  %3988 = add i64 %3987, -16
  %3989 = load i64, i64* %3, align 8
  %3990 = add i64 %3989, 4
  store i64 %3990, i64* %3, align 8
  %3991 = inttoptr i64 %3988 to i64*
  %3992 = load i64, i64* %3991, align 8
  store i64 %3992, i64* %RCX.i2230, align 8
  %3993 = add i64 %3987, -20
  %3994 = add i64 %3989, 7
  store i64 %3994, i64* %3, align 8
  %3995 = inttoptr i64 %3993 to i32*
  %3996 = load i32, i32* %3995, align 4
  %3997 = zext i32 %3996 to i64
  store i64 %3997, i64* %RAX.i778, align 8
  %3998 = sext i32 %3996 to i64
  %3999 = lshr i64 %3998, 32
  store i64 %3999, i64* %3788, align 8
  %4000 = load i32, i32* %ESI.i1782, align 4
  %4001 = add i64 %3989, 10
  store i64 %4001, i64* %3, align 8
  %4002 = sext i32 %4000 to i64
  %4003 = shl nuw i64 %3999, 32
  %4004 = or i64 %4003, %3997
  %4005 = sdiv i64 %4004, %4002
  %4006 = shl i64 %4005, 32
  %4007 = ashr exact i64 %4006, 32
  %4008 = icmp eq i64 %4005, %4007
  br i1 %4008, label %4011, label %4009

; <label>:4009:                                   ; preds = %routine_idivl__esi.exit760
  %4010 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4001, %struct.Memory* %3923)
  %.pre130 = load i64, i64* %RBP.i, align 8
  %.pre131 = load i64, i64* %3, align 8
  %.pre132 = load i32, i32* %EAX.i2151.pre-phi, align 4
  br label %routine_idivl__esi.exit730

; <label>:4011:                                   ; preds = %routine_idivl__esi.exit760
  %4012 = srem i64 %4004, %4002
  %4013 = and i64 %4005, 4294967295
  store i64 %4013, i64* %RAX.i778, align 8
  %4014 = and i64 %4012, 4294967295
  store i64 %4014, i64* %RDX.i2114.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4015 = trunc i64 %4005 to i32
  br label %routine_idivl__esi.exit730

routine_idivl__esi.exit730:                       ; preds = %4011, %4009
  %4016 = phi i32 [ %.pre132, %4009 ], [ %4015, %4011 ]
  %4017 = phi i64 [ %.pre131, %4009 ], [ %4001, %4011 ]
  %4018 = phi i64 [ %.pre130, %4009 ], [ %3987, %4011 ]
  %4019 = phi %struct.Memory* [ %4010, %4009 ], [ %3923, %4011 ]
  %4020 = add i64 %4018, -24
  %4021 = add i64 %4017, 3
  store i64 %4021, i64* %3, align 8
  %4022 = inttoptr i64 %4020 to i32*
  %4023 = load i32, i32* %4022, align 4
  %4024 = zext i32 %4023 to i64
  store i64 %4024, i64* %RDI.i2177, align 8
  %4025 = add i64 %4018, -72
  %4026 = add i64 %4017, 6
  store i64 %4026, i64* %3, align 8
  %4027 = inttoptr i64 %4025 to i32*
  store i32 %4016, i32* %4027, align 4
  %4028 = load i32, i32* %EDI.i762, align 4
  %4029 = zext i32 %4028 to i64
  %4030 = load i64, i64* %3, align 8
  store i64 %4029, i64* %RAX.i778, align 8
  %4031 = sext i32 %4028 to i64
  %4032 = lshr i64 %4031, 32
  store i64 %4032, i64* %3788, align 8
  %4033 = load i32, i32* %ESI.i1782, align 4
  %4034 = add i64 %4030, 5
  store i64 %4034, i64* %3, align 8
  %4035 = sext i32 %4033 to i64
  %4036 = shl nuw i64 %4032, 32
  %4037 = or i64 %4036, %4029
  %4038 = sdiv i64 %4037, %4035
  %4039 = shl i64 %4038, 32
  %4040 = ashr exact i64 %4039, 32
  %4041 = icmp eq i64 %4038, %4040
  br i1 %4041, label %4044, label %4042

; <label>:4042:                                   ; preds = %routine_idivl__esi.exit730
  %4043 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4034, %struct.Memory* %4019)
  %.pre133 = load i64, i64* %RAX.i778, align 8
  %.pre134 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:4044:                                   ; preds = %routine_idivl__esi.exit730
  %4045 = srem i64 %4037, %4035
  %4046 = and i64 %4038, 4294967295
  store i64 %4046, i64* %RAX.i778, align 8
  %4047 = and i64 %4045, 4294967295
  store i64 %4047, i64* %RDX.i2114.pre-phi, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %4044, %4042
  %4048 = phi i64 [ %.pre134, %4042 ], [ %4034, %4044 ]
  %4049 = phi i64 [ %.pre133, %4042 ], [ %4046, %4044 ]
  %4050 = phi %struct.Memory* [ %4043, %4042 ], [ %4019, %4044 ]
  %4051 = trunc i64 %4049 to i32
  %4052 = shl i32 %4051, 1
  %4053 = icmp slt i32 %4051, 0
  %4054 = icmp slt i32 %4052, 0
  %4055 = xor i1 %4053, %4054
  %4056 = zext i32 %4052 to i64
  store i64 %4056, i64* %RAX.i778, align 8
  %.lobit47 = lshr i32 %4051, 31
  %4057 = trunc i32 %.lobit47 to i8
  store i8 %4057, i8* %14, align 1
  %4058 = and i32 %4052, 254
  %4059 = tail call i32 @llvm.ctpop.i32(i32 %4058)
  %4060 = trunc i32 %4059 to i8
  %4061 = and i8 %4060, 1
  %4062 = xor i8 %4061, 1
  store i8 %4062, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4063 = icmp eq i32 %4052, 0
  %4064 = zext i1 %4063 to i8
  store i8 %4064, i8* %30, align 1
  %4065 = lshr i32 %4051, 30
  %4066 = trunc i32 %4065 to i8
  %4067 = and i8 %4066, 1
  store i8 %4067, i8* %33, align 1
  %4068 = zext i1 %4055 to i8
  store i8 %4068, i8* %39, align 1
  %4069 = load i64, i64* %RBP.i, align 8
  %4070 = add i64 %4069, -72
  %4071 = add i64 %4048, 5
  store i64 %4071, i64* %3, align 8
  %4072 = inttoptr i64 %4070 to i32*
  %4073 = load i32, i32* %4072, align 4
  %4074 = add i32 %4052, %4073
  %4075 = zext i32 %4074 to i64
  store i64 %4075, i64* %RDI.i2177, align 8
  %4076 = icmp ult i32 %4074, %4073
  %4077 = icmp ult i32 %4074, %4052
  %4078 = or i1 %4076, %4077
  %4079 = zext i1 %4078 to i8
  store i8 %4079, i8* %14, align 1
  %4080 = and i32 %4074, 255
  %4081 = tail call i32 @llvm.ctpop.i32(i32 %4080)
  %4082 = trunc i32 %4081 to i8
  %4083 = and i8 %4082, 1
  %4084 = xor i8 %4083, 1
  store i8 %4084, i8* %21, align 1
  %4085 = xor i32 %4052, %4073
  %4086 = xor i32 %4085, %4074
  %4087 = lshr i32 %4086, 4
  %4088 = trunc i32 %4087 to i8
  %4089 = and i8 %4088, 1
  store i8 %4089, i8* %27, align 1
  %4090 = icmp eq i32 %4074, 0
  %4091 = zext i1 %4090 to i8
  store i8 %4091, i8* %30, align 1
  %4092 = lshr i32 %4074, 31
  %4093 = trunc i32 %4092 to i8
  store i8 %4093, i8* %33, align 1
  %4094 = lshr i32 %4073, 31
  %4095 = lshr i32 %4051, 30
  %4096 = and i32 %4095, 1
  %4097 = xor i32 %4092, %4094
  %4098 = xor i32 %4092, %4096
  %4099 = add nuw nsw i32 %4097, %4098
  %4100 = icmp eq i32 %4099, 2
  %4101 = zext i1 %4100 to i8
  store i8 %4101, i8* %39, align 1
  %4102 = sext i32 %4074 to i64
  store i64 %4102, i64* %R8.i749, align 8
  %4103 = load i64, i64* %RCX.i2230, align 8
  %4104 = shl nsw i64 %4102, 2
  %4105 = add nsw i64 %4104, 488
  %4106 = add i64 %4105, %4103
  %4107 = add i64 %4048, 18
  store i64 %4107, i64* %3, align 8
  %4108 = inttoptr i64 %4106 to i32*
  %4109 = load i32, i32* %4108, align 4
  %4110 = zext i32 %4109 to i64
  store i64 %4110, i64* %RAX.i778, align 8
  %4111 = add i64 %4069, -48
  %4112 = add i64 %4048, 21
  store i64 %4112, i64* %3, align 8
  %4113 = inttoptr i64 %4111 to i32*
  store i32 %4109, i32* %4113, align 4
  %4114 = load i64, i64* %RBP.i, align 8
  %4115 = add i64 %4114, -48
  %4116 = load i64, i64* %3, align 8
  %4117 = add i64 %4116, 4
  store i64 %4117, i64* %3, align 8
  %4118 = inttoptr i64 %4115 to i32*
  %4119 = load i32, i32* %4118, align 4
  %4120 = add i32 %4119, -1
  %4121 = icmp eq i32 %4119, 0
  %4122 = zext i1 %4121 to i8
  store i8 %4122, i8* %14, align 1
  %4123 = and i32 %4120, 255
  %4124 = tail call i32 @llvm.ctpop.i32(i32 %4123)
  %4125 = trunc i32 %4124 to i8
  %4126 = and i8 %4125, 1
  %4127 = xor i8 %4126, 1
  store i8 %4127, i8* %21, align 1
  %4128 = xor i32 %4120, %4119
  %4129 = lshr i32 %4128, 4
  %4130 = trunc i32 %4129 to i8
  %4131 = and i8 %4130, 1
  store i8 %4131, i8* %27, align 1
  %4132 = icmp eq i32 %4120, 0
  %4133 = zext i1 %4132 to i8
  store i8 %4133, i8* %30, align 1
  %4134 = lshr i32 %4120, 31
  %4135 = trunc i32 %4134 to i8
  store i8 %4135, i8* %33, align 1
  %4136 = lshr i32 %4119, 31
  %4137 = xor i32 %4134, %4136
  %4138 = add nuw nsw i32 %4137, %4136
  %4139 = icmp eq i32 %4138, 2
  %4140 = zext i1 %4139 to i8
  store i8 %4140, i8* %39, align 1
  %.v186 = select i1 %4132, i64 323, i64 10
  %4141 = add i64 %4116, %.v186
  %4142 = add i64 %4141, 8
  store i64 %4142, i64* %3, align 8
  br i1 %4132, label %block_.L_430d9a, label %block_430c61

block_430c61:                                     ; preds = %routine_idivl__esi.exit
  %4143 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %4143, i64* %RAX.i778, align 8
  %4144 = add i64 %4143, 3240
  %4145 = add i64 %4141, 15
  store i64 %4145, i64* %3, align 8
  %4146 = inttoptr i64 %4144 to i64*
  %4147 = load i64, i64* %4146, align 8
  store i64 %4147, i64* %RAX.i778, align 8
  %4148 = add i64 %4114, -20
  %4149 = add i64 %4141, 19
  store i64 %4149, i64* %3, align 8
  %4150 = inttoptr i64 %4148 to i32*
  %4151 = load i32, i32* %4150, align 4
  %4152 = sext i32 %4151 to i64
  store i64 %4152, i64* %RCX.i2230, align 8
  %4153 = shl nsw i64 %4152, 3
  %4154 = add i64 %4153, %4147
  %4155 = add i64 %4141, 23
  store i64 %4155, i64* %3, align 8
  %4156 = inttoptr i64 %4154 to i64*
  %4157 = load i64, i64* %4156, align 8
  store i64 %4157, i64* %RAX.i778, align 8
  %4158 = add i64 %4114, -24
  %4159 = add i64 %4141, 27
  store i64 %4159, i64* %3, align 8
  %4160 = inttoptr i64 %4158 to i32*
  %4161 = load i32, i32* %4160, align 4
  %4162 = sext i32 %4161 to i64
  store i64 %4162, i64* %RCX.i2230, align 8
  %4163 = shl nsw i64 %4162, 3
  %4164 = add i64 %4163, %4157
  %4165 = add i64 %4141, 31
  store i64 %4165, i64* %3, align 8
  %4166 = inttoptr i64 %4164 to i64*
  %4167 = load i64, i64* %4166, align 8
  store i64 %4167, i64* %RAX.i778, align 8
  %4168 = add i64 %4141, 34
  store i64 %4168, i64* %3, align 8
  %4169 = inttoptr i64 %4167 to i64*
  %4170 = load i64, i64* %4169, align 8
  store i64 %4170, i64* %RAX.i778, align 8
  %4171 = add i64 %4143, 3264
  store i64 %4171, i64* %RCX.i2230, align 8
  %4172 = icmp ugt i64 %4143, -3265
  %4173 = zext i1 %4172 to i8
  store i8 %4173, i8* %14, align 1
  %4174 = trunc i64 %4171 to i32
  %4175 = and i32 %4174, 255
  %4176 = tail call i32 @llvm.ctpop.i32(i32 %4175)
  %4177 = trunc i32 %4176 to i8
  %4178 = and i8 %4177, 1
  %4179 = xor i8 %4178, 1
  store i8 %4179, i8* %21, align 1
  %4180 = xor i64 %4171, %4143
  %4181 = lshr i64 %4180, 4
  %4182 = trunc i64 %4181 to i8
  %4183 = and i8 %4182, 1
  store i8 %4183, i8* %27, align 1
  %4184 = icmp eq i64 %4171, 0
  %4185 = zext i1 %4184 to i8
  store i8 %4185, i8* %30, align 1
  %4186 = lshr i64 %4171, 63
  %4187 = trunc i64 %4186 to i8
  store i8 %4187, i8* %33, align 1
  %4188 = lshr i64 %4143, 63
  %4189 = xor i64 %4186, %4188
  %4190 = add nuw nsw i64 %4189, %4186
  %4191 = icmp eq i64 %4190, 2
  %4192 = zext i1 %4191 to i8
  store i8 %4192, i8* %39, align 1
  %4193 = add i64 %4141, 53
  store i64 %4193, i64* %3, align 8
  %4194 = load i32, i32* %4160, align 4
  %4195 = sext i32 %4194 to i64
  %4196 = shl nsw i64 %4195, 3
  store i64 %4196, i64* %RDX.i2114.pre-phi, align 8
  %4197 = add i64 %4196, %4171
  store i64 %4197, i64* %RCX.i2230, align 8
  %4198 = icmp ult i64 %4197, %4171
  %4199 = icmp ult i64 %4197, %4196
  %4200 = or i1 %4198, %4199
  %4201 = zext i1 %4200 to i8
  store i8 %4201, i8* %14, align 1
  %4202 = trunc i64 %4197 to i32
  %4203 = and i32 %4202, 255
  %4204 = tail call i32 @llvm.ctpop.i32(i32 %4203)
  %4205 = trunc i32 %4204 to i8
  %4206 = and i8 %4205, 1
  %4207 = xor i8 %4206, 1
  store i8 %4207, i8* %21, align 1
  %4208 = xor i64 %4196, %4171
  %4209 = xor i64 %4208, %4197
  %4210 = lshr i64 %4209, 4
  %4211 = trunc i64 %4210 to i8
  %4212 = and i8 %4211, 1
  store i8 %4212, i8* %27, align 1
  %4213 = icmp eq i64 %4197, 0
  %4214 = zext i1 %4213 to i8
  store i8 %4214, i8* %30, align 1
  %4215 = lshr i64 %4197, 63
  %4216 = trunc i64 %4215 to i8
  store i8 %4216, i8* %33, align 1
  %4217 = lshr i64 %4195, 60
  %4218 = and i64 %4217, 1
  %4219 = xor i64 %4215, %4186
  %4220 = xor i64 %4215, %4218
  %4221 = add nuw nsw i64 %4219, %4220
  %4222 = icmp eq i64 %4221, 2
  %4223 = zext i1 %4222 to i8
  store i8 %4223, i8* %39, align 1
  %4224 = load i64, i64* %RBP.i, align 8
  %4225 = add i64 %4224, -20
  %4226 = add i64 %4141, 64
  store i64 %4226, i64* %3, align 8
  %4227 = inttoptr i64 %4225 to i32*
  %4228 = load i32, i32* %4227, align 4
  %4229 = sext i32 %4228 to i64
  store i64 %4229, i64* %RDX.i2114.pre-phi, align 8
  %4230 = shl nsw i64 %4229, 1
  %4231 = add i64 %4230, %4197
  %4232 = add i64 %4141, 69
  store i64 %4232, i64* %3, align 8
  %4233 = inttoptr i64 %4231 to i16*
  %4234 = load i16, i16* %4233, align 2
  %4235 = sext i16 %4234 to i64
  store i64 %4235, i64* %RCX.i2230, align 8
  %4236 = load i64, i64* %RAX.i778, align 8
  %4237 = shl nsw i64 %4235, 3
  %4238 = add i64 %4237, %4236
  %4239 = add i64 %4141, 73
  store i64 %4239, i64* %3, align 8
  %4240 = inttoptr i64 %4238 to i64*
  %4241 = load i64, i64* %4240, align 8
  store i64 %4241, i64* %RAX.i778, align 8
  %4242 = add i64 %4224, -44
  %4243 = add i64 %4141, 77
  store i64 %4243, i64* %3, align 8
  %4244 = inttoptr i64 %4242 to i32*
  %4245 = load i32, i32* %4244, align 4
  %4246 = sext i32 %4245 to i64
  store i64 %4246, i64* %RCX.i2230, align 8
  %4247 = shl nsw i64 %4246, 3
  %4248 = add i64 %4247, %4241
  %4249 = add i64 %4141, 81
  store i64 %4249, i64* %3, align 8
  %4250 = inttoptr i64 %4248 to i64*
  %4251 = load i64, i64* %4250, align 8
  store i64 %4251, i64* %RAX.i778, align 8
  %4252 = add i64 %4141, 84
  store i64 %4252, i64* %3, align 8
  %4253 = inttoptr i64 %4251 to i16*
  %4254 = load i16, i16* %4253, align 2
  store i16 %4254, i16* %SI.i1476, align 2
  %4255 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %4255, i64* %RAX.i778, align 8
  %4256 = add i64 %4255, 6504
  %4257 = add i64 %4141, 99
  store i64 %4257, i64* %3, align 8
  %4258 = inttoptr i64 %4256 to i64*
  %4259 = load i64, i64* %4258, align 8
  store i64 %4259, i64* %RAX.i778, align 8
  %4260 = add i64 %4141, 102
  store i64 %4260, i64* %3, align 8
  %4261 = inttoptr i64 %4259 to i64*
  %4262 = load i64, i64* %4261, align 8
  store i64 %4262, i64* %RAX.i778, align 8
  %4263 = add i64 %4141, 105
  store i64 %4263, i64* %3, align 8
  %4264 = load i32, i32* %4227, align 4
  %4265 = zext i32 %4264 to i64
  store i64 %4265, i64* %RDI.i2177, align 8
  %4266 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4266, i64* %RCX.i2230, align 8
  %4267 = add i64 %4266, 144
  %4268 = add i64 %4141, 119
  store i64 %4268, i64* %3, align 8
  %4269 = inttoptr i64 %4267 to i32*
  %4270 = load i32, i32* %4269, align 4
  %4271 = add i32 %4270, %4264
  %4272 = zext i32 %4271 to i64
  store i64 %4272, i64* %RDI.i2177, align 8
  %4273 = icmp ult i32 %4271, %4264
  %4274 = icmp ult i32 %4271, %4270
  %4275 = or i1 %4273, %4274
  %4276 = zext i1 %4275 to i8
  store i8 %4276, i8* %14, align 1
  %4277 = and i32 %4271, 255
  %4278 = tail call i32 @llvm.ctpop.i32(i32 %4277)
  %4279 = trunc i32 %4278 to i8
  %4280 = and i8 %4279, 1
  %4281 = xor i8 %4280, 1
  store i8 %4281, i8* %21, align 1
  %4282 = xor i32 %4270, %4264
  %4283 = xor i32 %4282, %4271
  %4284 = lshr i32 %4283, 4
  %4285 = trunc i32 %4284 to i8
  %4286 = and i8 %4285, 1
  store i8 %4286, i8* %27, align 1
  %4287 = icmp eq i32 %4271, 0
  %4288 = zext i1 %4287 to i8
  store i8 %4288, i8* %30, align 1
  %4289 = lshr i32 %4271, 31
  %4290 = trunc i32 %4289 to i8
  store i8 %4290, i8* %33, align 1
  %4291 = lshr i32 %4264, 31
  %4292 = lshr i32 %4270, 31
  %4293 = xor i32 %4289, %4291
  %4294 = xor i32 %4289, %4292
  %4295 = add nuw nsw i32 %4293, %4294
  %4296 = icmp eq i32 %4295, 2
  %4297 = zext i1 %4296 to i8
  store i8 %4297, i8* %39, align 1
  %4298 = sext i32 %4271 to i64
  store i64 %4298, i64* %RCX.i2230, align 8
  %4299 = shl nsw i64 %4298, 3
  %4300 = add i64 %4262, %4299
  %4301 = add i64 %4141, 126
  store i64 %4301, i64* %3, align 8
  %4302 = inttoptr i64 %4300 to i64*
  %4303 = load i64, i64* %4302, align 8
  store i64 %4303, i64* %RAX.i778, align 8
  %4304 = load i64, i64* %RBP.i, align 8
  %4305 = add i64 %4304, -24
  %4306 = add i64 %4141, 129
  store i64 %4306, i64* %3, align 8
  %4307 = inttoptr i64 %4305 to i32*
  %4308 = load i32, i32* %4307, align 4
  %4309 = zext i32 %4308 to i64
  store i64 %4309, i64* %RDI.i2177, align 8
  store i64 %4266, i64* %RCX.i2230, align 8
  %4310 = add i64 %4266, 148
  %4311 = add i64 %4141, 143
  store i64 %4311, i64* %3, align 8
  %4312 = inttoptr i64 %4310 to i32*
  %4313 = load i32, i32* %4312, align 4
  %4314 = add i32 %4313, %4308
  %4315 = zext i32 %4314 to i64
  store i64 %4315, i64* %RDI.i2177, align 8
  %4316 = icmp ult i32 %4314, %4308
  %4317 = icmp ult i32 %4314, %4313
  %4318 = or i1 %4316, %4317
  %4319 = zext i1 %4318 to i8
  store i8 %4319, i8* %14, align 1
  %4320 = and i32 %4314, 255
  %4321 = tail call i32 @llvm.ctpop.i32(i32 %4320)
  %4322 = trunc i32 %4321 to i8
  %4323 = and i8 %4322, 1
  %4324 = xor i8 %4323, 1
  store i8 %4324, i8* %21, align 1
  %4325 = xor i32 %4313, %4308
  %4326 = xor i32 %4325, %4314
  %4327 = lshr i32 %4326, 4
  %4328 = trunc i32 %4327 to i8
  %4329 = and i8 %4328, 1
  store i8 %4329, i8* %27, align 1
  %4330 = icmp eq i32 %4314, 0
  %4331 = zext i1 %4330 to i8
  store i8 %4331, i8* %30, align 1
  %4332 = lshr i32 %4314, 31
  %4333 = trunc i32 %4332 to i8
  store i8 %4333, i8* %33, align 1
  %4334 = lshr i32 %4308, 31
  %4335 = lshr i32 %4313, 31
  %4336 = xor i32 %4332, %4334
  %4337 = xor i32 %4332, %4335
  %4338 = add nuw nsw i32 %4336, %4337
  %4339 = icmp eq i32 %4338, 2
  %4340 = zext i1 %4339 to i8
  store i8 %4340, i8* %39, align 1
  %4341 = sext i32 %4314 to i64
  store i64 %4341, i64* %RCX.i2230, align 8
  %4342 = shl nsw i64 %4341, 3
  %4343 = add i64 %4303, %4342
  %4344 = add i64 %4141, 150
  store i64 %4344, i64* %3, align 8
  %4345 = inttoptr i64 %4343 to i16**
  %4346 = load i16*, i16** %4345, align 8
  %4347 = load i16, i16* %SI.i1476, align 2
  %4348 = add i64 %4141, 153
  store i64 %4348, i64* %3, align 8
  store i16 %4347, i16* %4346, align 2
  %4349 = load i64, i64* %3, align 8
  %4350 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %4350, i64* %RAX.i778, align 8
  %4351 = add i64 %4350, 3240
  %4352 = add i64 %4349, 15
  store i64 %4352, i64* %3, align 8
  %4353 = inttoptr i64 %4351 to i64*
  %4354 = load i64, i64* %4353, align 8
  store i64 %4354, i64* %RAX.i778, align 8
  %4355 = load i64, i64* %RBP.i, align 8
  %4356 = add i64 %4355, -20
  %4357 = add i64 %4349, 19
  store i64 %4357, i64* %3, align 8
  %4358 = inttoptr i64 %4356 to i32*
  %4359 = load i32, i32* %4358, align 4
  %4360 = sext i32 %4359 to i64
  store i64 %4360, i64* %RCX.i2230, align 8
  %4361 = shl nsw i64 %4360, 3
  %4362 = add i64 %4361, %4354
  %4363 = add i64 %4349, 23
  store i64 %4363, i64* %3, align 8
  %4364 = inttoptr i64 %4362 to i64*
  %4365 = load i64, i64* %4364, align 8
  store i64 %4365, i64* %RAX.i778, align 8
  %4366 = add i64 %4355, -24
  %4367 = add i64 %4349, 27
  store i64 %4367, i64* %3, align 8
  %4368 = inttoptr i64 %4366 to i32*
  %4369 = load i32, i32* %4368, align 4
  %4370 = sext i32 %4369 to i64
  store i64 %4370, i64* %RCX.i2230, align 8
  %4371 = shl nsw i64 %4370, 3
  %4372 = add i64 %4371, %4365
  %4373 = add i64 %4349, 31
  store i64 %4373, i64* %3, align 8
  %4374 = inttoptr i64 %4372 to i64*
  %4375 = load i64, i64* %4374, align 8
  store i64 %4375, i64* %RAX.i778, align 8
  %4376 = add i64 %4349, 34
  store i64 %4376, i64* %3, align 8
  %4377 = inttoptr i64 %4375 to i64*
  %4378 = load i64, i64* %4377, align 8
  store i64 %4378, i64* %RAX.i778, align 8
  %4379 = add i64 %4350, 3264
  store i64 %4379, i64* %RCX.i2230, align 8
  %4380 = icmp ugt i64 %4350, -3265
  %4381 = zext i1 %4380 to i8
  store i8 %4381, i8* %14, align 1
  %4382 = trunc i64 %4379 to i32
  %4383 = and i32 %4382, 255
  %4384 = tail call i32 @llvm.ctpop.i32(i32 %4383)
  %4385 = trunc i32 %4384 to i8
  %4386 = and i8 %4385, 1
  %4387 = xor i8 %4386, 1
  store i8 %4387, i8* %21, align 1
  %4388 = xor i64 %4379, %4350
  %4389 = lshr i64 %4388, 4
  %4390 = trunc i64 %4389 to i8
  %4391 = and i8 %4390, 1
  store i8 %4391, i8* %27, align 1
  %4392 = icmp eq i64 %4379, 0
  %4393 = zext i1 %4392 to i8
  store i8 %4393, i8* %30, align 1
  %4394 = lshr i64 %4379, 63
  %4395 = trunc i64 %4394 to i8
  store i8 %4395, i8* %33, align 1
  %4396 = lshr i64 %4350, 63
  %4397 = xor i64 %4394, %4396
  %4398 = add nuw nsw i64 %4397, %4394
  %4399 = icmp eq i64 %4398, 2
  %4400 = zext i1 %4399 to i8
  store i8 %4400, i8* %39, align 1
  %4401 = add i64 %4349, 53
  store i64 %4401, i64* %3, align 8
  %4402 = load i32, i32* %4368, align 4
  %4403 = sext i32 %4402 to i64
  %4404 = shl nsw i64 %4403, 3
  store i64 %4404, i64* %RDX.i2114.pre-phi, align 8
  %4405 = add i64 %4404, %4379
  store i64 %4405, i64* %RCX.i2230, align 8
  %4406 = icmp ult i64 %4405, %4379
  %4407 = icmp ult i64 %4405, %4404
  %4408 = or i1 %4406, %4407
  %4409 = zext i1 %4408 to i8
  store i8 %4409, i8* %14, align 1
  %4410 = trunc i64 %4405 to i32
  %4411 = and i32 %4410, 255
  %4412 = tail call i32 @llvm.ctpop.i32(i32 %4411)
  %4413 = trunc i32 %4412 to i8
  %4414 = and i8 %4413, 1
  %4415 = xor i8 %4414, 1
  store i8 %4415, i8* %21, align 1
  %4416 = xor i64 %4404, %4379
  %4417 = xor i64 %4416, %4405
  %4418 = lshr i64 %4417, 4
  %4419 = trunc i64 %4418 to i8
  %4420 = and i8 %4419, 1
  store i8 %4420, i8* %27, align 1
  %4421 = icmp eq i64 %4405, 0
  %4422 = zext i1 %4421 to i8
  store i8 %4422, i8* %30, align 1
  %4423 = lshr i64 %4405, 63
  %4424 = trunc i64 %4423 to i8
  store i8 %4424, i8* %33, align 1
  %4425 = lshr i64 %4403, 60
  %4426 = and i64 %4425, 1
  %4427 = xor i64 %4423, %4394
  %4428 = xor i64 %4423, %4426
  %4429 = add nuw nsw i64 %4427, %4428
  %4430 = icmp eq i64 %4429, 2
  %4431 = zext i1 %4430 to i8
  store i8 %4431, i8* %39, align 1
  %4432 = load i64, i64* %RBP.i, align 8
  %4433 = add i64 %4432, -20
  %4434 = add i64 %4349, 64
  store i64 %4434, i64* %3, align 8
  %4435 = inttoptr i64 %4433 to i32*
  %4436 = load i32, i32* %4435, align 4
  %4437 = sext i32 %4436 to i64
  store i64 %4437, i64* %RDX.i2114.pre-phi, align 8
  %4438 = shl nsw i64 %4437, 1
  %4439 = add i64 %4438, %4405
  %4440 = add i64 %4349, 69
  store i64 %4440, i64* %3, align 8
  %4441 = inttoptr i64 %4439 to i16*
  %4442 = load i16, i16* %4441, align 2
  %4443 = sext i16 %4442 to i64
  store i64 %4443, i64* %RCX.i2230, align 8
  %4444 = load i64, i64* %RAX.i778, align 8
  %4445 = shl nsw i64 %4443, 3
  %4446 = add i64 %4445, %4444
  %4447 = add i64 %4349, 73
  store i64 %4447, i64* %3, align 8
  %4448 = inttoptr i64 %4446 to i64*
  %4449 = load i64, i64* %4448, align 8
  store i64 %4449, i64* %RAX.i778, align 8
  %4450 = add i64 %4432, -44
  %4451 = add i64 %4349, 77
  store i64 %4451, i64* %3, align 8
  %4452 = inttoptr i64 %4450 to i32*
  %4453 = load i32, i32* %4452, align 4
  %4454 = sext i32 %4453 to i64
  store i64 %4454, i64* %RCX.i2230, align 8
  %4455 = shl nsw i64 %4454, 3
  %4456 = add i64 %4455, %4449
  %4457 = add i64 %4349, 81
  store i64 %4457, i64* %3, align 8
  %4458 = inttoptr i64 %4456 to i64*
  %4459 = load i64, i64* %4458, align 8
  store i64 %4459, i64* %RAX.i778, align 8
  %4460 = add i64 %4459, 2
  %4461 = add i64 %4349, 85
  store i64 %4461, i64* %3, align 8
  %4462 = inttoptr i64 %4460 to i16*
  %4463 = load i16, i16* %4462, align 2
  store i16 %4463, i16* %SI.i1476, align 2
  %4464 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %4464, i64* %RAX.i778, align 8
  %4465 = add i64 %4464, 6504
  %4466 = add i64 %4349, 100
  store i64 %4466, i64* %3, align 8
  %4467 = inttoptr i64 %4465 to i64*
  %4468 = load i64, i64* %4467, align 8
  store i64 %4468, i64* %RAX.i778, align 8
  %4469 = add i64 %4349, 103
  store i64 %4469, i64* %3, align 8
  %4470 = inttoptr i64 %4468 to i64*
  %4471 = load i64, i64* %4470, align 8
  store i64 %4471, i64* %RAX.i778, align 8
  %4472 = add i64 %4349, 106
  store i64 %4472, i64* %3, align 8
  %4473 = load i32, i32* %4435, align 4
  %4474 = zext i32 %4473 to i64
  store i64 %4474, i64* %RDI.i2177, align 8
  %4475 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4475, i64* %RCX.i2230, align 8
  %4476 = add i64 %4475, 144
  %4477 = add i64 %4349, 120
  store i64 %4477, i64* %3, align 8
  %4478 = inttoptr i64 %4476 to i32*
  %4479 = load i32, i32* %4478, align 4
  %4480 = add i32 %4479, %4473
  %4481 = zext i32 %4480 to i64
  store i64 %4481, i64* %RDI.i2177, align 8
  %4482 = icmp ult i32 %4480, %4473
  %4483 = icmp ult i32 %4480, %4479
  %4484 = or i1 %4482, %4483
  %4485 = zext i1 %4484 to i8
  store i8 %4485, i8* %14, align 1
  %4486 = and i32 %4480, 255
  %4487 = tail call i32 @llvm.ctpop.i32(i32 %4486)
  %4488 = trunc i32 %4487 to i8
  %4489 = and i8 %4488, 1
  %4490 = xor i8 %4489, 1
  store i8 %4490, i8* %21, align 1
  %4491 = xor i32 %4479, %4473
  %4492 = xor i32 %4491, %4480
  %4493 = lshr i32 %4492, 4
  %4494 = trunc i32 %4493 to i8
  %4495 = and i8 %4494, 1
  store i8 %4495, i8* %27, align 1
  %4496 = icmp eq i32 %4480, 0
  %4497 = zext i1 %4496 to i8
  store i8 %4497, i8* %30, align 1
  %4498 = lshr i32 %4480, 31
  %4499 = trunc i32 %4498 to i8
  store i8 %4499, i8* %33, align 1
  %4500 = lshr i32 %4473, 31
  %4501 = lshr i32 %4479, 31
  %4502 = xor i32 %4498, %4500
  %4503 = xor i32 %4498, %4501
  %4504 = add nuw nsw i32 %4502, %4503
  %4505 = icmp eq i32 %4504, 2
  %4506 = zext i1 %4505 to i8
  store i8 %4506, i8* %39, align 1
  %4507 = sext i32 %4480 to i64
  store i64 %4507, i64* %RCX.i2230, align 8
  %4508 = shl nsw i64 %4507, 3
  %4509 = add i64 %4471, %4508
  %4510 = add i64 %4349, 127
  store i64 %4510, i64* %3, align 8
  %4511 = inttoptr i64 %4509 to i64*
  %4512 = load i64, i64* %4511, align 8
  store i64 %4512, i64* %RAX.i778, align 8
  %4513 = load i64, i64* %RBP.i, align 8
  %4514 = add i64 %4513, -24
  %4515 = add i64 %4349, 130
  store i64 %4515, i64* %3, align 8
  %4516 = inttoptr i64 %4514 to i32*
  %4517 = load i32, i32* %4516, align 4
  %4518 = zext i32 %4517 to i64
  store i64 %4518, i64* %RDI.i2177, align 8
  store i64 %4475, i64* %RCX.i2230, align 8
  %4519 = add i64 %4475, 148
  %4520 = add i64 %4349, 144
  store i64 %4520, i64* %3, align 8
  %4521 = inttoptr i64 %4519 to i32*
  %4522 = load i32, i32* %4521, align 4
  %4523 = add i32 %4522, %4517
  %4524 = zext i32 %4523 to i64
  store i64 %4524, i64* %RDI.i2177, align 8
  %4525 = icmp ult i32 %4523, %4517
  %4526 = icmp ult i32 %4523, %4522
  %4527 = or i1 %4525, %4526
  %4528 = zext i1 %4527 to i8
  store i8 %4528, i8* %14, align 1
  %4529 = and i32 %4523, 255
  %4530 = tail call i32 @llvm.ctpop.i32(i32 %4529)
  %4531 = trunc i32 %4530 to i8
  %4532 = and i8 %4531, 1
  %4533 = xor i8 %4532, 1
  store i8 %4533, i8* %21, align 1
  %4534 = xor i32 %4522, %4517
  %4535 = xor i32 %4534, %4523
  %4536 = lshr i32 %4535, 4
  %4537 = trunc i32 %4536 to i8
  %4538 = and i8 %4537, 1
  store i8 %4538, i8* %27, align 1
  %4539 = icmp eq i32 %4523, 0
  %4540 = zext i1 %4539 to i8
  store i8 %4540, i8* %30, align 1
  %4541 = lshr i32 %4523, 31
  %4542 = trunc i32 %4541 to i8
  store i8 %4542, i8* %33, align 1
  %4543 = lshr i32 %4517, 31
  %4544 = lshr i32 %4522, 31
  %4545 = xor i32 %4541, %4543
  %4546 = xor i32 %4541, %4544
  %4547 = add nuw nsw i32 %4545, %4546
  %4548 = icmp eq i32 %4547, 2
  %4549 = zext i1 %4548 to i8
  store i8 %4549, i8* %39, align 1
  %4550 = sext i32 %4523 to i64
  store i64 %4550, i64* %RCX.i2230, align 8
  %4551 = shl nsw i64 %4550, 3
  %4552 = add i64 %4512, %4551
  %4553 = add i64 %4349, 151
  store i64 %4553, i64* %3, align 8
  %4554 = inttoptr i64 %4552 to i64*
  %4555 = load i64, i64* %4554, align 8
  store i64 %4555, i64* %RAX.i778, align 8
  %4556 = add i64 %4555, 2
  %4557 = load i16, i16* %SI.i1476, align 2
  %4558 = add i64 %4349, 155
  store i64 %4558, i64* %3, align 8
  %4559 = inttoptr i64 %4556 to i16*
  store i16 %4557, i16* %4559, align 2
  %4560 = load i64, i64* %3, align 8
  %4561 = add i64 %4560, 148
  store i64 %4561, i64* %3, align 8
  br label %block_.L_430e29

block_.L_430d9a:                                  ; preds = %routine_idivl__esi.exit
  %4562 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %4562, i64* %RAX.i778, align 8
  %4563 = add i64 %4562, 6504
  %4564 = add i64 %4141, 15
  store i64 %4564, i64* %3, align 8
  %4565 = inttoptr i64 %4563 to i64*
  %4566 = load i64, i64* %4565, align 8
  store i64 %4566, i64* %RAX.i778, align 8
  %4567 = add i64 %4141, 18
  store i64 %4567, i64* %3, align 8
  %4568 = inttoptr i64 %4566 to i64*
  %4569 = load i64, i64* %4568, align 8
  store i64 %4569, i64* %RAX.i778, align 8
  %4570 = add i64 %4114, -20
  %4571 = add i64 %4141, 21
  store i64 %4571, i64* %3, align 8
  %4572 = inttoptr i64 %4570 to i32*
  %4573 = load i32, i32* %4572, align 4
  %4574 = zext i32 %4573 to i64
  store i64 %4574, i64* %RCX.i2230, align 8
  %4575 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4575, i64* %RDX.i2114.pre-phi, align 8
  %4576 = add i64 %4575, 144
  %4577 = add i64 %4141, 35
  store i64 %4577, i64* %3, align 8
  %4578 = inttoptr i64 %4576 to i32*
  %4579 = load i32, i32* %4578, align 4
  %4580 = add i32 %4579, %4573
  %4581 = zext i32 %4580 to i64
  store i64 %4581, i64* %RCX.i2230, align 8
  %4582 = icmp ult i32 %4580, %4573
  %4583 = icmp ult i32 %4580, %4579
  %4584 = or i1 %4582, %4583
  %4585 = zext i1 %4584 to i8
  store i8 %4585, i8* %14, align 1
  %4586 = and i32 %4580, 255
  %4587 = tail call i32 @llvm.ctpop.i32(i32 %4586)
  %4588 = trunc i32 %4587 to i8
  %4589 = and i8 %4588, 1
  %4590 = xor i8 %4589, 1
  store i8 %4590, i8* %21, align 1
  %4591 = xor i32 %4579, %4573
  %4592 = xor i32 %4591, %4580
  %4593 = lshr i32 %4592, 4
  %4594 = trunc i32 %4593 to i8
  %4595 = and i8 %4594, 1
  store i8 %4595, i8* %27, align 1
  %4596 = icmp eq i32 %4580, 0
  %4597 = zext i1 %4596 to i8
  store i8 %4597, i8* %30, align 1
  %4598 = lshr i32 %4580, 31
  %4599 = trunc i32 %4598 to i8
  store i8 %4599, i8* %33, align 1
  %4600 = lshr i32 %4573, 31
  %4601 = lshr i32 %4579, 31
  %4602 = xor i32 %4598, %4600
  %4603 = xor i32 %4598, %4601
  %4604 = add nuw nsw i32 %4602, %4603
  %4605 = icmp eq i32 %4604, 2
  %4606 = zext i1 %4605 to i8
  store i8 %4606, i8* %39, align 1
  %4607 = sext i32 %4580 to i64
  store i64 %4607, i64* %RDX.i2114.pre-phi, align 8
  %4608 = shl nsw i64 %4607, 3
  %4609 = add i64 %4569, %4608
  %4610 = add i64 %4141, 42
  store i64 %4610, i64* %3, align 8
  %4611 = inttoptr i64 %4609 to i64*
  %4612 = load i64, i64* %4611, align 8
  store i64 %4612, i64* %RAX.i778, align 8
  %4613 = add i64 %4114, -24
  %4614 = add i64 %4141, 45
  store i64 %4614, i64* %3, align 8
  %4615 = inttoptr i64 %4613 to i32*
  %4616 = load i32, i32* %4615, align 4
  %4617 = zext i32 %4616 to i64
  store i64 %4617, i64* %RCX.i2230, align 8
  store i64 %4575, i64* %RDX.i2114.pre-phi, align 8
  %4618 = add i64 %4575, 148
  %4619 = add i64 %4141, 59
  store i64 %4619, i64* %3, align 8
  %4620 = inttoptr i64 %4618 to i32*
  %4621 = load i32, i32* %4620, align 4
  %4622 = add i32 %4621, %4616
  %4623 = zext i32 %4622 to i64
  store i64 %4623, i64* %RCX.i2230, align 8
  %4624 = icmp ult i32 %4622, %4616
  %4625 = icmp ult i32 %4622, %4621
  %4626 = or i1 %4624, %4625
  %4627 = zext i1 %4626 to i8
  store i8 %4627, i8* %14, align 1
  %4628 = and i32 %4622, 255
  %4629 = tail call i32 @llvm.ctpop.i32(i32 %4628)
  %4630 = trunc i32 %4629 to i8
  %4631 = and i8 %4630, 1
  %4632 = xor i8 %4631, 1
  store i8 %4632, i8* %21, align 1
  %4633 = xor i32 %4621, %4616
  %4634 = xor i32 %4633, %4622
  %4635 = lshr i32 %4634, 4
  %4636 = trunc i32 %4635 to i8
  %4637 = and i8 %4636, 1
  store i8 %4637, i8* %27, align 1
  %4638 = icmp eq i32 %4622, 0
  %4639 = zext i1 %4638 to i8
  store i8 %4639, i8* %30, align 1
  %4640 = lshr i32 %4622, 31
  %4641 = trunc i32 %4640 to i8
  store i8 %4641, i8* %33, align 1
  %4642 = lshr i32 %4616, 31
  %4643 = lshr i32 %4621, 31
  %4644 = xor i32 %4640, %4642
  %4645 = xor i32 %4640, %4643
  %4646 = add nuw nsw i32 %4644, %4645
  %4647 = icmp eq i32 %4646, 2
  %4648 = zext i1 %4647 to i8
  store i8 %4648, i8* %39, align 1
  %4649 = sext i32 %4622 to i64
  store i64 %4649, i64* %RDX.i2114.pre-phi, align 8
  %4650 = shl nsw i64 %4649, 3
  %4651 = add i64 %4612, %4650
  %4652 = add i64 %4141, 66
  store i64 %4652, i64* %3, align 8
  %4653 = inttoptr i64 %4651 to i16**
  %4654 = load i16*, i16** %4653, align 8
  %4655 = add i64 %4141, 71
  store i64 %4655, i64* %3, align 8
  store i16 0, i16* %4654, align 2
  %4656 = load i64, i64* %3, align 8
  %4657 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %4657, i64* %RAX.i778, align 8
  %4658 = add i64 %4657, 6504
  %4659 = add i64 %4656, 15
  store i64 %4659, i64* %3, align 8
  %4660 = inttoptr i64 %4658 to i64*
  %4661 = load i64, i64* %4660, align 8
  store i64 %4661, i64* %RAX.i778, align 8
  %4662 = add i64 %4656, 18
  store i64 %4662, i64* %3, align 8
  %4663 = inttoptr i64 %4661 to i64*
  %4664 = load i64, i64* %4663, align 8
  store i64 %4664, i64* %RAX.i778, align 8
  %4665 = load i64, i64* %RBP.i, align 8
  %4666 = add i64 %4665, -20
  %4667 = add i64 %4656, 21
  store i64 %4667, i64* %3, align 8
  %4668 = inttoptr i64 %4666 to i32*
  %4669 = load i32, i32* %4668, align 4
  %4670 = zext i32 %4669 to i64
  store i64 %4670, i64* %RCX.i2230, align 8
  %4671 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4671, i64* %RDX.i2114.pre-phi, align 8
  %4672 = add i64 %4671, 144
  %4673 = add i64 %4656, 35
  store i64 %4673, i64* %3, align 8
  %4674 = inttoptr i64 %4672 to i32*
  %4675 = load i32, i32* %4674, align 4
  %4676 = add i32 %4675, %4669
  %4677 = zext i32 %4676 to i64
  store i64 %4677, i64* %RCX.i2230, align 8
  %4678 = icmp ult i32 %4676, %4669
  %4679 = icmp ult i32 %4676, %4675
  %4680 = or i1 %4678, %4679
  %4681 = zext i1 %4680 to i8
  store i8 %4681, i8* %14, align 1
  %4682 = and i32 %4676, 255
  %4683 = tail call i32 @llvm.ctpop.i32(i32 %4682)
  %4684 = trunc i32 %4683 to i8
  %4685 = and i8 %4684, 1
  %4686 = xor i8 %4685, 1
  store i8 %4686, i8* %21, align 1
  %4687 = xor i32 %4675, %4669
  %4688 = xor i32 %4687, %4676
  %4689 = lshr i32 %4688, 4
  %4690 = trunc i32 %4689 to i8
  %4691 = and i8 %4690, 1
  store i8 %4691, i8* %27, align 1
  %4692 = icmp eq i32 %4676, 0
  %4693 = zext i1 %4692 to i8
  store i8 %4693, i8* %30, align 1
  %4694 = lshr i32 %4676, 31
  %4695 = trunc i32 %4694 to i8
  store i8 %4695, i8* %33, align 1
  %4696 = lshr i32 %4669, 31
  %4697 = lshr i32 %4675, 31
  %4698 = xor i32 %4694, %4696
  %4699 = xor i32 %4694, %4697
  %4700 = add nuw nsw i32 %4698, %4699
  %4701 = icmp eq i32 %4700, 2
  %4702 = zext i1 %4701 to i8
  store i8 %4702, i8* %39, align 1
  %4703 = sext i32 %4676 to i64
  store i64 %4703, i64* %RDX.i2114.pre-phi, align 8
  %4704 = shl nsw i64 %4703, 3
  %4705 = add i64 %4664, %4704
  %4706 = add i64 %4656, 42
  store i64 %4706, i64* %3, align 8
  %4707 = inttoptr i64 %4705 to i64*
  %4708 = load i64, i64* %4707, align 8
  store i64 %4708, i64* %RAX.i778, align 8
  %4709 = add i64 %4665, -24
  %4710 = add i64 %4656, 45
  store i64 %4710, i64* %3, align 8
  %4711 = inttoptr i64 %4709 to i32*
  %4712 = load i32, i32* %4711, align 4
  %4713 = zext i32 %4712 to i64
  store i64 %4713, i64* %RCX.i2230, align 8
  store i64 %4671, i64* %RDX.i2114.pre-phi, align 8
  %4714 = add i64 %4671, 148
  %4715 = add i64 %4656, 59
  store i64 %4715, i64* %3, align 8
  %4716 = inttoptr i64 %4714 to i32*
  %4717 = load i32, i32* %4716, align 4
  %4718 = add i32 %4717, %4712
  %4719 = zext i32 %4718 to i64
  store i64 %4719, i64* %RCX.i2230, align 8
  %4720 = icmp ult i32 %4718, %4712
  %4721 = icmp ult i32 %4718, %4717
  %4722 = or i1 %4720, %4721
  %4723 = zext i1 %4722 to i8
  store i8 %4723, i8* %14, align 1
  %4724 = and i32 %4718, 255
  %4725 = tail call i32 @llvm.ctpop.i32(i32 %4724)
  %4726 = trunc i32 %4725 to i8
  %4727 = and i8 %4726, 1
  %4728 = xor i8 %4727, 1
  store i8 %4728, i8* %21, align 1
  %4729 = xor i32 %4717, %4712
  %4730 = xor i32 %4729, %4718
  %4731 = lshr i32 %4730, 4
  %4732 = trunc i32 %4731 to i8
  %4733 = and i8 %4732, 1
  store i8 %4733, i8* %27, align 1
  %4734 = icmp eq i32 %4718, 0
  %4735 = zext i1 %4734 to i8
  store i8 %4735, i8* %30, align 1
  %4736 = lshr i32 %4718, 31
  %4737 = trunc i32 %4736 to i8
  store i8 %4737, i8* %33, align 1
  %4738 = lshr i32 %4712, 31
  %4739 = lshr i32 %4717, 31
  %4740 = xor i32 %4736, %4738
  %4741 = xor i32 %4736, %4739
  %4742 = add nuw nsw i32 %4740, %4741
  %4743 = icmp eq i32 %4742, 2
  %4744 = zext i1 %4743 to i8
  store i8 %4744, i8* %39, align 1
  %4745 = sext i32 %4718 to i64
  store i64 %4745, i64* %RDX.i2114.pre-phi, align 8
  %4746 = shl nsw i64 %4745, 3
  %4747 = add i64 %4708, %4746
  %4748 = add i64 %4656, 66
  store i64 %4748, i64* %3, align 8
  %4749 = inttoptr i64 %4747 to i64*
  %4750 = load i64, i64* %4749, align 8
  store i64 %4750, i64* %RAX.i778, align 8
  %4751 = add i64 %4750, 2
  %4752 = add i64 %4656, 72
  store i64 %4752, i64* %3, align 8
  %4753 = inttoptr i64 %4751 to i16*
  store i16 0, i16* %4753, align 2
  %.pre135 = load i64, i64* %3, align 8
  br label %block_.L_430e29

block_.L_430e29:                                  ; preds = %block_.L_430d9a, %block_430c61
  %4754 = phi i64 [ %.pre135, %block_.L_430d9a ], [ %4561, %block_430c61 ]
  %4755 = load i64, i64* %RBP.i, align 8
  %4756 = add i64 %4755, -36
  %4757 = add i64 %4754, 4
  store i64 %4757, i64* %3, align 8
  %4758 = inttoptr i64 %4756 to i32*
  %4759 = load i32, i32* %4758, align 4
  store i8 0, i8* %14, align 1
  %4760 = and i32 %4759, 255
  %4761 = tail call i32 @llvm.ctpop.i32(i32 %4760)
  %4762 = trunc i32 %4761 to i8
  %4763 = and i8 %4762, 1
  %4764 = xor i8 %4763, 1
  store i8 %4764, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4765 = icmp eq i32 %4759, 0
  %4766 = zext i1 %4765 to i8
  store i8 %4766, i8* %30, align 1
  %4767 = lshr i32 %4759, 31
  %4768 = trunc i32 %4767 to i8
  store i8 %4768, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v187 = select i1 %4765, i64 495, i64 10
  %4769 = add i64 %4754, %.v187
  store i64 %4769, i64* %3, align 8
  br i1 %4765, label %block_.L_431018, label %block_430e33

block_430e33:                                     ; preds = %block_.L_430e29
  %4770 = add i64 %4755, -48
  %4771 = add i64 %4769, 4
  store i64 %4771, i64* %3, align 8
  %4772 = inttoptr i64 %4770 to i32*
  %4773 = load i32, i32* %4772, align 4
  store i8 0, i8* %14, align 1
  %4774 = and i32 %4773, 255
  %4775 = tail call i32 @llvm.ctpop.i32(i32 %4774)
  %4776 = trunc i32 %4775 to i8
  %4777 = and i8 %4776, 1
  %4778 = xor i8 %4777, 1
  store i8 %4778, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4779 = icmp eq i32 %4773, 0
  %4780 = zext i1 %4779 to i8
  store i8 %4780, i8* %30, align 1
  %4781 = lshr i32 %4773, 31
  %4782 = trunc i32 %4781 to i8
  store i8 %4782, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v188 = select i1 %4779, i64 335, i64 10
  %4783 = add i64 %4769, %.v188
  %4784 = add i64 %4783, 8
  store i64 %4784, i64* %3, align 8
  br i1 %4779, label %block_.L_430f82, label %block_430e3d

block_430e3d:                                     ; preds = %block_430e33
  %4785 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %4785, i64* %RAX.i778, align 8
  %4786 = add i64 %4785, 3240
  %4787 = add i64 %4783, 15
  store i64 %4787, i64* %3, align 8
  %4788 = inttoptr i64 %4786 to i64*
  %4789 = load i64, i64* %4788, align 8
  store i64 %4789, i64* %RAX.i778, align 8
  %4790 = add i64 %4755, -20
  %4791 = add i64 %4783, 19
  store i64 %4791, i64* %3, align 8
  %4792 = inttoptr i64 %4790 to i32*
  %4793 = load i32, i32* %4792, align 4
  %4794 = sext i32 %4793 to i64
  store i64 %4794, i64* %RCX.i2230, align 8
  %4795 = shl nsw i64 %4794, 3
  %4796 = add i64 %4795, %4789
  %4797 = add i64 %4783, 23
  store i64 %4797, i64* %3, align 8
  %4798 = inttoptr i64 %4796 to i64*
  %4799 = load i64, i64* %4798, align 8
  store i64 %4799, i64* %RAX.i778, align 8
  %4800 = add i64 %4755, -24
  %4801 = add i64 %4783, 27
  store i64 %4801, i64* %3, align 8
  %4802 = inttoptr i64 %4800 to i32*
  %4803 = load i32, i32* %4802, align 4
  %4804 = sext i32 %4803 to i64
  store i64 %4804, i64* %RCX.i2230, align 8
  %4805 = shl nsw i64 %4804, 3
  %4806 = add i64 %4805, %4799
  %4807 = add i64 %4783, 31
  store i64 %4807, i64* %3, align 8
  %4808 = inttoptr i64 %4806 to i64*
  %4809 = load i64, i64* %4808, align 8
  store i64 %4809, i64* %RAX.i778, align 8
  %4810 = add i64 %4809, 8
  %4811 = add i64 %4783, 35
  store i64 %4811, i64* %3, align 8
  %4812 = inttoptr i64 %4810 to i64*
  %4813 = load i64, i64* %4812, align 8
  store i64 %4813, i64* %RAX.i778, align 8
  %4814 = add i64 %4785, 3264
  %4815 = lshr i64 %4814, 63
  %4816 = add i64 %4785, 3296
  store i64 %4816, i64* %RCX.i2230, align 8
  %4817 = icmp ugt i64 %4814, -33
  %4818 = zext i1 %4817 to i8
  store i8 %4818, i8* %14, align 1
  %4819 = trunc i64 %4816 to i32
  %4820 = and i32 %4819, 255
  %4821 = tail call i32 @llvm.ctpop.i32(i32 %4820)
  %4822 = trunc i32 %4821 to i8
  %4823 = and i8 %4822, 1
  %4824 = xor i8 %4823, 1
  store i8 %4824, i8* %21, align 1
  %4825 = xor i64 %4816, %4814
  %4826 = lshr i64 %4825, 4
  %4827 = trunc i64 %4826 to i8
  %4828 = and i8 %4827, 1
  store i8 %4828, i8* %27, align 1
  %4829 = icmp eq i64 %4816, 0
  %4830 = zext i1 %4829 to i8
  store i8 %4830, i8* %30, align 1
  %4831 = lshr i64 %4816, 63
  %4832 = trunc i64 %4831 to i8
  store i8 %4832, i8* %33, align 1
  %4833 = xor i64 %4831, %4815
  %4834 = add nuw nsw i64 %4833, %4831
  %4835 = icmp eq i64 %4834, 2
  %4836 = zext i1 %4835 to i8
  store i8 %4836, i8* %39, align 1
  %4837 = load i64, i64* %RBP.i, align 8
  %4838 = add i64 %4837, -24
  %4839 = add i64 %4783, 58
  store i64 %4839, i64* %3, align 8
  %4840 = inttoptr i64 %4838 to i32*
  %4841 = load i32, i32* %4840, align 4
  %4842 = sext i32 %4841 to i64
  %4843 = shl nsw i64 %4842, 3
  store i64 %4843, i64* %RDX.i2114.pre-phi, align 8
  %4844 = add i64 %4843, %4816
  store i64 %4844, i64* %RCX.i2230, align 8
  %4845 = icmp ult i64 %4844, %4816
  %4846 = icmp ult i64 %4844, %4843
  %4847 = or i1 %4845, %4846
  %4848 = zext i1 %4847 to i8
  store i8 %4848, i8* %14, align 1
  %4849 = trunc i64 %4844 to i32
  %4850 = and i32 %4849, 255
  %4851 = tail call i32 @llvm.ctpop.i32(i32 %4850)
  %4852 = trunc i32 %4851 to i8
  %4853 = and i8 %4852, 1
  %4854 = xor i8 %4853, 1
  store i8 %4854, i8* %21, align 1
  %4855 = xor i64 %4843, %4816
  %4856 = xor i64 %4855, %4844
  %4857 = lshr i64 %4856, 4
  %4858 = trunc i64 %4857 to i8
  %4859 = and i8 %4858, 1
  store i8 %4859, i8* %27, align 1
  %4860 = icmp eq i64 %4844, 0
  %4861 = zext i1 %4860 to i8
  store i8 %4861, i8* %30, align 1
  %4862 = lshr i64 %4844, 63
  %4863 = trunc i64 %4862 to i8
  store i8 %4863, i8* %33, align 1
  %4864 = lshr i64 %4842, 60
  %4865 = and i64 %4864, 1
  %4866 = xor i64 %4862, %4831
  %4867 = xor i64 %4862, %4865
  %4868 = add nuw nsw i64 %4866, %4867
  %4869 = icmp eq i64 %4868, 2
  %4870 = zext i1 %4869 to i8
  store i8 %4870, i8* %39, align 1
  %4871 = add i64 %4837, -20
  %4872 = add i64 %4783, 69
  store i64 %4872, i64* %3, align 8
  %4873 = inttoptr i64 %4871 to i32*
  %4874 = load i32, i32* %4873, align 4
  %4875 = sext i32 %4874 to i64
  store i64 %4875, i64* %RDX.i2114.pre-phi, align 8
  %4876 = shl nsw i64 %4875, 1
  %4877 = add i64 %4876, %4844
  %4878 = add i64 %4783, 74
  store i64 %4878, i64* %3, align 8
  %4879 = inttoptr i64 %4877 to i16*
  %4880 = load i16, i16* %4879, align 2
  %4881 = sext i16 %4880 to i64
  store i64 %4881, i64* %RCX.i2230, align 8
  %4882 = load i64, i64* %RAX.i778, align 8
  %4883 = shl nsw i64 %4881, 3
  %4884 = add i64 %4883, %4882
  %4885 = add i64 %4783, 78
  store i64 %4885, i64* %3, align 8
  %4886 = inttoptr i64 %4884 to i64*
  %4887 = load i64, i64* %4886, align 8
  store i64 %4887, i64* %RAX.i778, align 8
  %4888 = add i64 %4837, -44
  %4889 = add i64 %4783, 82
  store i64 %4889, i64* %3, align 8
  %4890 = inttoptr i64 %4888 to i32*
  %4891 = load i32, i32* %4890, align 4
  %4892 = sext i32 %4891 to i64
  store i64 %4892, i64* %RCX.i2230, align 8
  %4893 = shl nsw i64 %4892, 3
  %4894 = add i64 %4893, %4887
  %4895 = add i64 %4783, 86
  store i64 %4895, i64* %3, align 8
  %4896 = inttoptr i64 %4894 to i64*
  %4897 = load i64, i64* %4896, align 8
  store i64 %4897, i64* %RAX.i778, align 8
  %4898 = add i64 %4783, 89
  store i64 %4898, i64* %3, align 8
  %4899 = inttoptr i64 %4897 to i16*
  %4900 = load i16, i16* %4899, align 2
  store i16 %4900, i16* %SI.i1476, align 2
  %4901 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %4901, i64* %RAX.i778, align 8
  %4902 = add i64 %4901, 6504
  %4903 = add i64 %4783, 104
  store i64 %4903, i64* %3, align 8
  %4904 = inttoptr i64 %4902 to i64*
  %4905 = load i64, i64* %4904, align 8
  store i64 %4905, i64* %RAX.i778, align 8
  %4906 = add i64 %4905, 8
  %4907 = add i64 %4783, 108
  store i64 %4907, i64* %3, align 8
  %4908 = inttoptr i64 %4906 to i64*
  %4909 = load i64, i64* %4908, align 8
  store i64 %4909, i64* %RAX.i778, align 8
  %4910 = load i64, i64* %RBP.i, align 8
  %4911 = add i64 %4910, -20
  %4912 = add i64 %4783, 111
  store i64 %4912, i64* %3, align 8
  %4913 = inttoptr i64 %4911 to i32*
  %4914 = load i32, i32* %4913, align 4
  %4915 = zext i32 %4914 to i64
  store i64 %4915, i64* %RDI.i2177, align 8
  %4916 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4916, i64* %RCX.i2230, align 8
  %4917 = add i64 %4916, 144
  %4918 = add i64 %4783, 125
  store i64 %4918, i64* %3, align 8
  %4919 = inttoptr i64 %4917 to i32*
  %4920 = load i32, i32* %4919, align 4
  %4921 = add i32 %4920, %4914
  %4922 = zext i32 %4921 to i64
  store i64 %4922, i64* %RDI.i2177, align 8
  %4923 = icmp ult i32 %4921, %4914
  %4924 = icmp ult i32 %4921, %4920
  %4925 = or i1 %4923, %4924
  %4926 = zext i1 %4925 to i8
  store i8 %4926, i8* %14, align 1
  %4927 = and i32 %4921, 255
  %4928 = tail call i32 @llvm.ctpop.i32(i32 %4927)
  %4929 = trunc i32 %4928 to i8
  %4930 = and i8 %4929, 1
  %4931 = xor i8 %4930, 1
  store i8 %4931, i8* %21, align 1
  %4932 = xor i32 %4920, %4914
  %4933 = xor i32 %4932, %4921
  %4934 = lshr i32 %4933, 4
  %4935 = trunc i32 %4934 to i8
  %4936 = and i8 %4935, 1
  store i8 %4936, i8* %27, align 1
  %4937 = icmp eq i32 %4921, 0
  %4938 = zext i1 %4937 to i8
  store i8 %4938, i8* %30, align 1
  %4939 = lshr i32 %4921, 31
  %4940 = trunc i32 %4939 to i8
  store i8 %4940, i8* %33, align 1
  %4941 = lshr i32 %4914, 31
  %4942 = lshr i32 %4920, 31
  %4943 = xor i32 %4939, %4941
  %4944 = xor i32 %4939, %4942
  %4945 = add nuw nsw i32 %4943, %4944
  %4946 = icmp eq i32 %4945, 2
  %4947 = zext i1 %4946 to i8
  store i8 %4947, i8* %39, align 1
  %4948 = sext i32 %4921 to i64
  store i64 %4948, i64* %RCX.i2230, align 8
  %4949 = shl nsw i64 %4948, 3
  %4950 = add i64 %4909, %4949
  %4951 = add i64 %4783, 132
  store i64 %4951, i64* %3, align 8
  %4952 = inttoptr i64 %4950 to i64*
  %4953 = load i64, i64* %4952, align 8
  store i64 %4953, i64* %RAX.i778, align 8
  %4954 = add i64 %4910, -24
  %4955 = add i64 %4783, 135
  store i64 %4955, i64* %3, align 8
  %4956 = inttoptr i64 %4954 to i32*
  %4957 = load i32, i32* %4956, align 4
  %4958 = zext i32 %4957 to i64
  store i64 %4958, i64* %RDI.i2177, align 8
  store i64 %4916, i64* %RCX.i2230, align 8
  %4959 = add i64 %4916, 148
  %4960 = add i64 %4783, 149
  store i64 %4960, i64* %3, align 8
  %4961 = inttoptr i64 %4959 to i32*
  %4962 = load i32, i32* %4961, align 4
  %4963 = add i32 %4962, %4957
  %4964 = zext i32 %4963 to i64
  store i64 %4964, i64* %RDI.i2177, align 8
  %4965 = icmp ult i32 %4963, %4957
  %4966 = icmp ult i32 %4963, %4962
  %4967 = or i1 %4965, %4966
  %4968 = zext i1 %4967 to i8
  store i8 %4968, i8* %14, align 1
  %4969 = and i32 %4963, 255
  %4970 = tail call i32 @llvm.ctpop.i32(i32 %4969)
  %4971 = trunc i32 %4970 to i8
  %4972 = and i8 %4971, 1
  %4973 = xor i8 %4972, 1
  store i8 %4973, i8* %21, align 1
  %4974 = xor i32 %4962, %4957
  %4975 = xor i32 %4974, %4963
  %4976 = lshr i32 %4975, 4
  %4977 = trunc i32 %4976 to i8
  %4978 = and i8 %4977, 1
  store i8 %4978, i8* %27, align 1
  %4979 = icmp eq i32 %4963, 0
  %4980 = zext i1 %4979 to i8
  store i8 %4980, i8* %30, align 1
  %4981 = lshr i32 %4963, 31
  %4982 = trunc i32 %4981 to i8
  store i8 %4982, i8* %33, align 1
  %4983 = lshr i32 %4957, 31
  %4984 = lshr i32 %4962, 31
  %4985 = xor i32 %4981, %4983
  %4986 = xor i32 %4981, %4984
  %4987 = add nuw nsw i32 %4985, %4986
  %4988 = icmp eq i32 %4987, 2
  %4989 = zext i1 %4988 to i8
  store i8 %4989, i8* %39, align 1
  %4990 = sext i32 %4963 to i64
  store i64 %4990, i64* %RCX.i2230, align 8
  %4991 = shl nsw i64 %4990, 3
  %4992 = add i64 %4953, %4991
  %4993 = add i64 %4783, 156
  store i64 %4993, i64* %3, align 8
  %4994 = inttoptr i64 %4992 to i16**
  %4995 = load i16*, i16** %4994, align 8
  %4996 = load i16, i16* %SI.i1476, align 2
  %4997 = add i64 %4783, 159
  store i64 %4997, i64* %3, align 8
  store i16 %4996, i16* %4995, align 2
  %4998 = load i64, i64* %3, align 8
  %4999 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %4999, i64* %RAX.i778, align 8
  %5000 = add i64 %4999, 3240
  %5001 = add i64 %4998, 15
  store i64 %5001, i64* %3, align 8
  %5002 = inttoptr i64 %5000 to i64*
  %5003 = load i64, i64* %5002, align 8
  store i64 %5003, i64* %RAX.i778, align 8
  %5004 = load i64, i64* %RBP.i, align 8
  %5005 = add i64 %5004, -20
  %5006 = add i64 %4998, 19
  store i64 %5006, i64* %3, align 8
  %5007 = inttoptr i64 %5005 to i32*
  %5008 = load i32, i32* %5007, align 4
  %5009 = sext i32 %5008 to i64
  store i64 %5009, i64* %RCX.i2230, align 8
  %5010 = shl nsw i64 %5009, 3
  %5011 = add i64 %5010, %5003
  %5012 = add i64 %4998, 23
  store i64 %5012, i64* %3, align 8
  %5013 = inttoptr i64 %5011 to i64*
  %5014 = load i64, i64* %5013, align 8
  store i64 %5014, i64* %RAX.i778, align 8
  %5015 = add i64 %5004, -24
  %5016 = add i64 %4998, 27
  store i64 %5016, i64* %3, align 8
  %5017 = inttoptr i64 %5015 to i32*
  %5018 = load i32, i32* %5017, align 4
  %5019 = sext i32 %5018 to i64
  store i64 %5019, i64* %RCX.i2230, align 8
  %5020 = shl nsw i64 %5019, 3
  %5021 = add i64 %5020, %5014
  %5022 = add i64 %4998, 31
  store i64 %5022, i64* %3, align 8
  %5023 = inttoptr i64 %5021 to i64*
  %5024 = load i64, i64* %5023, align 8
  store i64 %5024, i64* %RAX.i778, align 8
  %5025 = add i64 %5024, 8
  %5026 = add i64 %4998, 35
  store i64 %5026, i64* %3, align 8
  %5027 = inttoptr i64 %5025 to i64*
  %5028 = load i64, i64* %5027, align 8
  store i64 %5028, i64* %RAX.i778, align 8
  %5029 = add i64 %4999, 3264
  %5030 = lshr i64 %5029, 63
  %5031 = add i64 %4999, 3296
  store i64 %5031, i64* %RCX.i2230, align 8
  %5032 = icmp ugt i64 %5029, -33
  %5033 = zext i1 %5032 to i8
  store i8 %5033, i8* %14, align 1
  %5034 = trunc i64 %5031 to i32
  %5035 = and i32 %5034, 255
  %5036 = tail call i32 @llvm.ctpop.i32(i32 %5035)
  %5037 = trunc i32 %5036 to i8
  %5038 = and i8 %5037, 1
  %5039 = xor i8 %5038, 1
  store i8 %5039, i8* %21, align 1
  %5040 = xor i64 %5031, %5029
  %5041 = lshr i64 %5040, 4
  %5042 = trunc i64 %5041 to i8
  %5043 = and i8 %5042, 1
  store i8 %5043, i8* %27, align 1
  %5044 = icmp eq i64 %5031, 0
  %5045 = zext i1 %5044 to i8
  store i8 %5045, i8* %30, align 1
  %5046 = lshr i64 %5031, 63
  %5047 = trunc i64 %5046 to i8
  store i8 %5047, i8* %33, align 1
  %5048 = xor i64 %5046, %5030
  %5049 = add nuw nsw i64 %5048, %5046
  %5050 = icmp eq i64 %5049, 2
  %5051 = zext i1 %5050 to i8
  store i8 %5051, i8* %39, align 1
  %5052 = add i64 %4998, 58
  store i64 %5052, i64* %3, align 8
  %5053 = load i32, i32* %5017, align 4
  %5054 = sext i32 %5053 to i64
  %5055 = shl nsw i64 %5054, 3
  store i64 %5055, i64* %RDX.i2114.pre-phi, align 8
  %5056 = add i64 %5055, %5031
  store i64 %5056, i64* %RCX.i2230, align 8
  %5057 = icmp ult i64 %5056, %5031
  %5058 = icmp ult i64 %5056, %5055
  %5059 = or i1 %5057, %5058
  %5060 = zext i1 %5059 to i8
  store i8 %5060, i8* %14, align 1
  %5061 = trunc i64 %5056 to i32
  %5062 = and i32 %5061, 255
  %5063 = tail call i32 @llvm.ctpop.i32(i32 %5062)
  %5064 = trunc i32 %5063 to i8
  %5065 = and i8 %5064, 1
  %5066 = xor i8 %5065, 1
  store i8 %5066, i8* %21, align 1
  %5067 = xor i64 %5055, %5031
  %5068 = xor i64 %5067, %5056
  %5069 = lshr i64 %5068, 4
  %5070 = trunc i64 %5069 to i8
  %5071 = and i8 %5070, 1
  store i8 %5071, i8* %27, align 1
  %5072 = icmp eq i64 %5056, 0
  %5073 = zext i1 %5072 to i8
  store i8 %5073, i8* %30, align 1
  %5074 = lshr i64 %5056, 63
  %5075 = trunc i64 %5074 to i8
  store i8 %5075, i8* %33, align 1
  %5076 = lshr i64 %5054, 60
  %5077 = and i64 %5076, 1
  %5078 = xor i64 %5074, %5046
  %5079 = xor i64 %5074, %5077
  %5080 = add nuw nsw i64 %5078, %5079
  %5081 = icmp eq i64 %5080, 2
  %5082 = zext i1 %5081 to i8
  store i8 %5082, i8* %39, align 1
  %5083 = load i64, i64* %RBP.i, align 8
  %5084 = add i64 %5083, -20
  %5085 = add i64 %4998, 69
  store i64 %5085, i64* %3, align 8
  %5086 = inttoptr i64 %5084 to i32*
  %5087 = load i32, i32* %5086, align 4
  %5088 = sext i32 %5087 to i64
  store i64 %5088, i64* %RDX.i2114.pre-phi, align 8
  %5089 = shl nsw i64 %5088, 1
  %5090 = add i64 %5089, %5056
  %5091 = add i64 %4998, 74
  store i64 %5091, i64* %3, align 8
  %5092 = inttoptr i64 %5090 to i16*
  %5093 = load i16, i16* %5092, align 2
  %5094 = sext i16 %5093 to i64
  store i64 %5094, i64* %RCX.i2230, align 8
  %5095 = load i64, i64* %RAX.i778, align 8
  %5096 = shl nsw i64 %5094, 3
  %5097 = add i64 %5096, %5095
  %5098 = add i64 %4998, 78
  store i64 %5098, i64* %3, align 8
  %5099 = inttoptr i64 %5097 to i64*
  %5100 = load i64, i64* %5099, align 8
  store i64 %5100, i64* %RAX.i778, align 8
  %5101 = add i64 %5083, -44
  %5102 = add i64 %4998, 82
  store i64 %5102, i64* %3, align 8
  %5103 = inttoptr i64 %5101 to i32*
  %5104 = load i32, i32* %5103, align 4
  %5105 = sext i32 %5104 to i64
  store i64 %5105, i64* %RCX.i2230, align 8
  %5106 = shl nsw i64 %5105, 3
  %5107 = add i64 %5106, %5100
  %5108 = add i64 %4998, 86
  store i64 %5108, i64* %3, align 8
  %5109 = inttoptr i64 %5107 to i64*
  %5110 = load i64, i64* %5109, align 8
  store i64 %5110, i64* %RAX.i778, align 8
  %5111 = add i64 %5110, 2
  %5112 = add i64 %4998, 90
  store i64 %5112, i64* %3, align 8
  %5113 = inttoptr i64 %5111 to i16*
  %5114 = load i16, i16* %5113, align 2
  store i16 %5114, i16* %SI.i1476, align 2
  %5115 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5115, i64* %RAX.i778, align 8
  %5116 = add i64 %5115, 6504
  %5117 = add i64 %4998, 105
  store i64 %5117, i64* %3, align 8
  %5118 = inttoptr i64 %5116 to i64*
  %5119 = load i64, i64* %5118, align 8
  store i64 %5119, i64* %RAX.i778, align 8
  %5120 = add i64 %5119, 8
  %5121 = add i64 %4998, 109
  store i64 %5121, i64* %3, align 8
  %5122 = inttoptr i64 %5120 to i64*
  %5123 = load i64, i64* %5122, align 8
  store i64 %5123, i64* %RAX.i778, align 8
  %5124 = add i64 %4998, 112
  store i64 %5124, i64* %3, align 8
  %5125 = load i32, i32* %5086, align 4
  %5126 = zext i32 %5125 to i64
  store i64 %5126, i64* %RDI.i2177, align 8
  %5127 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5127, i64* %RCX.i2230, align 8
  %5128 = add i64 %5127, 144
  %5129 = add i64 %4998, 126
  store i64 %5129, i64* %3, align 8
  %5130 = inttoptr i64 %5128 to i32*
  %5131 = load i32, i32* %5130, align 4
  %5132 = add i32 %5131, %5125
  %5133 = zext i32 %5132 to i64
  store i64 %5133, i64* %RDI.i2177, align 8
  %5134 = icmp ult i32 %5132, %5125
  %5135 = icmp ult i32 %5132, %5131
  %5136 = or i1 %5134, %5135
  %5137 = zext i1 %5136 to i8
  store i8 %5137, i8* %14, align 1
  %5138 = and i32 %5132, 255
  %5139 = tail call i32 @llvm.ctpop.i32(i32 %5138)
  %5140 = trunc i32 %5139 to i8
  %5141 = and i8 %5140, 1
  %5142 = xor i8 %5141, 1
  store i8 %5142, i8* %21, align 1
  %5143 = xor i32 %5131, %5125
  %5144 = xor i32 %5143, %5132
  %5145 = lshr i32 %5144, 4
  %5146 = trunc i32 %5145 to i8
  %5147 = and i8 %5146, 1
  store i8 %5147, i8* %27, align 1
  %5148 = icmp eq i32 %5132, 0
  %5149 = zext i1 %5148 to i8
  store i8 %5149, i8* %30, align 1
  %5150 = lshr i32 %5132, 31
  %5151 = trunc i32 %5150 to i8
  store i8 %5151, i8* %33, align 1
  %5152 = lshr i32 %5125, 31
  %5153 = lshr i32 %5131, 31
  %5154 = xor i32 %5150, %5152
  %5155 = xor i32 %5150, %5153
  %5156 = add nuw nsw i32 %5154, %5155
  %5157 = icmp eq i32 %5156, 2
  %5158 = zext i1 %5157 to i8
  store i8 %5158, i8* %39, align 1
  %5159 = sext i32 %5132 to i64
  store i64 %5159, i64* %RCX.i2230, align 8
  %5160 = shl nsw i64 %5159, 3
  %5161 = add i64 %5123, %5160
  %5162 = add i64 %4998, 133
  store i64 %5162, i64* %3, align 8
  %5163 = inttoptr i64 %5161 to i64*
  %5164 = load i64, i64* %5163, align 8
  store i64 %5164, i64* %RAX.i778, align 8
  %5165 = load i64, i64* %RBP.i, align 8
  %5166 = add i64 %5165, -24
  %5167 = add i64 %4998, 136
  store i64 %5167, i64* %3, align 8
  %5168 = inttoptr i64 %5166 to i32*
  %5169 = load i32, i32* %5168, align 4
  %5170 = zext i32 %5169 to i64
  store i64 %5170, i64* %RDI.i2177, align 8
  store i64 %5127, i64* %RCX.i2230, align 8
  %5171 = add i64 %5127, 148
  %5172 = add i64 %4998, 150
  store i64 %5172, i64* %3, align 8
  %5173 = inttoptr i64 %5171 to i32*
  %5174 = load i32, i32* %5173, align 4
  %5175 = add i32 %5174, %5169
  %5176 = zext i32 %5175 to i64
  store i64 %5176, i64* %RDI.i2177, align 8
  %5177 = icmp ult i32 %5175, %5169
  %5178 = icmp ult i32 %5175, %5174
  %5179 = or i1 %5177, %5178
  %5180 = zext i1 %5179 to i8
  store i8 %5180, i8* %14, align 1
  %5181 = and i32 %5175, 255
  %5182 = tail call i32 @llvm.ctpop.i32(i32 %5181)
  %5183 = trunc i32 %5182 to i8
  %5184 = and i8 %5183, 1
  %5185 = xor i8 %5184, 1
  store i8 %5185, i8* %21, align 1
  %5186 = xor i32 %5174, %5169
  %5187 = xor i32 %5186, %5175
  %5188 = lshr i32 %5187, 4
  %5189 = trunc i32 %5188 to i8
  %5190 = and i8 %5189, 1
  store i8 %5190, i8* %27, align 1
  %5191 = icmp eq i32 %5175, 0
  %5192 = zext i1 %5191 to i8
  store i8 %5192, i8* %30, align 1
  %5193 = lshr i32 %5175, 31
  %5194 = trunc i32 %5193 to i8
  store i8 %5194, i8* %33, align 1
  %5195 = lshr i32 %5169, 31
  %5196 = lshr i32 %5174, 31
  %5197 = xor i32 %5193, %5195
  %5198 = xor i32 %5193, %5196
  %5199 = add nuw nsw i32 %5197, %5198
  %5200 = icmp eq i32 %5199, 2
  %5201 = zext i1 %5200 to i8
  store i8 %5201, i8* %39, align 1
  %5202 = sext i32 %5175 to i64
  store i64 %5202, i64* %RCX.i2230, align 8
  %5203 = shl nsw i64 %5202, 3
  %5204 = add i64 %5164, %5203
  %5205 = add i64 %4998, 157
  store i64 %5205, i64* %3, align 8
  %5206 = inttoptr i64 %5204 to i64*
  %5207 = load i64, i64* %5206, align 8
  store i64 %5207, i64* %RAX.i778, align 8
  %5208 = add i64 %5207, 2
  %5209 = load i16, i16* %SI.i1476, align 2
  %5210 = add i64 %4998, 161
  store i64 %5210, i64* %3, align 8
  %5211 = inttoptr i64 %5208 to i16*
  store i16 %5209, i16* %5211, align 2
  %5212 = load i64, i64* %3, align 8
  %5213 = add i64 %5212, 150
  store i64 %5213, i64* %3, align 8
  br label %block_.L_431013

block_.L_430f82:                                  ; preds = %block_430e33
  %5214 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5214, i64* %RAX.i778, align 8
  %5215 = add i64 %5214, 6504
  %5216 = add i64 %4783, 15
  store i64 %5216, i64* %3, align 8
  %5217 = inttoptr i64 %5215 to i64*
  %5218 = load i64, i64* %5217, align 8
  store i64 %5218, i64* %RAX.i778, align 8
  %5219 = add i64 %5218, 8
  %5220 = add i64 %4783, 19
  store i64 %5220, i64* %3, align 8
  %5221 = inttoptr i64 %5219 to i64*
  %5222 = load i64, i64* %5221, align 8
  store i64 %5222, i64* %RAX.i778, align 8
  %5223 = add i64 %4755, -20
  %5224 = add i64 %4783, 22
  store i64 %5224, i64* %3, align 8
  %5225 = inttoptr i64 %5223 to i32*
  %5226 = load i32, i32* %5225, align 4
  %5227 = zext i32 %5226 to i64
  store i64 %5227, i64* %RCX.i2230, align 8
  %5228 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5228, i64* %RDX.i2114.pre-phi, align 8
  %5229 = add i64 %5228, 144
  %5230 = add i64 %4783, 36
  store i64 %5230, i64* %3, align 8
  %5231 = inttoptr i64 %5229 to i32*
  %5232 = load i32, i32* %5231, align 4
  %5233 = add i32 %5232, %5226
  %5234 = zext i32 %5233 to i64
  store i64 %5234, i64* %RCX.i2230, align 8
  %5235 = icmp ult i32 %5233, %5226
  %5236 = icmp ult i32 %5233, %5232
  %5237 = or i1 %5235, %5236
  %5238 = zext i1 %5237 to i8
  store i8 %5238, i8* %14, align 1
  %5239 = and i32 %5233, 255
  %5240 = tail call i32 @llvm.ctpop.i32(i32 %5239)
  %5241 = trunc i32 %5240 to i8
  %5242 = and i8 %5241, 1
  %5243 = xor i8 %5242, 1
  store i8 %5243, i8* %21, align 1
  %5244 = xor i32 %5232, %5226
  %5245 = xor i32 %5244, %5233
  %5246 = lshr i32 %5245, 4
  %5247 = trunc i32 %5246 to i8
  %5248 = and i8 %5247, 1
  store i8 %5248, i8* %27, align 1
  %5249 = icmp eq i32 %5233, 0
  %5250 = zext i1 %5249 to i8
  store i8 %5250, i8* %30, align 1
  %5251 = lshr i32 %5233, 31
  %5252 = trunc i32 %5251 to i8
  store i8 %5252, i8* %33, align 1
  %5253 = lshr i32 %5226, 31
  %5254 = lshr i32 %5232, 31
  %5255 = xor i32 %5251, %5253
  %5256 = xor i32 %5251, %5254
  %5257 = add nuw nsw i32 %5255, %5256
  %5258 = icmp eq i32 %5257, 2
  %5259 = zext i1 %5258 to i8
  store i8 %5259, i8* %39, align 1
  %5260 = sext i32 %5233 to i64
  store i64 %5260, i64* %RDX.i2114.pre-phi, align 8
  %5261 = shl nsw i64 %5260, 3
  %5262 = add i64 %5222, %5261
  %5263 = add i64 %4783, 43
  store i64 %5263, i64* %3, align 8
  %5264 = inttoptr i64 %5262 to i64*
  %5265 = load i64, i64* %5264, align 8
  store i64 %5265, i64* %RAX.i778, align 8
  %5266 = add i64 %4755, -24
  %5267 = add i64 %4783, 46
  store i64 %5267, i64* %3, align 8
  %5268 = inttoptr i64 %5266 to i32*
  %5269 = load i32, i32* %5268, align 4
  %5270 = zext i32 %5269 to i64
  store i64 %5270, i64* %RCX.i2230, align 8
  store i64 %5228, i64* %RDX.i2114.pre-phi, align 8
  %5271 = add i64 %5228, 148
  %5272 = add i64 %4783, 60
  store i64 %5272, i64* %3, align 8
  %5273 = inttoptr i64 %5271 to i32*
  %5274 = load i32, i32* %5273, align 4
  %5275 = add i32 %5274, %5269
  %5276 = zext i32 %5275 to i64
  store i64 %5276, i64* %RCX.i2230, align 8
  %5277 = icmp ult i32 %5275, %5269
  %5278 = icmp ult i32 %5275, %5274
  %5279 = or i1 %5277, %5278
  %5280 = zext i1 %5279 to i8
  store i8 %5280, i8* %14, align 1
  %5281 = and i32 %5275, 255
  %5282 = tail call i32 @llvm.ctpop.i32(i32 %5281)
  %5283 = trunc i32 %5282 to i8
  %5284 = and i8 %5283, 1
  %5285 = xor i8 %5284, 1
  store i8 %5285, i8* %21, align 1
  %5286 = xor i32 %5274, %5269
  %5287 = xor i32 %5286, %5275
  %5288 = lshr i32 %5287, 4
  %5289 = trunc i32 %5288 to i8
  %5290 = and i8 %5289, 1
  store i8 %5290, i8* %27, align 1
  %5291 = icmp eq i32 %5275, 0
  %5292 = zext i1 %5291 to i8
  store i8 %5292, i8* %30, align 1
  %5293 = lshr i32 %5275, 31
  %5294 = trunc i32 %5293 to i8
  store i8 %5294, i8* %33, align 1
  %5295 = lshr i32 %5269, 31
  %5296 = lshr i32 %5274, 31
  %5297 = xor i32 %5293, %5295
  %5298 = xor i32 %5293, %5296
  %5299 = add nuw nsw i32 %5297, %5298
  %5300 = icmp eq i32 %5299, 2
  %5301 = zext i1 %5300 to i8
  store i8 %5301, i8* %39, align 1
  %5302 = sext i32 %5275 to i64
  store i64 %5302, i64* %RDX.i2114.pre-phi, align 8
  %5303 = shl nsw i64 %5302, 3
  %5304 = add i64 %5265, %5303
  %5305 = add i64 %4783, 67
  store i64 %5305, i64* %3, align 8
  %5306 = inttoptr i64 %5304 to i16**
  %5307 = load i16*, i16** %5306, align 8
  %5308 = add i64 %4783, 72
  store i64 %5308, i64* %3, align 8
  store i16 0, i16* %5307, align 2
  %5309 = load i64, i64* %3, align 8
  %5310 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5310, i64* %RAX.i778, align 8
  %5311 = add i64 %5310, 6504
  %5312 = add i64 %5309, 15
  store i64 %5312, i64* %3, align 8
  %5313 = inttoptr i64 %5311 to i64*
  %5314 = load i64, i64* %5313, align 8
  store i64 %5314, i64* %RAX.i778, align 8
  %5315 = add i64 %5314, 8
  %5316 = add i64 %5309, 19
  store i64 %5316, i64* %3, align 8
  %5317 = inttoptr i64 %5315 to i64*
  %5318 = load i64, i64* %5317, align 8
  store i64 %5318, i64* %RAX.i778, align 8
  %5319 = load i64, i64* %RBP.i, align 8
  %5320 = add i64 %5319, -20
  %5321 = add i64 %5309, 22
  store i64 %5321, i64* %3, align 8
  %5322 = inttoptr i64 %5320 to i32*
  %5323 = load i32, i32* %5322, align 4
  %5324 = zext i32 %5323 to i64
  store i64 %5324, i64* %RCX.i2230, align 8
  %5325 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5325, i64* %RDX.i2114.pre-phi, align 8
  %5326 = add i64 %5325, 144
  %5327 = add i64 %5309, 36
  store i64 %5327, i64* %3, align 8
  %5328 = inttoptr i64 %5326 to i32*
  %5329 = load i32, i32* %5328, align 4
  %5330 = add i32 %5329, %5323
  %5331 = zext i32 %5330 to i64
  store i64 %5331, i64* %RCX.i2230, align 8
  %5332 = icmp ult i32 %5330, %5323
  %5333 = icmp ult i32 %5330, %5329
  %5334 = or i1 %5332, %5333
  %5335 = zext i1 %5334 to i8
  store i8 %5335, i8* %14, align 1
  %5336 = and i32 %5330, 255
  %5337 = tail call i32 @llvm.ctpop.i32(i32 %5336)
  %5338 = trunc i32 %5337 to i8
  %5339 = and i8 %5338, 1
  %5340 = xor i8 %5339, 1
  store i8 %5340, i8* %21, align 1
  %5341 = xor i32 %5329, %5323
  %5342 = xor i32 %5341, %5330
  %5343 = lshr i32 %5342, 4
  %5344 = trunc i32 %5343 to i8
  %5345 = and i8 %5344, 1
  store i8 %5345, i8* %27, align 1
  %5346 = icmp eq i32 %5330, 0
  %5347 = zext i1 %5346 to i8
  store i8 %5347, i8* %30, align 1
  %5348 = lshr i32 %5330, 31
  %5349 = trunc i32 %5348 to i8
  store i8 %5349, i8* %33, align 1
  %5350 = lshr i32 %5323, 31
  %5351 = lshr i32 %5329, 31
  %5352 = xor i32 %5348, %5350
  %5353 = xor i32 %5348, %5351
  %5354 = add nuw nsw i32 %5352, %5353
  %5355 = icmp eq i32 %5354, 2
  %5356 = zext i1 %5355 to i8
  store i8 %5356, i8* %39, align 1
  %5357 = sext i32 %5330 to i64
  store i64 %5357, i64* %RDX.i2114.pre-phi, align 8
  %5358 = shl nsw i64 %5357, 3
  %5359 = add i64 %5318, %5358
  %5360 = add i64 %5309, 43
  store i64 %5360, i64* %3, align 8
  %5361 = inttoptr i64 %5359 to i64*
  %5362 = load i64, i64* %5361, align 8
  store i64 %5362, i64* %RAX.i778, align 8
  %5363 = add i64 %5319, -24
  %5364 = add i64 %5309, 46
  store i64 %5364, i64* %3, align 8
  %5365 = inttoptr i64 %5363 to i32*
  %5366 = load i32, i32* %5365, align 4
  %5367 = zext i32 %5366 to i64
  store i64 %5367, i64* %RCX.i2230, align 8
  store i64 %5325, i64* %RDX.i2114.pre-phi, align 8
  %5368 = add i64 %5325, 148
  %5369 = add i64 %5309, 60
  store i64 %5369, i64* %3, align 8
  %5370 = inttoptr i64 %5368 to i32*
  %5371 = load i32, i32* %5370, align 4
  %5372 = add i32 %5371, %5366
  %5373 = zext i32 %5372 to i64
  store i64 %5373, i64* %RCX.i2230, align 8
  %5374 = icmp ult i32 %5372, %5366
  %5375 = icmp ult i32 %5372, %5371
  %5376 = or i1 %5374, %5375
  %5377 = zext i1 %5376 to i8
  store i8 %5377, i8* %14, align 1
  %5378 = and i32 %5372, 255
  %5379 = tail call i32 @llvm.ctpop.i32(i32 %5378)
  %5380 = trunc i32 %5379 to i8
  %5381 = and i8 %5380, 1
  %5382 = xor i8 %5381, 1
  store i8 %5382, i8* %21, align 1
  %5383 = xor i32 %5371, %5366
  %5384 = xor i32 %5383, %5372
  %5385 = lshr i32 %5384, 4
  %5386 = trunc i32 %5385 to i8
  %5387 = and i8 %5386, 1
  store i8 %5387, i8* %27, align 1
  %5388 = icmp eq i32 %5372, 0
  %5389 = zext i1 %5388 to i8
  store i8 %5389, i8* %30, align 1
  %5390 = lshr i32 %5372, 31
  %5391 = trunc i32 %5390 to i8
  store i8 %5391, i8* %33, align 1
  %5392 = lshr i32 %5366, 31
  %5393 = lshr i32 %5371, 31
  %5394 = xor i32 %5390, %5392
  %5395 = xor i32 %5390, %5393
  %5396 = add nuw nsw i32 %5394, %5395
  %5397 = icmp eq i32 %5396, 2
  %5398 = zext i1 %5397 to i8
  store i8 %5398, i8* %39, align 1
  %5399 = sext i32 %5372 to i64
  store i64 %5399, i64* %RDX.i2114.pre-phi, align 8
  %5400 = shl nsw i64 %5399, 3
  %5401 = add i64 %5362, %5400
  %5402 = add i64 %5309, 67
  store i64 %5402, i64* %3, align 8
  %5403 = inttoptr i64 %5401 to i64*
  %5404 = load i64, i64* %5403, align 8
  store i64 %5404, i64* %RAX.i778, align 8
  %5405 = add i64 %5404, 2
  %5406 = add i64 %5309, 73
  store i64 %5406, i64* %3, align 8
  %5407 = inttoptr i64 %5405 to i16*
  store i16 0, i16* %5407, align 2
  %.pre136 = load i64, i64* %3, align 8
  br label %block_.L_431013

block_.L_431013:                                  ; preds = %block_.L_430f82, %block_430e3d
  %5408 = phi i64 [ %.pre136, %block_.L_430f82 ], [ %5213, %block_430e3d ]
  %5409 = add i64 %5408, 5
  store i64 %5409, i64* %3, align 8
  %.pre137 = load i64, i64* %RBP.i, align 8
  br label %block_.L_431018

block_.L_431018:                                  ; preds = %block_.L_431013, %block_.L_430e29
  %5410 = phi i64 [ %.pre137, %block_.L_431013 ], [ %4755, %block_.L_430e29 ]
  %5411 = phi i64 [ %5409, %block_.L_431013 ], [ %4769, %block_.L_430e29 ]
  %5412 = add i64 %5410, -20
  %5413 = add i64 %5411, 8
  store i64 %5413, i64* %3, align 8
  %5414 = inttoptr i64 %5412 to i32*
  %5415 = load i32, i32* %5414, align 4
  %5416 = add i32 %5415, 1
  %5417 = zext i32 %5416 to i64
  store i64 %5417, i64* %RAX.i778, align 8
  %5418 = icmp eq i32 %5415, -1
  %5419 = icmp eq i32 %5416, 0
  %5420 = or i1 %5418, %5419
  %5421 = zext i1 %5420 to i8
  store i8 %5421, i8* %14, align 1
  %5422 = and i32 %5416, 255
  %5423 = tail call i32 @llvm.ctpop.i32(i32 %5422)
  %5424 = trunc i32 %5423 to i8
  %5425 = and i8 %5424, 1
  %5426 = xor i8 %5425, 1
  store i8 %5426, i8* %21, align 1
  %5427 = xor i32 %5416, %5415
  %5428 = lshr i32 %5427, 4
  %5429 = trunc i32 %5428 to i8
  %5430 = and i8 %5429, 1
  store i8 %5430, i8* %27, align 1
  %5431 = zext i1 %5419 to i8
  store i8 %5431, i8* %30, align 1
  %5432 = lshr i32 %5416, 31
  %5433 = trunc i32 %5432 to i8
  store i8 %5433, i8* %33, align 1
  %5434 = lshr i32 %5415, 31
  %5435 = xor i32 %5432, %5434
  %5436 = add nuw nsw i32 %5435, %5432
  %5437 = icmp eq i32 %5436, 2
  %5438 = zext i1 %5437 to i8
  store i8 %5438, i8* %39, align 1
  %5439 = add i64 %5411, 14
  store i64 %5439, i64* %3, align 8
  store i32 %5416, i32* %5414, align 4
  %5440 = load i64, i64* %3, align 8
  %5441 = add i64 %5440, -1084
  store i64 %5441, i64* %3, align 8
  br label %block_.L_430bea

block_.L_43102b:                                  ; preds = %block_.L_430bea
  %5442 = add i64 %3823, -24
  %5443 = add i64 %3851, 8
  store i64 %5443, i64* %3, align 8
  %5444 = inttoptr i64 %5442 to i32*
  %5445 = load i32, i32* %5444, align 4
  %5446 = add i32 %5445, 1
  %5447 = zext i32 %5446 to i64
  store i64 %5447, i64* %RAX.i778, align 8
  %5448 = icmp eq i32 %5445, -1
  %5449 = icmp eq i32 %5446, 0
  %5450 = or i1 %5448, %5449
  %5451 = zext i1 %5450 to i8
  store i8 %5451, i8* %14, align 1
  %5452 = and i32 %5446, 255
  %5453 = tail call i32 @llvm.ctpop.i32(i32 %5452)
  %5454 = trunc i32 %5453 to i8
  %5455 = and i8 %5454, 1
  %5456 = xor i8 %5455, 1
  store i8 %5456, i8* %21, align 1
  %5457 = xor i32 %5446, %5445
  %5458 = lshr i32 %5457, 4
  %5459 = trunc i32 %5458 to i8
  %5460 = and i8 %5459, 1
  store i8 %5460, i8* %27, align 1
  %5461 = zext i1 %5449 to i8
  store i8 %5461, i8* %30, align 1
  %5462 = lshr i32 %5446, 31
  %5463 = trunc i32 %5462 to i8
  store i8 %5463, i8* %33, align 1
  %5464 = lshr i32 %5445, 31
  %5465 = xor i32 %5462, %5464
  %5466 = add nuw nsw i32 %5465, %5462
  %5467 = icmp eq i32 %5466, 2
  %5468 = zext i1 %5467 to i8
  store i8 %5468, i8* %39, align 1
  %5469 = add i64 %3851, 14
  store i64 %5469, i64* %3, align 8
  store i32 %5446, i32* %5444, align 4
  %5470 = load i64, i64* %3, align 8
  %5471 = add i64 %5470, -1120
  store i64 %5471, i64* %3, align 8
  br label %block_.L_430bd9

block_.L_43103e:                                  ; preds = %block_.L_430bd9
  %5472 = add i64 %3818, 380
  br label %block_.L_4311ba

block_.L_431043:                                  ; preds = %block_430bc4, %block_430bb6, %block_430ba3
  %5473 = phi i64 [ %3784, %block_430bc4 ], [ %3756, %block_430bb6 ], [ %3728, %block_430ba3 ]
  %5474 = add i64 %3697, -24
  %5475 = add i64 %5473, 7
  store i64 %5475, i64* %3, align 8
  %5476 = inttoptr i64 %5474 to i32*
  store i32 0, i32* %5476, align 4
  %.pre138 = load i64, i64* %3, align 8
  br label %block_.L_43104a

block_.L_43104a:                                  ; preds = %block_.L_4311a2, %block_.L_431043
  %5477 = phi i64 [ %6001, %block_.L_4311a2 ], [ %.pre138, %block_.L_431043 ]
  %5478 = load i64, i64* %RBP.i, align 8
  %5479 = add i64 %5478, -24
  %5480 = add i64 %5477, 4
  store i64 %5480, i64* %3, align 8
  %5481 = inttoptr i64 %5479 to i32*
  %5482 = load i32, i32* %5481, align 4
  %5483 = add i32 %5482, -4
  %5484 = icmp ult i32 %5482, 4
  %5485 = zext i1 %5484 to i8
  store i8 %5485, i8* %14, align 1
  %5486 = and i32 %5483, 255
  %5487 = tail call i32 @llvm.ctpop.i32(i32 %5486)
  %5488 = trunc i32 %5487 to i8
  %5489 = and i8 %5488, 1
  %5490 = xor i8 %5489, 1
  store i8 %5490, i8* %21, align 1
  %5491 = xor i32 %5483, %5482
  %5492 = lshr i32 %5491, 4
  %5493 = trunc i32 %5492 to i8
  %5494 = and i8 %5493, 1
  store i8 %5494, i8* %27, align 1
  %5495 = icmp eq i32 %5483, 0
  %5496 = zext i1 %5495 to i8
  store i8 %5496, i8* %30, align 1
  %5497 = lshr i32 %5483, 31
  %5498 = trunc i32 %5497 to i8
  store i8 %5498, i8* %33, align 1
  %5499 = lshr i32 %5482, 31
  %5500 = xor i32 %5497, %5499
  %5501 = add nuw nsw i32 %5500, %5499
  %5502 = icmp eq i32 %5501, 2
  %5503 = zext i1 %5502 to i8
  store i8 %5503, i8* %39, align 1
  %5504 = icmp ne i8 %5498, 0
  %5505 = xor i1 %5504, %5502
  %.v189 = select i1 %5505, i64 10, i64 363
  %5506 = add i64 %5477, %.v189
  store i64 %5506, i64* %3, align 8
  br i1 %5505, label %block_431054, label %block_.L_4311b5

block_431054:                                     ; preds = %block_.L_43104a
  %5507 = add i64 %5478, -20
  %5508 = add i64 %5506, 7
  store i64 %5508, i64* %3, align 8
  %5509 = inttoptr i64 %5507 to i32*
  store i32 0, i32* %5509, align 4
  %.pre139 = load i64, i64* %3, align 8
  br label %block_.L_43105b

block_.L_43105b:                                  ; preds = %block_.L_43118f, %block_431054
  %5510 = phi i64 [ %5971, %block_.L_43118f ], [ %.pre139, %block_431054 ]
  %5511 = load i64, i64* %RBP.i, align 8
  %5512 = add i64 %5511, -20
  %5513 = add i64 %5510, 4
  store i64 %5513, i64* %3, align 8
  %5514 = inttoptr i64 %5512 to i32*
  %5515 = load i32, i32* %5514, align 4
  %5516 = add i32 %5515, -4
  %5517 = icmp ult i32 %5515, 4
  %5518 = zext i1 %5517 to i8
  store i8 %5518, i8* %14, align 1
  %5519 = and i32 %5516, 255
  %5520 = tail call i32 @llvm.ctpop.i32(i32 %5519)
  %5521 = trunc i32 %5520 to i8
  %5522 = and i8 %5521, 1
  %5523 = xor i8 %5522, 1
  store i8 %5523, i8* %21, align 1
  %5524 = xor i32 %5516, %5515
  %5525 = lshr i32 %5524, 4
  %5526 = trunc i32 %5525 to i8
  %5527 = and i8 %5526, 1
  store i8 %5527, i8* %27, align 1
  %5528 = icmp eq i32 %5516, 0
  %5529 = zext i1 %5528 to i8
  store i8 %5529, i8* %30, align 1
  %5530 = lshr i32 %5516, 31
  %5531 = trunc i32 %5530 to i8
  store i8 %5531, i8* %33, align 1
  %5532 = lshr i32 %5515, 31
  %5533 = xor i32 %5530, %5532
  %5534 = add nuw nsw i32 %5533, %5532
  %5535 = icmp eq i32 %5534, 2
  %5536 = zext i1 %5535 to i8
  store i8 %5536, i8* %39, align 1
  %5537 = icmp ne i8 %5531, 0
  %5538 = xor i1 %5537, %5535
  %.v = select i1 %5538, i64 10, i64 327
  %5539 = add i64 %5510, %.v
  store i64 %5539, i64* %3, align 8
  br i1 %5538, label %block_431065, label %block_.L_4311a2

block_431065:                                     ; preds = %block_.L_43105b
  %5540 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5540, i64* %RAX.i778, align 8
  %5541 = add i64 %5540, 6504
  %5542 = add i64 %5539, 15
  store i64 %5542, i64* %3, align 8
  %5543 = inttoptr i64 %5541 to i64*
  %5544 = load i64, i64* %5543, align 8
  store i64 %5544, i64* %RAX.i778, align 8
  %5545 = add i64 %5539, 18
  store i64 %5545, i64* %3, align 8
  %5546 = inttoptr i64 %5544 to i64*
  %5547 = load i64, i64* %5546, align 8
  store i64 %5547, i64* %RAX.i778, align 8
  %5548 = add i64 %5539, 21
  store i64 %5548, i64* %3, align 8
  %5549 = load i32, i32* %5514, align 4
  %5550 = zext i32 %5549 to i64
  store i64 %5550, i64* %RCX.i2230, align 8
  %5551 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5551, i64* %RDX.i2114.pre-phi, align 8
  %5552 = add i64 %5551, 144
  %5553 = add i64 %5539, 35
  store i64 %5553, i64* %3, align 8
  %5554 = inttoptr i64 %5552 to i32*
  %5555 = load i32, i32* %5554, align 4
  %5556 = add i32 %5555, %5549
  %5557 = zext i32 %5556 to i64
  store i64 %5557, i64* %RCX.i2230, align 8
  %5558 = icmp ult i32 %5556, %5549
  %5559 = icmp ult i32 %5556, %5555
  %5560 = or i1 %5558, %5559
  %5561 = zext i1 %5560 to i8
  store i8 %5561, i8* %14, align 1
  %5562 = and i32 %5556, 255
  %5563 = tail call i32 @llvm.ctpop.i32(i32 %5562)
  %5564 = trunc i32 %5563 to i8
  %5565 = and i8 %5564, 1
  %5566 = xor i8 %5565, 1
  store i8 %5566, i8* %21, align 1
  %5567 = xor i32 %5555, %5549
  %5568 = xor i32 %5567, %5556
  %5569 = lshr i32 %5568, 4
  %5570 = trunc i32 %5569 to i8
  %5571 = and i8 %5570, 1
  store i8 %5571, i8* %27, align 1
  %5572 = icmp eq i32 %5556, 0
  %5573 = zext i1 %5572 to i8
  store i8 %5573, i8* %30, align 1
  %5574 = lshr i32 %5556, 31
  %5575 = trunc i32 %5574 to i8
  store i8 %5575, i8* %33, align 1
  %5576 = lshr i32 %5549, 31
  %5577 = lshr i32 %5555, 31
  %5578 = xor i32 %5574, %5576
  %5579 = xor i32 %5574, %5577
  %5580 = add nuw nsw i32 %5578, %5579
  %5581 = icmp eq i32 %5580, 2
  %5582 = zext i1 %5581 to i8
  store i8 %5582, i8* %39, align 1
  %5583 = sext i32 %5556 to i64
  store i64 %5583, i64* %RDX.i2114.pre-phi, align 8
  %5584 = shl nsw i64 %5583, 3
  %5585 = add i64 %5547, %5584
  %5586 = add i64 %5539, 42
  store i64 %5586, i64* %3, align 8
  %5587 = inttoptr i64 %5585 to i64*
  %5588 = load i64, i64* %5587, align 8
  store i64 %5588, i64* %RAX.i778, align 8
  %5589 = add i64 %5511, -24
  %5590 = add i64 %5539, 45
  store i64 %5590, i64* %3, align 8
  %5591 = inttoptr i64 %5589 to i32*
  %5592 = load i32, i32* %5591, align 4
  %5593 = zext i32 %5592 to i64
  store i64 %5593, i64* %RCX.i2230, align 8
  store i64 %5551, i64* %RDX.i2114.pre-phi, align 8
  %5594 = add i64 %5551, 148
  %5595 = add i64 %5539, 59
  store i64 %5595, i64* %3, align 8
  %5596 = inttoptr i64 %5594 to i32*
  %5597 = load i32, i32* %5596, align 4
  %5598 = add i32 %5597, %5592
  %5599 = zext i32 %5598 to i64
  store i64 %5599, i64* %RCX.i2230, align 8
  %5600 = icmp ult i32 %5598, %5592
  %5601 = icmp ult i32 %5598, %5597
  %5602 = or i1 %5600, %5601
  %5603 = zext i1 %5602 to i8
  store i8 %5603, i8* %14, align 1
  %5604 = and i32 %5598, 255
  %5605 = tail call i32 @llvm.ctpop.i32(i32 %5604)
  %5606 = trunc i32 %5605 to i8
  %5607 = and i8 %5606, 1
  %5608 = xor i8 %5607, 1
  store i8 %5608, i8* %21, align 1
  %5609 = xor i32 %5597, %5592
  %5610 = xor i32 %5609, %5598
  %5611 = lshr i32 %5610, 4
  %5612 = trunc i32 %5611 to i8
  %5613 = and i8 %5612, 1
  store i8 %5613, i8* %27, align 1
  %5614 = icmp eq i32 %5598, 0
  %5615 = zext i1 %5614 to i8
  store i8 %5615, i8* %30, align 1
  %5616 = lshr i32 %5598, 31
  %5617 = trunc i32 %5616 to i8
  store i8 %5617, i8* %33, align 1
  %5618 = lshr i32 %5592, 31
  %5619 = lshr i32 %5597, 31
  %5620 = xor i32 %5616, %5618
  %5621 = xor i32 %5616, %5619
  %5622 = add nuw nsw i32 %5620, %5621
  %5623 = icmp eq i32 %5622, 2
  %5624 = zext i1 %5623 to i8
  store i8 %5624, i8* %39, align 1
  %5625 = sext i32 %5598 to i64
  store i64 %5625, i64* %RDX.i2114.pre-phi, align 8
  %5626 = shl nsw i64 %5625, 3
  %5627 = add i64 %5588, %5626
  %5628 = add i64 %5539, 66
  store i64 %5628, i64* %3, align 8
  %5629 = inttoptr i64 %5627 to i16**
  %5630 = load i16*, i16** %5629, align 8
  %5631 = add i64 %5539, 71
  store i64 %5631, i64* %3, align 8
  store i16 0, i16* %5630, align 2
  %5632 = load i64, i64* %3, align 8
  %5633 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5633, i64* %RAX.i778, align 8
  %5634 = add i64 %5633, 6504
  %5635 = add i64 %5632, 15
  store i64 %5635, i64* %3, align 8
  %5636 = inttoptr i64 %5634 to i64*
  %5637 = load i64, i64* %5636, align 8
  store i64 %5637, i64* %RAX.i778, align 8
  %5638 = add i64 %5632, 18
  store i64 %5638, i64* %3, align 8
  %5639 = inttoptr i64 %5637 to i64*
  %5640 = load i64, i64* %5639, align 8
  store i64 %5640, i64* %RAX.i778, align 8
  %5641 = load i64, i64* %RBP.i, align 8
  %5642 = add i64 %5641, -20
  %5643 = add i64 %5632, 21
  store i64 %5643, i64* %3, align 8
  %5644 = inttoptr i64 %5642 to i32*
  %5645 = load i32, i32* %5644, align 4
  %5646 = zext i32 %5645 to i64
  store i64 %5646, i64* %RCX.i2230, align 8
  %5647 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5647, i64* %RDX.i2114.pre-phi, align 8
  %5648 = add i64 %5647, 144
  %5649 = add i64 %5632, 35
  store i64 %5649, i64* %3, align 8
  %5650 = inttoptr i64 %5648 to i32*
  %5651 = load i32, i32* %5650, align 4
  %5652 = add i32 %5651, %5645
  %5653 = zext i32 %5652 to i64
  store i64 %5653, i64* %RCX.i2230, align 8
  %5654 = icmp ult i32 %5652, %5645
  %5655 = icmp ult i32 %5652, %5651
  %5656 = or i1 %5654, %5655
  %5657 = zext i1 %5656 to i8
  store i8 %5657, i8* %14, align 1
  %5658 = and i32 %5652, 255
  %5659 = tail call i32 @llvm.ctpop.i32(i32 %5658)
  %5660 = trunc i32 %5659 to i8
  %5661 = and i8 %5660, 1
  %5662 = xor i8 %5661, 1
  store i8 %5662, i8* %21, align 1
  %5663 = xor i32 %5651, %5645
  %5664 = xor i32 %5663, %5652
  %5665 = lshr i32 %5664, 4
  %5666 = trunc i32 %5665 to i8
  %5667 = and i8 %5666, 1
  store i8 %5667, i8* %27, align 1
  %5668 = icmp eq i32 %5652, 0
  %5669 = zext i1 %5668 to i8
  store i8 %5669, i8* %30, align 1
  %5670 = lshr i32 %5652, 31
  %5671 = trunc i32 %5670 to i8
  store i8 %5671, i8* %33, align 1
  %5672 = lshr i32 %5645, 31
  %5673 = lshr i32 %5651, 31
  %5674 = xor i32 %5670, %5672
  %5675 = xor i32 %5670, %5673
  %5676 = add nuw nsw i32 %5674, %5675
  %5677 = icmp eq i32 %5676, 2
  %5678 = zext i1 %5677 to i8
  store i8 %5678, i8* %39, align 1
  %5679 = sext i32 %5652 to i64
  store i64 %5679, i64* %RDX.i2114.pre-phi, align 8
  %5680 = shl nsw i64 %5679, 3
  %5681 = add i64 %5640, %5680
  %5682 = add i64 %5632, 42
  store i64 %5682, i64* %3, align 8
  %5683 = inttoptr i64 %5681 to i64*
  %5684 = load i64, i64* %5683, align 8
  store i64 %5684, i64* %RAX.i778, align 8
  %5685 = add i64 %5641, -24
  %5686 = add i64 %5632, 45
  store i64 %5686, i64* %3, align 8
  %5687 = inttoptr i64 %5685 to i32*
  %5688 = load i32, i32* %5687, align 4
  %5689 = zext i32 %5688 to i64
  store i64 %5689, i64* %RCX.i2230, align 8
  store i64 %5647, i64* %RDX.i2114.pre-phi, align 8
  %5690 = add i64 %5647, 148
  %5691 = add i64 %5632, 59
  store i64 %5691, i64* %3, align 8
  %5692 = inttoptr i64 %5690 to i32*
  %5693 = load i32, i32* %5692, align 4
  %5694 = add i32 %5693, %5688
  %5695 = zext i32 %5694 to i64
  store i64 %5695, i64* %RCX.i2230, align 8
  %5696 = icmp ult i32 %5694, %5688
  %5697 = icmp ult i32 %5694, %5693
  %5698 = or i1 %5696, %5697
  %5699 = zext i1 %5698 to i8
  store i8 %5699, i8* %14, align 1
  %5700 = and i32 %5694, 255
  %5701 = tail call i32 @llvm.ctpop.i32(i32 %5700)
  %5702 = trunc i32 %5701 to i8
  %5703 = and i8 %5702, 1
  %5704 = xor i8 %5703, 1
  store i8 %5704, i8* %21, align 1
  %5705 = xor i32 %5693, %5688
  %5706 = xor i32 %5705, %5694
  %5707 = lshr i32 %5706, 4
  %5708 = trunc i32 %5707 to i8
  %5709 = and i8 %5708, 1
  store i8 %5709, i8* %27, align 1
  %5710 = icmp eq i32 %5694, 0
  %5711 = zext i1 %5710 to i8
  store i8 %5711, i8* %30, align 1
  %5712 = lshr i32 %5694, 31
  %5713 = trunc i32 %5712 to i8
  store i8 %5713, i8* %33, align 1
  %5714 = lshr i32 %5688, 31
  %5715 = lshr i32 %5693, 31
  %5716 = xor i32 %5712, %5714
  %5717 = xor i32 %5712, %5715
  %5718 = add nuw nsw i32 %5716, %5717
  %5719 = icmp eq i32 %5718, 2
  %5720 = zext i1 %5719 to i8
  store i8 %5720, i8* %39, align 1
  %5721 = sext i32 %5694 to i64
  store i64 %5721, i64* %RDX.i2114.pre-phi, align 8
  %5722 = shl nsw i64 %5721, 3
  %5723 = add i64 %5684, %5722
  %5724 = add i64 %5632, 66
  store i64 %5724, i64* %3, align 8
  %5725 = inttoptr i64 %5723 to i64*
  %5726 = load i64, i64* %5725, align 8
  store i64 %5726, i64* %RAX.i778, align 8
  %5727 = add i64 %5726, 2
  %5728 = add i64 %5632, 72
  store i64 %5728, i64* %3, align 8
  %5729 = inttoptr i64 %5727 to i16*
  store i16 0, i16* %5729, align 2
  %5730 = load i64, i64* %RBP.i, align 8
  %5731 = add i64 %5730, -36
  %5732 = load i64, i64* %3, align 8
  %5733 = add i64 %5732, 4
  store i64 %5733, i64* %3, align 8
  %5734 = inttoptr i64 %5731 to i32*
  %5735 = load i32, i32* %5734, align 4
  store i8 0, i8* %14, align 1
  %5736 = and i32 %5735, 255
  %5737 = tail call i32 @llvm.ctpop.i32(i32 %5736)
  %5738 = trunc i32 %5737 to i8
  %5739 = and i8 %5738, 1
  %5740 = xor i8 %5739, 1
  store i8 %5740, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5741 = icmp eq i32 %5735, 0
  %5742 = zext i1 %5741 to i8
  store i8 %5742, i8* %30, align 1
  %5743 = lshr i32 %5735, 31
  %5744 = trunc i32 %5743 to i8
  store i8 %5744, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v190 = select i1 %5741, i64 155, i64 10
  %5745 = add i64 %5732, %.v190
  store i64 %5745, i64* %3, align 8
  br i1 %5741, label %block_.L_43118f, label %block_4310fe

block_4310fe:                                     ; preds = %block_431065
  %5746 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5746, i64* %RAX.i778, align 8
  %5747 = add i64 %5746, 6504
  %5748 = add i64 %5745, 15
  store i64 %5748, i64* %3, align 8
  %5749 = inttoptr i64 %5747 to i64*
  %5750 = load i64, i64* %5749, align 8
  store i64 %5750, i64* %RAX.i778, align 8
  %5751 = add i64 %5750, 8
  %5752 = add i64 %5745, 19
  store i64 %5752, i64* %3, align 8
  %5753 = inttoptr i64 %5751 to i64*
  %5754 = load i64, i64* %5753, align 8
  store i64 %5754, i64* %RAX.i778, align 8
  %5755 = add i64 %5730, -20
  %5756 = add i64 %5745, 22
  store i64 %5756, i64* %3, align 8
  %5757 = inttoptr i64 %5755 to i32*
  %5758 = load i32, i32* %5757, align 4
  %5759 = zext i32 %5758 to i64
  store i64 %5759, i64* %RCX.i2230, align 8
  %5760 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5760, i64* %RDX.i2114.pre-phi, align 8
  %5761 = add i64 %5760, 144
  %5762 = add i64 %5745, 36
  store i64 %5762, i64* %3, align 8
  %5763 = inttoptr i64 %5761 to i32*
  %5764 = load i32, i32* %5763, align 4
  %5765 = add i32 %5764, %5758
  %5766 = zext i32 %5765 to i64
  store i64 %5766, i64* %RCX.i2230, align 8
  %5767 = icmp ult i32 %5765, %5758
  %5768 = icmp ult i32 %5765, %5764
  %5769 = or i1 %5767, %5768
  %5770 = zext i1 %5769 to i8
  store i8 %5770, i8* %14, align 1
  %5771 = and i32 %5765, 255
  %5772 = tail call i32 @llvm.ctpop.i32(i32 %5771)
  %5773 = trunc i32 %5772 to i8
  %5774 = and i8 %5773, 1
  %5775 = xor i8 %5774, 1
  store i8 %5775, i8* %21, align 1
  %5776 = xor i32 %5764, %5758
  %5777 = xor i32 %5776, %5765
  %5778 = lshr i32 %5777, 4
  %5779 = trunc i32 %5778 to i8
  %5780 = and i8 %5779, 1
  store i8 %5780, i8* %27, align 1
  %5781 = icmp eq i32 %5765, 0
  %5782 = zext i1 %5781 to i8
  store i8 %5782, i8* %30, align 1
  %5783 = lshr i32 %5765, 31
  %5784 = trunc i32 %5783 to i8
  store i8 %5784, i8* %33, align 1
  %5785 = lshr i32 %5758, 31
  %5786 = lshr i32 %5764, 31
  %5787 = xor i32 %5783, %5785
  %5788 = xor i32 %5783, %5786
  %5789 = add nuw nsw i32 %5787, %5788
  %5790 = icmp eq i32 %5789, 2
  %5791 = zext i1 %5790 to i8
  store i8 %5791, i8* %39, align 1
  %5792 = sext i32 %5765 to i64
  store i64 %5792, i64* %RDX.i2114.pre-phi, align 8
  %5793 = shl nsw i64 %5792, 3
  %5794 = add i64 %5754, %5793
  %5795 = add i64 %5745, 43
  store i64 %5795, i64* %3, align 8
  %5796 = inttoptr i64 %5794 to i64*
  %5797 = load i64, i64* %5796, align 8
  store i64 %5797, i64* %RAX.i778, align 8
  %5798 = add i64 %5730, -24
  %5799 = add i64 %5745, 46
  store i64 %5799, i64* %3, align 8
  %5800 = inttoptr i64 %5798 to i32*
  %5801 = load i32, i32* %5800, align 4
  %5802 = zext i32 %5801 to i64
  store i64 %5802, i64* %RCX.i2230, align 8
  store i64 %5760, i64* %RDX.i2114.pre-phi, align 8
  %5803 = add i64 %5760, 148
  %5804 = add i64 %5745, 60
  store i64 %5804, i64* %3, align 8
  %5805 = inttoptr i64 %5803 to i32*
  %5806 = load i32, i32* %5805, align 4
  %5807 = add i32 %5806, %5801
  %5808 = zext i32 %5807 to i64
  store i64 %5808, i64* %RCX.i2230, align 8
  %5809 = icmp ult i32 %5807, %5801
  %5810 = icmp ult i32 %5807, %5806
  %5811 = or i1 %5809, %5810
  %5812 = zext i1 %5811 to i8
  store i8 %5812, i8* %14, align 1
  %5813 = and i32 %5807, 255
  %5814 = tail call i32 @llvm.ctpop.i32(i32 %5813)
  %5815 = trunc i32 %5814 to i8
  %5816 = and i8 %5815, 1
  %5817 = xor i8 %5816, 1
  store i8 %5817, i8* %21, align 1
  %5818 = xor i32 %5806, %5801
  %5819 = xor i32 %5818, %5807
  %5820 = lshr i32 %5819, 4
  %5821 = trunc i32 %5820 to i8
  %5822 = and i8 %5821, 1
  store i8 %5822, i8* %27, align 1
  %5823 = icmp eq i32 %5807, 0
  %5824 = zext i1 %5823 to i8
  store i8 %5824, i8* %30, align 1
  %5825 = lshr i32 %5807, 31
  %5826 = trunc i32 %5825 to i8
  store i8 %5826, i8* %33, align 1
  %5827 = lshr i32 %5801, 31
  %5828 = lshr i32 %5806, 31
  %5829 = xor i32 %5825, %5827
  %5830 = xor i32 %5825, %5828
  %5831 = add nuw nsw i32 %5829, %5830
  %5832 = icmp eq i32 %5831, 2
  %5833 = zext i1 %5832 to i8
  store i8 %5833, i8* %39, align 1
  %5834 = sext i32 %5807 to i64
  store i64 %5834, i64* %RDX.i2114.pre-phi, align 8
  %5835 = shl nsw i64 %5834, 3
  %5836 = add i64 %5797, %5835
  %5837 = add i64 %5745, 67
  store i64 %5837, i64* %3, align 8
  %5838 = inttoptr i64 %5836 to i16**
  %5839 = load i16*, i16** %5838, align 8
  %5840 = add i64 %5745, 72
  store i64 %5840, i64* %3, align 8
  store i16 0, i16* %5839, align 2
  %5841 = load i64, i64* %3, align 8
  %5842 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5842, i64* %RAX.i778, align 8
  %5843 = add i64 %5842, 6504
  %5844 = add i64 %5841, 15
  store i64 %5844, i64* %3, align 8
  %5845 = inttoptr i64 %5843 to i64*
  %5846 = load i64, i64* %5845, align 8
  store i64 %5846, i64* %RAX.i778, align 8
  %5847 = add i64 %5846, 8
  %5848 = add i64 %5841, 19
  store i64 %5848, i64* %3, align 8
  %5849 = inttoptr i64 %5847 to i64*
  %5850 = load i64, i64* %5849, align 8
  store i64 %5850, i64* %RAX.i778, align 8
  %5851 = load i64, i64* %RBP.i, align 8
  %5852 = add i64 %5851, -20
  %5853 = add i64 %5841, 22
  store i64 %5853, i64* %3, align 8
  %5854 = inttoptr i64 %5852 to i32*
  %5855 = load i32, i32* %5854, align 4
  %5856 = zext i32 %5855 to i64
  store i64 %5856, i64* %RCX.i2230, align 8
  %5857 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5857, i64* %RDX.i2114.pre-phi, align 8
  %5858 = add i64 %5857, 144
  %5859 = add i64 %5841, 36
  store i64 %5859, i64* %3, align 8
  %5860 = inttoptr i64 %5858 to i32*
  %5861 = load i32, i32* %5860, align 4
  %5862 = add i32 %5861, %5855
  %5863 = zext i32 %5862 to i64
  store i64 %5863, i64* %RCX.i2230, align 8
  %5864 = icmp ult i32 %5862, %5855
  %5865 = icmp ult i32 %5862, %5861
  %5866 = or i1 %5864, %5865
  %5867 = zext i1 %5866 to i8
  store i8 %5867, i8* %14, align 1
  %5868 = and i32 %5862, 255
  %5869 = tail call i32 @llvm.ctpop.i32(i32 %5868)
  %5870 = trunc i32 %5869 to i8
  %5871 = and i8 %5870, 1
  %5872 = xor i8 %5871, 1
  store i8 %5872, i8* %21, align 1
  %5873 = xor i32 %5861, %5855
  %5874 = xor i32 %5873, %5862
  %5875 = lshr i32 %5874, 4
  %5876 = trunc i32 %5875 to i8
  %5877 = and i8 %5876, 1
  store i8 %5877, i8* %27, align 1
  %5878 = icmp eq i32 %5862, 0
  %5879 = zext i1 %5878 to i8
  store i8 %5879, i8* %30, align 1
  %5880 = lshr i32 %5862, 31
  %5881 = trunc i32 %5880 to i8
  store i8 %5881, i8* %33, align 1
  %5882 = lshr i32 %5855, 31
  %5883 = lshr i32 %5861, 31
  %5884 = xor i32 %5880, %5882
  %5885 = xor i32 %5880, %5883
  %5886 = add nuw nsw i32 %5884, %5885
  %5887 = icmp eq i32 %5886, 2
  %5888 = zext i1 %5887 to i8
  store i8 %5888, i8* %39, align 1
  %5889 = sext i32 %5862 to i64
  store i64 %5889, i64* %RDX.i2114.pre-phi, align 8
  %5890 = shl nsw i64 %5889, 3
  %5891 = add i64 %5850, %5890
  %5892 = add i64 %5841, 43
  store i64 %5892, i64* %3, align 8
  %5893 = inttoptr i64 %5891 to i64*
  %5894 = load i64, i64* %5893, align 8
  store i64 %5894, i64* %RAX.i778, align 8
  %5895 = add i64 %5851, -24
  %5896 = add i64 %5841, 46
  store i64 %5896, i64* %3, align 8
  %5897 = inttoptr i64 %5895 to i32*
  %5898 = load i32, i32* %5897, align 4
  %5899 = zext i32 %5898 to i64
  store i64 %5899, i64* %RCX.i2230, align 8
  store i64 %5857, i64* %RDX.i2114.pre-phi, align 8
  %5900 = add i64 %5857, 148
  %5901 = add i64 %5841, 60
  store i64 %5901, i64* %3, align 8
  %5902 = inttoptr i64 %5900 to i32*
  %5903 = load i32, i32* %5902, align 4
  %5904 = add i32 %5903, %5898
  %5905 = zext i32 %5904 to i64
  store i64 %5905, i64* %RCX.i2230, align 8
  %5906 = icmp ult i32 %5904, %5898
  %5907 = icmp ult i32 %5904, %5903
  %5908 = or i1 %5906, %5907
  %5909 = zext i1 %5908 to i8
  store i8 %5909, i8* %14, align 1
  %5910 = and i32 %5904, 255
  %5911 = tail call i32 @llvm.ctpop.i32(i32 %5910)
  %5912 = trunc i32 %5911 to i8
  %5913 = and i8 %5912, 1
  %5914 = xor i8 %5913, 1
  store i8 %5914, i8* %21, align 1
  %5915 = xor i32 %5903, %5898
  %5916 = xor i32 %5915, %5904
  %5917 = lshr i32 %5916, 4
  %5918 = trunc i32 %5917 to i8
  %5919 = and i8 %5918, 1
  store i8 %5919, i8* %27, align 1
  %5920 = icmp eq i32 %5904, 0
  %5921 = zext i1 %5920 to i8
  store i8 %5921, i8* %30, align 1
  %5922 = lshr i32 %5904, 31
  %5923 = trunc i32 %5922 to i8
  store i8 %5923, i8* %33, align 1
  %5924 = lshr i32 %5898, 31
  %5925 = lshr i32 %5903, 31
  %5926 = xor i32 %5922, %5924
  %5927 = xor i32 %5922, %5925
  %5928 = add nuw nsw i32 %5926, %5927
  %5929 = icmp eq i32 %5928, 2
  %5930 = zext i1 %5929 to i8
  store i8 %5930, i8* %39, align 1
  %5931 = sext i32 %5904 to i64
  store i64 %5931, i64* %RDX.i2114.pre-phi, align 8
  %5932 = shl nsw i64 %5931, 3
  %5933 = add i64 %5894, %5932
  %5934 = add i64 %5841, 67
  store i64 %5934, i64* %3, align 8
  %5935 = inttoptr i64 %5933 to i64*
  %5936 = load i64, i64* %5935, align 8
  store i64 %5936, i64* %RAX.i778, align 8
  %5937 = add i64 %5936, 2
  %5938 = add i64 %5841, 73
  store i64 %5938, i64* %3, align 8
  %5939 = inttoptr i64 %5937 to i16*
  store i16 0, i16* %5939, align 2
  %.pre140 = load i64, i64* %3, align 8
  %.pre141 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43118f

block_.L_43118f:                                  ; preds = %block_4310fe, %block_431065
  %5940 = phi i64 [ %.pre141, %block_4310fe ], [ %5730, %block_431065 ]
  %5941 = phi i64 [ %.pre140, %block_4310fe ], [ %5745, %block_431065 ]
  %5942 = add i64 %5940, -20
  %5943 = add i64 %5941, 8
  store i64 %5943, i64* %3, align 8
  %5944 = inttoptr i64 %5942 to i32*
  %5945 = load i32, i32* %5944, align 4
  %5946 = add i32 %5945, 1
  %5947 = zext i32 %5946 to i64
  store i64 %5947, i64* %RAX.i778, align 8
  %5948 = icmp eq i32 %5945, -1
  %5949 = icmp eq i32 %5946, 0
  %5950 = or i1 %5948, %5949
  %5951 = zext i1 %5950 to i8
  store i8 %5951, i8* %14, align 1
  %5952 = and i32 %5946, 255
  %5953 = tail call i32 @llvm.ctpop.i32(i32 %5952)
  %5954 = trunc i32 %5953 to i8
  %5955 = and i8 %5954, 1
  %5956 = xor i8 %5955, 1
  store i8 %5956, i8* %21, align 1
  %5957 = xor i32 %5946, %5945
  %5958 = lshr i32 %5957, 4
  %5959 = trunc i32 %5958 to i8
  %5960 = and i8 %5959, 1
  store i8 %5960, i8* %27, align 1
  %5961 = zext i1 %5949 to i8
  store i8 %5961, i8* %30, align 1
  %5962 = lshr i32 %5946, 31
  %5963 = trunc i32 %5962 to i8
  store i8 %5963, i8* %33, align 1
  %5964 = lshr i32 %5945, 31
  %5965 = xor i32 %5962, %5964
  %5966 = add nuw nsw i32 %5965, %5962
  %5967 = icmp eq i32 %5966, 2
  %5968 = zext i1 %5967 to i8
  store i8 %5968, i8* %39, align 1
  %5969 = add i64 %5941, 14
  store i64 %5969, i64* %3, align 8
  store i32 %5946, i32* %5944, align 4
  %5970 = load i64, i64* %3, align 8
  %5971 = add i64 %5970, -322
  store i64 %5971, i64* %3, align 8
  br label %block_.L_43105b

block_.L_4311a2:                                  ; preds = %block_.L_43105b
  %5972 = add i64 %5511, -24
  %5973 = add i64 %5539, 8
  store i64 %5973, i64* %3, align 8
  %5974 = inttoptr i64 %5972 to i32*
  %5975 = load i32, i32* %5974, align 4
  %5976 = add i32 %5975, 1
  %5977 = zext i32 %5976 to i64
  store i64 %5977, i64* %RAX.i778, align 8
  %5978 = icmp eq i32 %5975, -1
  %5979 = icmp eq i32 %5976, 0
  %5980 = or i1 %5978, %5979
  %5981 = zext i1 %5980 to i8
  store i8 %5981, i8* %14, align 1
  %5982 = and i32 %5976, 255
  %5983 = tail call i32 @llvm.ctpop.i32(i32 %5982)
  %5984 = trunc i32 %5983 to i8
  %5985 = and i8 %5984, 1
  %5986 = xor i8 %5985, 1
  store i8 %5986, i8* %21, align 1
  %5987 = xor i32 %5976, %5975
  %5988 = lshr i32 %5987, 4
  %5989 = trunc i32 %5988 to i8
  %5990 = and i8 %5989, 1
  store i8 %5990, i8* %27, align 1
  %5991 = zext i1 %5979 to i8
  store i8 %5991, i8* %30, align 1
  %5992 = lshr i32 %5976, 31
  %5993 = trunc i32 %5992 to i8
  store i8 %5993, i8* %33, align 1
  %5994 = lshr i32 %5975, 31
  %5995 = xor i32 %5992, %5994
  %5996 = add nuw nsw i32 %5995, %5992
  %5997 = icmp eq i32 %5996, 2
  %5998 = zext i1 %5997 to i8
  store i8 %5998, i8* %39, align 1
  %5999 = add i64 %5539, 14
  store i64 %5999, i64* %3, align 8
  store i32 %5976, i32* %5974, align 4
  %6000 = load i64, i64* %3, align 8
  %6001 = add i64 %6000, -358
  store i64 %6001, i64* %3, align 8
  br label %block_.L_43104a

block_.L_4311b5:                                  ; preds = %block_.L_43104a
  %6002 = add i64 %5506, 5
  store i64 %6002, i64* %3, align 8
  br label %block_.L_4311ba

block_.L_4311ba:                                  ; preds = %block_.L_4311b5, %block_.L_43103e
  %storemerge52 = phi i64 [ %5472, %block_.L_43103e ], [ %6002, %block_.L_4311b5 ]
  %MEMORY.38 = phi %struct.Memory* [ %MEMORY.29, %block_.L_43103e ], [ %call2_430ba3, %block_.L_4311b5 ]
  %6003 = add i64 %storemerge52, 5
  store i64 %6003, i64* %3, align 8
  br label %block_.L_4311bf

block_.L_4311bf:                                  ; preds = %block_.L_4311ba, %block_.L_430b8e
  %6004 = phi i64 [ %3691, %block_.L_430b8e ], [ %6003, %block_.L_4311ba ]
  %MEMORY.39 = phi %struct.Memory* [ %MEMORY.1, %block_.L_430b8e ], [ %MEMORY.38, %block_.L_4311ba ]
  %6005 = load i64, i64* %6, align 8
  %6006 = add i64 %6005, 80
  store i64 %6006, i64* %6, align 8
  %6007 = icmp ugt i64 %6005, -81
  %6008 = zext i1 %6007 to i8
  store i8 %6008, i8* %14, align 1
  %6009 = trunc i64 %6006 to i32
  %6010 = and i32 %6009, 255
  %6011 = tail call i32 @llvm.ctpop.i32(i32 %6010)
  %6012 = trunc i32 %6011 to i8
  %6013 = and i8 %6012, 1
  %6014 = xor i8 %6013, 1
  store i8 %6014, i8* %21, align 1
  %6015 = xor i64 %6005, 16
  %6016 = xor i64 %6015, %6006
  %6017 = lshr i64 %6016, 4
  %6018 = trunc i64 %6017 to i8
  %6019 = and i8 %6018, 1
  store i8 %6019, i8* %27, align 1
  %6020 = icmp eq i64 %6006, 0
  %6021 = zext i1 %6020 to i8
  store i8 %6021, i8* %30, align 1
  %6022 = lshr i64 %6006, 63
  %6023 = trunc i64 %6022 to i8
  store i8 %6023, i8* %33, align 1
  %6024 = lshr i64 %6005, 63
  %6025 = xor i64 %6022, %6024
  %6026 = add nuw nsw i64 %6025, %6022
  %6027 = icmp eq i64 %6026, 2
  %6028 = zext i1 %6027 to i8
  store i8 %6028, i8* %39, align 1
  %6029 = add i64 %6004, 5
  store i64 %6029, i64* %3, align 8
  %6030 = add i64 %6005, 88
  %6031 = inttoptr i64 %6006 to i64*
  %6032 = load i64, i64* %6031, align 8
  store i64 %6032, i64* %RBP.i, align 8
  store i64 %6030, i64* %6, align 8
  %6033 = add i64 %6004, 6
  store i64 %6033, i64* %3, align 8
  %6034 = inttoptr i64 %6030 to i64*
  %6035 = load i64, i64* %6034, align 8
  store i64 %6035, i64* %3, align 8
  %6036 = add i64 %6005, 96
  store i64 %6036, i64* %6, align 8
  ret %struct.Memory* %MEMORY.39
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
define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 80
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 632
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
define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_sete__dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %DL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %DL, align 1
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
define %struct.Memory* @routine_movzbl__dl___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i8, i8* %DL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72400
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
define %struct.Memory* @routine_je_.L_430146(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 532
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
define %struct.Memory* @routine_movl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_cmovnel__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RSI, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430150(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6d4518___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc98__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 3224
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
define %struct.Memory* @routine_movl_0xc18__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 3096
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
define %struct.Memory* @routine_movl__eax__0x48__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc88__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 3208
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
define %struct.Memory* @routine_movl__eax__0x1cc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 460
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xc90__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 3216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x1d0__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 464
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc1c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 3100
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
define %struct.Memory* @routine_movl__eax__0x244__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 580
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xd00__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 3328
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
define %struct.Memory* @routine_movl__eax__0x11abc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72380
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xd14__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 3348
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
define %struct.Memory* @routine_movl__eax__0x250__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 592
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xd18__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 3352
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
define %struct.Memory* @routine_movl__eax__0x254__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 596
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xd10__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 3344
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
define %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xd04__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 3332
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
define %struct.Memory* @routine_movl__eax__0x20c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 524
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_0x11bf4__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72692
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jge_.L_430338(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_430325(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jge_.L_430312(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x41__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -65
  %10 = icmp ult i32 %8, 65
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
define %struct.Memory* @routine_jge_.L_4302ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6d4518___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xc08__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3080
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3738__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 14136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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
define %struct.Memory* @routine_jmpq_.L_43028b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430304(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43027a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430317(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430269(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43032a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_430246(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_jge_.L_4303eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4303d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x12__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -18
  %10 = icmp ult i32 %8, 18
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
define %struct.Memory* @routine_jge_.L_4303c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xc10__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3088
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3740__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 14144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430361(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4303ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430350(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4303dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43033f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43065a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_jge_.L_430647(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xcc0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3264
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -3265
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
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
  %23 = lshr i64 %3, 60
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw___rax__rcx_2____dx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i16*
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %DX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movl_0x90__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 144
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
define %struct.Memory* @routine_addl_MINUS0x14__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x94__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 148
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
define %struct.Memory* @routine_addl_MINUS0x18__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %DX, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x18___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 24
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -25
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_addl__0x0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967295
  store i64 %7, i64* %RSI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %6, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %6, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %6, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x108___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 264
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1950__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x90__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_movl_0x94__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswq___rcx__rdi_2____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1958__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rcx__rdi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RAX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
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
define %struct.Memory* @routine_je_.L_430634(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -33
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430639(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430403(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43064c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4303f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x10__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -16
  %10 = icmp ult i32 %8, 16
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
define %struct.Memory* @routine_jge_.L_4306fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x10__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -16
  %10 = icmp ult i32 %8, 16
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
define %struct.Memory* @routine_jge_.L_4306ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 8
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -9
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
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
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx___si(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %DX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %SI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x9c__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_0x98__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
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
define %struct.Memory* @routine_movw__si____rax__rcx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %SI, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430672(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4306ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430661(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11bfc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_43083f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x11c08__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 72712
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jge_.L_43083a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x11c04__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 72708
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jge_.L_430827(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x408___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1032
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -1033
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
define %struct.Memory* @routine_movq_0x1940__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xa4__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xa0__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x808___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2056
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -2057
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
define %struct.Memory* @routine_jmpq_.L_430737(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43082c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430719(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43083f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4308a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xc20__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 3104
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x1d8__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 472
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc30__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 3120
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x1e8__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 488
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430846(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xd08__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3336
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
define %struct.Memory* @routine_movl__ecx__0x23c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 572
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_4309af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x94__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 148
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
define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4309aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x90__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 144
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
define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_430997(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xc40__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc48__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 3144
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x14c__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 332
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430909(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43099c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4308dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430b8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x9__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -9
  %10 = icmp ult i32 %8, 9
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
define %struct.Memory* @routine_je_.L_430a85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xd__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -13
  %10 = icmp ult i32 %8, 13
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
define %struct.Memory* @routine_jge_.L_430a80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_430a6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 2, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x14c__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 332
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 2, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430a08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430a72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4309db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430b89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_430a99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_430b84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_430b7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_430b6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_430ade(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430b71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430ab1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430b84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4311bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.copy_motion_vectors_MB(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x9__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -9
  %10 = icmp ult i32 %8, 9
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
define %struct.Memory* @routine_je_.L_431043(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xa__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -10
  %10 = icmp ult i32 %8, 10
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xd__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -13
  %10 = icmp ult i32 %8, 13
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
define %struct.Memory* @routine_jge_.L_43103e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43102b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq__edi___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1d8__rcx__r8_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 472
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movl_0x1e8__rcx__r8_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_je_.L_430d9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xca8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xcc0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3264
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -3265
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
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
  %23 = lshr i64 %3, 60
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movswq___rcx__rdx_2____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movw___rax____si(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i16, i16* %5, align 2
  store i16 %8, i16* %SI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1968__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x90__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq__edi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x94__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 148
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
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
define %struct.Memory* @routine_movw__si____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i16 %6, i16* %5, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_0x2__rax____si(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %SI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si__0x2__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 2
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430e29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x90__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_addl_0x94__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 148
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movw__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  store i16 0, i16* %4, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__0x0__0x2__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  store i16 0, i16* %7, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_431018(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_je_.L_430f82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x20___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -33
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
define %struct.Memory* @routine_jmpq_.L_431013(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_431018(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43101d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430bea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_431030(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430bd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4311ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4311b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4311a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43118f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_431194(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43105b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4311a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43104a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4311bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RSP, align 8
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
