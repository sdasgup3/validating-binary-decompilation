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
%G__0x6cc1b0_type = type <{ [8 x i8] }>
%G__0x6cc1f0_type = type <{ [8 x i8] }>
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
@G__0x6cc1b0 = global %G__0x6cc1b0_type zeroinitializer
@G__0x6cc1f0 = global %G__0x6cc1f0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_43d8d0.OneComponentLumaPrediction4x4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43b6b0.clip1a(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @LumaPrediction4x4(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R14.i918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %11 = load i64, i64* %R14.i918, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %RBX.i1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %15 = load i64, i64* %RBX.i1126, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %7, -152
  store i64 %21, i64* %6, align 8
  %22 = icmp ult i64 %18, 128
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
  %32 = xor i64 %18, %21
  %33 = lshr i64 %32, 4
  %34 = trunc i64 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i64 %21, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i64 %21, 63
  %41 = trunc i64 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i64 %18, 63
  %44 = xor i64 %40, %43
  %45 = add nuw nsw i64 %44, %43
  %46 = icmp eq i64 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX.i1122 = bitcast %union.anon* %49 to i16*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9W.i = bitcast %union.anon* %50 to i16*
  %51 = load i16, i16* %R9W.i, align 2
  store i16 %51, i16* %AX.i1122, align 2
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W.i1119 = bitcast %union.anon* %52 to i16*
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, 16
  %55 = add i64 %20, 16
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %54 to i16*
  %57 = load i16, i16* %56, align 2
  store i16 %57, i16* %R10W.i1119, align 2
  %R11.i1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  store i64 ptrtoint (%G__0x6cc1f0_type* @G__0x6cc1f0 to i64), i64* %R11.i1117, align 8
  store i64 ptrtoint (%G__0x6cc1b0_type* @G__0x6cc1b0 to i64), i64* %RBX.i1126, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %58 to i32*
  %59 = add i64 %53, -20
  %60 = load i32, i32* %EDI.i, align 4
  %61 = add i64 %20, 39
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i1110 = bitcast %union.anon* %63 to i32*
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -24
  %66 = load i32, i32* %ESI.i1110, align 4
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 3
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %65 to i32*
  store i32 %66, i32* %69, align 4
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1107 = bitcast %union.anon* %70 to i32*
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -28
  %73 = load i32, i32* %EDX.i1107, align 4
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 3
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %72 to i32*
  store i32 %73, i32* %76, align 4
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i1104 = bitcast %union.anon* %77 to i32*
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -32
  %80 = load i32, i32* %ECX.i1104, align 4
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 3
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %79 to i32*
  store i32 %80, i32* %83, align 4
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1101 = bitcast %union.anon* %84 to i32*
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -36
  %87 = load i32, i32* %R8D.i1101, align 4
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %86 to i32*
  store i32 %87, i32* %90, align 4
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -38
  %93 = load i16, i16* %AX.i1122, align 2
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, 4
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %92 to i16*
  store i16 %93, i16* %96, align 2
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -40
  %99 = load i16, i16* %R10W.i1119, align 2
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 5
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %98 to i16*
  store i16 %99, i16* %102, align 2
  %RCX.i1093 = getelementptr inbounds %union.anon, %union.anon* %77, i64 0, i32 0
  %103 = load i64, i64* %RBP.i, align 8
  %104 = add i64 %103, -20
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 3
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %104 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = add i32 %108, 4
  %110 = zext i32 %109 to i64
  store i64 %110, i64* %RCX.i1093, align 8
  %111 = icmp ugt i32 %108, -5
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %24, align 1
  %113 = and i32 %109, 255
  %114 = tail call i32 @llvm.ctpop.i32(i32 %113)
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  %117 = xor i8 %116, 1
  store i8 %117, i8* %31, align 1
  %118 = xor i32 %109, %108
  %119 = lshr i32 %118, 4
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  store i8 %121, i8* %36, align 1
  %122 = icmp eq i32 %109, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %39, align 1
  %124 = lshr i32 %109, 31
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %42, align 1
  %126 = lshr i32 %108, 31
  %127 = xor i32 %124, %126
  %128 = add nuw nsw i32 %127, %124
  %129 = icmp eq i32 %128, 2
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %48, align 1
  %131 = add i64 %103, -52
  %132 = add i64 %105, 9
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i32*
  store i32 %109, i32* %133, align 4
  %134 = load i64, i64* %RBP.i, align 8
  %135 = add i64 %134, -24
  %136 = load i64, i64* %3, align 8
  %137 = add i64 %136, 3
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %135 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = add i32 %139, 4
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %RCX.i1093, align 8
  %142 = icmp ugt i32 %139, -5
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %24, align 1
  %144 = and i32 %140, 255
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144)
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %31, align 1
  %149 = xor i32 %140, %139
  %150 = lshr i32 %149, 4
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  store i8 %152, i8* %36, align 1
  %153 = icmp eq i32 %140, 0
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %39, align 1
  %155 = lshr i32 %140, 31
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %42, align 1
  %157 = lshr i32 %139, 31
  %158 = xor i32 %155, %157
  %159 = add nuw nsw i32 %158, %155
  %160 = icmp eq i32 %159, 2
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %48, align 1
  %162 = add i64 %134, -56
  %163 = add i64 %136, 9
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %162 to i32*
  store i32 %140, i32* %164, align 4
  %165 = load i64, i64* %3, align 8
  %166 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %166, i64* %R14.i918, align 8
  %167 = add i64 %166, 168
  %168 = add i64 %165, 15
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %RCX.i1093, align 8
  %172 = load i64, i64* %RBP.i, align 8
  %173 = add i64 %172, -20
  %174 = add i64 %165, 18
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %173 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = add i32 %176, %170
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RCX.i1093, align 8
  %179 = icmp ult i32 %177, %170
  %180 = icmp ult i32 %177, %176
  %181 = or i1 %179, %180
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %24, align 1
  %183 = and i32 %177, 255
  %184 = tail call i32 @llvm.ctpop.i32(i32 %183)
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  store i8 %187, i8* %31, align 1
  %188 = xor i32 %176, %170
  %189 = xor i32 %188, %177
  %190 = lshr i32 %189, 4
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  store i8 %192, i8* %36, align 1
  %193 = icmp eq i32 %177, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %39, align 1
  %195 = lshr i32 %177, 31
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %42, align 1
  %197 = lshr i32 %170, 31
  %198 = lshr i32 %176, 31
  %199 = xor i32 %195, %197
  %200 = xor i32 %195, %198
  %201 = add nuw nsw i32 %199, %200
  %202 = icmp eq i32 %201, 2
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %48, align 1
  %204 = add i64 %172, -60
  %205 = add i64 %165, 21
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to i32*
  store i32 %177, i32* %206, align 4
  %207 = load i64, i64* %3, align 8
  %208 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %208, i64* %R14.i918, align 8
  %209 = add i64 %208, 172
  %210 = add i64 %207, 15
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %209 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = zext i32 %212 to i64
  store i64 %213, i64* %RCX.i1093, align 8
  %214 = load i64, i64* %RBP.i, align 8
  %215 = add i64 %214, -24
  %216 = add i64 %207, 18
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = add i32 %218, %212
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %RCX.i1093, align 8
  %221 = icmp ult i32 %219, %212
  %222 = icmp ult i32 %219, %218
  %223 = or i1 %221, %222
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %24, align 1
  %225 = and i32 %219, 255
  %226 = tail call i32 @llvm.ctpop.i32(i32 %225)
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  %229 = xor i8 %228, 1
  store i8 %229, i8* %31, align 1
  %230 = xor i32 %218, %212
  %231 = xor i32 %230, %219
  %232 = lshr i32 %231, 4
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  store i8 %234, i8* %36, align 1
  %235 = icmp eq i32 %219, 0
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %39, align 1
  %237 = lshr i32 %219, 31
  %238 = trunc i32 %237 to i8
  store i8 %238, i8* %42, align 1
  %239 = lshr i32 %212, 31
  %240 = lshr i32 %218, 31
  %241 = xor i32 %237, %239
  %242 = xor i32 %237, %240
  %243 = add nuw nsw i32 %241, %242
  %244 = icmp eq i32 %243, 2
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %48, align 1
  %246 = add i64 %214, -64
  %247 = add i64 %207, 21
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %246 to i32*
  store i32 %219, i32* %248, align 4
  %249 = load i64, i64* %RBP.i, align 8
  %250 = add i64 %249, -20
  %251 = load i64, i64* %3, align 8
  %252 = add i64 %251, 3
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %250 to i32*
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = ashr i64 %255, 1
  %257 = lshr i64 %256, 1
  %258 = trunc i64 %256 to i8
  %259 = and i8 %258, 1
  %260 = trunc i64 %257 to i32
  %261 = and i64 %257, 4294967295
  store i64 %261, i64* %RCX.i1093, align 8
  store i8 %259, i8* %24, align 1
  %262 = and i32 %260, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262)
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %267 = icmp eq i32 %260, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %39, align 1
  %269 = lshr i64 %256, 32
  %270 = trunc i64 %269 to i8
  %271 = and i8 %270, 1
  store i8 %271, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %272 = add i64 %249, -68
  %273 = trunc i64 %257 to i32
  %274 = add i64 %251, 9
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %272 to i32*
  store i32 %273, i32* %275, align 4
  %276 = load i64, i64* %RBP.i, align 8
  %277 = add i64 %276, -24
  %278 = load i64, i64* %3, align 8
  %279 = add i64 %278, 3
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %277 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = ashr i64 %282, 1
  %284 = lshr i64 %283, 1
  %285 = trunc i64 %283 to i8
  %286 = and i8 %285, 1
  %287 = trunc i64 %284 to i32
  %288 = and i64 %284, 4294967295
  store i64 %288, i64* %RCX.i1093, align 8
  store i8 %286, i8* %24, align 1
  %289 = and i32 %287, 255
  %290 = tail call i32 @llvm.ctpop.i32(i32 %289)
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  store i8 %293, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %294 = icmp eq i32 %287, 0
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %39, align 1
  %296 = lshr i64 %283, 32
  %297 = trunc i64 %296 to i8
  %298 = and i8 %297, 1
  store i8 %298, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %299 = add i64 %276, -72
  %300 = trunc i64 %284 to i32
  %301 = add i64 %278, 9
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %299 to i32*
  store i32 %300, i32* %302, align 4
  %303 = load i64, i64* %RBP.i, align 8
  %304 = add i64 %303, -80
  %305 = load i64, i64* %RBX.i1126, align 8
  %306 = load i64, i64* %3, align 8
  %307 = add i64 %306, 4
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %304 to i64*
  store i64 %305, i64* %308, align 8
  %309 = load i64, i64* %RBP.i, align 8
  %310 = add i64 %309, -88
  %311 = load i64, i64* %R11.i1117, align 8
  %312 = load i64, i64* %3, align 8
  %313 = add i64 %312, 4
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %310 to i64*
  store i64 %311, i64* %314, align 8
  %315 = load i64, i64* %3, align 8
  %316 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %316, i64* %R11.i1117, align 8
  %317 = add i64 %316, 14168
  %318 = add i64 %315, 15
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %317 to i64*
  %320 = load i64, i64* %319, align 8
  store i64 %320, i64* %R11.i1117, align 8
  store i64 %316, i64* %RBX.i1126, align 8
  %321 = add i64 %316, 12
  %322 = add i64 %315, 27
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = sext i32 %324 to i64
  %326 = mul nsw i64 %325, 632
  store i64 %326, i64* %RBX.i1126, align 8
  %327 = lshr i64 %326, 63
  %328 = add i64 %326, %320
  %329 = icmp ult i64 %328, %320
  %330 = icmp ult i64 %328, %326
  %331 = or i1 %329, %330
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %24, align 1
  %333 = trunc i64 %328 to i32
  %334 = and i32 %333, 255
  %335 = tail call i32 @llvm.ctpop.i32(i32 %334)
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  store i8 %338, i8* %31, align 1
  %339 = xor i64 %326, %320
  %340 = xor i64 %339, %328
  %341 = lshr i64 %340, 4
  %342 = trunc i64 %341 to i8
  %343 = and i8 %342, 1
  store i8 %343, i8* %36, align 1
  %344 = icmp eq i64 %328, 0
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %39, align 1
  %346 = lshr i64 %328, 63
  %347 = trunc i64 %346 to i8
  store i8 %347, i8* %42, align 1
  %348 = lshr i64 %320, 63
  %349 = xor i64 %346, %348
  %350 = xor i64 %346, %327
  %351 = add nuw nsw i64 %349, %350
  %352 = icmp eq i64 %351, 2
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %48, align 1
  %354 = load i64, i64* %RBP.i, align 8
  %355 = add i64 %354, -96
  %356 = add i64 %315, 41
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i64*
  store i64 %328, i64* %357, align 8
  %358 = load i64, i64* %3, align 8
  %359 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %359, i64* %R11.i1117, align 8
  %360 = add i64 %359, 192
  %361 = add i64 %358, 16
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  store i8 0, i8* %24, align 1
  %364 = and i32 %363, 255
  %365 = tail call i32 @llvm.ctpop.i32(i32 %364)
  %366 = trunc i32 %365 to i8
  %367 = and i8 %366, 1
  %368 = xor i8 %367, 1
  store i8 %368, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %369 = icmp eq i32 %363, 0
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %39, align 1
  %371 = lshr i32 %363, 31
  %372 = trunc i32 %371 to i8
  store i8 %372, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %.v107 = select i1 %369, i64 68, i64 22
  %373 = add i64 %358, %.v107
  store i64 %373, i64* %3, align 8
  %.pre97 = bitcast %union.anon* %49 to i8*
  br i1 %369, label %block_.L_43e017, label %block_43dfe9

block_43dfe9:                                     ; preds = %entry
  store i8 1, i8* %.pre97, align 1
  %374 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %374, i64* %RCX.i1093, align 8
  %375 = add i64 %374, 24
  %376 = add i64 %373, 14
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %375 to i32*
  %378 = load i32, i32* %377, align 4
  store i8 0, i8* %24, align 1
  %379 = and i32 %378, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379)
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %384 = icmp eq i32 %378, 0
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %39, align 1
  %386 = lshr i32 %378, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %388 = load i64, i64* %RBP.i, align 8
  %389 = add i64 %388, -117
  %390 = add i64 %373, 17
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i8*
  store i8 1, i8* %391, align 1
  %392 = load i64, i64* %3, align 8
  %393 = load i8, i8* %39, align 1
  %394 = icmp ne i8 %393, 0
  %.v145 = select i1 %394, i64 81, i64 6
  %395 = add i64 %392, %.v145
  store i64 %395, i64* %3, align 8
  %cmpBr_43dffa = icmp eq i8 %393, 1
  br i1 %cmpBr_43dffa, label %block_.L_43e04b, label %block_43e000

block_43e000:                                     ; preds = %block_43dfe9
  store i8 1, i8* %.pre97, align 1
  %396 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %396, i64* %RCX.i1093, align 8
  %397 = add i64 %396, 24
  %398 = add i64 %395, 14
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = add i32 %400, -3
  %402 = icmp ult i32 %400, 3
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %24, align 1
  %404 = and i32 %401, 255
  %405 = tail call i32 @llvm.ctpop.i32(i32 %404)
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  store i8 %408, i8* %31, align 1
  %409 = xor i32 %401, %400
  %410 = lshr i32 %409, 4
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  store i8 %412, i8* %36, align 1
  %413 = icmp eq i32 %401, 0
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %39, align 1
  %415 = lshr i32 %401, 31
  %416 = trunc i32 %415 to i8
  store i8 %416, i8* %42, align 1
  %417 = lshr i32 %400, 31
  %418 = xor i32 %415, %417
  %419 = add nuw nsw i32 %418, %417
  %420 = icmp eq i32 %419, 2
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %48, align 1
  %422 = load i64, i64* %RBP.i, align 8
  %423 = add i64 %422, -117
  %424 = add i64 %395, 17
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i8*
  store i8 1, i8* %425, align 1
  %426 = load i64, i64* %3, align 8
  %427 = load i8, i8* %39, align 1
  %428 = icmp ne i8 %427, 0
  %.v146 = select i1 %428, i64 58, i64 6
  %429 = add i64 %426, %.v146
  store i64 %429, i64* %3, align 8
  %cmpBr_43e011 = icmp eq i8 %427, 1
  br i1 %cmpBr_43e011, label %block_.L_43e04b, label %block_43e000.block_.L_43e017_crit_edge

block_43e000.block_.L_43e017_crit_edge:           ; preds = %block_43e000
  %.pre = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  br label %block_.L_43e017

block_.L_43e017:                                  ; preds = %entry, %block_43e000.block_.L_43e017_crit_edge
  %430 = phi i64 [ %.pre, %block_43e000.block_.L_43e017_crit_edge ], [ %359, %entry ]
  %431 = phi i64 [ %429, %block_43e000.block_.L_43e017_crit_edge ], [ %373, %entry ]
  %RAX.i994 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  store i64 0, i64* %RAX.i994, align 8
  store i8 0, i8* %24, align 1
  store i8 1, i8* %31, align 1
  store i8 1, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %36, align 1
  %CL.i991 = bitcast %union.anon* %77 to i8*
  store i8 0, i8* %CL.i991, align 1
  %RDX.i988 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  store i64 %430, i64* %RDX.i988, align 8
  %432 = add i64 %430, 196
  %433 = add i64 %431, 19
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  store i8 0, i8* %24, align 1
  %436 = and i32 %435, 255
  %437 = tail call i32 @llvm.ctpop.i32(i32 %436)
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  %440 = xor i8 %439, 1
  store i8 %440, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %441 = icmp eq i32 %435, 0
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %39, align 1
  %443 = lshr i32 %435, 31
  %444 = trunc i32 %443 to i8
  store i8 %444, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %445 = load i64, i64* %RBP.i, align 8
  %446 = add i64 %445, -118
  %447 = add i64 %431, 22
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i8*
  store i8 0, i8* %448, align 1
  %449 = load i64, i64* %3, align 8
  %450 = load i8, i8* %39, align 1
  %451 = icmp ne i8 %450, 0
  %.v147 = select i1 %451, i64 24, i64 6
  %452 = add i64 %449, %.v147
  store i64 %452, i64* %3, align 8
  %cmpBr_43e02d = icmp eq i8 %450, 1
  br i1 %cmpBr_43e02d, label %block_.L_43e045, label %block_43e033

block_43e033:                                     ; preds = %block_.L_43e017
  %453 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %453, i64* %RAX.i994, align 8
  %454 = add i64 %453, 24
  %455 = add i64 %452, 12
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = add i32 %457, -1
  %459 = icmp eq i32 %457, 0
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %24, align 1
  %461 = and i32 %458, 255
  %462 = tail call i32 @llvm.ctpop.i32(i32 %461)
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  store i8 %465, i8* %31, align 1
  %466 = xor i32 %458, %457
  %467 = lshr i32 %466, 4
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  store i8 %469, i8* %36, align 1
  %470 = icmp eq i32 %458, 0
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %39, align 1
  %472 = lshr i32 %458, 31
  %473 = trunc i32 %472 to i8
  store i8 %473, i8* %42, align 1
  %474 = lshr i32 %457, 31
  %475 = xor i32 %472, %474
  %476 = add nuw nsw i32 %475, %474
  %477 = icmp eq i32 %476, 2
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %48, align 1
  store i8 %471, i8* %CL.i991, align 1
  %479 = load i64, i64* %RBP.i, align 8
  %480 = add i64 %479, -118
  %481 = add i64 %452, 18
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %480 to i8*
  store i8 %471, i8* %482, align 1
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_43e045

block_.L_43e045:                                  ; preds = %block_43e033, %block_.L_43e017
  %483 = phi i64 [ %.pre67, %block_43e033 ], [ %452, %block_.L_43e017 ]
  %484 = load i64, i64* %RBP.i, align 8
  %485 = add i64 %484, -118
  %486 = add i64 %483, 3
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i8*
  %488 = load i8, i8* %487, align 1
  store i8 %488, i8* %.pre97, align 1
  %489 = add i64 %484, -117
  %490 = add i64 %483, 6
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i8*
  store i8 %488, i8* %491, align 1
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_43e04b

block_.L_43e04b:                                  ; preds = %block_.L_43e045, %block_43e000, %block_43dfe9
  %492 = phi i64 [ %.pre68, %block_.L_43e045 ], [ %429, %block_43e000 ], [ %395, %block_43dfe9 ]
  %493 = load i64, i64* %RBP.i, align 8
  %494 = add i64 %493, -117
  %495 = add i64 %492, 3
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i8*
  %497 = load i8, i8* %496, align 1
  %498 = and i8 %497, 1
  store i8 %498, i8* %.pre97, align 1
  store i8 0, i8* %24, align 1
  %499 = zext i8 %498 to i32
  %500 = tail call i32 @llvm.ctpop.i32(i32 %499)
  %501 = trunc i32 %500 to i8
  %502 = xor i8 %501, 1
  store i8 %502, i8* %31, align 1
  %503 = xor i8 %498, 1
  store i8 %503, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %36, align 1
  %504 = zext i8 %498 to i64
  store i64 %504, i64* %RCX.i1093, align 8
  %505 = add i64 %493, -100
  %506 = zext i8 %498 to i32
  %507 = add i64 %492, 11
  store i64 %507, i64* %3, align 8
  %508 = inttoptr i64 %505 to i32*
  store i32 %506, i32* %508, align 4
  %RDX.i955 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %509 = load i64, i64* %3, align 8
  %510 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %510, i64* %RDX.i955, align 8
  %511 = add i64 %510, 71928
  %512 = add i64 %509, 15
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i64*
  %514 = load i64, i64* %513, align 8
  %515 = load i64, i64* %RBP.i, align 8
  %516 = add i64 %515, -112
  %517 = add i64 %509, 19
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %516 to i64*
  store i64 %514, i64* %518, align 8
  %519 = load i64, i64* %3, align 8
  %520 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %520, i64* %RDX.i955, align 8
  %521 = add i64 %520, 72400
  %522 = add i64 %519, 15
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i32*
  %524 = load i32, i32* %523, align 4
  store i8 0, i8* %24, align 1
  %525 = and i32 %524, 255
  %526 = tail call i32 @llvm.ctpop.i32(i32 %525)
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %530 = icmp eq i32 %524, 0
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %39, align 1
  %532 = lshr i32 %524, 31
  %533 = trunc i32 %532 to i8
  store i8 %533, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %.v108 = select i1 %530, i64 84, i64 21
  %534 = add i64 %519, %.v108
  store i64 %534, i64* %3, align 8
  %RAX.i905.phi.trans.insert = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %.pre74 = load i64, i64* %RBP.i, align 8
  br i1 %530, label %block_.L_43e0bd, label %block_43e07e

block_43e07e:                                     ; preds = %block_.L_43e04b
  %535 = add i64 %.pre74, -96
  %536 = add i64 %534, 4
  store i64 %536, i64* %3, align 8
  %537 = inttoptr i64 %535 to i64*
  %538 = load i64, i64* %537, align 8
  store i64 %538, i64* %RAX.i905.phi.trans.insert, align 8
  %539 = add i64 %538, 532
  %540 = add i64 %534, 11
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %539 to i32*
  %542 = load i32, i32* %541, align 4
  store i8 0, i8* %24, align 1
  %543 = and i32 %542, 255
  %544 = tail call i32 @llvm.ctpop.i32(i32 %543)
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = xor i8 %546, 1
  store i8 %547, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %548 = icmp eq i32 %542, 0
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %39, align 1
  %550 = lshr i32 %542, 31
  %551 = trunc i32 %550 to i8
  store i8 %551, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %.v109 = select i1 %548, i64 63, i64 17
  %552 = add i64 %534, %.v109
  store i64 %552, i64* %3, align 8
  br i1 %548, label %block_.L_43e0bd, label %block_43e08f

block_43e08f:                                     ; preds = %block_43e07e
  store i64 2, i64* %RAX.i905.phi.trans.insert, align 8
  store i64 4, i64* %RCX.i1093, align 8
  store i64 %520, i64* %RDX.i955, align 8
  %RSI.i931 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %553 = add i64 %520, 12
  %554 = add i64 %552, 21
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %RSI.i931, align 8
  %558 = add i64 %.pre74, -124
  %559 = add i64 %552, 24
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i32*
  store i32 2, i32* %560, align 4
  %561 = load i32, i32* %ESI.i1110, align 4
  %562 = zext i32 %561 to i64
  %563 = load i64, i64* %3, align 8
  store i64 %562, i64* %RAX.i905.phi.trans.insert, align 8
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %565 = sext i32 %561 to i64
  %566 = lshr i64 %565, 32
  store i64 %566, i64* %564, align 8
  %567 = load i64, i64* %RBP.i, align 8
  %568 = add i64 %567, -124
  %569 = add i64 %563, 6
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = zext i32 %571 to i64
  store i64 %572, i64* %RSI.i931, align 8
  %573 = add i64 %563, 8
  store i64 %573, i64* %3, align 8
  %574 = sext i32 %571 to i64
  %575 = shl nuw i64 %566, 32
  %576 = or i64 %575, %562
  %577 = sdiv i64 %576, %574
  %578 = shl i64 %577, 32
  %579 = ashr exact i64 %578, 32
  %580 = icmp eq i64 %577, %579
  br i1 %580, label %583, label %581

; <label>:581:                                    ; preds = %block_43e08f
  %582 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %573, %struct.Memory* %2)
  %.pre69 = load i32, i32* %EDX.i1107, align 4
  %.pre70 = load i64, i64* %3, align 8
  %.pre71 = load i64, i64* %RSI.i931, align 8
  %.pre72 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit916

; <label>:583:                                    ; preds = %block_43e08f
  %584 = srem i64 %576, %574
  %585 = and i64 %577, 4294967295
  store i64 %585, i64* %RAX.i905.phi.trans.insert, align 8
  %586 = and i64 %584, 4294967295
  store i64 %586, i64* %RDX.i955, align 8
  store i8 0, i8* %24, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %36, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %587 = trunc i64 %584 to i32
  br label %routine_idivl__esi.exit916

