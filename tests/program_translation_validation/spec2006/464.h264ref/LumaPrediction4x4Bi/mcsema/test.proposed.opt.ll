; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6d4690_type = type <{ [8 x i8] }>
%G_0x6d4740_type = type <{ [8 x i8] }>
%G_0x6f9728_type = type <{ [8 x i8] }>
%G_0x70f6d0_type = type <{ [4 x i8] }>
%G_0x70fcf8_type = type <{ [8 x i8] }>
%G_0x7107a0_type = type <{ [4 x i8] }>
%G__0x6cc230_type = type <{ [8 x i8] }>
%G__0x6cc270_type = type <{ [8 x i8] }>
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
@G_0x6d4690 = local_unnamed_addr global %G_0x6d4690_type zeroinitializer
@G_0x6d4740 = local_unnamed_addr global %G_0x6d4740_type zeroinitializer
@G_0x6f9728 = local_unnamed_addr global %G_0x6f9728_type zeroinitializer
@G_0x70f6d0 = local_unnamed_addr global %G_0x70f6d0_type zeroinitializer
@G_0x70fcf8 = local_unnamed_addr global %G_0x70fcf8_type zeroinitializer
@G_0x7107a0 = local_unnamed_addr global %G_0x7107a0_type zeroinitializer
@G__0x6cc230 = global %G__0x6cc230_type zeroinitializer
@G__0x6cc270 = global %G__0x6cc270_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_43d8d0.OneComponentLumaPrediction4x4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43b6b0.clip1a(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @LumaPrediction4x4Bi(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R14.i888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %11 = load i64, i64* %R14.i888, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %RBX.i1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %15 = load i64, i64* %RBX.i1095, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %7, -168
  store i64 %21, i64* %6, align 8
  %22 = icmp ult i64 %18, 144
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = trunc i64 %21 to i32
  %26 = and i32 %25, 255
  %27 = tail call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i64 %18, 16
  %33 = xor i64 %32, %21
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i64 %21, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %21, 63
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i64 %18, 63
  %45 = xor i64 %41, %44
  %46 = add nuw nsw i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX.i1091 = bitcast %union.anon* %50 to i16*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9W.i = bitcast %union.anon* %51 to i16*
  %52 = load i16, i16* %R9W.i, align 2
  store i16 %52, i16* %AX.i1091, align 2
  %R9D.i1088 = bitcast %union.anon* %51 to i32*
  %53 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, 24
  %56 = add i64 %20, 15
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %55 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %53, align 8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W.i1085 = bitcast %union.anon* %60 to i16*
  %61 = add i64 %54, 16
  %62 = add i64 %20, 20
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %61 to i16*
  %64 = load i16, i16* %63, align 2
  store i16 %64, i16* %R10W.i1085, align 2
  %R11.i1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  store i64 ptrtoint (%G__0x6cc270_type* @G__0x6cc270 to i64), i64* %R11.i1083, align 8
  store i64 ptrtoint (%G__0x6cc230_type* @G__0x6cc230 to i64), i64* %RBX.i1095, align 8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %65 to i32*
  %66 = add i64 %54, -20
  %67 = load i32, i32* %EDI.i, align 4
  %68 = add i64 %20, 43
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i32*
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i1076 = bitcast %union.anon* %70 to i32*
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -24
  %73 = load i32, i32* %ESI.i1076, align 4
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 3
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %72 to i32*
  store i32 %73, i32* %76, align 4
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1073 = bitcast %union.anon* %77 to i32*
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -28
  %80 = load i32, i32* %EDX.i1073, align 4
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 3
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %79 to i32*
  store i32 %80, i32* %83, align 4
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i1070 = bitcast %union.anon* %84 to i32*
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -32
  %87 = load i32, i32* %ECX.i1070, align 4
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 3
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %86 to i32*
  store i32 %87, i32* %90, align 4
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1067 = bitcast %union.anon* %91 to i32*
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -36
  %94 = load i32, i32* %R8D.i1067, align 4
  %95 = load i64, i64* %3, align 8
  %96 = add i64 %95, 4
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %93 to i32*
  store i32 %94, i32* %97, align 4
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -38
  %100 = load i16, i16* %AX.i1091, align 2
  %101 = load i64, i64* %3, align 8
  %102 = add i64 %101, 4
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %99 to i16*
  store i16 %100, i16* %103, align 2
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -40
  %106 = load i16, i16* %R10W.i1085, align 2
  %107 = load i64, i64* %3, align 8
  %108 = add i64 %107, 5
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %105 to i16*
  store i16 %106, i16* %109, align 2
  %110 = load i64, i64* %RBP.i, align 8
  %111 = add i64 %110, -44
  %112 = load i32, i32* %R9D.i1088, align 4
  %113 = load i64, i64* %3, align 8
  %114 = add i64 %113, 4
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %111 to i32*
  store i32 %112, i32* %115, align 4
  %RCX.i1056 = getelementptr inbounds %union.anon, %union.anon* %84, i64 0, i32 0
  %116 = load i64, i64* %RBP.i, align 8
  %117 = add i64 %116, -20
  %118 = load i64, i64* %3, align 8
  %119 = add i64 %118, 3
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %117 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = add i32 %121, 4
  %123 = zext i32 %122 to i64
  store i64 %123, i64* %RCX.i1056, align 8
  %124 = icmp ugt i32 %121, -5
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %24, align 1
  %126 = and i32 %122, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126)
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %31, align 1
  %131 = xor i32 %122, %121
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  store i8 %134, i8* %37, align 1
  %135 = icmp eq i32 %122, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %40, align 1
  %137 = lshr i32 %122, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %43, align 1
  %139 = lshr i32 %121, 31
  %140 = xor i32 %137, %139
  %141 = add nuw nsw i32 %140, %137
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %49, align 1
  %144 = add i64 %116, -56
  %145 = add i64 %118, 9
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %144 to i32*
  store i32 %122, i32* %146, align 4
  %147 = load i64, i64* %RBP.i, align 8
  %148 = add i64 %147, -24
  %149 = load i64, i64* %3, align 8
  %150 = add i64 %149, 3
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %148 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = add i32 %152, 4
  %154 = zext i32 %153 to i64
  store i64 %154, i64* %RCX.i1056, align 8
  %155 = icmp ugt i32 %152, -5
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %24, align 1
  %157 = and i32 %153, 255
  %158 = tail call i32 @llvm.ctpop.i32(i32 %157)
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  %161 = xor i8 %160, 1
  store i8 %161, i8* %31, align 1
  %162 = xor i32 %153, %152
  %163 = lshr i32 %162, 4
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  store i8 %165, i8* %37, align 1
  %166 = icmp eq i32 %153, 0
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %40, align 1
  %168 = lshr i32 %153, 31
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %43, align 1
  %170 = lshr i32 %152, 31
  %171 = xor i32 %168, %170
  %172 = add nuw nsw i32 %171, %168
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %49, align 1
  %175 = add i64 %147, -60
  %176 = add i64 %149, 9
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %175 to i32*
  store i32 %153, i32* %177, align 4
  %178 = load i64, i64* %3, align 8
  %179 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %179, i64* %R14.i888, align 8
  %180 = add i64 %179, 168
  %181 = add i64 %178, 15
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RCX.i1056, align 8
  %185 = load i64, i64* %RBP.i, align 8
  %186 = add i64 %185, -20
  %187 = add i64 %178, 18
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %186 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = add i32 %189, %183
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %RCX.i1056, align 8
  %192 = icmp ult i32 %190, %183
  %193 = icmp ult i32 %190, %189
  %194 = or i1 %192, %193
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %24, align 1
  %196 = and i32 %190, 255
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196)
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %31, align 1
  %201 = xor i32 %189, %183
  %202 = xor i32 %201, %190
  %203 = lshr i32 %202, 4
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  store i8 %205, i8* %37, align 1
  %206 = icmp eq i32 %190, 0
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %40, align 1
  %208 = lshr i32 %190, 31
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %43, align 1
  %210 = lshr i32 %183, 31
  %211 = lshr i32 %189, 31
  %212 = xor i32 %208, %210
  %213 = xor i32 %208, %211
  %214 = add nuw nsw i32 %212, %213
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %49, align 1
  %217 = add i64 %185, -64
  %218 = add i64 %178, 21
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i32*
  store i32 %190, i32* %219, align 4
  %220 = load i64, i64* %3, align 8
  %221 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %221, i64* %R14.i888, align 8
  %222 = add i64 %221, 172
  %223 = add i64 %220, 15
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i32*
  %225 = load i32, i32* %224, align 4
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RCX.i1056, align 8
  %227 = load i64, i64* %RBP.i, align 8
  %228 = add i64 %227, -24
  %229 = add i64 %220, 18
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = add i32 %231, %225
  %233 = zext i32 %232 to i64
  store i64 %233, i64* %RCX.i1056, align 8
  %234 = icmp ult i32 %232, %225
  %235 = icmp ult i32 %232, %231
  %236 = or i1 %234, %235
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %24, align 1
  %238 = and i32 %232, 255
  %239 = tail call i32 @llvm.ctpop.i32(i32 %238)
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  store i8 %242, i8* %31, align 1
  %243 = xor i32 %231, %225
  %244 = xor i32 %243, %232
  %245 = lshr i32 %244, 4
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  store i8 %247, i8* %37, align 1
  %248 = icmp eq i32 %232, 0
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %40, align 1
  %250 = lshr i32 %232, 31
  %251 = trunc i32 %250 to i8
  store i8 %251, i8* %43, align 1
  %252 = lshr i32 %225, 31
  %253 = lshr i32 %231, 31
  %254 = xor i32 %250, %252
  %255 = xor i32 %250, %253
  %256 = add nuw nsw i32 %254, %255
  %257 = icmp eq i32 %256, 2
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %49, align 1
  %259 = add i64 %227, -68
  %260 = add i64 %220, 21
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  store i32 %232, i32* %261, align 4
  %262 = load i64, i64* %RBP.i, align 8
  %263 = add i64 %262, -20
  %264 = load i64, i64* %3, align 8
  %265 = add i64 %264, 3
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %263 to i32*
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = ashr i64 %268, 1
  %270 = lshr i64 %269, 1
  %271 = trunc i64 %269 to i8
  %272 = and i8 %271, 1
  %273 = trunc i64 %270 to i32
  %274 = and i64 %270, 4294967295
  store i64 %274, i64* %RCX.i1056, align 8
  store i8 %272, i8* %24, align 1
  %275 = and i32 %273, 255
  %276 = tail call i32 @llvm.ctpop.i32(i32 %275)
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  store i8 %279, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %280 = icmp eq i32 %273, 0
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %40, align 1
  %282 = lshr i64 %269, 32
  %283 = trunc i64 %282 to i8
  %284 = and i8 %283, 1
  store i8 %284, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %285 = add i64 %262, -72
  %286 = trunc i64 %270 to i32
  %287 = add i64 %264, 9
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %285 to i32*
  store i32 %286, i32* %288, align 4
  %289 = load i64, i64* %RBP.i, align 8
  %290 = add i64 %289, -24
  %291 = load i64, i64* %3, align 8
  %292 = add i64 %291, 3
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %290 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = ashr i64 %295, 1
  %297 = lshr i64 %296, 1
  %298 = trunc i64 %296 to i8
  %299 = and i8 %298, 1
  %300 = trunc i64 %297 to i32
  %301 = and i64 %297, 4294967295
  store i64 %301, i64* %RCX.i1056, align 8
  store i8 %299, i8* %24, align 1
  %302 = and i32 %300, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302)
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %307 = icmp eq i32 %300, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %40, align 1
  %309 = lshr i64 %296, 32
  %310 = trunc i64 %309 to i8
  %311 = and i8 %310, 1
  store i8 %311, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %312 = add i64 %289, -76
  %313 = trunc i64 %297 to i32
  %314 = add i64 %291, 9
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %312 to i32*
  store i32 %313, i32* %315, align 4
  %316 = load i64, i64* %RBP.i, align 8
  %317 = add i64 %316, -88
  %318 = load i64, i64* %RBX.i1095, align 8
  %319 = load i64, i64* %3, align 8
  %320 = add i64 %319, 4
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %317 to i64*
  store i64 %318, i64* %321, align 8
  %322 = load i64, i64* %RBP.i, align 8
  %323 = add i64 %322, -96
  %324 = load i64, i64* %R11.i1083, align 8
  %325 = load i64, i64* %3, align 8
  %326 = add i64 %325, 4
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %323 to i64*
  store i64 %324, i64* %327, align 8
  %328 = load i64, i64* %3, align 8
  %329 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %329, i64* %R11.i1083, align 8
  %330 = add i64 %329, 14168
  %331 = add i64 %328, 15
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to i64*
  %333 = load i64, i64* %332, align 8
  store i64 %333, i64* %R11.i1083, align 8
  store i64 %329, i64* %RBX.i1095, align 8
  %334 = add i64 %329, 12
  %335 = add i64 %328, 27
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %334 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = sext i32 %337 to i64
  %339 = mul nsw i64 %338, 632
  store i64 %339, i64* %RBX.i1095, align 8
  %340 = lshr i64 %339, 63
  %341 = add i64 %339, %333
  %342 = icmp ult i64 %341, %333
  %343 = icmp ult i64 %341, %339
  %344 = or i1 %342, %343
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %24, align 1
  %346 = trunc i64 %341 to i32
  %347 = and i32 %346, 255
  %348 = tail call i32 @llvm.ctpop.i32(i32 %347)
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  %351 = xor i8 %350, 1
  store i8 %351, i8* %31, align 1
  %352 = xor i64 %339, %333
  %353 = xor i64 %352, %341
  %354 = lshr i64 %353, 4
  %355 = trunc i64 %354 to i8
  %356 = and i8 %355, 1
  store i8 %356, i8* %37, align 1
  %357 = icmp eq i64 %341, 0
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %40, align 1
  %359 = lshr i64 %341, 63
  %360 = trunc i64 %359 to i8
  store i8 %360, i8* %43, align 1
  %361 = lshr i64 %333, 63
  %362 = xor i64 %359, %361
  %363 = xor i64 %359, %340
  %364 = add nuw nsw i64 %362, %363
  %365 = icmp eq i64 %364, 2
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %49, align 1
  %367 = load i64, i64* %RBP.i, align 8
  %368 = add i64 %367, -104
  %369 = add i64 %328, 41
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i64*
  store i64 %341, i64* %370, align 8
  %371 = load i64, i64* %3, align 8
  %372 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %372, i64* %R11.i1083, align 8
  %373 = add i64 %372, 192
  %374 = add i64 %371, 16
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  store i8 0, i8* %24, align 1
  %377 = and i32 %376, 255
  %378 = tail call i32 @llvm.ctpop.i32(i32 %377)
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = xor i8 %380, 1
  store i8 %381, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %382 = icmp eq i32 %376, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %40, align 1
  %384 = lshr i32 %376, 31
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v99 = select i1 %382, i64 68, i64 22
  %386 = add i64 %371, %.v99
  store i64 %386, i64* %3, align 8
  %.pre89 = bitcast %union.anon* %50 to i8*
  br i1 %382, label %block_.L_43e80f, label %block_43e7e1

block_43e7e1:                                     ; preds = %entry
  store i8 1, i8* %.pre89, align 1
  %387 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %387, i64* %RCX.i1056, align 8
  %388 = add i64 %387, 24
  %389 = add i64 %386, 14
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  store i8 0, i8* %24, align 1
  %392 = and i32 %391, 255
  %393 = tail call i32 @llvm.ctpop.i32(i32 %392)
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  store i8 %396, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %397 = icmp eq i32 %391, 0
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %40, align 1
  %399 = lshr i32 %391, 31
  %400 = trunc i32 %399 to i8
  store i8 %400, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %401 = load i64, i64* %RBP.i, align 8
  %402 = add i64 %401, -121
  %403 = add i64 %386, 17
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i8*
  store i8 1, i8* %404, align 1
  %405 = load i64, i64* %3, align 8
  %406 = load i8, i8* %40, align 1
  %407 = icmp ne i8 %406, 0
  %.v131 = select i1 %407, i64 81, i64 6
  %408 = add i64 %405, %.v131
  store i64 %408, i64* %3, align 8
  %cmpBr_43e7f2 = icmp eq i8 %406, 1
  br i1 %cmpBr_43e7f2, label %block_.L_43e843, label %block_43e7f8

block_43e7f8:                                     ; preds = %block_43e7e1
  store i8 1, i8* %.pre89, align 1
  %409 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %409, i64* %RCX.i1056, align 8
  %410 = add i64 %409, 24
  %411 = add i64 %408, 14
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = add i32 %413, -3
  %415 = icmp ult i32 %413, 3
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %24, align 1
  %417 = and i32 %414, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417)
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %31, align 1
  %422 = xor i32 %414, %413
  %423 = lshr i32 %422, 4
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  store i8 %425, i8* %37, align 1
  %426 = icmp eq i32 %414, 0
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %40, align 1
  %428 = lshr i32 %414, 31
  %429 = trunc i32 %428 to i8
  store i8 %429, i8* %43, align 1
  %430 = lshr i32 %413, 31
  %431 = xor i32 %428, %430
  %432 = add nuw nsw i32 %431, %430
  %433 = icmp eq i32 %432, 2
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %49, align 1
  %435 = load i64, i64* %RBP.i, align 8
  %436 = add i64 %435, -121
  %437 = add i64 %408, 17
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i8*
  store i8 1, i8* %438, align 1
  %439 = load i64, i64* %3, align 8
  %440 = load i8, i8* %40, align 1
  %441 = icmp ne i8 %440, 0
  %.v132 = select i1 %441, i64 58, i64 6
  %442 = add i64 %439, %.v132
  store i64 %442, i64* %3, align 8
  %cmpBr_43e809 = icmp eq i8 %440, 1
  br i1 %cmpBr_43e809, label %block_.L_43e843, label %block_43e7f8.block_.L_43e80f_crit_edge

block_43e7f8.block_.L_43e80f_crit_edge:           ; preds = %block_43e7f8
  %.pre = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  br label %block_.L_43e80f

block_.L_43e80f:                                  ; preds = %entry, %block_43e7f8.block_.L_43e80f_crit_edge
  %443 = phi i64 [ %.pre, %block_43e7f8.block_.L_43e80f_crit_edge ], [ %372, %entry ]
  %444 = phi i64 [ %442, %block_43e7f8.block_.L_43e80f_crit_edge ], [ %386, %entry ]
  %RAX.i957 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  store i64 0, i64* %RAX.i957, align 8
  store i8 0, i8* %24, align 1
  store i8 1, i8* %31, align 1
  store i8 1, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  store i8 0, i8* %37, align 1
  %CL.i954 = bitcast %union.anon* %84 to i8*
  store i8 0, i8* %CL.i954, align 1
  %RDX.i951 = getelementptr inbounds %union.anon, %union.anon* %77, i64 0, i32 0
  store i64 %443, i64* %RDX.i951, align 8
  %445 = add i64 %443, 196
  %446 = add i64 %444, 19
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %445 to i32*
  %448 = load i32, i32* %447, align 4
  store i8 0, i8* %24, align 1
  %449 = and i32 %448, 255
  %450 = tail call i32 @llvm.ctpop.i32(i32 %449)
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  store i8 %453, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %454 = icmp eq i32 %448, 0
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %40, align 1
  %456 = lshr i32 %448, 31
  %457 = trunc i32 %456 to i8
  store i8 %457, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %458 = load i64, i64* %RBP.i, align 8
  %459 = add i64 %458, -122
  %460 = add i64 %444, 22
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i8*
  store i8 0, i8* %461, align 1
  %462 = load i64, i64* %3, align 8
  %463 = load i8, i8* %40, align 1
  %464 = icmp ne i8 %463, 0
  %.v133 = select i1 %464, i64 24, i64 6
  %465 = add i64 %462, %.v133
  store i64 %465, i64* %3, align 8
  %cmpBr_43e825 = icmp eq i8 %463, 1
  br i1 %cmpBr_43e825, label %block_.L_43e83d, label %block_43e82b

block_43e82b:                                     ; preds = %block_.L_43e80f
  %466 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %466, i64* %RAX.i957, align 8
  %467 = add i64 %466, 24
  %468 = add i64 %465, 12
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = add i32 %470, -1
  %472 = icmp eq i32 %470, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %24, align 1
  %474 = and i32 %471, 255
  %475 = tail call i32 @llvm.ctpop.i32(i32 %474)
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = xor i8 %477, 1
  store i8 %478, i8* %31, align 1
  %479 = xor i32 %471, %470
  %480 = lshr i32 %479, 4
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  store i8 %482, i8* %37, align 1
  %483 = icmp eq i32 %471, 0
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %40, align 1
  %485 = lshr i32 %471, 31
  %486 = trunc i32 %485 to i8
  store i8 %486, i8* %43, align 1
  %487 = lshr i32 %470, 31
  %488 = xor i32 %485, %487
  %489 = add nuw nsw i32 %488, %487
  %490 = icmp eq i32 %489, 2
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %49, align 1
  store i8 %484, i8* %CL.i954, align 1
  %492 = load i64, i64* %RBP.i, align 8
  %493 = add i64 %492, -122
  %494 = add i64 %465, 18
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to i8*
  store i8 %484, i8* %495, align 1
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_43e83d

block_.L_43e83d:                                  ; preds = %block_43e82b, %block_.L_43e80f
  %496 = phi i64 [ %.pre61, %block_43e82b ], [ %465, %block_.L_43e80f ]
  %497 = load i64, i64* %RBP.i, align 8
  %498 = add i64 %497, -122
  %499 = add i64 %496, 3
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i8*
  %501 = load i8, i8* %500, align 1
  store i8 %501, i8* %.pre89, align 1
  %502 = add i64 %497, -121
  %503 = add i64 %496, 6
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i8*
  store i8 %501, i8* %504, align 1
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_43e843

block_.L_43e843:                                  ; preds = %block_.L_43e83d, %block_43e7f8, %block_43e7e1
  %505 = phi i64 [ %.pre62, %block_.L_43e83d ], [ %442, %block_43e7f8 ], [ %408, %block_43e7e1 ]
  %506 = load i64, i64* %RBP.i, align 8
  %507 = add i64 %506, -121
  %508 = add i64 %505, 3
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i8*
  %510 = load i8, i8* %509, align 1
  %511 = and i8 %510, 1
  store i8 %511, i8* %.pre89, align 1
  store i8 0, i8* %24, align 1
  %512 = zext i8 %511 to i32
  %513 = tail call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = xor i8 %514, 1
  store i8 %515, i8* %31, align 1
  %516 = xor i8 %511, 1
  store i8 %516, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  store i8 0, i8* %37, align 1
  %517 = zext i8 %511 to i64
  store i64 %517, i64* %RCX.i1056, align 8
  %518 = add i64 %506, -108
  %519 = zext i8 %511 to i32
  %520 = add i64 %505, 11
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %518 to i32*
  store i32 %519, i32* %521, align 4
  %RDX.i918 = getelementptr inbounds %union.anon, %union.anon* %77, i64 0, i32 0
  %522 = load i64, i64* %3, align 8
  %523 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %523, i64* %RDX.i918, align 8
  %524 = add i64 %523, 72400
  %525 = add i64 %522, 15
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i32*
  %527 = load i32, i32* %526, align 4
  store i8 0, i8* %24, align 1
  %528 = and i32 %527, 255
  %529 = tail call i32 @llvm.ctpop.i32(i32 %528)
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  %532 = xor i8 %531, 1
  store i8 %532, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %533 = icmp eq i32 %527, 0
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %40, align 1
  %535 = lshr i32 %527, 31
  %536 = trunc i32 %535 to i8
  store i8 %536, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v100 = select i1 %533, i64 87, i64 21
  %537 = add i64 %522, %.v100
  store i64 %537, i64* %3, align 8
  %RAX.i875.phi.trans.insert = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %.pre68 = load i64, i64* %RBP.i, align 8
  br i1 %533, label %block_.L_43e8a5, label %block_43e863

block_43e863:                                     ; preds = %block_.L_43e843
  %538 = add i64 %.pre68, -104
  %539 = add i64 %537, 4
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i64*
  %541 = load i64, i64* %540, align 8
  store i64 %541, i64* %RAX.i875.phi.trans.insert, align 8
  %542 = add i64 %541, 532
  %543 = add i64 %537, 11
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i32*
  %545 = load i32, i32* %544, align 4
  store i8 0, i8* %24, align 1
  %546 = and i32 %545, 255
  %547 = tail call i32 @llvm.ctpop.i32(i32 %546)
  %548 = trunc i32 %547 to i8
  %549 = and i8 %548, 1
  %550 = xor i8 %549, 1
  store i8 %550, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %551 = icmp eq i32 %545, 0
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %40, align 1
  %553 = lshr i32 %545, 31
  %554 = trunc i32 %553 to i8
  store i8 %554, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v101 = select i1 %551, i64 66, i64 17
  %555 = add i64 %537, %.v101
  store i64 %555, i64* %3, align 8
  br i1 %551, label %block_.L_43e8a5, label %block_43e874