routine_idivl__esi.exit916:                       ; preds = %583, %581
  %588 = phi i64 [ %.pre72, %581 ], [ %567, %583 ]
  %589 = phi i64 [ %.pre71, %581 ], [ %572, %583 ]
  %590 = phi i64 [ %.pre70, %581 ], [ %573, %583 ]
  %591 = phi i32 [ %.pre69, %581 ], [ %587, %583 ]
  %592 = phi %struct.Memory* [ %582, %581 ], [ %2, %583 ]
  store i8 0, i8* %24, align 1
  %593 = and i32 %591, 255
  %594 = tail call i32 @llvm.ctpop.i32(i32 %593)
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  %597 = xor i8 %596, 1
  store i8 %597, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %598 = icmp eq i32 %591, 0
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %39, align 1
  %600 = lshr i32 %591, 31
  %601 = trunc i32 %600 to i8
  store i8 %601, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %602 = load i32, i32* %ECX.i1104, align 4
  %603 = zext i32 %602 to i64
  %604 = select i1 %598, i64 %589, i64 %603
  %605 = and i64 %604, 4294967295
  store i64 %605, i64* %RSI.i931, align 8
  %606 = add i64 %588, -128
  %607 = trunc i64 %604 to i32
  %608 = add i64 %590, 9
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %606 to i32*
  store i32 %607, i32* %609, align 4
  %610 = load i64, i64* %3, align 8
  %611 = add i64 %610, 15
  br label %block_.L_43e0c7

block_.L_43e0bd:                                  ; preds = %block_.L_43e04b, %block_43e07e
  %612 = phi i64 [ %552, %block_43e07e ], [ %534, %block_.L_43e04b ]
  store i64 0, i64* %RAX.i905.phi.trans.insert, align 8
  store i8 0, i8* %24, align 1
  store i8 1, i8* %31, align 1
  store i8 1, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %36, align 1
  %613 = add i64 %.pre74, -128
  %614 = add i64 %612, 5
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i32*
  store i32 0, i32* %615, align 4
  %616 = load i64, i64* %3, align 8
  %617 = add i64 %616, 5
  store i64 %617, i64* %3, align 8
  br label %block_.L_43e0c7

block_.L_43e0c7:                                  ; preds = %block_.L_43e0bd, %routine_idivl__esi.exit916
  %storemerge = phi i64 [ %617, %block_.L_43e0bd ], [ %611, %routine_idivl__esi.exit916 ]
  %MEMORY.4 = phi %struct.Memory* [ %2, %block_.L_43e0bd ], [ %592, %routine_idivl__esi.exit916 ]
  %EAX.i894.pre-phi = bitcast %union.anon* %49 to i32*
  %618 = load i64, i64* %RBP.i, align 8
  %619 = add i64 %618, -128
  %620 = add i64 %storemerge, 3
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %619 to i32*
  %622 = load i32, i32* %621, align 4
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %RAX.i905.phi.trans.insert, align 8
  %624 = add i64 %618, -116
  %625 = add i64 %storemerge, 6
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i32*
  store i32 %622, i32* %626, align 4
  %627 = load i64, i64* %RBP.i, align 8
  %628 = add i64 %627, -96
  %629 = load i64, i64* %3, align 8
  %630 = add i64 %629, 4
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %628 to i64*
  %632 = load i64, i64* %631, align 8
  store i64 %632, i64* %RCX.i1093, align 8
  %633 = add i64 %632, 580
  %634 = add i64 %629, 11
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to i32*
  %636 = load i32, i32* %635, align 4
  store i8 0, i8* %24, align 1
  %637 = and i32 %636, 255
  %638 = tail call i32 @llvm.ctpop.i32(i32 %637)
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  %641 = xor i8 %640, 1
  store i8 %641, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %642 = icmp eq i32 %636, 0
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %39, align 1
  %644 = lshr i32 %636, 31
  %645 = trunc i32 %644 to i8
  store i8 %645, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %.v110 = select i1 %642, i64 150, i64 17
  %646 = add i64 %629, %.v110
  store i64 %646, i64* %3, align 8
  br i1 %642, label %block_.L_43e163, label %block_43e0de

block_43e0de:                                     ; preds = %block_.L_43e0c7
  %647 = add i64 %627, -38
  %648 = add i64 %646, 4
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i16*
  %650 = load i16, i16* %649, align 2
  %651 = sext i16 %650 to i64
  %652 = and i64 %651, 4294967295
  store i64 %652, i64* %RAX.i905.phi.trans.insert, align 8
  %653 = sext i16 %650 to i32
  store i8 0, i8* %24, align 1
  %654 = and i32 %653, 255
  %655 = tail call i32 @llvm.ctpop.i32(i32 %654)
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  %658 = xor i8 %657, 1
  store i8 %658, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %659 = icmp eq i16 %650, 0
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %39, align 1
  %661 = lshr i32 %653, 31
  %662 = trunc i32 %661 to i8
  store i8 %662, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %.v111 = select i1 %659, i64 13, i64 133
  %663 = add i64 %646, %.v111
  store i64 %663, i64* %3, align 8
  br i1 %659, label %block_43e0eb, label %block_.L_43e163

block_43e0eb:                                     ; preds = %block_43e0de
  %664 = add i64 %627, -40
  %665 = add i64 %663, 4
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i16*
  %667 = load i16, i16* %666, align 2
  %668 = sext i16 %667 to i64
  %669 = and i64 %668, 4294967295
  store i64 %669, i64* %RAX.i905.phi.trans.insert, align 8
  %670 = sext i16 %667 to i32
  store i8 0, i8* %24, align 1
  %671 = and i32 %670, 255
  %672 = tail call i32 @llvm.ctpop.i32(i32 %671)
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 1
  %675 = xor i8 %674, 1
  store i8 %675, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %676 = icmp eq i16 %667, 0
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %39, align 1
  %678 = lshr i32 %670, 31
  %679 = trunc i32 %678 to i8
  store i8 %679, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %.v123 = select i1 %676, i64 13, i64 120
  %680 = add i64 %663, %.v123
  store i64 %680, i64* %3, align 8
  br i1 %676, label %block_43e0f8, label %block_.L_43e163

block_43e0f8:                                     ; preds = %block_43e0eb
  %681 = add i64 %627, -28
  %682 = add i64 %680, 4
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i32*
  %684 = load i32, i32* %683, align 4
  %685 = add i32 %684, -2
  %686 = icmp ult i32 %684, 2
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %24, align 1
  %688 = and i32 %685, 255
  %689 = tail call i32 @llvm.ctpop.i32(i32 %688)
  %690 = trunc i32 %689 to i8
  %691 = and i8 %690, 1
  %692 = xor i8 %691, 1
  store i8 %692, i8* %31, align 1
  %693 = xor i32 %685, %684
  %694 = lshr i32 %693, 4
  %695 = trunc i32 %694 to i8
  %696 = and i8 %695, 1
  store i8 %696, i8* %36, align 1
  %697 = icmp eq i32 %685, 0
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %39, align 1
  %699 = lshr i32 %685, 31
  %700 = trunc i32 %699 to i8
  store i8 %700, i8* %42, align 1
  %701 = lshr i32 %684, 31
  %702 = xor i32 %699, %701
  %703 = add nuw nsw i32 %702, %701
  %704 = icmp eq i32 %703, 2
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %48, align 1
  %.v124 = select i1 %697, i64 10, i64 107
  %706 = add i64 %680, %.v124
  store i64 %706, i64* %3, align 8
  br i1 %697, label %block_43e102, label %block_.L_43e163

block_43e102:                                     ; preds = %block_43e0f8
  %707 = add i64 %627, -32
  %708 = add i64 %706, 4
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i32*
  %710 = load i32, i32* %709, align 4
  %711 = add i32 %710, -1
  %712 = icmp eq i32 %710, 0
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %24, align 1
  %714 = and i32 %711, 255
  %715 = tail call i32 @llvm.ctpop.i32(i32 %714)
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  store i8 %718, i8* %31, align 1
  %719 = xor i32 %711, %710
  %720 = lshr i32 %719, 4
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  store i8 %722, i8* %36, align 1
  %723 = icmp eq i32 %711, 0
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %39, align 1
  %725 = lshr i32 %711, 31
  %726 = trunc i32 %725 to i8
  store i8 %726, i8* %42, align 1
  %727 = lshr i32 %710, 31
  %728 = xor i32 %725, %727
  %729 = add nuw nsw i32 %728, %727
  %730 = icmp eq i32 %729, 2
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %48, align 1
  %.v125 = select i1 %723, i64 10, i64 97
  %732 = add i64 %706, %.v125
  store i64 %732, i64* %3, align 8
  br i1 %723, label %block_43e10c, label %block_.L_43e163

block_43e10c:                                     ; preds = %block_43e102
  %733 = add i64 %627, -36
  %734 = add i64 %732, 4
  store i64 %734, i64* %3, align 8
  %735 = inttoptr i64 %733 to i32*
  %736 = load i32, i32* %735, align 4
  %737 = add i32 %736, -1
  %738 = icmp eq i32 %736, 0
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %24, align 1
  %740 = and i32 %737, 255
  %741 = tail call i32 @llvm.ctpop.i32(i32 %740)
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  store i8 %744, i8* %31, align 1
  %745 = xor i32 %737, %736
  %746 = lshr i32 %745, 4
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  store i8 %748, i8* %36, align 1
  %749 = icmp eq i32 %737, 0
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %39, align 1
  %751 = lshr i32 %737, 31
  %752 = trunc i32 %751 to i8
  store i8 %752, i8* %42, align 1
  %753 = lshr i32 %736, 31
  %754 = xor i32 %751, %753
  %755 = add nuw nsw i32 %754, %753
  %756 = icmp eq i32 %755, 2
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %48, align 1
  %.v126 = select i1 %749, i64 10, i64 87
  %758 = add i64 %732, %.v126
  store i64 %758, i64* %3, align 8
  br i1 %749, label %block_43e116, label %block_.L_43e163

block_43e116:                                     ; preds = %block_43e10c
  %759 = add i64 %758, 4
  store i64 %759, i64* %3, align 8
  %760 = load i64, i64* %631, align 8
  store i64 %760, i64* %RAX.i905.phi.trans.insert, align 8
  %761 = add i64 %760, 580
  %762 = add i64 %758, 11
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i32*
  %764 = load i32, i32* %763, align 4
  %765 = add i32 %764, -1
  %766 = icmp eq i32 %764, 0
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %24, align 1
  %768 = and i32 %765, 255
  %769 = tail call i32 @llvm.ctpop.i32(i32 %768)
  %770 = trunc i32 %769 to i8
  %771 = and i8 %770, 1
  %772 = xor i8 %771, 1
  store i8 %772, i8* %31, align 1
  %773 = xor i32 %765, %764
  %774 = lshr i32 %773, 4
  %775 = trunc i32 %774 to i8
  %776 = and i8 %775, 1
  store i8 %776, i8* %36, align 1
  %777 = icmp eq i32 %765, 0
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %39, align 1
  %779 = lshr i32 %765, 31
  %780 = trunc i32 %779 to i8
  store i8 %780, i8* %42, align 1
  %781 = lshr i32 %764, 31
  %782 = xor i32 %779, %781
  %783 = add nuw nsw i32 %782, %781
  %784 = icmp eq i32 %783, 2
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %48, align 1
  %.v127 = select i1 %777, i64 17, i64 44
  %786 = add i64 %758, %.v127
  %787 = add i64 %786, 8
  store i64 %787, i64* %3, align 8
  %788 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %788, i64* %RAX.i905.phi.trans.insert, align 8
  br i1 %777, label %block_43e127, label %block_.L_43e142

block_43e127:                                     ; preds = %block_43e116
  %789 = add i64 %788, 71936
  %790 = add i64 %786, 15
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i64*
  %792 = load i64, i64* %791, align 8
  store i64 %792, i64* %RAX.i905.phi.trans.insert, align 8
  %793 = add i64 %627, -136
  %794 = add i64 %786, 22
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %793 to i64*
  store i64 %792, i64* %795, align 8
  %796 = load i64, i64* %3, align 8
  %797 = add i64 %796, 27
  store i64 %797, i64* %3, align 8
  br label %block_.L_43e158

block_.L_43e142:                                  ; preds = %block_43e116
  %798 = add i64 %788, 71944
  %799 = add i64 %786, 15
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %798 to i64*
  %801 = load i64, i64* %800, align 8
  store i64 %801, i64* %RAX.i905.phi.trans.insert, align 8
  %802 = add i64 %627, -136
  %803 = add i64 %786, 22
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i64*
  store i64 %801, i64* %804, align 8
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_43e158

block_.L_43e158:                                  ; preds = %block_.L_43e142, %block_43e127
  %805 = phi i64 [ %.pre75, %block_.L_43e142 ], [ %797, %block_43e127 ]
  %806 = load i64, i64* %RBP.i, align 8
  %807 = add i64 %806, -136
  %808 = add i64 %805, 7
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i64*
  %810 = load i64, i64* %809, align 8
  store i64 %810, i64* %RAX.i905.phi.trans.insert, align 8
  %811 = add i64 %806, -112
  %812 = add i64 %805, 11
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %811 to i64*
  store i64 %810, i64* %813, align 8
  %.pre76 = load i64, i64* %RBP.i, align 8
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_43e163

block_.L_43e163:                                  ; preds = %block_43e10c, %block_43e102, %block_43e0f8, %block_43e0eb, %block_43e0de, %block_.L_43e158, %block_.L_43e0c7
  %814 = phi i64 [ %.pre77, %block_.L_43e158 ], [ %758, %block_43e10c ], [ %732, %block_43e102 ], [ %706, %block_43e0f8 ], [ %680, %block_43e0eb ], [ %663, %block_43e0de ], [ %646, %block_.L_43e0c7 ]
  %815 = phi i64 [ %.pre76, %block_.L_43e158 ], [ %627, %block_43e10c ], [ %627, %block_43e102 ], [ %627, %block_43e0f8 ], [ %627, %block_43e0eb ], [ %627, %block_43e0de ], [ %627, %block_.L_43e0c7 ]
  %816 = add i64 %815, -28
  %817 = add i64 %814, 4
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i32*
  %819 = load i32, i32* %818, align 4
  store i8 0, i8* %24, align 1
  %820 = and i32 %819, 255
  %821 = tail call i32 @llvm.ctpop.i32(i32 %820)
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  %824 = xor i8 %823, 1
  store i8 %824, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %825 = icmp eq i32 %819, 0
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %39, align 1
  %827 = lshr i32 %819, 31
  %828 = trunc i32 %827 to i8
  store i8 %828, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %.v112 = select i1 %825, i64 20, i64 10
  %829 = add i64 %814, %.v112
  store i64 %829, i64* %3, align 8
  br i1 %825, label %block_.L_43e177, label %block_43e16d

block_43e16d:                                     ; preds = %block_.L_43e163
  %830 = add i64 %829, 4
  store i64 %830, i64* %3, align 8
  %831 = load i32, i32* %818, align 4
  %832 = add i32 %831, -2
  %833 = icmp ult i32 %831, 2
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %24, align 1
  %835 = and i32 %832, 255
  %836 = tail call i32 @llvm.ctpop.i32(i32 %835)
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  %839 = xor i8 %838, 1
  store i8 %839, i8* %31, align 1
  %840 = xor i32 %832, %831
  %841 = lshr i32 %840, 4
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  store i8 %843, i8* %36, align 1
  %844 = icmp eq i32 %832, 0
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %39, align 1
  %846 = lshr i32 %832, 31
  %847 = trunc i32 %846 to i8
  store i8 %847, i8* %42, align 1
  %848 = lshr i32 %831, 31
  %849 = xor i32 %846, %848
  %850 = add nuw nsw i32 %849, %848
  %851 = icmp eq i32 %850, 2
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %48, align 1
  %.v113 = select i1 %844, i64 10, i64 99
  %853 = add i64 %829, %.v113
  store i64 %853, i64* %3, align 8
  br i1 %844, label %block_.L_43e177, label %block_.L_43e1d0

block_.L_43e177:                                  ; preds = %block_43e16d, %block_.L_43e163
  %854 = phi i64 [ %853, %block_43e16d ], [ %829, %block_.L_43e163 ]
  %RDI.i832 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  store i64 ptrtoint (%G__0x6cc1b0_type* @G__0x6cc1b0 to i64), i64* %RDI.i832, align 8
  %RSI.i829 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %855 = add i64 %815, -60
  %856 = add i64 %854, 13
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i32*
  %858 = load i32, i32* %857, align 4
  %859 = zext i32 %858 to i64
  store i64 %859, i64* %RSI.i829, align 8
  %860 = add i64 %815, -64
  %861 = add i64 %854, 16
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to i32*
  %863 = load i32, i32* %862, align 4
  %864 = zext i32 %863 to i64
  store i64 %864, i64* %RDX.i955, align 8
  %865 = add i64 %815, -112
  %866 = add i64 %854, 20
  store i64 %866, i64* %3, align 8
  %867 = inttoptr i64 %865 to i64*
  %868 = load i64, i64* %867, align 8
  store i64 %868, i64* %RAX.i905.phi.trans.insert, align 8
  %869 = add i64 %815, -68
  %870 = add i64 %854, 24
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i32*
  %872 = load i32, i32* %871, align 4
  %873 = sext i32 %872 to i64
  store i64 %873, i64* %RCX.i1093, align 8
  %874 = shl nsw i64 %873, 3
  %875 = add i64 %874, %868
  %876 = add i64 %854, 28
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i64*
  %878 = load i64, i64* %877, align 8
  store i64 %878, i64* %RAX.i905.phi.trans.insert, align 8
  %879 = add i64 %815, -72
  %880 = add i64 %854, 32
  store i64 %880, i64* %3, align 8
  %881 = inttoptr i64 %879 to i32*
  %882 = load i32, i32* %881, align 4
  %883 = sext i32 %882 to i64
  store i64 %883, i64* %RCX.i1093, align 8
  %884 = shl nsw i64 %883, 3
  %885 = add i64 %884, %878
  %886 = add i64 %854, 36
  store i64 %886, i64* %3, align 8
  %887 = inttoptr i64 %885 to i64*
  %888 = load i64, i64* %887, align 8
  store i64 %888, i64* %RAX.i905.phi.trans.insert, align 8
  %889 = add i64 %854, 39
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %888 to i64*
  %891 = load i64, i64* %890, align 8
  store i64 %891, i64* %RAX.i905.phi.trans.insert, align 8
  %892 = add i64 %815, -38
  %893 = add i64 %854, 44
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i16*
  %895 = load i16, i16* %894, align 2
  %896 = sext i16 %895 to i64
  store i64 %896, i64* %RCX.i1093, align 8
  %897 = shl nsw i64 %896, 3
  %898 = add i64 %897, %891
  %899 = add i64 %854, 48
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i64*
  %901 = load i64, i64* %900, align 8
  store i64 %901, i64* %RAX.i905.phi.trans.insert, align 8
  %902 = add i64 %815, -32
  %903 = add i64 %854, 52
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i32*
  %905 = load i32, i32* %904, align 4
  %906 = sext i32 %905 to i64
  store i64 %906, i64* %RCX.i1093, align 8
  %907 = shl nsw i64 %906, 3
  %908 = add i64 %907, %901
  %909 = add i64 %854, 56
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i64*
  %911 = load i64, i64* %910, align 8
  store i64 %911, i64* %RCX.i1093, align 8
  %R8W.i794 = bitcast %union.anon* %84 to i16*
  %912 = add i64 %854, 61
  store i64 %912, i64* %3, align 8
  %913 = load i16, i16* %894, align 2
  store i16 %913, i16* %R8W.i794, align 2
  %914 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %915 = add i64 %815, -116
  %916 = add i64 %854, 65
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i32*
  %918 = load i32, i32* %917, align 4
  %919 = zext i32 %918 to i64
  store i64 %919, i64* %914, align 8
  store i8 0, i8* %24, align 1
  %920 = and i32 %918, 255
  %921 = tail call i32 @llvm.ctpop.i32(i32 %920)
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  %924 = xor i8 %923, 1
  store i8 %924, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %925 = icmp eq i32 %918, 0
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %39, align 1
  %927 = lshr i32 %918, 31
  %928 = trunc i32 %927 to i8
  store i8 %928, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %929 = sext i32 %918 to i64
  store i64 %929, i64* %RAX.i905.phi.trans.insert, align 8
  %930 = shl nsw i64 %929, 3
  %931 = add nsw i64 %930, 7482144
  %932 = add i64 %854, 80
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i64*
  %934 = load i64, i64* %933, align 8
  store i64 %934, i64* %914, align 8
  %935 = getelementptr inbounds %union.anon, %union.anon* %84, i64 0, i32 0
  %936 = sext i16 %913 to i64
  %937 = and i64 %936, 4294967295
  store i64 %937, i64* %935, align 8
  %938 = add i64 %854, -2215
  %939 = add i64 %854, 89
  %940 = load i64, i64* %6, align 8
  %941 = add i64 %940, -8
  %942 = inttoptr i64 %941 to i64*
  store i64 %939, i64* %942, align 8
  store i64 %941, i64* %6, align 8
  store i64 %938, i64* %3, align 8
  %call2_43e1cb = tail call %struct.Memory* @sub_43d8d0.OneComponentLumaPrediction4x4(%struct.State* nonnull %0, i64 %938, %struct.Memory* %MEMORY.4)
  %.pre78 = load i64, i64* %RBP.i, align 8
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_43e1d0

block_.L_43e1d0:                                  ; preds = %block_43e16d, %block_.L_43e177
  %943 = phi i64 [ %.pre79, %block_.L_43e177 ], [ %853, %block_43e16d ]
  %944 = phi i64 [ %.pre78, %block_.L_43e177 ], [ %815, %block_43e16d ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_43e1cb, %block_.L_43e177 ], [ %MEMORY.4, %block_43e16d ]
  %945 = add i64 %944, -28
  %946 = add i64 %943, 4
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i32*
  %948 = load i32, i32* %947, align 4
  %949 = add i32 %948, -1
  %950 = icmp eq i32 %948, 0
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %24, align 1
  %952 = and i32 %949, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %31, align 1
  %957 = xor i32 %949, %948
  %958 = lshr i32 %957, 4
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  store i8 %960, i8* %36, align 1
  %961 = icmp eq i32 %949, 0
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %39, align 1
  %963 = lshr i32 %949, 31
  %964 = trunc i32 %963 to i8
  store i8 %964, i8* %42, align 1
  %965 = lshr i32 %948, 31
  %966 = xor i32 %963, %965
  %967 = add nuw nsw i32 %966, %965
  %968 = icmp eq i32 %967, 2
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %48, align 1
  %.v114 = select i1 %961, i64 20, i64 10
  %970 = add i64 %943, %.v114
  store i64 %970, i64* %3, align 8
  br i1 %961, label %block_.L_43e1e4, label %block_43e1da

block_43e1da:                                     ; preds = %block_.L_43e1d0
  %971 = add i64 %970, 4
  store i64 %971, i64* %3, align 8
  %972 = load i32, i32* %947, align 4
  %973 = add i32 %972, -2
  %974 = icmp ult i32 %972, 2
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %24, align 1
  %976 = and i32 %973, 255
  %977 = tail call i32 @llvm.ctpop.i32(i32 %976)
  %978 = trunc i32 %977 to i8
  %979 = and i8 %978, 1
  %980 = xor i8 %979, 1
  store i8 %980, i8* %31, align 1
  %981 = xor i32 %973, %972
  %982 = lshr i32 %981, 4
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  store i8 %984, i8* %36, align 1
  %985 = icmp eq i32 %973, 0
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %39, align 1
  %987 = lshr i32 %973, 31
  %988 = trunc i32 %987 to i8
  store i8 %988, i8* %42, align 1
  %989 = lshr i32 %972, 31
  %990 = xor i32 %987, %989
  %991 = add nuw nsw i32 %990, %989
  %992 = icmp eq i32 %991, 2
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %48, align 1
  %.v115 = select i1 %985, i64 10, i64 100
  %994 = add i64 %970, %.v115
  store i64 %994, i64* %3, align 8
  br i1 %985, label %block_.L_43e1e4, label %block_.L_43e23e