block_43e874:                                     ; preds = %block_43e863
  store i64 2, i64* %RAX.i875.phi.trans.insert, align 8
  store i64 4, i64* %RCX.i1056, align 8
  store i64 %523, i64* %RDX.i918, align 8
  %RSI.i901 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %556 = add i64 %523, 12
  %557 = add i64 %555, 21
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i32*
  %559 = load i32, i32* %558, align 4
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %RSI.i901, align 8
  %561 = add i64 %.pre68, -128
  %562 = add i64 %555, 24
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i32*
  store i32 2, i32* %563, align 4
  %564 = load i32, i32* %ESI.i1076, align 4
  %565 = zext i32 %564 to i64
  %566 = load i64, i64* %3, align 8
  store i64 %565, i64* %RAX.i875.phi.trans.insert, align 8
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %568 = sext i32 %564 to i64
  %569 = lshr i64 %568, 32
  store i64 %569, i64* %567, align 8
  %570 = load i64, i64* %RBP.i, align 8
  %571 = add i64 %570, -128
  %572 = add i64 %566, 6
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = zext i32 %574 to i64
  store i64 %575, i64* %RSI.i901, align 8
  %576 = add i64 %566, 8
  store i64 %576, i64* %3, align 8
  %577 = sext i32 %574 to i64
  %578 = shl nuw i64 %569, 32
  %579 = or i64 %578, %565
  %580 = sdiv i64 %579, %577
  %581 = shl i64 %580, 32
  %582 = ashr exact i64 %581, 32
  %583 = icmp eq i64 %580, %582
  br i1 %583, label %586, label %584

; <label>:584:                                    ; preds = %block_43e874
  %585 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %576, %struct.Memory* %2)
  %.pre63 = load i32, i32* %EDX.i1073, align 4
  %.pre64 = load i64, i64* %3, align 8
  %.pre65 = load i64, i64* %RSI.i901, align 8
  %.pre66 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit886

; <label>:586:                                    ; preds = %block_43e874
  %587 = srem i64 %579, %577
  %588 = and i64 %580, 4294967295
  store i64 %588, i64* %RAX.i875.phi.trans.insert, align 8
  %589 = and i64 %587, 4294967295
  store i64 %589, i64* %RDX.i918, align 8
  store i8 0, i8* %24, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %590 = trunc i64 %587 to i32
  br label %routine_idivl__esi.exit886

routine_idivl__esi.exit886:                       ; preds = %586, %584
  %591 = phi i64 [ %.pre66, %584 ], [ %570, %586 ]
  %592 = phi i64 [ %.pre65, %584 ], [ %575, %586 ]
  %593 = phi i64 [ %.pre64, %584 ], [ %576, %586 ]
  %594 = phi i32 [ %.pre63, %584 ], [ %590, %586 ]
  %595 = phi %struct.Memory* [ %585, %584 ], [ %2, %586 ]
  store i8 0, i8* %24, align 1
  %596 = and i32 %594, 255
  %597 = tail call i32 @llvm.ctpop.i32(i32 %596)
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  store i8 %600, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %601 = icmp eq i32 %594, 0
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %40, align 1
  %603 = lshr i32 %594, 31
  %604 = trunc i32 %603 to i8
  store i8 %604, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %605 = load i32, i32* %ECX.i1070, align 4
  %606 = zext i32 %605 to i64
  %607 = select i1 %601, i64 %592, i64 %606
  %608 = and i64 %607, 4294967295
  store i64 %608, i64* %RSI.i901, align 8
  %609 = add i64 %591, -132
  %610 = trunc i64 %607 to i32
  %611 = add i64 %593, 12
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %609 to i32*
  store i32 %610, i32* %612, align 4
  %613 = load i64, i64* %3, align 8
  %614 = add i64 %613, 18
  br label %block_.L_43e8b2

block_.L_43e8a5:                                  ; preds = %block_.L_43e843, %block_43e863
  %615 = phi i64 [ %555, %block_43e863 ], [ %537, %block_.L_43e843 ]
  store i64 0, i64* %RAX.i875.phi.trans.insert, align 8
  store i8 0, i8* %24, align 1
  store i8 1, i8* %31, align 1
  store i8 1, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  store i8 0, i8* %37, align 1
  %616 = add i64 %.pre68, -132
  %617 = add i64 %615, 8
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to i32*
  store i32 0, i32* %618, align 4
  %619 = load i64, i64* %3, align 8
  %620 = add i64 %619, 5
  store i64 %620, i64* %3, align 8
  br label %block_.L_43e8b2

block_.L_43e8b2:                                  ; preds = %block_.L_43e8a5, %routine_idivl__esi.exit886
  %storemerge = phi i64 [ %620, %block_.L_43e8a5 ], [ %614, %routine_idivl__esi.exit886 ]
  %MEMORY.4 = phi %struct.Memory* [ %2, %block_.L_43e8a5 ], [ %595, %routine_idivl__esi.exit886 ]
  %EAX.i864.pre-phi = bitcast %union.anon* %50 to i32*
  %621 = load i64, i64* %RBP.i, align 8
  %622 = add i64 %621, -132
  %623 = add i64 %storemerge, 6
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %622 to i32*
  %625 = load i32, i32* %624, align 4
  %626 = zext i32 %625 to i64
  store i64 %626, i64* %RAX.i875.phi.trans.insert, align 8
  %627 = add i64 %621, -112
  %628 = add i64 %storemerge, 9
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to i32*
  store i32 %625, i32* %629, align 4
  %630 = load i64, i64* %RBP.i, align 8
  %631 = add i64 %630, -44
  %632 = load i64, i64* %3, align 8
  %633 = add i64 %632, 4
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %631 to i32*
  %635 = load i32, i32* %634, align 4
  store i8 0, i8* %24, align 1
  %636 = and i32 %635, 255
  %637 = tail call i32 @llvm.ctpop.i32(i32 %636)
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  %640 = xor i8 %639, 1
  store i8 %640, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %641 = icmp eq i32 %635, 0
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %40, align 1
  %643 = lshr i32 %635, 31
  %644 = trunc i32 %643 to i8
  store i8 %644, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v102 = select i1 %641, i64 37, i64 10
  %645 = add i64 %632, %.v102
  %646 = add i64 %645, 8
  store i64 %646, i64* %3, align 8
  %647 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %647, i64* %RAX.i875.phi.trans.insert, align 8
  br i1 %641, label %block_.L_43e8e0, label %block_43e8c5

block_43e8c5:                                     ; preds = %block_.L_43e8b2
  %648 = add i64 %647, 71936
  %649 = add i64 %645, 15
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i64*
  %651 = load i64, i64* %650, align 8
  store i64 %651, i64* %RAX.i875.phi.trans.insert, align 8
  %652 = add i64 %630, -144
  %653 = add i64 %645, 22
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to i64*
  store i64 %651, i64* %654, align 8
  %655 = load i64, i64* %3, align 8
  %656 = add i64 %655, 27
  store i64 %656, i64* %3, align 8
  br label %block_.L_43e8f6

block_.L_43e8e0:                                  ; preds = %block_.L_43e8b2
  %657 = add i64 %647, 71944
  %658 = add i64 %645, 15
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i64*
  %660 = load i64, i64* %659, align 8
  store i64 %660, i64* %RAX.i875.phi.trans.insert, align 8
  %661 = add i64 %630, -144
  %662 = add i64 %645, 22
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i64*
  store i64 %660, i64* %663, align 8
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_43e8f6

block_.L_43e8f6:                                  ; preds = %block_.L_43e8e0, %block_43e8c5
  %664 = phi i64 [ %.pre69, %block_.L_43e8e0 ], [ %656, %block_43e8c5 ]
  %665 = load i64, i64* %RBP.i, align 8
  %666 = add i64 %665, -144
  %667 = add i64 %664, 7
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to i64*
  %669 = load i64, i64* %668, align 8
  store i64 %669, i64* %RAX.i875.phi.trans.insert, align 8
  %670 = add i64 %665, -120
  %671 = add i64 %664, 11
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i64*
  store i64 %669, i64* %672, align 8
  %673 = load i64, i64* %RBP.i, align 8
  %674 = add i64 %673, -28
  %675 = load i64, i64* %3, align 8
  %676 = add i64 %675, 4
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %674 to i32*
  %678 = load i32, i32* %677, align 4
  store i8 0, i8* %24, align 1
  %679 = and i32 %678, 255
  %680 = tail call i32 @llvm.ctpop.i32(i32 %679)
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  %683 = xor i8 %682, 1
  store i8 %683, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %684 = icmp eq i32 %678, 0
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %40, align 1
  %686 = lshr i32 %678, 31
  %687 = trunc i32 %686 to i8
  store i8 %687, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v103 = select i1 %684, i64 20, i64 10
  %688 = add i64 %675, %.v103
  store i64 %688, i64* %3, align 8
  br i1 %684, label %block_.L_43e915, label %block_43e90b

block_43e90b:                                     ; preds = %block_.L_43e8f6
  %689 = add i64 %688, 4
  store i64 %689, i64* %3, align 8
  %690 = load i32, i32* %677, align 4
  %691 = add i32 %690, -2
  %692 = icmp ult i32 %690, 2
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %24, align 1
  %694 = and i32 %691, 255
  %695 = tail call i32 @llvm.ctpop.i32(i32 %694)
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  %698 = xor i8 %697, 1
  store i8 %698, i8* %31, align 1
  %699 = xor i32 %691, %690
  %700 = lshr i32 %699, 4
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  store i8 %702, i8* %37, align 1
  %703 = icmp eq i32 %691, 0
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %40, align 1
  %705 = lshr i32 %691, 31
  %706 = trunc i32 %705 to i8
  store i8 %706, i8* %43, align 1
  %707 = lshr i32 %690, 31
  %708 = xor i32 %705, %707
  %709 = add nuw nsw i32 %708, %707
  %710 = icmp eq i32 %709, 2
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %49, align 1
  %.v104 = select i1 %703, i64 10, i64 99
  %712 = add i64 %688, %.v104
  store i64 %712, i64* %3, align 8
  br i1 %703, label %block_.L_43e915, label %block_.L_43e96e

block_.L_43e915:                                  ; preds = %block_43e90b, %block_.L_43e8f6
  %713 = phi i64 [ %712, %block_43e90b ], [ %688, %block_.L_43e8f6 ]
  %RDI.i832 = getelementptr inbounds %union.anon, %union.anon* %65, i64 0, i32 0
  store i64 ptrtoint (%G__0x6cc230_type* @G__0x6cc230 to i64), i64* %RDI.i832, align 8
  %RSI.i829 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %714 = add i64 %673, -64
  %715 = add i64 %713, 13
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i32*
  %717 = load i32, i32* %716, align 4
  %718 = zext i32 %717 to i64
  store i64 %718, i64* %RSI.i829, align 8
  %719 = add i64 %673, -68
  %720 = add i64 %713, 16
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i32*
  %722 = load i32, i32* %721, align 4
  %723 = zext i32 %722 to i64
  store i64 %723, i64* %RDX.i918, align 8
  %724 = add i64 %673, -120
  %725 = add i64 %713, 20
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i64*
  %727 = load i64, i64* %726, align 8
  store i64 %727, i64* %RAX.i875.phi.trans.insert, align 8
  %728 = add i64 %673, -72
  %729 = add i64 %713, 24
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i32*
  %731 = load i32, i32* %730, align 4
  %732 = sext i32 %731 to i64
  store i64 %732, i64* %RCX.i1056, align 8
  %733 = shl nsw i64 %732, 3
  %734 = add i64 %733, %727
  %735 = add i64 %713, 28
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %734 to i64*
  %737 = load i64, i64* %736, align 8
  store i64 %737, i64* %RAX.i875.phi.trans.insert, align 8
  %738 = add i64 %673, -76
  %739 = add i64 %713, 32
  store i64 %739, i64* %3, align 8
  %740 = inttoptr i64 %738 to i32*
  %741 = load i32, i32* %740, align 4
  %742 = sext i32 %741 to i64
  store i64 %742, i64* %RCX.i1056, align 8
  %743 = shl nsw i64 %742, 3
  %744 = add i64 %743, %737
  %745 = add i64 %713, 36
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i64*
  %747 = load i64, i64* %746, align 8
  store i64 %747, i64* %RAX.i875.phi.trans.insert, align 8
  %748 = add i64 %713, 39
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %747 to i64*
  %750 = load i64, i64* %749, align 8
  store i64 %750, i64* %RAX.i875.phi.trans.insert, align 8
  %751 = add i64 %673, -38
  %752 = add i64 %713, 44
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i16*
  %754 = load i16, i16* %753, align 2
  %755 = sext i16 %754 to i64
  store i64 %755, i64* %RCX.i1056, align 8
  %756 = shl nsw i64 %755, 3
  %757 = add i64 %756, %750
  %758 = add i64 %713, 48
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %757 to i64*
  %760 = load i64, i64* %759, align 8
  store i64 %760, i64* %RAX.i875.phi.trans.insert, align 8
  %761 = add i64 %673, -32
  %762 = add i64 %713, 52
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i32*
  %764 = load i32, i32* %763, align 4
  %765 = sext i32 %764 to i64
  store i64 %765, i64* %RCX.i1056, align 8
  %766 = shl nsw i64 %765, 3
  %767 = add i64 %766, %760
  %768 = add i64 %713, 56
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i64*
  %770 = load i64, i64* %769, align 8
  store i64 %770, i64* %RCX.i1056, align 8
  %R8W.i794 = bitcast %union.anon* %91 to i16*
  %771 = add i64 %713, 61
  store i64 %771, i64* %3, align 8
  %772 = load i16, i16* %753, align 2
  store i16 %772, i16* %R8W.i794, align 2
  %773 = add i64 %673, -112
  %774 = add i64 %713, 65
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to i32*
  %776 = load i32, i32* %775, align 4
  %777 = zext i32 %776 to i64
  store i64 %777, i64* %53, align 8
  store i8 0, i8* %24, align 1
  %778 = and i32 %776, 255
  %779 = tail call i32 @llvm.ctpop.i32(i32 %778)
  %780 = trunc i32 %779 to i8
  %781 = and i8 %780, 1
  %782 = xor i8 %781, 1
  store i8 %782, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %783 = icmp eq i32 %776, 0
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %40, align 1
  %785 = lshr i32 %776, 31
  %786 = trunc i32 %785 to i8
  store i8 %786, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %787 = sext i32 %776 to i64
  store i64 %787, i64* %RAX.i875.phi.trans.insert, align 8
  %788 = shl nsw i64 %787, 3
  %789 = add nsw i64 %788, 7482144
  %790 = add i64 %713, 80
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i64*
  %792 = load i64, i64* %791, align 8
  store i64 %792, i64* %53, align 8
  %793 = getelementptr inbounds %union.anon, %union.anon* %91, i64 0, i32 0
  %794 = sext i16 %772 to i64
  %795 = and i64 %794, 4294967295
  store i64 %795, i64* %793, align 8
  %796 = add i64 %713, -4165
  %797 = add i64 %713, 89
  %798 = load i64, i64* %6, align 8
  %799 = add i64 %798, -8
  %800 = inttoptr i64 %799 to i64*
  store i64 %797, i64* %800, align 8
  store i64 %799, i64* %6, align 8
  store i64 %796, i64* %3, align 8
  %call2_43e969 = tail call %struct.Memory* @sub_43d8d0.OneComponentLumaPrediction4x4(%struct.State* nonnull %0, i64 %796, %struct.Memory* %MEMORY.4)
  %.pre70 = load i64, i64* %RBP.i, align 8
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_43e96e

block_.L_43e96e:                                  ; preds = %block_43e90b, %block_.L_43e915
  %801 = phi i64 [ %.pre71, %block_.L_43e915 ], [ %712, %block_43e90b ]
  %802 = phi i64 [ %.pre70, %block_.L_43e915 ], [ %673, %block_43e90b ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_43e969, %block_.L_43e915 ], [ %MEMORY.4, %block_43e90b ]
  %803 = add i64 %802, -28
  %804 = add i64 %801, 4
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  %806 = load i32, i32* %805, align 4
  %807 = add i32 %806, -1
  %808 = icmp eq i32 %806, 0
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %24, align 1
  %810 = and i32 %807, 255
  %811 = tail call i32 @llvm.ctpop.i32(i32 %810)
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  %814 = xor i8 %813, 1
  store i8 %814, i8* %31, align 1
  %815 = xor i32 %807, %806
  %816 = lshr i32 %815, 4
  %817 = trunc i32 %816 to i8
  %818 = and i8 %817, 1
  store i8 %818, i8* %37, align 1
  %819 = icmp eq i32 %807, 0
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %40, align 1
  %821 = lshr i32 %807, 31
  %822 = trunc i32 %821 to i8
  store i8 %822, i8* %43, align 1
  %823 = lshr i32 %806, 31
  %824 = xor i32 %821, %823
  %825 = add nuw nsw i32 %824, %823
  %826 = icmp eq i32 %825, 2
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %49, align 1
  %.v105 = select i1 %819, i64 20, i64 10
  %828 = add i64 %801, %.v105
  store i64 %828, i64* %3, align 8
  br i1 %819, label %block_.L_43e982, label %block_43e978

block_43e978:                                     ; preds = %block_.L_43e96e
  %829 = add i64 %828, 4
  store i64 %829, i64* %3, align 8
  %830 = load i32, i32* %805, align 4
  %831 = add i32 %830, -2
  %832 = icmp ult i32 %830, 2
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %24, align 1
  %834 = and i32 %831, 255
  %835 = tail call i32 @llvm.ctpop.i32(i32 %834)
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  %838 = xor i8 %837, 1
  store i8 %838, i8* %31, align 1
  %839 = xor i32 %831, %830
  %840 = lshr i32 %839, 4
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  store i8 %842, i8* %37, align 1
  %843 = icmp eq i32 %831, 0
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %40, align 1
  %845 = lshr i32 %831, 31
  %846 = trunc i32 %845 to i8
  store i8 %846, i8* %43, align 1
  %847 = lshr i32 %830, 31
  %848 = xor i32 %845, %847
  %849 = add nuw nsw i32 %848, %847
  %850 = icmp eq i32 %849, 2
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %49, align 1
  %.v106 = select i1 %843, i64 10, i64 100
  %852 = add i64 %828, %.v106
  store i64 %852, i64* %3, align 8
  br i1 %843, label %block_.L_43e982, label %block_.L_43e9dc

block_.L_43e982:                                  ; preds = %block_43e978, %block_.L_43e96e
  %853 = phi i64 [ %852, %block_43e978 ], [ %828, %block_.L_43e96e ]
  %RDI.i771 = getelementptr inbounds %union.anon, %union.anon* %65, i64 0, i32 0
  store i64 ptrtoint (%G__0x6cc270_type* @G__0x6cc270 to i64), i64* %RDI.i771, align 8
  %RSI.i768 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %854 = add i64 %802, -64
  %855 = add i64 %853, 13
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %854 to i32*
  %857 = load i32, i32* %856, align 4
  %858 = zext i32 %857 to i64
  store i64 %858, i64* %RSI.i768, align 8
  %859 = add i64 %802, -68
  %860 = add i64 %853, 16
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i32*
  %862 = load i32, i32* %861, align 4
  %863 = zext i32 %862 to i64
  store i64 %863, i64* %RDX.i918, align 8
  %864 = add i64 %802, -120
  %865 = add i64 %853, 20
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i64*
  %867 = load i64, i64* %866, align 8
  store i64 %867, i64* %RAX.i875.phi.trans.insert, align 8
  %868 = add i64 %802, -72
  %869 = add i64 %853, 24
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to i32*
  %871 = load i32, i32* %870, align 4
  %872 = sext i32 %871 to i64
  store i64 %872, i64* %RCX.i1056, align 8
  %873 = shl nsw i64 %872, 3
  %874 = add i64 %873, %867
  %875 = add i64 %853, 28
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i64*
  %877 = load i64, i64* %876, align 8
  store i64 %877, i64* %RAX.i875.phi.trans.insert, align 8
  %878 = add i64 %802, -76
  %879 = add i64 %853, 32
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = sext i32 %881 to i64
  store i64 %882, i64* %RCX.i1056, align 8
  %883 = shl nsw i64 %882, 3
  %884 = add i64 %883, %877
  %885 = add i64 %853, 36
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %884 to i64*
  %887 = load i64, i64* %886, align 8
  store i64 %887, i64* %RAX.i875.phi.trans.insert, align 8
  %888 = add i64 %887, 8
  %889 = add i64 %853, 40
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %888 to i64*
  %891 = load i64, i64* %890, align 8
  store i64 %891, i64* %RAX.i875.phi.trans.insert, align 8
  %892 = add i64 %802, -40
  %893 = add i64 %853, 45
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i16*
  %895 = load i16, i16* %894, align 2
  %896 = sext i16 %895 to i64
  store i64 %896, i64* %RCX.i1056, align 8
  %897 = shl nsw i64 %896, 3
  %898 = add i64 %897, %891
  %899 = add i64 %853, 49
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i64*
  %901 = load i64, i64* %900, align 8
  store i64 %901, i64* %RAX.i875.phi.trans.insert, align 8
  %902 = add i64 %802, -36
  %903 = add i64 %853, 53
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i32*
  %905 = load i32, i32* %904, align 4
  %906 = sext i32 %905 to i64
  store i64 %906, i64* %RCX.i1056, align 8
  %907 = shl nsw i64 %906, 3
  %908 = add i64 %907, %901
  %909 = add i64 %853, 57
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i64*
  %911 = load i64, i64* %910, align 8
  store i64 %911, i64* %RCX.i1056, align 8
  %R8W.i733 = bitcast %union.anon* %91 to i16*
  %912 = add i64 %853, 62
  store i64 %912, i64* %3, align 8
  %913 = load i16, i16* %894, align 2
  store i16 %913, i16* %R8W.i733, align 2
  %914 = add i64 %802, -112
  %915 = add i64 %853, 66
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i32*
  %917 = load i32, i32* %916, align 4
  %918 = add i32 %917, 1
  %919 = zext i32 %918 to i64
  store i64 %919, i64* %53, align 8
  %920 = icmp eq i32 %917, -1
  %921 = icmp eq i32 %918, 0
  %922 = or i1 %920, %921
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %24, align 1
  %924 = and i32 %918, 255
  %925 = tail call i32 @llvm.ctpop.i32(i32 %924)
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  %928 = xor i8 %927, 1
  store i8 %928, i8* %31, align 1
  %929 = xor i32 %918, %917
  %930 = lshr i32 %929, 4
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  store i8 %932, i8* %37, align 1
  %933 = zext i1 %921 to i8
  store i8 %933, i8* %40, align 1
  %934 = lshr i32 %918, 31
  %935 = trunc i32 %934 to i8
  store i8 %935, i8* %43, align 1
  %936 = lshr i32 %917, 31
  %937 = xor i32 %934, %936
  %938 = add nuw nsw i32 %937, %934
  %939 = icmp eq i32 %938, 2
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %49, align 1
  %941 = sext i32 %918 to i64
  store i64 %941, i64* %RAX.i875.phi.trans.insert, align 8
  %942 = shl nsw i64 %941, 3
  %943 = add nsw i64 %942, 7482144
  %944 = add i64 %853, 81
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i64*
  %946 = load i64, i64* %945, align 8
  store i64 %946, i64* %53, align 8
  %947 = getelementptr inbounds %union.anon, %union.anon* %91, i64 0, i32 0
  %948 = sext i16 %913 to i64
  %949 = and i64 %948, 4294967295
  store i64 %949, i64* %947, align 8
  %950 = add i64 %853, -4274
  %951 = add i64 %853, 90
  %952 = load i64, i64* %6, align 8
  %953 = add i64 %952, -8
  %954 = inttoptr i64 %953 to i64*
  store i64 %951, i64* %954, align 8
  store i64 %953, i64* %6, align 8
  store i64 %950, i64* %3, align 8
  %call2_43e9d7 = tail call %struct.Memory* @sub_43d8d0.OneComponentLumaPrediction4x4(%struct.State* nonnull %0, i64 %950, %struct.Memory* %MEMORY.7)
  %.pre72 = load i64, i64* %RBP.i, align 8
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_43e9dc

block_.L_43e9dc:                                  ; preds = %block_43e978, %block_.L_43e982
  %955 = phi i64 [ %.pre73, %block_.L_43e982 ], [ %852, %block_43e978 ]
  %956 = phi i64 [ %.pre72, %block_.L_43e982 ], [ %802, %block_43e978 ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_43e9d7, %block_.L_43e982 ], [ %MEMORY.7, %block_43e978 ]
  %957 = add i64 %956, -108
  %958 = add i64 %955, 4
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %957 to i32*
  %960 = load i32, i32* %959, align 4
  store i8 0, i8* %24, align 1
  %961 = and i32 %960, 255
  %962 = tail call i32 @llvm.ctpop.i32(i32 %961)
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  %965 = xor i8 %964, 1
  store i8 %965, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %966 = icmp eq i32 %960, 0
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %40, align 1
  %968 = lshr i32 %960, 31
  %969 = trunc i32 %968 to i8
  store i8 %969, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v = select i1 %966, i64 738, i64 10
  %970 = add i64 %955, %.v
  %971 = add i64 %956, -28
  %972 = add i64 %970, 4
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i32*
  %974 = load i32, i32* %973, align 4
  %975 = add i32 %974, -2
  %976 = icmp ult i32 %974, 2
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %24, align 1
  %978 = and i32 %975, 255
  %979 = tail call i32 @llvm.ctpop.i32(i32 %978)
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  store i8 %982, i8* %31, align 1
  %983 = xor i32 %975, %974
  %984 = lshr i32 %983, 4
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  store i8 %986, i8* %37, align 1
  %987 = icmp eq i32 %975, 0
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %40, align 1
  %989 = lshr i32 %975, 31
  %990 = trunc i32 %989 to i8
  store i8 %990, i8* %43, align 1
  %991 = lshr i32 %974, 31
  %992 = xor i32 %989, %991
  %993 = add nuw nsw i32 %992, %991
  %994 = icmp eq i32 %993, 2
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %49, align 1
  br i1 %966, label %block_.L_43ecbe, label %block_43e9e6