block_.L_43e1e4:                                  ; preds = %block_43e1da, %block_.L_43e1d0
  %995 = phi i64 [ %994, %block_43e1da ], [ %970, %block_.L_43e1d0 ]
  %RDI.i771 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  store i64 ptrtoint (%G__0x6cc1f0_type* @G__0x6cc1f0 to i64), i64* %RDI.i771, align 8
  %RSI.i768 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %996 = add i64 %944, -60
  %997 = add i64 %995, 13
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to i32*
  %999 = load i32, i32* %998, align 4
  %1000 = zext i32 %999 to i64
  store i64 %1000, i64* %RSI.i768, align 8
  %1001 = add i64 %944, -64
  %1002 = add i64 %995, 16
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1001 to i32*
  %1004 = load i32, i32* %1003, align 4
  %1005 = zext i32 %1004 to i64
  store i64 %1005, i64* %RDX.i955, align 8
  %1006 = add i64 %944, -112
  %1007 = add i64 %995, 20
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i64*
  %1009 = load i64, i64* %1008, align 8
  store i64 %1009, i64* %RAX.i905.phi.trans.insert, align 8
  %1010 = add i64 %944, -68
  %1011 = add i64 %995, 24
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i32*
  %1013 = load i32, i32* %1012, align 4
  %1014 = sext i32 %1013 to i64
  store i64 %1014, i64* %RCX.i1093, align 8
  %1015 = shl nsw i64 %1014, 3
  %1016 = add i64 %1015, %1009
  %1017 = add i64 %995, 28
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1016 to i64*
  %1019 = load i64, i64* %1018, align 8
  store i64 %1019, i64* %RAX.i905.phi.trans.insert, align 8
  %1020 = add i64 %944, -72
  %1021 = add i64 %995, 32
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i32*
  %1023 = load i32, i32* %1022, align 4
  %1024 = sext i32 %1023 to i64
  store i64 %1024, i64* %RCX.i1093, align 8
  %1025 = shl nsw i64 %1024, 3
  %1026 = add i64 %1025, %1019
  %1027 = add i64 %995, 36
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i64*
  %1029 = load i64, i64* %1028, align 8
  store i64 %1029, i64* %RAX.i905.phi.trans.insert, align 8
  %1030 = add i64 %1029, 8
  %1031 = add i64 %995, 40
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1030 to i64*
  %1033 = load i64, i64* %1032, align 8
  store i64 %1033, i64* %RAX.i905.phi.trans.insert, align 8
  %1034 = add i64 %944, -40
  %1035 = add i64 %995, 45
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1034 to i16*
  %1037 = load i16, i16* %1036, align 2
  %1038 = sext i16 %1037 to i64
  store i64 %1038, i64* %RCX.i1093, align 8
  %1039 = shl nsw i64 %1038, 3
  %1040 = add i64 %1039, %1033
  %1041 = add i64 %995, 49
  store i64 %1041, i64* %3, align 8
  %1042 = inttoptr i64 %1040 to i64*
  %1043 = load i64, i64* %1042, align 8
  store i64 %1043, i64* %RAX.i905.phi.trans.insert, align 8
  %1044 = add i64 %944, -36
  %1045 = add i64 %995, 53
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i32*
  %1047 = load i32, i32* %1046, align 4
  %1048 = sext i32 %1047 to i64
  store i64 %1048, i64* %RCX.i1093, align 8
  %1049 = shl nsw i64 %1048, 3
  %1050 = add i64 %1049, %1043
  %1051 = add i64 %995, 57
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i64*
  %1053 = load i64, i64* %1052, align 8
  store i64 %1053, i64* %RCX.i1093, align 8
  %R8W.i733 = bitcast %union.anon* %84 to i16*
  %1054 = add i64 %995, 62
  store i64 %1054, i64* %3, align 8
  %1055 = load i16, i16* %1036, align 2
  store i16 %1055, i16* %R8W.i733, align 2
  %1056 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %1057 = add i64 %944, -116
  %1058 = add i64 %995, 66
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1057 to i32*
  %1060 = load i32, i32* %1059, align 4
  %1061 = add i32 %1060, 1
  %1062 = zext i32 %1061 to i64
  store i64 %1062, i64* %1056, align 8
  %1063 = icmp eq i32 %1060, -1
  %1064 = icmp eq i32 %1061, 0
  %1065 = or i1 %1063, %1064
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %24, align 1
  %1067 = and i32 %1061, 255
  %1068 = tail call i32 @llvm.ctpop.i32(i32 %1067)
  %1069 = trunc i32 %1068 to i8
  %1070 = and i8 %1069, 1
  %1071 = xor i8 %1070, 1
  store i8 %1071, i8* %31, align 1
  %1072 = xor i32 %1061, %1060
  %1073 = lshr i32 %1072, 4
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  store i8 %1075, i8* %36, align 1
  %1076 = zext i1 %1064 to i8
  store i8 %1076, i8* %39, align 1
  %1077 = lshr i32 %1061, 31
  %1078 = trunc i32 %1077 to i8
  store i8 %1078, i8* %42, align 1
  %1079 = lshr i32 %1060, 31
  %1080 = xor i32 %1077, %1079
  %1081 = add nuw nsw i32 %1080, %1077
  %1082 = icmp eq i32 %1081, 2
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %48, align 1
  %1084 = sext i32 %1061 to i64
  store i64 %1084, i64* %RAX.i905.phi.trans.insert, align 8
  %1085 = shl nsw i64 %1084, 3
  %1086 = add nsw i64 %1085, 7482144
  %1087 = add i64 %995, 81
  store i64 %1087, i64* %3, align 8
  %1088 = inttoptr i64 %1086 to i64*
  %1089 = load i64, i64* %1088, align 8
  store i64 %1089, i64* %1056, align 8
  %1090 = getelementptr inbounds %union.anon, %union.anon* %84, i64 0, i32 0
  %1091 = sext i16 %1055 to i64
  %1092 = and i64 %1091, 4294967295
  store i64 %1092, i64* %1090, align 8
  %1093 = add i64 %995, -2324
  %1094 = add i64 %995, 90
  %1095 = load i64, i64* %6, align 8
  %1096 = add i64 %1095, -8
  %1097 = inttoptr i64 %1096 to i64*
  store i64 %1094, i64* %1097, align 8
  store i64 %1096, i64* %6, align 8
  store i64 %1093, i64* %3, align 8
  %call2_43e239 = tail call %struct.Memory* @sub_43d8d0.OneComponentLumaPrediction4x4(%struct.State* nonnull %0, i64 %1093, %struct.Memory* %MEMORY.8)
  %.pre80 = load i64, i64* %RBP.i, align 8
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_43e23e

block_.L_43e23e:                                  ; preds = %block_43e1da, %block_.L_43e1e4
  %1098 = phi i64 [ %.pre81, %block_.L_43e1e4 ], [ %994, %block_43e1da ]
  %1099 = phi i64 [ %.pre80, %block_.L_43e1e4 ], [ %944, %block_43e1da ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_43e239, %block_.L_43e1e4 ], [ %MEMORY.8, %block_43e1da ]
  %1100 = add i64 %1099, -100
  %1101 = add i64 %1098, 4
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i32*
  %1103 = load i32, i32* %1102, align 4
  store i8 0, i8* %24, align 1
  %1104 = and i32 %1103, 255
  %1105 = tail call i32 @llvm.ctpop.i32(i32 %1104)
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = xor i8 %1107, 1
  store i8 %1108, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %1109 = icmp eq i32 %1103, 0
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %39, align 1
  %1111 = lshr i32 %1103, 31
  %1112 = trunc i32 %1111 to i8
  store i8 %1112, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %.v = select i1 %1109, i64 738, i64 10
  %1113 = add i64 %1098, %.v
  %1114 = add i64 %1099, -28
  %1115 = add i64 %1113, 4
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i32*
  %1117 = load i32, i32* %1116, align 4
  %1118 = add i32 %1117, -2
  %1119 = icmp ult i32 %1117, 2
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %24, align 1
  %1121 = and i32 %1118, 255
  %1122 = tail call i32 @llvm.ctpop.i32(i32 %1121)
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  %1125 = xor i8 %1124, 1
  store i8 %1125, i8* %31, align 1
  %1126 = xor i32 %1118, %1117
  %1127 = lshr i32 %1126, 4
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  store i8 %1129, i8* %36, align 1
  %1130 = icmp eq i32 %1118, 0
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %39, align 1
  %1132 = lshr i32 %1118, 31
  %1133 = trunc i32 %1132 to i8
  store i8 %1133, i8* %42, align 1
  %1134 = lshr i32 %1117, 31
  %1135 = xor i32 %1132, %1134
  %1136 = add nuw nsw i32 %1135, %1134
  %1137 = icmp eq i32 %1136, 2
  %1138 = zext i1 %1137 to i8
  store i8 %1138, i8* %48, align 1
  br i1 %1109, label %block_.L_43e520, label %block_43e248

block_43e248:                                     ; preds = %block_.L_43e23e
  %.v100 = select i1 %1130, i64 10, i64 310
  %1139 = add i64 %1113, %.v100
  store i64 %1139, i64* %3, align 8
  br i1 %1130, label %block_43e252, label %block_.L_43e37e

block_43e252:                                     ; preds = %block_43e248
  %1140 = add i64 %1099, -24
  %1141 = add i64 %1139, 3
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i32*
  %1143 = load i32, i32* %1142, align 4
  %1144 = zext i32 %1143 to i64
  store i64 %1144, i64* %RAX.i905.phi.trans.insert, align 8
  %1145 = add i64 %1099, -48
  %1146 = add i64 %1139, 6
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i32*
  store i32 %1143, i32* %1147, align 4
  %1148 = bitcast %union.anon* %49 to i32**
  %RSI.i637 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %RDI.i594 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  %R8W.i562 = bitcast %union.anon* %84 to i16*
  %R9.i559 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %R10.i555 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_43e258

block_.L_43e258:                                  ; preds = %block_.L_43e366, %block_43e252
  %1149 = phi i64 [ %1646, %block_.L_43e366 ], [ %.pre82, %block_43e252 ]
  %1150 = load i64, i64* %RBP.i, align 8
  %1151 = add i64 %1150, -48
  %1152 = add i64 %1149, 3
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to i32*
  %1154 = load i32, i32* %1153, align 4
  %1155 = zext i32 %1154 to i64
  store i64 %1155, i64* %RAX.i905.phi.trans.insert, align 8
  %1156 = add i64 %1150, -56
  %1157 = add i64 %1149, 6
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1156 to i32*
  %1159 = load i32, i32* %1158, align 4
  %1160 = sub i32 %1154, %1159
  %1161 = icmp ult i32 %1154, %1159
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %24, align 1
  %1163 = and i32 %1160, 255
  %1164 = tail call i32 @llvm.ctpop.i32(i32 %1163)
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  %1167 = xor i8 %1166, 1
  store i8 %1167, i8* %31, align 1
  %1168 = xor i32 %1159, %1154
  %1169 = xor i32 %1168, %1160
  %1170 = lshr i32 %1169, 4
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  store i8 %1172, i8* %36, align 1
  %1173 = icmp eq i32 %1160, 0
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %39, align 1
  %1175 = lshr i32 %1160, 31
  %1176 = trunc i32 %1175 to i8
  store i8 %1176, i8* %42, align 1
  %1177 = lshr i32 %1154, 31
  %1178 = lshr i32 %1159, 31
  %1179 = xor i32 %1178, %1177
  %1180 = xor i32 %1175, %1177
  %1181 = add nuw nsw i32 %1180, %1179
  %1182 = icmp eq i32 %1181, 2
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %48, align 1
  %1184 = icmp ne i8 %1176, 0
  %1185 = xor i1 %1184, %1182
  %.v118 = select i1 %1185, i64 12, i64 289
  %1186 = add i64 %1149, %.v118
  store i64 %1186, i64* %3, align 8
  br i1 %1185, label %block_43e264, label %block_.L_43e379

block_43e264:                                     ; preds = %block_.L_43e258
  %1187 = add i64 %1150, -20
  %1188 = add i64 %1186, 3
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i32*
  %1190 = load i32, i32* %1189, align 4
  %1191 = zext i32 %1190 to i64
  store i64 %1191, i64* %RAX.i905.phi.trans.insert, align 8
  %1192 = add i64 %1150, -44
  %1193 = add i64 %1186, 6
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1192 to i32*
  store i32 %1190, i32* %1194, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_43e26a

block_.L_43e26a:                                  ; preds = %routine_sarl__cl___edx.exit603, %block_43e264
  %1195 = phi i64 [ %1616, %routine_sarl__cl___edx.exit603 ], [ %.pre83, %block_43e264 ]
  %1196 = load i64, i64* %RBP.i, align 8
  %1197 = add i64 %1196, -44
  %1198 = add i64 %1195, 3
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1197 to i32*
  %1200 = load i32, i32* %1199, align 4
  %1201 = zext i32 %1200 to i64
  store i64 %1201, i64* %RAX.i905.phi.trans.insert, align 8
  %1202 = add i64 %1196, -52
  %1203 = add i64 %1195, 6
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to i32*
  %1205 = load i32, i32* %1204, align 4
  %1206 = sub i32 %1200, %1205
  %1207 = icmp ult i32 %1200, %1205
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %24, align 1
  %1209 = and i32 %1206, 255
  %1210 = tail call i32 @llvm.ctpop.i32(i32 %1209)
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = xor i8 %1212, 1
  store i8 %1213, i8* %31, align 1
  %1214 = xor i32 %1205, %1200
  %1215 = xor i32 %1214, %1206
  %1216 = lshr i32 %1215, 4
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  store i8 %1218, i8* %36, align 1
  %1219 = icmp eq i32 %1206, 0
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %39, align 1
  %1221 = lshr i32 %1206, 31
  %1222 = trunc i32 %1221 to i8
  store i8 %1222, i8* %42, align 1
  %1223 = lshr i32 %1200, 31
  %1224 = lshr i32 %1205, 31
  %1225 = xor i32 %1224, %1223
  %1226 = xor i32 %1221, %1223
  %1227 = add nuw nsw i32 %1226, %1225
  %1228 = icmp eq i32 %1227, 2
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %48, align 1
  %1230 = icmp ne i8 %1222, 0
  %1231 = xor i1 %1230, %1228
  %.v98 = select i1 %1231, i64 12, i64 252
  %1232 = add i64 %1195, %.v98
  store i64 %1232, i64* %3, align 8
  br i1 %1231, label %block_43e276, label %block_.L_43e366

block_43e276:                                     ; preds = %block_.L_43e26a
  %1233 = load i64, i64* bitcast (%G_0x70fcf8_type* @G_0x70fcf8 to i64*), align 8
  store i64 %1233, i64* %RAX.i905.phi.trans.insert, align 8
  %1234 = add i64 %1232, 11
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1233 to i64*
  %1236 = load i64, i64* %1235, align 8
  store i64 %1236, i64* %RAX.i905.phi.trans.insert, align 8
  %1237 = add i64 %1196, -38
  %1238 = add i64 %1232, 16
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1237 to i16*
  %1240 = load i16, i16* %1239, align 2
  %1241 = sext i16 %1240 to i64
  store i64 %1241, i64* %RCX.i1093, align 8
  %1242 = shl nsw i64 %1241, 3
  %1243 = add i64 %1242, %1236
  %1244 = add i64 %1232, 20
  store i64 %1244, i64* %3, align 8
  %1245 = inttoptr i64 %1243 to i64*
  %1246 = load i64, i64* %1245, align 8
  store i64 %1246, i64* %RAX.i905.phi.trans.insert, align 8
  %1247 = add i64 %1196, -40
  %1248 = add i64 %1232, 25
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1247 to i16*
  %1250 = load i16, i16* %1249, align 2
  %1251 = sext i16 %1250 to i64
  store i64 %1251, i64* %RCX.i1093, align 8
  %1252 = shl nsw i64 %1251, 3
  %1253 = add i64 %1252, %1246
  %1254 = add i64 %1232, 29
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i64*
  %1256 = load i64, i64* %1255, align 8
  store i64 %1256, i64* %RAX.i905.phi.trans.insert, align 8
  %1257 = add i64 %1232, 31
  store i64 %1257, i64* %3, align 8
  %1258 = inttoptr i64 %1256 to i32*
  %1259 = load i32, i32* %1258, align 4
  %1260 = zext i32 %1259 to i64
  store i64 %1260, i64* %RDX.i955, align 8
  %1261 = add i64 %1196, -80
  %1262 = add i64 %1232, 35
  store i64 %1262, i64* %3, align 8
  %1263 = inttoptr i64 %1261 to i64*
  %1264 = load i64, i64* %1263, align 8
  store i64 %1264, i64* %RAX.i905.phi.trans.insert, align 8
  %1265 = add i64 %1264, 4
  store i64 %1265, i64* %RCX.i1093, align 8
  %1266 = icmp ugt i64 %1264, -5
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %24, align 1
  %1268 = trunc i64 %1265 to i32
  %1269 = and i32 %1268, 255
  %1270 = tail call i32 @llvm.ctpop.i32(i32 %1269)
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  %1273 = xor i8 %1272, 1
  store i8 %1273, i8* %31, align 1
  %1274 = xor i64 %1265, %1264
  %1275 = lshr i64 %1274, 4
  %1276 = trunc i64 %1275 to i8
  %1277 = and i8 %1276, 1
  store i8 %1277, i8* %36, align 1
  %1278 = icmp eq i64 %1265, 0
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %39, align 1
  %1280 = lshr i64 %1265, 63
  %1281 = trunc i64 %1280 to i8
  store i8 %1281, i8* %42, align 1
  %1282 = lshr i64 %1264, 63
  %1283 = xor i64 %1280, %1282
  %1284 = add nuw nsw i64 %1283, %1280
  %1285 = icmp eq i64 %1284, 2
  %1286 = zext i1 %1285 to i8
  store i8 %1286, i8* %48, align 1
  %1287 = add i64 %1232, 46
  store i64 %1287, i64* %3, align 8
  store i64 %1265, i64* %1263, align 8
  %1288 = load i64, i64* %RDX.i955, align 8
  %1289 = load i32*, i32** %1148, align 8
  %1290 = load i64, i64* %3, align 8
  %1291 = add i64 %1290, 3
  store i64 %1291, i64* %3, align 8
  %1292 = load i32, i32* %1289, align 4
  %1293 = shl i64 %1288, 32
  %1294 = ashr exact i64 %1293, 32
  %1295 = sext i32 %1292 to i64
  %1296 = mul nsw i64 %1295, %1294
  %1297 = trunc i64 %1296 to i32
  %1298 = and i64 %1296, 4294967295
  store i64 %1298, i64* %RDX.i955, align 8
  %1299 = shl i64 %1296, 32
  %1300 = ashr exact i64 %1299, 32
  %1301 = icmp ne i64 %1300, %1296
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %24, align 1
  %1303 = and i32 %1297, 255
  %1304 = tail call i32 @llvm.ctpop.i32(i32 %1303)
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  %1307 = xor i8 %1306, 1
  store i8 %1307, i8* %31, align 1
  store i8 0, i8* %36, align 1
  store i8 0, i8* %39, align 1
  %1308 = lshr i32 %1297, 31
  %1309 = trunc i32 %1308 to i8
  store i8 %1309, i8* %42, align 1
  store i8 %1302, i8* %48, align 1
  %1310 = load i64, i64* bitcast (%G_0x70fcf8_type* @G_0x70fcf8 to i64*), align 8
  store i64 %1310, i64* %RAX.i905.phi.trans.insert, align 8
  %1311 = add i64 %1310, 8
  %1312 = add i64 %1290, 15
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1311 to i64*
  %1314 = load i64, i64* %1313, align 8
  store i64 %1314, i64* %RAX.i905.phi.trans.insert, align 8
  %1315 = load i64, i64* %RBP.i, align 8
  %1316 = add i64 %1315, -38
  %1317 = add i64 %1290, 20
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1316 to i16*
  %1319 = load i16, i16* %1318, align 2
  %1320 = sext i16 %1319 to i64
  store i64 %1320, i64* %RCX.i1093, align 8
  %1321 = shl nsw i64 %1320, 3
  %1322 = add i64 %1321, %1314
  %1323 = add i64 %1290, 24
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i64*
  %1325 = load i64, i64* %1324, align 8
  store i64 %1325, i64* %RAX.i905.phi.trans.insert, align 8
  %1326 = add i64 %1315, -40
  %1327 = add i64 %1290, 29
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i16*
  %1329 = load i16, i16* %1328, align 2
  %1330 = sext i16 %1329 to i64
  store i64 %1330, i64* %RCX.i1093, align 8
  %1331 = shl nsw i64 %1330, 3
  %1332 = add i64 %1331, %1325
  %1333 = add i64 %1290, 33
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1332 to i64*
  %1335 = load i64, i64* %1334, align 8
  store i64 %1335, i64* %RAX.i905.phi.trans.insert, align 8
  %1336 = add i64 %1290, 35
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i32*
  %1338 = load i32, i32* %1337, align 4
  %1339 = zext i32 %1338 to i64
  store i64 %1339, i64* %RSI.i637, align 8
  %1340 = add i64 %1315, -88
  %1341 = add i64 %1290, 39
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to i64*
  %1343 = load i64, i64* %1342, align 8
  store i64 %1343, i64* %RAX.i905.phi.trans.insert, align 8
  %1344 = add i64 %1343, 4
  store i64 %1344, i64* %RCX.i1093, align 8
  %1345 = icmp ugt i64 %1343, -5
  %1346 = zext i1 %1345 to i8
  store i8 %1346, i8* %24, align 1
  %1347 = trunc i64 %1344 to i32
  %1348 = and i32 %1347, 255
  %1349 = tail call i32 @llvm.ctpop.i32(i32 %1348)
  %1350 = trunc i32 %1349 to i8
  %1351 = and i8 %1350, 1
  %1352 = xor i8 %1351, 1
  store i8 %1352, i8* %31, align 1
  %1353 = xor i64 %1344, %1343
  %1354 = lshr i64 %1353, 4
  %1355 = trunc i64 %1354 to i8
  %1356 = and i8 %1355, 1
  store i8 %1356, i8* %36, align 1
  %1357 = icmp eq i64 %1344, 0
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %39, align 1
  %1359 = lshr i64 %1344, 63
  %1360 = trunc i64 %1359 to i8
  store i8 %1360, i8* %42, align 1
  %1361 = lshr i64 %1343, 63
  %1362 = xor i64 %1359, %1361
  %1363 = add nuw nsw i64 %1362, %1359
  %1364 = icmp eq i64 %1363, 2
  %1365 = zext i1 %1364 to i8
  store i8 %1365, i8* %48, align 1
  %1366 = add i64 %1290, 50
  store i64 %1366, i64* %3, align 8
  store i64 %1344, i64* %1342, align 8
  %1367 = load i64, i64* %RSI.i637, align 8
  %1368 = load i32*, i32** %1148, align 8
  %1369 = load i64, i64* %3, align 8
  %1370 = add i64 %1369, 3
  store i64 %1370, i64* %3, align 8
  %1371 = load i32, i32* %1368, align 4
  %1372 = shl i64 %1367, 32
  %1373 = ashr exact i64 %1372, 32
  %1374 = sext i32 %1371 to i64
  %1375 = mul nsw i64 %1374, %1373
  %1376 = load i64, i64* %RDX.i955, align 8
  %1377 = trunc i64 %1375 to i32
  %1378 = trunc i64 %1376 to i32
  %1379 = add i32 %1377, %1378
  %1380 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %1381 = shl i32 %1380, 1
  %1382 = add i32 %1381, %1379
  %1383 = zext i32 %1382 to i64
  store i64 %1383, i64* %RDX.i955, align 8
  %1384 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %1385 = add i32 %1384, 1
  %1386 = zext i32 %1385 to i64
  store i64 %1386, i64* %RSI.i637, align 8
  %1387 = icmp eq i32 %1384, -1
  %1388 = icmp eq i32 %1385, 0
  %1389 = or i1 %1387, %1388
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %24, align 1
  %1391 = and i32 %1385, 255
  %1392 = tail call i32 @llvm.ctpop.i32(i32 %1391)
  %1393 = trunc i32 %1392 to i8
  %1394 = and i8 %1393, 1
  %1395 = xor i8 %1394, 1
  store i8 %1395, i8* %31, align 1
  %1396 = xor i32 %1385, %1384
  %1397 = lshr i32 %1396, 4
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  store i8 %1399, i8* %36, align 1
  %1400 = zext i1 %1388 to i8
  store i8 %1400, i8* %39, align 1
  %1401 = lshr i32 %1385, 31
  %1402 = trunc i32 %1401 to i8
  store i8 %1402, i8* %42, align 1
  %1403 = lshr i32 %1384, 31
  %1404 = xor i32 %1401, %1403
  %1405 = add nuw nsw i32 %1404, %1401
  %1406 = icmp eq i32 %1405, 2
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %48, align 1
  store i64 %1386, i64* %RCX.i1093, align 8
  %1408 = add i64 %1369, 30
  store i64 %1408, i64* %3, align 8
  %1409 = trunc i32 %1385 to i5
  switch i5 %1409, label %1413 [
    i5 0, label %routine_sarl__cl___edx.exit603
    i5 1, label %1410
  ]

; <label>:1410:                                   ; preds = %block_43e276
  %1411 = shl nuw i64 %1383, 32
  %1412 = ashr i64 %1411, 33
  br label %1420

; <label>:1413:                                   ; preds = %block_43e276
  %1414 = and i32 %1385, 31
  %1415 = zext i32 %1414 to i64
  %1416 = add nsw i64 %1415, -1
  %1417 = sext i32 %1382 to i64
  %1418 = ashr i64 %1417, %1416
  %1419 = lshr i64 %1418, 1
  br label %1420

; <label>:1420:                                   ; preds = %1413, %1410
  %1421 = phi i64 [ %1419, %1413 ], [ %1412, %1410 ]
  %1422 = phi i64 [ %1418, %1413 ], [ %1383, %1410 ]
  %1423 = trunc i64 %1422 to i8
  %1424 = and i8 %1423, 1
  %1425 = trunc i64 %1421 to i32
  %1426 = and i64 %1421, 4294967295
  store i64 %1426, i64* %RDX.i955, align 8
  store i8 %1424, i8* %24, align 1
  %1427 = and i32 %1425, 255
  %1428 = tail call i32 @llvm.ctpop.i32(i32 %1427)
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  %1431 = xor i8 %1430, 1
  store i8 %1431, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %1432 = icmp eq i32 %1425, 0
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %39, align 1
  %1434 = lshr i32 %1425, 31
  %1435 = trunc i32 %1434 to i8
  store i8 %1435, i8* %42, align 1
  store i8 0, i8* %48, align 1
  br label %routine_sarl__cl___edx.exit603