block_43e9e6:                                     ; preds = %block_.L_43e9dc
  %.v92 = select i1 %987, i64 10, i64 310
  %996 = add i64 %970, %.v92
  store i64 %996, i64* %3, align 8
  br i1 %987, label %block_43e9f0, label %block_.L_43eb1c

block_43e9f0:                                     ; preds = %block_43e9e6
  %997 = add i64 %956, -24
  %998 = add i64 %996, 3
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %997 to i32*
  %1000 = load i32, i32* %999, align 4
  %1001 = zext i32 %1000 to i64
  store i64 %1001, i64* %RAX.i875.phi.trans.insert, align 8
  %1002 = add i64 %956, -52
  %1003 = add i64 %996, 6
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1002 to i32*
  store i32 %1000, i32* %1004, align 4
  %1005 = bitcast %union.anon* %50 to i32**
  %RSI.i637 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %RDI.i594 = getelementptr inbounds %union.anon, %union.anon* %65, i64 0, i32 0
  %R8W.i562 = bitcast %union.anon* %91 to i16*
  %R10.i555 = getelementptr inbounds %union.anon, %union.anon* %60, i64 0, i32 0
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_43e9f6

block_.L_43e9f6:                                  ; preds = %block_.L_43eb04, %block_43e9f0
  %1006 = phi i64 [ %1503, %block_.L_43eb04 ], [ %.pre74, %block_43e9f0 ]
  %1007 = load i64, i64* %RBP.i, align 8
  %1008 = add i64 %1007, -52
  %1009 = add i64 %1006, 3
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1008 to i32*
  %1011 = load i32, i32* %1010, align 4
  %1012 = zext i32 %1011 to i64
  store i64 %1012, i64* %RAX.i875.phi.trans.insert, align 8
  %1013 = add i64 %1007, -60
  %1014 = add i64 %1006, 6
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i32*
  %1016 = load i32, i32* %1015, align 4
  %1017 = sub i32 %1011, %1016
  %1018 = icmp ult i32 %1011, %1016
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %24, align 1
  %1020 = and i32 %1017, 255
  %1021 = tail call i32 @llvm.ctpop.i32(i32 %1020)
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  %1024 = xor i8 %1023, 1
  store i8 %1024, i8* %31, align 1
  %1025 = xor i32 %1016, %1011
  %1026 = xor i32 %1025, %1017
  %1027 = lshr i32 %1026, 4
  %1028 = trunc i32 %1027 to i8
  %1029 = and i8 %1028, 1
  store i8 %1029, i8* %37, align 1
  %1030 = icmp eq i32 %1017, 0
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %40, align 1
  %1032 = lshr i32 %1017, 31
  %1033 = trunc i32 %1032 to i8
  store i8 %1033, i8* %43, align 1
  %1034 = lshr i32 %1011, 31
  %1035 = lshr i32 %1016, 31
  %1036 = xor i32 %1035, %1034
  %1037 = xor i32 %1032, %1034
  %1038 = add nuw nsw i32 %1037, %1036
  %1039 = icmp eq i32 %1038, 2
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %49, align 1
  %1041 = icmp ne i8 %1033, 0
  %1042 = xor i1 %1041, %1039
  %.v109 = select i1 %1042, i64 12, i64 289
  %1043 = add i64 %1006, %.v109
  store i64 %1043, i64* %3, align 8
  br i1 %1042, label %block_43ea02, label %block_.L_43eb17

block_43ea02:                                     ; preds = %block_.L_43e9f6
  %1044 = add i64 %1007, -20
  %1045 = add i64 %1043, 3
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i32*
  %1047 = load i32, i32* %1046, align 4
  %1048 = zext i32 %1047 to i64
  store i64 %1048, i64* %RAX.i875.phi.trans.insert, align 8
  %1049 = add i64 %1007, -48
  %1050 = add i64 %1043, 6
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i32*
  store i32 %1047, i32* %1051, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_43ea08

block_.L_43ea08:                                  ; preds = %routine_sarl__cl___edx.exit603, %block_43ea02
  %1052 = phi i64 [ %1473, %routine_sarl__cl___edx.exit603 ], [ %.pre75, %block_43ea02 ]
  %1053 = load i64, i64* %RBP.i, align 8
  %1054 = add i64 %1053, -48
  %1055 = add i64 %1052, 3
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1054 to i32*
  %1057 = load i32, i32* %1056, align 4
  %1058 = zext i32 %1057 to i64
  store i64 %1058, i64* %RAX.i875.phi.trans.insert, align 8
  %1059 = add i64 %1053, -56
  %1060 = add i64 %1052, 6
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i32*
  %1062 = load i32, i32* %1061, align 4
  %1063 = sub i32 %1057, %1062
  %1064 = icmp ult i32 %1057, %1062
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %24, align 1
  %1066 = and i32 %1063, 255
  %1067 = tail call i32 @llvm.ctpop.i32(i32 %1066)
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  %1070 = xor i8 %1069, 1
  store i8 %1070, i8* %31, align 1
  %1071 = xor i32 %1062, %1057
  %1072 = xor i32 %1071, %1063
  %1073 = lshr i32 %1072, 4
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  store i8 %1075, i8* %37, align 1
  %1076 = icmp eq i32 %1063, 0
  %1077 = zext i1 %1076 to i8
  store i8 %1077, i8* %40, align 1
  %1078 = lshr i32 %1063, 31
  %1079 = trunc i32 %1078 to i8
  store i8 %1079, i8* %43, align 1
  %1080 = lshr i32 %1057, 31
  %1081 = lshr i32 %1062, 31
  %1082 = xor i32 %1081, %1080
  %1083 = xor i32 %1078, %1080
  %1084 = add nuw nsw i32 %1083, %1082
  %1085 = icmp eq i32 %1084, 2
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %49, align 1
  %1087 = icmp ne i8 %1079, 0
  %1088 = xor i1 %1087, %1085
  %.v90 = select i1 %1088, i64 12, i64 252
  %1089 = add i64 %1052, %.v90
  store i64 %1089, i64* %3, align 8
  br i1 %1088, label %block_43ea14, label %block_.L_43eb04

block_43ea14:                                     ; preds = %block_.L_43ea08
  %1090 = load i64, i64* bitcast (%G_0x70fcf8_type* @G_0x70fcf8 to i64*), align 8
  store i64 %1090, i64* %RAX.i875.phi.trans.insert, align 8
  %1091 = add i64 %1089, 11
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1090 to i64*
  %1093 = load i64, i64* %1092, align 8
  store i64 %1093, i64* %RAX.i875.phi.trans.insert, align 8
  %1094 = add i64 %1053, -38
  %1095 = add i64 %1089, 16
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i16*
  %1097 = load i16, i16* %1096, align 2
  %1098 = sext i16 %1097 to i64
  store i64 %1098, i64* %RCX.i1056, align 8
  %1099 = shl nsw i64 %1098, 3
  %1100 = add i64 %1099, %1093
  %1101 = add i64 %1089, 20
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i64*
  %1103 = load i64, i64* %1102, align 8
  store i64 %1103, i64* %RAX.i875.phi.trans.insert, align 8
  %1104 = add i64 %1053, -40
  %1105 = add i64 %1089, 25
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i16*
  %1107 = load i16, i16* %1106, align 2
  %1108 = sext i16 %1107 to i64
  store i64 %1108, i64* %RCX.i1056, align 8
  %1109 = shl nsw i64 %1108, 3
  %1110 = add i64 %1109, %1103
  %1111 = add i64 %1089, 29
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1110 to i64*
  %1113 = load i64, i64* %1112, align 8
  store i64 %1113, i64* %RAX.i875.phi.trans.insert, align 8
  %1114 = add i64 %1089, 31
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1113 to i32*
  %1116 = load i32, i32* %1115, align 4
  %1117 = zext i32 %1116 to i64
  store i64 %1117, i64* %RDX.i918, align 8
  %1118 = add i64 %1053, -88
  %1119 = add i64 %1089, 35
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i64*
  %1121 = load i64, i64* %1120, align 8
  store i64 %1121, i64* %RAX.i875.phi.trans.insert, align 8
  %1122 = add i64 %1121, 4
  store i64 %1122, i64* %RCX.i1056, align 8
  %1123 = icmp ugt i64 %1121, -5
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %24, align 1
  %1125 = trunc i64 %1122 to i32
  %1126 = and i32 %1125, 255
  %1127 = tail call i32 @llvm.ctpop.i32(i32 %1126)
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  store i8 %1130, i8* %31, align 1
  %1131 = xor i64 %1122, %1121
  %1132 = lshr i64 %1131, 4
  %1133 = trunc i64 %1132 to i8
  %1134 = and i8 %1133, 1
  store i8 %1134, i8* %37, align 1
  %1135 = icmp eq i64 %1122, 0
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %40, align 1
  %1137 = lshr i64 %1122, 63
  %1138 = trunc i64 %1137 to i8
  store i8 %1138, i8* %43, align 1
  %1139 = lshr i64 %1121, 63
  %1140 = xor i64 %1137, %1139
  %1141 = add nuw nsw i64 %1140, %1137
  %1142 = icmp eq i64 %1141, 2
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %49, align 1
  %1144 = add i64 %1089, 46
  store i64 %1144, i64* %3, align 8
  store i64 %1122, i64* %1120, align 8
  %1145 = load i64, i64* %RDX.i918, align 8
  %1146 = load i32*, i32** %1005, align 8
  %1147 = load i64, i64* %3, align 8
  %1148 = add i64 %1147, 3
  store i64 %1148, i64* %3, align 8
  %1149 = load i32, i32* %1146, align 4
  %1150 = shl i64 %1145, 32
  %1151 = ashr exact i64 %1150, 32
  %1152 = sext i32 %1149 to i64
  %1153 = mul nsw i64 %1152, %1151
  %1154 = trunc i64 %1153 to i32
  %1155 = and i64 %1153, 4294967295
  store i64 %1155, i64* %RDX.i918, align 8
  %1156 = shl i64 %1153, 32
  %1157 = ashr exact i64 %1156, 32
  %1158 = icmp ne i64 %1157, %1153
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %24, align 1
  %1160 = and i32 %1154, 255
  %1161 = tail call i32 @llvm.ctpop.i32(i32 %1160)
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  %1164 = xor i8 %1163, 1
  store i8 %1164, i8* %31, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %40, align 1
  %1165 = lshr i32 %1154, 31
  %1166 = trunc i32 %1165 to i8
  store i8 %1166, i8* %43, align 1
  store i8 %1159, i8* %49, align 1
  %1167 = load i64, i64* bitcast (%G_0x70fcf8_type* @G_0x70fcf8 to i64*), align 8
  store i64 %1167, i64* %RAX.i875.phi.trans.insert, align 8
  %1168 = add i64 %1167, 8
  %1169 = add i64 %1147, 15
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i64*
  %1171 = load i64, i64* %1170, align 8
  store i64 %1171, i64* %RAX.i875.phi.trans.insert, align 8
  %1172 = load i64, i64* %RBP.i, align 8
  %1173 = add i64 %1172, -38
  %1174 = add i64 %1147, 20
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1173 to i16*
  %1176 = load i16, i16* %1175, align 2
  %1177 = sext i16 %1176 to i64
  store i64 %1177, i64* %RCX.i1056, align 8
  %1178 = shl nsw i64 %1177, 3
  %1179 = add i64 %1178, %1171
  %1180 = add i64 %1147, 24
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i64*
  %1182 = load i64, i64* %1181, align 8
  store i64 %1182, i64* %RAX.i875.phi.trans.insert, align 8
  %1183 = add i64 %1172, -40
  %1184 = add i64 %1147, 29
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i16*
  %1186 = load i16, i16* %1185, align 2
  %1187 = sext i16 %1186 to i64
  store i64 %1187, i64* %RCX.i1056, align 8
  %1188 = shl nsw i64 %1187, 3
  %1189 = add i64 %1188, %1182
  %1190 = add i64 %1147, 33
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i64*
  %1192 = load i64, i64* %1191, align 8
  store i64 %1192, i64* %RAX.i875.phi.trans.insert, align 8
  %1193 = add i64 %1147, 35
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1192 to i32*
  %1195 = load i32, i32* %1194, align 4
  %1196 = zext i32 %1195 to i64
  store i64 %1196, i64* %RSI.i637, align 8
  %1197 = add i64 %1172, -96
  %1198 = add i64 %1147, 39
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1197 to i64*
  %1200 = load i64, i64* %1199, align 8
  store i64 %1200, i64* %RAX.i875.phi.trans.insert, align 8
  %1201 = add i64 %1200, 4
  store i64 %1201, i64* %RCX.i1056, align 8
  %1202 = icmp ugt i64 %1200, -5
  %1203 = zext i1 %1202 to i8
  store i8 %1203, i8* %24, align 1
  %1204 = trunc i64 %1201 to i32
  %1205 = and i32 %1204, 255
  %1206 = tail call i32 @llvm.ctpop.i32(i32 %1205)
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  %1209 = xor i8 %1208, 1
  store i8 %1209, i8* %31, align 1
  %1210 = xor i64 %1201, %1200
  %1211 = lshr i64 %1210, 4
  %1212 = trunc i64 %1211 to i8
  %1213 = and i8 %1212, 1
  store i8 %1213, i8* %37, align 1
  %1214 = icmp eq i64 %1201, 0
  %1215 = zext i1 %1214 to i8
  store i8 %1215, i8* %40, align 1
  %1216 = lshr i64 %1201, 63
  %1217 = trunc i64 %1216 to i8
  store i8 %1217, i8* %43, align 1
  %1218 = lshr i64 %1200, 63
  %1219 = xor i64 %1216, %1218
  %1220 = add nuw nsw i64 %1219, %1216
  %1221 = icmp eq i64 %1220, 2
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %49, align 1
  %1223 = add i64 %1147, 50
  store i64 %1223, i64* %3, align 8
  store i64 %1201, i64* %1199, align 8
  %1224 = load i64, i64* %RSI.i637, align 8
  %1225 = load i32*, i32** %1005, align 8
  %1226 = load i64, i64* %3, align 8
  %1227 = add i64 %1226, 3
  store i64 %1227, i64* %3, align 8
  %1228 = load i32, i32* %1225, align 4
  %1229 = shl i64 %1224, 32
  %1230 = ashr exact i64 %1229, 32
  %1231 = sext i32 %1228 to i64
  %1232 = mul nsw i64 %1231, %1230
  %1233 = load i64, i64* %RDX.i918, align 8
  %1234 = trunc i64 %1232 to i32
  %1235 = trunc i64 %1233 to i32
  %1236 = add i32 %1234, %1235
  %1237 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %1238 = shl i32 %1237, 1
  %1239 = add i32 %1238, %1236
  %1240 = zext i32 %1239 to i64
  store i64 %1240, i64* %RDX.i918, align 8
  %1241 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %1242 = add i32 %1241, 1
  %1243 = zext i32 %1242 to i64
  store i64 %1243, i64* %RSI.i637, align 8
  %1244 = icmp eq i32 %1241, -1
  %1245 = icmp eq i32 %1242, 0
  %1246 = or i1 %1244, %1245
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %24, align 1
  %1248 = and i32 %1242, 255
  %1249 = tail call i32 @llvm.ctpop.i32(i32 %1248)
  %1250 = trunc i32 %1249 to i8
  %1251 = and i8 %1250, 1
  %1252 = xor i8 %1251, 1
  store i8 %1252, i8* %31, align 1
  %1253 = xor i32 %1242, %1241
  %1254 = lshr i32 %1253, 4
  %1255 = trunc i32 %1254 to i8
  %1256 = and i8 %1255, 1
  store i8 %1256, i8* %37, align 1
  %1257 = zext i1 %1245 to i8
  store i8 %1257, i8* %40, align 1
  %1258 = lshr i32 %1242, 31
  %1259 = trunc i32 %1258 to i8
  store i8 %1259, i8* %43, align 1
  %1260 = lshr i32 %1241, 31
  %1261 = xor i32 %1258, %1260
  %1262 = add nuw nsw i32 %1261, %1258
  %1263 = icmp eq i32 %1262, 2
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %49, align 1
  store i64 %1243, i64* %RCX.i1056, align 8
  %1265 = add i64 %1226, 30
  store i64 %1265, i64* %3, align 8
  %1266 = trunc i32 %1242 to i5
  switch i5 %1266, label %1270 [
    i5 0, label %routine_sarl__cl___edx.exit603
    i5 1, label %1267
  ]

; <label>:1267:                                   ; preds = %block_43ea14
  %1268 = shl nuw i64 %1240, 32
  %1269 = ashr i64 %1268, 33
  br label %1277

; <label>:1270:                                   ; preds = %block_43ea14
  %1271 = and i32 %1242, 31
  %1272 = zext i32 %1271 to i64
  %1273 = add nsw i64 %1272, -1
  %1274 = sext i32 %1239 to i64
  %1275 = ashr i64 %1274, %1273
  %1276 = lshr i64 %1275, 1
  br label %1277

; <label>:1277:                                   ; preds = %1270, %1267
  %1278 = phi i64 [ %1276, %1270 ], [ %1269, %1267 ]
  %1279 = phi i64 [ %1275, %1270 ], [ %1240, %1267 ]
  %1280 = trunc i64 %1279 to i8
  %1281 = and i8 %1280, 1
  %1282 = trunc i64 %1278 to i32
  %1283 = and i64 %1278, 4294967295
  store i64 %1283, i64* %RDX.i918, align 8
  store i8 %1281, i8* %24, align 1
  %1284 = and i32 %1282, 255
  %1285 = tail call i32 @llvm.ctpop.i32(i32 %1284)
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  %1288 = xor i8 %1287, 1
  store i8 %1288, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %1289 = icmp eq i32 %1282, 0
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %40, align 1
  %1291 = lshr i32 %1282, 31
  %1292 = trunc i32 %1291 to i8
  store i8 %1292, i8* %43, align 1
  store i8 0, i8* %49, align 1
  br label %routine_sarl__cl___edx.exit603

routine_sarl__cl___edx.exit603:                   ; preds = %1277, %block_43ea14
  %1293 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %1293, i64* %RAX.i875.phi.trans.insert, align 8
  %1294 = add i64 %1226, 41
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i64*
  %1296 = load i64, i64* %1295, align 8
  store i64 %1296, i64* %RAX.i875.phi.trans.insert, align 8
  %1297 = load i64, i64* %RBP.i, align 8
  %1298 = add i64 %1297, -38
  %1299 = add i64 %1226, 46
  store i64 %1299, i64* %3, align 8
  %1300 = inttoptr i64 %1298 to i16*
  %1301 = load i16, i16* %1300, align 2
  %1302 = sext i16 %1301 to i64
  store i64 %1302, i64* %RDI.i594, align 8
  %1303 = shl nsw i64 %1302, 3
  %1304 = add i64 %1303, %1296
  %1305 = add i64 %1226, 50
  store i64 %1305, i64* %3, align 8
  %1306 = inttoptr i64 %1304 to i64*
  %1307 = load i64, i64* %1306, align 8
  store i64 %1307, i64* %RAX.i875.phi.trans.insert, align 8
  %1308 = add i64 %1226, 52
  store i64 %1308, i64* %3, align 8
  %1309 = inttoptr i64 %1307 to i32*
  %1310 = load i32, i32* %1309, align 4
  %1311 = zext i32 %1310 to i64
  store i64 %1311, i64* %RSI.i637, align 8
  store i64 %1293, i64* %RAX.i875.phi.trans.insert, align 8
  %1312 = add i64 %1293, 8
  %1313 = add i64 %1226, 64
  store i64 %1313, i64* %3, align 8
  %1314 = inttoptr i64 %1312 to i64*
  %1315 = load i64, i64* %1314, align 8
  store i64 %1315, i64* %RAX.i875.phi.trans.insert, align 8
  %1316 = add i64 %1297, -40
  %1317 = add i64 %1226, 69
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1316 to i16*
  %1319 = load i16, i16* %1318, align 2
  %1320 = sext i16 %1319 to i64
  store i64 %1320, i64* %RDI.i594, align 8
  %1321 = shl nsw i64 %1320, 3
  %1322 = add i64 %1321, %1315
  %1323 = add i64 %1226, 73
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i64*
  %1325 = load i64, i64* %1324, align 8
  store i64 %1325, i64* %RAX.i875.phi.trans.insert, align 8
  %1326 = add i64 %1226, 75
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1325 to i32*
  %1328 = load i32, i32* %1327, align 4
  %1329 = add i32 %1328, %1310
  %1330 = add i32 %1329, 1
  %1331 = zext i32 %1330 to i64
  %1332 = shl nuw i64 %1331, 32
  %1333 = ashr i64 %1332, 33
  %1334 = and i64 %1333, 4294967295
  store i64 %1334, i64* %RSI.i637, align 8
  %1335 = load i64, i64* %RDX.i918, align 8
  %1336 = trunc i64 %1333 to i32
  %1337 = trunc i64 %1335 to i32
  %1338 = add i32 %1336, %1337
  %1339 = zext i32 %1338 to i64
  store i64 %1339, i64* %RDX.i918, align 8
  %1340 = icmp ult i32 %1338, %1337
  %1341 = icmp ult i32 %1338, %1336
  %1342 = or i1 %1340, %1341
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %24, align 1
  %1344 = and i32 %1338, 255
  %1345 = tail call i32 @llvm.ctpop.i32(i32 %1344)
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  %1348 = xor i8 %1347, 1
  store i8 %1348, i8* %31, align 1
  %1349 = xor i64 %1333, %1335
  %1350 = trunc i64 %1349 to i32
  %1351 = xor i32 %1350, %1338
  %1352 = lshr i32 %1351, 4
  %1353 = trunc i32 %1352 to i8
  %1354 = and i8 %1353, 1
  store i8 %1354, i8* %37, align 1
  %1355 = icmp eq i32 %1338, 0
  %1356 = zext i1 %1355 to i8
  store i8 %1356, i8* %40, align 1
  %1357 = lshr i32 %1338, 31
  %1358 = trunc i32 %1357 to i8
  store i8 %1358, i8* %43, align 1
  %1359 = lshr i32 %1337, 31
  %1360 = lshr i64 %1333, 31
  %1361 = trunc i64 %1360 to i32
  %1362 = and i32 %1361, 1
  %1363 = xor i32 %1357, %1359
  %1364 = xor i32 %1357, %1362
  %1365 = add nuw nsw i32 %1363, %1364
  %1366 = icmp eq i32 %1365, 2
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %49, align 1
  store i64 %1339, i64* %RDI.i594, align 8
  %1368 = add i64 %1226, -13254
  %1369 = add i64 %1226, 89
  %1370 = load i64, i64* %6, align 8
  %1371 = add i64 %1370, -8
  %1372 = inttoptr i64 %1371 to i64*
  store i64 %1369, i64* %1372, align 8
  store i64 %1371, i64* %6, align 8
  store i64 %1368, i64* %3, align 8
  %call2_43eaca = tail call %struct.Memory* @sub_43b6b0.clip1a(%struct.State* nonnull %0, i64 %1368, %struct.Memory* %MEMORY.9)
  %1373 = load i16, i16* %AX.i1091, align 2
  %1374 = load i64, i64* %3, align 8
  store i16 %1373, i16* %R8W.i562, align 2
  %1375 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1376 = add i64 %1375, 12600
  store i64 %1376, i64* %53, align 8
  %1377 = icmp ugt i64 %1375, -12601
  %1378 = zext i1 %1377 to i8
  store i8 %1378, i8* %24, align 1
  %1379 = trunc i64 %1376 to i32
  %1380 = and i32 %1379, 255
  %1381 = tail call i32 @llvm.ctpop.i32(i32 %1380)
  %1382 = trunc i32 %1381 to i8
  %1383 = and i8 %1382, 1
  %1384 = xor i8 %1383, 1
  store i8 %1384, i8* %31, align 1
  %1385 = xor i64 %1375, 16
  %1386 = xor i64 %1385, %1376
  %1387 = lshr i64 %1386, 4
  %1388 = trunc i64 %1387 to i8
  %1389 = and i8 %1388, 1
  store i8 %1389, i8* %37, align 1
  %1390 = icmp eq i64 %1376, 0
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %40, align 1
  %1392 = lshr i64 %1376, 63
  %1393 = trunc i64 %1392 to i8
  store i8 %1393, i8* %43, align 1
  %1394 = lshr i64 %1375, 63
  %1395 = xor i64 %1392, %1394
  %1396 = add nuw nsw i64 %1395, %1392
  %1397 = icmp eq i64 %1396, 2
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %49, align 1
  %1399 = load i64, i64* %RBP.i, align 8
  %1400 = add i64 %1399, -48
  %1401 = add i64 %1374, 23
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1400 to i32*
  %1403 = load i32, i32* %1402, align 4
  %1404 = sext i32 %1403 to i64
  %1405 = shl nsw i64 %1404, 5
  store i64 %1405, i64* %R10.i555, align 8
  %1406 = add i64 %1405, %1376
  store i64 %1406, i64* %53, align 8
  %1407 = icmp ult i64 %1406, %1376
  %1408 = icmp ult i64 %1406, %1405
  %1409 = or i1 %1407, %1408
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %24, align 1
  %1411 = trunc i64 %1406 to i32
  %1412 = and i32 %1411, 255
  %1413 = tail call i32 @llvm.ctpop.i32(i32 %1412)
  %1414 = trunc i32 %1413 to i8
  %1415 = and i8 %1414, 1
  %1416 = xor i8 %1415, 1
  store i8 %1416, i8* %31, align 1
  %1417 = xor i64 %1376, %1406
  %1418 = lshr i64 %1417, 4
  %1419 = trunc i64 %1418 to i8
  %1420 = and i8 %1419, 1
  store i8 %1420, i8* %37, align 1
  %1421 = icmp eq i64 %1406, 0
  %1422 = zext i1 %1421 to i8
  store i8 %1422, i8* %40, align 1
  %1423 = lshr i64 %1406, 63
  %1424 = trunc i64 %1423 to i8
  store i8 %1424, i8* %43, align 1
  %1425 = lshr i64 %1404, 58
  %1426 = and i64 %1425, 1
  %1427 = xor i64 %1423, %1392
  %1428 = xor i64 %1423, %1426
  %1429 = add nuw nsw i64 %1427, %1428
  %1430 = icmp eq i64 %1429, 2
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %49, align 1
  %1432 = add i64 %1399, -52
  %1433 = add i64 %1374, 34
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1432 to i32*
  %1435 = load i32, i32* %1434, align 4
  %1436 = sext i32 %1435 to i64
  store i64 %1436, i64* %R10.i555, align 8
  %1437 = shl nsw i64 %1436, 1
  %1438 = add i64 %1437, %1406
  %1439 = load i16, i16* %R8W.i562, align 2
  %1440 = add i64 %1374, 39
  store i64 %1440, i64* %3, align 8
  %1441 = inttoptr i64 %1438 to i16*
  store i16 %1439, i16* %1441, align 2
  %1442 = load i64, i64* %RBP.i, align 8
  %1443 = add i64 %1442, -48
  %1444 = load i64, i64* %3, align 8
  %1445 = add i64 %1444, 3
  store i64 %1445, i64* %3, align 8
  %1446 = inttoptr i64 %1443 to i32*
  %1447 = load i32, i32* %1446, align 4
  %1448 = add i32 %1447, 1
  %1449 = zext i32 %1448 to i64
  store i64 %1449, i64* %RAX.i875.phi.trans.insert, align 8
  %1450 = icmp eq i32 %1447, -1
  %1451 = icmp eq i32 %1448, 0
  %1452 = or i1 %1450, %1451
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %24, align 1
  %1454 = and i32 %1448, 255
  %1455 = tail call i32 @llvm.ctpop.i32(i32 %1454)
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  %1458 = xor i8 %1457, 1
  store i8 %1458, i8* %31, align 1
  %1459 = xor i32 %1448, %1447
  %1460 = lshr i32 %1459, 4
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  store i8 %1462, i8* %37, align 1
  %1463 = zext i1 %1451 to i8
  store i8 %1463, i8* %40, align 1
  %1464 = lshr i32 %1448, 31
  %1465 = trunc i32 %1464 to i8
  store i8 %1465, i8* %43, align 1
  %1466 = lshr i32 %1447, 31
  %1467 = xor i32 %1464, %1466
  %1468 = add nuw nsw i32 %1467, %1464
  %1469 = icmp eq i32 %1468, 2
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %49, align 1
  %1471 = add i64 %1444, 9
  store i64 %1471, i64* %3, align 8
  store i32 %1448, i32* %1446, align 4
  %1472 = load i64, i64* %3, align 8
  %1473 = add i64 %1472, -247
  store i64 %1473, i64* %3, align 8
  br label %block_.L_43ea08