routine_sarl__cl___edx.exit603:                   ; preds = %1420, %block_43e276
  %1436 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %1436, i64* %RAX.i905.phi.trans.insert, align 8
  %1437 = add i64 %1369, 41
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1436 to i64*
  %1439 = load i64, i64* %1438, align 8
  store i64 %1439, i64* %RAX.i905.phi.trans.insert, align 8
  %1440 = load i64, i64* %RBP.i, align 8
  %1441 = add i64 %1440, -38
  %1442 = add i64 %1369, 46
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i16*
  %1444 = load i16, i16* %1443, align 2
  %1445 = sext i16 %1444 to i64
  store i64 %1445, i64* %RDI.i594, align 8
  %1446 = shl nsw i64 %1445, 3
  %1447 = add i64 %1446, %1439
  %1448 = add i64 %1369, 50
  store i64 %1448, i64* %3, align 8
  %1449 = inttoptr i64 %1447 to i64*
  %1450 = load i64, i64* %1449, align 8
  store i64 %1450, i64* %RAX.i905.phi.trans.insert, align 8
  %1451 = add i64 %1369, 52
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1450 to i32*
  %1453 = load i32, i32* %1452, align 4
  %1454 = zext i32 %1453 to i64
  store i64 %1454, i64* %RSI.i637, align 8
  store i64 %1436, i64* %RAX.i905.phi.trans.insert, align 8
  %1455 = add i64 %1436, 8
  %1456 = add i64 %1369, 64
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to i64*
  %1458 = load i64, i64* %1457, align 8
  store i64 %1458, i64* %RAX.i905.phi.trans.insert, align 8
  %1459 = add i64 %1440, -40
  %1460 = add i64 %1369, 69
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1459 to i16*
  %1462 = load i16, i16* %1461, align 2
  %1463 = sext i16 %1462 to i64
  store i64 %1463, i64* %RDI.i594, align 8
  %1464 = shl nsw i64 %1463, 3
  %1465 = add i64 %1464, %1458
  %1466 = add i64 %1369, 73
  store i64 %1466, i64* %3, align 8
  %1467 = inttoptr i64 %1465 to i64*
  %1468 = load i64, i64* %1467, align 8
  store i64 %1468, i64* %RAX.i905.phi.trans.insert, align 8
  %1469 = add i64 %1369, 75
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1468 to i32*
  %1471 = load i32, i32* %1470, align 4
  %1472 = add i32 %1471, %1453
  %1473 = add i32 %1472, 1
  %1474 = zext i32 %1473 to i64
  %1475 = shl nuw i64 %1474, 32
  %1476 = ashr i64 %1475, 33
  %1477 = and i64 %1476, 4294967295
  store i64 %1477, i64* %RSI.i637, align 8
  %1478 = load i64, i64* %RDX.i955, align 8
  %1479 = trunc i64 %1476 to i32
  %1480 = trunc i64 %1478 to i32
  %1481 = add i32 %1479, %1480
  %1482 = zext i32 %1481 to i64
  store i64 %1482, i64* %RDX.i955, align 8
  %1483 = icmp ult i32 %1481, %1480
  %1484 = icmp ult i32 %1481, %1479
  %1485 = or i1 %1483, %1484
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %24, align 1
  %1487 = and i32 %1481, 255
  %1488 = tail call i32 @llvm.ctpop.i32(i32 %1487)
  %1489 = trunc i32 %1488 to i8
  %1490 = and i8 %1489, 1
  %1491 = xor i8 %1490, 1
  store i8 %1491, i8* %31, align 1
  %1492 = xor i64 %1476, %1478
  %1493 = trunc i64 %1492 to i32
  %1494 = xor i32 %1493, %1481
  %1495 = lshr i32 %1494, 4
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  store i8 %1497, i8* %36, align 1
  %1498 = icmp eq i32 %1481, 0
  %1499 = zext i1 %1498 to i8
  store i8 %1499, i8* %39, align 1
  %1500 = lshr i32 %1481, 31
  %1501 = trunc i32 %1500 to i8
  store i8 %1501, i8* %42, align 1
  %1502 = lshr i32 %1480, 31
  %1503 = lshr i64 %1476, 31
  %1504 = trunc i64 %1503 to i32
  %1505 = and i32 %1504, 1
  %1506 = xor i32 %1500, %1502
  %1507 = xor i32 %1500, %1505
  %1508 = add nuw nsw i32 %1506, %1507
  %1509 = icmp eq i32 %1508, 2
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %48, align 1
  store i64 %1482, i64* %RDI.i594, align 8
  %1511 = add i64 %1369, -11304
  %1512 = add i64 %1369, 89
  %1513 = load i64, i64* %6, align 8
  %1514 = add i64 %1513, -8
  %1515 = inttoptr i64 %1514 to i64*
  store i64 %1512, i64* %1515, align 8
  store i64 %1514, i64* %6, align 8
  store i64 %1511, i64* %3, align 8
  %call2_43e32c = tail call %struct.Memory* @sub_43b6b0.clip1a(%struct.State* nonnull %0, i64 %1511, %struct.Memory* %MEMORY.10)
  %1516 = load i16, i16* %AX.i1122, align 2
  %1517 = load i64, i64* %3, align 8
  store i16 %1516, i16* %R8W.i562, align 2
  %1518 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1519 = add i64 %1518, 12600
  store i64 %1519, i64* %R9.i559, align 8
  %1520 = icmp ugt i64 %1518, -12601
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %24, align 1
  %1522 = trunc i64 %1519 to i32
  %1523 = and i32 %1522, 255
  %1524 = tail call i32 @llvm.ctpop.i32(i32 %1523)
  %1525 = trunc i32 %1524 to i8
  %1526 = and i8 %1525, 1
  %1527 = xor i8 %1526, 1
  store i8 %1527, i8* %31, align 1
  %1528 = xor i64 %1518, 16
  %1529 = xor i64 %1528, %1519
  %1530 = lshr i64 %1529, 4
  %1531 = trunc i64 %1530 to i8
  %1532 = and i8 %1531, 1
  store i8 %1532, i8* %36, align 1
  %1533 = icmp eq i64 %1519, 0
  %1534 = zext i1 %1533 to i8
  store i8 %1534, i8* %39, align 1
  %1535 = lshr i64 %1519, 63
  %1536 = trunc i64 %1535 to i8
  store i8 %1536, i8* %42, align 1
  %1537 = lshr i64 %1518, 63
  %1538 = xor i64 %1535, %1537
  %1539 = add nuw nsw i64 %1538, %1535
  %1540 = icmp eq i64 %1539, 2
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %48, align 1
  %1542 = load i64, i64* %RBP.i, align 8
  %1543 = add i64 %1542, -44
  %1544 = add i64 %1517, 23
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i32*
  %1546 = load i32, i32* %1545, align 4
  %1547 = sext i32 %1546 to i64
  %1548 = shl nsw i64 %1547, 5
  store i64 %1548, i64* %R10.i555, align 8
  %1549 = add i64 %1548, %1519
  store i64 %1549, i64* %R9.i559, align 8
  %1550 = icmp ult i64 %1549, %1519
  %1551 = icmp ult i64 %1549, %1548
  %1552 = or i1 %1550, %1551
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %24, align 1
  %1554 = trunc i64 %1549 to i32
  %1555 = and i32 %1554, 255
  %1556 = tail call i32 @llvm.ctpop.i32(i32 %1555)
  %1557 = trunc i32 %1556 to i8
  %1558 = and i8 %1557, 1
  %1559 = xor i8 %1558, 1
  store i8 %1559, i8* %31, align 1
  %1560 = xor i64 %1519, %1549
  %1561 = lshr i64 %1560, 4
  %1562 = trunc i64 %1561 to i8
  %1563 = and i8 %1562, 1
  store i8 %1563, i8* %36, align 1
  %1564 = icmp eq i64 %1549, 0
  %1565 = zext i1 %1564 to i8
  store i8 %1565, i8* %39, align 1
  %1566 = lshr i64 %1549, 63
  %1567 = trunc i64 %1566 to i8
  store i8 %1567, i8* %42, align 1
  %1568 = lshr i64 %1547, 58
  %1569 = and i64 %1568, 1
  %1570 = xor i64 %1566, %1535
  %1571 = xor i64 %1566, %1569
  %1572 = add nuw nsw i64 %1570, %1571
  %1573 = icmp eq i64 %1572, 2
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %48, align 1
  %1575 = add i64 %1542, -48
  %1576 = add i64 %1517, 34
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1575 to i32*
  %1578 = load i32, i32* %1577, align 4
  %1579 = sext i32 %1578 to i64
  store i64 %1579, i64* %R10.i555, align 8
  %1580 = shl nsw i64 %1579, 1
  %1581 = add i64 %1580, %1549
  %1582 = load i16, i16* %R8W.i562, align 2
  %1583 = add i64 %1517, 39
  store i64 %1583, i64* %3, align 8
  %1584 = inttoptr i64 %1581 to i16*
  store i16 %1582, i16* %1584, align 2
  %1585 = load i64, i64* %RBP.i, align 8
  %1586 = add i64 %1585, -44
  %1587 = load i64, i64* %3, align 8
  %1588 = add i64 %1587, 3
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1586 to i32*
  %1590 = load i32, i32* %1589, align 4
  %1591 = add i32 %1590, 1
  %1592 = zext i32 %1591 to i64
  store i64 %1592, i64* %RAX.i905.phi.trans.insert, align 8
  %1593 = icmp eq i32 %1590, -1
  %1594 = icmp eq i32 %1591, 0
  %1595 = or i1 %1593, %1594
  %1596 = zext i1 %1595 to i8
  store i8 %1596, i8* %24, align 1
  %1597 = and i32 %1591, 255
  %1598 = tail call i32 @llvm.ctpop.i32(i32 %1597)
  %1599 = trunc i32 %1598 to i8
  %1600 = and i8 %1599, 1
  %1601 = xor i8 %1600, 1
  store i8 %1601, i8* %31, align 1
  %1602 = xor i32 %1591, %1590
  %1603 = lshr i32 %1602, 4
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  store i8 %1605, i8* %36, align 1
  %1606 = zext i1 %1594 to i8
  store i8 %1606, i8* %39, align 1
  %1607 = lshr i32 %1591, 31
  %1608 = trunc i32 %1607 to i8
  store i8 %1608, i8* %42, align 1
  %1609 = lshr i32 %1590, 31
  %1610 = xor i32 %1607, %1609
  %1611 = add nuw nsw i32 %1610, %1607
  %1612 = icmp eq i32 %1611, 2
  %1613 = zext i1 %1612 to i8
  store i8 %1613, i8* %48, align 1
  %1614 = add i64 %1587, 9
  store i64 %1614, i64* %3, align 8
  store i32 %1591, i32* %1589, align 4
  %1615 = load i64, i64* %3, align 8
  %1616 = add i64 %1615, -247
  store i64 %1616, i64* %3, align 8
  br label %block_.L_43e26a

block_.L_43e366:                                  ; preds = %block_.L_43e26a
  %1617 = add i64 %1196, -48
  %1618 = add i64 %1232, 8
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1617 to i32*
  %1620 = load i32, i32* %1619, align 4
  %1621 = add i32 %1620, 1
  %1622 = zext i32 %1621 to i64
  store i64 %1622, i64* %RAX.i905.phi.trans.insert, align 8
  %1623 = icmp eq i32 %1620, -1
  %1624 = icmp eq i32 %1621, 0
  %1625 = or i1 %1623, %1624
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %24, align 1
  %1627 = and i32 %1621, 255
  %1628 = tail call i32 @llvm.ctpop.i32(i32 %1627)
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  %1631 = xor i8 %1630, 1
  store i8 %1631, i8* %31, align 1
  %1632 = xor i32 %1621, %1620
  %1633 = lshr i32 %1632, 4
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  store i8 %1635, i8* %36, align 1
  %1636 = zext i1 %1624 to i8
  store i8 %1636, i8* %39, align 1
  %1637 = lshr i32 %1621, 31
  %1638 = trunc i32 %1637 to i8
  store i8 %1638, i8* %42, align 1
  %1639 = lshr i32 %1620, 31
  %1640 = xor i32 %1637, %1639
  %1641 = add nuw nsw i32 %1640, %1637
  %1642 = icmp eq i32 %1641, 2
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %48, align 1
  %1644 = add i64 %1232, 14
  store i64 %1644, i64* %3, align 8
  store i32 %1621, i32* %1619, align 4
  %1645 = load i64, i64* %3, align 8
  %1646 = add i64 %1645, -284
  store i64 %1646, i64* %3, align 8
  br label %block_.L_43e258

block_.L_43e379:                                  ; preds = %block_.L_43e258
  %1647 = add i64 %1186, 418
  br label %block_.L_43e51b

block_.L_43e37e:                                  ; preds = %block_43e248
  %1648 = add i64 %1139, 4
  store i64 %1648, i64* %3, align 8
  %1649 = load i32, i32* %1116, align 4
  store i8 0, i8* %24, align 1
  %1650 = and i32 %1649, 255
  %1651 = tail call i32 @llvm.ctpop.i32(i32 %1650)
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  %1654 = xor i8 %1653, 1
  store i8 %1654, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %1655 = icmp eq i32 %1649, 0
  %1656 = zext i1 %1655 to i8
  store i8 %1656, i8* %39, align 1
  %1657 = lshr i32 %1649, 31
  %1658 = trunc i32 %1657 to i8
  store i8 %1658, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %.v99 = select i1 %1655, i64 10, i64 208
  %1659 = add i64 %1139, %.v99
  %1660 = add i64 %1099, -24
  %1661 = add i64 %1659, 3
  store i64 %1661, i64* %3, align 8
  %1662 = inttoptr i64 %1660 to i32*
  %1663 = load i32, i32* %1662, align 4
  %1664 = zext i32 %1663 to i64
  store i64 %1664, i64* %RAX.i905.phi.trans.insert, align 8
  %1665 = add i64 %1099, -48
  %1666 = add i64 %1659, 6
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1665 to i32*
  store i32 %1663, i32* %1667, align 4
  %1668 = bitcast %union.anon* %49 to i32**
  %RSI.i334 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  %R8W.i324 = bitcast %union.anon* %84 to i16*
  %R9.i317 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %.pre84 = load i64, i64* %3, align 8
  br i1 %1655, label %block_.L_43e38e.preheader, label %block_.L_43e454.preheader

block_.L_43e454.preheader:                        ; preds = %block_.L_43e37e
  br label %block_.L_43e454

block_.L_43e38e.preheader:                        ; preds = %block_.L_43e37e
  br label %block_.L_43e38e

block_.L_43e38e:                                  ; preds = %block_.L_43e38e.preheader, %block_.L_43e436
  %1669 = phi i64 [ %2048, %block_.L_43e436 ], [ %.pre84, %block_.L_43e38e.preheader ]
  %1670 = load i64, i64* %RBP.i, align 8
  %1671 = add i64 %1670, -48
  %1672 = add i64 %1669, 3
  store i64 %1672, i64* %3, align 8
  %1673 = inttoptr i64 %1671 to i32*
  %1674 = load i32, i32* %1673, align 4
  %1675 = zext i32 %1674 to i64
  store i64 %1675, i64* %RAX.i905.phi.trans.insert, align 8
  %1676 = add i64 %1670, -56
  %1677 = add i64 %1669, 6
  store i64 %1677, i64* %3, align 8
  %1678 = inttoptr i64 %1676 to i32*
  %1679 = load i32, i32* %1678, align 4
  %1680 = sub i32 %1674, %1679
  %1681 = icmp ult i32 %1674, %1679
  %1682 = zext i1 %1681 to i8
  store i8 %1682, i8* %24, align 1
  %1683 = and i32 %1680, 255
  %1684 = tail call i32 @llvm.ctpop.i32(i32 %1683)
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  %1687 = xor i8 %1686, 1
  store i8 %1687, i8* %31, align 1
  %1688 = xor i32 %1679, %1674
  %1689 = xor i32 %1688, %1680
  %1690 = lshr i32 %1689, 4
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  store i8 %1692, i8* %36, align 1
  %1693 = icmp eq i32 %1680, 0
  %1694 = zext i1 %1693 to i8
  store i8 %1694, i8* %39, align 1
  %1695 = lshr i32 %1680, 31
  %1696 = trunc i32 %1695 to i8
  store i8 %1696, i8* %42, align 1
  %1697 = lshr i32 %1674, 31
  %1698 = lshr i32 %1679, 31
  %1699 = xor i32 %1698, %1697
  %1700 = xor i32 %1695, %1697
  %1701 = add nuw nsw i32 %1700, %1699
  %1702 = icmp eq i32 %1701, 2
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %48, align 1
  %1704 = icmp ne i8 %1696, 0
  %1705 = xor i1 %1704, %1702
  %.v117 = select i1 %1705, i64 12, i64 187
  %1706 = add i64 %1669, %.v117
  store i64 %1706, i64* %3, align 8
  br i1 %1705, label %block_43e39a, label %block_.L_43e449

block_43e39a:                                     ; preds = %block_.L_43e38e
  %1707 = add i64 %1670, -20
  %1708 = add i64 %1706, 3
  store i64 %1708, i64* %3, align 8
  %1709 = inttoptr i64 %1707 to i32*
  %1710 = load i32, i32* %1709, align 4
  %1711 = zext i32 %1710 to i64
  store i64 %1711, i64* %RAX.i905.phi.trans.insert, align 8
  %1712 = add i64 %1670, -44
  %1713 = add i64 %1706, 6
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i32*
  store i32 %1710, i32* %1714, align 4
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_43e3a0

block_.L_43e3a0:                                  ; preds = %routine_sarl__cl___edx.exit461, %block_43e39a
  %1715 = phi i64 [ %2018, %routine_sarl__cl___edx.exit461 ], [ %.pre85, %block_43e39a ]
  %1716 = load i64, i64* %RBP.i, align 8
  %1717 = add i64 %1716, -44
  %1718 = add i64 %1715, 3
  store i64 %1718, i64* %3, align 8
  %1719 = inttoptr i64 %1717 to i32*
  %1720 = load i32, i32* %1719, align 4
  %1721 = zext i32 %1720 to i64
  store i64 %1721, i64* %RAX.i905.phi.trans.insert, align 8
  %1722 = add i64 %1716, -52
  %1723 = add i64 %1715, 6
  store i64 %1723, i64* %3, align 8
  %1724 = inttoptr i64 %1722 to i32*
  %1725 = load i32, i32* %1724, align 4
  %1726 = sub i32 %1720, %1725
  %1727 = icmp ult i32 %1720, %1725
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %24, align 1
  %1729 = and i32 %1726, 255
  %1730 = tail call i32 @llvm.ctpop.i32(i32 %1729)
  %1731 = trunc i32 %1730 to i8
  %1732 = and i8 %1731, 1
  %1733 = xor i8 %1732, 1
  store i8 %1733, i8* %31, align 1
  %1734 = xor i32 %1725, %1720
  %1735 = xor i32 %1734, %1726
  %1736 = lshr i32 %1735, 4
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  store i8 %1738, i8* %36, align 1
  %1739 = icmp eq i32 %1726, 0
  %1740 = zext i1 %1739 to i8
  store i8 %1740, i8* %39, align 1
  %1741 = lshr i32 %1726, 31
  %1742 = trunc i32 %1741 to i8
  store i8 %1742, i8* %42, align 1
  %1743 = lshr i32 %1720, 31
  %1744 = lshr i32 %1725, 31
  %1745 = xor i32 %1744, %1743
  %1746 = xor i32 %1741, %1743
  %1747 = add nuw nsw i32 %1746, %1745
  %1748 = icmp eq i32 %1747, 2
  %1749 = zext i1 %1748 to i8
  store i8 %1749, i8* %48, align 1
  %1750 = icmp ne i8 %1742, 0
  %1751 = xor i1 %1750, %1748
  %.v101 = select i1 %1751, i64 12, i64 150
  %1752 = add i64 %1715, %.v101
  store i64 %1752, i64* %3, align 8
  br i1 %1751, label %block_43e3ac, label %block_.L_43e436

block_43e3ac:                                     ; preds = %block_.L_43e3a0
  %1753 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %1753, i64* %RAX.i905.phi.trans.insert, align 8
  %1754 = add i64 %1752, 11
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i64*
  %1756 = load i64, i64* %1755, align 8
  store i64 %1756, i64* %RAX.i905.phi.trans.insert, align 8
  %1757 = add i64 %1716, -38
  %1758 = add i64 %1752, 16
  store i64 %1758, i64* %3, align 8
  %1759 = inttoptr i64 %1757 to i16*
  %1760 = load i16, i16* %1759, align 2
  %1761 = sext i16 %1760 to i64
  store i64 %1761, i64* %RCX.i1093, align 8
  %1762 = shl nsw i64 %1761, 3
  %1763 = add i64 %1762, %1756
  %1764 = add i64 %1752, 20
  store i64 %1764, i64* %3, align 8
  %1765 = inttoptr i64 %1763 to i64*
  %1766 = load i64, i64* %1765, align 8
  store i64 %1766, i64* %RAX.i905.phi.trans.insert, align 8
  %1767 = add i64 %1752, 22
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1766 to i32*
  %1769 = load i32, i32* %1768, align 4
  %1770 = zext i32 %1769 to i64
  store i64 %1770, i64* %RDX.i955, align 8
  %1771 = add i64 %1716, -80
  %1772 = add i64 %1752, 26
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1771 to i64*
  %1774 = load i64, i64* %1773, align 8
  store i64 %1774, i64* %RAX.i905.phi.trans.insert, align 8
  %1775 = add i64 %1774, 4
  store i64 %1775, i64* %RCX.i1093, align 8
  %1776 = icmp ugt i64 %1774, -5
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %24, align 1
  %1778 = trunc i64 %1775 to i32
  %1779 = and i32 %1778, 255
  %1780 = tail call i32 @llvm.ctpop.i32(i32 %1779)
  %1781 = trunc i32 %1780 to i8
  %1782 = and i8 %1781, 1
  %1783 = xor i8 %1782, 1
  store i8 %1783, i8* %31, align 1
  %1784 = xor i64 %1775, %1774
  %1785 = lshr i64 %1784, 4
  %1786 = trunc i64 %1785 to i8
  %1787 = and i8 %1786, 1
  store i8 %1787, i8* %36, align 1
  %1788 = icmp eq i64 %1775, 0
  %1789 = zext i1 %1788 to i8
  store i8 %1789, i8* %39, align 1
  %1790 = lshr i64 %1775, 63
  %1791 = trunc i64 %1790 to i8
  store i8 %1791, i8* %42, align 1
  %1792 = lshr i64 %1774, 63
  %1793 = xor i64 %1790, %1792
  %1794 = add nuw nsw i64 %1793, %1790
  %1795 = icmp eq i64 %1794, 2
  %1796 = zext i1 %1795 to i8
  store i8 %1796, i8* %48, align 1
  %1797 = add i64 %1752, 37
  store i64 %1797, i64* %3, align 8
  store i64 %1775, i64* %1773, align 8
  %1798 = load i64, i64* %RDX.i955, align 8
  %1799 = load i32*, i32** %1668, align 8
  %1800 = load i64, i64* %3, align 8
  %1801 = add i64 %1800, 3
  store i64 %1801, i64* %3, align 8
  %1802 = load i32, i32* %1799, align 4
  %1803 = shl i64 %1798, 32
  %1804 = ashr exact i64 %1803, 32
  %1805 = sext i32 %1802 to i64
  %1806 = mul nsw i64 %1805, %1804
  %1807 = trunc i64 %1806 to i32
  %1808 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %1809 = add i32 %1808, %1807
  %1810 = zext i32 %1809 to i64
  store i64 %1810, i64* %RDX.i955, align 8
  %1811 = icmp ult i32 %1809, %1807
  %1812 = icmp ult i32 %1809, %1808
  %1813 = or i1 %1811, %1812
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %24, align 1
  %1815 = and i32 %1809, 255
  %1816 = tail call i32 @llvm.ctpop.i32(i32 %1815)
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  %1819 = xor i8 %1818, 1
  store i8 %1819, i8* %31, align 1
  %1820 = xor i32 %1808, %1807
  %1821 = xor i32 %1820, %1809
  %1822 = lshr i32 %1821, 4
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  store i8 %1824, i8* %36, align 1
  %1825 = icmp eq i32 %1809, 0
  %1826 = zext i1 %1825 to i8
  store i8 %1826, i8* %39, align 1
  %1827 = lshr i32 %1809, 31
  %1828 = trunc i32 %1827 to i8
  store i8 %1828, i8* %42, align 1
  %1829 = lshr i32 %1807, 31
  %1830 = lshr i32 %1808, 31
  %1831 = xor i32 %1827, %1829
  %1832 = xor i32 %1827, %1830
  %1833 = add nuw nsw i32 %1831, %1832
  %1834 = icmp eq i32 %1833, 2
  %1835 = zext i1 %1834 to i8
  store i8 %1835, i8* %48, align 1
  %1836 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %1837 = zext i32 %1836 to i64
  store i64 %1837, i64* %RCX.i1093, align 8
  %1838 = add i64 %1800, 19
  store i64 %1838, i64* %3, align 8
  %1839 = trunc i32 %1836 to i5
  switch i5 %1839, label %1843 [
    i5 0, label %routine_sarl__cl___edx.exit461
    i5 1, label %1840
  ]

; <label>:1840:                                   ; preds = %block_43e3ac
  %1841 = shl nuw i64 %1810, 32
  %1842 = ashr i64 %1841, 33
  br label %1850

; <label>:1843:                                   ; preds = %block_43e3ac
  %1844 = and i32 %1836, 31
  %1845 = zext i32 %1844 to i64
  %1846 = add nsw i64 %1845, -1
  %1847 = sext i32 %1809 to i64
  %1848 = ashr i64 %1847, %1846
  %1849 = lshr i64 %1848, 1
  br label %1850

; <label>:1850:                                   ; preds = %1843, %1840
  %1851 = phi i64 [ %1849, %1843 ], [ %1842, %1840 ]
  %1852 = phi i64 [ %1848, %1843 ], [ %1810, %1840 ]
  %1853 = trunc i64 %1852 to i8
  %1854 = and i8 %1853, 1
  %1855 = trunc i64 %1851 to i32
  %1856 = and i64 %1851, 4294967295
  store i64 %1856, i64* %RDX.i955, align 8
  store i8 %1854, i8* %24, align 1
  %1857 = and i32 %1855, 255
  %1858 = tail call i32 @llvm.ctpop.i32(i32 %1857)
  %1859 = trunc i32 %1858 to i8
  %1860 = and i8 %1859, 1
  %1861 = xor i8 %1860, 1
  store i8 %1861, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %1862 = icmp eq i32 %1855, 0
  %1863 = zext i1 %1862 to i8
  store i8 %1863, i8* %39, align 1
  %1864 = lshr i32 %1855, 31
  %1865 = trunc i32 %1864 to i8
  store i8 %1865, i8* %42, align 1
  store i8 0, i8* %48, align 1
  br label %routine_sarl__cl___edx.exit461

routine_sarl__cl___edx.exit461:                   ; preds = %1850, %block_43e3ac
  %1866 = phi i64 [ %1856, %1850 ], [ %1810, %block_43e3ac ]
  %1867 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %1867, i64* %RAX.i905.phi.trans.insert, align 8
  %1868 = add i64 %1800, 30
  store i64 %1868, i64* %3, align 8
  %1869 = inttoptr i64 %1867 to i64*
  %1870 = load i64, i64* %1869, align 8
  store i64 %1870, i64* %RAX.i905.phi.trans.insert, align 8
  %1871 = load i64, i64* %RBP.i, align 8
  %1872 = add i64 %1871, -38
  %1873 = add i64 %1800, 35
  store i64 %1873, i64* %3, align 8
  %1874 = inttoptr i64 %1872 to i16*
  %1875 = load i16, i16* %1874, align 2
  %1876 = sext i16 %1875 to i64
  store i64 %1876, i64* %RSI.i334, align 8
  %1877 = shl nsw i64 %1876, 3
  %1878 = add i64 %1877, %1870
  %1879 = add i64 %1800, 39
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1878 to i64*
  %1881 = load i64, i64* %1880, align 8
  store i64 %1881, i64* %RAX.i905.phi.trans.insert, align 8
  %1882 = add i64 %1800, 41
  store i64 %1882, i64* %3, align 8
  %1883 = trunc i64 %1866 to i32
  %1884 = inttoptr i64 %1881 to i32*
  %1885 = load i32, i32* %1884, align 4
  %1886 = add i32 %1885, %1883
  %1887 = zext i32 %1886 to i64
  store i64 %1887, i64* %RDX.i955, align 8
  %1888 = icmp ult i32 %1886, %1883
  %1889 = icmp ult i32 %1886, %1885
  %1890 = or i1 %1888, %1889
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %24, align 1
  %1892 = and i32 %1886, 255
  %1893 = tail call i32 @llvm.ctpop.i32(i32 %1892)
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  %1896 = xor i8 %1895, 1
  store i8 %1896, i8* %31, align 1
  %1897 = xor i32 %1885, %1883
  %1898 = xor i32 %1897, %1886
  %1899 = lshr i32 %1898, 4
  %1900 = trunc i32 %1899 to i8
  %1901 = and i8 %1900, 1
  store i8 %1901, i8* %36, align 1
  %1902 = icmp eq i32 %1886, 0
  %1903 = zext i1 %1902 to i8
  store i8 %1903, i8* %39, align 1
  %1904 = lshr i32 %1886, 31
  %1905 = trunc i32 %1904 to i8
  store i8 %1905, i8* %42, align 1
  %1906 = lshr i32 %1883, 31
  %1907 = lshr i32 %1885, 31
  %1908 = xor i32 %1904, %1906
  %1909 = xor i32 %1904, %1907
  %1910 = add nuw nsw i32 %1908, %1909
  %1911 = icmp eq i32 %1910, 2
  %1912 = zext i1 %1911 to i8
  store i8 %1912, i8* %48, align 1
  store i64 %1887, i64* %RDI.i, align 8
  %1913 = add i64 %1800, -11553
  %1914 = add i64 %1800, 48
  %1915 = load i64, i64* %6, align 8
  %1916 = add i64 %1915, -8
  %1917 = inttoptr i64 %1916 to i64*
  store i64 %1914, i64* %1917, align 8
  store i64 %1916, i64* %6, align 8
  store i64 %1913, i64* %3, align 8
  %call2_43e3fc = tail call %struct.Memory* @sub_43b6b0.clip1a(%struct.State* nonnull %0, i64 %1913, %struct.Memory* %MEMORY.10)
  %1918 = load i16, i16* %AX.i1122, align 2
  %1919 = load i64, i64* %3, align 8
  store i16 %1918, i16* %R8W.i324, align 2
  %1920 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1921 = add i64 %1920, 12600
  store i64 %1921, i64* %RSI.i334, align 8
  %1922 = icmp ugt i64 %1920, -12601
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %24, align 1
  %1924 = trunc i64 %1921 to i32
  %1925 = and i32 %1924, 255
  %1926 = tail call i32 @llvm.ctpop.i32(i32 %1925)
  %1927 = trunc i32 %1926 to i8
  %1928 = and i8 %1927, 1
  %1929 = xor i8 %1928, 1
  store i8 %1929, i8* %31, align 1
  %1930 = xor i64 %1920, 16
  %1931 = xor i64 %1930, %1921
  %1932 = lshr i64 %1931, 4
  %1933 = trunc i64 %1932 to i8
  %1934 = and i8 %1933, 1
  store i8 %1934, i8* %36, align 1
  %1935 = icmp eq i64 %1921, 0
  %1936 = zext i1 %1935 to i8
  store i8 %1936, i8* %39, align 1
  %1937 = lshr i64 %1921, 63
  %1938 = trunc i64 %1937 to i8
  store i8 %1938, i8* %42, align 1
  %1939 = lshr i64 %1920, 63
  %1940 = xor i64 %1937, %1939
  %1941 = add nuw nsw i64 %1940, %1937
  %1942 = icmp eq i64 %1941, 2
  %1943 = zext i1 %1942 to i8
  store i8 %1943, i8* %48, align 1
  %1944 = load i64, i64* %RBP.i, align 8
  %1945 = add i64 %1944, -44
  %1946 = add i64 %1919, 23
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1945 to i32*
  %1948 = load i32, i32* %1947, align 4
  %1949 = sext i32 %1948 to i64
  %1950 = shl nsw i64 %1949, 5
  store i64 %1950, i64* %R9.i317, align 8
  %1951 = add i64 %1950, %1921
  store i64 %1951, i64* %RSI.i334, align 8
  %1952 = icmp ult i64 %1951, %1921
  %1953 = icmp ult i64 %1951, %1950
  %1954 = or i1 %1952, %1953
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %24, align 1
  %1956 = trunc i64 %1951 to i32
  %1957 = and i32 %1956, 255
  %1958 = tail call i32 @llvm.ctpop.i32(i32 %1957)
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  %1961 = xor i8 %1960, 1
  store i8 %1961, i8* %31, align 1
  %1962 = xor i64 %1921, %1951
  %1963 = lshr i64 %1962, 4
  %1964 = trunc i64 %1963 to i8
  %1965 = and i8 %1964, 1
  store i8 %1965, i8* %36, align 1
  %1966 = icmp eq i64 %1951, 0
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %39, align 1
  %1968 = lshr i64 %1951, 63
  %1969 = trunc i64 %1968 to i8
  store i8 %1969, i8* %42, align 1
  %1970 = lshr i64 %1949, 58
  %1971 = and i64 %1970, 1
  %1972 = xor i64 %1968, %1937
  %1973 = xor i64 %1968, %1971
  %1974 = add nuw nsw i64 %1972, %1973
  %1975 = icmp eq i64 %1974, 2
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %48, align 1
  %1977 = add i64 %1944, -48
  %1978 = add i64 %1919, 34
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1977 to i32*
  %1980 = load i32, i32* %1979, align 4
  %1981 = sext i32 %1980 to i64
  store i64 %1981, i64* %R9.i317, align 8
  %1982 = shl nsw i64 %1981, 1
  %1983 = add i64 %1982, %1951
  %1984 = load i16, i16* %R8W.i324, align 2
  %1985 = add i64 %1919, 39
  store i64 %1985, i64* %3, align 8
  %1986 = inttoptr i64 %1983 to i16*
  store i16 %1984, i16* %1986, align 2
  %1987 = load i64, i64* %RBP.i, align 8
  %1988 = add i64 %1987, -44
  %1989 = load i64, i64* %3, align 8
  %1990 = add i64 %1989, 3
  store i64 %1990, i64* %3, align 8
  %1991 = inttoptr i64 %1988 to i32*
  %1992 = load i32, i32* %1991, align 4
  %1993 = add i32 %1992, 1
  %1994 = zext i32 %1993 to i64
  store i64 %1994, i64* %RAX.i905.phi.trans.insert, align 8
  %1995 = icmp eq i32 %1992, -1
  %1996 = icmp eq i32 %1993, 0
  %1997 = or i1 %1995, %1996
  %1998 = zext i1 %1997 to i8
  store i8 %1998, i8* %24, align 1
  %1999 = and i32 %1993, 255
  %2000 = tail call i32 @llvm.ctpop.i32(i32 %1999)
  %2001 = trunc i32 %2000 to i8
  %2002 = and i8 %2001, 1
  %2003 = xor i8 %2002, 1
  store i8 %2003, i8* %31, align 1
  %2004 = xor i32 %1993, %1992
  %2005 = lshr i32 %2004, 4
  %2006 = trunc i32 %2005 to i8
  %2007 = and i8 %2006, 1
  store i8 %2007, i8* %36, align 1
  %2008 = zext i1 %1996 to i8
  store i8 %2008, i8* %39, align 1
  %2009 = lshr i32 %1993, 31
  %2010 = trunc i32 %2009 to i8
  store i8 %2010, i8* %42, align 1
  %2011 = lshr i32 %1992, 31
  %2012 = xor i32 %2009, %2011
  %2013 = add nuw nsw i32 %2012, %2009
  %2014 = icmp eq i32 %2013, 2
  %2015 = zext i1 %2014 to i8
  store i8 %2015, i8* %48, align 1
  %2016 = add i64 %1989, 9
  store i64 %2016, i64* %3, align 8
  store i32 %1993, i32* %1991, align 4
  %2017 = load i64, i64* %3, align 8
  %2018 = add i64 %2017, -145
  store i64 %2018, i64* %3, align 8
  br label %block_.L_43e3a0

block_.L_43e436:                                  ; preds = %block_.L_43e3a0
  %2019 = add i64 %1716, -48
  %2020 = add i64 %1752, 8
  store i64 %2020, i64* %3, align 8
  %2021 = inttoptr i64 %2019 to i32*
  %2022 = load i32, i32* %2021, align 4
  %2023 = add i32 %2022, 1
  %2024 = zext i32 %2023 to i64
  store i64 %2024, i64* %RAX.i905.phi.trans.insert, align 8
  %2025 = icmp eq i32 %2022, -1
  %2026 = icmp eq i32 %2023, 0
  %2027 = or i1 %2025, %2026
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %24, align 1
  %2029 = and i32 %2023, 255
  %2030 = tail call i32 @llvm.ctpop.i32(i32 %2029)
  %2031 = trunc i32 %2030 to i8
  %2032 = and i8 %2031, 1
  %2033 = xor i8 %2032, 1
  store i8 %2033, i8* %31, align 1
  %2034 = xor i32 %2023, %2022
  %2035 = lshr i32 %2034, 4
  %2036 = trunc i32 %2035 to i8
  %2037 = and i8 %2036, 1
  store i8 %2037, i8* %36, align 1
  %2038 = zext i1 %2026 to i8
  store i8 %2038, i8* %39, align 1
  %2039 = lshr i32 %2023, 31
  %2040 = trunc i32 %2039 to i8
  store i8 %2040, i8* %42, align 1
  %2041 = lshr i32 %2022, 31
  %2042 = xor i32 %2039, %2041
  %2043 = add nuw nsw i32 %2042, %2039
  %2044 = icmp eq i32 %2043, 2
  %2045 = zext i1 %2044 to i8
  store i8 %2045, i8* %48, align 1
  %2046 = add i64 %1752, 14
  store i64 %2046, i64* %3, align 8
  store i32 %2023, i32* %2021, align 4
  %2047 = load i64, i64* %3, align 8
  %2048 = add i64 %2047, -182
  store i64 %2048, i64* %3, align 8
  br label %block_.L_43e38e

block_.L_43e449:                                  ; preds = %block_.L_43e38e
  %2049 = add i64 %1706, 205
  br label %block_.L_43e516

block_.L_43e454:                                  ; preds = %block_.L_43e454.preheader, %block_.L_43e4fe
  %2050 = phi i64 [ %2431, %block_.L_43e4fe ], [ %.pre84, %block_.L_43e454.preheader ]
  %2051 = load i64, i64* %RBP.i, align 8
  %2052 = add i64 %2051, -48
  %2053 = add i64 %2050, 3
  store i64 %2053, i64* %3, align 8
  %2054 = inttoptr i64 %2052 to i32*
  %2055 = load i32, i32* %2054, align 4
  %2056 = zext i32 %2055 to i64
  store i64 %2056, i64* %RAX.i905.phi.trans.insert, align 8
  %2057 = add i64 %2051, -56
  %2058 = add i64 %2050, 6
  store i64 %2058, i64* %3, align 8
  %2059 = inttoptr i64 %2057 to i32*
  %2060 = load i32, i32* %2059, align 4
  %2061 = sub i32 %2055, %2060
  %2062 = icmp ult i32 %2055, %2060
  %2063 = zext i1 %2062 to i8
  store i8 %2063, i8* %24, align 1
  %2064 = and i32 %2061, 255
  %2065 = tail call i32 @llvm.ctpop.i32(i32 %2064)
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  %2068 = xor i8 %2067, 1
  store i8 %2068, i8* %31, align 1
  %2069 = xor i32 %2060, %2055
  %2070 = xor i32 %2069, %2061
  %2071 = lshr i32 %2070, 4
  %2072 = trunc i32 %2071 to i8
  %2073 = and i8 %2072, 1
  store i8 %2073, i8* %36, align 1
  %2074 = icmp eq i32 %2061, 0
  %2075 = zext i1 %2074 to i8
  store i8 %2075, i8* %39, align 1
  %2076 = lshr i32 %2061, 31
  %2077 = trunc i32 %2076 to i8
  store i8 %2077, i8* %42, align 1
  %2078 = lshr i32 %2055, 31
  %2079 = lshr i32 %2060, 31
  %2080 = xor i32 %2079, %2078
  %2081 = xor i32 %2076, %2078
  %2082 = add nuw nsw i32 %2081, %2080
  %2083 = icmp eq i32 %2082, 2
  %2084 = zext i1 %2083 to i8
  store i8 %2084, i8* %48, align 1
  %2085 = icmp ne i8 %2077, 0
  %2086 = xor i1 %2085, %2083
  %.v116 = select i1 %2086, i64 12, i64 189
  %2087 = add i64 %2050, %.v116
  store i64 %2087, i64* %3, align 8
  br i1 %2086, label %block_43e460, label %block_.L_43e511

block_43e460:                                     ; preds = %block_.L_43e454
  %2088 = add i64 %2051, -20
  %2089 = add i64 %2087, 3
  store i64 %2089, i64* %3, align 8
  %2090 = inttoptr i64 %2088 to i32*
  %2091 = load i32, i32* %2090, align 4
  %2092 = zext i32 %2091 to i64
  store i64 %2092, i64* %RAX.i905.phi.trans.insert, align 8
  %2093 = add i64 %2051, -44
  %2094 = add i64 %2087, 6
  store i64 %2094, i64* %3, align 8
  %2095 = inttoptr i64 %2093 to i32*
  store i32 %2091, i32* %2095, align 4
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_43e466

block_.L_43e466:                                  ; preds = %routine_sarl__cl___edx.exit, %block_43e460
  %2096 = phi i64 [ %2401, %routine_sarl__cl___edx.exit ], [ %.pre87, %block_43e460 ]
  %2097 = load i64, i64* %RBP.i, align 8
  %2098 = add i64 %2097, -44
  %2099 = add i64 %2096, 3
  store i64 %2099, i64* %3, align 8
  %2100 = inttoptr i64 %2098 to i32*
  %2101 = load i32, i32* %2100, align 4
  %2102 = zext i32 %2101 to i64
  store i64 %2102, i64* %RAX.i905.phi.trans.insert, align 8
  %2103 = add i64 %2097, -52
  %2104 = add i64 %2096, 6
  store i64 %2104, i64* %3, align 8
  %2105 = inttoptr i64 %2103 to i32*
  %2106 = load i32, i32* %2105, align 4
  %2107 = sub i32 %2101, %2106
  %2108 = icmp ult i32 %2101, %2106
  %2109 = zext i1 %2108 to i8
  store i8 %2109, i8* %24, align 1
  %2110 = and i32 %2107, 255
  %2111 = tail call i32 @llvm.ctpop.i32(i32 %2110)
  %2112 = trunc i32 %2111 to i8
  %2113 = and i8 %2112, 1
  %2114 = xor i8 %2113, 1
  store i8 %2114, i8* %31, align 1
  %2115 = xor i32 %2106, %2101
  %2116 = xor i32 %2115, %2107
  %2117 = lshr i32 %2116, 4
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  store i8 %2119, i8* %36, align 1
  %2120 = icmp eq i32 %2107, 0
  %2121 = zext i1 %2120 to i8
  store i8 %2121, i8* %39, align 1
  %2122 = lshr i32 %2107, 31
  %2123 = trunc i32 %2122 to i8
  store i8 %2123, i8* %42, align 1
  %2124 = lshr i32 %2101, 31
  %2125 = lshr i32 %2106, 31
  %2126 = xor i32 %2125, %2124
  %2127 = xor i32 %2122, %2124
  %2128 = add nuw nsw i32 %2127, %2126
  %2129 = icmp eq i32 %2128, 2
  %2130 = zext i1 %2129 to i8
  store i8 %2130, i8* %48, align 1
  %2131 = icmp ne i8 %2123, 0
  %2132 = xor i1 %2131, %2129
  %.v102 = select i1 %2132, i64 12, i64 152
  %2133 = add i64 %2096, %.v102
  store i64 %2133, i64* %3, align 8
  br i1 %2132, label %block_43e472, label %block_.L_43e4fe

block_43e472:                                     ; preds = %block_.L_43e466
  %2134 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %2134, i64* %RAX.i905.phi.trans.insert, align 8
  %2135 = add i64 %2134, 8
  %2136 = add i64 %2133, 12
  store i64 %2136, i64* %3, align 8
  %2137 = inttoptr i64 %2135 to i64*
  %2138 = load i64, i64* %2137, align 8
  store i64 %2138, i64* %RAX.i905.phi.trans.insert, align 8
  %2139 = add i64 %2097, -40
  %2140 = add i64 %2133, 17
  store i64 %2140, i64* %3, align 8
  %2141 = inttoptr i64 %2139 to i16*
  %2142 = load i16, i16* %2141, align 2
  %2143 = sext i16 %2142 to i64
  store i64 %2143, i64* %RCX.i1093, align 8
  %2144 = shl nsw i64 %2143, 3
  %2145 = add i64 %2144, %2138
  %2146 = add i64 %2133, 21
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2145 to i64*
  %2148 = load i64, i64* %2147, align 8
  store i64 %2148, i64* %RAX.i905.phi.trans.insert, align 8
  %2149 = add i64 %2133, 23
  store i64 %2149, i64* %3, align 8
  %2150 = inttoptr i64 %2148 to i32*
  %2151 = load i32, i32* %2150, align 4
  %2152 = zext i32 %2151 to i64
  store i64 %2152, i64* %RDX.i955, align 8
  %2153 = add i64 %2097, -88
  %2154 = add i64 %2133, 27
  store i64 %2154, i64* %3, align 8
  %2155 = inttoptr i64 %2153 to i64*
  %2156 = load i64, i64* %2155, align 8
  store i64 %2156, i64* %RAX.i905.phi.trans.insert, align 8
  %2157 = add i64 %2156, 4
  store i64 %2157, i64* %RCX.i1093, align 8
  %2158 = icmp ugt i64 %2156, -5
  %2159 = zext i1 %2158 to i8
  store i8 %2159, i8* %24, align 1
  %2160 = trunc i64 %2157 to i32
  %2161 = and i32 %2160, 255
  %2162 = tail call i32 @llvm.ctpop.i32(i32 %2161)
  %2163 = trunc i32 %2162 to i8
  %2164 = and i8 %2163, 1
  %2165 = xor i8 %2164, 1
  store i8 %2165, i8* %31, align 1
  %2166 = xor i64 %2157, %2156
  %2167 = lshr i64 %2166, 4
  %2168 = trunc i64 %2167 to i8
  %2169 = and i8 %2168, 1
  store i8 %2169, i8* %36, align 1
  %2170 = icmp eq i64 %2157, 0
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %39, align 1
  %2172 = lshr i64 %2157, 63
  %2173 = trunc i64 %2172 to i8
  store i8 %2173, i8* %42, align 1
  %2174 = lshr i64 %2156, 63
  %2175 = xor i64 %2172, %2174
  %2176 = add nuw nsw i64 %2175, %2172
  %2177 = icmp eq i64 %2176, 2
  %2178 = zext i1 %2177 to i8
  store i8 %2178, i8* %48, align 1
  %2179 = add i64 %2133, 38
  store i64 %2179, i64* %3, align 8
  store i64 %2157, i64* %2155, align 8
  %2180 = load i64, i64* %RDX.i955, align 8
  %2181 = load i32*, i32** %1668, align 8
  %2182 = load i64, i64* %3, align 8
  %2183 = add i64 %2182, 3
  store i64 %2183, i64* %3, align 8
  %2184 = load i32, i32* %2181, align 4
  %2185 = shl i64 %2180, 32
  %2186 = ashr exact i64 %2185, 32
  %2187 = sext i32 %2184 to i64
  %2188 = mul nsw i64 %2187, %2186
  %2189 = trunc i64 %2188 to i32
  %2190 = load i32, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*), align 8
  %2191 = add i32 %2190, %2189
  %2192 = zext i32 %2191 to i64
  store i64 %2192, i64* %RDX.i955, align 8
  %2193 = icmp ult i32 %2191, %2189
  %2194 = icmp ult i32 %2191, %2190
  %2195 = or i1 %2193, %2194
  %2196 = zext i1 %2195 to i8
  store i8 %2196, i8* %24, align 1
  %2197 = and i32 %2191, 255
  %2198 = tail call i32 @llvm.ctpop.i32(i32 %2197)
  %2199 = trunc i32 %2198 to i8
  %2200 = and i8 %2199, 1
  %2201 = xor i8 %2200, 1
  store i8 %2201, i8* %31, align 1
  %2202 = xor i32 %2190, %2189
  %2203 = xor i32 %2202, %2191
  %2204 = lshr i32 %2203, 4
  %2205 = trunc i32 %2204 to i8
  %2206 = and i8 %2205, 1
  store i8 %2206, i8* %36, align 1
  %2207 = icmp eq i32 %2191, 0
  %2208 = zext i1 %2207 to i8
  store i8 %2208, i8* %39, align 1
  %2209 = lshr i32 %2191, 31
  %2210 = trunc i32 %2209 to i8
  store i8 %2210, i8* %42, align 1
  %2211 = lshr i32 %2189, 31
  %2212 = lshr i32 %2190, 31
  %2213 = xor i32 %2209, %2211
  %2214 = xor i32 %2209, %2212
  %2215 = add nuw nsw i32 %2213, %2214
  %2216 = icmp eq i32 %2215, 2
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %48, align 1
  %2218 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*), align 8
  %2219 = zext i32 %2218 to i64
  store i64 %2219, i64* %RCX.i1093, align 8
  %2220 = add i64 %2182, 19
  store i64 %2220, i64* %3, align 8
  %2221 = trunc i32 %2218 to i5
  switch i5 %2221, label %2225 [
    i5 0, label %routine_sarl__cl___edx.exit
    i5 1, label %2222
  ]

; <label>:2222:                                   ; preds = %block_43e472
  %2223 = shl nuw i64 %2192, 32
  %2224 = ashr i64 %2223, 33
  br label %2232

; <label>:2225:                                   ; preds = %block_43e472
  %2226 = and i32 %2218, 31
  %2227 = zext i32 %2226 to i64
  %2228 = add nsw i64 %2227, -1
  %2229 = sext i32 %2191 to i64
  %2230 = ashr i64 %2229, %2228
  %2231 = lshr i64 %2230, 1
  br label %2232

; <label>:2232:                                   ; preds = %2225, %2222
  %2233 = phi i64 [ %2231, %2225 ], [ %2224, %2222 ]
  %2234 = phi i64 [ %2230, %2225 ], [ %2192, %2222 ]
  %2235 = trunc i64 %2234 to i8
  %2236 = and i8 %2235, 1
  %2237 = trunc i64 %2233 to i32
  %2238 = and i64 %2233, 4294967295
  store i64 %2238, i64* %RDX.i955, align 8
  store i8 %2236, i8* %24, align 1
  %2239 = and i32 %2237, 255
  %2240 = tail call i32 @llvm.ctpop.i32(i32 %2239)
  %2241 = trunc i32 %2240 to i8
  %2242 = and i8 %2241, 1
  %2243 = xor i8 %2242, 1
  store i8 %2243, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %2244 = icmp eq i32 %2237, 0
  %2245 = zext i1 %2244 to i8
  store i8 %2245, i8* %39, align 1
  %2246 = lshr i32 %2237, 31
  %2247 = trunc i32 %2246 to i8
  store i8 %2247, i8* %42, align 1
  store i8 0, i8* %48, align 1
  br label %routine_sarl__cl___edx.exit