block_.L_43eb04:                                  ; preds = %block_.L_43ea08
  %1474 = add i64 %1053, -52
  %1475 = add i64 %1089, 8
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i32*
  %1477 = load i32, i32* %1476, align 4
  %1478 = add i32 %1477, 1
  %1479 = zext i32 %1478 to i64
  store i64 %1479, i64* %RAX.i875.phi.trans.insert, align 8
  %1480 = icmp eq i32 %1477, -1
  %1481 = icmp eq i32 %1478, 0
  %1482 = or i1 %1480, %1481
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %24, align 1
  %1484 = and i32 %1478, 255
  %1485 = tail call i32 @llvm.ctpop.i32(i32 %1484)
  %1486 = trunc i32 %1485 to i8
  %1487 = and i8 %1486, 1
  %1488 = xor i8 %1487, 1
  store i8 %1488, i8* %31, align 1
  %1489 = xor i32 %1478, %1477
  %1490 = lshr i32 %1489, 4
  %1491 = trunc i32 %1490 to i8
  %1492 = and i8 %1491, 1
  store i8 %1492, i8* %37, align 1
  %1493 = zext i1 %1481 to i8
  store i8 %1493, i8* %40, align 1
  %1494 = lshr i32 %1478, 31
  %1495 = trunc i32 %1494 to i8
  store i8 %1495, i8* %43, align 1
  %1496 = lshr i32 %1477, 31
  %1497 = xor i32 %1494, %1496
  %1498 = add nuw nsw i32 %1497, %1494
  %1499 = icmp eq i32 %1498, 2
  %1500 = zext i1 %1499 to i8
  store i8 %1500, i8* %49, align 1
  %1501 = add i64 %1089, 14
  store i64 %1501, i64* %3, align 8
  store i32 %1478, i32* %1476, align 4
  %1502 = load i64, i64* %3, align 8
  %1503 = add i64 %1502, -284
  store i64 %1503, i64* %3, align 8
  br label %block_.L_43e9f6

block_.L_43eb17:                                  ; preds = %block_.L_43e9f6
  %1504 = add i64 %1043, 418
  br label %block_.L_43ecb9

block_.L_43eb1c:                                  ; preds = %block_43e9e6
  %1505 = add i64 %996, 4
  store i64 %1505, i64* %3, align 8
  %1506 = load i32, i32* %973, align 4
  store i8 0, i8* %24, align 1
  %1507 = and i32 %1506, 255
  %1508 = tail call i32 @llvm.ctpop.i32(i32 %1507)
  %1509 = trunc i32 %1508 to i8
  %1510 = and i8 %1509, 1
  %1511 = xor i8 %1510, 1
  store i8 %1511, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %1512 = icmp eq i32 %1506, 0
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %40, align 1
  %1514 = lshr i32 %1506, 31
  %1515 = trunc i32 %1514 to i8
  store i8 %1515, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v91 = select i1 %1512, i64 10, i64 208
  %1516 = add i64 %996, %.v91
  %1517 = add i64 %956, -24
  %1518 = add i64 %1516, 3
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1517 to i32*
  %1520 = load i32, i32* %1519, align 4
  %1521 = zext i32 %1520 to i64
  store i64 %1521, i64* %RAX.i875.phi.trans.insert, align 8
  %1522 = add i64 %956, -52
  %1523 = add i64 %1516, 6
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i32*
  store i32 %1520, i32* %1524, align 4
  %1525 = bitcast %union.anon* %50 to i32**
  %RSI.i334 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %65, i64 0, i32 0
  %R8W.i324 = bitcast %union.anon* %91 to i16*
  %.pre76 = load i64, i64* %3, align 8
  br i1 %1512, label %block_.L_43eb2c.preheader, label %block_.L_43ebf2.preheader

block_.L_43ebf2.preheader:                        ; preds = %block_.L_43eb1c
  br label %block_.L_43ebf2

block_.L_43eb2c.preheader:                        ; preds = %block_.L_43eb1c
  br label %block_.L_43eb2c

block_.L_43eb2c:                                  ; preds = %block_.L_43eb2c.preheader, %block_.L_43ebd4
  %1526 = phi i64 [ %1905, %block_.L_43ebd4 ], [ %.pre76, %block_.L_43eb2c.preheader ]
  %1527 = load i64, i64* %RBP.i, align 8
  %1528 = add i64 %1527, -52
  %1529 = add i64 %1526, 3
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1528 to i32*
  %1531 = load i32, i32* %1530, align 4
  %1532 = zext i32 %1531 to i64
  store i64 %1532, i64* %RAX.i875.phi.trans.insert, align 8
  %1533 = add i64 %1527, -60
  %1534 = add i64 %1526, 6
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = sub i32 %1531, %1536
  %1538 = icmp ult i32 %1531, %1536
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %24, align 1
  %1540 = and i32 %1537, 255
  %1541 = tail call i32 @llvm.ctpop.i32(i32 %1540)
  %1542 = trunc i32 %1541 to i8
  %1543 = and i8 %1542, 1
  %1544 = xor i8 %1543, 1
  store i8 %1544, i8* %31, align 1
  %1545 = xor i32 %1536, %1531
  %1546 = xor i32 %1545, %1537
  %1547 = lshr i32 %1546, 4
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  store i8 %1549, i8* %37, align 1
  %1550 = icmp eq i32 %1537, 0
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %40, align 1
  %1552 = lshr i32 %1537, 31
  %1553 = trunc i32 %1552 to i8
  store i8 %1553, i8* %43, align 1
  %1554 = lshr i32 %1531, 31
  %1555 = lshr i32 %1536, 31
  %1556 = xor i32 %1555, %1554
  %1557 = xor i32 %1552, %1554
  %1558 = add nuw nsw i32 %1557, %1556
  %1559 = icmp eq i32 %1558, 2
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %49, align 1
  %1561 = icmp ne i8 %1553, 0
  %1562 = xor i1 %1561, %1559
  %.v108 = select i1 %1562, i64 12, i64 187
  %1563 = add i64 %1526, %.v108
  store i64 %1563, i64* %3, align 8
  br i1 %1562, label %block_43eb38, label %block_.L_43ebe7

block_43eb38:                                     ; preds = %block_.L_43eb2c
  %1564 = add i64 %1527, -20
  %1565 = add i64 %1563, 3
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1564 to i32*
  %1567 = load i32, i32* %1566, align 4
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RAX.i875.phi.trans.insert, align 8
  %1569 = add i64 %1527, -48
  %1570 = add i64 %1563, 6
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1569 to i32*
  store i32 %1567, i32* %1571, align 4
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_43eb3e

block_.L_43eb3e:                                  ; preds = %routine_sarl__cl___edx.exit461, %block_43eb38
  %1572 = phi i64 [ %1875, %routine_sarl__cl___edx.exit461 ], [ %.pre77, %block_43eb38 ]
  %1573 = load i64, i64* %RBP.i, align 8
  %1574 = add i64 %1573, -48
  %1575 = add i64 %1572, 3
  store i64 %1575, i64* %3, align 8
  %1576 = inttoptr i64 %1574 to i32*
  %1577 = load i32, i32* %1576, align 4
  %1578 = zext i32 %1577 to i64
  store i64 %1578, i64* %RAX.i875.phi.trans.insert, align 8
  %1579 = add i64 %1573, -56
  %1580 = add i64 %1572, 6
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = sub i32 %1577, %1582
  %1584 = icmp ult i32 %1577, %1582
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %24, align 1
  %1586 = and i32 %1583, 255
  %1587 = tail call i32 @llvm.ctpop.i32(i32 %1586)
  %1588 = trunc i32 %1587 to i8
  %1589 = and i8 %1588, 1
  %1590 = xor i8 %1589, 1
  store i8 %1590, i8* %31, align 1
  %1591 = xor i32 %1582, %1577
  %1592 = xor i32 %1591, %1583
  %1593 = lshr i32 %1592, 4
  %1594 = trunc i32 %1593 to i8
  %1595 = and i8 %1594, 1
  store i8 %1595, i8* %37, align 1
  %1596 = icmp eq i32 %1583, 0
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %40, align 1
  %1598 = lshr i32 %1583, 31
  %1599 = trunc i32 %1598 to i8
  store i8 %1599, i8* %43, align 1
  %1600 = lshr i32 %1577, 31
  %1601 = lshr i32 %1582, 31
  %1602 = xor i32 %1601, %1600
  %1603 = xor i32 %1598, %1600
  %1604 = add nuw nsw i32 %1603, %1602
  %1605 = icmp eq i32 %1604, 2
  %1606 = zext i1 %1605 to i8
  store i8 %1606, i8* %49, align 1
  %1607 = icmp ne i8 %1599, 0
  %1608 = xor i1 %1607, %1605
  %.v93 = select i1 %1608, i64 12, i64 150
  %1609 = add i64 %1572, %.v93
  store i64 %1609, i64* %3, align 8
  br i1 %1608, label %block_43eb4a, label %block_.L_43ebd4

block_43eb4a:                                     ; preds = %block_.L_43eb3e
  %1610 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %1610, i64* %RAX.i875.phi.trans.insert, align 8
  %1611 = add i64 %1609, 11
  store i64 %1611, i64* %3, align 8
  %1612 = inttoptr i64 %1610 to i64*
  %1613 = load i64, i64* %1612, align 8
  store i64 %1613, i64* %RAX.i875.phi.trans.insert, align 8
  %1614 = add i64 %1573, -38
  %1615 = add i64 %1609, 16
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i16*
  %1617 = load i16, i16* %1616, align 2
  %1618 = sext i16 %1617 to i64
  store i64 %1618, i64* %RCX.i1056, align 8
  %1619 = shl nsw i64 %1618, 3
  %1620 = add i64 %1619, %1613
  %1621 = add i64 %1609, 20
  store i64 %1621, i64* %3, align 8
  %1622 = inttoptr i64 %1620 to i64*
  %1623 = load i64, i64* %1622, align 8
  store i64 %1623, i64* %RAX.i875.phi.trans.insert, align 8
  %1624 = add i64 %1609, 22
  store i64 %1624, i64* %3, align 8
  %1625 = inttoptr i64 %1623 to i32*
  %1626 = load i32, i32* %1625, align 4
  %1627 = zext i32 %1626 to i64
  store i64 %1627, i64* %RDX.i918, align 8
  %1628 = add i64 %1573, -88
  %1629 = add i64 %1609, 26
  store i64 %1629, i64* %3, align 8
  %1630 = inttoptr i64 %1628 to i64*
  %1631 = load i64, i64* %1630, align 8
  store i64 %1631, i64* %RAX.i875.phi.trans.insert, align 8
  %1632 = add i64 %1631, 4
  store i64 %1632, i64* %RCX.i1056, align 8
  %1633 = icmp ugt i64 %1631, -5
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %24, align 1
  %1635 = trunc i64 %1632 to i32
  %1636 = and i32 %1635, 255
  %1637 = tail call i32 @llvm.ctpop.i32(i32 %1636)
  %1638 = trunc i32 %1637 to i8
  %1639 = and i8 %1638, 1
  %1640 = xor i8 %1639, 1
  store i8 %1640, i8* %31, align 1
  %1641 = xor i64 %1632, %1631
  %1642 = lshr i64 %1641, 4
  %1643 = trunc i64 %1642 to i8
  %1644 = and i8 %1643, 1
  store i8 %1644, i8* %37, align 1
  %1645 = icmp eq i64 %1632, 0
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %40, align 1
  %1647 = lshr i64 %1632, 63
  %1648 = trunc i64 %1647 to i8
  store i8 %1648, i8* %43, align 1
  %1649 = lshr i64 %1631, 63
  %1650 = xor i64 %1647, %1649
  %1651 = add nuw nsw i64 %1650, %1647
  %1652 = icmp eq i64 %1651, 2
  %1653 = zext i1 %1652 to i8
  store i8 %1653, i8* %49, align 1
  %1654 = add i64 %1609, 37
  store i64 %1654, i64* %3, align 8
  store i64 %1632, i64* %1630, align 8
  %1655 = load i64, i64* %RDX.i918, align 8
  %1656 = load i32*, i32** %1525, align 8
  %1657 = load i64, i64* %3, align 8
  %1658 = add i64 %1657, 3
  store i64 %1658, i64* %3, align 8
  %1659 = load i32, i32* %1656, align 4
  %1660 = shl i64 %1655, 32
  %1661 = ashr exact i64 %1660, 32
  %1662 = sext i32 %1659 to i64
  %1663 = mul nsw i64 %1662, %1661
  %1664 = trunc i64 %1663 to i32
  %1665 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %1666 = add i32 %1665, %1664
  %1667 = zext i32 %1666 to i64
  store i64 %1667, i64* %RDX.i918, align 8
  %1668 = icmp ult i32 %1666, %1664
  %1669 = icmp ult i32 %1666, %1665
  %1670 = or i1 %1668, %1669
  %1671 = zext i1 %1670 to i8
  store i8 %1671, i8* %24, align 1
  %1672 = and i32 %1666, 255
  %1673 = tail call i32 @llvm.ctpop.i32(i32 %1672)
  %1674 = trunc i32 %1673 to i8
  %1675 = and i8 %1674, 1
  %1676 = xor i8 %1675, 1
  store i8 %1676, i8* %31, align 1
  %1677 = xor i32 %1665, %1664
  %1678 = xor i32 %1677, %1666
  %1679 = lshr i32 %1678, 4
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  store i8 %1681, i8* %37, align 1
  %1682 = icmp eq i32 %1666, 0
  %1683 = zext i1 %1682 to i8
  store i8 %1683, i8* %40, align 1
  %1684 = lshr i32 %1666, 31
  %1685 = trunc i32 %1684 to i8
  store i8 %1685, i8* %43, align 1
  %1686 = lshr i32 %1664, 31
  %1687 = lshr i32 %1665, 31
  %1688 = xor i32 %1684, %1686
  %1689 = xor i32 %1684, %1687
  %1690 = add nuw nsw i32 %1688, %1689
  %1691 = icmp eq i32 %1690, 2
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %49, align 1
  %1693 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %1694 = zext i32 %1693 to i64
  store i64 %1694, i64* %RCX.i1056, align 8
  %1695 = add i64 %1657, 19
  store i64 %1695, i64* %3, align 8
  %1696 = trunc i32 %1693 to i5
  switch i5 %1696, label %1700 [
    i5 0, label %routine_sarl__cl___edx.exit461
    i5 1, label %1697
  ]

; <label>:1697:                                   ; preds = %block_43eb4a
  %1698 = shl nuw i64 %1667, 32
  %1699 = ashr i64 %1698, 33
  br label %1707

; <label>:1700:                                   ; preds = %block_43eb4a
  %1701 = and i32 %1693, 31
  %1702 = zext i32 %1701 to i64
  %1703 = add nsw i64 %1702, -1
  %1704 = sext i32 %1666 to i64
  %1705 = ashr i64 %1704, %1703
  %1706 = lshr i64 %1705, 1
  br label %1707

; <label>:1707:                                   ; preds = %1700, %1697
  %1708 = phi i64 [ %1706, %1700 ], [ %1699, %1697 ]
  %1709 = phi i64 [ %1705, %1700 ], [ %1667, %1697 ]
  %1710 = trunc i64 %1709 to i8
  %1711 = and i8 %1710, 1
  %1712 = trunc i64 %1708 to i32
  %1713 = and i64 %1708, 4294967295
  store i64 %1713, i64* %RDX.i918, align 8
  store i8 %1711, i8* %24, align 1
  %1714 = and i32 %1712, 255
  %1715 = tail call i32 @llvm.ctpop.i32(i32 %1714)
  %1716 = trunc i32 %1715 to i8
  %1717 = and i8 %1716, 1
  %1718 = xor i8 %1717, 1
  store i8 %1718, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %1719 = icmp eq i32 %1712, 0
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %40, align 1
  %1721 = lshr i32 %1712, 31
  %1722 = trunc i32 %1721 to i8
  store i8 %1722, i8* %43, align 1
  store i8 0, i8* %49, align 1
  br label %routine_sarl__cl___edx.exit461

routine_sarl__cl___edx.exit461:                   ; preds = %1707, %block_43eb4a
  %1723 = phi i64 [ %1713, %1707 ], [ %1667, %block_43eb4a ]
  %1724 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %1724, i64* %RAX.i875.phi.trans.insert, align 8
  %1725 = add i64 %1657, 30
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1724 to i64*
  %1727 = load i64, i64* %1726, align 8
  store i64 %1727, i64* %RAX.i875.phi.trans.insert, align 8
  %1728 = load i64, i64* %RBP.i, align 8
  %1729 = add i64 %1728, -38
  %1730 = add i64 %1657, 35
  store i64 %1730, i64* %3, align 8
  %1731 = inttoptr i64 %1729 to i16*
  %1732 = load i16, i16* %1731, align 2
  %1733 = sext i16 %1732 to i64
  store i64 %1733, i64* %RSI.i334, align 8
  %1734 = shl nsw i64 %1733, 3
  %1735 = add i64 %1734, %1727
  %1736 = add i64 %1657, 39
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i64*
  %1738 = load i64, i64* %1737, align 8
  store i64 %1738, i64* %RAX.i875.phi.trans.insert, align 8
  %1739 = add i64 %1657, 41
  store i64 %1739, i64* %3, align 8
  %1740 = trunc i64 %1723 to i32
  %1741 = inttoptr i64 %1738 to i32*
  %1742 = load i32, i32* %1741, align 4
  %1743 = add i32 %1742, %1740
  %1744 = zext i32 %1743 to i64
  store i64 %1744, i64* %RDX.i918, align 8
  %1745 = icmp ult i32 %1743, %1740
  %1746 = icmp ult i32 %1743, %1742
  %1747 = or i1 %1745, %1746
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %24, align 1
  %1749 = and i32 %1743, 255
  %1750 = tail call i32 @llvm.ctpop.i32(i32 %1749)
  %1751 = trunc i32 %1750 to i8
  %1752 = and i8 %1751, 1
  %1753 = xor i8 %1752, 1
  store i8 %1753, i8* %31, align 1
  %1754 = xor i32 %1742, %1740
  %1755 = xor i32 %1754, %1743
  %1756 = lshr i32 %1755, 4
  %1757 = trunc i32 %1756 to i8
  %1758 = and i8 %1757, 1
  store i8 %1758, i8* %37, align 1
  %1759 = icmp eq i32 %1743, 0
  %1760 = zext i1 %1759 to i8
  store i8 %1760, i8* %40, align 1
  %1761 = lshr i32 %1743, 31
  %1762 = trunc i32 %1761 to i8
  store i8 %1762, i8* %43, align 1
  %1763 = lshr i32 %1740, 31
  %1764 = lshr i32 %1742, 31
  %1765 = xor i32 %1761, %1763
  %1766 = xor i32 %1761, %1764
  %1767 = add nuw nsw i32 %1765, %1766
  %1768 = icmp eq i32 %1767, 2
  %1769 = zext i1 %1768 to i8
  store i8 %1769, i8* %49, align 1
  store i64 %1744, i64* %RDI.i, align 8
  %1770 = add i64 %1657, -13503
  %1771 = add i64 %1657, 48
  %1772 = load i64, i64* %6, align 8
  %1773 = add i64 %1772, -8
  %1774 = inttoptr i64 %1773 to i64*
  store i64 %1771, i64* %1774, align 8
  store i64 %1773, i64* %6, align 8
  store i64 %1770, i64* %3, align 8
  %call2_43eb9a = tail call %struct.Memory* @sub_43b6b0.clip1a(%struct.State* nonnull %0, i64 %1770, %struct.Memory* %MEMORY.9)
  %1775 = load i16, i16* %AX.i1091, align 2
  %1776 = load i64, i64* %3, align 8
  store i16 %1775, i16* %R8W.i324, align 2
  %1777 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1778 = add i64 %1777, 12600
  store i64 %1778, i64* %RSI.i334, align 8
  %1779 = icmp ugt i64 %1777, -12601
  %1780 = zext i1 %1779 to i8
  store i8 %1780, i8* %24, align 1
  %1781 = trunc i64 %1778 to i32
  %1782 = and i32 %1781, 255
  %1783 = tail call i32 @llvm.ctpop.i32(i32 %1782)
  %1784 = trunc i32 %1783 to i8
  %1785 = and i8 %1784, 1
  %1786 = xor i8 %1785, 1
  store i8 %1786, i8* %31, align 1
  %1787 = xor i64 %1777, 16
  %1788 = xor i64 %1787, %1778
  %1789 = lshr i64 %1788, 4
  %1790 = trunc i64 %1789 to i8
  %1791 = and i8 %1790, 1
  store i8 %1791, i8* %37, align 1
  %1792 = icmp eq i64 %1778, 0
  %1793 = zext i1 %1792 to i8
  store i8 %1793, i8* %40, align 1
  %1794 = lshr i64 %1778, 63
  %1795 = trunc i64 %1794 to i8
  store i8 %1795, i8* %43, align 1
  %1796 = lshr i64 %1777, 63
  %1797 = xor i64 %1794, %1796
  %1798 = add nuw nsw i64 %1797, %1794
  %1799 = icmp eq i64 %1798, 2
  %1800 = zext i1 %1799 to i8
  store i8 %1800, i8* %49, align 1
  %1801 = load i64, i64* %RBP.i, align 8
  %1802 = add i64 %1801, -48
  %1803 = add i64 %1776, 23
  store i64 %1803, i64* %3, align 8
  %1804 = inttoptr i64 %1802 to i32*
  %1805 = load i32, i32* %1804, align 4
  %1806 = sext i32 %1805 to i64
  %1807 = shl nsw i64 %1806, 5
  store i64 %1807, i64* %53, align 8
  %1808 = add i64 %1807, %1778
  store i64 %1808, i64* %RSI.i334, align 8
  %1809 = icmp ult i64 %1808, %1778
  %1810 = icmp ult i64 %1808, %1807
  %1811 = or i1 %1809, %1810
  %1812 = zext i1 %1811 to i8
  store i8 %1812, i8* %24, align 1
  %1813 = trunc i64 %1808 to i32
  %1814 = and i32 %1813, 255
  %1815 = tail call i32 @llvm.ctpop.i32(i32 %1814)
  %1816 = trunc i32 %1815 to i8
  %1817 = and i8 %1816, 1
  %1818 = xor i8 %1817, 1
  store i8 %1818, i8* %31, align 1
  %1819 = xor i64 %1778, %1808
  %1820 = lshr i64 %1819, 4
  %1821 = trunc i64 %1820 to i8
  %1822 = and i8 %1821, 1
  store i8 %1822, i8* %37, align 1
  %1823 = icmp eq i64 %1808, 0
  %1824 = zext i1 %1823 to i8
  store i8 %1824, i8* %40, align 1
  %1825 = lshr i64 %1808, 63
  %1826 = trunc i64 %1825 to i8
  store i8 %1826, i8* %43, align 1
  %1827 = lshr i64 %1806, 58
  %1828 = and i64 %1827, 1
  %1829 = xor i64 %1825, %1794
  %1830 = xor i64 %1825, %1828
  %1831 = add nuw nsw i64 %1829, %1830
  %1832 = icmp eq i64 %1831, 2
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %49, align 1
  %1834 = add i64 %1801, -52
  %1835 = add i64 %1776, 34
  store i64 %1835, i64* %3, align 8
  %1836 = inttoptr i64 %1834 to i32*
  %1837 = load i32, i32* %1836, align 4
  %1838 = sext i32 %1837 to i64
  store i64 %1838, i64* %53, align 8
  %1839 = shl nsw i64 %1838, 1
  %1840 = add i64 %1839, %1808
  %1841 = load i16, i16* %R8W.i324, align 2
  %1842 = add i64 %1776, 39
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1840 to i16*
  store i16 %1841, i16* %1843, align 2
  %1844 = load i64, i64* %RBP.i, align 8
  %1845 = add i64 %1844, -48
  %1846 = load i64, i64* %3, align 8
  %1847 = add i64 %1846, 3
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1845 to i32*
  %1849 = load i32, i32* %1848, align 4
  %1850 = add i32 %1849, 1
  %1851 = zext i32 %1850 to i64
  store i64 %1851, i64* %RAX.i875.phi.trans.insert, align 8
  %1852 = icmp eq i32 %1849, -1
  %1853 = icmp eq i32 %1850, 0
  %1854 = or i1 %1852, %1853
  %1855 = zext i1 %1854 to i8
  store i8 %1855, i8* %24, align 1
  %1856 = and i32 %1850, 255
  %1857 = tail call i32 @llvm.ctpop.i32(i32 %1856)
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  %1860 = xor i8 %1859, 1
  store i8 %1860, i8* %31, align 1
  %1861 = xor i32 %1850, %1849
  %1862 = lshr i32 %1861, 4
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  store i8 %1864, i8* %37, align 1
  %1865 = zext i1 %1853 to i8
  store i8 %1865, i8* %40, align 1
  %1866 = lshr i32 %1850, 31
  %1867 = trunc i32 %1866 to i8
  store i8 %1867, i8* %43, align 1
  %1868 = lshr i32 %1849, 31
  %1869 = xor i32 %1866, %1868
  %1870 = add nuw nsw i32 %1869, %1866
  %1871 = icmp eq i32 %1870, 2
  %1872 = zext i1 %1871 to i8
  store i8 %1872, i8* %49, align 1
  %1873 = add i64 %1846, 9
  store i64 %1873, i64* %3, align 8
  store i32 %1850, i32* %1848, align 4
  %1874 = load i64, i64* %3, align 8
  %1875 = add i64 %1874, -145
  store i64 %1875, i64* %3, align 8
  br label %block_.L_43eb3e