routine_sarl__cl___edx.exit:                      ; preds = %2232, %block_43e472
  %2248 = phi i64 [ %2238, %2232 ], [ %2192, %block_43e472 ]
  %2249 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %2249, i64* %RAX.i905.phi.trans.insert, align 8
  %2250 = add i64 %2249, 8
  %2251 = add i64 %2182, 31
  store i64 %2251, i64* %3, align 8
  %2252 = inttoptr i64 %2250 to i64*
  %2253 = load i64, i64* %2252, align 8
  store i64 %2253, i64* %RAX.i905.phi.trans.insert, align 8
  %2254 = load i64, i64* %RBP.i, align 8
  %2255 = add i64 %2254, -40
  %2256 = add i64 %2182, 36
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2255 to i16*
  %2258 = load i16, i16* %2257, align 2
  %2259 = sext i16 %2258 to i64
  store i64 %2259, i64* %RSI.i334, align 8
  %2260 = shl nsw i64 %2259, 3
  %2261 = add i64 %2260, %2253
  %2262 = add i64 %2182, 40
  store i64 %2262, i64* %3, align 8
  %2263 = inttoptr i64 %2261 to i64*
  %2264 = load i64, i64* %2263, align 8
  store i64 %2264, i64* %RAX.i905.phi.trans.insert, align 8
  %2265 = add i64 %2182, 42
  store i64 %2265, i64* %3, align 8
  %2266 = trunc i64 %2248 to i32
  %2267 = inttoptr i64 %2264 to i32*
  %2268 = load i32, i32* %2267, align 4
  %2269 = add i32 %2268, %2266
  %2270 = zext i32 %2269 to i64
  store i64 %2270, i64* %RDX.i955, align 8
  %2271 = icmp ult i32 %2269, %2266
  %2272 = icmp ult i32 %2269, %2268
  %2273 = or i1 %2271, %2272
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %24, align 1
  %2275 = and i32 %2269, 255
  %2276 = tail call i32 @llvm.ctpop.i32(i32 %2275)
  %2277 = trunc i32 %2276 to i8
  %2278 = and i8 %2277, 1
  %2279 = xor i8 %2278, 1
  store i8 %2279, i8* %31, align 1
  %2280 = xor i32 %2268, %2266
  %2281 = xor i32 %2280, %2269
  %2282 = lshr i32 %2281, 4
  %2283 = trunc i32 %2282 to i8
  %2284 = and i8 %2283, 1
  store i8 %2284, i8* %36, align 1
  %2285 = icmp eq i32 %2269, 0
  %2286 = zext i1 %2285 to i8
  store i8 %2286, i8* %39, align 1
  %2287 = lshr i32 %2269, 31
  %2288 = trunc i32 %2287 to i8
  store i8 %2288, i8* %42, align 1
  %2289 = lshr i32 %2266, 31
  %2290 = lshr i32 %2268, 31
  %2291 = xor i32 %2287, %2289
  %2292 = xor i32 %2287, %2290
  %2293 = add nuw nsw i32 %2291, %2292
  %2294 = icmp eq i32 %2293, 2
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %48, align 1
  store i64 %2270, i64* %RDI.i, align 8
  %2296 = add i64 %2182, -11752
  %2297 = add i64 %2182, 49
  %2298 = load i64, i64* %6, align 8
  %2299 = add i64 %2298, -8
  %2300 = inttoptr i64 %2299 to i64*
  store i64 %2297, i64* %2300, align 8
  store i64 %2299, i64* %6, align 8
  store i64 %2296, i64* %3, align 8
  %call2_43e4c4 = tail call %struct.Memory* @sub_43b6b0.clip1a(%struct.State* nonnull %0, i64 %2296, %struct.Memory* %MEMORY.10)
  %2301 = load i16, i16* %AX.i1122, align 2
  %2302 = load i64, i64* %3, align 8
  store i16 %2301, i16* %R8W.i324, align 2
  %2303 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2304 = add i64 %2303, 12600
  store i64 %2304, i64* %RSI.i334, align 8
  %2305 = icmp ugt i64 %2303, -12601
  %2306 = zext i1 %2305 to i8
  store i8 %2306, i8* %24, align 1
  %2307 = trunc i64 %2304 to i32
  %2308 = and i32 %2307, 255
  %2309 = tail call i32 @llvm.ctpop.i32(i32 %2308)
  %2310 = trunc i32 %2309 to i8
  %2311 = and i8 %2310, 1
  %2312 = xor i8 %2311, 1
  store i8 %2312, i8* %31, align 1
  %2313 = xor i64 %2303, 16
  %2314 = xor i64 %2313, %2304
  %2315 = lshr i64 %2314, 4
  %2316 = trunc i64 %2315 to i8
  %2317 = and i8 %2316, 1
  store i8 %2317, i8* %36, align 1
  %2318 = icmp eq i64 %2304, 0
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %39, align 1
  %2320 = lshr i64 %2304, 63
  %2321 = trunc i64 %2320 to i8
  store i8 %2321, i8* %42, align 1
  %2322 = lshr i64 %2303, 63
  %2323 = xor i64 %2320, %2322
  %2324 = add nuw nsw i64 %2323, %2320
  %2325 = icmp eq i64 %2324, 2
  %2326 = zext i1 %2325 to i8
  store i8 %2326, i8* %48, align 1
  %2327 = load i64, i64* %RBP.i, align 8
  %2328 = add i64 %2327, -44
  %2329 = add i64 %2302, 23
  store i64 %2329, i64* %3, align 8
  %2330 = inttoptr i64 %2328 to i32*
  %2331 = load i32, i32* %2330, align 4
  %2332 = sext i32 %2331 to i64
  %2333 = shl nsw i64 %2332, 5
  store i64 %2333, i64* %R9.i317, align 8
  %2334 = add i64 %2333, %2304
  store i64 %2334, i64* %RSI.i334, align 8
  %2335 = icmp ult i64 %2334, %2304
  %2336 = icmp ult i64 %2334, %2333
  %2337 = or i1 %2335, %2336
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %24, align 1
  %2339 = trunc i64 %2334 to i32
  %2340 = and i32 %2339, 255
  %2341 = tail call i32 @llvm.ctpop.i32(i32 %2340)
  %2342 = trunc i32 %2341 to i8
  %2343 = and i8 %2342, 1
  %2344 = xor i8 %2343, 1
  store i8 %2344, i8* %31, align 1
  %2345 = xor i64 %2304, %2334
  %2346 = lshr i64 %2345, 4
  %2347 = trunc i64 %2346 to i8
  %2348 = and i8 %2347, 1
  store i8 %2348, i8* %36, align 1
  %2349 = icmp eq i64 %2334, 0
  %2350 = zext i1 %2349 to i8
  store i8 %2350, i8* %39, align 1
  %2351 = lshr i64 %2334, 63
  %2352 = trunc i64 %2351 to i8
  store i8 %2352, i8* %42, align 1
  %2353 = lshr i64 %2332, 58
  %2354 = and i64 %2353, 1
  %2355 = xor i64 %2351, %2320
  %2356 = xor i64 %2351, %2354
  %2357 = add nuw nsw i64 %2355, %2356
  %2358 = icmp eq i64 %2357, 2
  %2359 = zext i1 %2358 to i8
  store i8 %2359, i8* %48, align 1
  %2360 = add i64 %2327, -48
  %2361 = add i64 %2302, 34
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2360 to i32*
  %2363 = load i32, i32* %2362, align 4
  %2364 = sext i32 %2363 to i64
  store i64 %2364, i64* %R9.i317, align 8
  %2365 = shl nsw i64 %2364, 1
  %2366 = add i64 %2365, %2334
  %2367 = load i16, i16* %R8W.i324, align 2
  %2368 = add i64 %2302, 39
  store i64 %2368, i64* %3, align 8
  %2369 = inttoptr i64 %2366 to i16*
  store i16 %2367, i16* %2369, align 2
  %2370 = load i64, i64* %RBP.i, align 8
  %2371 = add i64 %2370, -44
  %2372 = load i64, i64* %3, align 8
  %2373 = add i64 %2372, 3
  store i64 %2373, i64* %3, align 8
  %2374 = inttoptr i64 %2371 to i32*
  %2375 = load i32, i32* %2374, align 4
  %2376 = add i32 %2375, 1
  %2377 = zext i32 %2376 to i64
  store i64 %2377, i64* %RAX.i905.phi.trans.insert, align 8
  %2378 = icmp eq i32 %2375, -1
  %2379 = icmp eq i32 %2376, 0
  %2380 = or i1 %2378, %2379
  %2381 = zext i1 %2380 to i8
  store i8 %2381, i8* %24, align 1
  %2382 = and i32 %2376, 255
  %2383 = tail call i32 @llvm.ctpop.i32(i32 %2382)
  %2384 = trunc i32 %2383 to i8
  %2385 = and i8 %2384, 1
  %2386 = xor i8 %2385, 1
  store i8 %2386, i8* %31, align 1
  %2387 = xor i32 %2376, %2375
  %2388 = lshr i32 %2387, 4
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  store i8 %2390, i8* %36, align 1
  %2391 = zext i1 %2379 to i8
  store i8 %2391, i8* %39, align 1
  %2392 = lshr i32 %2376, 31
  %2393 = trunc i32 %2392 to i8
  store i8 %2393, i8* %42, align 1
  %2394 = lshr i32 %2375, 31
  %2395 = xor i32 %2392, %2394
  %2396 = add nuw nsw i32 %2395, %2392
  %2397 = icmp eq i32 %2396, 2
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %48, align 1
  %2399 = add i64 %2372, 9
  store i64 %2399, i64* %3, align 8
  store i32 %2376, i32* %2374, align 4
  %2400 = load i64, i64* %3, align 8
  %2401 = add i64 %2400, -147
  store i64 %2401, i64* %3, align 8
  br label %block_.L_43e466

block_.L_43e4fe:                                  ; preds = %block_.L_43e466
  %2402 = add i64 %2097, -48
  %2403 = add i64 %2133, 8
  store i64 %2403, i64* %3, align 8
  %2404 = inttoptr i64 %2402 to i32*
  %2405 = load i32, i32* %2404, align 4
  %2406 = add i32 %2405, 1
  %2407 = zext i32 %2406 to i64
  store i64 %2407, i64* %RAX.i905.phi.trans.insert, align 8
  %2408 = icmp eq i32 %2405, -1
  %2409 = icmp eq i32 %2406, 0
  %2410 = or i1 %2408, %2409
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %24, align 1
  %2412 = and i32 %2406, 255
  %2413 = tail call i32 @llvm.ctpop.i32(i32 %2412)
  %2414 = trunc i32 %2413 to i8
  %2415 = and i8 %2414, 1
  %2416 = xor i8 %2415, 1
  store i8 %2416, i8* %31, align 1
  %2417 = xor i32 %2406, %2405
  %2418 = lshr i32 %2417, 4
  %2419 = trunc i32 %2418 to i8
  %2420 = and i8 %2419, 1
  store i8 %2420, i8* %36, align 1
  %2421 = zext i1 %2409 to i8
  store i8 %2421, i8* %39, align 1
  %2422 = lshr i32 %2406, 31
  %2423 = trunc i32 %2422 to i8
  store i8 %2423, i8* %42, align 1
  %2424 = lshr i32 %2405, 31
  %2425 = xor i32 %2422, %2424
  %2426 = add nuw nsw i32 %2425, %2422
  %2427 = icmp eq i32 %2426, 2
  %2428 = zext i1 %2427 to i8
  store i8 %2428, i8* %48, align 1
  %2429 = add i64 %2133, 14
  store i64 %2429, i64* %3, align 8
  store i32 %2406, i32* %2404, align 4
  %2430 = load i64, i64* %3, align 8
  %2431 = add i64 %2430, -184
  store i64 %2431, i64* %3, align 8
  br label %block_.L_43e454

block_.L_43e511:                                  ; preds = %block_.L_43e454
  %2432 = add i64 %2087, 5
  store i64 %2432, i64* %3, align 8
  br label %block_.L_43e516

block_.L_43e516:                                  ; preds = %block_.L_43e511, %block_.L_43e449
  %storemerge38 = phi i64 [ %2049, %block_.L_43e449 ], [ %2432, %block_.L_43e511 ]
  %2433 = add i64 %storemerge38, 5
  store i64 %2433, i64* %3, align 8
  br label %block_.L_43e51b

block_.L_43e51b:                                  ; preds = %block_.L_43e516, %block_.L_43e379
  %storemerge35 = phi i64 [ %1647, %block_.L_43e379 ], [ %2433, %block_.L_43e516 ]
  %2434 = add i64 %storemerge35, 460
  br label %block_.L_43e6e7

block_.L_43e520:                                  ; preds = %block_.L_43e23e
  %.v104 = select i1 %1130, i64 10, i64 181
  %2435 = add i64 %1113, %.v104
  store i64 %2435, i64* %3, align 8
  br i1 %1130, label %block_43e52a, label %block_.L_43e5d5

block_43e52a:                                     ; preds = %block_.L_43e520
  %2436 = add i64 %1099, -24
  %2437 = add i64 %2435, 3
  store i64 %2437, i64* %3, align 8
  %2438 = inttoptr i64 %2436 to i32*
  %2439 = load i32, i32* %2438, align 4
  %2440 = zext i32 %2439 to i64
  store i64 %2440, i64* %RAX.i905.phi.trans.insert, align 8
  %2441 = add i64 %1099, -48
  %2442 = add i64 %2435, 6
  store i64 %2442, i64* %3, align 8
  %2443 = inttoptr i64 %2441 to i32*
  store i32 %2439, i32* %2443, align 4
  %RSI.i240 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %2444 = bitcast %union.anon* %77 to i32**
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %DI.i208 = bitcast %union.anon* %58 to i16*
  %R8.i202 = getelementptr inbounds %union.anon, %union.anon* %84, i64 0, i32 0
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_43e530

block_.L_43e530:                                  ; preds = %block_.L_43e5bd, %block_43e52a
  %2446 = phi i64 [ %.pre88, %block_43e52a ], [ %2784, %block_.L_43e5bd ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.10, %block_43e52a ], [ %MEMORY.20, %block_.L_43e5bd ]
  %2447 = load i64, i64* %RBP.i, align 8
  %2448 = add i64 %2447, -48
  %2449 = add i64 %2446, 3
  store i64 %2449, i64* %3, align 8
  %2450 = inttoptr i64 %2448 to i32*
  %2451 = load i32, i32* %2450, align 4
  %2452 = zext i32 %2451 to i64
  store i64 %2452, i64* %RAX.i905.phi.trans.insert, align 8
  %2453 = add i64 %2447, -56
  %2454 = add i64 %2446, 6
  store i64 %2454, i64* %3, align 8
  %2455 = inttoptr i64 %2453 to i32*
  %2456 = load i32, i32* %2455, align 4
  %2457 = sub i32 %2451, %2456
  %2458 = icmp ult i32 %2451, %2456
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %24, align 1
  %2460 = and i32 %2457, 255
  %2461 = tail call i32 @llvm.ctpop.i32(i32 %2460)
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  %2464 = xor i8 %2463, 1
  store i8 %2464, i8* %31, align 1
  %2465 = xor i32 %2456, %2451
  %2466 = xor i32 %2465, %2457
  %2467 = lshr i32 %2466, 4
  %2468 = trunc i32 %2467 to i8
  %2469 = and i8 %2468, 1
  store i8 %2469, i8* %36, align 1
  %2470 = icmp eq i32 %2457, 0
  %2471 = zext i1 %2470 to i8
  store i8 %2471, i8* %39, align 1
  %2472 = lshr i32 %2457, 31
  %2473 = trunc i32 %2472 to i8
  store i8 %2473, i8* %42, align 1
  %2474 = lshr i32 %2451, 31
  %2475 = lshr i32 %2456, 31
  %2476 = xor i32 %2475, %2474
  %2477 = xor i32 %2472, %2474
  %2478 = add nuw nsw i32 %2477, %2476
  %2479 = icmp eq i32 %2478, 2
  %2480 = zext i1 %2479 to i8
  store i8 %2480, i8* %48, align 1
  %2481 = icmp ne i8 %2473, 0
  %2482 = xor i1 %2481, %2479
  %.v121 = select i1 %2482, i64 12, i64 160
  %2483 = add i64 %2446, %.v121
  store i64 %2483, i64* %3, align 8
  br i1 %2482, label %block_43e53c, label %block_.L_43e5d0

block_43e53c:                                     ; preds = %block_.L_43e530
  %2484 = add i64 %2447, -20
  %2485 = add i64 %2483, 3
  store i64 %2485, i64* %3, align 8
  %2486 = inttoptr i64 %2484 to i32*
  %2487 = load i32, i32* %2486, align 4
  %2488 = zext i32 %2487 to i64
  store i64 %2488, i64* %RAX.i905.phi.trans.insert, align 8
  %2489 = add i64 %2447, -44
  %2490 = add i64 %2483, 6
  store i64 %2490, i64* %3, align 8
  %2491 = inttoptr i64 %2489 to i32*
  store i32 %2487, i32* %2491, align 4
  %.pre89 = load i64, i64* %3, align 8
  br label %block_.L_43e542

block_.L_43e542:                                  ; preds = %routine_idivl__esi.exit, %block_43e53c
  %2492 = phi i64 [ %.pre89, %block_43e53c ], [ %2754, %routine_idivl__esi.exit ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.19, %block_43e53c ], [ %2655, %routine_idivl__esi.exit ]
  %2493 = load i64, i64* %RBP.i, align 8
  %2494 = add i64 %2493, -44
  %2495 = add i64 %2492, 3
  store i64 %2495, i64* %3, align 8
  %2496 = inttoptr i64 %2494 to i32*
  %2497 = load i32, i32* %2496, align 4
  %2498 = zext i32 %2497 to i64
  store i64 %2498, i64* %RAX.i905.phi.trans.insert, align 8
  %2499 = add i64 %2493, -52
  %2500 = add i64 %2492, 6
  store i64 %2500, i64* %3, align 8
  %2501 = inttoptr i64 %2499 to i32*
  %2502 = load i32, i32* %2501, align 4
  %2503 = sub i32 %2497, %2502
  %2504 = icmp ult i32 %2497, %2502
  %2505 = zext i1 %2504 to i8
  store i8 %2505, i8* %24, align 1
  %2506 = and i32 %2503, 255
  %2507 = tail call i32 @llvm.ctpop.i32(i32 %2506)
  %2508 = trunc i32 %2507 to i8
  %2509 = and i8 %2508, 1
  %2510 = xor i8 %2509, 1
  store i8 %2510, i8* %31, align 1
  %2511 = xor i32 %2502, %2497
  %2512 = xor i32 %2511, %2503
  %2513 = lshr i32 %2512, 4
  %2514 = trunc i32 %2513 to i8
  %2515 = and i8 %2514, 1
  store i8 %2515, i8* %36, align 1
  %2516 = icmp eq i32 %2503, 0
  %2517 = zext i1 %2516 to i8
  store i8 %2517, i8* %39, align 1
  %2518 = lshr i32 %2503, 31
  %2519 = trunc i32 %2518 to i8
  store i8 %2519, i8* %42, align 1
  %2520 = lshr i32 %2497, 31
  %2521 = lshr i32 %2502, 31
  %2522 = xor i32 %2521, %2520
  %2523 = xor i32 %2518, %2520
  %2524 = add nuw nsw i32 %2523, %2522
  %2525 = icmp eq i32 %2524, 2
  %2526 = zext i1 %2525 to i8
  store i8 %2526, i8* %48, align 1
  %2527 = icmp ne i8 %2519, 0
  %2528 = xor i1 %2527, %2525
  %.v122 = select i1 %2528, i64 12, i64 123
  %2529 = add i64 %2492, %.v122
  %2530 = add i64 %2529, 5
  store i64 %2530, i64* %3, align 8
  br i1 %2528, label %block_43e54e, label %block_.L_43e5bd

block_43e54e:                                     ; preds = %block_.L_43e542
  store i64 2, i64* %RAX.i905.phi.trans.insert, align 8
  %2531 = add i64 %2493, -80
  %2532 = add i64 %2529, 9
  store i64 %2532, i64* %3, align 8
  %2533 = inttoptr i64 %2531 to i64*
  %2534 = load i64, i64* %2533, align 8
  store i64 %2534, i64* %RCX.i1093, align 8
  %2535 = add i64 %2534, 4
  store i64 %2535, i64* %RDX.i955, align 8
  %2536 = icmp ugt i64 %2534, -5
  %2537 = zext i1 %2536 to i8
  store i8 %2537, i8* %24, align 1
  %2538 = trunc i64 %2535 to i32
  %2539 = and i32 %2538, 255
  %2540 = tail call i32 @llvm.ctpop.i32(i32 %2539)
  %2541 = trunc i32 %2540 to i8
  %2542 = and i8 %2541, 1
  %2543 = xor i8 %2542, 1
  store i8 %2543, i8* %31, align 1
  %2544 = xor i64 %2535, %2534
  %2545 = lshr i64 %2544, 4
  %2546 = trunc i64 %2545 to i8
  %2547 = and i8 %2546, 1
  store i8 %2547, i8* %36, align 1
  %2548 = icmp eq i64 %2535, 0
  %2549 = zext i1 %2548 to i8
  store i8 %2549, i8* %39, align 1
  %2550 = lshr i64 %2535, 63
  %2551 = trunc i64 %2550 to i8
  store i8 %2551, i8* %42, align 1
  %2552 = lshr i64 %2534, 63
  %2553 = xor i64 %2550, %2552
  %2554 = add nuw nsw i64 %2553, %2550
  %2555 = icmp eq i64 %2554, 2
  %2556 = zext i1 %2555 to i8
  store i8 %2556, i8* %48, align 1
  %2557 = add i64 %2529, 20
  store i64 %2557, i64* %3, align 8
  store i64 %2535, i64* %2533, align 8
  %2558 = load i32*, i32** %2444, align 8
  %2559 = load i64, i64* %3, align 8
  %2560 = add i64 %2559, 2
  store i64 %2560, i64* %3, align 8
  %2561 = load i32, i32* %2558, align 4
  %2562 = zext i32 %2561 to i64
  store i64 %2562, i64* %RSI.i240, align 8
  %2563 = load i64, i64* %RBP.i, align 8
  %2564 = add i64 %2563, -88
  %2565 = add i64 %2559, 6
  store i64 %2565, i64* %3, align 8
  %2566 = inttoptr i64 %2564 to i64*
  %2567 = load i64, i64* %2566, align 8
  store i64 %2567, i64* %RCX.i1093, align 8
  %2568 = add i64 %2567, 4
  store i64 %2568, i64* %RDX.i955, align 8
  %2569 = icmp ugt i64 %2567, -5
  %2570 = zext i1 %2569 to i8
  store i8 %2570, i8* %24, align 1
  %2571 = trunc i64 %2568 to i32
  %2572 = and i32 %2571, 255
  %2573 = tail call i32 @llvm.ctpop.i32(i32 %2572)
  %2574 = trunc i32 %2573 to i8
  %2575 = and i8 %2574, 1
  %2576 = xor i8 %2575, 1
  store i8 %2576, i8* %31, align 1
  %2577 = xor i64 %2568, %2567
  %2578 = lshr i64 %2577, 4
  %2579 = trunc i64 %2578 to i8
  %2580 = and i8 %2579, 1
  store i8 %2580, i8* %36, align 1
  %2581 = icmp eq i64 %2568, 0
  %2582 = zext i1 %2581 to i8
  store i8 %2582, i8* %39, align 1
  %2583 = lshr i64 %2568, 63
  %2584 = trunc i64 %2583 to i8
  store i8 %2584, i8* %42, align 1
  %2585 = lshr i64 %2567, 63
  %2586 = xor i64 %2583, %2585
  %2587 = add nuw nsw i64 %2586, %2583
  %2588 = icmp eq i64 %2587, 2
  %2589 = zext i1 %2588 to i8
  store i8 %2589, i8* %48, align 1
  %2590 = add i64 %2559, 17
  store i64 %2590, i64* %3, align 8
  store i64 %2568, i64* %2566, align 8
  %2591 = load i64, i64* %RSI.i240, align 8
  %2592 = load i32*, i32** %2444, align 8
  %2593 = load i64, i64* %3, align 8
  %2594 = add i64 %2593, 2
  store i64 %2594, i64* %3, align 8
  %2595 = trunc i64 %2591 to i32
  %2596 = load i32, i32* %2592, align 4
  %2597 = add i32 %2596, %2595
  %2598 = lshr i32 %2597, 31
  %2599 = add i32 %2597, 1
  %2600 = zext i32 %2599 to i64
  store i64 %2600, i64* %RSI.i240, align 8
  %2601 = icmp eq i32 %2597, -1
  %2602 = icmp eq i32 %2599, 0
  %2603 = or i1 %2601, %2602
  %2604 = zext i1 %2603 to i8
  store i8 %2604, i8* %24, align 1
  %2605 = and i32 %2599, 255
  %2606 = tail call i32 @llvm.ctpop.i32(i32 %2605)
  %2607 = trunc i32 %2606 to i8
  %2608 = and i8 %2607, 1
  %2609 = xor i8 %2608, 1
  store i8 %2609, i8* %31, align 1
  %2610 = xor i32 %2599, %2597
  %2611 = lshr i32 %2610, 4
  %2612 = trunc i32 %2611 to i8
  %2613 = and i8 %2612, 1
  store i8 %2613, i8* %36, align 1
  %2614 = zext i1 %2602 to i8
  store i8 %2614, i8* %39, align 1
  %2615 = lshr i32 %2599, 31
  %2616 = trunc i32 %2615 to i8
  store i8 %2616, i8* %42, align 1
  %2617 = xor i32 %2615, %2598
  %2618 = add nuw nsw i32 %2617, %2615
  %2619 = icmp eq i32 %2618, 2
  %2620 = zext i1 %2619 to i8
  store i8 %2620, i8* %48, align 1
  %2621 = load i64, i64* %RBP.i, align 8
  %2622 = add i64 %2621, -140
  %2623 = load i32, i32* %EAX.i894.pre-phi, align 4
  %2624 = add i64 %2593, 11
  store i64 %2624, i64* %3, align 8
  %2625 = inttoptr i64 %2622 to i32*
  store i32 %2623, i32* %2625, align 4
  %2626 = load i32, i32* %ESI.i1110, align 4
  %2627 = zext i32 %2626 to i64
  %2628 = load i64, i64* %3, align 8
  store i64 %2627, i64* %RAX.i905.phi.trans.insert, align 8
  %2629 = sext i32 %2626 to i64
  %2630 = lshr i64 %2629, 32
  store i64 %2630, i64* %2445, align 8
  %2631 = load i64, i64* %RBP.i, align 8
  %2632 = add i64 %2631, -140
  %2633 = add i64 %2628, 9
  store i64 %2633, i64* %3, align 8
  %2634 = inttoptr i64 %2632 to i32*
  %2635 = load i32, i32* %2634, align 4
  %2636 = zext i32 %2635 to i64
  store i64 %2636, i64* %RSI.i240, align 8
  %2637 = add i64 %2628, 11
  store i64 %2637, i64* %3, align 8
  %2638 = sext i32 %2635 to i64
  %2639 = shl nuw i64 %2630, 32
  %2640 = or i64 %2639, %2627
  %2641 = sdiv i64 %2640, %2638
  %2642 = shl i64 %2641, 32
  %2643 = ashr exact i64 %2642, 32
  %2644 = icmp eq i64 %2641, %2643
  br i1 %2644, label %2647, label %2645