block_.L_43ebd4:                                  ; preds = %block_.L_43eb3e
  %1876 = add i64 %1573, -52
  %1877 = add i64 %1609, 8
  store i64 %1877, i64* %3, align 8
  %1878 = inttoptr i64 %1876 to i32*
  %1879 = load i32, i32* %1878, align 4
  %1880 = add i32 %1879, 1
  %1881 = zext i32 %1880 to i64
  store i64 %1881, i64* %RAX.i875.phi.trans.insert, align 8
  %1882 = icmp eq i32 %1879, -1
  %1883 = icmp eq i32 %1880, 0
  %1884 = or i1 %1882, %1883
  %1885 = zext i1 %1884 to i8
  store i8 %1885, i8* %24, align 1
  %1886 = and i32 %1880, 255
  %1887 = tail call i32 @llvm.ctpop.i32(i32 %1886)
  %1888 = trunc i32 %1887 to i8
  %1889 = and i8 %1888, 1
  %1890 = xor i8 %1889, 1
  store i8 %1890, i8* %31, align 1
  %1891 = xor i32 %1880, %1879
  %1892 = lshr i32 %1891, 4
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  store i8 %1894, i8* %37, align 1
  %1895 = zext i1 %1883 to i8
  store i8 %1895, i8* %40, align 1
  %1896 = lshr i32 %1880, 31
  %1897 = trunc i32 %1896 to i8
  store i8 %1897, i8* %43, align 1
  %1898 = lshr i32 %1879, 31
  %1899 = xor i32 %1896, %1898
  %1900 = add nuw nsw i32 %1899, %1896
  %1901 = icmp eq i32 %1900, 2
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %49, align 1
  %1903 = add i64 %1609, 14
  store i64 %1903, i64* %3, align 8
  store i32 %1880, i32* %1878, align 4
  %1904 = load i64, i64* %3, align 8
  %1905 = add i64 %1904, -182
  store i64 %1905, i64* %3, align 8
  br label %block_.L_43eb2c

block_.L_43ebe7:                                  ; preds = %block_.L_43eb2c
  %1906 = add i64 %1563, 205
  br label %block_.L_43ecb4

block_.L_43ebf2:                                  ; preds = %block_.L_43ebf2.preheader, %block_.L_43ec9c
  %1907 = phi i64 [ %2288, %block_.L_43ec9c ], [ %.pre76, %block_.L_43ebf2.preheader ]
  %1908 = load i64, i64* %RBP.i, align 8
  %1909 = add i64 %1908, -52
  %1910 = add i64 %1907, 3
  store i64 %1910, i64* %3, align 8
  %1911 = inttoptr i64 %1909 to i32*
  %1912 = load i32, i32* %1911, align 4
  %1913 = zext i32 %1912 to i64
  store i64 %1913, i64* %RAX.i875.phi.trans.insert, align 8
  %1914 = add i64 %1908, -60
  %1915 = add i64 %1907, 6
  store i64 %1915, i64* %3, align 8
  %1916 = inttoptr i64 %1914 to i32*
  %1917 = load i32, i32* %1916, align 4
  %1918 = sub i32 %1912, %1917
  %1919 = icmp ult i32 %1912, %1917
  %1920 = zext i1 %1919 to i8
  store i8 %1920, i8* %24, align 1
  %1921 = and i32 %1918, 255
  %1922 = tail call i32 @llvm.ctpop.i32(i32 %1921)
  %1923 = trunc i32 %1922 to i8
  %1924 = and i8 %1923, 1
  %1925 = xor i8 %1924, 1
  store i8 %1925, i8* %31, align 1
  %1926 = xor i32 %1917, %1912
  %1927 = xor i32 %1926, %1918
  %1928 = lshr i32 %1927, 4
  %1929 = trunc i32 %1928 to i8
  %1930 = and i8 %1929, 1
  store i8 %1930, i8* %37, align 1
  %1931 = icmp eq i32 %1918, 0
  %1932 = zext i1 %1931 to i8
  store i8 %1932, i8* %40, align 1
  %1933 = lshr i32 %1918, 31
  %1934 = trunc i32 %1933 to i8
  store i8 %1934, i8* %43, align 1
  %1935 = lshr i32 %1912, 31
  %1936 = lshr i32 %1917, 31
  %1937 = xor i32 %1936, %1935
  %1938 = xor i32 %1933, %1935
  %1939 = add nuw nsw i32 %1938, %1937
  %1940 = icmp eq i32 %1939, 2
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %49, align 1
  %1942 = icmp ne i8 %1934, 0
  %1943 = xor i1 %1942, %1940
  %.v107 = select i1 %1943, i64 12, i64 189
  %1944 = add i64 %1907, %.v107
  store i64 %1944, i64* %3, align 8
  br i1 %1943, label %block_43ebfe, label %block_.L_43ecaf

block_43ebfe:                                     ; preds = %block_.L_43ebf2
  %1945 = add i64 %1908, -20
  %1946 = add i64 %1944, 3
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1945 to i32*
  %1948 = load i32, i32* %1947, align 4
  %1949 = zext i32 %1948 to i64
  store i64 %1949, i64* %RAX.i875.phi.trans.insert, align 8
  %1950 = add i64 %1908, -48
  %1951 = add i64 %1944, 6
  store i64 %1951, i64* %3, align 8
  %1952 = inttoptr i64 %1950 to i32*
  store i32 %1948, i32* %1952, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_43ec04

block_.L_43ec04:                                  ; preds = %routine_sarl__cl___edx.exit, %block_43ebfe
  %1953 = phi i64 [ %2258, %routine_sarl__cl___edx.exit ], [ %.pre79, %block_43ebfe ]
  %1954 = load i64, i64* %RBP.i, align 8
  %1955 = add i64 %1954, -48
  %1956 = add i64 %1953, 3
  store i64 %1956, i64* %3, align 8
  %1957 = inttoptr i64 %1955 to i32*
  %1958 = load i32, i32* %1957, align 4
  %1959 = zext i32 %1958 to i64
  store i64 %1959, i64* %RAX.i875.phi.trans.insert, align 8
  %1960 = add i64 %1954, -56
  %1961 = add i64 %1953, 6
  store i64 %1961, i64* %3, align 8
  %1962 = inttoptr i64 %1960 to i32*
  %1963 = load i32, i32* %1962, align 4
  %1964 = sub i32 %1958, %1963
  %1965 = icmp ult i32 %1958, %1963
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %24, align 1
  %1967 = and i32 %1964, 255
  %1968 = tail call i32 @llvm.ctpop.i32(i32 %1967)
  %1969 = trunc i32 %1968 to i8
  %1970 = and i8 %1969, 1
  %1971 = xor i8 %1970, 1
  store i8 %1971, i8* %31, align 1
  %1972 = xor i32 %1963, %1958
  %1973 = xor i32 %1972, %1964
  %1974 = lshr i32 %1973, 4
  %1975 = trunc i32 %1974 to i8
  %1976 = and i8 %1975, 1
  store i8 %1976, i8* %37, align 1
  %1977 = icmp eq i32 %1964, 0
  %1978 = zext i1 %1977 to i8
  store i8 %1978, i8* %40, align 1
  %1979 = lshr i32 %1964, 31
  %1980 = trunc i32 %1979 to i8
  store i8 %1980, i8* %43, align 1
  %1981 = lshr i32 %1958, 31
  %1982 = lshr i32 %1963, 31
  %1983 = xor i32 %1982, %1981
  %1984 = xor i32 %1979, %1981
  %1985 = add nuw nsw i32 %1984, %1983
  %1986 = icmp eq i32 %1985, 2
  %1987 = zext i1 %1986 to i8
  store i8 %1987, i8* %49, align 1
  %1988 = icmp ne i8 %1980, 0
  %1989 = xor i1 %1988, %1986
  %.v94 = select i1 %1989, i64 12, i64 152
  %1990 = add i64 %1953, %.v94
  store i64 %1990, i64* %3, align 8
  br i1 %1989, label %block_43ec10, label %block_.L_43ec9c

block_43ec10:                                     ; preds = %block_.L_43ec04
  %1991 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %1991, i64* %RAX.i875.phi.trans.insert, align 8
  %1992 = add i64 %1991, 8
  %1993 = add i64 %1990, 12
  store i64 %1993, i64* %3, align 8
  %1994 = inttoptr i64 %1992 to i64*
  %1995 = load i64, i64* %1994, align 8
  store i64 %1995, i64* %RAX.i875.phi.trans.insert, align 8
  %1996 = add i64 %1954, -40
  %1997 = add i64 %1990, 17
  store i64 %1997, i64* %3, align 8
  %1998 = inttoptr i64 %1996 to i16*
  %1999 = load i16, i16* %1998, align 2
  %2000 = sext i16 %1999 to i64
  store i64 %2000, i64* %RCX.i1056, align 8
  %2001 = shl nsw i64 %2000, 3
  %2002 = add i64 %2001, %1995
  %2003 = add i64 %1990, 21
  store i64 %2003, i64* %3, align 8
  %2004 = inttoptr i64 %2002 to i64*
  %2005 = load i64, i64* %2004, align 8
  store i64 %2005, i64* %RAX.i875.phi.trans.insert, align 8
  %2006 = add i64 %1990, 23
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to i32*
  %2008 = load i32, i32* %2007, align 4
  %2009 = zext i32 %2008 to i64
  store i64 %2009, i64* %RDX.i918, align 8
  %2010 = add i64 %1954, -96
  %2011 = add i64 %1990, 27
  store i64 %2011, i64* %3, align 8
  %2012 = inttoptr i64 %2010 to i64*
  %2013 = load i64, i64* %2012, align 8
  store i64 %2013, i64* %RAX.i875.phi.trans.insert, align 8
  %2014 = add i64 %2013, 4
  store i64 %2014, i64* %RCX.i1056, align 8
  %2015 = icmp ugt i64 %2013, -5
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %24, align 1
  %2017 = trunc i64 %2014 to i32
  %2018 = and i32 %2017, 255
  %2019 = tail call i32 @llvm.ctpop.i32(i32 %2018)
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  %2022 = xor i8 %2021, 1
  store i8 %2022, i8* %31, align 1
  %2023 = xor i64 %2014, %2013
  %2024 = lshr i64 %2023, 4
  %2025 = trunc i64 %2024 to i8
  %2026 = and i8 %2025, 1
  store i8 %2026, i8* %37, align 1
  %2027 = icmp eq i64 %2014, 0
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %40, align 1
  %2029 = lshr i64 %2014, 63
  %2030 = trunc i64 %2029 to i8
  store i8 %2030, i8* %43, align 1
  %2031 = lshr i64 %2013, 63
  %2032 = xor i64 %2029, %2031
  %2033 = add nuw nsw i64 %2032, %2029
  %2034 = icmp eq i64 %2033, 2
  %2035 = zext i1 %2034 to i8
  store i8 %2035, i8* %49, align 1
  %2036 = add i64 %1990, 38
  store i64 %2036, i64* %3, align 8
  store i64 %2014, i64* %2012, align 8
  %2037 = load i64, i64* %RDX.i918, align 8
  %2038 = load i32*, i32** %1525, align 8
  %2039 = load i64, i64* %3, align 8
  %2040 = add i64 %2039, 3
  store i64 %2040, i64* %3, align 8
  %2041 = load i32, i32* %2038, align 4
  %2042 = shl i64 %2037, 32
  %2043 = ashr exact i64 %2042, 32
  %2044 = sext i32 %2041 to i64
  %2045 = mul nsw i64 %2044, %2043
  %2046 = trunc i64 %2045 to i32
  %2047 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %2048 = add i32 %2047, %2046
  %2049 = zext i32 %2048 to i64
  store i64 %2049, i64* %RDX.i918, align 8
  %2050 = icmp ult i32 %2048, %2046
  %2051 = icmp ult i32 %2048, %2047
  %2052 = or i1 %2050, %2051
  %2053 = zext i1 %2052 to i8
  store i8 %2053, i8* %24, align 1
  %2054 = and i32 %2048, 255
  %2055 = tail call i32 @llvm.ctpop.i32(i32 %2054)
  %2056 = trunc i32 %2055 to i8
  %2057 = and i8 %2056, 1
  %2058 = xor i8 %2057, 1
  store i8 %2058, i8* %31, align 1
  %2059 = xor i32 %2047, %2046
  %2060 = xor i32 %2059, %2048
  %2061 = lshr i32 %2060, 4
  %2062 = trunc i32 %2061 to i8
  %2063 = and i8 %2062, 1
  store i8 %2063, i8* %37, align 1
  %2064 = icmp eq i32 %2048, 0
  %2065 = zext i1 %2064 to i8
  store i8 %2065, i8* %40, align 1
  %2066 = lshr i32 %2048, 31
  %2067 = trunc i32 %2066 to i8
  store i8 %2067, i8* %43, align 1
  %2068 = lshr i32 %2046, 31
  %2069 = lshr i32 %2047, 31
  %2070 = xor i32 %2066, %2068
  %2071 = xor i32 %2066, %2069
  %2072 = add nuw nsw i32 %2070, %2071
  %2073 = icmp eq i32 %2072, 2
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %49, align 1
  %2075 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %2076 = zext i32 %2075 to i64
  store i64 %2076, i64* %RCX.i1056, align 8
  %2077 = add i64 %2039, 19
  store i64 %2077, i64* %3, align 8
  %2078 = trunc i32 %2075 to i5
  switch i5 %2078, label %2082 [
    i5 0, label %routine_sarl__cl___edx.exit
    i5 1, label %2079
  ]

; <label>:2079:                                   ; preds = %block_43ec10
  %2080 = shl nuw i64 %2049, 32
  %2081 = ashr i64 %2080, 33
  br label %2089

; <label>:2082:                                   ; preds = %block_43ec10
  %2083 = and i32 %2075, 31
  %2084 = zext i32 %2083 to i64
  %2085 = add nsw i64 %2084, -1
  %2086 = sext i32 %2048 to i64
  %2087 = ashr i64 %2086, %2085
  %2088 = lshr i64 %2087, 1
  br label %2089

; <label>:2089:                                   ; preds = %2082, %2079
  %2090 = phi i64 [ %2088, %2082 ], [ %2081, %2079 ]
  %2091 = phi i64 [ %2087, %2082 ], [ %2049, %2079 ]
  %2092 = trunc i64 %2091 to i8
  %2093 = and i8 %2092, 1
  %2094 = trunc i64 %2090 to i32
  %2095 = and i64 %2090, 4294967295
  store i64 %2095, i64* %RDX.i918, align 8
  store i8 %2093, i8* %24, align 1
  %2096 = and i32 %2094, 255
  %2097 = tail call i32 @llvm.ctpop.i32(i32 %2096)
  %2098 = trunc i32 %2097 to i8
  %2099 = and i8 %2098, 1
  %2100 = xor i8 %2099, 1
  store i8 %2100, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %2101 = icmp eq i32 %2094, 0
  %2102 = zext i1 %2101 to i8
  store i8 %2102, i8* %40, align 1
  %2103 = lshr i32 %2094, 31
  %2104 = trunc i32 %2103 to i8
  store i8 %2104, i8* %43, align 1
  store i8 0, i8* %49, align 1
  br label %routine_sarl__cl___edx.exit

routine_sarl__cl___edx.exit:                      ; preds = %2089, %block_43ec10
  %2105 = phi i64 [ %2095, %2089 ], [ %2049, %block_43ec10 ]
  %2106 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %2106, i64* %RAX.i875.phi.trans.insert, align 8
  %2107 = add i64 %2106, 8
  %2108 = add i64 %2039, 31
  store i64 %2108, i64* %3, align 8
  %2109 = inttoptr i64 %2107 to i64*
  %2110 = load i64, i64* %2109, align 8
  store i64 %2110, i64* %RAX.i875.phi.trans.insert, align 8
  %2111 = load i64, i64* %RBP.i, align 8
  %2112 = add i64 %2111, -40
  %2113 = add i64 %2039, 36
  store i64 %2113, i64* %3, align 8
  %2114 = inttoptr i64 %2112 to i16*
  %2115 = load i16, i16* %2114, align 2
  %2116 = sext i16 %2115 to i64
  store i64 %2116, i64* %RSI.i334, align 8
  %2117 = shl nsw i64 %2116, 3
  %2118 = add i64 %2117, %2110
  %2119 = add i64 %2039, 40
  store i64 %2119, i64* %3, align 8
  %2120 = inttoptr i64 %2118 to i64*
  %2121 = load i64, i64* %2120, align 8
  store i64 %2121, i64* %RAX.i875.phi.trans.insert, align 8
  %2122 = add i64 %2039, 42
  store i64 %2122, i64* %3, align 8
  %2123 = trunc i64 %2105 to i32
  %2124 = inttoptr i64 %2121 to i32*
  %2125 = load i32, i32* %2124, align 4
  %2126 = add i32 %2125, %2123
  %2127 = zext i32 %2126 to i64
  store i64 %2127, i64* %RDX.i918, align 8
  %2128 = icmp ult i32 %2126, %2123
  %2129 = icmp ult i32 %2126, %2125
  %2130 = or i1 %2128, %2129
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %24, align 1
  %2132 = and i32 %2126, 255
  %2133 = tail call i32 @llvm.ctpop.i32(i32 %2132)
  %2134 = trunc i32 %2133 to i8
  %2135 = and i8 %2134, 1
  %2136 = xor i8 %2135, 1
  store i8 %2136, i8* %31, align 1
  %2137 = xor i32 %2125, %2123
  %2138 = xor i32 %2137, %2126
  %2139 = lshr i32 %2138, 4
  %2140 = trunc i32 %2139 to i8
  %2141 = and i8 %2140, 1
  store i8 %2141, i8* %37, align 1
  %2142 = icmp eq i32 %2126, 0
  %2143 = zext i1 %2142 to i8
  store i8 %2143, i8* %40, align 1
  %2144 = lshr i32 %2126, 31
  %2145 = trunc i32 %2144 to i8
  store i8 %2145, i8* %43, align 1
  %2146 = lshr i32 %2123, 31
  %2147 = lshr i32 %2125, 31
  %2148 = xor i32 %2144, %2146
  %2149 = xor i32 %2144, %2147
  %2150 = add nuw nsw i32 %2148, %2149
  %2151 = icmp eq i32 %2150, 2
  %2152 = zext i1 %2151 to i8
  store i8 %2152, i8* %49, align 1
  store i64 %2127, i64* %RDI.i, align 8
  %2153 = add i64 %2039, -13702
  %2154 = add i64 %2039, 49
  %2155 = load i64, i64* %6, align 8
  %2156 = add i64 %2155, -8
  %2157 = inttoptr i64 %2156 to i64*
  store i64 %2154, i64* %2157, align 8
  store i64 %2156, i64* %6, align 8
  store i64 %2153, i64* %3, align 8
  %call2_43ec62 = tail call %struct.Memory* @sub_43b6b0.clip1a(%struct.State* nonnull %0, i64 %2153, %struct.Memory* %MEMORY.9)
  %2158 = load i16, i16* %AX.i1091, align 2
  %2159 = load i64, i64* %3, align 8
  store i16 %2158, i16* %R8W.i324, align 2
  %2160 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2161 = add i64 %2160, 12600
  store i64 %2161, i64* %RSI.i334, align 8
  %2162 = icmp ugt i64 %2160, -12601
  %2163 = zext i1 %2162 to i8
  store i8 %2163, i8* %24, align 1
  %2164 = trunc i64 %2161 to i32
  %2165 = and i32 %2164, 255
  %2166 = tail call i32 @llvm.ctpop.i32(i32 %2165)
  %2167 = trunc i32 %2166 to i8
  %2168 = and i8 %2167, 1
  %2169 = xor i8 %2168, 1
  store i8 %2169, i8* %31, align 1
  %2170 = xor i64 %2160, 16
  %2171 = xor i64 %2170, %2161
  %2172 = lshr i64 %2171, 4
  %2173 = trunc i64 %2172 to i8
  %2174 = and i8 %2173, 1
  store i8 %2174, i8* %37, align 1
  %2175 = icmp eq i64 %2161, 0
  %2176 = zext i1 %2175 to i8
  store i8 %2176, i8* %40, align 1
  %2177 = lshr i64 %2161, 63
  %2178 = trunc i64 %2177 to i8
  store i8 %2178, i8* %43, align 1
  %2179 = lshr i64 %2160, 63
  %2180 = xor i64 %2177, %2179
  %2181 = add nuw nsw i64 %2180, %2177
  %2182 = icmp eq i64 %2181, 2
  %2183 = zext i1 %2182 to i8
  store i8 %2183, i8* %49, align 1
  %2184 = load i64, i64* %RBP.i, align 8
  %2185 = add i64 %2184, -48
  %2186 = add i64 %2159, 23
  store i64 %2186, i64* %3, align 8
  %2187 = inttoptr i64 %2185 to i32*
  %2188 = load i32, i32* %2187, align 4
  %2189 = sext i32 %2188 to i64
  %2190 = shl nsw i64 %2189, 5
  store i64 %2190, i64* %53, align 8
  %2191 = add i64 %2190, %2161
  store i64 %2191, i64* %RSI.i334, align 8
  %2192 = icmp ult i64 %2191, %2161
  %2193 = icmp ult i64 %2191, %2190
  %2194 = or i1 %2192, %2193
  %2195 = zext i1 %2194 to i8
  store i8 %2195, i8* %24, align 1
  %2196 = trunc i64 %2191 to i32
  %2197 = and i32 %2196, 255
  %2198 = tail call i32 @llvm.ctpop.i32(i32 %2197)
  %2199 = trunc i32 %2198 to i8
  %2200 = and i8 %2199, 1
  %2201 = xor i8 %2200, 1
  store i8 %2201, i8* %31, align 1
  %2202 = xor i64 %2161, %2191
  %2203 = lshr i64 %2202, 4
  %2204 = trunc i64 %2203 to i8
  %2205 = and i8 %2204, 1
  store i8 %2205, i8* %37, align 1
  %2206 = icmp eq i64 %2191, 0
  %2207 = zext i1 %2206 to i8
  store i8 %2207, i8* %40, align 1
  %2208 = lshr i64 %2191, 63
  %2209 = trunc i64 %2208 to i8
  store i8 %2209, i8* %43, align 1
  %2210 = lshr i64 %2189, 58
  %2211 = and i64 %2210, 1
  %2212 = xor i64 %2208, %2177
  %2213 = xor i64 %2208, %2211
  %2214 = add nuw nsw i64 %2212, %2213
  %2215 = icmp eq i64 %2214, 2
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %49, align 1
  %2217 = add i64 %2184, -52
  %2218 = add i64 %2159, 34
  store i64 %2218, i64* %3, align 8
  %2219 = inttoptr i64 %2217 to i32*
  %2220 = load i32, i32* %2219, align 4
  %2221 = sext i32 %2220 to i64
  store i64 %2221, i64* %53, align 8
  %2222 = shl nsw i64 %2221, 1
  %2223 = add i64 %2222, %2191
  %2224 = load i16, i16* %R8W.i324, align 2
  %2225 = add i64 %2159, 39
  store i64 %2225, i64* %3, align 8
  %2226 = inttoptr i64 %2223 to i16*
  store i16 %2224, i16* %2226, align 2
  %2227 = load i64, i64* %RBP.i, align 8
  %2228 = add i64 %2227, -48
  %2229 = load i64, i64* %3, align 8
  %2230 = add i64 %2229, 3
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2228 to i32*
  %2232 = load i32, i32* %2231, align 4
  %2233 = add i32 %2232, 1
  %2234 = zext i32 %2233 to i64
  store i64 %2234, i64* %RAX.i875.phi.trans.insert, align 8
  %2235 = icmp eq i32 %2232, -1
  %2236 = icmp eq i32 %2233, 0
  %2237 = or i1 %2235, %2236
  %2238 = zext i1 %2237 to i8
  store i8 %2238, i8* %24, align 1
  %2239 = and i32 %2233, 255
  %2240 = tail call i32 @llvm.ctpop.i32(i32 %2239)
  %2241 = trunc i32 %2240 to i8
  %2242 = and i8 %2241, 1
  %2243 = xor i8 %2242, 1
  store i8 %2243, i8* %31, align 1
  %2244 = xor i32 %2233, %2232
  %2245 = lshr i32 %2244, 4
  %2246 = trunc i32 %2245 to i8
  %2247 = and i8 %2246, 1
  store i8 %2247, i8* %37, align 1
  %2248 = zext i1 %2236 to i8
  store i8 %2248, i8* %40, align 1
  %2249 = lshr i32 %2233, 31
  %2250 = trunc i32 %2249 to i8
  store i8 %2250, i8* %43, align 1
  %2251 = lshr i32 %2232, 31
  %2252 = xor i32 %2249, %2251
  %2253 = add nuw nsw i32 %2252, %2249
  %2254 = icmp eq i32 %2253, 2
  %2255 = zext i1 %2254 to i8
  store i8 %2255, i8* %49, align 1
  %2256 = add i64 %2229, 9
  store i64 %2256, i64* %3, align 8
  store i32 %2233, i32* %2231, align 4
  %2257 = load i64, i64* %3, align 8
  %2258 = add i64 %2257, -147
  store i64 %2258, i64* %3, align 8
  br label %block_.L_43ec04

block_.L_43ec9c:                                  ; preds = %block_.L_43ec04
  %2259 = add i64 %1954, -52
  %2260 = add i64 %1990, 8
  store i64 %2260, i64* %3, align 8
  %2261 = inttoptr i64 %2259 to i32*
  %2262 = load i32, i32* %2261, align 4
  %2263 = add i32 %2262, 1
  %2264 = zext i32 %2263 to i64
  store i64 %2264, i64* %RAX.i875.phi.trans.insert, align 8
  %2265 = icmp eq i32 %2262, -1
  %2266 = icmp eq i32 %2263, 0
  %2267 = or i1 %2265, %2266
  %2268 = zext i1 %2267 to i8
  store i8 %2268, i8* %24, align 1
  %2269 = and i32 %2263, 255
  %2270 = tail call i32 @llvm.ctpop.i32(i32 %2269)
  %2271 = trunc i32 %2270 to i8
  %2272 = and i8 %2271, 1
  %2273 = xor i8 %2272, 1
  store i8 %2273, i8* %31, align 1
  %2274 = xor i32 %2263, %2262
  %2275 = lshr i32 %2274, 4
  %2276 = trunc i32 %2275 to i8
  %2277 = and i8 %2276, 1
  store i8 %2277, i8* %37, align 1
  %2278 = zext i1 %2266 to i8
  store i8 %2278, i8* %40, align 1
  %2279 = lshr i32 %2263, 31
  %2280 = trunc i32 %2279 to i8
  store i8 %2280, i8* %43, align 1
  %2281 = lshr i32 %2262, 31
  %2282 = xor i32 %2279, %2281
  %2283 = add nuw nsw i32 %2282, %2279
  %2284 = icmp eq i32 %2283, 2
  %2285 = zext i1 %2284 to i8
  store i8 %2285, i8* %49, align 1
  %2286 = add i64 %1990, 14
  store i64 %2286, i64* %3, align 8
  store i32 %2263, i32* %2261, align 4
  %2287 = load i64, i64* %3, align 8
  %2288 = add i64 %2287, -184
  store i64 %2288, i64* %3, align 8
  br label %block_.L_43ebf2

block_.L_43ecaf:                                  ; preds = %block_.L_43ebf2
  %2289 = add i64 %1944, 5
  store i64 %2289, i64* %3, align 8
  br label %block_.L_43ecb4

block_.L_43ecb4:                                  ; preds = %block_.L_43ecaf, %block_.L_43ebe7
  %storemerge32 = phi i64 [ %1906, %block_.L_43ebe7 ], [ %2289, %block_.L_43ecaf ]
  %2290 = add i64 %storemerge32, 5
  store i64 %2290, i64* %3, align 8
  br label %block_.L_43ecb9

block_.L_43ecb9:                                  ; preds = %block_.L_43ecb4, %block_.L_43eb17
  %storemerge29 = phi i64 [ %1504, %block_.L_43eb17 ], [ %2290, %block_.L_43ecb4 ]
  %2291 = add i64 %storemerge29, 460
  br label %block_.L_43ee85

block_.L_43ecbe:                                  ; preds = %block_.L_43e9dc
  %.v96 = select i1 %987, i64 10, i64 181
  %2292 = add i64 %970, %.v96
  store i64 %2292, i64* %3, align 8
  br i1 %987, label %block_43ecc8, label %block_.L_43ed73

block_43ecc8:                                     ; preds = %block_.L_43ecbe
  %2293 = add i64 %956, -24
  %2294 = add i64 %2292, 3
  store i64 %2294, i64* %3, align 8
  %2295 = inttoptr i64 %2293 to i32*
  %2296 = load i32, i32* %2295, align 4
  %2297 = zext i32 %2296 to i64
  store i64 %2297, i64* %RAX.i875.phi.trans.insert, align 8
  %2298 = add i64 %956, -52
  %2299 = add i64 %2292, 6
  store i64 %2299, i64* %3, align 8
  %2300 = inttoptr i64 %2298 to i32*
  store i32 %2296, i32* %2300, align 4
  %RSI.i240 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %2301 = bitcast %union.anon* %84 to i32**
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %DI.i208 = bitcast %union.anon* %65 to i16*
  %R8.i202 = getelementptr inbounds %union.anon, %union.anon* %91, i64 0, i32 0
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_43ecce

block_.L_43ecce:                                  ; preds = %block_.L_43ed5b, %block_43ecc8
  %2303 = phi i64 [ %.pre80, %block_43ecc8 ], [ %2641, %block_.L_43ed5b ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.9, %block_43ecc8 ], [ %MEMORY.19, %block_.L_43ed5b ]
  %2304 = load i64, i64* %RBP.i, align 8
  %2305 = add i64 %2304, -52
  %2306 = add i64 %2303, 3
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to i32*
  %2308 = load i32, i32* %2307, align 4
  %2309 = zext i32 %2308 to i64
  store i64 %2309, i64* %RAX.i875.phi.trans.insert, align 8
  %2310 = add i64 %2304, -60
  %2311 = add i64 %2303, 6
  store i64 %2311, i64* %3, align 8
  %2312 = inttoptr i64 %2310 to i32*
  %2313 = load i32, i32* %2312, align 4
  %2314 = sub i32 %2308, %2313
  %2315 = icmp ult i32 %2308, %2313
  %2316 = zext i1 %2315 to i8
  store i8 %2316, i8* %24, align 1
  %2317 = and i32 %2314, 255
  %2318 = tail call i32 @llvm.ctpop.i32(i32 %2317)
  %2319 = trunc i32 %2318 to i8
  %2320 = and i8 %2319, 1
  %2321 = xor i8 %2320, 1
  store i8 %2321, i8* %31, align 1
  %2322 = xor i32 %2313, %2308
  %2323 = xor i32 %2322, %2314
  %2324 = lshr i32 %2323, 4
  %2325 = trunc i32 %2324 to i8
  %2326 = and i8 %2325, 1
  store i8 %2326, i8* %37, align 1
  %2327 = icmp eq i32 %2314, 0
  %2328 = zext i1 %2327 to i8
  store i8 %2328, i8* %40, align 1
  %2329 = lshr i32 %2314, 31
  %2330 = trunc i32 %2329 to i8
  store i8 %2330, i8* %43, align 1
  %2331 = lshr i32 %2308, 31
  %2332 = lshr i32 %2313, 31
  %2333 = xor i32 %2332, %2331
  %2334 = xor i32 %2329, %2331
  %2335 = add nuw nsw i32 %2334, %2333
  %2336 = icmp eq i32 %2335, 2
  %2337 = zext i1 %2336 to i8
  store i8 %2337, i8* %49, align 1
  %2338 = icmp ne i8 %2330, 0
  %2339 = xor i1 %2338, %2336
  %.v112 = select i1 %2339, i64 12, i64 160
  %2340 = add i64 %2303, %.v112
  store i64 %2340, i64* %3, align 8
  br i1 %2339, label %block_43ecda, label %block_.L_43ed6e

block_43ecda:                                     ; preds = %block_.L_43ecce
  %2341 = add i64 %2304, -20
  %2342 = add i64 %2340, 3
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to i32*
  %2344 = load i32, i32* %2343, align 4
  %2345 = zext i32 %2344 to i64
  store i64 %2345, i64* %RAX.i875.phi.trans.insert, align 8
  %2346 = add i64 %2304, -48
  %2347 = add i64 %2340, 6
  store i64 %2347, i64* %3, align 8
  %2348 = inttoptr i64 %2346 to i32*
  store i32 %2344, i32* %2348, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_43ece0

block_.L_43ece0:                                  ; preds = %routine_idivl__esi.exit, %block_43ecda
  %2349 = phi i64 [ %.pre81, %block_43ecda ], [ %2611, %routine_idivl__esi.exit ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.18, %block_43ecda ], [ %2512, %routine_idivl__esi.exit ]
  %2350 = load i64, i64* %RBP.i, align 8
  %2351 = add i64 %2350, -48
  %2352 = add i64 %2349, 3
  store i64 %2352, i64* %3, align 8
  %2353 = inttoptr i64 %2351 to i32*
  %2354 = load i32, i32* %2353, align 4
  %2355 = zext i32 %2354 to i64
  store i64 %2355, i64* %RAX.i875.phi.trans.insert, align 8
  %2356 = add i64 %2350, -56
  %2357 = add i64 %2349, 6
  store i64 %2357, i64* %3, align 8
  %2358 = inttoptr i64 %2356 to i32*
  %2359 = load i32, i32* %2358, align 4
  %2360 = sub i32 %2354, %2359
  %2361 = icmp ult i32 %2354, %2359
  %2362 = zext i1 %2361 to i8
  store i8 %2362, i8* %24, align 1
  %2363 = and i32 %2360, 255
  %2364 = tail call i32 @llvm.ctpop.i32(i32 %2363)
  %2365 = trunc i32 %2364 to i8
  %2366 = and i8 %2365, 1
  %2367 = xor i8 %2366, 1
  store i8 %2367, i8* %31, align 1
  %2368 = xor i32 %2359, %2354
  %2369 = xor i32 %2368, %2360
  %2370 = lshr i32 %2369, 4
  %2371 = trunc i32 %2370 to i8
  %2372 = and i8 %2371, 1
  store i8 %2372, i8* %37, align 1
  %2373 = icmp eq i32 %2360, 0
  %2374 = zext i1 %2373 to i8
  store i8 %2374, i8* %40, align 1
  %2375 = lshr i32 %2360, 31
  %2376 = trunc i32 %2375 to i8
  store i8 %2376, i8* %43, align 1
  %2377 = lshr i32 %2354, 31
  %2378 = lshr i32 %2359, 31
  %2379 = xor i32 %2378, %2377
  %2380 = xor i32 %2375, %2377
  %2381 = add nuw nsw i32 %2380, %2379
  %2382 = icmp eq i32 %2381, 2
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %49, align 1
  %2384 = icmp ne i8 %2376, 0
  %2385 = xor i1 %2384, %2382
  %.v113 = select i1 %2385, i64 12, i64 123
  %2386 = add i64 %2349, %.v113
  %2387 = add i64 %2386, 5
  store i64 %2387, i64* %3, align 8
  br i1 %2385, label %block_43ecec, label %block_.L_43ed5b

block_43ecec:                                     ; preds = %block_.L_43ece0
  store i64 2, i64* %RAX.i875.phi.trans.insert, align 8
  %2388 = add i64 %2350, -88
  %2389 = add i64 %2386, 9
  store i64 %2389, i64* %3, align 8
  %2390 = inttoptr i64 %2388 to i64*
  %2391 = load i64, i64* %2390, align 8
  store i64 %2391, i64* %RCX.i1056, align 8
  %2392 = add i64 %2391, 4
  store i64 %2392, i64* %RDX.i918, align 8
  %2393 = icmp ugt i64 %2391, -5
  %2394 = zext i1 %2393 to i8
  store i8 %2394, i8* %24, align 1
  %2395 = trunc i64 %2392 to i32
  %2396 = and i32 %2395, 255
  %2397 = tail call i32 @llvm.ctpop.i32(i32 %2396)
  %2398 = trunc i32 %2397 to i8
  %2399 = and i8 %2398, 1
  %2400 = xor i8 %2399, 1
  store i8 %2400, i8* %31, align 1
  %2401 = xor i64 %2392, %2391
  %2402 = lshr i64 %2401, 4
  %2403 = trunc i64 %2402 to i8
  %2404 = and i8 %2403, 1
  store i8 %2404, i8* %37, align 1
  %2405 = icmp eq i64 %2392, 0
  %2406 = zext i1 %2405 to i8
  store i8 %2406, i8* %40, align 1
  %2407 = lshr i64 %2392, 63
  %2408 = trunc i64 %2407 to i8
  store i8 %2408, i8* %43, align 1
  %2409 = lshr i64 %2391, 63
  %2410 = xor i64 %2407, %2409
  %2411 = add nuw nsw i64 %2410, %2407
  %2412 = icmp eq i64 %2411, 2
  %2413 = zext i1 %2412 to i8
  store i8 %2413, i8* %49, align 1
  %2414 = add i64 %2386, 20
  store i64 %2414, i64* %3, align 8
  store i64 %2392, i64* %2390, align 8
  %2415 = load i32*, i32** %2301, align 8
  %2416 = load i64, i64* %3, align 8
  %2417 = add i64 %2416, 2
  store i64 %2417, i64* %3, align 8
  %2418 = load i32, i32* %2415, align 4
  %2419 = zext i32 %2418 to i64
  store i64 %2419, i64* %RSI.i240, align 8
  %2420 = load i64, i64* %RBP.i, align 8
  %2421 = add i64 %2420, -96
  %2422 = add i64 %2416, 6
  store i64 %2422, i64* %3, align 8
  %2423 = inttoptr i64 %2421 to i64*
  %2424 = load i64, i64* %2423, align 8
  store i64 %2424, i64* %RCX.i1056, align 8
  %2425 = add i64 %2424, 4
  store i64 %2425, i64* %RDX.i918, align 8
  %2426 = icmp ugt i64 %2424, -5
  %2427 = zext i1 %2426 to i8
  store i8 %2427, i8* %24, align 1
  %2428 = trunc i64 %2425 to i32
  %2429 = and i32 %2428, 255
  %2430 = tail call i32 @llvm.ctpop.i32(i32 %2429)
  %2431 = trunc i32 %2430 to i8
  %2432 = and i8 %2431, 1
  %2433 = xor i8 %2432, 1
  store i8 %2433, i8* %31, align 1
  %2434 = xor i64 %2425, %2424
  %2435 = lshr i64 %2434, 4
  %2436 = trunc i64 %2435 to i8
  %2437 = and i8 %2436, 1
  store i8 %2437, i8* %37, align 1
  %2438 = icmp eq i64 %2425, 0
  %2439 = zext i1 %2438 to i8
  store i8 %2439, i8* %40, align 1
  %2440 = lshr i64 %2425, 63
  %2441 = trunc i64 %2440 to i8
  store i8 %2441, i8* %43, align 1
  %2442 = lshr i64 %2424, 63
  %2443 = xor i64 %2440, %2442
  %2444 = add nuw nsw i64 %2443, %2440
  %2445 = icmp eq i64 %2444, 2
  %2446 = zext i1 %2445 to i8
  store i8 %2446, i8* %49, align 1
  %2447 = add i64 %2416, 17
  store i64 %2447, i64* %3, align 8
  store i64 %2425, i64* %2423, align 8
  %2448 = load i64, i64* %RSI.i240, align 8
  %2449 = load i32*, i32** %2301, align 8
  %2450 = load i64, i64* %3, align 8
  %2451 = add i64 %2450, 2
  store i64 %2451, i64* %3, align 8
  %2452 = trunc i64 %2448 to i32
  %2453 = load i32, i32* %2449, align 4
  %2454 = add i32 %2453, %2452
  %2455 = lshr i32 %2454, 31
  %2456 = add i32 %2454, 1
  %2457 = zext i32 %2456 to i64
  store i64 %2457, i64* %RSI.i240, align 8
  %2458 = icmp eq i32 %2454, -1
  %2459 = icmp eq i32 %2456, 0
  %2460 = or i1 %2458, %2459
  %2461 = zext i1 %2460 to i8
  store i8 %2461, i8* %24, align 1
  %2462 = and i32 %2456, 255
  %2463 = tail call i32 @llvm.ctpop.i32(i32 %2462)
  %2464 = trunc i32 %2463 to i8
  %2465 = and i8 %2464, 1
  %2466 = xor i8 %2465, 1
  store i8 %2466, i8* %31, align 1
  %2467 = xor i32 %2456, %2454
  %2468 = lshr i32 %2467, 4
  %2469 = trunc i32 %2468 to i8
  %2470 = and i8 %2469, 1
  store i8 %2470, i8* %37, align 1
  %2471 = zext i1 %2459 to i8
  store i8 %2471, i8* %40, align 1
  %2472 = lshr i32 %2456, 31
  %2473 = trunc i32 %2472 to i8
  store i8 %2473, i8* %43, align 1
  %2474 = xor i32 %2472, %2455
  %2475 = add nuw nsw i32 %2474, %2472
  %2476 = icmp eq i32 %2475, 2
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %49, align 1
  %2478 = load i64, i64* %RBP.i, align 8
  %2479 = add i64 %2478, -148
  %2480 = load i32, i32* %EAX.i864.pre-phi, align 4
  %2481 = add i64 %2450, 11
  store i64 %2481, i64* %3, align 8
  %2482 = inttoptr i64 %2479 to i32*
  store i32 %2480, i32* %2482, align 4
  %2483 = load i32, i32* %ESI.i1076, align 4
  %2484 = zext i32 %2483 to i64
  %2485 = load i64, i64* %3, align 8
  store i64 %2484, i64* %RAX.i875.phi.trans.insert, align 8
  %2486 = sext i32 %2483 to i64
  %2487 = lshr i64 %2486, 32
  store i64 %2487, i64* %2302, align 8
  %2488 = load i64, i64* %RBP.i, align 8
  %2489 = add i64 %2488, -148
  %2490 = add i64 %2485, 9
  store i64 %2490, i64* %3, align 8
  %2491 = inttoptr i64 %2489 to i32*
  %2492 = load i32, i32* %2491, align 4
  %2493 = zext i32 %2492 to i64
  store i64 %2493, i64* %RSI.i240, align 8
  %2494 = add i64 %2485, 11
  store i64 %2494, i64* %3, align 8
  %2495 = sext i32 %2492 to i64
  %2496 = shl nuw i64 %2487, 32
  %2497 = or i64 %2496, %2484
  %2498 = sdiv i64 %2497, %2495
  %2499 = shl i64 %2498, 32
  %2500 = ashr exact i64 %2499, 32
  %2501 = icmp eq i64 %2498, %2500
  br i1 %2501, label %2504, label %2502

; <label>:2502:                                   ; preds = %block_43ecec
  %2503 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2494, %struct.Memory* %MEMORY.19)
  %.pre82 = load i16, i16* %AX.i1091, align 2
  %.pre83 = load i64, i64* %3, align 8
  %.pre84 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:2504:                                   ; preds = %block_43ecec
  %2505 = srem i64 %2497, %2495
  %2506 = and i64 %2498, 4294967295
  store i64 %2506, i64* %RAX.i875.phi.trans.insert, align 8
  %2507 = and i64 %2505, 4294967295
  store i64 %2507, i64* %RDX.i918, align 8
  store i8 0, i8* %24, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %2508 = trunc i64 %2498 to i16
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %2504, %2502
  %2509 = phi i64 [ %.pre84, %2502 ], [ %2488, %2504 ]
  %2510 = phi i64 [ %.pre83, %2502 ], [ %2494, %2504 ]
  %2511 = phi i16 [ %.pre82, %2502 ], [ %2508, %2504 ]
  %2512 = phi %struct.Memory* [ %2503, %2502 ], [ %MEMORY.19, %2504 ]
  store i16 %2511, i16* %DI.i208, align 2
  %2513 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2514 = add i64 %2513, 12600
  store i64 %2514, i64* %RCX.i1056, align 8
  %2515 = icmp ugt i64 %2513, -12601
  %2516 = zext i1 %2515 to i8
  store i8 %2516, i8* %24, align 1
  %2517 = trunc i64 %2514 to i32
  %2518 = and i32 %2517, 255
  %2519 = tail call i32 @llvm.ctpop.i32(i32 %2518)
  %2520 = trunc i32 %2519 to i8
  %2521 = and i8 %2520, 1
  %2522 = xor i8 %2521, 1
  store i8 %2522, i8* %31, align 1
  %2523 = xor i64 %2513, 16
  %2524 = xor i64 %2523, %2514
  %2525 = lshr i64 %2524, 4
  %2526 = trunc i64 %2525 to i8
  %2527 = and i8 %2526, 1
  store i8 %2527, i8* %37, align 1
  %2528 = icmp eq i64 %2514, 0
  %2529 = zext i1 %2528 to i8
  store i8 %2529, i8* %40, align 1
  %2530 = lshr i64 %2514, 63
  %2531 = trunc i64 %2530 to i8
  store i8 %2531, i8* %43, align 1
  %2532 = lshr i64 %2513, 63
  %2533 = xor i64 %2530, %2532
  %2534 = add nuw nsw i64 %2533, %2530
  %2535 = icmp eq i64 %2534, 2
  %2536 = zext i1 %2535 to i8
  store i8 %2536, i8* %49, align 1
  %2537 = add i64 %2509, -48
  %2538 = add i64 %2510, 22
  store i64 %2538, i64* %3, align 8
  %2539 = inttoptr i64 %2537 to i32*
  %2540 = load i32, i32* %2539, align 4
  %2541 = sext i32 %2540 to i64
  %2542 = shl nsw i64 %2541, 5
  store i64 %2542, i64* %R8.i202, align 8
  %2543 = add i64 %2542, %2514
  store i64 %2543, i64* %RCX.i1056, align 8
  %2544 = icmp ult i64 %2543, %2514
  %2545 = icmp ult i64 %2543, %2542
  %2546 = or i1 %2544, %2545
  %2547 = zext i1 %2546 to i8
  store i8 %2547, i8* %24, align 1
  %2548 = trunc i64 %2543 to i32
  %2549 = and i32 %2548, 255
  %2550 = tail call i32 @llvm.ctpop.i32(i32 %2549)
  %2551 = trunc i32 %2550 to i8
  %2552 = and i8 %2551, 1
  %2553 = xor i8 %2552, 1
  store i8 %2553, i8* %31, align 1
  %2554 = xor i64 %2514, %2543
  %2555 = lshr i64 %2554, 4
  %2556 = trunc i64 %2555 to i8
  %2557 = and i8 %2556, 1
  store i8 %2557, i8* %37, align 1
  %2558 = icmp eq i64 %2543, 0
  %2559 = zext i1 %2558 to i8
  store i8 %2559, i8* %40, align 1
  %2560 = lshr i64 %2543, 63
  %2561 = trunc i64 %2560 to i8
  store i8 %2561, i8* %43, align 1
  %2562 = lshr i64 %2541, 58
  %2563 = and i64 %2562, 1
  %2564 = xor i64 %2560, %2530
  %2565 = xor i64 %2560, %2563
  %2566 = add nuw nsw i64 %2564, %2565
  %2567 = icmp eq i64 %2566, 2
  %2568 = zext i1 %2567 to i8
  store i8 %2568, i8* %49, align 1
  %2569 = load i64, i64* %RBP.i, align 8
  %2570 = add i64 %2569, -52
  %2571 = add i64 %2510, 33
  store i64 %2571, i64* %3, align 8
  %2572 = inttoptr i64 %2570 to i32*
  %2573 = load i32, i32* %2572, align 4
  %2574 = sext i32 %2573 to i64
  store i64 %2574, i64* %R8.i202, align 8
  %2575 = shl nsw i64 %2574, 1
  %2576 = add i64 %2575, %2543
  %2577 = load i16, i16* %DI.i208, align 2
  %2578 = add i64 %2510, 38
  store i64 %2578, i64* %3, align 8
  %2579 = inttoptr i64 %2576 to i16*
  store i16 %2577, i16* %2579, align 2
  %2580 = load i64, i64* %RBP.i, align 8
  %2581 = add i64 %2580, -48
  %2582 = load i64, i64* %3, align 8
  %2583 = add i64 %2582, 3
  store i64 %2583, i64* %3, align 8
  %2584 = inttoptr i64 %2581 to i32*
  %2585 = load i32, i32* %2584, align 4
  %2586 = add i32 %2585, 1
  %2587 = zext i32 %2586 to i64
  store i64 %2587, i64* %RAX.i875.phi.trans.insert, align 8
  %2588 = icmp eq i32 %2585, -1
  %2589 = icmp eq i32 %2586, 0
  %2590 = or i1 %2588, %2589
  %2591 = zext i1 %2590 to i8
  store i8 %2591, i8* %24, align 1
  %2592 = and i32 %2586, 255
  %2593 = tail call i32 @llvm.ctpop.i32(i32 %2592)
  %2594 = trunc i32 %2593 to i8
  %2595 = and i8 %2594, 1
  %2596 = xor i8 %2595, 1
  store i8 %2596, i8* %31, align 1
  %2597 = xor i32 %2586, %2585
  %2598 = lshr i32 %2597, 4
  %2599 = trunc i32 %2598 to i8
  %2600 = and i8 %2599, 1
  store i8 %2600, i8* %37, align 1
  %2601 = zext i1 %2589 to i8
  store i8 %2601, i8* %40, align 1
  %2602 = lshr i32 %2586, 31
  %2603 = trunc i32 %2602 to i8
  store i8 %2603, i8* %43, align 1
  %2604 = lshr i32 %2585, 31
  %2605 = xor i32 %2602, %2604
  %2606 = add nuw nsw i32 %2605, %2602
  %2607 = icmp eq i32 %2606, 2
  %2608 = zext i1 %2607 to i8
  store i8 %2608, i8* %49, align 1
  %2609 = add i64 %2582, 9
  store i64 %2609, i64* %3, align 8
  store i32 %2586, i32* %2584, align 4
  %2610 = load i64, i64* %3, align 8
  %2611 = add i64 %2610, -118
  store i64 %2611, i64* %3, align 8
  br label %block_.L_43ece0