; <label>:2645:                                   ; preds = %block_43e54e
  %2646 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2637, %struct.Memory* %MEMORY.20)
  %.pre90 = load i16, i16* %AX.i1122, align 2
  %.pre91 = load i64, i64* %3, align 8
  %.pre92 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:2647:                                   ; preds = %block_43e54e
  %2648 = srem i64 %2640, %2638
  %2649 = and i64 %2641, 4294967295
  store i64 %2649, i64* %RAX.i905.phi.trans.insert, align 8
  %2650 = and i64 %2648, 4294967295
  store i64 %2650, i64* %RDX.i955, align 8
  store i8 0, i8* %24, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %36, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %2651 = trunc i64 %2641 to i16
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %2647, %2645
  %2652 = phi i64 [ %.pre92, %2645 ], [ %2631, %2647 ]
  %2653 = phi i64 [ %.pre91, %2645 ], [ %2637, %2647 ]
  %2654 = phi i16 [ %.pre90, %2645 ], [ %2651, %2647 ]
  %2655 = phi %struct.Memory* [ %2646, %2645 ], [ %MEMORY.20, %2647 ]
  store i16 %2654, i16* %DI.i208, align 2
  %2656 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2657 = add i64 %2656, 12600
  store i64 %2657, i64* %RCX.i1093, align 8
  %2658 = icmp ugt i64 %2656, -12601
  %2659 = zext i1 %2658 to i8
  store i8 %2659, i8* %24, align 1
  %2660 = trunc i64 %2657 to i32
  %2661 = and i32 %2660, 255
  %2662 = tail call i32 @llvm.ctpop.i32(i32 %2661)
  %2663 = trunc i32 %2662 to i8
  %2664 = and i8 %2663, 1
  %2665 = xor i8 %2664, 1
  store i8 %2665, i8* %31, align 1
  %2666 = xor i64 %2656, 16
  %2667 = xor i64 %2666, %2657
  %2668 = lshr i64 %2667, 4
  %2669 = trunc i64 %2668 to i8
  %2670 = and i8 %2669, 1
  store i8 %2670, i8* %36, align 1
  %2671 = icmp eq i64 %2657, 0
  %2672 = zext i1 %2671 to i8
  store i8 %2672, i8* %39, align 1
  %2673 = lshr i64 %2657, 63
  %2674 = trunc i64 %2673 to i8
  store i8 %2674, i8* %42, align 1
  %2675 = lshr i64 %2656, 63
  %2676 = xor i64 %2673, %2675
  %2677 = add nuw nsw i64 %2676, %2673
  %2678 = icmp eq i64 %2677, 2
  %2679 = zext i1 %2678 to i8
  store i8 %2679, i8* %48, align 1
  %2680 = add i64 %2652, -44
  %2681 = add i64 %2653, 22
  store i64 %2681, i64* %3, align 8
  %2682 = inttoptr i64 %2680 to i32*
  %2683 = load i32, i32* %2682, align 4
  %2684 = sext i32 %2683 to i64
  %2685 = shl nsw i64 %2684, 5
  store i64 %2685, i64* %R8.i202, align 8
  %2686 = add i64 %2685, %2657
  store i64 %2686, i64* %RCX.i1093, align 8
  %2687 = icmp ult i64 %2686, %2657
  %2688 = icmp ult i64 %2686, %2685
  %2689 = or i1 %2687, %2688
  %2690 = zext i1 %2689 to i8
  store i8 %2690, i8* %24, align 1
  %2691 = trunc i64 %2686 to i32
  %2692 = and i32 %2691, 255
  %2693 = tail call i32 @llvm.ctpop.i32(i32 %2692)
  %2694 = trunc i32 %2693 to i8
  %2695 = and i8 %2694, 1
  %2696 = xor i8 %2695, 1
  store i8 %2696, i8* %31, align 1
  %2697 = xor i64 %2657, %2686
  %2698 = lshr i64 %2697, 4
  %2699 = trunc i64 %2698 to i8
  %2700 = and i8 %2699, 1
  store i8 %2700, i8* %36, align 1
  %2701 = icmp eq i64 %2686, 0
  %2702 = zext i1 %2701 to i8
  store i8 %2702, i8* %39, align 1
  %2703 = lshr i64 %2686, 63
  %2704 = trunc i64 %2703 to i8
  store i8 %2704, i8* %42, align 1
  %2705 = lshr i64 %2684, 58
  %2706 = and i64 %2705, 1
  %2707 = xor i64 %2703, %2673
  %2708 = xor i64 %2703, %2706
  %2709 = add nuw nsw i64 %2707, %2708
  %2710 = icmp eq i64 %2709, 2
  %2711 = zext i1 %2710 to i8
  store i8 %2711, i8* %48, align 1
  %2712 = load i64, i64* %RBP.i, align 8
  %2713 = add i64 %2712, -48
  %2714 = add i64 %2653, 33
  store i64 %2714, i64* %3, align 8
  %2715 = inttoptr i64 %2713 to i32*
  %2716 = load i32, i32* %2715, align 4
  %2717 = sext i32 %2716 to i64
  store i64 %2717, i64* %R8.i202, align 8
  %2718 = shl nsw i64 %2717, 1
  %2719 = add i64 %2718, %2686
  %2720 = load i16, i16* %DI.i208, align 2
  %2721 = add i64 %2653, 38
  store i64 %2721, i64* %3, align 8
  %2722 = inttoptr i64 %2719 to i16*
  store i16 %2720, i16* %2722, align 2
  %2723 = load i64, i64* %RBP.i, align 8
  %2724 = add i64 %2723, -44
  %2725 = load i64, i64* %3, align 8
  %2726 = add i64 %2725, 3
  store i64 %2726, i64* %3, align 8
  %2727 = inttoptr i64 %2724 to i32*
  %2728 = load i32, i32* %2727, align 4
  %2729 = add i32 %2728, 1
  %2730 = zext i32 %2729 to i64
  store i64 %2730, i64* %RAX.i905.phi.trans.insert, align 8
  %2731 = icmp eq i32 %2728, -1
  %2732 = icmp eq i32 %2729, 0
  %2733 = or i1 %2731, %2732
  %2734 = zext i1 %2733 to i8
  store i8 %2734, i8* %24, align 1
  %2735 = and i32 %2729, 255
  %2736 = tail call i32 @llvm.ctpop.i32(i32 %2735)
  %2737 = trunc i32 %2736 to i8
  %2738 = and i8 %2737, 1
  %2739 = xor i8 %2738, 1
  store i8 %2739, i8* %31, align 1
  %2740 = xor i32 %2729, %2728
  %2741 = lshr i32 %2740, 4
  %2742 = trunc i32 %2741 to i8
  %2743 = and i8 %2742, 1
  store i8 %2743, i8* %36, align 1
  %2744 = zext i1 %2732 to i8
  store i8 %2744, i8* %39, align 1
  %2745 = lshr i32 %2729, 31
  %2746 = trunc i32 %2745 to i8
  store i8 %2746, i8* %42, align 1
  %2747 = lshr i32 %2728, 31
  %2748 = xor i32 %2745, %2747
  %2749 = add nuw nsw i32 %2748, %2745
  %2750 = icmp eq i32 %2749, 2
  %2751 = zext i1 %2750 to i8
  store i8 %2751, i8* %48, align 1
  %2752 = add i64 %2725, 9
  store i64 %2752, i64* %3, align 8
  store i32 %2729, i32* %2727, align 4
  %2753 = load i64, i64* %3, align 8
  %2754 = add i64 %2753, -118
  store i64 %2754, i64* %3, align 8
  br label %block_.L_43e542

block_.L_43e5bd:                                  ; preds = %block_.L_43e542
  %2755 = add i64 %2493, -48
  %2756 = add i64 %2529, 8
  store i64 %2756, i64* %3, align 8
  %2757 = inttoptr i64 %2755 to i32*
  %2758 = load i32, i32* %2757, align 4
  %2759 = add i32 %2758, 1
  %2760 = zext i32 %2759 to i64
  store i64 %2760, i64* %RAX.i905.phi.trans.insert, align 8
  %2761 = icmp eq i32 %2758, -1
  %2762 = icmp eq i32 %2759, 0
  %2763 = or i1 %2761, %2762
  %2764 = zext i1 %2763 to i8
  store i8 %2764, i8* %24, align 1
  %2765 = and i32 %2759, 255
  %2766 = tail call i32 @llvm.ctpop.i32(i32 %2765)
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  %2769 = xor i8 %2768, 1
  store i8 %2769, i8* %31, align 1
  %2770 = xor i32 %2759, %2758
  %2771 = lshr i32 %2770, 4
  %2772 = trunc i32 %2771 to i8
  %2773 = and i8 %2772, 1
  store i8 %2773, i8* %36, align 1
  %2774 = zext i1 %2762 to i8
  store i8 %2774, i8* %39, align 1
  %2775 = lshr i32 %2759, 31
  %2776 = trunc i32 %2775 to i8
  store i8 %2776, i8* %42, align 1
  %2777 = lshr i32 %2758, 31
  %2778 = xor i32 %2775, %2777
  %2779 = add nuw nsw i32 %2778, %2775
  %2780 = icmp eq i32 %2779, 2
  %2781 = zext i1 %2780 to i8
  store i8 %2781, i8* %48, align 1
  %2782 = add i64 %2529, 14
  store i64 %2782, i64* %3, align 8
  store i32 %2759, i32* %2757, align 4
  %2783 = load i64, i64* %3, align 8
  %2784 = add i64 %2783, -155
  store i64 %2784, i64* %3, align 8
  br label %block_.L_43e530

block_.L_43e5d0:                                  ; preds = %block_.L_43e530
  %2785 = add i64 %2483, 274
  br label %block_.L_43e6e2

block_.L_43e5d5:                                  ; preds = %block_.L_43e520
  %2786 = add i64 %2435, 4
  store i64 %2786, i64* %3, align 8
  %2787 = load i32, i32* %1116, align 4
  store i8 0, i8* %24, align 1
  %2788 = and i32 %2787, 255
  %2789 = tail call i32 @llvm.ctpop.i32(i32 %2788)
  %2790 = trunc i32 %2789 to i8
  %2791 = and i8 %2790, 1
  %2792 = xor i8 %2791, 1
  store i8 %2792, i8* %31, align 1
  store i8 0, i8* %36, align 1
  %2793 = icmp eq i32 %2787, 0
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %39, align 1
  %2795 = lshr i32 %2787, 31
  %2796 = trunc i32 %2795 to i8
  store i8 %2796, i8* %42, align 1
  store i8 0, i8* %48, align 1
  %.v103 = select i1 %2793, i64 10, i64 137
  %2797 = add i64 %2435, %.v103
  %2798 = add i64 %1099, -24
  %2799 = add i64 %2797, 3
  store i64 %2799, i64* %3, align 8
  %2800 = inttoptr i64 %2798 to i32*
  %2801 = load i32, i32* %2800, align 4
  %2802 = zext i32 %2801 to i64
  store i64 %2802, i64* %RAX.i905.phi.trans.insert, align 8
  %2803 = add i64 %1099, -48
  %2804 = add i64 %2797, 6
  store i64 %2804, i64* %3, align 8
  %2805 = inttoptr i64 %2803 to i32*
  store i32 %2801, i32* %2805, align 4
  %2806 = bitcast %union.anon* %49 to i32**
  %SI.i45 = bitcast %union.anon* %63 to i16*
  %.pre93 = load i64, i64* %3, align 8
  br i1 %2793, label %block_.L_43e5e5.preheader, label %block_.L_43e664.preheader

block_.L_43e664.preheader:                        ; preds = %block_.L_43e5d5
  br label %block_.L_43e664

block_.L_43e5e5.preheader:                        ; preds = %block_.L_43e5d5
  br label %block_.L_43e5e5

block_.L_43e5e5:                                  ; preds = %block_.L_43e5e5.preheader, %block_.L_43e646
  %2807 = phi i64 [ %3052, %block_.L_43e646 ], [ %.pre93, %block_.L_43e5e5.preheader ]
  %2808 = load i64, i64* %RBP.i, align 8
  %2809 = add i64 %2808, -48
  %2810 = add i64 %2807, 3
  store i64 %2810, i64* %3, align 8
  %2811 = inttoptr i64 %2809 to i32*
  %2812 = load i32, i32* %2811, align 4
  %2813 = zext i32 %2812 to i64
  store i64 %2813, i64* %RAX.i905.phi.trans.insert, align 8
  %2814 = add i64 %2808, -56
  %2815 = add i64 %2807, 6
  store i64 %2815, i64* %3, align 8
  %2816 = inttoptr i64 %2814 to i32*
  %2817 = load i32, i32* %2816, align 4
  %2818 = sub i32 %2812, %2817
  %2819 = icmp ult i32 %2812, %2817
  %2820 = zext i1 %2819 to i8
  store i8 %2820, i8* %24, align 1
  %2821 = and i32 %2818, 255
  %2822 = tail call i32 @llvm.ctpop.i32(i32 %2821)
  %2823 = trunc i32 %2822 to i8
  %2824 = and i8 %2823, 1
  %2825 = xor i8 %2824, 1
  store i8 %2825, i8* %31, align 1
  %2826 = xor i32 %2817, %2812
  %2827 = xor i32 %2826, %2818
  %2828 = lshr i32 %2827, 4
  %2829 = trunc i32 %2828 to i8
  %2830 = and i8 %2829, 1
  store i8 %2830, i8* %36, align 1
  %2831 = icmp eq i32 %2818, 0
  %2832 = zext i1 %2831 to i8
  store i8 %2832, i8* %39, align 1
  %2833 = lshr i32 %2818, 31
  %2834 = trunc i32 %2833 to i8
  store i8 %2834, i8* %42, align 1
  %2835 = lshr i32 %2812, 31
  %2836 = lshr i32 %2817, 31
  %2837 = xor i32 %2836, %2835
  %2838 = xor i32 %2833, %2835
  %2839 = add nuw nsw i32 %2838, %2837
  %2840 = icmp eq i32 %2839, 2
  %2841 = zext i1 %2840 to i8
  store i8 %2841, i8* %48, align 1
  %2842 = icmp ne i8 %2834, 0
  %2843 = xor i1 %2842, %2840
  %.v120 = select i1 %2843, i64 12, i64 116
  %2844 = add i64 %2807, %.v120
  store i64 %2844, i64* %3, align 8
  br i1 %2843, label %block_43e5f1, label %block_.L_43e659

block_43e5f1:                                     ; preds = %block_.L_43e5e5
  %2845 = add i64 %2808, -20
  %2846 = add i64 %2844, 3
  store i64 %2846, i64* %3, align 8
  %2847 = inttoptr i64 %2845 to i32*
  %2848 = load i32, i32* %2847, align 4
  %2849 = zext i32 %2848 to i64
  store i64 %2849, i64* %RAX.i905.phi.trans.insert, align 8
  %2850 = add i64 %2808, -44
  %2851 = add i64 %2844, 6
  store i64 %2851, i64* %3, align 8
  %2852 = inttoptr i64 %2850 to i32*
  store i32 %2848, i32* %2852, align 4
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_43e5f7

block_.L_43e5f7:                                  ; preds = %block_43e603, %block_43e5f1
  %2853 = phi i64 [ %3022, %block_43e603 ], [ %.pre94, %block_43e5f1 ]
  %2854 = load i64, i64* %RBP.i, align 8
  %2855 = add i64 %2854, -44
  %2856 = add i64 %2853, 3
  store i64 %2856, i64* %3, align 8
  %2857 = inttoptr i64 %2855 to i32*
  %2858 = load i32, i32* %2857, align 4
  %2859 = zext i32 %2858 to i64
  store i64 %2859, i64* %RAX.i905.phi.trans.insert, align 8
  %2860 = add i64 %2854, -52
  %2861 = add i64 %2853, 6
  store i64 %2861, i64* %3, align 8
  %2862 = inttoptr i64 %2860 to i32*
  %2863 = load i32, i32* %2862, align 4
  %2864 = sub i32 %2858, %2863
  %2865 = icmp ult i32 %2858, %2863
  %2866 = zext i1 %2865 to i8
  store i8 %2866, i8* %24, align 1
  %2867 = and i32 %2864, 255
  %2868 = tail call i32 @llvm.ctpop.i32(i32 %2867)
  %2869 = trunc i32 %2868 to i8
  %2870 = and i8 %2869, 1
  %2871 = xor i8 %2870, 1
  store i8 %2871, i8* %31, align 1
  %2872 = xor i32 %2863, %2858
  %2873 = xor i32 %2872, %2864
  %2874 = lshr i32 %2873, 4
  %2875 = trunc i32 %2874 to i8
  %2876 = and i8 %2875, 1
  store i8 %2876, i8* %36, align 1
  %2877 = icmp eq i32 %2864, 0
  %2878 = zext i1 %2877 to i8
  store i8 %2878, i8* %39, align 1
  %2879 = lshr i32 %2864, 31
  %2880 = trunc i32 %2879 to i8
  store i8 %2880, i8* %42, align 1
  %2881 = lshr i32 %2858, 31
  %2882 = lshr i32 %2863, 31
  %2883 = xor i32 %2882, %2881
  %2884 = xor i32 %2879, %2881
  %2885 = add nuw nsw i32 %2884, %2883
  %2886 = icmp eq i32 %2885, 2
  %2887 = zext i1 %2886 to i8
  store i8 %2887, i8* %48, align 1
  %2888 = icmp ne i8 %2880, 0
  %2889 = xor i1 %2888, %2886
  %.v105 = select i1 %2889, i64 12, i64 79
  %2890 = add i64 %2853, %.v105
  store i64 %2890, i64* %3, align 8
  br i1 %2889, label %block_43e603, label %block_.L_43e646

block_43e603:                                     ; preds = %block_.L_43e5f7
  %2891 = add i64 %2854, -80
  %2892 = add i64 %2890, 4
  store i64 %2892, i64* %3, align 8
  %2893 = inttoptr i64 %2891 to i64*
  %2894 = load i64, i64* %2893, align 8
  store i64 %2894, i64* %RAX.i905.phi.trans.insert, align 8
  %2895 = add i64 %2894, 4
  store i64 %2895, i64* %RCX.i1093, align 8
  %2896 = icmp ugt i64 %2894, -5
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %24, align 1
  %2898 = trunc i64 %2895 to i32
  %2899 = and i32 %2898, 255
  %2900 = tail call i32 @llvm.ctpop.i32(i32 %2899)
  %2901 = trunc i32 %2900 to i8
  %2902 = and i8 %2901, 1
  %2903 = xor i8 %2902, 1
  store i8 %2903, i8* %31, align 1
  %2904 = xor i64 %2895, %2894
  %2905 = lshr i64 %2904, 4
  %2906 = trunc i64 %2905 to i8
  %2907 = and i8 %2906, 1
  store i8 %2907, i8* %36, align 1
  %2908 = icmp eq i64 %2895, 0
  %2909 = zext i1 %2908 to i8
  store i8 %2909, i8* %39, align 1
  %2910 = lshr i64 %2895, 63
  %2911 = trunc i64 %2910 to i8
  store i8 %2911, i8* %42, align 1
  %2912 = lshr i64 %2894, 63
  %2913 = xor i64 %2910, %2912
  %2914 = add nuw nsw i64 %2913, %2910
  %2915 = icmp eq i64 %2914, 2
  %2916 = zext i1 %2915 to i8
  store i8 %2916, i8* %48, align 1
  %2917 = add i64 %2890, 15
  store i64 %2917, i64* %3, align 8
  store i64 %2895, i64* %2893, align 8
  %2918 = load i32*, i32** %2806, align 8
  %2919 = load i64, i64* %3, align 8
  %2920 = add i64 %2919, 2
  store i64 %2920, i64* %3, align 8
  %2921 = load i32, i32* %2918, align 4
  %2922 = zext i32 %2921 to i64
  store i64 %2922, i64* %RDX.i955, align 8
  %2923 = trunc i32 %2921 to i16
  store i16 %2923, i16* %SI.i45, align 2
  %2924 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2925 = add i64 %2924, 12600
  store i64 %2925, i64* %RAX.i905.phi.trans.insert, align 8
  %2926 = icmp ugt i64 %2924, -12601
  %2927 = zext i1 %2926 to i8
  store i8 %2927, i8* %24, align 1
  %2928 = trunc i64 %2925 to i32
  %2929 = and i32 %2928, 255
  %2930 = tail call i32 @llvm.ctpop.i32(i32 %2929)
  %2931 = trunc i32 %2930 to i8
  %2932 = and i8 %2931, 1
  %2933 = xor i8 %2932, 1
  store i8 %2933, i8* %31, align 1
  %2934 = xor i64 %2924, 16
  %2935 = xor i64 %2934, %2925
  %2936 = lshr i64 %2935, 4
  %2937 = trunc i64 %2936 to i8
  %2938 = and i8 %2937, 1
  store i8 %2938, i8* %36, align 1
  %2939 = icmp eq i64 %2925, 0
  %2940 = zext i1 %2939 to i8
  store i8 %2940, i8* %39, align 1
  %2941 = lshr i64 %2925, 63
  %2942 = trunc i64 %2941 to i8
  store i8 %2942, i8* %42, align 1
  %2943 = lshr i64 %2924, 63
  %2944 = xor i64 %2941, %2943
  %2945 = add nuw nsw i64 %2944, %2941
  %2946 = icmp eq i64 %2945, 2
  %2947 = zext i1 %2946 to i8
  store i8 %2947, i8* %48, align 1
  %2948 = load i64, i64* %RBP.i, align 8
  %2949 = add i64 %2948, -44
  %2950 = add i64 %2919, 23
  store i64 %2950, i64* %3, align 8
  %2951 = inttoptr i64 %2949 to i32*
  %2952 = load i32, i32* %2951, align 4
  %2953 = sext i32 %2952 to i64
  %2954 = shl nsw i64 %2953, 5
  store i64 %2954, i64* %RCX.i1093, align 8
  %2955 = add i64 %2954, %2925
  store i64 %2955, i64* %RAX.i905.phi.trans.insert, align 8
  %2956 = icmp ult i64 %2955, %2925
  %2957 = icmp ult i64 %2955, %2954
  %2958 = or i1 %2956, %2957
  %2959 = zext i1 %2958 to i8
  store i8 %2959, i8* %24, align 1
  %2960 = trunc i64 %2955 to i32
  %2961 = and i32 %2960, 255
  %2962 = tail call i32 @llvm.ctpop.i32(i32 %2961)
  %2963 = trunc i32 %2962 to i8
  %2964 = and i8 %2963, 1
  %2965 = xor i8 %2964, 1
  store i8 %2965, i8* %31, align 1
  %2966 = xor i64 %2925, %2955
  %2967 = lshr i64 %2966, 4
  %2968 = trunc i64 %2967 to i8
  %2969 = and i8 %2968, 1
  store i8 %2969, i8* %36, align 1
  %2970 = icmp eq i64 %2955, 0
  %2971 = zext i1 %2970 to i8
  store i8 %2971, i8* %39, align 1
  %2972 = lshr i64 %2955, 63
  %2973 = trunc i64 %2972 to i8
  store i8 %2973, i8* %42, align 1
  %2974 = lshr i64 %2953, 58
  %2975 = and i64 %2974, 1
  %2976 = xor i64 %2972, %2941
  %2977 = xor i64 %2972, %2975
  %2978 = add nuw nsw i64 %2976, %2977
  %2979 = icmp eq i64 %2978, 2
  %2980 = zext i1 %2979 to i8
  store i8 %2980, i8* %48, align 1
  %2981 = add i64 %2948, -48
  %2982 = add i64 %2919, 34
  store i64 %2982, i64* %3, align 8
  %2983 = inttoptr i64 %2981 to i32*
  %2984 = load i32, i32* %2983, align 4
  %2985 = sext i32 %2984 to i64
  store i64 %2985, i64* %RCX.i1093, align 8
  %2986 = shl nsw i64 %2985, 1
  %2987 = add i64 %2986, %2955
  %2988 = load i16, i16* %SI.i45, align 2
  %2989 = add i64 %2919, 38
  store i64 %2989, i64* %3, align 8
  %2990 = inttoptr i64 %2987 to i16*
  store i16 %2988, i16* %2990, align 2
  %2991 = load i64, i64* %RBP.i, align 8
  %2992 = add i64 %2991, -44
  %2993 = load i64, i64* %3, align 8
  %2994 = add i64 %2993, 3
  store i64 %2994, i64* %3, align 8
  %2995 = inttoptr i64 %2992 to i32*
  %2996 = load i32, i32* %2995, align 4
  %2997 = add i32 %2996, 1
  %2998 = zext i32 %2997 to i64
  store i64 %2998, i64* %RAX.i905.phi.trans.insert, align 8
  %2999 = icmp eq i32 %2996, -1
  %3000 = icmp eq i32 %2997, 0
  %3001 = or i1 %2999, %3000
  %3002 = zext i1 %3001 to i8
  store i8 %3002, i8* %24, align 1
  %3003 = and i32 %2997, 255
  %3004 = tail call i32 @llvm.ctpop.i32(i32 %3003)
  %3005 = trunc i32 %3004 to i8
  %3006 = and i8 %3005, 1
  %3007 = xor i8 %3006, 1
  store i8 %3007, i8* %31, align 1
  %3008 = xor i32 %2997, %2996
  %3009 = lshr i32 %3008, 4
  %3010 = trunc i32 %3009 to i8
  %3011 = and i8 %3010, 1
  store i8 %3011, i8* %36, align 1
  %3012 = zext i1 %3000 to i8
  store i8 %3012, i8* %39, align 1
  %3013 = lshr i32 %2997, 31
  %3014 = trunc i32 %3013 to i8
  store i8 %3014, i8* %42, align 1
  %3015 = lshr i32 %2996, 31
  %3016 = xor i32 %3013, %3015
  %3017 = add nuw nsw i32 %3016, %3013
  %3018 = icmp eq i32 %3017, 2
  %3019 = zext i1 %3018 to i8
  store i8 %3019, i8* %48, align 1
  %3020 = add i64 %2993, 9
  store i64 %3020, i64* %3, align 8
  store i32 %2997, i32* %2995, align 4
  %3021 = load i64, i64* %3, align 8
  %3022 = add i64 %3021, -74
  store i64 %3022, i64* %3, align 8
  br label %block_.L_43e5f7