block_.L_43ed5b:                                  ; preds = %block_.L_43ece0
  %2612 = add i64 %2350, -52
  %2613 = add i64 %2386, 8
  store i64 %2613, i64* %3, align 8
  %2614 = inttoptr i64 %2612 to i32*
  %2615 = load i32, i32* %2614, align 4
  %2616 = add i32 %2615, 1
  %2617 = zext i32 %2616 to i64
  store i64 %2617, i64* %RAX.i875.phi.trans.insert, align 8
  %2618 = icmp eq i32 %2615, -1
  %2619 = icmp eq i32 %2616, 0
  %2620 = or i1 %2618, %2619
  %2621 = zext i1 %2620 to i8
  store i8 %2621, i8* %24, align 1
  %2622 = and i32 %2616, 255
  %2623 = tail call i32 @llvm.ctpop.i32(i32 %2622)
  %2624 = trunc i32 %2623 to i8
  %2625 = and i8 %2624, 1
  %2626 = xor i8 %2625, 1
  store i8 %2626, i8* %31, align 1
  %2627 = xor i32 %2616, %2615
  %2628 = lshr i32 %2627, 4
  %2629 = trunc i32 %2628 to i8
  %2630 = and i8 %2629, 1
  store i8 %2630, i8* %37, align 1
  %2631 = zext i1 %2619 to i8
  store i8 %2631, i8* %40, align 1
  %2632 = lshr i32 %2616, 31
  %2633 = trunc i32 %2632 to i8
  store i8 %2633, i8* %43, align 1
  %2634 = lshr i32 %2615, 31
  %2635 = xor i32 %2632, %2634
  %2636 = add nuw nsw i32 %2635, %2632
  %2637 = icmp eq i32 %2636, 2
  %2638 = zext i1 %2637 to i8
  store i8 %2638, i8* %49, align 1
  %2639 = add i64 %2386, 14
  store i64 %2639, i64* %3, align 8
  store i32 %2616, i32* %2614, align 4
  %2640 = load i64, i64* %3, align 8
  %2641 = add i64 %2640, -155
  store i64 %2641, i64* %3, align 8
  br label %block_.L_43ecce

block_.L_43ed6e:                                  ; preds = %block_.L_43ecce
  %2642 = add i64 %2340, 274
  br label %block_.L_43ee80

block_.L_43ed73:                                  ; preds = %block_.L_43ecbe
  %2643 = add i64 %2292, 4
  store i64 %2643, i64* %3, align 8
  %2644 = load i32, i32* %973, align 4
  store i8 0, i8* %24, align 1
  %2645 = and i32 %2644, 255
  %2646 = tail call i32 @llvm.ctpop.i32(i32 %2645)
  %2647 = trunc i32 %2646 to i8
  %2648 = and i8 %2647, 1
  %2649 = xor i8 %2648, 1
  store i8 %2649, i8* %31, align 1
  store i8 0, i8* %37, align 1
  %2650 = icmp eq i32 %2644, 0
  %2651 = zext i1 %2650 to i8
  store i8 %2651, i8* %40, align 1
  %2652 = lshr i32 %2644, 31
  %2653 = trunc i32 %2652 to i8
  store i8 %2653, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v95 = select i1 %2650, i64 10, i64 137
  %2654 = add i64 %2292, %.v95
  %2655 = add i64 %956, -24
  %2656 = add i64 %2654, 3
  store i64 %2656, i64* %3, align 8
  %2657 = inttoptr i64 %2655 to i32*
  %2658 = load i32, i32* %2657, align 4
  %2659 = zext i32 %2658 to i64
  store i64 %2659, i64* %RAX.i875.phi.trans.insert, align 8
  %2660 = add i64 %956, -52
  %2661 = add i64 %2654, 6
  store i64 %2661, i64* %3, align 8
  %2662 = inttoptr i64 %2660 to i32*
  store i32 %2658, i32* %2662, align 4
  %2663 = bitcast %union.anon* %50 to i32**
  %SI.i45 = bitcast %union.anon* %70 to i16*
  %.pre85 = load i64, i64* %3, align 8
  br i1 %2650, label %block_.L_43ed83.preheader, label %block_.L_43ee02.preheader

block_.L_43ee02.preheader:                        ; preds = %block_.L_43ed73
  br label %block_.L_43ee02

block_.L_43ed83.preheader:                        ; preds = %block_.L_43ed73
  br label %block_.L_43ed83

block_.L_43ed83:                                  ; preds = %block_.L_43ed83.preheader, %block_.L_43ede4
  %2664 = phi i64 [ %2909, %block_.L_43ede4 ], [ %.pre85, %block_.L_43ed83.preheader ]
  %2665 = load i64, i64* %RBP.i, align 8
  %2666 = add i64 %2665, -52
  %2667 = add i64 %2664, 3
  store i64 %2667, i64* %3, align 8
  %2668 = inttoptr i64 %2666 to i32*
  %2669 = load i32, i32* %2668, align 4
  %2670 = zext i32 %2669 to i64
  store i64 %2670, i64* %RAX.i875.phi.trans.insert, align 8
  %2671 = add i64 %2665, -60
  %2672 = add i64 %2664, 6
  store i64 %2672, i64* %3, align 8
  %2673 = inttoptr i64 %2671 to i32*
  %2674 = load i32, i32* %2673, align 4
  %2675 = sub i32 %2669, %2674
  %2676 = icmp ult i32 %2669, %2674
  %2677 = zext i1 %2676 to i8
  store i8 %2677, i8* %24, align 1
  %2678 = and i32 %2675, 255
  %2679 = tail call i32 @llvm.ctpop.i32(i32 %2678)
  %2680 = trunc i32 %2679 to i8
  %2681 = and i8 %2680, 1
  %2682 = xor i8 %2681, 1
  store i8 %2682, i8* %31, align 1
  %2683 = xor i32 %2674, %2669
  %2684 = xor i32 %2683, %2675
  %2685 = lshr i32 %2684, 4
  %2686 = trunc i32 %2685 to i8
  %2687 = and i8 %2686, 1
  store i8 %2687, i8* %37, align 1
  %2688 = icmp eq i32 %2675, 0
  %2689 = zext i1 %2688 to i8
  store i8 %2689, i8* %40, align 1
  %2690 = lshr i32 %2675, 31
  %2691 = trunc i32 %2690 to i8
  store i8 %2691, i8* %43, align 1
  %2692 = lshr i32 %2669, 31
  %2693 = lshr i32 %2674, 31
  %2694 = xor i32 %2693, %2692
  %2695 = xor i32 %2690, %2692
  %2696 = add nuw nsw i32 %2695, %2694
  %2697 = icmp eq i32 %2696, 2
  %2698 = zext i1 %2697 to i8
  store i8 %2698, i8* %49, align 1
  %2699 = icmp ne i8 %2691, 0
  %2700 = xor i1 %2699, %2697
  %.v111 = select i1 %2700, i64 12, i64 116
  %2701 = add i64 %2664, %.v111
  store i64 %2701, i64* %3, align 8
  br i1 %2700, label %block_43ed8f, label %block_.L_43edf7

block_43ed8f:                                     ; preds = %block_.L_43ed83
  %2702 = add i64 %2665, -20
  %2703 = add i64 %2701, 3
  store i64 %2703, i64* %3, align 8
  %2704 = inttoptr i64 %2702 to i32*
  %2705 = load i32, i32* %2704, align 4
  %2706 = zext i32 %2705 to i64
  store i64 %2706, i64* %RAX.i875.phi.trans.insert, align 8
  %2707 = add i64 %2665, -48
  %2708 = add i64 %2701, 6
  store i64 %2708, i64* %3, align 8
  %2709 = inttoptr i64 %2707 to i32*
  store i32 %2705, i32* %2709, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_43ed95

block_.L_43ed95:                                  ; preds = %block_43eda1, %block_43ed8f
  %2710 = phi i64 [ %2879, %block_43eda1 ], [ %.pre86, %block_43ed8f ]
  %2711 = load i64, i64* %RBP.i, align 8
  %2712 = add i64 %2711, -48
  %2713 = add i64 %2710, 3
  store i64 %2713, i64* %3, align 8
  %2714 = inttoptr i64 %2712 to i32*
  %2715 = load i32, i32* %2714, align 4
  %2716 = zext i32 %2715 to i64
  store i64 %2716, i64* %RAX.i875.phi.trans.insert, align 8
  %2717 = add i64 %2711, -56
  %2718 = add i64 %2710, 6
  store i64 %2718, i64* %3, align 8
  %2719 = inttoptr i64 %2717 to i32*
  %2720 = load i32, i32* %2719, align 4
  %2721 = sub i32 %2715, %2720
  %2722 = icmp ult i32 %2715, %2720
  %2723 = zext i1 %2722 to i8
  store i8 %2723, i8* %24, align 1
  %2724 = and i32 %2721, 255
  %2725 = tail call i32 @llvm.ctpop.i32(i32 %2724)
  %2726 = trunc i32 %2725 to i8
  %2727 = and i8 %2726, 1
  %2728 = xor i8 %2727, 1
  store i8 %2728, i8* %31, align 1
  %2729 = xor i32 %2720, %2715
  %2730 = xor i32 %2729, %2721
  %2731 = lshr i32 %2730, 4
  %2732 = trunc i32 %2731 to i8
  %2733 = and i8 %2732, 1
  store i8 %2733, i8* %37, align 1
  %2734 = icmp eq i32 %2721, 0
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %40, align 1
  %2736 = lshr i32 %2721, 31
  %2737 = trunc i32 %2736 to i8
  store i8 %2737, i8* %43, align 1
  %2738 = lshr i32 %2715, 31
  %2739 = lshr i32 %2720, 31
  %2740 = xor i32 %2739, %2738
  %2741 = xor i32 %2736, %2738
  %2742 = add nuw nsw i32 %2741, %2740
  %2743 = icmp eq i32 %2742, 2
  %2744 = zext i1 %2743 to i8
  store i8 %2744, i8* %49, align 1
  %2745 = icmp ne i8 %2737, 0
  %2746 = xor i1 %2745, %2743
  %.v97 = select i1 %2746, i64 12, i64 79
  %2747 = add i64 %2710, %.v97
  store i64 %2747, i64* %3, align 8
  br i1 %2746, label %block_43eda1, label %block_.L_43ede4

block_43eda1:                                     ; preds = %block_.L_43ed95
  %2748 = add i64 %2711, -88
  %2749 = add i64 %2747, 4
  store i64 %2749, i64* %3, align 8
  %2750 = inttoptr i64 %2748 to i64*
  %2751 = load i64, i64* %2750, align 8
  store i64 %2751, i64* %RAX.i875.phi.trans.insert, align 8
  %2752 = add i64 %2751, 4
  store i64 %2752, i64* %RCX.i1056, align 8
  %2753 = icmp ugt i64 %2751, -5
  %2754 = zext i1 %2753 to i8
  store i8 %2754, i8* %24, align 1
  %2755 = trunc i64 %2752 to i32
  %2756 = and i32 %2755, 255
  %2757 = tail call i32 @llvm.ctpop.i32(i32 %2756)
  %2758 = trunc i32 %2757 to i8
  %2759 = and i8 %2758, 1
  %2760 = xor i8 %2759, 1
  store i8 %2760, i8* %31, align 1
  %2761 = xor i64 %2752, %2751
  %2762 = lshr i64 %2761, 4
  %2763 = trunc i64 %2762 to i8
  %2764 = and i8 %2763, 1
  store i8 %2764, i8* %37, align 1
  %2765 = icmp eq i64 %2752, 0
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %40, align 1
  %2767 = lshr i64 %2752, 63
  %2768 = trunc i64 %2767 to i8
  store i8 %2768, i8* %43, align 1
  %2769 = lshr i64 %2751, 63
  %2770 = xor i64 %2767, %2769
  %2771 = add nuw nsw i64 %2770, %2767
  %2772 = icmp eq i64 %2771, 2
  %2773 = zext i1 %2772 to i8
  store i8 %2773, i8* %49, align 1
  %2774 = add i64 %2747, 15
  store i64 %2774, i64* %3, align 8
  store i64 %2752, i64* %2750, align 8
  %2775 = load i32*, i32** %2663, align 8
  %2776 = load i64, i64* %3, align 8
  %2777 = add i64 %2776, 2
  store i64 %2777, i64* %3, align 8
  %2778 = load i32, i32* %2775, align 4
  %2779 = zext i32 %2778 to i64
  store i64 %2779, i64* %RDX.i918, align 8
  %2780 = trunc i32 %2778 to i16
  store i16 %2780, i16* %SI.i45, align 2
  %2781 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2782 = add i64 %2781, 12600
  store i64 %2782, i64* %RAX.i875.phi.trans.insert, align 8
  %2783 = icmp ugt i64 %2781, -12601
  %2784 = zext i1 %2783 to i8
  store i8 %2784, i8* %24, align 1
  %2785 = trunc i64 %2782 to i32
  %2786 = and i32 %2785, 255
  %2787 = tail call i32 @llvm.ctpop.i32(i32 %2786)
  %2788 = trunc i32 %2787 to i8
  %2789 = and i8 %2788, 1
  %2790 = xor i8 %2789, 1
  store i8 %2790, i8* %31, align 1
  %2791 = xor i64 %2781, 16
  %2792 = xor i64 %2791, %2782
  %2793 = lshr i64 %2792, 4
  %2794 = trunc i64 %2793 to i8
  %2795 = and i8 %2794, 1
  store i8 %2795, i8* %37, align 1
  %2796 = icmp eq i64 %2782, 0
  %2797 = zext i1 %2796 to i8
  store i8 %2797, i8* %40, align 1
  %2798 = lshr i64 %2782, 63
  %2799 = trunc i64 %2798 to i8
  store i8 %2799, i8* %43, align 1
  %2800 = lshr i64 %2781, 63
  %2801 = xor i64 %2798, %2800
  %2802 = add nuw nsw i64 %2801, %2798
  %2803 = icmp eq i64 %2802, 2
  %2804 = zext i1 %2803 to i8
  store i8 %2804, i8* %49, align 1
  %2805 = load i64, i64* %RBP.i, align 8
  %2806 = add i64 %2805, -48
  %2807 = add i64 %2776, 23
  store i64 %2807, i64* %3, align 8
  %2808 = inttoptr i64 %2806 to i32*
  %2809 = load i32, i32* %2808, align 4
  %2810 = sext i32 %2809 to i64
  %2811 = shl nsw i64 %2810, 5
  store i64 %2811, i64* %RCX.i1056, align 8
  %2812 = add i64 %2811, %2782
  store i64 %2812, i64* %RAX.i875.phi.trans.insert, align 8
  %2813 = icmp ult i64 %2812, %2782
  %2814 = icmp ult i64 %2812, %2811
  %2815 = or i1 %2813, %2814
  %2816 = zext i1 %2815 to i8
  store i8 %2816, i8* %24, align 1
  %2817 = trunc i64 %2812 to i32
  %2818 = and i32 %2817, 255
  %2819 = tail call i32 @llvm.ctpop.i32(i32 %2818)
  %2820 = trunc i32 %2819 to i8
  %2821 = and i8 %2820, 1
  %2822 = xor i8 %2821, 1
  store i8 %2822, i8* %31, align 1
  %2823 = xor i64 %2782, %2812
  %2824 = lshr i64 %2823, 4
  %2825 = trunc i64 %2824 to i8
  %2826 = and i8 %2825, 1
  store i8 %2826, i8* %37, align 1
  %2827 = icmp eq i64 %2812, 0
  %2828 = zext i1 %2827 to i8
  store i8 %2828, i8* %40, align 1
  %2829 = lshr i64 %2812, 63
  %2830 = trunc i64 %2829 to i8
  store i8 %2830, i8* %43, align 1
  %2831 = lshr i64 %2810, 58
  %2832 = and i64 %2831, 1
  %2833 = xor i64 %2829, %2798
  %2834 = xor i64 %2829, %2832
  %2835 = add nuw nsw i64 %2833, %2834
  %2836 = icmp eq i64 %2835, 2
  %2837 = zext i1 %2836 to i8
  store i8 %2837, i8* %49, align 1
  %2838 = add i64 %2805, -52
  %2839 = add i64 %2776, 34
  store i64 %2839, i64* %3, align 8
  %2840 = inttoptr i64 %2838 to i32*
  %2841 = load i32, i32* %2840, align 4
  %2842 = sext i32 %2841 to i64
  store i64 %2842, i64* %RCX.i1056, align 8
  %2843 = shl nsw i64 %2842, 1
  %2844 = add i64 %2843, %2812
  %2845 = load i16, i16* %SI.i45, align 2
  %2846 = add i64 %2776, 38
  store i64 %2846, i64* %3, align 8
  %2847 = inttoptr i64 %2844 to i16*
  store i16 %2845, i16* %2847, align 2
  %2848 = load i64, i64* %RBP.i, align 8
  %2849 = add i64 %2848, -48
  %2850 = load i64, i64* %3, align 8
  %2851 = add i64 %2850, 3
  store i64 %2851, i64* %3, align 8
  %2852 = inttoptr i64 %2849 to i32*
  %2853 = load i32, i32* %2852, align 4
  %2854 = add i32 %2853, 1
  %2855 = zext i32 %2854 to i64
  store i64 %2855, i64* %RAX.i875.phi.trans.insert, align 8
  %2856 = icmp eq i32 %2853, -1
  %2857 = icmp eq i32 %2854, 0
  %2858 = or i1 %2856, %2857
  %2859 = zext i1 %2858 to i8
  store i8 %2859, i8* %24, align 1
  %2860 = and i32 %2854, 255
  %2861 = tail call i32 @llvm.ctpop.i32(i32 %2860)
  %2862 = trunc i32 %2861 to i8
  %2863 = and i8 %2862, 1
  %2864 = xor i8 %2863, 1
  store i8 %2864, i8* %31, align 1
  %2865 = xor i32 %2854, %2853
  %2866 = lshr i32 %2865, 4
  %2867 = trunc i32 %2866 to i8
  %2868 = and i8 %2867, 1
  store i8 %2868, i8* %37, align 1
  %2869 = zext i1 %2857 to i8
  store i8 %2869, i8* %40, align 1
  %2870 = lshr i32 %2854, 31
  %2871 = trunc i32 %2870 to i8
  store i8 %2871, i8* %43, align 1
  %2872 = lshr i32 %2853, 31
  %2873 = xor i32 %2870, %2872
  %2874 = add nuw nsw i32 %2873, %2870
  %2875 = icmp eq i32 %2874, 2
  %2876 = zext i1 %2875 to i8
  store i8 %2876, i8* %49, align 1
  %2877 = add i64 %2850, 9
  store i64 %2877, i64* %3, align 8
  store i32 %2854, i32* %2852, align 4
  %2878 = load i64, i64* %3, align 8
  %2879 = add i64 %2878, -74
  store i64 %2879, i64* %3, align 8
  br label %block_.L_43ed95

block_.L_43ede4:                                  ; preds = %block_.L_43ed95
  %2880 = add i64 %2711, -52
  %2881 = add i64 %2747, 8
  store i64 %2881, i64* %3, align 8
  %2882 = inttoptr i64 %2880 to i32*
  %2883 = load i32, i32* %2882, align 4
  %2884 = add i32 %2883, 1
  %2885 = zext i32 %2884 to i64
  store i64 %2885, i64* %RAX.i875.phi.trans.insert, align 8
  %2886 = icmp eq i32 %2883, -1
  %2887 = icmp eq i32 %2884, 0
  %2888 = or i1 %2886, %2887
  %2889 = zext i1 %2888 to i8
  store i8 %2889, i8* %24, align 1
  %2890 = and i32 %2884, 255
  %2891 = tail call i32 @llvm.ctpop.i32(i32 %2890)
  %2892 = trunc i32 %2891 to i8
  %2893 = and i8 %2892, 1
  %2894 = xor i8 %2893, 1
  store i8 %2894, i8* %31, align 1
  %2895 = xor i32 %2884, %2883
  %2896 = lshr i32 %2895, 4
  %2897 = trunc i32 %2896 to i8
  %2898 = and i8 %2897, 1
  store i8 %2898, i8* %37, align 1
  %2899 = zext i1 %2887 to i8
  store i8 %2899, i8* %40, align 1
  %2900 = lshr i32 %2884, 31
  %2901 = trunc i32 %2900 to i8
  store i8 %2901, i8* %43, align 1
  %2902 = lshr i32 %2883, 31
  %2903 = xor i32 %2900, %2902
  %2904 = add nuw nsw i32 %2903, %2900
  %2905 = icmp eq i32 %2904, 2
  %2906 = zext i1 %2905 to i8
  store i8 %2906, i8* %49, align 1
  %2907 = add i64 %2747, 14
  store i64 %2907, i64* %3, align 8
  store i32 %2884, i32* %2882, align 4
  %2908 = load i64, i64* %3, align 8
  %2909 = add i64 %2908, -111
  store i64 %2909, i64* %3, align 8
  br label %block_.L_43ed83

block_.L_43edf7:                                  ; preds = %block_.L_43ed83
  %2910 = add i64 %2701, 132
  br label %block_.L_43ee7b

block_.L_43ee02:                                  ; preds = %block_.L_43ee02.preheader, %block_.L_43ee63
  %2911 = phi i64 [ %3156, %block_.L_43ee63 ], [ %.pre85, %block_.L_43ee02.preheader ]
  %2912 = load i64, i64* %RBP.i, align 8
  %2913 = add i64 %2912, -52
  %2914 = add i64 %2911, 3
  store i64 %2914, i64* %3, align 8
  %2915 = inttoptr i64 %2913 to i32*
  %2916 = load i32, i32* %2915, align 4
  %2917 = zext i32 %2916 to i64
  store i64 %2917, i64* %RAX.i875.phi.trans.insert, align 8
  %2918 = add i64 %2912, -60
  %2919 = add i64 %2911, 6
  store i64 %2919, i64* %3, align 8
  %2920 = inttoptr i64 %2918 to i32*
  %2921 = load i32, i32* %2920, align 4
  %2922 = sub i32 %2916, %2921
  %2923 = icmp ult i32 %2916, %2921
  %2924 = zext i1 %2923 to i8
  store i8 %2924, i8* %24, align 1
  %2925 = and i32 %2922, 255
  %2926 = tail call i32 @llvm.ctpop.i32(i32 %2925)
  %2927 = trunc i32 %2926 to i8
  %2928 = and i8 %2927, 1
  %2929 = xor i8 %2928, 1
  store i8 %2929, i8* %31, align 1
  %2930 = xor i32 %2921, %2916
  %2931 = xor i32 %2930, %2922
  %2932 = lshr i32 %2931, 4
  %2933 = trunc i32 %2932 to i8
  %2934 = and i8 %2933, 1
  store i8 %2934, i8* %37, align 1
  %2935 = icmp eq i32 %2922, 0
  %2936 = zext i1 %2935 to i8
  store i8 %2936, i8* %40, align 1
  %2937 = lshr i32 %2922, 31
  %2938 = trunc i32 %2937 to i8
  store i8 %2938, i8* %43, align 1
  %2939 = lshr i32 %2916, 31
  %2940 = lshr i32 %2921, 31
  %2941 = xor i32 %2940, %2939
  %2942 = xor i32 %2937, %2939
  %2943 = add nuw nsw i32 %2942, %2941
  %2944 = icmp eq i32 %2943, 2
  %2945 = zext i1 %2944 to i8
  store i8 %2945, i8* %49, align 1
  %2946 = icmp ne i8 %2938, 0
  %2947 = xor i1 %2946, %2944
  %.v110 = select i1 %2947, i64 12, i64 116
  %2948 = add i64 %2911, %.v110
  store i64 %2948, i64* %3, align 8
  br i1 %2947, label %block_43ee0e, label %block_.L_43ee76