block_.L_43e646:                                  ; preds = %block_.L_43e5f7
  %3023 = add i64 %2854, -48
  %3024 = add i64 %2890, 8
  store i64 %3024, i64* %3, align 8
  %3025 = inttoptr i64 %3023 to i32*
  %3026 = load i32, i32* %3025, align 4
  %3027 = add i32 %3026, 1
  %3028 = zext i32 %3027 to i64
  store i64 %3028, i64* %RAX.i905.phi.trans.insert, align 8
  %3029 = icmp eq i32 %3026, -1
  %3030 = icmp eq i32 %3027, 0
  %3031 = or i1 %3029, %3030
  %3032 = zext i1 %3031 to i8
  store i8 %3032, i8* %24, align 1
  %3033 = and i32 %3027, 255
  %3034 = tail call i32 @llvm.ctpop.i32(i32 %3033)
  %3035 = trunc i32 %3034 to i8
  %3036 = and i8 %3035, 1
  %3037 = xor i8 %3036, 1
  store i8 %3037, i8* %31, align 1
  %3038 = xor i32 %3027, %3026
  %3039 = lshr i32 %3038, 4
  %3040 = trunc i32 %3039 to i8
  %3041 = and i8 %3040, 1
  store i8 %3041, i8* %36, align 1
  %3042 = zext i1 %3030 to i8
  store i8 %3042, i8* %39, align 1
  %3043 = lshr i32 %3027, 31
  %3044 = trunc i32 %3043 to i8
  store i8 %3044, i8* %42, align 1
  %3045 = lshr i32 %3026, 31
  %3046 = xor i32 %3043, %3045
  %3047 = add nuw nsw i32 %3046, %3043
  %3048 = icmp eq i32 %3047, 2
  %3049 = zext i1 %3048 to i8
  store i8 %3049, i8* %48, align 1
  %3050 = add i64 %2890, 14
  store i64 %3050, i64* %3, align 8
  store i32 %3027, i32* %3025, align 4
  %3051 = load i64, i64* %3, align 8
  %3052 = add i64 %3051, -111
  store i64 %3052, i64* %3, align 8
  br label %block_.L_43e5e5

block_.L_43e659:                                  ; preds = %block_.L_43e5e5
  %3053 = add i64 %2844, 132
  br label %block_.L_43e6dd

block_.L_43e664:                                  ; preds = %block_.L_43e664.preheader, %block_.L_43e6c5
  %3054 = phi i64 [ %3299, %block_.L_43e6c5 ], [ %.pre93, %block_.L_43e664.preheader ]
  %3055 = load i64, i64* %RBP.i, align 8
  %3056 = add i64 %3055, -48
  %3057 = add i64 %3054, 3
  store i64 %3057, i64* %3, align 8
  %3058 = inttoptr i64 %3056 to i32*
  %3059 = load i32, i32* %3058, align 4
  %3060 = zext i32 %3059 to i64
  store i64 %3060, i64* %RAX.i905.phi.trans.insert, align 8
  %3061 = add i64 %3055, -56
  %3062 = add i64 %3054, 6
  store i64 %3062, i64* %3, align 8
  %3063 = inttoptr i64 %3061 to i32*
  %3064 = load i32, i32* %3063, align 4
  %3065 = sub i32 %3059, %3064
  %3066 = icmp ult i32 %3059, %3064
  %3067 = zext i1 %3066 to i8
  store i8 %3067, i8* %24, align 1
  %3068 = and i32 %3065, 255
  %3069 = tail call i32 @llvm.ctpop.i32(i32 %3068)
  %3070 = trunc i32 %3069 to i8
  %3071 = and i8 %3070, 1
  %3072 = xor i8 %3071, 1
  store i8 %3072, i8* %31, align 1
  %3073 = xor i32 %3064, %3059
  %3074 = xor i32 %3073, %3065
  %3075 = lshr i32 %3074, 4
  %3076 = trunc i32 %3075 to i8
  %3077 = and i8 %3076, 1
  store i8 %3077, i8* %36, align 1
  %3078 = icmp eq i32 %3065, 0
  %3079 = zext i1 %3078 to i8
  store i8 %3079, i8* %39, align 1
  %3080 = lshr i32 %3065, 31
  %3081 = trunc i32 %3080 to i8
  store i8 %3081, i8* %42, align 1
  %3082 = lshr i32 %3059, 31
  %3083 = lshr i32 %3064, 31
  %3084 = xor i32 %3083, %3082
  %3085 = xor i32 %3080, %3082
  %3086 = add nuw nsw i32 %3085, %3084
  %3087 = icmp eq i32 %3086, 2
  %3088 = zext i1 %3087 to i8
  store i8 %3088, i8* %48, align 1
  %3089 = icmp ne i8 %3081, 0
  %3090 = xor i1 %3089, %3087
  %.v119 = select i1 %3090, i64 12, i64 116
  %3091 = add i64 %3054, %.v119
  store i64 %3091, i64* %3, align 8
  br i1 %3090, label %block_43e670, label %block_.L_43e6d8

block_43e670:                                     ; preds = %block_.L_43e664
  %3092 = add i64 %3055, -20
  %3093 = add i64 %3091, 3
  store i64 %3093, i64* %3, align 8
  %3094 = inttoptr i64 %3092 to i32*
  %3095 = load i32, i32* %3094, align 4
  %3096 = zext i32 %3095 to i64
  store i64 %3096, i64* %RAX.i905.phi.trans.insert, align 8
  %3097 = add i64 %3055, -44
  %3098 = add i64 %3091, 6
  store i64 %3098, i64* %3, align 8
  %3099 = inttoptr i64 %3097 to i32*
  store i32 %3095, i32* %3099, align 4
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_43e676

block_.L_43e676:                                  ; preds = %block_43e682, %block_43e670
  %3100 = phi i64 [ %3269, %block_43e682 ], [ %.pre96, %block_43e670 ]
  %3101 = load i64, i64* %RBP.i, align 8
  %3102 = add i64 %3101, -44
  %3103 = add i64 %3100, 3
  store i64 %3103, i64* %3, align 8
  %3104 = inttoptr i64 %3102 to i32*
  %3105 = load i32, i32* %3104, align 4
  %3106 = zext i32 %3105 to i64
  store i64 %3106, i64* %RAX.i905.phi.trans.insert, align 8
  %3107 = add i64 %3101, -52
  %3108 = add i64 %3100, 6
  store i64 %3108, i64* %3, align 8
  %3109 = inttoptr i64 %3107 to i32*
  %3110 = load i32, i32* %3109, align 4
  %3111 = sub i32 %3105, %3110
  %3112 = icmp ult i32 %3105, %3110
  %3113 = zext i1 %3112 to i8
  store i8 %3113, i8* %24, align 1
  %3114 = and i32 %3111, 255
  %3115 = tail call i32 @llvm.ctpop.i32(i32 %3114)
  %3116 = trunc i32 %3115 to i8
  %3117 = and i8 %3116, 1
  %3118 = xor i8 %3117, 1
  store i8 %3118, i8* %31, align 1
  %3119 = xor i32 %3110, %3105
  %3120 = xor i32 %3119, %3111
  %3121 = lshr i32 %3120, 4
  %3122 = trunc i32 %3121 to i8
  %3123 = and i8 %3122, 1
  store i8 %3123, i8* %36, align 1
  %3124 = icmp eq i32 %3111, 0
  %3125 = zext i1 %3124 to i8
  store i8 %3125, i8* %39, align 1
  %3126 = lshr i32 %3111, 31
  %3127 = trunc i32 %3126 to i8
  store i8 %3127, i8* %42, align 1
  %3128 = lshr i32 %3105, 31
  %3129 = lshr i32 %3110, 31
  %3130 = xor i32 %3129, %3128
  %3131 = xor i32 %3126, %3128
  %3132 = add nuw nsw i32 %3131, %3130
  %3133 = icmp eq i32 %3132, 2
  %3134 = zext i1 %3133 to i8
  store i8 %3134, i8* %48, align 1
  %3135 = icmp ne i8 %3127, 0
  %3136 = xor i1 %3135, %3133
  %.v106 = select i1 %3136, i64 12, i64 79
  %3137 = add i64 %3100, %.v106
  store i64 %3137, i64* %3, align 8
  br i1 %3136, label %block_43e682, label %block_.L_43e6c5

block_43e682:                                     ; preds = %block_.L_43e676
  %3138 = add i64 %3101, -88
  %3139 = add i64 %3137, 4
  store i64 %3139, i64* %3, align 8
  %3140 = inttoptr i64 %3138 to i64*
  %3141 = load i64, i64* %3140, align 8
  store i64 %3141, i64* %RAX.i905.phi.trans.insert, align 8
  %3142 = add i64 %3141, 4
  store i64 %3142, i64* %RCX.i1093, align 8
  %3143 = icmp ugt i64 %3141, -5
  %3144 = zext i1 %3143 to i8
  store i8 %3144, i8* %24, align 1
  %3145 = trunc i64 %3142 to i32
  %3146 = and i32 %3145, 255
  %3147 = tail call i32 @llvm.ctpop.i32(i32 %3146)
  %3148 = trunc i32 %3147 to i8
  %3149 = and i8 %3148, 1
  %3150 = xor i8 %3149, 1
  store i8 %3150, i8* %31, align 1
  %3151 = xor i64 %3142, %3141
  %3152 = lshr i64 %3151, 4
  %3153 = trunc i64 %3152 to i8
  %3154 = and i8 %3153, 1
  store i8 %3154, i8* %36, align 1
  %3155 = icmp eq i64 %3142, 0
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %39, align 1
  %3157 = lshr i64 %3142, 63
  %3158 = trunc i64 %3157 to i8
  store i8 %3158, i8* %42, align 1
  %3159 = lshr i64 %3141, 63
  %3160 = xor i64 %3157, %3159
  %3161 = add nuw nsw i64 %3160, %3157
  %3162 = icmp eq i64 %3161, 2
  %3163 = zext i1 %3162 to i8
  store i8 %3163, i8* %48, align 1
  %3164 = add i64 %3137, 15
  store i64 %3164, i64* %3, align 8
  store i64 %3142, i64* %3140, align 8
  %3165 = load i32*, i32** %2806, align 8
  %3166 = load i64, i64* %3, align 8
  %3167 = add i64 %3166, 2
  store i64 %3167, i64* %3, align 8
  %3168 = load i32, i32* %3165, align 4
  %3169 = zext i32 %3168 to i64
  store i64 %3169, i64* %RDX.i955, align 8
  %3170 = trunc i32 %3168 to i16
  store i16 %3170, i16* %SI.i45, align 2
  %3171 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3172 = add i64 %3171, 12600
  store i64 %3172, i64* %RAX.i905.phi.trans.insert, align 8
  %3173 = icmp ugt i64 %3171, -12601
  %3174 = zext i1 %3173 to i8
  store i8 %3174, i8* %24, align 1
  %3175 = trunc i64 %3172 to i32
  %3176 = and i32 %3175, 255
  %3177 = tail call i32 @llvm.ctpop.i32(i32 %3176)
  %3178 = trunc i32 %3177 to i8
  %3179 = and i8 %3178, 1
  %3180 = xor i8 %3179, 1
  store i8 %3180, i8* %31, align 1
  %3181 = xor i64 %3171, 16
  %3182 = xor i64 %3181, %3172
  %3183 = lshr i64 %3182, 4
  %3184 = trunc i64 %3183 to i8
  %3185 = and i8 %3184, 1
  store i8 %3185, i8* %36, align 1
  %3186 = icmp eq i64 %3172, 0
  %3187 = zext i1 %3186 to i8
  store i8 %3187, i8* %39, align 1
  %3188 = lshr i64 %3172, 63
  %3189 = trunc i64 %3188 to i8
  store i8 %3189, i8* %42, align 1
  %3190 = lshr i64 %3171, 63
  %3191 = xor i64 %3188, %3190
  %3192 = add nuw nsw i64 %3191, %3188
  %3193 = icmp eq i64 %3192, 2
  %3194 = zext i1 %3193 to i8
  store i8 %3194, i8* %48, align 1
  %3195 = load i64, i64* %RBP.i, align 8
  %3196 = add i64 %3195, -44
  %3197 = add i64 %3166, 23
  store i64 %3197, i64* %3, align 8
  %3198 = inttoptr i64 %3196 to i32*
  %3199 = load i32, i32* %3198, align 4
  %3200 = sext i32 %3199 to i64
  %3201 = shl nsw i64 %3200, 5
  store i64 %3201, i64* %RCX.i1093, align 8
  %3202 = add i64 %3201, %3172
  store i64 %3202, i64* %RAX.i905.phi.trans.insert, align 8
  %3203 = icmp ult i64 %3202, %3172
  %3204 = icmp ult i64 %3202, %3201
  %3205 = or i1 %3203, %3204
  %3206 = zext i1 %3205 to i8
  store i8 %3206, i8* %24, align 1
  %3207 = trunc i64 %3202 to i32
  %3208 = and i32 %3207, 255
  %3209 = tail call i32 @llvm.ctpop.i32(i32 %3208)
  %3210 = trunc i32 %3209 to i8
  %3211 = and i8 %3210, 1
  %3212 = xor i8 %3211, 1
  store i8 %3212, i8* %31, align 1
  %3213 = xor i64 %3172, %3202
  %3214 = lshr i64 %3213, 4
  %3215 = trunc i64 %3214 to i8
  %3216 = and i8 %3215, 1
  store i8 %3216, i8* %36, align 1
  %3217 = icmp eq i64 %3202, 0
  %3218 = zext i1 %3217 to i8
  store i8 %3218, i8* %39, align 1
  %3219 = lshr i64 %3202, 63
  %3220 = trunc i64 %3219 to i8
  store i8 %3220, i8* %42, align 1
  %3221 = lshr i64 %3200, 58
  %3222 = and i64 %3221, 1
  %3223 = xor i64 %3219, %3188
  %3224 = xor i64 %3219, %3222
  %3225 = add nuw nsw i64 %3223, %3224
  %3226 = icmp eq i64 %3225, 2
  %3227 = zext i1 %3226 to i8
  store i8 %3227, i8* %48, align 1
  %3228 = add i64 %3195, -48
  %3229 = add i64 %3166, 34
  store i64 %3229, i64* %3, align 8
  %3230 = inttoptr i64 %3228 to i32*
  %3231 = load i32, i32* %3230, align 4
  %3232 = sext i32 %3231 to i64
  store i64 %3232, i64* %RCX.i1093, align 8
  %3233 = shl nsw i64 %3232, 1
  %3234 = add i64 %3233, %3202
  %3235 = load i16, i16* %SI.i45, align 2
  %3236 = add i64 %3166, 38
  store i64 %3236, i64* %3, align 8
  %3237 = inttoptr i64 %3234 to i16*
  store i16 %3235, i16* %3237, align 2
  %3238 = load i64, i64* %RBP.i, align 8
  %3239 = add i64 %3238, -44
  %3240 = load i64, i64* %3, align 8
  %3241 = add i64 %3240, 3
  store i64 %3241, i64* %3, align 8
  %3242 = inttoptr i64 %3239 to i32*
  %3243 = load i32, i32* %3242, align 4
  %3244 = add i32 %3243, 1
  %3245 = zext i32 %3244 to i64
  store i64 %3245, i64* %RAX.i905.phi.trans.insert, align 8
  %3246 = icmp eq i32 %3243, -1
  %3247 = icmp eq i32 %3244, 0
  %3248 = or i1 %3246, %3247
  %3249 = zext i1 %3248 to i8
  store i8 %3249, i8* %24, align 1
  %3250 = and i32 %3244, 255
  %3251 = tail call i32 @llvm.ctpop.i32(i32 %3250)
  %3252 = trunc i32 %3251 to i8
  %3253 = and i8 %3252, 1
  %3254 = xor i8 %3253, 1
  store i8 %3254, i8* %31, align 1
  %3255 = xor i32 %3244, %3243
  %3256 = lshr i32 %3255, 4
  %3257 = trunc i32 %3256 to i8
  %3258 = and i8 %3257, 1
  store i8 %3258, i8* %36, align 1
  %3259 = zext i1 %3247 to i8
  store i8 %3259, i8* %39, align 1
  %3260 = lshr i32 %3244, 31
  %3261 = trunc i32 %3260 to i8
  store i8 %3261, i8* %42, align 1
  %3262 = lshr i32 %3243, 31
  %3263 = xor i32 %3260, %3262
  %3264 = add nuw nsw i32 %3263, %3260
  %3265 = icmp eq i32 %3264, 2
  %3266 = zext i1 %3265 to i8
  store i8 %3266, i8* %48, align 1
  %3267 = add i64 %3240, 9
  store i64 %3267, i64* %3, align 8
  store i32 %3244, i32* %3242, align 4
  %3268 = load i64, i64* %3, align 8
  %3269 = add i64 %3268, -74
  store i64 %3269, i64* %3, align 8
  br label %block_.L_43e676

block_.L_43e6c5:                                  ; preds = %block_.L_43e676
  %3270 = add i64 %3101, -48
  %3271 = add i64 %3137, 8
  store i64 %3271, i64* %3, align 8
  %3272 = inttoptr i64 %3270 to i32*
  %3273 = load i32, i32* %3272, align 4
  %3274 = add i32 %3273, 1
  %3275 = zext i32 %3274 to i64
  store i64 %3275, i64* %RAX.i905.phi.trans.insert, align 8
  %3276 = icmp eq i32 %3273, -1
  %3277 = icmp eq i32 %3274, 0
  %3278 = or i1 %3276, %3277
  %3279 = zext i1 %3278 to i8
  store i8 %3279, i8* %24, align 1
  %3280 = and i32 %3274, 255
  %3281 = tail call i32 @llvm.ctpop.i32(i32 %3280)
  %3282 = trunc i32 %3281 to i8
  %3283 = and i8 %3282, 1
  %3284 = xor i8 %3283, 1
  store i8 %3284, i8* %31, align 1
  %3285 = xor i32 %3274, %3273
  %3286 = lshr i32 %3285, 4
  %3287 = trunc i32 %3286 to i8
  %3288 = and i8 %3287, 1
  store i8 %3288, i8* %36, align 1
  %3289 = zext i1 %3277 to i8
  store i8 %3289, i8* %39, align 1
  %3290 = lshr i32 %3274, 31
  %3291 = trunc i32 %3290 to i8
  store i8 %3291, i8* %42, align 1
  %3292 = lshr i32 %3273, 31
  %3293 = xor i32 %3290, %3292
  %3294 = add nuw nsw i32 %3293, %3290
  %3295 = icmp eq i32 %3294, 2
  %3296 = zext i1 %3295 to i8
  store i8 %3296, i8* %48, align 1
  %3297 = add i64 %3137, 14
  store i64 %3297, i64* %3, align 8
  store i32 %3274, i32* %3272, align 4
  %3298 = load i64, i64* %3, align 8
  %3299 = add i64 %3298, -111
  store i64 %3299, i64* %3, align 8
  br label %block_.L_43e664

block_.L_43e6d8:                                  ; preds = %block_.L_43e664
  %3300 = add i64 %3091, 5
  store i64 %3300, i64* %3, align 8
  br label %block_.L_43e6dd

block_.L_43e6dd:                                  ; preds = %block_.L_43e6d8, %block_.L_43e659
  %storemerge43 = phi i64 [ %3053, %block_.L_43e659 ], [ %3300, %block_.L_43e6d8 ]
  %3301 = add i64 %storemerge43, 5
  store i64 %3301, i64* %3, align 8
  br label %block_.L_43e6e2

block_.L_43e6e2:                                  ; preds = %block_.L_43e6dd, %block_.L_43e5d0
  %storemerge41 = phi i64 [ %2785, %block_.L_43e5d0 ], [ %3301, %block_.L_43e6dd ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.19, %block_.L_43e5d0 ], [ %MEMORY.10, %block_.L_43e6dd ]
  %3302 = add i64 %storemerge41, 5
  store i64 %3302, i64* %3, align 8
  br label %block_.L_43e6e7

block_.L_43e6e7:                                  ; preds = %block_.L_43e6e2, %block_.L_43e51b
  %storemerge36 = phi i64 [ %2434, %block_.L_43e51b ], [ %3302, %block_.L_43e6e2 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.10, %block_.L_43e51b ], [ %MEMORY.26, %block_.L_43e6e2 ]
  %3303 = load i64, i64* %6, align 8
  %3304 = add i64 %3303, 128
  store i64 %3304, i64* %6, align 8
  %3305 = icmp ugt i64 %3303, -129
  %3306 = zext i1 %3305 to i8
  store i8 %3306, i8* %24, align 1
  %3307 = trunc i64 %3304 to i32
  %3308 = and i32 %3307, 255
  %3309 = tail call i32 @llvm.ctpop.i32(i32 %3308)
  %3310 = trunc i32 %3309 to i8
  %3311 = and i8 %3310, 1
  %3312 = xor i8 %3311, 1
  store i8 %3312, i8* %31, align 1
  %3313 = xor i64 %3304, %3303
  %3314 = lshr i64 %3313, 4
  %3315 = trunc i64 %3314 to i8
  %3316 = and i8 %3315, 1
  store i8 %3316, i8* %36, align 1
  %3317 = icmp eq i64 %3304, 0
  %3318 = zext i1 %3317 to i8
  store i8 %3318, i8* %39, align 1
  %3319 = lshr i64 %3304, 63
  %3320 = trunc i64 %3319 to i8
  store i8 %3320, i8* %42, align 1
  %3321 = lshr i64 %3303, 63
  %3322 = xor i64 %3319, %3321
  %3323 = add nuw nsw i64 %3322, %3319
  %3324 = icmp eq i64 %3323, 2
  %3325 = zext i1 %3324 to i8
  store i8 %3325, i8* %48, align 1
  %3326 = add i64 %storemerge36, 8
  store i64 %3326, i64* %3, align 8
  %3327 = add i64 %3303, 136
  %3328 = inttoptr i64 %3304 to i64*
  %3329 = load i64, i64* %3328, align 8
  store i64 %3329, i64* %RBX.i1126, align 8
  store i64 %3327, i64* %6, align 8
  %3330 = add i64 %storemerge36, 10
  store i64 %3330, i64* %3, align 8
  %3331 = add i64 %3303, 144
  %3332 = inttoptr i64 %3327 to i64*
  %3333 = load i64, i64* %3332, align 8
  store i64 %3333, i64* %R14.i918, align 8
  store i64 %3331, i64* %6, align 8
  %3334 = add i64 %storemerge36, 11
  store i64 %3334, i64* %3, align 8
  %3335 = add i64 %3303, 152
  %3336 = inttoptr i64 %3331 to i64*
  %3337 = load i64, i64* %3336, align 8
  store i64 %3337, i64* %RBP.i, align 8
  store i64 %3335, i64* %6, align 8
  %3338 = add i64 %storemerge36, 12
  store i64 %3338, i64* %3, align 8
  %3339 = inttoptr i64 %3335 to i64*
  %3340 = load i64, i64* %3339, align 8
  store i64 %3340, i64* %3, align 8
  %3341 = add i64 %3303, 160
  store i64 %3341, i64* %6, align 8
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
define %struct.Memory* @routine_movq__0x6cc1f0___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cc1f0_type* @G__0x6cc1f0 to i64), i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6cc1b0___rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cc1b0_type* @G__0x6cc1b0 to i64), i64* %RBX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_movq__rbx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_je_.L_43e017(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al__MINUS0x75__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -117
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43e04b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl__MINUS0x76__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -118
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43e045(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb_MINUS0x76__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -118
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x75__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -117
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
define %struct.Memory* @routine_movq_0x118f8__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 71928
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_je_.L_43e0bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_movl__esi__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e0c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x244__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 580
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
define %struct.Memory* @routine_je_.L_43e163(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswl_MINUS0x26__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -38
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_43e163(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x244__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 580
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_43e142(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e158(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_je_.L_43e177(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43e1d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6cc1b0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cc1b0_type* @G__0x6cc1b0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movl_MINUS0x74__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
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
define %struct.Memory* @routine_je_.L_43e1e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43e23e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6cc1f0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cc1f0_type* @G__0x6cc1f0 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_je_.L_43e520(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43e37e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43e379(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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
define %struct.Memory* @routine_jge_.L_43e366(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rcx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_jmpq_.L_43e26a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e36b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e258(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e51b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43e44e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43e449(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43e436(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_jmpq_.L_43e3a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e43b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e38e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e516(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43e511(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43e4fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43e466(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e503(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e454(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e6e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43e5d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43e5d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43e5bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movq__rdx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl_MINUS0x8c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_jmpq_.L_43e542(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e5c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e6e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43e65e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43e659(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43e646(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43e5f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e64b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e5e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e6dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43e6d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43e6c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43e676(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e6ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e664(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
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