block_43ee0e:                                     ; preds = %block_.L_43ee02
  %2949 = add i64 %2912, -20
  %2950 = add i64 %2948, 3
  store i64 %2950, i64* %3, align 8
  %2951 = inttoptr i64 %2949 to i32*
  %2952 = load i32, i32* %2951, align 4
  %2953 = zext i32 %2952 to i64
  store i64 %2953, i64* %RAX.i875.phi.trans.insert, align 8
  %2954 = add i64 %2912, -48
  %2955 = add i64 %2948, 6
  store i64 %2955, i64* %3, align 8
  %2956 = inttoptr i64 %2954 to i32*
  store i32 %2952, i32* %2956, align 4
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_43ee14

block_.L_43ee14:                                  ; preds = %block_43ee20, %block_43ee0e
  %2957 = phi i64 [ %3126, %block_43ee20 ], [ %.pre88, %block_43ee0e ]
  %2958 = load i64, i64* %RBP.i, align 8
  %2959 = add i64 %2958, -48
  %2960 = add i64 %2957, 3
  store i64 %2960, i64* %3, align 8
  %2961 = inttoptr i64 %2959 to i32*
  %2962 = load i32, i32* %2961, align 4
  %2963 = zext i32 %2962 to i64
  store i64 %2963, i64* %RAX.i875.phi.trans.insert, align 8
  %2964 = add i64 %2958, -56
  %2965 = add i64 %2957, 6
  store i64 %2965, i64* %3, align 8
  %2966 = inttoptr i64 %2964 to i32*
  %2967 = load i32, i32* %2966, align 4
  %2968 = sub i32 %2962, %2967
  %2969 = icmp ult i32 %2962, %2967
  %2970 = zext i1 %2969 to i8
  store i8 %2970, i8* %24, align 1
  %2971 = and i32 %2968, 255
  %2972 = tail call i32 @llvm.ctpop.i32(i32 %2971)
  %2973 = trunc i32 %2972 to i8
  %2974 = and i8 %2973, 1
  %2975 = xor i8 %2974, 1
  store i8 %2975, i8* %31, align 1
  %2976 = xor i32 %2967, %2962
  %2977 = xor i32 %2976, %2968
  %2978 = lshr i32 %2977, 4
  %2979 = trunc i32 %2978 to i8
  %2980 = and i8 %2979, 1
  store i8 %2980, i8* %37, align 1
  %2981 = icmp eq i32 %2968, 0
  %2982 = zext i1 %2981 to i8
  store i8 %2982, i8* %40, align 1
  %2983 = lshr i32 %2968, 31
  %2984 = trunc i32 %2983 to i8
  store i8 %2984, i8* %43, align 1
  %2985 = lshr i32 %2962, 31
  %2986 = lshr i32 %2967, 31
  %2987 = xor i32 %2986, %2985
  %2988 = xor i32 %2983, %2985
  %2989 = add nuw nsw i32 %2988, %2987
  %2990 = icmp eq i32 %2989, 2
  %2991 = zext i1 %2990 to i8
  store i8 %2991, i8* %49, align 1
  %2992 = icmp ne i8 %2984, 0
  %2993 = xor i1 %2992, %2990
  %.v98 = select i1 %2993, i64 12, i64 79
  %2994 = add i64 %2957, %.v98
  store i64 %2994, i64* %3, align 8
  br i1 %2993, label %block_43ee20, label %block_.L_43ee63

block_43ee20:                                     ; preds = %block_.L_43ee14
  %2995 = add i64 %2958, -96
  %2996 = add i64 %2994, 4
  store i64 %2996, i64* %3, align 8
  %2997 = inttoptr i64 %2995 to i64*
  %2998 = load i64, i64* %2997, align 8
  store i64 %2998, i64* %RAX.i875.phi.trans.insert, align 8
  %2999 = add i64 %2998, 4
  store i64 %2999, i64* %RCX.i1056, align 8
  %3000 = icmp ugt i64 %2998, -5
  %3001 = zext i1 %3000 to i8
  store i8 %3001, i8* %24, align 1
  %3002 = trunc i64 %2999 to i32
  %3003 = and i32 %3002, 255
  %3004 = tail call i32 @llvm.ctpop.i32(i32 %3003)
  %3005 = trunc i32 %3004 to i8
  %3006 = and i8 %3005, 1
  %3007 = xor i8 %3006, 1
  store i8 %3007, i8* %31, align 1
  %3008 = xor i64 %2999, %2998
  %3009 = lshr i64 %3008, 4
  %3010 = trunc i64 %3009 to i8
  %3011 = and i8 %3010, 1
  store i8 %3011, i8* %37, align 1
  %3012 = icmp eq i64 %2999, 0
  %3013 = zext i1 %3012 to i8
  store i8 %3013, i8* %40, align 1
  %3014 = lshr i64 %2999, 63
  %3015 = trunc i64 %3014 to i8
  store i8 %3015, i8* %43, align 1
  %3016 = lshr i64 %2998, 63
  %3017 = xor i64 %3014, %3016
  %3018 = add nuw nsw i64 %3017, %3014
  %3019 = icmp eq i64 %3018, 2
  %3020 = zext i1 %3019 to i8
  store i8 %3020, i8* %49, align 1
  %3021 = add i64 %2994, 15
  store i64 %3021, i64* %3, align 8
  store i64 %2999, i64* %2997, align 8
  %3022 = load i32*, i32** %2663, align 8
  %3023 = load i64, i64* %3, align 8
  %3024 = add i64 %3023, 2
  store i64 %3024, i64* %3, align 8
  %3025 = load i32, i32* %3022, align 4
  %3026 = zext i32 %3025 to i64
  store i64 %3026, i64* %RDX.i918, align 8
  %3027 = trunc i32 %3025 to i16
  store i16 %3027, i16* %SI.i45, align 2
  %3028 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3029 = add i64 %3028, 12600
  store i64 %3029, i64* %RAX.i875.phi.trans.insert, align 8
  %3030 = icmp ugt i64 %3028, -12601
  %3031 = zext i1 %3030 to i8
  store i8 %3031, i8* %24, align 1
  %3032 = trunc i64 %3029 to i32
  %3033 = and i32 %3032, 255
  %3034 = tail call i32 @llvm.ctpop.i32(i32 %3033)
  %3035 = trunc i32 %3034 to i8
  %3036 = and i8 %3035, 1
  %3037 = xor i8 %3036, 1
  store i8 %3037, i8* %31, align 1
  %3038 = xor i64 %3028, 16
  %3039 = xor i64 %3038, %3029
  %3040 = lshr i64 %3039, 4
  %3041 = trunc i64 %3040 to i8
  %3042 = and i8 %3041, 1
  store i8 %3042, i8* %37, align 1
  %3043 = icmp eq i64 %3029, 0
  %3044 = zext i1 %3043 to i8
  store i8 %3044, i8* %40, align 1
  %3045 = lshr i64 %3029, 63
  %3046 = trunc i64 %3045 to i8
  store i8 %3046, i8* %43, align 1
  %3047 = lshr i64 %3028, 63
  %3048 = xor i64 %3045, %3047
  %3049 = add nuw nsw i64 %3048, %3045
  %3050 = icmp eq i64 %3049, 2
  %3051 = zext i1 %3050 to i8
  store i8 %3051, i8* %49, align 1
  %3052 = load i64, i64* %RBP.i, align 8
  %3053 = add i64 %3052, -48
  %3054 = add i64 %3023, 23
  store i64 %3054, i64* %3, align 8
  %3055 = inttoptr i64 %3053 to i32*
  %3056 = load i32, i32* %3055, align 4
  %3057 = sext i32 %3056 to i64
  %3058 = shl nsw i64 %3057, 5
  store i64 %3058, i64* %RCX.i1056, align 8
  %3059 = add i64 %3058, %3029
  store i64 %3059, i64* %RAX.i875.phi.trans.insert, align 8
  %3060 = icmp ult i64 %3059, %3029
  %3061 = icmp ult i64 %3059, %3058
  %3062 = or i1 %3060, %3061
  %3063 = zext i1 %3062 to i8
  store i8 %3063, i8* %24, align 1
  %3064 = trunc i64 %3059 to i32
  %3065 = and i32 %3064, 255
  %3066 = tail call i32 @llvm.ctpop.i32(i32 %3065)
  %3067 = trunc i32 %3066 to i8
  %3068 = and i8 %3067, 1
  %3069 = xor i8 %3068, 1
  store i8 %3069, i8* %31, align 1
  %3070 = xor i64 %3029, %3059
  %3071 = lshr i64 %3070, 4
  %3072 = trunc i64 %3071 to i8
  %3073 = and i8 %3072, 1
  store i8 %3073, i8* %37, align 1
  %3074 = icmp eq i64 %3059, 0
  %3075 = zext i1 %3074 to i8
  store i8 %3075, i8* %40, align 1
  %3076 = lshr i64 %3059, 63
  %3077 = trunc i64 %3076 to i8
  store i8 %3077, i8* %43, align 1
  %3078 = lshr i64 %3057, 58
  %3079 = and i64 %3078, 1
  %3080 = xor i64 %3076, %3045
  %3081 = xor i64 %3076, %3079
  %3082 = add nuw nsw i64 %3080, %3081
  %3083 = icmp eq i64 %3082, 2
  %3084 = zext i1 %3083 to i8
  store i8 %3084, i8* %49, align 1
  %3085 = add i64 %3052, -52
  %3086 = add i64 %3023, 34
  store i64 %3086, i64* %3, align 8
  %3087 = inttoptr i64 %3085 to i32*
  %3088 = load i32, i32* %3087, align 4
  %3089 = sext i32 %3088 to i64
  store i64 %3089, i64* %RCX.i1056, align 8
  %3090 = shl nsw i64 %3089, 1
  %3091 = add i64 %3090, %3059
  %3092 = load i16, i16* %SI.i45, align 2
  %3093 = add i64 %3023, 38
  store i64 %3093, i64* %3, align 8
  %3094 = inttoptr i64 %3091 to i16*
  store i16 %3092, i16* %3094, align 2
  %3095 = load i64, i64* %RBP.i, align 8
  %3096 = add i64 %3095, -48
  %3097 = load i64, i64* %3, align 8
  %3098 = add i64 %3097, 3
  store i64 %3098, i64* %3, align 8
  %3099 = inttoptr i64 %3096 to i32*
  %3100 = load i32, i32* %3099, align 4
  %3101 = add i32 %3100, 1
  %3102 = zext i32 %3101 to i64
  store i64 %3102, i64* %RAX.i875.phi.trans.insert, align 8
  %3103 = icmp eq i32 %3100, -1
  %3104 = icmp eq i32 %3101, 0
  %3105 = or i1 %3103, %3104
  %3106 = zext i1 %3105 to i8
  store i8 %3106, i8* %24, align 1
  %3107 = and i32 %3101, 255
  %3108 = tail call i32 @llvm.ctpop.i32(i32 %3107)
  %3109 = trunc i32 %3108 to i8
  %3110 = and i8 %3109, 1
  %3111 = xor i8 %3110, 1
  store i8 %3111, i8* %31, align 1
  %3112 = xor i32 %3101, %3100
  %3113 = lshr i32 %3112, 4
  %3114 = trunc i32 %3113 to i8
  %3115 = and i8 %3114, 1
  store i8 %3115, i8* %37, align 1
  %3116 = zext i1 %3104 to i8
  store i8 %3116, i8* %40, align 1
  %3117 = lshr i32 %3101, 31
  %3118 = trunc i32 %3117 to i8
  store i8 %3118, i8* %43, align 1
  %3119 = lshr i32 %3100, 31
  %3120 = xor i32 %3117, %3119
  %3121 = add nuw nsw i32 %3120, %3117
  %3122 = icmp eq i32 %3121, 2
  %3123 = zext i1 %3122 to i8
  store i8 %3123, i8* %49, align 1
  %3124 = add i64 %3097, 9
  store i64 %3124, i64* %3, align 8
  store i32 %3101, i32* %3099, align 4
  %3125 = load i64, i64* %3, align 8
  %3126 = add i64 %3125, -74
  store i64 %3126, i64* %3, align 8
  br label %block_.L_43ee14

block_.L_43ee63:                                  ; preds = %block_.L_43ee14
  %3127 = add i64 %2958, -52
  %3128 = add i64 %2994, 8
  store i64 %3128, i64* %3, align 8
  %3129 = inttoptr i64 %3127 to i32*
  %3130 = load i32, i32* %3129, align 4
  %3131 = add i32 %3130, 1
  %3132 = zext i32 %3131 to i64
  store i64 %3132, i64* %RAX.i875.phi.trans.insert, align 8
  %3133 = icmp eq i32 %3130, -1
  %3134 = icmp eq i32 %3131, 0
  %3135 = or i1 %3133, %3134
  %3136 = zext i1 %3135 to i8
  store i8 %3136, i8* %24, align 1
  %3137 = and i32 %3131, 255
  %3138 = tail call i32 @llvm.ctpop.i32(i32 %3137)
  %3139 = trunc i32 %3138 to i8
  %3140 = and i8 %3139, 1
  %3141 = xor i8 %3140, 1
  store i8 %3141, i8* %31, align 1
  %3142 = xor i32 %3131, %3130
  %3143 = lshr i32 %3142, 4
  %3144 = trunc i32 %3143 to i8
  %3145 = and i8 %3144, 1
  store i8 %3145, i8* %37, align 1
  %3146 = zext i1 %3134 to i8
  store i8 %3146, i8* %40, align 1
  %3147 = lshr i32 %3131, 31
  %3148 = trunc i32 %3147 to i8
  store i8 %3148, i8* %43, align 1
  %3149 = lshr i32 %3130, 31
  %3150 = xor i32 %3147, %3149
  %3151 = add nuw nsw i32 %3150, %3147
  %3152 = icmp eq i32 %3151, 2
  %3153 = zext i1 %3152 to i8
  store i8 %3153, i8* %49, align 1
  %3154 = add i64 %2994, 14
  store i64 %3154, i64* %3, align 8
  store i32 %3131, i32* %3129, align 4
  %3155 = load i64, i64* %3, align 8
  %3156 = add i64 %3155, -111
  store i64 %3156, i64* %3, align 8
  br label %block_.L_43ee02

block_.L_43ee76:                                  ; preds = %block_.L_43ee02
  %3157 = add i64 %2948, 5
  store i64 %3157, i64* %3, align 8
  br label %block_.L_43ee7b

block_.L_43ee7b:                                  ; preds = %block_.L_43ee76, %block_.L_43edf7
  %storemerge37 = phi i64 [ %2910, %block_.L_43edf7 ], [ %3157, %block_.L_43ee76 ]
  %3158 = add i64 %storemerge37, 5
  store i64 %3158, i64* %3, align 8
  br label %block_.L_43ee80

block_.L_43ee80:                                  ; preds = %block_.L_43ee7b, %block_.L_43ed6e
  %storemerge35 = phi i64 [ %2642, %block_.L_43ed6e ], [ %3158, %block_.L_43ee7b ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.18, %block_.L_43ed6e ], [ %MEMORY.9, %block_.L_43ee7b ]
  %3159 = add i64 %storemerge35, 5
  store i64 %3159, i64* %3, align 8
  br label %block_.L_43ee85

block_.L_43ee85:                                  ; preds = %block_.L_43ee80, %block_.L_43ecb9
  %storemerge30 = phi i64 [ %2291, %block_.L_43ecb9 ], [ %3159, %block_.L_43ee80 ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.9, %block_.L_43ecb9 ], [ %MEMORY.25, %block_.L_43ee80 ]
  %3160 = load i64, i64* %6, align 8
  %3161 = add i64 %3160, 144
  store i64 %3161, i64* %6, align 8
  %3162 = icmp ugt i64 %3160, -145
  %3163 = zext i1 %3162 to i8
  store i8 %3163, i8* %24, align 1
  %3164 = trunc i64 %3161 to i32
  %3165 = and i32 %3164, 255
  %3166 = tail call i32 @llvm.ctpop.i32(i32 %3165)
  %3167 = trunc i32 %3166 to i8
  %3168 = and i8 %3167, 1
  %3169 = xor i8 %3168, 1
  store i8 %3169, i8* %31, align 1
  %3170 = xor i64 %3160, 16
  %3171 = xor i64 %3170, %3161
  %3172 = lshr i64 %3171, 4
  %3173 = trunc i64 %3172 to i8
  %3174 = and i8 %3173, 1
  store i8 %3174, i8* %37, align 1
  %3175 = icmp eq i64 %3161, 0
  %3176 = zext i1 %3175 to i8
  store i8 %3176, i8* %40, align 1
  %3177 = lshr i64 %3161, 63
  %3178 = trunc i64 %3177 to i8
  store i8 %3178, i8* %43, align 1
  %3179 = lshr i64 %3160, 63
  %3180 = xor i64 %3177, %3179
  %3181 = add nuw nsw i64 %3180, %3177
  %3182 = icmp eq i64 %3181, 2
  %3183 = zext i1 %3182 to i8
  store i8 %3183, i8* %49, align 1
  %3184 = add i64 %storemerge30, 8
  store i64 %3184, i64* %3, align 8
  %3185 = add i64 %3160, 152
  %3186 = inttoptr i64 %3161 to i64*
  %3187 = load i64, i64* %3186, align 8
  store i64 %3187, i64* %RBX.i1095, align 8
  store i64 %3185, i64* %6, align 8
  %3188 = add i64 %storemerge30, 10
  store i64 %3188, i64* %3, align 8
  %3189 = add i64 %3160, 160
  %3190 = inttoptr i64 %3185 to i64*
  %3191 = load i64, i64* %3190, align 8
  store i64 %3191, i64* %R14.i888, align 8
  store i64 %3189, i64* %6, align 8
  %3192 = add i64 %storemerge30, 11
  store i64 %3192, i64* %3, align 8
  %3193 = add i64 %3160, 168
  %3194 = inttoptr i64 %3189 to i64*
  %3195 = load i64, i64* %3194, align 8
  store i64 %3195, i64* %RBP.i, align 8
  store i64 %3193, i64* %6, align 8
  %3196 = add i64 %storemerge30, 12
  store i64 %3196, i64* %3, align 8
  %3197 = inttoptr i64 %3193 to i64*
  %3198 = load i64, i64* %3197, align 8
  store i64 %3198, i64* %3, align 8
  %3199 = add i64 %3160, 176
  store i64 %3199, i64* %6, align 8
  ret %struct.Memory* %MEMORY.26
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x90___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -144
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 144
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
define %struct.Memory* @routine_movw__r9w___ax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9W = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %R9W, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %AX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 24
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
define %struct.Memory* @routine_movw_0x10__rbp____r10w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %R10W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6cc270___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cc270_type* @G__0x6cc270 to i64), i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6cc230___rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cc230_type* @G__0x6cc230 to i64), i64* %RBX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__ax__MINUS0x26__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -38
  %6 = load i16, i16* %AX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r10w__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i16, i16* %R10W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_addl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xa8__r14____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = add i64 %3, 168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xac__r14____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = add i64 %3, 172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3758__r11____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xc__rbx____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x278___rbx___rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 632
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RBX, align 8
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
define %struct.Memory* @routine_addq__rbx___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = load i64, i64* %RBX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R11, align 8
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
define %struct.Memory* @routine_movq__r11__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6d4690___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %5, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xc0__r11_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = add i64 %3, 192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_je_.L_43e80f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_movb__al__MINUS0x79__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -121
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43e843(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__0x18__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_movq_0x6d4690___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xc4__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 196
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
define %struct.Memory* @routine_movb__cl__MINUS0x7a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -122
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43e83d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_sete__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x7a__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -122
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x79__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -121
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %AL, align 1
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
define %struct.Memory* @routine_movzbl__al___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_je_.L_43e8a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movl_MINUS0x80__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movl__esi__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e8b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_43e8e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x11900__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71936
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e8f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x11908__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71944
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_43e915(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43e96e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6cc230___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cc230_type* @G__0x6cc230 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movswq_MINUS0x26__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -38
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
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
define %struct.Memory* @routine_movq___rax__rcx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_MINUS0x26__rbp____r8w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -38
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %R8W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x70__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
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
define %struct.Memory* @routine_addl__0x0___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = zext i32 %5 to i64
  store i64 %8, i64* %4, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %5, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %5, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %5, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__r9d___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x722b20___rax_8____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 7482144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl__r8w___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8W = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i16, i16* %R8W, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sext i16 %5 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.OneComponentLumaPrediction4x4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_43e982(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43e9dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6cc270___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cc270_type* @G__0x6cc270 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movswq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movw_MINUS0x28__rbp____r8w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %R8W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_je_.L_43ecbe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43eb1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43eb17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_jge_.L_43eb04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x70fcf8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf8_type* @G_0x70fcf8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -5
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
define %struct.Memory* @routine_movq__rcx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = shl i64 %3, 32
  %10 = ashr exact i64 %9, 32
  %11 = sext i32 %8 to i64
  %12 = mul nsw i64 %11, %10
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RDX, align 8
  %15 = shl i64 %12, 32
  %16 = ashr exact i64 %15, 32
  %17 = icmp ne i64 %16, %12
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i32 %13, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %18, i8* %31, align 1
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
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull___rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = shl i64 %3, 32
  %10 = ashr exact i64 %9, 32
  %11 = sext i32 %8 to i64
  %12 = mul nsw i64 %11, %10
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RSI, align 8
  %15 = shl i64 %12, 32
  %16 = ashr exact i64 %15, 32
  %17 = icmp ne i64 %16, %12
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i32 %13, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %18, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_0x7107a0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x70f6d0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__cl___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %12 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = shl i64 %4, 32
  %11 = ashr i64 %10, 33
  br label %20

; <label>:12:                                     ; preds = %block_400488
  %13 = and i8 %5, 31
  %14 = zext i8 %13 to i64
  %15 = add nsw i64 %14, -1
  %16 = shl i64 %4, 32
  %17 = ashr exact i64 %16, 32
  %18 = ashr i64 %17, %15
  %19 = lshr i64 %18, 1
  br label %20

; <label>:20:                                     ; preds = %12, %9
  %21 = phi i64 [ %19, %12 ], [ %11, %9 ]
  %22 = phi i64 [ %18, %12 ], [ %4, %9 ]
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = trunc i64 %21 to i32
  %26 = and i64 %21, 4294967295
  store i64 %26, i64* %RDX, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %29 = and i32 %25, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %28, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %36 = icmp eq i32 %25, 0
  %37 = zext i1 %36 to i8
  store i8 %37, i8* %35, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %39 = lshr i32 %25, 31
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %38, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %41, align 1
  br label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %20, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6f9728___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswq_MINUS0x26__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -38
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rdi_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movswq_MINUS0x28__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, %8
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = icmp ult i32 %10, %8
  %13 = icmp ult i32 %10, %9
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
  %23 = xor i32 %9, %8
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %8, 31
  %36 = lshr i32 %9, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RSI, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.clip1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movw__ax___r8w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8W = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %R8W, align 2
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3138___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12600
  store i64 %6, i64* %R9, align 8
  %7 = icmp ugt i64 %3, -12601
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %R10, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
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
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r10___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %R10, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r8w____r9__r10_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8W = bitcast %union.anon* %3 to i16*
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %R9, align 8
  %5 = load i64, i64* %R10, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %R8W, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
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
define %struct.Memory* @routine_jmpq_.L_43ea08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43eb09(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e9f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ecb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43ebec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43ebe7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43ebd4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6d4740___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x7107a0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
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
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswq_MINUS0x26__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -38
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, %8
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = icmp ult i32 %10, %8
  %13 = icmp ult i32 %10, %9
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
  %23 = xor i32 %9, %8
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %8, 31
  %36 = lshr i32 %9, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3138___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12600
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -12601
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %R9, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
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
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r9___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R9, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r8w____rsi__r9_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8W = bitcast %union.anon* %3 to i16*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %R9, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %R8W, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43eb3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ebd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43eb2c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ecb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43ecaf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43ec9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswq_MINUS0x28__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ec04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43eca1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ebf2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ee85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43ed73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43ed6e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43ed5b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -5
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
define %struct.Memory* @routine_movq__rdx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, %8
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = icmp ult i32 %10, %8
  %13 = icmp ult i32 %10, %9
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
  %23 = xor i32 %9, %8
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %8, 31
  %36 = lshr i32 %9, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
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
define %struct.Memory* @routine_movl_MINUS0x94__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_movw__ax___di(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %DI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3138___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12600
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -12601
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_shlq__0x5___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %R8, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
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
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di____rcx__r8_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %DI, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ece0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ed60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ecce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ee80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43edfc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43edf7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43ede4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3138___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12600
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -12601
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
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
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jmpq_.L_43ed95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ede9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ed83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ee7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43ee76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43ee63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43ee14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ee68(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ee02(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x90___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 144
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -145
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
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R14, align 8
  store i64 %7, i64* %5, align 8
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
