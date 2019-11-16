; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cbf58_type = type <{ [8 x i8] }>
%G_0x6d1fa0_type = type <{ [4 x i8] }>
%G_0x6d1fa4_type = type <{ [4 x i8] }>
%G_0x6f8f00_type = type <{ [8 x i8] }>
%G_0x710770_type = type <{ [8 x i8] }>
%G_0x8dbcd__rip__type = type <{ [8 x i8] }>
%G__0x49e710_type = type <{ [8 x i8] }>
%G__0x49e910_type = type <{ [8 x i8] }>
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
@G_0x6cbf58 = local_unnamed_addr global %G_0x6cbf58_type zeroinitializer
@G_0x6d1fa0 = local_unnamed_addr global %G_0x6d1fa0_type zeroinitializer
@G_0x6d1fa4 = local_unnamed_addr global %G_0x6d1fa4_type zeroinitializer
@G_0x6f8f00 = local_unnamed_addr global %G_0x6f8f00_type zeroinitializer
@G_0x710770 = local_unnamed_addr global %G_0x710770_type zeroinitializer
@G_0x8dbcd__rip_ = global %G_0x8dbcd__rip__type zeroinitializer
@G__0x49e710 = global %G__0x49e710_type zeroinitializer
@G__0x49e910 = global %G__0x49e910_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

declare extern_weak x86_64_sysvcc i64 @abs(i64)

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4231a0.AddUpSADQuarter(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @FastSubPelBlockMotionSearch(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R15.i320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i320, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14.i840 = getelementptr inbounds %union.anon, %union.anon* %15, i64 0, i32 0
  %16 = load i64, i64* %R14.i840, align 8
  %17 = load i64, i64* %3, align 8
  %18 = add i64 %17, 2
  store i64 %18, i64* %3, align 8
  %19 = add i64 %7, -24
  %20 = inttoptr i64 %19 to i64*
  store i64 %16, i64* %20, align 8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0
  %R13.i873 = getelementptr inbounds %union.anon, %union.anon* %21, i64 0, i32 0
  %22 = load i64, i64* %R13.i873, align 8
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 2
  store i64 %24, i64* %3, align 8
  %25 = add i64 %7, -32
  %26 = inttoptr i64 %25 to i64*
  store i64 %22, i64* %26, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0
  %R12.i895 = getelementptr inbounds %union.anon, %union.anon* %27, i64 0, i32 0
  %28 = load i64, i64* %R12.i895, align 8
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 2
  store i64 %30, i64* %3, align 8
  %31 = add i64 %7, -40
  %32 = inttoptr i64 %31 to i64*
  store i64 %28, i64* %32, align 8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i918 = getelementptr inbounds %union.anon, %union.anon* %33, i64 0, i32 0
  %34 = load i64, i64* %RBX.i918, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %3, align 8
  %37 = add i64 %7, -48
  %38 = inttoptr i64 %37 to i64*
  store i64 %34, i64* %38, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %7, -312
  store i64 %40, i64* %6, align 8
  %41 = icmp ult i64 %37, 264
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %42, i8* %43, align 1
  %44 = trunc i64 %40 to i32
  %45 = and i32 %44, 255
  %46 = tail call i32 @llvm.ctpop.i32(i32 %45)
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = xor i8 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %49, i8* %50, align 1
  %51 = xor i64 %37, %40
  %52 = lshr i64 %51, 4
  %53 = trunc i64 %52 to i8
  %54 = and i8 %53, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %54, i8* %55, align 1
  %56 = icmp eq i64 %40, 0
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %57, i8* %58, align 1
  %59 = lshr i64 %40, 63
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %60, i8* %61, align 1
  %62 = lshr i64 %37, 63
  %63 = xor i64 %59, %62
  %64 = add nuw nsw i64 %63, %62
  %65 = icmp eq i64 %64, 2
  %66 = zext i1 %65 to i8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %66, i8* %67, align 1
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX.i1215 = bitcast %union.anon* %68 to i16*
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI.i1216 = bitcast %union.anon* %69 to i16*
  %70 = load i16, i16* %SI.i1216, align 2
  store i16 %70, i16* %AX.i1215, align 2
  %RSI.i1321 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, 72
  %73 = add i64 %39, 13
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %72 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %RSI.i1321, align 8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i1318 = bitcast %union.anon* %77 to i32*
  %78 = getelementptr inbounds %union.anon, %union.anon* %77, i64 0, i32 0
  %79 = add i64 %71, 64
  %80 = add i64 %39, 17
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %79 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = zext i32 %82 to i64
  store i64 %83, i64* %78, align 8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i1315 = bitcast %union.anon* %84 to i32*
  %85 = getelementptr inbounds %union.anon, %union.anon* %84, i64 0, i32 0
  %86 = add i64 %71, 56
  %87 = add i64 %39, 21
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %86 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = zext i32 %89 to i64
  store i64 %90, i64* %85, align 8
  %91 = add i64 %71, 48
  %92 = add i64 %39, 24
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RBX.i918, align 8
  %96 = add i64 %71, 40
  %97 = add i64 %39, 28
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %R14.i840, align 8
  %100 = add i64 %71, 32
  %101 = add i64 %39, 32
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i64*
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %R15.i320, align 8
  %R12W.i1303 = bitcast %union.anon* %27 to i16*
  %104 = add i64 %71, 24
  %105 = add i64 %39, 37
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i16*
  %107 = load i16, i16* %106, align 2
  store i16 %107, i16* %R12W.i1303, align 2
  %R13W.i1300 = bitcast %union.anon* %21 to i16*
  %108 = add i64 %71, 16
  %109 = add i64 %39, 42
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %108 to i16*
  %111 = load i16, i16* %110, align 2
  store i16 %111, i16* %R13W.i1300, align 2
  %RDI.i1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %112 = add i64 %71, -48
  %113 = load i64, i64* %RDI.i1297, align 8
  %114 = add i64 %39, 46
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %112 to i64*
  store i64 %113, i64* %115, align 8
  %116 = load i64, i64* %RBP.i, align 8
  %117 = add i64 %116, -50
  %118 = load i16, i16* %AX.i1215, align 2
  %119 = load i64, i64* %3, align 8
  %120 = add i64 %119, 4
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %117 to i16*
  store i16 %118, i16* %121, align 2
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1291 = bitcast %union.anon* %122 to i32*
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -56
  %125 = load i32, i32* %EDX.i1291, align 4
  %126 = load i64, i64* %3, align 8
  %127 = add i64 %126, 3
  store i64 %127, i64* %3, align 8
  %128 = inttoptr i64 %124 to i32*
  store i32 %125, i32* %128, align 4
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i1288 = bitcast %union.anon* %129 to i32*
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -60
  %132 = load i32, i32* %ECX.i1288, align 4
  %133 = load i64, i64* %3, align 8
  %134 = add i64 %133, 3
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %131 to i32*
  store i32 %132, i32* %135, align 4
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1285 = bitcast %union.anon* %136 to i32*
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -64
  %139 = load i32, i32* %R8D.i1285, align 4
  %140 = load i64, i64* %3, align 8
  %141 = add i64 %140, 4
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %138 to i32*
  store i32 %139, i32* %142, align 4
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i1282 = bitcast %union.anon* %143 to i32*
  %144 = load i64, i64* %RBP.i, align 8
  %145 = add i64 %144, -68
  %146 = load i32, i32* %R9D.i1282, align 4
  %147 = load i64, i64* %3, align 8
  %148 = add i64 %147, 4
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %145 to i32*
  store i32 %146, i32* %149, align 4
  %150 = load i64, i64* %RBP.i, align 8
  %151 = add i64 %150, -70
  %152 = load i16, i16* %R13W.i1300, align 2
  %153 = load i64, i64* %3, align 8
  %154 = add i64 %153, 5
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %151 to i16*
  store i16 %152, i16* %155, align 2
  %156 = load i64, i64* %RBP.i, align 8
  %157 = add i64 %156, -72
  %158 = load i16, i16* %R12W.i1303, align 2
  %159 = load i64, i64* %3, align 8
  %160 = add i64 %159, 5
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %157 to i16*
  store i16 %158, i16* %161, align 2
  %162 = load i64, i64* %RBP.i, align 8
  %163 = add i64 %162, -80
  %164 = load i64, i64* %R15.i320, align 8
  %165 = load i64, i64* %3, align 8
  %166 = add i64 %165, 4
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %163 to i64*
  store i64 %164, i64* %167, align 8
  %168 = load i64, i64* %RBP.i, align 8
  %169 = add i64 %168, -88
  %170 = load i64, i64* %R14.i840, align 8
  %171 = load i64, i64* %3, align 8
  %172 = add i64 %171, 4
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %169 to i64*
  store i64 %170, i64* %173, align 8
  %EBX.i1269 = bitcast %union.anon* %33 to i32*
  %174 = load i64, i64* %RBP.i, align 8
  %175 = add i64 %174, -92
  %176 = load i32, i32* %EBX.i1269, align 4
  %177 = load i64, i64* %3, align 8
  %178 = add i64 %177, 3
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %175 to i32*
  store i32 %176, i32* %179, align 4
  %180 = load i64, i64* %RBP.i, align 8
  %181 = add i64 %180, -96
  %182 = load i32, i32* %R11D.i1315, align 4
  %183 = load i64, i64* %3, align 8
  %184 = add i64 %183, 4
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %181 to i32*
  store i32 %182, i32* %185, align 4
  %186 = load i64, i64* %RBP.i, align 8
  %187 = add i64 %186, -100
  %188 = load i32, i32* %R10D.i1318, align 4
  %189 = load i64, i64* %3, align 8
  %190 = add i64 %189, 4
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %187 to i32*
  store i32 %188, i32* %191, align 4
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %193 = load i64, i64* %RBP.i, align 8
  %194 = add i64 %193, -112
  %195 = load i64, i64* %3, align 8
  %196 = add i64 %195, 5
  store i64 %196, i64* %3, align 8
  %197 = bitcast [32 x %union.VectorReg]* %192 to double*
  %198 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %192, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %199 = load i64, i64* %198, align 1
  %200 = inttoptr i64 %194 to i64*
  store i64 %199, i64* %200, align 8
  %ESI.i1258 = bitcast %union.anon* %69 to i32*
  %201 = load i64, i64* %RBP.i, align 8
  %202 = add i64 %201, -116
  %203 = load i32, i32* %ESI.i1258, align 4
  %204 = load i64, i64* %3, align 8
  %205 = add i64 %204, 3
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %202 to i32*
  store i32 %203, i32* %206, align 4
  %207 = load i64, i64* %3, align 8
  %208 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %208, i64* %RDI.i1297, align 8
  %209 = add i64 %208, 72400
  %210 = add i64 %207, 15
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %209 to i32*
  %212 = load i32, i32* %211, align 4
  store i8 0, i8* %43, align 1
  %213 = and i32 %212, 255
  %214 = tail call i32 @llvm.ctpop.i32(i32 %213)
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  store i8 %217, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %218 = icmp eq i32 %212, 0
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %58, align 1
  %220 = lshr i32 %212, 31
  %221 = trunc i32 %220 to i8
  store i8 %221, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v65 = select i1 %218, i64 126, i64 21
  %222 = add i64 %207, %.v65
  store i64 %222, i64* %3, align 8
  %RAX.i1202.phi.trans.insert = getelementptr inbounds %union.anon, %union.anon* %68, i64 0, i32 0
  br i1 %218, label %entry.block_.L_423ca0_crit_edge, label %block_423c37

entry.block_.L_423ca0_crit_edge:                  ; preds = %entry
  %.pre60 = getelementptr inbounds %union.anon, %union.anon* %129, i64 0, i32 0
  br label %block_.L_423ca0

block_423c37:                                     ; preds = %entry
  store i64 %208, i64* %RAX.i1202.phi.trans.insert, align 8
  %223 = add i64 %208, 14168
  %224 = add i64 %222, 15
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %223 to i64*
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %RAX.i1202.phi.trans.insert, align 8
  %RCX.i1247 = getelementptr inbounds %union.anon, %union.anon* %129, i64 0, i32 0
  store i64 %208, i64* %RCX.i1247, align 8
  %227 = add i64 %208, 12
  %228 = add i64 %222, 27
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = mul nsw i64 %231, 632
  store i64 %232, i64* %RCX.i1247, align 8
  %233 = lshr i64 %232, 63
  %234 = add i64 %232, %226
  store i64 %234, i64* %RAX.i1202.phi.trans.insert, align 8
  %235 = icmp ult i64 %234, %226
  %236 = icmp ult i64 %234, %232
  %237 = or i1 %235, %236
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %43, align 1
  %239 = trunc i64 %234 to i32
  %240 = and i32 %239, 255
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240)
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  store i8 %244, i8* %50, align 1
  %245 = xor i64 %232, %226
  %246 = xor i64 %245, %234
  %247 = lshr i64 %246, 4
  %248 = trunc i64 %247 to i8
  %249 = and i8 %248, 1
  store i8 %249, i8* %55, align 1
  %250 = icmp eq i64 %234, 0
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %58, align 1
  %252 = lshr i64 %234, 63
  %253 = trunc i64 %252 to i8
  store i8 %253, i8* %61, align 1
  %254 = lshr i64 %226, 63
  %255 = xor i64 %252, %254
  %256 = xor i64 %252, %233
  %257 = add nuw nsw i64 %255, %256
  %258 = icmp eq i64 %257, 2
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %67, align 1
  %260 = add i64 %234, 532
  %261 = add i64 %222, 44
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to i32*
  %263 = load i32, i32* %262, align 4
  store i8 0, i8* %43, align 1
  %264 = and i32 %263, 255
  %265 = tail call i32 @llvm.ctpop.i32(i32 %264)
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = xor i8 %267, 1
  store i8 %268, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %269 = icmp eq i32 %263, 0
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %58, align 1
  %271 = lshr i32 %263, 31
  %272 = trunc i32 %271 to i8
  store i8 %272, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v66 = select i1 %269, i64 105, i64 50
  %273 = add i64 %222, %.v66
  store i64 %273, i64* %3, align 8
  br i1 %269, label %block_.L_423ca0, label %block_423c69

block_423c69:                                     ; preds = %block_423c37
  store i64 2, i64* %RAX.i1202.phi.trans.insert, align 8
  store i64 4, i64* %RCX.i1247, align 8
  %RDX.i1231 = getelementptr inbounds %union.anon, %union.anon* %122, i64 0, i32 0
  %274 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %274, i64* %RDX.i1231, align 8
  %275 = add i64 %274, 12
  %276 = add i64 %273, 21
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RSI.i1321, align 8
  %280 = load i64, i64* %RBP.i, align 8
  %281 = add i64 %280, -240
  %282 = add i64 %273, 27
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to i32*
  store i32 2, i32* %283, align 4
  %284 = load i32, i32* %ESI.i1258, align 4
  %285 = zext i32 %284 to i64
  %286 = load i64, i64* %3, align 8
  store i64 %285, i64* %RAX.i1202.phi.trans.insert, align 8
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %288 = sext i32 %284 to i64
  %289 = lshr i64 %288, 32
  store i64 %289, i64* %287, align 8
  %290 = load i64, i64* %RBP.i, align 8
  %291 = add i64 %290, -240
  %292 = add i64 %286, 9
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %RSI.i1321, align 8
  %296 = add i64 %286, 11
  store i64 %296, i64* %3, align 8
  %297 = sext i32 %294 to i64
  %298 = shl nuw i64 %289, 32
  %299 = or i64 %298, %285
  %300 = sdiv i64 %299, %297
  %301 = shl i64 %300, 32
  %302 = ashr exact i64 %301, 32
  %303 = icmp eq i64 %300, %302
  br i1 %303, label %306, label %304

; <label>:304:                                    ; preds = %block_423c69
  %305 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %296, %struct.Memory* %2)
  %.pre = load i32, i32* %EDX.i1291, align 4
  %.pre33 = load i64, i64* %3, align 8
  %.pre34 = load i64, i64* %RSI.i1321, align 8
  %.pre35 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:306:                                    ; preds = %block_423c69
  %307 = srem i64 %299, %297
  %308 = and i64 %300, 4294967295
  store i64 %308, i64* %RAX.i1202.phi.trans.insert, align 8
  %309 = and i64 %307, 4294967295
  store i64 %309, i64* %RDX.i1231, align 8
  store i8 0, i8* %43, align 1
  store i8 0, i8* %50, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %310 = trunc i64 %307 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %306, %304
  %311 = phi i64 [ %.pre35, %304 ], [ %290, %306 ]
  %312 = phi i64 [ %.pre34, %304 ], [ %295, %306 ]
  %313 = phi i64 [ %.pre33, %304 ], [ %296, %306 ]
  %314 = phi i32 [ %.pre, %304 ], [ %310, %306 ]
  %315 = phi %struct.Memory* [ %305, %304 ], [ %2, %306 ]
  store i8 0, i8* %43, align 1
  %316 = and i32 %314, 255
  %317 = tail call i32 @llvm.ctpop.i32(i32 %316)
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  %320 = xor i8 %319, 1
  store i8 %320, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %321 = icmp eq i32 %314, 0
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %58, align 1
  %323 = lshr i32 %314, 31
  %324 = trunc i32 %323 to i8
  store i8 %324, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %325 = load i32, i32* %ECX.i1288, align 4
  %326 = zext i32 %325 to i64
  %327 = select i1 %321, i64 %312, i64 %326
  %328 = and i64 %327, 4294967295
  store i64 %328, i64* %RSI.i1321, align 8
  %329 = add i64 %311, -244
  %330 = trunc i64 %327 to i32
  %331 = add i64 %313, 12
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %329 to i32*
  store i32 %330, i32* %332, align 4
  %333 = load i64, i64* %3, align 8
  %334 = add i64 %333, 18
  br label %block_.L_423cad

block_.L_423ca0:                                  ; preds = %entry.block_.L_423ca0_crit_edge, %block_423c37
  %.pre58.pre-phi = phi i64* [ %.pre60, %entry.block_.L_423ca0_crit_edge ], [ %RCX.i1247, %block_423c37 ]
  %335 = phi i64 [ %222, %entry.block_.L_423ca0_crit_edge ], [ %273, %block_423c37 ]
  store i64 0, i64* %RAX.i1202.phi.trans.insert, align 8
  store i8 0, i8* %43, align 1
  store i8 1, i8* %50, align 1
  store i8 1, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  store i8 0, i8* %55, align 1
  %336 = load i64, i64* %RBP.i, align 8
  %337 = add i64 %336, -244
  %338 = add i64 %335, 8
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i32*
  store i32 0, i32* %339, align 4
  %340 = load i64, i64* %3, align 8
  %341 = add i64 %340, 5
  store i64 %341, i64* %3, align 8
  %.pre59 = getelementptr inbounds %union.anon, %union.anon* %122, i64 0, i32 0
  br label %block_.L_423cad

block_.L_423cad:                                  ; preds = %block_.L_423ca0, %routine_idivl__esi.exit
  %RDX.i1174.pre-phi = phi i64* [ %.pre59, %block_.L_423ca0 ], [ %RDX.i1231, %routine_idivl__esi.exit ]
  %RCX.i1180.pre-phi = phi i64* [ %.pre58.pre-phi, %block_.L_423ca0 ], [ %RCX.i1247, %routine_idivl__esi.exit ]
  %storemerge = phi i64 [ %341, %block_.L_423ca0 ], [ %334, %routine_idivl__esi.exit ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_.L_423ca0 ], [ %315, %routine_idivl__esi.exit ]
  %EAX.i1188.pre-phi = bitcast %union.anon* %68 to i32*
  %342 = load i64, i64* %RBP.i, align 8
  %343 = add i64 %342, -244
  %344 = add i64 %storemerge, 6
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i32*
  %346 = load i32, i32* %345, align 4
  %347 = zext i32 %346 to i64
  store i64 %347, i64* %RAX.i1202.phi.trans.insert, align 8
  %348 = add i64 %storemerge, add (i64 ptrtoint (%G_0x8dbcd__rip__type* @G_0x8dbcd__rip_ to i64), i64 6)
  %349 = add i64 %storemerge, 14
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i64*
  %351 = load i64, i64* %350, align 8
  store i64 %351, i64* %198, align 1
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %353 = bitcast i64* %352 to double*
  store double 0.000000e+00, double* %353, align 1
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %355 = add i64 %storemerge, add (i64 ptrtoint (%G_0x8dbcd__rip__type* @G_0x8dbcd__rip_ to i64), i64 14)
  %356 = add i64 %storemerge, 22
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i64*
  %358 = load i64, i64* %357, align 8
  %359 = bitcast %union.VectorReg* %354 to double*
  %360 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %354, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %358, i64* %360, align 1
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %362 = bitcast i64* %361 to double*
  store double 0.000000e+00, double* %362, align 1
  %363 = add i64 %342, -132
  %364 = add i64 %storemerge, 28
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i32*
  store i32 %346, i32* %365, align 4
  %366 = load i64, i64* %RBP.i, align 8
  %367 = add i64 %366, -56
  %368 = load i64, i64* %3, align 8
  %369 = add i64 %368, 3
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %367 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %RAX.i1202.phi.trans.insert, align 8
  %373 = add i64 %366, -132
  %374 = add i64 %368, 9
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = add i32 %376, %371
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %RAX.i1202.phi.trans.insert, align 8
  %379 = icmp ult i32 %377, %371
  %380 = icmp ult i32 %377, %376
  %381 = or i1 %379, %380
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %43, align 1
  %383 = and i32 %377, 255
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383)
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %50, align 1
  %388 = xor i32 %376, %371
  %389 = xor i32 %388, %377
  %390 = lshr i32 %389, 4
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  store i8 %392, i8* %55, align 1
  %393 = icmp eq i32 %377, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %58, align 1
  %395 = lshr i32 %377, 31
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %61, align 1
  %397 = lshr i32 %371, 31
  %398 = lshr i32 %376, 31
  %399 = xor i32 %395, %397
  %400 = xor i32 %395, %398
  %401 = add nuw nsw i32 %399, %400
  %402 = icmp eq i32 %401, 2
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %67, align 1
  %404 = sext i32 %377 to i64
  store i64 %404, i64* %RCX.i1180.pre-phi, align 8
  %405 = shl nsw i64 %404, 3
  %406 = add nsw i64 %405, 7482144
  %407 = add i64 %368, 20
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i64*
  %409 = load i64, i64* %408, align 8
  store i64 %409, i64* %RCX.i1180.pre-phi, align 8
  %410 = add i64 %366, -50
  %411 = add i64 %368, 25
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i16*
  %413 = load i16, i16* %412, align 2
  %414 = sext i16 %413 to i64
  store i64 %414, i64* %RDX.i1174.pre-phi, align 8
  %415 = shl nsw i64 %414, 3
  %416 = add i64 %415, %409
  %417 = add i64 %368, 29
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to i64*
  %419 = load i64, i64* %418, align 8
  store i64 %419, i64* %RCX.i1180.pre-phi, align 8
  %420 = add i64 %366, -144
  %421 = add i64 %368, 36
  store i64 %421, i64* %3, align 8
  %422 = inttoptr i64 %420 to i64*
  store i64 %419, i64* %422, align 8
  %423 = load i64, i64* %RBP.i, align 8
  %424 = add i64 %423, -112
  %425 = load i64, i64* %3, align 8
  %426 = add i64 %425, 5
  store i64 %426, i64* %3, align 8
  %427 = load double, double* %359, align 1
  %428 = inttoptr i64 %424 to double*
  %429 = load double, double* %428, align 8
  %430 = fmul double %427, %429
  %431 = load double, double* %197, align 1
  %432 = fadd double %430, %431
  store double %432, double* %359, align 1
  %433 = tail call double @llvm.trunc.f64(double %432)
  %434 = tail call double @llvm.fabs.f64(double %433)
  %435 = fcmp ogt double %434, 0x41DFFFFFFFC00000
  %436 = fptosi double %433 to i32
  %437 = zext i32 %436 to i64
  %438 = select i1 %435, i64 2147483648, i64 %437
  store i64 %438, i64* %RAX.i1202.phi.trans.insert, align 8
  %439 = add i64 %423, -148
  %440 = trunc i64 %438 to i32
  %441 = add i64 %425, 19
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %439 to i32*
  store i32 %440, i32* %442, align 4
  %443 = load i64, i64* %RBP.i, align 8
  %444 = add i64 %443, -152
  %445 = load i64, i64* %3, align 8
  %446 = add i64 %445, 10
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %444 to i32*
  store i32 0, i32* %447, align 4
  %448 = load i64, i64* %3, align 8
  %449 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %449, i64* %RCX.i1180.pre-phi, align 8
  %450 = load i64, i64* %RBP.i, align 8
  %451 = add i64 %450, -68
  %452 = add i64 %448, 12
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i32*
  %454 = load i32, i32* %453, align 4
  %455 = sext i32 %454 to i64
  store i64 %455, i64* %RDX.i1174.pre-phi, align 8
  %456 = shl nsw i64 %455, 3
  %457 = add i64 %449, 80
  %458 = add i64 %457, %456
  %459 = add i64 %448, 16
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = zext i32 %461 to i64
  store i64 %462, i64* %RAX.i1202.phi.trans.insert, align 8
  %463 = add i64 %450, -156
  %464 = add i64 %448, 22
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %463 to i32*
  store i32 %461, i32* %465, align 4
  %466 = load i64, i64* %3, align 8
  %467 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %467, i64* %RCX.i1180.pre-phi, align 8
  %468 = load i64, i64* %RBP.i, align 8
  %469 = add i64 %468, -68
  %470 = add i64 %466, 12
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %469 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = sext i32 %472 to i64
  store i64 %473, i64* %RDX.i1174.pre-phi, align 8
  %474 = shl nsw i64 %473, 3
  %475 = add i64 %467, 84
  %476 = add i64 %475, %474
  %477 = add i64 %466, 16
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i32*
  %479 = load i32, i32* %478, align 4
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RAX.i1202.phi.trans.insert, align 8
  %481 = add i64 %468, -160
  %482 = add i64 %466, 22
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to i32*
  store i32 %479, i32* %483, align 4
  %484 = load i64, i64* %RBP.i, align 8
  %485 = add i64 %484, -60
  %486 = load i64, i64* %3, align 8
  %487 = add i64 %486, 3
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %485 to i32*
  %489 = load i32, i32* %488, align 4
  %490 = shl i32 %489, 2
  %491 = zext i32 %490 to i64
  store i64 %491, i64* %RAX.i1202.phi.trans.insert, align 8
  %492 = lshr i32 %489, 30
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  store i8 %494, i8* %43, align 1
  %495 = and i32 %490, 252
  %496 = tail call i32 @llvm.ctpop.i32(i32 %495)
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  store i8 %499, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %500 = icmp eq i32 %490, 0
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %58, align 1
  %502 = lshr i32 %489, 29
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  store i8 %504, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %505 = add i64 %484, -164
  %506 = add i64 %486, 12
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %505 to i32*
  store i32 %490, i32* %507, align 4
  %508 = load i64, i64* %RBP.i, align 8
  %509 = add i64 %508, -64
  %510 = load i64, i64* %3, align 8
  %511 = add i64 %510, 3
  store i64 %511, i64* %3, align 8
  %512 = inttoptr i64 %509 to i32*
  %513 = load i32, i32* %512, align 4
  %514 = shl i32 %513, 2
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RAX.i1202.phi.trans.insert, align 8
  %516 = lshr i32 %513, 30
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  store i8 %518, i8* %43, align 1
  %519 = and i32 %514, 252
  %520 = tail call i32 @llvm.ctpop.i32(i32 %519)
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = xor i8 %522, 1
  store i8 %523, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %524 = icmp eq i32 %514, 0
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %58, align 1
  %526 = lshr i32 %513, 29
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  store i8 %528, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %529 = add i64 %508, -168
  %530 = add i64 %510, 12
  store i64 %530, i64* %3, align 8
  %531 = inttoptr i64 %529 to i32*
  store i32 %514, i32* %531, align 4
  %532 = load i64, i64* %RBP.i, align 8
  %533 = add i64 %532, -144
  %534 = load i64, i64* %3, align 8
  %535 = add i64 %534, 7
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %533 to i64*
  %537 = load i64, i64* %536, align 8
  store i64 %537, i64* %RCX.i1180.pre-phi, align 8
  %538 = add i64 %537, 6392
  %539 = add i64 %534, 13
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i32*
  %541 = load i32, i32* %540, align 4
  %542 = zext i32 %541 to i64
  store i64 %542, i64* %RAX.i1202.phi.trans.insert, align 8
  %543 = add i64 %532, -156
  %544 = add i64 %534, 19
  store i64 %544, i64* %3, align 8
  %545 = inttoptr i64 %543 to i32*
  %546 = load i32, i32* %545, align 4
  %547 = sub i32 %541, %546
  %548 = add i32 %547, 1
  %549 = shl i32 %548, 2
  %550 = zext i32 %549 to i64
  store i64 %550, i64* %RAX.i1202.phi.trans.insert, align 8
  %551 = lshr i32 %548, 30
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  store i8 %553, i8* %43, align 1
  %554 = and i32 %549, 252
  %555 = tail call i32 @llvm.ctpop.i32(i32 %554)
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  store i8 %558, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %559 = icmp eq i32 %549, 0
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %58, align 1
  %561 = lshr i32 %548, 29
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  store i8 %563, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %564 = load i64, i64* %RBP.i, align 8
  %565 = add i64 %564, -172
  %566 = add i64 %534, 31
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %565 to i32*
  store i32 %549, i32* %567, align 4
  %568 = load i64, i64* %RBP.i, align 8
  %569 = add i64 %568, -144
  %570 = load i64, i64* %3, align 8
  %571 = add i64 %570, 7
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %569 to i64*
  %573 = load i64, i64* %572, align 8
  store i64 %573, i64* %RCX.i1180.pre-phi, align 8
  %574 = add i64 %573, 6396
  %575 = add i64 %570, 13
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i32*
  %577 = load i32, i32* %576, align 4
  %578 = zext i32 %577 to i64
  store i64 %578, i64* %RAX.i1202.phi.trans.insert, align 8
  %579 = add i64 %568, -160
  %580 = add i64 %570, 19
  store i64 %580, i64* %3, align 8
  %581 = inttoptr i64 %579 to i32*
  %582 = load i32, i32* %581, align 4
  %583 = sub i32 %577, %582
  %584 = add i32 %583, 1
  %585 = shl i32 %584, 2
  %586 = zext i32 %585 to i64
  store i64 %586, i64* %RAX.i1202.phi.trans.insert, align 8
  %587 = lshr i32 %584, 30
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  store i8 %589, i8* %43, align 1
  %590 = and i32 %585, 252
  %591 = tail call i32 @llvm.ctpop.i32(i32 %590)
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  store i8 %594, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %595 = icmp eq i32 %585, 0
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %58, align 1
  %597 = lshr i32 %584, 29
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  store i8 %599, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %600 = load i64, i64* %RBP.i, align 8
  %601 = add i64 %600, -176
  %602 = add i64 %570, 31
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  store i32 %585, i32* %603, align 4
  %604 = load i64, i64* %RBP.i, align 8
  %605 = add i64 %604, -204
  %606 = load i64, i64* %3, align 8
  %607 = add i64 %606, 10
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %605 to i32*
  store i32 0, i32* %608, align 4
  %609 = load i64, i64* %RBP.i, align 8
  %610 = add i64 %609, -208
  %611 = load i64, i64* %3, align 8
  %612 = add i64 %611, 10
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %610 to i32*
  store i32 0, i32* %613, align 4
  %614 = load i64, i64* %RBP.i, align 8
  %615 = add i64 %614, -80
  %616 = load i64, i64* %3, align 8
  %617 = add i64 %616, 4
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %615 to i64*
  %619 = load i64, i64* %618, align 8
  store i64 %619, i64* %RCX.i1180.pre-phi, align 8
  %620 = add i64 %616, 7
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %619 to i16*
  %622 = load i16, i16* %621, align 2
  %.tr21 = sext i16 %622 to i32
  %623 = shl nsw i32 %.tr21, 2
  %624 = zext i32 %623 to i64
  store i64 %624, i64* %RAX.i1202.phi.trans.insert, align 8
  %.lobit = lshr i16 %622, 15
  %625 = trunc i16 %.lobit to i8
  store i8 %625, i8* %43, align 1
  %626 = and i32 %623, 252
  %627 = tail call i32 @llvm.ctpop.i32(i32 %626)
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  store i8 %630, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %631 = icmp eq i16 %622, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %58, align 1
  %633 = lshr i32 %.tr21, 29
  %634 = trunc i32 %633 to i8
  %635 = and i8 %634, 1
  store i8 %635, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %636 = trunc i32 %623 to i16
  store i16 %636, i16* %SI.i1216, align 2
  %637 = add i64 %616, 16
  store i64 %637, i64* %3, align 8
  store i16 %636, i16* %621, align 2
  %638 = load i64, i64* %RBP.i, align 8
  %639 = add i64 %638, -88
  %640 = load i64, i64* %3, align 8
  %641 = add i64 %640, 4
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %639 to i64*
  %643 = load i64, i64* %642, align 8
  store i64 %643, i64* %RCX.i1180.pre-phi, align 8
  %644 = add i64 %640, 7
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i16*
  %646 = load i16, i16* %645, align 2
  %.tr22 = sext i16 %646 to i32
  %647 = shl nsw i32 %.tr22, 2
  %648 = zext i32 %647 to i64
  store i64 %648, i64* %RAX.i1202.phi.trans.insert, align 8
  %.lobit23 = lshr i16 %646, 15
  %649 = trunc i16 %.lobit23 to i8
  store i8 %649, i8* %43, align 1
  %650 = and i32 %647, 252
  %651 = tail call i32 @llvm.ctpop.i32(i32 %650)
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  %654 = xor i8 %653, 1
  store i8 %654, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %655 = icmp eq i16 %646, 0
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %58, align 1
  %657 = lshr i32 %.tr22, 29
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  store i8 %659, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %660 = trunc i32 %647 to i16
  store i16 %660, i16* %SI.i1216, align 2
  %661 = add i64 %640, 16
  store i64 %661, i64* %3, align 8
  store i16 %660, i16* %645, align 2
  %662 = load i64, i64* %RBP.i, align 8
  %663 = add i64 %662, -164
  %664 = load i64, i64* %3, align 8
  %665 = add i64 %664, 6
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %663 to i32*
  %667 = load i32, i32* %666, align 4
  %668 = zext i32 %667 to i64
  store i64 %668, i64* %RAX.i1202.phi.trans.insert, align 8
  %669 = add i64 %662, -80
  %670 = add i64 %664, 10
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i64*
  %672 = load i64, i64* %671, align 8
  store i64 %672, i64* %RCX.i1180.pre-phi, align 8
  %673 = add i64 %664, 13
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %672 to i16*
  %675 = load i16, i16* %674, align 2
  %676 = sext i16 %675 to i64
  %677 = and i64 %676, 4294967295
  store i64 %677, i64* %RDI.i1297, align 8
  %678 = sext i16 %675 to i32
  %679 = add i32 %678, %667
  %680 = zext i32 %679 to i64
  store i64 %680, i64* %RAX.i1202.phi.trans.insert, align 8
  %681 = icmp eq i32 %679, 0
  %682 = zext i1 %681 to i8
  %683 = lshr i32 %679, 31
  %684 = add i32 %679, -1
  store i8 %682, i8* %43, align 1
  %685 = and i32 %684, 255
  %686 = tail call i32 @llvm.ctpop.i32(i32 %685)
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  store i8 %689, i8* %50, align 1
  %690 = xor i32 %684, %679
  %691 = lshr i32 %690, 4
  %692 = trunc i32 %691 to i8
  %693 = and i8 %692, 1
  store i8 %693, i8* %55, align 1
  %694 = icmp eq i32 %684, 0
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %58, align 1
  %696 = lshr i32 %684, 31
  %697 = trunc i32 %696 to i8
  store i8 %697, i8* %61, align 1
  %698 = xor i32 %696, %683
  %699 = add nuw nsw i32 %698, %683
  %700 = icmp eq i32 %699, 2
  %701 = zext i1 %700 to i8
  store i8 %701, i8* %67, align 1
  %702 = icmp ne i8 %697, 0
  %703 = xor i1 %702, %700
  %704 = or i1 %694, %703
  %.v67 = select i1 %704, i64 135, i64 24
  %705 = add i64 %664, %.v67
  store i64 %705, i64* %3, align 8
  br i1 %704, label %block_.L_423e47, label %block_423dd8

block_423dd8:                                     ; preds = %block_.L_423cad
  %706 = add i64 %705, 6
  store i64 %706, i64* %3, align 8
  %707 = load i32, i32* %666, align 4
  %708 = zext i32 %707 to i64
  store i64 %708, i64* %RAX.i1202.phi.trans.insert, align 8
  %709 = add i64 %705, 10
  store i64 %709, i64* %3, align 8
  %710 = load i64, i64* %671, align 8
  store i64 %710, i64* %RCX.i1180.pre-phi, align 8
  %711 = add i64 %705, 13
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i16*
  %713 = load i16, i16* %712, align 2
  %714 = sext i16 %713 to i64
  %715 = and i64 %714, 4294967295
  store i64 %715, i64* %RDX.i1174.pre-phi, align 8
  %716 = sext i16 %713 to i32
  %717 = add i32 %716, %707
  %718 = zext i32 %717 to i64
  store i64 %718, i64* %RAX.i1202.phi.trans.insert, align 8
  %719 = icmp ult i32 %717, %707
  %720 = icmp ult i32 %717, %716
  %721 = or i1 %719, %720
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %43, align 1
  %723 = and i32 %717, 255
  %724 = tail call i32 @llvm.ctpop.i32(i32 %723)
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  %727 = xor i8 %726, 1
  store i8 %727, i8* %50, align 1
  %728 = xor i32 %716, %707
  %729 = xor i32 %728, %717
  %730 = lshr i32 %729, 4
  %731 = trunc i32 %730 to i8
  %732 = and i8 %731, 1
  store i8 %732, i8* %55, align 1
  %733 = icmp eq i32 %717, 0
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %58, align 1
  %735 = lshr i32 %717, 31
  %736 = trunc i32 %735 to i8
  store i8 %736, i8* %61, align 1
  %737 = lshr i32 %707, 31
  %738 = lshr i32 %716, 31
  %739 = xor i32 %735, %737
  %740 = xor i32 %735, %738
  %741 = add nuw nsw i32 %739, %740
  %742 = icmp eq i32 %741, 2
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %67, align 1
  %744 = add i64 %662, -172
  %745 = add i64 %705, 21
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i32*
  %747 = load i32, i32* %746, align 4
  %748 = add i32 %747, -2
  %749 = zext i32 %748 to i64
  store i64 %749, i64* %RDX.i1174.pre-phi, align 8
  %750 = lshr i32 %748, 31
  %751 = sub i32 %717, %748
  %752 = icmp ult i32 %717, %748
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %43, align 1
  %754 = and i32 %751, 255
  %755 = tail call i32 @llvm.ctpop.i32(i32 %754)
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = xor i8 %757, 1
  store i8 %758, i8* %50, align 1
  %759 = xor i32 %748, %717
  %760 = xor i32 %759, %751
  %761 = lshr i32 %760, 4
  %762 = trunc i32 %761 to i8
  %763 = and i8 %762, 1
  store i8 %763, i8* %55, align 1
  %764 = icmp eq i32 %751, 0
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %58, align 1
  %766 = lshr i32 %751, 31
  %767 = trunc i32 %766 to i8
  store i8 %767, i8* %61, align 1
  %768 = xor i32 %750, %735
  %769 = xor i32 %766, %735
  %770 = add nuw nsw i32 %769, %768
  %771 = icmp eq i32 %770, 2
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %67, align 1
  %773 = icmp ne i8 %767, 0
  %774 = xor i1 %773, %771
  %.v68 = select i1 %774, i64 32, i64 111
  %775 = add i64 %705, %.v68
  store i64 %775, i64* %3, align 8
  br i1 %774, label %block_423df8, label %block_.L_423e47

block_423df8:                                     ; preds = %block_423dd8
  %776 = load i64, i64* %RBP.i, align 8
  %777 = add i64 %776, -168
  %778 = add i64 %775, 6
  store i64 %778, i64* %3, align 8
  %779 = inttoptr i64 %777 to i32*
  %780 = load i32, i32* %779, align 4
  %781 = zext i32 %780 to i64
  store i64 %781, i64* %RAX.i1202.phi.trans.insert, align 8
  %782 = add i64 %776, -88
  %783 = add i64 %775, 10
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i64*
  %785 = load i64, i64* %784, align 8
  store i64 %785, i64* %RCX.i1180.pre-phi, align 8
  %786 = add i64 %775, 13
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %785 to i16*
  %788 = load i16, i16* %787, align 2
  %789 = sext i16 %788 to i64
  %790 = and i64 %789, 4294967295
  store i64 %790, i64* %RDX.i1174.pre-phi, align 8
  %791 = sext i16 %788 to i32
  %792 = add i32 %791, %780
  %793 = zext i32 %792 to i64
  store i64 %793, i64* %RAX.i1202.phi.trans.insert, align 8
  %794 = icmp eq i32 %792, 0
  %795 = zext i1 %794 to i8
  %796 = lshr i32 %792, 31
  %797 = add i32 %792, -1
  store i8 %795, i8* %43, align 1
  %798 = and i32 %797, 255
  %799 = tail call i32 @llvm.ctpop.i32(i32 %798)
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  %802 = xor i8 %801, 1
  store i8 %802, i8* %50, align 1
  %803 = xor i32 %797, %792
  %804 = lshr i32 %803, 4
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  store i8 %806, i8* %55, align 1
  %807 = icmp eq i32 %797, 0
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %58, align 1
  %809 = lshr i32 %797, 31
  %810 = trunc i32 %809 to i8
  store i8 %810, i8* %61, align 1
  %811 = xor i32 %809, %796
  %812 = add nuw nsw i32 %811, %796
  %813 = icmp eq i32 %812, 2
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %67, align 1
  %815 = icmp ne i8 %810, 0
  %816 = xor i1 %815, %813
  %817 = or i1 %807, %816
  %.v80 = select i1 %817, i64 79, i64 24
  %818 = add i64 %775, %.v80
  store i64 %818, i64* %3, align 8
  br i1 %817, label %block_.L_423e47, label %block_423e10

block_423e10:                                     ; preds = %block_423df8
  %819 = add i64 %818, 6
  store i64 %819, i64* %3, align 8
  %820 = load i32, i32* %779, align 4
  %821 = zext i32 %820 to i64
  store i64 %821, i64* %RAX.i1202.phi.trans.insert, align 8
  %822 = add i64 %818, 10
  store i64 %822, i64* %3, align 8
  %823 = load i64, i64* %784, align 8
  store i64 %823, i64* %RCX.i1180.pre-phi, align 8
  %824 = add i64 %818, 13
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i16*
  %826 = load i16, i16* %825, align 2
  %827 = sext i16 %826 to i64
  %828 = and i64 %827, 4294967295
  store i64 %828, i64* %RDX.i1174.pre-phi, align 8
  %829 = sext i16 %826 to i32
  %830 = add i32 %829, %820
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %RAX.i1202.phi.trans.insert, align 8
  %832 = icmp ult i32 %830, %820
  %833 = icmp ult i32 %830, %829
  %834 = or i1 %832, %833
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %43, align 1
  %836 = and i32 %830, 255
  %837 = tail call i32 @llvm.ctpop.i32(i32 %836)
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  %840 = xor i8 %839, 1
  store i8 %840, i8* %50, align 1
  %841 = xor i32 %829, %820
  %842 = xor i32 %841, %830
  %843 = lshr i32 %842, 4
  %844 = trunc i32 %843 to i8
  %845 = and i8 %844, 1
  store i8 %845, i8* %55, align 1
  %846 = icmp eq i32 %830, 0
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %58, align 1
  %848 = lshr i32 %830, 31
  %849 = trunc i32 %848 to i8
  store i8 %849, i8* %61, align 1
  %850 = lshr i32 %820, 31
  %851 = lshr i32 %829, 31
  %852 = xor i32 %848, %850
  %853 = xor i32 %848, %851
  %854 = add nuw nsw i32 %852, %853
  %855 = icmp eq i32 %854, 2
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %67, align 1
  %857 = add i64 %776, -176
  %858 = add i64 %818, 21
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i32*
  %860 = load i32, i32* %859, align 4
  %861 = add i32 %860, -2
  %862 = zext i32 %861 to i64
  store i64 %862, i64* %RDX.i1174.pre-phi, align 8
  %863 = lshr i32 %861, 31
  %864 = sub i32 %830, %861
  %865 = icmp ult i32 %830, %861
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %43, align 1
  %867 = and i32 %864, 255
  %868 = tail call i32 @llvm.ctpop.i32(i32 %867)
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = xor i8 %870, 1
  store i8 %871, i8* %50, align 1
  %872 = xor i32 %861, %830
  %873 = xor i32 %872, %864
  %874 = lshr i32 %873, 4
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  store i8 %876, i8* %55, align 1
  %877 = icmp eq i32 %864, 0
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %58, align 1
  %879 = lshr i32 %864, 31
  %880 = trunc i32 %879 to i8
  store i8 %880, i8* %61, align 1
  %881 = xor i32 %863, %848
  %882 = xor i32 %879, %848
  %883 = add nuw nsw i32 %882, %881
  %884 = icmp eq i32 %883, 2
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %67, align 1
  %886 = icmp ne i8 %880, 0
  %887 = xor i1 %886, %884
  %.v81 = select i1 %887, i64 32, i64 55
  %888 = add i64 %818, %.v81
  store i64 %888, i64* %3, align 8
  br i1 %887, label %block_423e30, label %block_.L_423e47

block_423e30:                                     ; preds = %block_423e10
  store i64 ptrtoint (%G__0x49e910_type* @G__0x49e910 to i64), i64* %RAX.i1202.phi.trans.insert, align 8
  store i64 ptrtoint (%G__0x49e910_type* @G__0x49e910 to i64), i64* bitcast (%G_0x6cbf58_type* @G_0x6cbf58 to i64*), align 8
  %889 = add i64 %888, 41
  store i64 %889, i64* %3, align 8
  br label %block_.L_423e59

block_.L_423e47:                                  ; preds = %block_423e10, %block_423dd8, %block_423df8, %block_.L_423cad
  %890 = phi i64 [ %888, %block_423e10 ], [ %775, %block_423dd8 ], [ %818, %block_423df8 ], [ %705, %block_.L_423cad ]
  store i64 ptrtoint (%G__0x49e710_type* @G__0x49e710 to i64), i64* %RAX.i1202.phi.trans.insert, align 8
  %891 = add i64 %890, 18
  store i64 %891, i64* %3, align 8
  store i64 ptrtoint (%G__0x49e710_type* @G__0x49e710 to i64), i64* bitcast (%G_0x6cbf58_type* @G_0x6cbf58 to i64*), align 8
  br label %block_.L_423e59

block_.L_423e59:                                  ; preds = %block_.L_423e47, %block_423e30
  %892 = phi i64 [ %891, %block_.L_423e47 ], [ %889, %block_423e30 ]
  store i64 0, i64* %RSI.i1321, align 8
  store i8 0, i8* %43, align 1
  store i8 1, i8* %50, align 1
  store i8 1, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  store i8 0, i8* %55, align 1
  store i64 4, i64* %RAX.i1202.phi.trans.insert, align 8
  %893 = load i64, i64* %RBP.i, align 8
  %894 = add i64 %893, -180
  %895 = add i64 %892, 17
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i32*
  store i32 3, i32* %896, align 4
  %897 = load i64, i64* %RBP.i, align 8
  %898 = add i64 %897, -70
  %899 = load i64, i64* %3, align 8
  %900 = add i64 %899, 4
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %898 to i16*
  %902 = load i16, i16* %901, align 2
  %903 = sext i16 %902 to i64
  %904 = and i64 %903, 4294967295
  store i64 %904, i64* %RCX.i1180.pre-phi, align 8
  %905 = add i64 %897, -80
  %906 = add i64 %899, 8
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i64*
  %908 = load i64, i64* %907, align 8
  store i64 %908, i64* %RDX.i1174.pre-phi, align 8
  %909 = add i64 %899, 11
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i16*
  %911 = load i16, i16* %910, align 2
  %912 = sext i16 %911 to i64
  %913 = and i64 %912, 4294967295
  store i64 %913, i64* %RDI.i1297, align 8
  %914 = sext i16 %911 to i32
  %915 = zext i32 %914 to i64
  %916 = sext i16 %902 to i32
  %917 = sub nsw i32 %916, %914
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %RCX.i1180.pre-phi, align 8
  %919 = icmp ult i16 %902, %911
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %43, align 1
  %921 = and i32 %917, 255
  %922 = tail call i32 @llvm.ctpop.i32(i32 %921)
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = xor i8 %924, 1
  store i8 %925, i8* %50, align 1
  %926 = xor i64 %915, %903
  %927 = trunc i64 %926 to i32
  %928 = xor i32 %927, %917
  %929 = lshr i32 %928, 4
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  store i8 %931, i8* %55, align 1
  %932 = icmp eq i32 %917, 0
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %58, align 1
  %934 = lshr i32 %917, 31
  %935 = trunc i32 %934 to i8
  store i8 %935, i8* %61, align 1
  %936 = lshr i32 %916, 31
  %937 = lshr i32 %914, 31
  %938 = xor i32 %937, %936
  %939 = xor i32 %934, %936
  %940 = add nuw nsw i32 %939, %938
  %941 = icmp eq i32 %940, 2
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %67, align 1
  %943 = add i64 %897, -248
  %944 = load i32, i32* %EAX.i1188.pre-phi, align 4
  %945 = add i64 %899, 19
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %943 to i32*
  store i32 %944, i32* %946, align 4
  %947 = load i32, i32* %ECX.i1288, align 4
  %948 = zext i32 %947 to i64
  %949 = load i64, i64* %3, align 8
  store i64 %948, i64* %RAX.i1202.phi.trans.insert, align 8
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %951 = sext i32 %947 to i64
  %952 = lshr i64 %951, 32
  store i64 %952, i64* %950, align 8
  %953 = load i64, i64* %RBP.i, align 8
  %954 = add i64 %953, -248
  %955 = add i64 %949, 9
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %954 to i32*
  %957 = load i32, i32* %956, align 4
  %958 = zext i32 %957 to i64
  store i64 %958, i64* %RCX.i1180.pre-phi, align 8
  %959 = add i64 %949, 11
  store i64 %959, i64* %3, align 8
  %960 = sext i32 %957 to i64
  %961 = shl nuw i64 %952, 32
  %962 = or i64 %961, %948
  %963 = sdiv i64 %962, %960
  %964 = shl i64 %963, 32
  %965 = ashr exact i64 %964, 32
  %966 = icmp eq i64 %963, %965
  br i1 %966, label %969, label %967

; <label>:967:                                    ; preds = %block_.L_423e59
  %968 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %959, %struct.Memory* %MEMORY.1)
  %.pre37 = load i64, i64* %RBP.i, align 8
  %.pre38 = load i32, i32* %EDX.i1291, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit940

; <label>:969:                                    ; preds = %block_.L_423e59
  %970 = srem i64 %962, %960
  %971 = and i64 %963, 4294967295
  store i64 %971, i64* %RAX.i1202.phi.trans.insert, align 8
  %972 = and i64 %970, 4294967295
  store i64 %972, i64* %RDX.i1174.pre-phi, align 8
  store i8 0, i8* %43, align 1
  store i8 0, i8* %50, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %973 = trunc i64 %970 to i32
  br label %routine_idivl__ecx.exit940

routine_idivl__ecx.exit940:                       ; preds = %969, %967
  %974 = phi i64 [ %.pre39, %967 ], [ %959, %969 ]
  %975 = phi i32 [ %.pre38, %967 ], [ %973, %969 ]
  %976 = phi i64 [ %.pre37, %967 ], [ %953, %969 ]
  %977 = phi %struct.Memory* [ %968, %967 ], [ %MEMORY.1, %969 ]
  %978 = add i64 %976, -216
  %979 = add i64 %974, 6
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to i32*
  store i32 %975, i32* %980, align 4
  %981 = load i64, i64* %RBP.i, align 8
  %982 = add i64 %981, -72
  %983 = load i64, i64* %3, align 8
  %984 = add i64 %983, 4
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %982 to i16*
  %986 = load i16, i16* %985, align 2
  %987 = sext i16 %986 to i64
  %988 = and i64 %987, 4294967295
  store i64 %988, i64* %RDX.i1174.pre-phi, align 8
  %R8.i931 = getelementptr inbounds %union.anon, %union.anon* %136, i64 0, i32 0
  %989 = add i64 %981, -88
  %990 = add i64 %983, 8
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %989 to i64*
  %992 = load i64, i64* %991, align 8
  store i64 %992, i64* %R8.i931, align 8
  %993 = add i64 %983, 12
  store i64 %993, i64* %3, align 8
  %994 = inttoptr i64 %992 to i16*
  %995 = load i16, i16* %994, align 2
  %996 = sext i16 %995 to i64
  %997 = and i64 %996, 4294967295
  store i64 %997, i64* %RDI.i1297, align 8
  %998 = sext i16 %995 to i32
  %999 = zext i32 %998 to i64
  %1000 = sext i16 %986 to i32
  %1001 = sub nsw i32 %1000, %998
  %1002 = zext i32 %1001 to i64
  store i64 %1002, i64* %RDX.i1174.pre-phi, align 8
  %1003 = icmp ult i16 %986, %995
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %43, align 1
  %1005 = and i32 %1001, 255
  %1006 = tail call i32 @llvm.ctpop.i32(i32 %1005)
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  %1009 = xor i8 %1008, 1
  store i8 %1009, i8* %50, align 1
  %1010 = xor i64 %999, %987
  %1011 = trunc i64 %1010 to i32
  %1012 = xor i32 %1011, %1001
  %1013 = lshr i32 %1012, 4
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  store i8 %1015, i8* %55, align 1
  %1016 = icmp eq i32 %1001, 0
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %58, align 1
  %1018 = lshr i32 %1001, 31
  %1019 = trunc i32 %1018 to i8
  store i8 %1019, i8* %61, align 1
  %1020 = lshr i32 %1000, 31
  %1021 = lshr i32 %998, 31
  %1022 = xor i32 %1021, %1020
  %1023 = xor i32 %1018, %1020
  %1024 = add nuw nsw i32 %1023, %1022
  %1025 = icmp eq i32 %1024, 2
  %1026 = zext i1 %1025 to i8
  store i8 %1026, i8* %67, align 1
  store i64 %1002, i64* %RAX.i1202.phi.trans.insert, align 8
  %1027 = sext i32 %1001 to i64
  %1028 = lshr i64 %1027, 32
  store i64 %1028, i64* %950, align 8
  %1029 = load i32, i32* %ECX.i1288, align 4
  %1030 = add i64 %983, 19
  store i64 %1030, i64* %3, align 8
  %1031 = sext i32 %1029 to i64
  %1032 = shl nuw i64 %1028, 32
  %1033 = or i64 %1032, %1002
  %1034 = sdiv i64 %1033, %1031
  %1035 = shl i64 %1034, 32
  %1036 = ashr exact i64 %1035, 32
  %1037 = icmp eq i64 %1034, %1036
  br i1 %1037, label %1040, label %1038

; <label>:1038:                                   ; preds = %routine_idivl__ecx.exit940
  %1039 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1030, %struct.Memory* %977)
  %.pre40 = load i64, i64* %RBP.i, align 8
  %.pre41 = load i32, i32* %EDX.i1291, align 4
  %.pre42 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit916

; <label>:1040:                                   ; preds = %routine_idivl__ecx.exit940
  %1041 = srem i64 %1033, %1031
  %1042 = and i64 %1034, 4294967295
  store i64 %1042, i64* %RAX.i1202.phi.trans.insert, align 8
  %1043 = and i64 %1041, 4294967295
  store i64 %1043, i64* %RDX.i1174.pre-phi, align 8
  store i8 0, i8* %43, align 1
  store i8 0, i8* %50, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %1044 = trunc i64 %1041 to i32
  br label %routine_idivl__ecx.exit916

routine_idivl__ecx.exit916:                       ; preds = %1040, %1038
  %1045 = phi i64 [ %.pre42, %1038 ], [ %1030, %1040 ]
  %1046 = phi i32 [ %.pre41, %1038 ], [ %1044, %1040 ]
  %1047 = phi i64 [ %.pre40, %1038 ], [ %981, %1040 ]
  %1048 = phi %struct.Memory* [ %1039, %1038 ], [ %977, %1040 ]
  %1049 = add i64 %1047, -220
  %1050 = add i64 %1045, 6
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i32*
  store i32 %1046, i32* %1051, align 4
  %1052 = load i64, i64* %3, align 8
  %1053 = load i32, i32* bitcast (%G_0x6d1fa0_type* @G_0x6d1fa0 to i32*), align 8
  %1054 = zext i32 %1053 to i64
  store i64 %1054, i64* %RDX.i1174.pre-phi, align 8
  %1055 = load i64, i64* %RBP.i, align 8
  %1056 = add i64 %1055, -80
  %1057 = add i64 %1052, 11
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i64*
  %1059 = load i64, i64* %1058, align 8
  store i64 %1059, i64* %R8.i931, align 8
  %1060 = add i64 %1052, 15
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i16*
  %1062 = load i16, i16* %1061, align 2
  %1063 = sext i16 %1062 to i64
  %1064 = and i64 %1063, 4294967295
  store i64 %1064, i64* %RDI.i1297, align 8
  %1065 = sext i16 %1062 to i32
  %1066 = sub i32 %1053, %1065
  %1067 = zext i32 %1066 to i64
  store i64 %1067, i64* %RDX.i1174.pre-phi, align 8
  %1068 = icmp ult i32 %1053, %1065
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %43, align 1
  %1070 = and i32 %1066, 255
  %1071 = tail call i32 @llvm.ctpop.i32(i32 %1070)
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  %1074 = xor i8 %1073, 1
  store i8 %1074, i8* %50, align 1
  %1075 = xor i32 %1065, %1053
  %1076 = xor i32 %1075, %1066
  %1077 = lshr i32 %1076, 4
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  store i8 %1079, i8* %55, align 1
  %1080 = icmp eq i32 %1066, 0
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %58, align 1
  %1082 = lshr i32 %1066, 31
  %1083 = trunc i32 %1082 to i8
  store i8 %1083, i8* %61, align 1
  %1084 = lshr i32 %1053, 31
  %1085 = lshr i32 %1065, 31
  %1086 = xor i32 %1085, %1084
  %1087 = xor i32 %1082, %1084
  %1088 = add nuw nsw i32 %1087, %1086
  %1089 = icmp eq i32 %1088, 2
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %67, align 1
  store i64 %1067, i64* %RAX.i1202.phi.trans.insert, align 8
  %1091 = sext i32 %1066 to i64
  %1092 = lshr i64 %1091, 32
  store i64 %1092, i64* %950, align 8
  %1093 = load i32, i32* %ECX.i1288, align 4
  %1094 = add i64 %1052, 22
  store i64 %1094, i64* %3, align 8
  %1095 = sext i32 %1093 to i64
  %1096 = shl nuw i64 %1092, 32
  %1097 = or i64 %1096, %1067
  %1098 = sdiv i64 %1097, %1095
  %1099 = shl i64 %1098, 32
  %1100 = ashr exact i64 %1099, 32
  %1101 = icmp eq i64 %1098, %1100
  br i1 %1101, label %1104, label %1102

; <label>:1102:                                   ; preds = %routine_idivl__ecx.exit916
  %1103 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1094, %struct.Memory* %1048)
  %.pre43 = load i64, i64* %RBP.i, align 8
  %.pre44 = load i32, i32* %EDX.i1291, align 4
  %.pre45 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit893

; <label>:1104:                                   ; preds = %routine_idivl__ecx.exit916
  %1105 = srem i64 %1097, %1095
  %1106 = and i64 %1098, 4294967295
  store i64 %1106, i64* %RAX.i1202.phi.trans.insert, align 8
  %1107 = and i64 %1105, 4294967295
  store i64 %1107, i64* %RDX.i1174.pre-phi, align 8
  store i8 0, i8* %43, align 1
  store i8 0, i8* %50, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %1108 = trunc i64 %1105 to i32
  br label %routine_idivl__ecx.exit893

routine_idivl__ecx.exit893:                       ; preds = %1104, %1102
  %1109 = phi i64 [ %.pre45, %1102 ], [ %1094, %1104 ]
  %1110 = phi i32 [ %.pre44, %1102 ], [ %1108, %1104 ]
  %1111 = phi i64 [ %.pre43, %1102 ], [ %1055, %1104 ]
  %1112 = phi %struct.Memory* [ %1103, %1102 ], [ %1048, %1104 ]
  %1113 = add i64 %1111, -232
  %1114 = add i64 %1109, 6
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1113 to i32*
  store i32 %1110, i32* %1115, align 4
  %1116 = load i64, i64* %3, align 8
  %1117 = load i32, i32* bitcast (%G_0x6d1fa4_type* @G_0x6d1fa4 to i32*), align 8
  %1118 = zext i32 %1117 to i64
  store i64 %1118, i64* %RDX.i1174.pre-phi, align 8
  %1119 = load i64, i64* %RBP.i, align 8
  %1120 = add i64 %1119, -88
  %1121 = add i64 %1116, 11
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i64*
  %1123 = load i64, i64* %1122, align 8
  store i64 %1123, i64* %R8.i931, align 8
  %1124 = add i64 %1116, 15
  store i64 %1124, i64* %3, align 8
  %1125 = inttoptr i64 %1123 to i16*
  %1126 = load i16, i16* %1125, align 2
  %1127 = sext i16 %1126 to i64
  %1128 = and i64 %1127, 4294967295
  store i64 %1128, i64* %RDI.i1297, align 8
  %1129 = sext i16 %1126 to i32
  %1130 = sub i32 %1117, %1129
  %1131 = zext i32 %1130 to i64
  store i64 %1131, i64* %RDX.i1174.pre-phi, align 8
  %1132 = icmp ult i32 %1117, %1129
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %43, align 1
  %1134 = and i32 %1130, 255
  %1135 = tail call i32 @llvm.ctpop.i32(i32 %1134)
  %1136 = trunc i32 %1135 to i8
  %1137 = and i8 %1136, 1
  %1138 = xor i8 %1137, 1
  store i8 %1138, i8* %50, align 1
  %1139 = xor i32 %1129, %1117
  %1140 = xor i32 %1139, %1130
  %1141 = lshr i32 %1140, 4
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  store i8 %1143, i8* %55, align 1
  %1144 = icmp eq i32 %1130, 0
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %58, align 1
  %1146 = lshr i32 %1130, 31
  %1147 = trunc i32 %1146 to i8
  store i8 %1147, i8* %61, align 1
  %1148 = lshr i32 %1117, 31
  %1149 = lshr i32 %1129, 31
  %1150 = xor i32 %1149, %1148
  %1151 = xor i32 %1146, %1148
  %1152 = add nuw nsw i32 %1151, %1150
  %1153 = icmp eq i32 %1152, 2
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %67, align 1
  store i64 %1131, i64* %RAX.i1202.phi.trans.insert, align 8
  %1155 = sext i32 %1130 to i64
  %1156 = lshr i64 %1155, 32
  store i64 %1156, i64* %950, align 8
  %1157 = load i32, i32* %ECX.i1288, align 4
  %1158 = add i64 %1116, 22
  store i64 %1158, i64* %3, align 8
  %1159 = sext i32 %1157 to i64
  %1160 = shl nuw i64 %1156, 32
  %1161 = or i64 %1160, %1131
  %1162 = sdiv i64 %1161, %1159
  %1163 = shl i64 %1162, 32
  %1164 = ashr exact i64 %1163, 32
  %1165 = icmp eq i64 %1162, %1164
  br i1 %1165, label %1168, label %1166

; <label>:1166:                                   ; preds = %routine_idivl__ecx.exit893
  %1167 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1158, %struct.Memory* %1112)
  %.pre46 = load i64, i64* %RBP.i, align 8
  %.pre47 = load i32, i32* %EDX.i1291, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:1168:                                   ; preds = %routine_idivl__ecx.exit893
  %1169 = srem i64 %1161, %1159
  %1170 = and i64 %1162, 4294967295
  store i64 %1170, i64* %RAX.i1202.phi.trans.insert, align 8
  %1171 = and i64 %1169, 4294967295
  store i64 %1171, i64* %RDX.i1174.pre-phi, align 8
  store i8 0, i8* %43, align 1
  store i8 0, i8* %50, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %1172 = trunc i64 %1169 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1168, %1166
  %1173 = phi i64 [ %.pre48, %1166 ], [ %1158, %1168 ]
  %1174 = phi i32 [ %.pre47, %1166 ], [ %1172, %1168 ]
  %1175 = phi i64 [ %.pre46, %1166 ], [ %1119, %1168 ]
  %1176 = phi %struct.Memory* [ %1167, %1166 ], [ %1112, %1168 ]
  %1177 = add i64 %1175, -236
  %1178 = add i64 %1173, 6
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1177 to i32*
  store i32 %1174, i32* %1179, align 4
  %1180 = load i64, i64* %3, align 8
  %1181 = load i64, i64* bitcast (%G_0x710770_type* @G_0x710770 to i64*), align 8
  store i64 %1181, i64* %R8.i931, align 8
  %1182 = add i64 %1180, 11
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i64*
  %1184 = load i64, i64* %1183, align 8
  store i64 %1184, i64* %RDI.i1297, align 8
  %1185 = load i64, i64* %RBP.i, align 8
  %1186 = add i64 %1185, -180
  %1187 = add i64 %1180, 17
  store i64 %1187, i64* %3, align 8
  %1188 = inttoptr i64 %1186 to i32*
  %1189 = load i32, i32* %1188, align 4
  %1190 = shl i32 %1189, 1
  %1191 = or i32 %1190, 1
  %1192 = zext i32 %1191 to i64
  store i64 %1192, i64* %RDX.i1174.pre-phi, align 8
  store i8 0, i8* %43, align 1
  %1193 = and i32 %1191, 255
  %1194 = tail call i32 @llvm.ctpop.i32(i32 %1193)
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  %1197 = xor i8 %1196, 1
  store i8 %1197, i8* %50, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %58, align 1
  %1198 = lshr i32 %1189, 30
  %1199 = and i32 %1198, 1
  %1200 = trunc i32 %1199 to i8
  store i8 %1200, i8* %61, align 1
  %1201 = lshr i32 %1189, 30
  %1202 = and i32 %1201, 1
  %1203 = xor i32 %1199, %1202
  %1204 = add nuw nsw i32 %1203, %1199
  %1205 = icmp eq i32 %1204, 2
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %67, align 1
  %1207 = getelementptr inbounds %union.anon, %union.anon* %143, i64 0, i32 0
  %1208 = add i64 %1180, 29
  store i64 %1208, i64* %3, align 8
  %1209 = load i32, i32* %1188, align 4
  %1210 = shl i32 %1209, 1
  %1211 = or i32 %1210, 1
  %1212 = zext i32 %1211 to i64
  store i64 %1212, i64* %1207, align 8
  %1213 = sext i32 %1191 to i64
  %1214 = sext i32 %1211 to i64
  %1215 = mul nsw i64 %1214, %1213
  %1216 = trunc i64 %1215 to i32
  %1217 = shl i64 %1215, 32
  %1218 = ashr exact i64 %1217, 32
  %1219 = icmp ne i64 %1218, %1215
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %43, align 1
  %1221 = and i32 %1216, 255
  %1222 = tail call i32 @llvm.ctpop.i32(i32 %1221)
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  store i8 %1225, i8* %50, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %58, align 1
  %1226 = lshr i32 %1216, 31
  %1227 = trunc i32 %1226 to i8
  store i8 %1227, i8* %61, align 1
  store i8 %1220, i8* %67, align 1
  %sext = shl i64 %1215, 32
  %1228 = ashr exact i64 %sext, 32
  store i64 %1228, i64* %RDX.i1174.pre-phi, align 8
  %1229 = add i64 %1180, -142961
  %1230 = add i64 %1180, 48
  %1231 = load i64, i64* %6, align 8
  %1232 = add i64 %1231, -8
  %1233 = inttoptr i64 %1232 to i64*
  store i64 %1230, i64* %1233, align 8
  store i64 %1232, i64* %6, align 8
  store i64 %1229, i64* %3, align 8
  %1234 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %1176)
  %1235 = load i64, i64* %3, align 8
  %1236 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1236, i64* %RDX.i1174.pre-phi, align 8
  %1237 = add i64 %1236, 24
  %1238 = add i64 %1235, 12
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1237 to i32*
  %1240 = load i32, i32* %1239, align 4
  store i8 0, i8* %43, align 1
  %1241 = and i32 %1240, 255
  %1242 = tail call i32 @llvm.ctpop.i32(i32 %1241)
  %1243 = trunc i32 %1242 to i8
  %1244 = and i8 %1243, 1
  %1245 = xor i8 %1244, 1
  store i8 %1245, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %1246 = icmp eq i32 %1240, 0
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %58, align 1
  %1248 = lshr i32 %1240, 31
  %1249 = trunc i32 %1248 to i8
  store i8 %1249, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v69 = select i1 %1246, i64 288, i64 18
  %1250 = add i64 %1235, %.v69
  store i64 %1250, i64* %3, align 8
  br i1 %1246, label %block_.L_424031, label %block_423f23

block_423f23:                                     ; preds = %routine_idivl__ecx.exit
  %1251 = load i64, i64* %RBP.i, align 8
  %1252 = add i64 %1251, -80
  %1253 = add i64 %1250, 4
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1252 to i64*
  %1255 = load i64, i64* %1254, align 8
  store i64 %1255, i64* %RAX.i1202.phi.trans.insert, align 8
  %1256 = add i64 %1250, 7
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1255 to i16*
  %1258 = load i16, i16* %1257, align 2
  %1259 = sext i16 %1258 to i64
  %1260 = and i64 %1259, 4294967295
  store i64 %1260, i64* %RCX.i1180.pre-phi, align 8
  %1261 = add i64 %1251, -124
  %1262 = sext i16 %1258 to i32
  %1263 = add i64 %1250, 10
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1261 to i32*
  store i32 %1262, i32* %1264, align 4
  %1265 = load i64, i64* %RBP.i, align 8
  %1266 = add i64 %1265, -88
  %1267 = load i64, i64* %3, align 8
  %1268 = add i64 %1267, 4
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1266 to i64*
  %1270 = load i64, i64* %1269, align 8
  store i64 %1270, i64* %RAX.i1202.phi.trans.insert, align 8
  %1271 = add i64 %1267, 7
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1270 to i16*
  %1273 = load i16, i16* %1272, align 2
  %1274 = sext i16 %1273 to i64
  %1275 = and i64 %1274, 4294967295
  store i64 %1275, i64* %RCX.i1180.pre-phi, align 8
  %1276 = add i64 %1265, -128
  %1277 = sext i16 %1273 to i32
  %1278 = add i64 %1267, 10
  store i64 %1278, i64* %3, align 8
  %1279 = inttoptr i64 %1276 to i32*
  store i32 %1277, i32* %1279, align 4
  %1280 = load i64, i64* %RBP.i, align 8
  %1281 = add i64 %1280, -148
  %1282 = load i64, i64* %3, align 8
  %1283 = add i64 %1282, 6
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1281 to i32*
  %1285 = load i32, i32* %1284, align 4
  %1286 = zext i32 %1285 to i64
  store i64 %1286, i64* %RCX.i1180.pre-phi, align 8
  %1287 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  store i64 %1287, i64* %RAX.i1202.phi.trans.insert, align 8
  %1288 = add i64 %1280, -124
  %1289 = add i64 %1282, 17
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i32*
  %1291 = load i32, i32* %1290, align 4
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RDX.i1174.pre-phi, align 8
  %1293 = add i64 %1280, -152
  %1294 = add i64 %1282, 23
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i32*
  %1296 = load i32, i32* %1295, align 4
  %1297 = zext i32 %1296 to i64
  store i64 %1297, i64* %RSI.i1321, align 8
  %1298 = add i64 %1280, -252
  %1299 = add i64 %1282, 29
  store i64 %1299, i64* %3, align 8
  %1300 = inttoptr i64 %1298 to i32*
  store i32 %1285, i32* %1300, align 4
  %1301 = load i32, i32* %ESI.i1258, align 4
  %1302 = zext i32 %1301 to i64
  %1303 = load i64, i64* %3, align 8
  store i64 %1302, i64* %RCX.i1180.pre-phi, align 8
  %1304 = load i64, i64* %RDX.i1174.pre-phi, align 8
  %1305 = add i64 %1303, 4
  store i64 %1305, i64* %3, align 8
  %1306 = trunc i32 %1301 to i5
  switch i5 %1306, label %1313 [
    i5 0, label %routine_shll__cl___edx.exit798
    i5 1, label %1307
  ]

; <label>:1307:                                   ; preds = %block_423f23
  %1308 = trunc i64 %1304 to i32
  %1309 = shl i32 %1308, 1
  %1310 = icmp slt i32 %1308, 0
  %1311 = icmp slt i32 %1309, 0
  %1312 = xor i1 %1310, %1311
  br label %1323

; <label>:1313:                                   ; preds = %block_423f23
  %1314 = and i32 %1301, 31
  %1315 = zext i32 %1314 to i64
  %1316 = add nuw nsw i64 %1315, 4294967295
  %1317 = and i64 %1304, 4294967295
  %1318 = and i64 %1316, 4294967295
  %1319 = shl i64 %1317, %1318
  %1320 = trunc i64 %1319 to i32
  %1321 = icmp slt i32 %1320, 0
  %1322 = shl i32 %1320, 1
  br label %1323

; <label>:1323:                                   ; preds = %1313, %1307
  %1324 = phi i1 [ %1310, %1307 ], [ %1321, %1313 ]
  %1325 = phi i1 [ %1312, %1307 ], [ false, %1313 ]
  %1326 = phi i32 [ %1309, %1307 ], [ %1322, %1313 ]
  %1327 = zext i32 %1326 to i64
  store i64 %1327, i64* %RDX.i1174.pre-phi, align 8
  %1328 = zext i1 %1324 to i8
  store i8 %1328, i8* %43, align 1
  %1329 = and i32 %1326, 254
  %1330 = tail call i32 @llvm.ctpop.i32(i32 %1329)
  %1331 = trunc i32 %1330 to i8
  %1332 = and i8 %1331, 1
  %1333 = xor i8 %1332, 1
  store i8 %1333, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %1334 = icmp eq i32 %1326, 0
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %58, align 1
  %1336 = lshr i32 %1326, 31
  %1337 = trunc i32 %1336 to i8
  store i8 %1337, i8* %61, align 1
  %1338 = zext i1 %1325 to i8
  store i8 %1338, i8* %67, align 1
  br label %routine_shll__cl___edx.exit798

routine_shll__cl___edx.exit798:                   ; preds = %1323, %block_423f23
  %1339 = phi i64 [ %1327, %1323 ], [ %1304, %block_423f23 ]
  %1340 = load i64, i64* %RBP.i, align 8
  %1341 = add i64 %1340, -70
  %1342 = add i64 %1303, 8
  store i64 %1342, i64* %3, align 8
  %1343 = inttoptr i64 %1341 to i16*
  %1344 = load i16, i16* %1343, align 2
  %1345 = sext i16 %1344 to i64
  %1346 = and i64 %1345, 4294967295
  store i64 %1346, i64* %RSI.i1321, align 8
  %1347 = sext i16 %1344 to i32
  %1348 = zext i32 %1347 to i64
  %1349 = trunc i64 %1339 to i32
  %1350 = sub i32 %1349, %1347
  %1351 = zext i32 %1350 to i64
  store i64 %1351, i64* %RDX.i1174.pre-phi, align 8
  %1352 = icmp ult i32 %1349, %1347
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %43, align 1
  %1354 = and i32 %1350, 255
  %1355 = tail call i32 @llvm.ctpop.i32(i32 %1354)
  %1356 = trunc i32 %1355 to i8
  %1357 = and i8 %1356, 1
  %1358 = xor i8 %1357, 1
  store i8 %1358, i8* %50, align 1
  %1359 = xor i64 %1348, %1339
  %1360 = trunc i64 %1359 to i32
  %1361 = xor i32 %1360, %1350
  %1362 = lshr i32 %1361, 4
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  store i8 %1364, i8* %55, align 1
  %1365 = icmp eq i32 %1350, 0
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %58, align 1
  %1367 = lshr i32 %1350, 31
  %1368 = trunc i32 %1367 to i8
  store i8 %1368, i8* %61, align 1
  %1369 = lshr i32 %1349, 31
  %1370 = lshr i32 %1347, 31
  %1371 = xor i32 %1370, %1369
  %1372 = xor i32 %1367, %1369
  %1373 = add nuw nsw i32 %1372, %1371
  %1374 = icmp eq i32 %1373, 2
  %1375 = zext i1 %1374 to i8
  store i8 %1375, i8* %67, align 1
  %1376 = add i64 %1303, 13
  store i64 %1376, i64* %3, align 8
  %1377 = sext i32 %1350 to i64
  store i64 %1377, i64* %RDI.i1297, align 8
  %1378 = load i64, i64* %RAX.i1202.phi.trans.insert, align 8
  %1379 = shl nsw i64 %1377, 2
  %1380 = add i64 %1378, %1379
  %1381 = add i64 %1303, 16
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1380 to i32*
  %1383 = load i32, i32* %1382, align 4
  %1384 = zext i32 %1383 to i64
  store i64 %1384, i64* %RDX.i1174.pre-phi, align 8
  %1385 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  store i64 %1385, i64* %RAX.i1202.phi.trans.insert, align 8
  %1386 = add i64 %1340, -128
  %1387 = add i64 %1303, 27
  store i64 %1387, i64* %3, align 8
  %1388 = inttoptr i64 %1386 to i32*
  %1389 = load i32, i32* %1388, align 4
  %1390 = zext i32 %1389 to i64
  store i64 %1390, i64* %RSI.i1321, align 8
  %1391 = add i64 %1340, -152
  %1392 = add i64 %1303, 33
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1391 to i32*
  %1394 = load i32, i32* %1393, align 4
  %1395 = zext i32 %1394 to i64
  store i64 %1395, i64* %RCX.i1180.pre-phi, align 8
  %1396 = add i64 %1303, 35
  store i64 %1396, i64* %3, align 8
  %1397 = trunc i32 %1394 to i5
  switch i5 %1397, label %1403 [
    i5 0, label %routine_shll__cl___esi.exit773
    i5 1, label %1398
  ]

; <label>:1398:                                   ; preds = %routine_shll__cl___edx.exit798
  %1399 = shl i32 %1389, 1
  %1400 = icmp slt i32 %1389, 0
  %1401 = icmp slt i32 %1399, 0
  %1402 = xor i1 %1400, %1401
  br label %1412

; <label>:1403:                                   ; preds = %routine_shll__cl___edx.exit798
  %1404 = and i32 %1394, 31
  %1405 = zext i32 %1404 to i64
  %1406 = add nuw nsw i64 %1405, 4294967295
  %1407 = and i64 %1406, 4294967295
  %1408 = shl i64 %1390, %1407
  %1409 = trunc i64 %1408 to i32
  %1410 = icmp slt i32 %1409, 0
  %1411 = shl i32 %1409, 1
  br label %1412

; <label>:1412:                                   ; preds = %1403, %1398
  %1413 = phi i1 [ %1400, %1398 ], [ %1410, %1403 ]
  %1414 = phi i1 [ %1402, %1398 ], [ false, %1403 ]
  %1415 = phi i32 [ %1399, %1398 ], [ %1411, %1403 ]
  %1416 = zext i32 %1415 to i64
  store i64 %1416, i64* %RSI.i1321, align 8
  %1417 = zext i1 %1413 to i8
  store i8 %1417, i8* %43, align 1
  %1418 = and i32 %1415, 254
  %1419 = tail call i32 @llvm.ctpop.i32(i32 %1418)
  %1420 = trunc i32 %1419 to i8
  %1421 = and i8 %1420, 1
  %1422 = xor i8 %1421, 1
  store i8 %1422, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %1423 = icmp eq i32 %1415, 0
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %58, align 1
  %1425 = lshr i32 %1415, 31
  %1426 = trunc i32 %1425 to i8
  store i8 %1426, i8* %61, align 1
  %1427 = zext i1 %1414 to i8
  store i8 %1427, i8* %67, align 1
  br label %routine_shll__cl___esi.exit773

routine_shll__cl___esi.exit773:                   ; preds = %1412, %routine_shll__cl___edx.exit798
  %1428 = phi i64 [ %1416, %1412 ], [ %1390, %routine_shll__cl___edx.exit798 ]
  %1429 = add i64 %1340, -72
  %1430 = add i64 %1303, 40
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to i16*
  %1432 = load i16, i16* %1431, align 2
  %1433 = sext i16 %1432 to i64
  %1434 = and i64 %1433, 4294967295
  store i64 %1434, i64* %R8.i931, align 8
  %1435 = sext i16 %1432 to i32
  %1436 = zext i32 %1435 to i64
  %1437 = trunc i64 %1428 to i32
  %1438 = sub i32 %1437, %1435
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RSI.i1321, align 8
  %1440 = icmp ult i32 %1437, %1435
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %43, align 1
  %1442 = and i32 %1438, 255
  %1443 = tail call i32 @llvm.ctpop.i32(i32 %1442)
  %1444 = trunc i32 %1443 to i8
  %1445 = and i8 %1444, 1
  %1446 = xor i8 %1445, 1
  store i8 %1446, i8* %50, align 1
  %1447 = xor i64 %1436, %1428
  %1448 = trunc i64 %1447 to i32
  %1449 = xor i32 %1448, %1438
  %1450 = lshr i32 %1449, 4
  %1451 = trunc i32 %1450 to i8
  %1452 = and i8 %1451, 1
  store i8 %1452, i8* %55, align 1
  %1453 = icmp eq i32 %1438, 0
  %1454 = zext i1 %1453 to i8
  store i8 %1454, i8* %58, align 1
  %1455 = lshr i32 %1438, 31
  %1456 = trunc i32 %1455 to i8
  store i8 %1456, i8* %61, align 1
  %1457 = lshr i32 %1437, 31
  %1458 = lshr i32 %1435, 31
  %1459 = xor i32 %1458, %1457
  %1460 = xor i32 %1455, %1457
  %1461 = add nuw nsw i32 %1460, %1459
  %1462 = icmp eq i32 %1461, 2
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %67, align 1
  %1464 = sext i32 %1438 to i64
  store i64 %1464, i64* %RDI.i1297, align 8
  %1465 = shl nsw i64 %1464, 2
  %1466 = add i64 %1385, %1465
  %1467 = add i64 %1303, 49
  store i64 %1467, i64* %3, align 8
  %1468 = inttoptr i64 %1466 to i32*
  %1469 = load i32, i32* %1468, align 4
  %1470 = add i32 %1469, %1383
  %1471 = zext i32 %1470 to i64
  store i64 %1471, i64* %RDX.i1174.pre-phi, align 8
  %1472 = icmp ult i32 %1470, %1383
  %1473 = icmp ult i32 %1470, %1469
  %1474 = or i1 %1472, %1473
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %43, align 1
  %1476 = and i32 %1470, 255
  %1477 = tail call i32 @llvm.ctpop.i32(i32 %1476)
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  %1480 = xor i8 %1479, 1
  store i8 %1480, i8* %50, align 1
  %1481 = xor i32 %1469, %1383
  %1482 = xor i32 %1481, %1470
  %1483 = lshr i32 %1482, 4
  %1484 = trunc i32 %1483 to i8
  %1485 = and i8 %1484, 1
  store i8 %1485, i8* %55, align 1
  %1486 = icmp eq i32 %1470, 0
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %58, align 1
  %1488 = lshr i32 %1470, 31
  %1489 = trunc i32 %1488 to i8
  store i8 %1489, i8* %61, align 1
  %1490 = lshr i32 %1383, 31
  %1491 = lshr i32 %1469, 31
  %1492 = xor i32 %1488, %1490
  %1493 = xor i32 %1488, %1491
  %1494 = add nuw nsw i32 %1492, %1493
  %1495 = icmp eq i32 %1494, 2
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %67, align 1
  %1497 = add i64 %1340, -252
  %1498 = add i64 %1303, 55
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i32*
  %1500 = load i32, i32* %1499, align 4
  %1501 = sext i32 %1500 to i64
  %1502 = sext i32 %1470 to i64
  %1503 = mul nsw i64 %1502, %1501
  %1504 = shl i64 %1503, 32
  %1505 = ashr i64 %1504, 47
  %1506 = lshr i64 %1505, 1
  %1507 = trunc i64 %1505 to i8
  %1508 = and i8 %1507, 1
  %1509 = trunc i64 %1506 to i32
  %1510 = and i64 %1506, 4294967295
  store i64 %1510, i64* %RSI.i1321, align 8
  store i8 %1508, i8* %43, align 1
  %1511 = and i32 %1509, 255
  %1512 = tail call i32 @llvm.ctpop.i32(i32 %1511)
  %1513 = trunc i32 %1512 to i8
  %1514 = and i8 %1513, 1
  %1515 = xor i8 %1514, 1
  store i8 %1515, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %1516 = icmp eq i32 %1509, 0
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %58, align 1
  %1518 = lshr i64 %1505, 32
  %1519 = trunc i64 %1518 to i8
  %1520 = and i8 %1519, 1
  store i8 %1520, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %1521 = load i64, i64* %RBP.i, align 8
  %1522 = add i64 %1521, -228
  %1523 = trunc i64 %1506 to i32
  %1524 = add i64 %1303, 67
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1522 to i32*
  store i32 %1523, i32* %1525, align 4
  %1526 = load i64, i64* %RBP.i, align 8
  %1527 = add i64 %1526, -60
  %1528 = load i64, i64* %3, align 8
  %1529 = add i64 %1528, 3
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1527 to i32*
  %1531 = load i32, i32* %1530, align 4
  %1532 = zext i32 %1531 to i64
  store i64 %1532, i64* %RDI.i1297, align 8
  %1533 = add i64 %1526, -64
  %1534 = add i64 %1528, 6
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = zext i32 %1536 to i64
  store i64 %1537, i64* %RSI.i1321, align 8
  %1538 = add i64 %1526, -156
  %1539 = add i64 %1528, 12
  store i64 %1539, i64* %3, align 8
  %1540 = inttoptr i64 %1538 to i32*
  %1541 = load i32, i32* %1540, align 4
  %1542 = zext i32 %1541 to i64
  store i64 %1542, i64* %RDX.i1174.pre-phi, align 8
  %1543 = add i64 %1526, -160
  %1544 = add i64 %1528, 18
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i32*
  %1546 = load i32, i32* %1545, align 4
  %1547 = zext i32 %1546 to i64
  store i64 %1547, i64* %RCX.i1180.pre-phi, align 8
  %1548 = add i64 %1526, -124
  %1549 = add i64 %1528, 22
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1548 to i32*
  %1551 = load i32, i32* %1550, align 4
  %1552 = zext i32 %1551 to i64
  store i64 %1552, i64* %R8.i931, align 8
  %1553 = add i64 %1526, -128
  %1554 = add i64 %1528, 26
  store i64 %1554, i64* %3, align 8
  %1555 = inttoptr i64 %1553 to i32*
  %1556 = load i32, i32* %1555, align 4
  %1557 = zext i32 %1556 to i64
  store i64 %1557, i64* %1207, align 8
  %1558 = add i64 %1526, -144
  %1559 = add i64 %1528, 33
  store i64 %1559, i64* %3, align 8
  %1560 = inttoptr i64 %1558 to i64*
  %1561 = load i64, i64* %1560, align 8
  store i64 %1561, i64* %RAX.i1202.phi.trans.insert, align 8
  %1562 = add i64 %1526, -48
  %1563 = add i64 %1528, 37
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1562 to i64*
  %1565 = load i64, i64* %1564, align 8
  store i64 %1565, i64* %78, align 8
  %1566 = add i64 %1526, -228
  %1567 = add i64 %1528, 44
  store i64 %1567, i64* %3, align 8
  %1568 = inttoptr i64 %1566 to i32*
  %1569 = load i32, i32* %1568, align 4
  %1570 = zext i32 %1569 to i64
  store i64 %1570, i64* %85, align 8
  %1571 = add i64 %1526, -100
  %1572 = add i64 %1528, 47
  store i64 %1572, i64* %3, align 8
  %1573 = inttoptr i64 %1571 to i32*
  %1574 = load i32, i32* %1573, align 4
  %1575 = zext i32 %1574 to i64
  store i64 %1575, i64* %RBX.i918, align 8
  %R14D.i714 = bitcast %union.anon* %15 to i32*
  %1576 = add i64 %1526, -116
  %1577 = add i64 %1528, 51
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1576 to i32*
  %1579 = load i32, i32* %1578, align 4
  %1580 = zext i32 %1579 to i64
  store i64 %1580, i64* %R14.i840, align 8
  %1581 = bitcast i64* %6 to i64**
  %1582 = load i64*, i64** %1581, align 8
  %1583 = add i64 %1528, 55
  store i64 %1583, i64* %3, align 8
  store i64 %1561, i64* %1582, align 8
  %1584 = load i64, i64* %6, align 8
  %1585 = add i64 %1584, 8
  %1586 = load i64, i64* %78, align 8
  %1587 = load i64, i64* %3, align 8
  %1588 = add i64 %1587, 5
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1585 to i64*
  store i64 %1586, i64* %1589, align 8
  %1590 = load i64, i64* %6, align 8
  %1591 = add i64 %1590, 16
  %1592 = load i32, i32* %R11D.i1315, align 4
  %1593 = load i64, i64* %3, align 8
  %1594 = add i64 %1593, 5
  store i64 %1594, i64* %3, align 8
  %1595 = inttoptr i64 %1591 to i32*
  store i32 %1592, i32* %1595, align 4
  %1596 = load i64, i64* %6, align 8
  %1597 = add i64 %1596, 24
  %1598 = load i32, i32* %EBX.i1269, align 4
  %1599 = load i64, i64* %3, align 8
  %1600 = add i64 %1599, 4
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1597 to i32*
  store i32 %1598, i32* %1601, align 4
  %1602 = load i64, i64* %6, align 8
  %1603 = add i64 %1602, 32
  %1604 = load i32, i32* %R14D.i714, align 4
  %1605 = load i64, i64* %3, align 8
  %1606 = add i64 %1605, 5
  store i64 %1606, i64* %3, align 8
  %1607 = inttoptr i64 %1603 to i32*
  store i32 %1604, i32* %1607, align 4
  %1608 = load i64, i64* %3, align 8
  %1609 = add i64 %1608, -3649
  %1610 = add i64 %1608, 5
  %1611 = load i64, i64* %6, align 8
  %1612 = add i64 %1611, -8
  %1613 = inttoptr i64 %1612 to i64*
  store i64 %1610, i64* %1613, align 8
  store i64 %1612, i64* %6, align 8
  store i64 %1609, i64* %3, align 8
  %call2_423fe1 = tail call %struct.Memory* @sub_4231a0.AddUpSADQuarter(%struct.State* nonnull %0, i64 %1609, %struct.Memory* %1234)
  %1614 = load i64, i64* %RBP.i, align 8
  %1615 = add i64 %1614, -120
  %1616 = load i32, i32* %EAX.i1188.pre-phi, align 4
  %1617 = load i64, i64* %3, align 8
  %1618 = add i64 %1617, 3
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1615 to i32*
  store i32 %1616, i32* %1619, align 4
  %1620 = load i64, i64* %3, align 8
  %1621 = load i64, i64* bitcast (%G_0x710770_type* @G_0x710770 to i64*), align 8
  store i64 %1621, i64* %78, align 8
  %1622 = load i64, i64* %RBP.i, align 8
  %1623 = add i64 %1622, -180
  %1624 = add i64 %1620, 15
  store i64 %1624, i64* %3, align 8
  %1625 = inttoptr i64 %1623 to i32*
  %1626 = load i32, i32* %1625, align 4
  %1627 = sext i32 %1626 to i64
  store i64 %1627, i64* %R15.i320, align 8
  %1628 = shl nsw i64 %1627, 3
  %1629 = add i64 %1628, %1621
  %1630 = add i64 %1620, 19
  store i64 %1630, i64* %3, align 8
  %1631 = inttoptr i64 %1629 to i64*
  %1632 = load i64, i64* %1631, align 8
  store i64 %1632, i64* %78, align 8
  %1633 = add i64 %1620, 26
  store i64 %1633, i64* %3, align 8
  %1634 = load i32, i32* %1625, align 4
  %1635 = sext i32 %1634 to i64
  store i64 %1635, i64* %R15.i320, align 8
  %1636 = add i64 %1632, %1635
  %1637 = add i64 %1620, 31
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to i8*
  store i8 1, i8* %1638, align 1
  %1639 = load i64, i64* %RBP.i, align 8
  %1640 = add i64 %1639, -120
  %1641 = load i64, i64* %3, align 8
  %1642 = add i64 %1641, 3
  store i64 %1642, i64* %3, align 8
  %1643 = inttoptr i64 %1640 to i32*
  %1644 = load i32, i32* %1643, align 4
  %1645 = zext i32 %1644 to i64
  store i64 %1645, i64* %RAX.i1202.phi.trans.insert, align 8
  %1646 = add i64 %1639, -100
  %1647 = add i64 %1641, 6
  store i64 %1647, i64* %3, align 8
  %1648 = inttoptr i64 %1646 to i32*
  %1649 = load i32, i32* %1648, align 4
  %1650 = sub i32 %1644, %1649
  %1651 = icmp ult i32 %1644, %1649
  %1652 = zext i1 %1651 to i8
  store i8 %1652, i8* %43, align 1
  %1653 = and i32 %1650, 255
  %1654 = tail call i32 @llvm.ctpop.i32(i32 %1653)
  %1655 = trunc i32 %1654 to i8
  %1656 = and i8 %1655, 1
  %1657 = xor i8 %1656, 1
  store i8 %1657, i8* %50, align 1
  %1658 = xor i32 %1649, %1644
  %1659 = xor i32 %1658, %1650
  %1660 = lshr i32 %1659, 4
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  store i8 %1662, i8* %55, align 1
  %1663 = icmp eq i32 %1650, 0
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %58, align 1
  %1665 = lshr i32 %1650, 31
  %1666 = trunc i32 %1665 to i8
  store i8 %1666, i8* %61, align 1
  %1667 = lshr i32 %1644, 31
  %1668 = lshr i32 %1649, 31
  %1669 = xor i32 %1668, %1667
  %1670 = xor i32 %1665, %1667
  %1671 = add nuw nsw i32 %1670, %1669
  %1672 = icmp eq i32 %1671, 2
  %1673 = zext i1 %1672 to i8
  store i8 %1673, i8* %67, align 1
  %1674 = icmp ne i8 %1666, 0
  %1675 = xor i1 %1674, %1672
  %.v70 = select i1 %1675, i64 12, i64 36
  %1676 = add i64 %1641, %.v70
  store i64 %1676, i64* %3, align 8
  br i1 %1675, label %block_424014, label %block_.L_42402c

block_424014:                                     ; preds = %routine_shll__cl___esi.exit773
  %1677 = add i64 %1676, 3
  store i64 %1677, i64* %3, align 8
  %1678 = load i32, i32* %1643, align 4
  %1679 = zext i32 %1678 to i64
  store i64 %1679, i64* %RAX.i1202.phi.trans.insert, align 8
  %1680 = add i64 %1676, 6
  store i64 %1680, i64* %3, align 8
  store i32 %1678, i32* %1648, align 4
  %1681 = load i64, i64* %RBP.i, align 8
  %1682 = add i64 %1681, -124
  %1683 = load i64, i64* %3, align 8
  %1684 = add i64 %1683, 3
  store i64 %1684, i64* %3, align 8
  %1685 = inttoptr i64 %1682 to i32*
  %1686 = load i32, i32* %1685, align 4
  %1687 = zext i32 %1686 to i64
  store i64 %1687, i64* %RAX.i1202.phi.trans.insert, align 8
  %1688 = add i64 %1681, -204
  %1689 = add i64 %1683, 9
  store i64 %1689, i64* %3, align 8
  %1690 = inttoptr i64 %1688 to i32*
  store i32 %1686, i32* %1690, align 4
  %1691 = load i64, i64* %RBP.i, align 8
  %1692 = add i64 %1691, -128
  %1693 = load i64, i64* %3, align 8
  %1694 = add i64 %1693, 3
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1692 to i32*
  %1696 = load i32, i32* %1695, align 4
  %1697 = zext i32 %1696 to i64
  store i64 %1697, i64* %RAX.i1202.phi.trans.insert, align 8
  %1698 = add i64 %1691, -208
  %1699 = add i64 %1693, 9
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1698 to i32*
  store i32 %1696, i32* %1700, align 4
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_42402c

block_.L_42402c:                                  ; preds = %routine_shll__cl___esi.exit773, %block_424014
  %1701 = phi i64 [ %1676, %routine_shll__cl___esi.exit773 ], [ %.pre49, %block_424014 ]
  %1702 = add i64 %1701, 61
  store i64 %1702, i64* %3, align 8
  br label %block_.L_424069

block_.L_424031:                                  ; preds = %routine_idivl__ecx.exit
  %1703 = load i64, i64* bitcast (%G_0x710770_type* @G_0x710770 to i64*), align 8
  store i64 %1703, i64* %RAX.i1202.phi.trans.insert, align 8
  %1704 = load i64, i64* %RBP.i, align 8
  %1705 = add i64 %1704, -180
  %1706 = add i64 %1250, 15
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i32*
  %1708 = load i32, i32* %1707, align 4
  %1709 = sext i32 %1708 to i64
  store i64 %1709, i64* %RCX.i1180.pre-phi, align 8
  %1710 = shl nsw i64 %1709, 3
  %1711 = add i64 %1710, %1703
  %1712 = add i64 %1250, 19
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1711 to i64*
  %1714 = load i64, i64* %1713, align 8
  store i64 %1714, i64* %RAX.i1202.phi.trans.insert, align 8
  %1715 = add i64 %1250, 26
  store i64 %1715, i64* %3, align 8
  %1716 = load i32, i32* %1707, align 4
  %1717 = sext i32 %1716 to i64
  store i64 %1717, i64* %RCX.i1180.pre-phi, align 8
  %1718 = add i64 %1714, %1717
  %1719 = add i64 %1250, 30
  store i64 %1719, i64* %3, align 8
  %1720 = inttoptr i64 %1718 to i8*
  store i8 1, i8* %1720, align 1
  %1721 = load i64, i64* %RBP.i, align 8
  %1722 = add i64 %1721, -80
  %1723 = load i64, i64* %3, align 8
  %1724 = add i64 %1723, 4
  store i64 %1724, i64* %3, align 8
  %1725 = inttoptr i64 %1722 to i64*
  %1726 = load i64, i64* %1725, align 8
  store i64 %1726, i64* %RAX.i1202.phi.trans.insert, align 8
  %1727 = add i64 %1723, 7
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i16*
  %1729 = load i16, i16* %1728, align 2
  %1730 = sext i16 %1729 to i64
  %1731 = and i64 %1730, 4294967295
  store i64 %1731, i64* %RDX.i1174.pre-phi, align 8
  %1732 = add i64 %1721, -204
  %1733 = sext i16 %1729 to i32
  %1734 = add i64 %1723, 13
  store i64 %1734, i64* %3, align 8
  %1735 = inttoptr i64 %1732 to i32*
  store i32 %1733, i32* %1735, align 4
  %1736 = load i64, i64* %RBP.i, align 8
  %1737 = add i64 %1736, -88
  %1738 = load i64, i64* %3, align 8
  %1739 = add i64 %1738, 4
  store i64 %1739, i64* %3, align 8
  %1740 = inttoptr i64 %1737 to i64*
  %1741 = load i64, i64* %1740, align 8
  store i64 %1741, i64* %RAX.i1202.phi.trans.insert, align 8
  %1742 = add i64 %1738, 7
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to i16*
  %1744 = load i16, i16* %1743, align 2
  %1745 = sext i16 %1744 to i64
  %1746 = and i64 %1745, 4294967295
  store i64 %1746, i64* %RDX.i1174.pre-phi, align 8
  %1747 = add i64 %1736, -208
  %1748 = sext i16 %1744 to i32
  %1749 = add i64 %1738, 13
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1747 to i32*
  store i32 %1748, i32* %1750, align 4
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_424069

block_.L_424069:                                  ; preds = %block_.L_424031, %block_.L_42402c
  %1751 = phi i64 [ %.pre50, %block_.L_424031 ], [ %1702, %block_.L_42402c ]
  %MEMORY.5 = phi %struct.Memory* [ %1234, %block_.L_424031 ], [ %call2_423fe1, %block_.L_42402c ]
  %1752 = load i64, i64* %RBP.i, align 8
  %1753 = add i64 %1752, -216
  %1754 = add i64 %1751, 7
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i32*
  %1756 = load i32, i32* %1755, align 4
  store i8 0, i8* %43, align 1
  %1757 = and i32 %1756, 255
  %1758 = tail call i32 @llvm.ctpop.i32(i32 %1757)
  %1759 = trunc i32 %1758 to i8
  %1760 = and i8 %1759, 1
  %1761 = xor i8 %1760, 1
  store i8 %1761, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %1762 = icmp eq i32 %1756, 0
  %1763 = zext i1 %1762 to i8
  store i8 %1763, i8* %58, align 1
  %1764 = lshr i32 %1756, 31
  %1765 = trunc i32 %1764 to i8
  store i8 %1765, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v71 = select i1 %1762, i64 13, i64 26
  %1766 = add i64 %1751, %.v71
  store i64 %1766, i64* %3, align 8
  br i1 %1762, label %block_424076, label %block_.L_424083

block_424076:                                     ; preds = %block_.L_424069
  %1767 = add i64 %1752, -220
  %1768 = add i64 %1766, 7
  store i64 %1768, i64* %3, align 8
  %1769 = inttoptr i64 %1767 to i32*
  %1770 = load i32, i32* %1769, align 4
  store i8 0, i8* %43, align 1
  %1771 = and i32 %1770, 255
  %1772 = tail call i32 @llvm.ctpop.i32(i32 %1771)
  %1773 = trunc i32 %1772 to i8
  %1774 = and i8 %1773, 1
  %1775 = xor i8 %1774, 1
  store i8 %1775, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %1776 = icmp eq i32 %1770, 0
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %58, align 1
  %1778 = lshr i32 %1770, 31
  %1779 = trunc i32 %1778 to i8
  store i8 %1779, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v79 = select i1 %1776, i64 325, i64 13
  %1780 = add i64 %1766, %.v79
  store i64 %1780, i64* %3, align 8
  br i1 %1776, label %block_424076.block_.L_4241bb_crit_edge, label %block_.L_424083

block_424076.block_.L_4241bb_crit_edge:           ; preds = %block_424076
  %.pre62 = bitcast %union.anon* %15 to i32*
  %.pre63 = bitcast i64* %6 to i64**
  br label %block_.L_4241bb

block_.L_424083:                                  ; preds = %block_.L_424069, %block_424076
  %1781 = phi i64 [ %1780, %block_424076 ], [ %1766, %block_.L_424069 ]
  %1782 = add i64 %1752, -80
  %1783 = add i64 %1781, 4
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to i64*
  %1785 = load i64, i64* %1784, align 8
  store i64 %1785, i64* %RAX.i1202.phi.trans.insert, align 8
  %1786 = add i64 %1781, 7
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1785 to i16*
  %1788 = load i16, i16* %1787, align 2
  %1789 = sext i16 %1788 to i64
  %1790 = and i64 %1789, 4294967295
  store i64 %1790, i64* %RCX.i1180.pre-phi, align 8
  %1791 = add i64 %1781, 13
  store i64 %1791, i64* %3, align 8
  %1792 = sext i16 %1788 to i32
  %1793 = load i32, i32* %1755, align 4
  %1794 = add i32 %1793, %1792
  %1795 = zext i32 %1794 to i64
  store i64 %1795, i64* %RCX.i1180.pre-phi, align 8
  %1796 = icmp ult i32 %1794, %1792
  %1797 = icmp ult i32 %1794, %1793
  %1798 = or i1 %1796, %1797
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %43, align 1
  %1800 = and i32 %1794, 255
  %1801 = tail call i32 @llvm.ctpop.i32(i32 %1800)
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = xor i8 %1803, 1
  store i8 %1804, i8* %50, align 1
  %1805 = xor i32 %1793, %1792
  %1806 = xor i32 %1805, %1794
  %1807 = lshr i32 %1806, 4
  %1808 = trunc i32 %1807 to i8
  %1809 = and i8 %1808, 1
  store i8 %1809, i8* %55, align 1
  %1810 = icmp eq i32 %1794, 0
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %58, align 1
  %1812 = lshr i32 %1794, 31
  %1813 = trunc i32 %1812 to i8
  store i8 %1813, i8* %61, align 1
  %1814 = lshr i32 %1792, 31
  %1815 = lshr i32 %1793, 31
  %1816 = xor i32 %1812, %1814
  %1817 = xor i32 %1812, %1815
  %1818 = add nuw nsw i32 %1816, %1817
  %1819 = icmp eq i32 %1818, 2
  %1820 = zext i1 %1819 to i8
  store i8 %1820, i8* %67, align 1
  %1821 = add i64 %1752, -124
  %1822 = add i64 %1781, 16
  store i64 %1822, i64* %3, align 8
  %1823 = inttoptr i64 %1821 to i32*
  store i32 %1794, i32* %1823, align 4
  %1824 = load i64, i64* %RBP.i, align 8
  %1825 = add i64 %1824, -88
  %1826 = load i64, i64* %3, align 8
  %1827 = add i64 %1826, 4
  store i64 %1827, i64* %3, align 8
  %1828 = inttoptr i64 %1825 to i64*
  %1829 = load i64, i64* %1828, align 8
  store i64 %1829, i64* %RAX.i1202.phi.trans.insert, align 8
  %1830 = add i64 %1826, 7
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1829 to i16*
  %1832 = load i16, i16* %1831, align 2
  %1833 = sext i16 %1832 to i64
  %1834 = and i64 %1833, 4294967295
  store i64 %1834, i64* %RCX.i1180.pre-phi, align 8
  %1835 = add i64 %1824, -220
  %1836 = add i64 %1826, 13
  store i64 %1836, i64* %3, align 8
  %1837 = sext i16 %1832 to i32
  %1838 = inttoptr i64 %1835 to i32*
  %1839 = load i32, i32* %1838, align 4
  %1840 = add i32 %1839, %1837
  %1841 = zext i32 %1840 to i64
  store i64 %1841, i64* %RCX.i1180.pre-phi, align 8
  %1842 = icmp ult i32 %1840, %1837
  %1843 = icmp ult i32 %1840, %1839
  %1844 = or i1 %1842, %1843
  %1845 = zext i1 %1844 to i8
  store i8 %1845, i8* %43, align 1
  %1846 = and i32 %1840, 255
  %1847 = tail call i32 @llvm.ctpop.i32(i32 %1846)
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  %1850 = xor i8 %1849, 1
  store i8 %1850, i8* %50, align 1
  %1851 = xor i32 %1839, %1837
  %1852 = xor i32 %1851, %1840
  %1853 = lshr i32 %1852, 4
  %1854 = trunc i32 %1853 to i8
  %1855 = and i8 %1854, 1
  store i8 %1855, i8* %55, align 1
  %1856 = icmp eq i32 %1840, 0
  %1857 = zext i1 %1856 to i8
  store i8 %1857, i8* %58, align 1
  %1858 = lshr i32 %1840, 31
  %1859 = trunc i32 %1858 to i8
  store i8 %1859, i8* %61, align 1
  %1860 = lshr i32 %1837, 31
  %1861 = lshr i32 %1839, 31
  %1862 = xor i32 %1858, %1860
  %1863 = xor i32 %1858, %1861
  %1864 = add nuw nsw i32 %1862, %1863
  %1865 = icmp eq i32 %1864, 2
  %1866 = zext i1 %1865 to i8
  store i8 %1866, i8* %67, align 1
  %1867 = add i64 %1824, -128
  %1868 = add i64 %1826, 16
  store i64 %1868, i64* %3, align 8
  %1869 = inttoptr i64 %1867 to i32*
  store i32 %1840, i32* %1869, align 4
  %1870 = load i64, i64* %RBP.i, align 8
  %1871 = add i64 %1870, -148
  %1872 = load i64, i64* %3, align 8
  %1873 = add i64 %1872, 6
  store i64 %1873, i64* %3, align 8
  %1874 = inttoptr i64 %1871 to i32*
  %1875 = load i32, i32* %1874, align 4
  %1876 = zext i32 %1875 to i64
  store i64 %1876, i64* %RCX.i1180.pre-phi, align 8
  %1877 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  store i64 %1877, i64* %RAX.i1202.phi.trans.insert, align 8
  %1878 = add i64 %1870, -124
  %1879 = add i64 %1872, 17
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1878 to i32*
  %1881 = load i32, i32* %1880, align 4
  %1882 = zext i32 %1881 to i64
  store i64 %1882, i64* %RDX.i1174.pre-phi, align 8
  %1883 = add i64 %1870, -152
  %1884 = add i64 %1872, 23
  store i64 %1884, i64* %3, align 8
  %1885 = inttoptr i64 %1883 to i32*
  %1886 = load i32, i32* %1885, align 4
  %1887 = zext i32 %1886 to i64
  store i64 %1887, i64* %RSI.i1321, align 8
  %1888 = add i64 %1870, -256
  %1889 = add i64 %1872, 29
  store i64 %1889, i64* %3, align 8
  %1890 = inttoptr i64 %1888 to i32*
  store i32 %1875, i32* %1890, align 4
  %1891 = load i32, i32* %ESI.i1258, align 4
  %1892 = zext i32 %1891 to i64
  %1893 = load i64, i64* %3, align 8
  store i64 %1892, i64* %RCX.i1180.pre-phi, align 8
  %1894 = load i64, i64* %RDX.i1174.pre-phi, align 8
  %1895 = add i64 %1893, 4
  store i64 %1895, i64* %3, align 8
  %1896 = trunc i32 %1891 to i5
  switch i5 %1896, label %1903 [
    i5 0, label %routine_shll__cl___edx.exit574
    i5 1, label %1897
  ]

; <label>:1897:                                   ; preds = %block_.L_424083
  %1898 = trunc i64 %1894 to i32
  %1899 = shl i32 %1898, 1
  %1900 = icmp slt i32 %1898, 0
  %1901 = icmp slt i32 %1899, 0
  %1902 = xor i1 %1900, %1901
  br label %1913

; <label>:1903:                                   ; preds = %block_.L_424083
  %1904 = and i32 %1891, 31
  %1905 = zext i32 %1904 to i64
  %1906 = add nuw nsw i64 %1905, 4294967295
  %1907 = and i64 %1894, 4294967295
  %1908 = and i64 %1906, 4294967295
  %1909 = shl i64 %1907, %1908
  %1910 = trunc i64 %1909 to i32
  %1911 = icmp slt i32 %1910, 0
  %1912 = shl i32 %1910, 1
  br label %1913

; <label>:1913:                                   ; preds = %1903, %1897
  %1914 = phi i1 [ %1900, %1897 ], [ %1911, %1903 ]
  %1915 = phi i1 [ %1902, %1897 ], [ false, %1903 ]
  %1916 = phi i32 [ %1899, %1897 ], [ %1912, %1903 ]
  %1917 = zext i32 %1916 to i64
  store i64 %1917, i64* %RDX.i1174.pre-phi, align 8
  %1918 = zext i1 %1914 to i8
  store i8 %1918, i8* %43, align 1
  %1919 = and i32 %1916, 254
  %1920 = tail call i32 @llvm.ctpop.i32(i32 %1919)
  %1921 = trunc i32 %1920 to i8
  %1922 = and i8 %1921, 1
  %1923 = xor i8 %1922, 1
  store i8 %1923, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %1924 = icmp eq i32 %1916, 0
  %1925 = zext i1 %1924 to i8
  store i8 %1925, i8* %58, align 1
  %1926 = lshr i32 %1916, 31
  %1927 = trunc i32 %1926 to i8
  store i8 %1927, i8* %61, align 1
  %1928 = zext i1 %1915 to i8
  store i8 %1928, i8* %67, align 1
  br label %routine_shll__cl___edx.exit574

routine_shll__cl___edx.exit574:                   ; preds = %1913, %block_.L_424083
  %1929 = phi i64 [ %1917, %1913 ], [ %1894, %block_.L_424083 ]
  %1930 = load i64, i64* %RBP.i, align 8
  %1931 = add i64 %1930, -70
  %1932 = add i64 %1893, 8
  store i64 %1932, i64* %3, align 8
  %1933 = inttoptr i64 %1931 to i16*
  %1934 = load i16, i16* %1933, align 2
  %1935 = sext i16 %1934 to i64
  %1936 = and i64 %1935, 4294967295
  store i64 %1936, i64* %RSI.i1321, align 8
  %1937 = sext i16 %1934 to i32
  %1938 = zext i32 %1937 to i64
  %1939 = trunc i64 %1929 to i32
  %1940 = sub i32 %1939, %1937
  %1941 = zext i32 %1940 to i64
  store i64 %1941, i64* %RDX.i1174.pre-phi, align 8
  %1942 = icmp ult i32 %1939, %1937
  %1943 = zext i1 %1942 to i8
  store i8 %1943, i8* %43, align 1
  %1944 = and i32 %1940, 255
  %1945 = tail call i32 @llvm.ctpop.i32(i32 %1944)
  %1946 = trunc i32 %1945 to i8
  %1947 = and i8 %1946, 1
  %1948 = xor i8 %1947, 1
  store i8 %1948, i8* %50, align 1
  %1949 = xor i64 %1938, %1929
  %1950 = trunc i64 %1949 to i32
  %1951 = xor i32 %1950, %1940
  %1952 = lshr i32 %1951, 4
  %1953 = trunc i32 %1952 to i8
  %1954 = and i8 %1953, 1
  store i8 %1954, i8* %55, align 1
  %1955 = icmp eq i32 %1940, 0
  %1956 = zext i1 %1955 to i8
  store i8 %1956, i8* %58, align 1
  %1957 = lshr i32 %1940, 31
  %1958 = trunc i32 %1957 to i8
  store i8 %1958, i8* %61, align 1
  %1959 = lshr i32 %1939, 31
  %1960 = lshr i32 %1937, 31
  %1961 = xor i32 %1960, %1959
  %1962 = xor i32 %1957, %1959
  %1963 = add nuw nsw i32 %1962, %1961
  %1964 = icmp eq i32 %1963, 2
  %1965 = zext i1 %1964 to i8
  store i8 %1965, i8* %67, align 1
  %1966 = add i64 %1893, 13
  store i64 %1966, i64* %3, align 8
  %1967 = sext i32 %1940 to i64
  store i64 %1967, i64* %RDI.i1297, align 8
  %1968 = load i64, i64* %RAX.i1202.phi.trans.insert, align 8
  %1969 = shl nsw i64 %1967, 2
  %1970 = add i64 %1968, %1969
  %1971 = add i64 %1893, 16
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1970 to i32*
  %1973 = load i32, i32* %1972, align 4
  %1974 = zext i32 %1973 to i64
  store i64 %1974, i64* %RDX.i1174.pre-phi, align 8
  %1975 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  store i64 %1975, i64* %RAX.i1202.phi.trans.insert, align 8
  %1976 = add i64 %1930, -128
  %1977 = add i64 %1893, 27
  store i64 %1977, i64* %3, align 8
  %1978 = inttoptr i64 %1976 to i32*
  %1979 = load i32, i32* %1978, align 4
  %1980 = zext i32 %1979 to i64
  store i64 %1980, i64* %RSI.i1321, align 8
  %1981 = add i64 %1930, -152
  %1982 = add i64 %1893, 33
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to i32*
  %1984 = load i32, i32* %1983, align 4
  %1985 = zext i32 %1984 to i64
  store i64 %1985, i64* %RCX.i1180.pre-phi, align 8
  %1986 = add i64 %1893, 35
  store i64 %1986, i64* %3, align 8
  %1987 = trunc i32 %1984 to i5
  switch i5 %1987, label %1993 [
    i5 0, label %routine_shll__cl___esi.exit549
    i5 1, label %1988
  ]

; <label>:1988:                                   ; preds = %routine_shll__cl___edx.exit574
  %1989 = shl i32 %1979, 1
  %1990 = icmp slt i32 %1979, 0
  %1991 = icmp slt i32 %1989, 0
  %1992 = xor i1 %1990, %1991
  br label %2002

; <label>:1993:                                   ; preds = %routine_shll__cl___edx.exit574
  %1994 = and i32 %1984, 31
  %1995 = zext i32 %1994 to i64
  %1996 = add nuw nsw i64 %1995, 4294967295
  %1997 = and i64 %1996, 4294967295
  %1998 = shl i64 %1980, %1997
  %1999 = trunc i64 %1998 to i32
  %2000 = icmp slt i32 %1999, 0
  %2001 = shl i32 %1999, 1
  br label %2002

; <label>:2002:                                   ; preds = %1993, %1988
  %2003 = phi i1 [ %1990, %1988 ], [ %2000, %1993 ]
  %2004 = phi i1 [ %1992, %1988 ], [ false, %1993 ]
  %2005 = phi i32 [ %1989, %1988 ], [ %2001, %1993 ]
  %2006 = zext i32 %2005 to i64
  store i64 %2006, i64* %RSI.i1321, align 8
  %2007 = zext i1 %2003 to i8
  store i8 %2007, i8* %43, align 1
  %2008 = and i32 %2005, 254
  %2009 = tail call i32 @llvm.ctpop.i32(i32 %2008)
  %2010 = trunc i32 %2009 to i8
  %2011 = and i8 %2010, 1
  %2012 = xor i8 %2011, 1
  store i8 %2012, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %2013 = icmp eq i32 %2005, 0
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %58, align 1
  %2015 = lshr i32 %2005, 31
  %2016 = trunc i32 %2015 to i8
  store i8 %2016, i8* %61, align 1
  %2017 = zext i1 %2004 to i8
  store i8 %2017, i8* %67, align 1
  br label %routine_shll__cl___esi.exit549

routine_shll__cl___esi.exit549:                   ; preds = %2002, %routine_shll__cl___edx.exit574
  %2018 = phi i64 [ %2006, %2002 ], [ %1980, %routine_shll__cl___edx.exit574 ]
  %2019 = add i64 %1930, -72
  %2020 = add i64 %1893, 40
  store i64 %2020, i64* %3, align 8
  %2021 = inttoptr i64 %2019 to i16*
  %2022 = load i16, i16* %2021, align 2
  %2023 = sext i16 %2022 to i64
  %2024 = and i64 %2023, 4294967295
  store i64 %2024, i64* %R8.i931, align 8
  %2025 = sext i16 %2022 to i32
  %2026 = zext i32 %2025 to i64
  %2027 = trunc i64 %2018 to i32
  %2028 = sub i32 %2027, %2025
  %2029 = zext i32 %2028 to i64
  store i64 %2029, i64* %RSI.i1321, align 8
  %2030 = icmp ult i32 %2027, %2025
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %43, align 1
  %2032 = and i32 %2028, 255
  %2033 = tail call i32 @llvm.ctpop.i32(i32 %2032)
  %2034 = trunc i32 %2033 to i8
  %2035 = and i8 %2034, 1
  %2036 = xor i8 %2035, 1
  store i8 %2036, i8* %50, align 1
  %2037 = xor i64 %2026, %2018
  %2038 = trunc i64 %2037 to i32
  %2039 = xor i32 %2038, %2028
  %2040 = lshr i32 %2039, 4
  %2041 = trunc i32 %2040 to i8
  %2042 = and i8 %2041, 1
  store i8 %2042, i8* %55, align 1
  %2043 = icmp eq i32 %2028, 0
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %58, align 1
  %2045 = lshr i32 %2028, 31
  %2046 = trunc i32 %2045 to i8
  store i8 %2046, i8* %61, align 1
  %2047 = lshr i32 %2027, 31
  %2048 = lshr i32 %2025, 31
  %2049 = xor i32 %2048, %2047
  %2050 = xor i32 %2045, %2047
  %2051 = add nuw nsw i32 %2050, %2049
  %2052 = icmp eq i32 %2051, 2
  %2053 = zext i1 %2052 to i8
  store i8 %2053, i8* %67, align 1
  %2054 = sext i32 %2028 to i64
  store i64 %2054, i64* %RDI.i1297, align 8
  %2055 = shl nsw i64 %2054, 2
  %2056 = add i64 %1975, %2055
  %2057 = add i64 %1893, 49
  store i64 %2057, i64* %3, align 8
  %2058 = inttoptr i64 %2056 to i32*
  %2059 = load i32, i32* %2058, align 4
  %2060 = add i32 %2059, %1973
  %2061 = zext i32 %2060 to i64
  store i64 %2061, i64* %RDX.i1174.pre-phi, align 8
  %2062 = icmp ult i32 %2060, %1973
  %2063 = icmp ult i32 %2060, %2059
  %2064 = or i1 %2062, %2063
  %2065 = zext i1 %2064 to i8
  store i8 %2065, i8* %43, align 1
  %2066 = and i32 %2060, 255
  %2067 = tail call i32 @llvm.ctpop.i32(i32 %2066)
  %2068 = trunc i32 %2067 to i8
  %2069 = and i8 %2068, 1
  %2070 = xor i8 %2069, 1
  store i8 %2070, i8* %50, align 1
  %2071 = xor i32 %2059, %1973
  %2072 = xor i32 %2071, %2060
  %2073 = lshr i32 %2072, 4
  %2074 = trunc i32 %2073 to i8
  %2075 = and i8 %2074, 1
  store i8 %2075, i8* %55, align 1
  %2076 = icmp eq i32 %2060, 0
  %2077 = zext i1 %2076 to i8
  store i8 %2077, i8* %58, align 1
  %2078 = lshr i32 %2060, 31
  %2079 = trunc i32 %2078 to i8
  store i8 %2079, i8* %61, align 1
  %2080 = lshr i32 %1973, 31
  %2081 = lshr i32 %2059, 31
  %2082 = xor i32 %2078, %2080
  %2083 = xor i32 %2078, %2081
  %2084 = add nuw nsw i32 %2082, %2083
  %2085 = icmp eq i32 %2084, 2
  %2086 = zext i1 %2085 to i8
  store i8 %2086, i8* %67, align 1
  %2087 = add i64 %1930, -256
  %2088 = add i64 %1893, 55
  store i64 %2088, i64* %3, align 8
  %2089 = inttoptr i64 %2087 to i32*
  %2090 = load i32, i32* %2089, align 4
  %2091 = sext i32 %2090 to i64
  %2092 = sext i32 %2060 to i64
  %2093 = mul nsw i64 %2092, %2091
  %2094 = shl i64 %2093, 32
  %2095 = ashr i64 %2094, 47
  %2096 = lshr i64 %2095, 1
  %2097 = trunc i64 %2095 to i8
  %2098 = and i8 %2097, 1
  %2099 = trunc i64 %2096 to i32
  %2100 = and i64 %2096, 4294967295
  store i64 %2100, i64* %RSI.i1321, align 8
  store i8 %2098, i8* %43, align 1
  %2101 = and i32 %2099, 255
  %2102 = tail call i32 @llvm.ctpop.i32(i32 %2101)
  %2103 = trunc i32 %2102 to i8
  %2104 = and i8 %2103, 1
  %2105 = xor i8 %2104, 1
  store i8 %2105, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %2106 = icmp eq i32 %2099, 0
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %58, align 1
  %2108 = lshr i64 %2095, 32
  %2109 = trunc i64 %2108 to i8
  %2110 = and i8 %2109, 1
  store i8 %2110, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %2111 = load i64, i64* %RBP.i, align 8
  %2112 = add i64 %2111, -228
  %2113 = trunc i64 %2096 to i32
  %2114 = add i64 %1893, 67
  store i64 %2114, i64* %3, align 8
  %2115 = inttoptr i64 %2112 to i32*
  store i32 %2113, i32* %2115, align 4
  %2116 = load i64, i64* %RBP.i, align 8
  %2117 = add i64 %2116, -60
  %2118 = load i64, i64* %3, align 8
  %2119 = add i64 %2118, 3
  store i64 %2119, i64* %3, align 8
  %2120 = inttoptr i64 %2117 to i32*
  %2121 = load i32, i32* %2120, align 4
  %2122 = zext i32 %2121 to i64
  store i64 %2122, i64* %RDI.i1297, align 8
  %2123 = add i64 %2116, -64
  %2124 = add i64 %2118, 6
  store i64 %2124, i64* %3, align 8
  %2125 = inttoptr i64 %2123 to i32*
  %2126 = load i32, i32* %2125, align 4
  %2127 = zext i32 %2126 to i64
  store i64 %2127, i64* %RSI.i1321, align 8
  %2128 = add i64 %2116, -156
  %2129 = add i64 %2118, 12
  store i64 %2129, i64* %3, align 8
  %2130 = inttoptr i64 %2128 to i32*
  %2131 = load i32, i32* %2130, align 4
  %2132 = zext i32 %2131 to i64
  store i64 %2132, i64* %RDX.i1174.pre-phi, align 8
  %2133 = add i64 %2116, -160
  %2134 = add i64 %2118, 18
  store i64 %2134, i64* %3, align 8
  %2135 = inttoptr i64 %2133 to i32*
  %2136 = load i32, i32* %2135, align 4
  %2137 = zext i32 %2136 to i64
  store i64 %2137, i64* %RCX.i1180.pre-phi, align 8
  %2138 = add i64 %2116, -124
  %2139 = add i64 %2118, 22
  store i64 %2139, i64* %3, align 8
  %2140 = inttoptr i64 %2138 to i32*
  %2141 = load i32, i32* %2140, align 4
  %2142 = zext i32 %2141 to i64
  store i64 %2142, i64* %R8.i931, align 8
  %2143 = add i64 %2116, -128
  %2144 = add i64 %2118, 26
  store i64 %2144, i64* %3, align 8
  %2145 = inttoptr i64 %2143 to i32*
  %2146 = load i32, i32* %2145, align 4
  %2147 = zext i32 %2146 to i64
  store i64 %2147, i64* %1207, align 8
  %2148 = add i64 %2116, -144
  %2149 = add i64 %2118, 33
  store i64 %2149, i64* %3, align 8
  %2150 = inttoptr i64 %2148 to i64*
  %2151 = load i64, i64* %2150, align 8
  store i64 %2151, i64* %RAX.i1202.phi.trans.insert, align 8
  %2152 = add i64 %2116, -48
  %2153 = add i64 %2118, 37
  store i64 %2153, i64* %3, align 8
  %2154 = inttoptr i64 %2152 to i64*
  %2155 = load i64, i64* %2154, align 8
  store i64 %2155, i64* %78, align 8
  %2156 = add i64 %2116, -228
  %2157 = add i64 %2118, 44
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2156 to i32*
  %2159 = load i32, i32* %2158, align 4
  %2160 = zext i32 %2159 to i64
  store i64 %2160, i64* %85, align 8
  %2161 = add i64 %2116, -100
  %2162 = add i64 %2118, 47
  store i64 %2162, i64* %3, align 8
  %2163 = inttoptr i64 %2161 to i32*
  %2164 = load i32, i32* %2163, align 4
  %2165 = zext i32 %2164 to i64
  store i64 %2165, i64* %RBX.i918, align 8
  %R14D.i490 = bitcast %union.anon* %15 to i32*
  %2166 = add i64 %2116, -116
  %2167 = add i64 %2118, 51
  store i64 %2167, i64* %3, align 8
  %2168 = inttoptr i64 %2166 to i32*
  %2169 = load i32, i32* %2168, align 4
  %2170 = zext i32 %2169 to i64
  store i64 %2170, i64* %R14.i840, align 8
  %2171 = bitcast i64* %6 to i64**
  %2172 = load i64*, i64** %2171, align 8
  %2173 = add i64 %2118, 55
  store i64 %2173, i64* %3, align 8
  store i64 %2151, i64* %2172, align 8
  %2174 = load i64, i64* %6, align 8
  %2175 = add i64 %2174, 8
  %2176 = load i64, i64* %78, align 8
  %2177 = load i64, i64* %3, align 8
  %2178 = add i64 %2177, 5
  store i64 %2178, i64* %3, align 8
  %2179 = inttoptr i64 %2175 to i64*
  store i64 %2176, i64* %2179, align 8
  %2180 = load i64, i64* %6, align 8
  %2181 = add i64 %2180, 16
  %2182 = load i32, i32* %R11D.i1315, align 4
  %2183 = load i64, i64* %3, align 8
  %2184 = add i64 %2183, 5
  store i64 %2184, i64* %3, align 8
  %2185 = inttoptr i64 %2181 to i32*
  store i32 %2182, i32* %2185, align 4
  %2186 = load i64, i64* %6, align 8
  %2187 = add i64 %2186, 24
  %2188 = load i32, i32* %EBX.i1269, align 4
  %2189 = load i64, i64* %3, align 8
  %2190 = add i64 %2189, 4
  store i64 %2190, i64* %3, align 8
  %2191 = inttoptr i64 %2187 to i32*
  store i32 %2188, i32* %2191, align 4
  %2192 = load i64, i64* %6, align 8
  %2193 = add i64 %2192, 32
  %2194 = load i32, i32* %R14D.i490, align 4
  %2195 = load i64, i64* %3, align 8
  %2196 = add i64 %2195, 5
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2193 to i32*
  store i32 %2194, i32* %2197, align 4
  %2198 = load i64, i64* %3, align 8
  %2199 = add i64 %2198, -4013
  %2200 = add i64 %2198, 5
  %2201 = load i64, i64* %6, align 8
  %2202 = add i64 %2201, -8
  %2203 = inttoptr i64 %2202 to i64*
  store i64 %2200, i64* %2203, align 8
  store i64 %2202, i64* %6, align 8
  store i64 %2199, i64* %3, align 8
  %call2_42414d = tail call %struct.Memory* @sub_4231a0.AddUpSADQuarter(%struct.State* nonnull %0, i64 %2199, %struct.Memory* %MEMORY.5)
  %2204 = load i64, i64* %RBP.i, align 8
  %2205 = add i64 %2204, -120
  %2206 = load i32, i32* %EAX.i1188.pre-phi, align 4
  %2207 = load i64, i64* %3, align 8
  %2208 = add i64 %2207, 3
  store i64 %2208, i64* %3, align 8
  %2209 = inttoptr i64 %2205 to i32*
  store i32 %2206, i32* %2209, align 4
  %2210 = load i64, i64* %3, align 8
  %2211 = load i64, i64* bitcast (%G_0x710770_type* @G_0x710770 to i64*), align 8
  store i64 %2211, i64* %78, align 8
  %2212 = load i64, i64* %RBP.i, align 8
  %2213 = add i64 %2212, -128
  %2214 = add i64 %2210, 11
  store i64 %2214, i64* %3, align 8
  %2215 = inttoptr i64 %2213 to i32*
  %2216 = load i32, i32* %2215, align 4
  %2217 = zext i32 %2216 to i64
  store i64 %2217, i64* %RAX.i1202.phi.trans.insert, align 8
  %2218 = add i64 %2212, -88
  %2219 = add i64 %2210, 15
  store i64 %2219, i64* %3, align 8
  %2220 = inttoptr i64 %2218 to i64*
  %2221 = load i64, i64* %2220, align 8
  store i64 %2221, i64* %R15.i320, align 8
  %2222 = add i64 %2210, 19
  store i64 %2222, i64* %3, align 8
  %2223 = inttoptr i64 %2221 to i16*
  %2224 = load i16, i16* %2223, align 2
  %2225 = sext i16 %2224 to i64
  %2226 = and i64 %2225, 4294967295
  store i64 %2226, i64* %RCX.i1180.pre-phi, align 8
  %2227 = sext i16 %2224 to i32
  %2228 = sub i32 %2216, %2227
  %2229 = zext i32 %2228 to i64
  store i64 %2229, i64* %RAX.i1202.phi.trans.insert, align 8
  %2230 = icmp ult i32 %2216, %2227
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %43, align 1
  %2232 = and i32 %2228, 255
  %2233 = tail call i32 @llvm.ctpop.i32(i32 %2232)
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = xor i8 %2235, 1
  store i8 %2236, i8* %50, align 1
  %2237 = xor i32 %2227, %2216
  %2238 = xor i32 %2237, %2228
  %2239 = lshr i32 %2238, 4
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  store i8 %2241, i8* %55, align 1
  %2242 = icmp eq i32 %2228, 0
  %2243 = zext i1 %2242 to i8
  store i8 %2243, i8* %58, align 1
  %2244 = lshr i32 %2228, 31
  %2245 = trunc i32 %2244 to i8
  store i8 %2245, i8* %61, align 1
  %2246 = lshr i32 %2216, 31
  %2247 = lshr i32 %2227, 31
  %2248 = xor i32 %2247, %2246
  %2249 = xor i32 %2244, %2246
  %2250 = add nuw nsw i32 %2249, %2248
  %2251 = icmp eq i32 %2250, 2
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %67, align 1
  %2253 = add i64 %2212, -180
  %2254 = add i64 %2210, 27
  store i64 %2254, i64* %3, align 8
  %2255 = inttoptr i64 %2253 to i32*
  %2256 = load i32, i32* %2255, align 4
  %2257 = add i32 %2256, %2228
  %2258 = zext i32 %2257 to i64
  store i64 %2258, i64* %RAX.i1202.phi.trans.insert, align 8
  %2259 = icmp ult i32 %2257, %2228
  %2260 = icmp ult i32 %2257, %2256
  %2261 = or i1 %2259, %2260
  %2262 = zext i1 %2261 to i8
  store i8 %2262, i8* %43, align 1
  %2263 = and i32 %2257, 255
  %2264 = tail call i32 @llvm.ctpop.i32(i32 %2263)
  %2265 = trunc i32 %2264 to i8
  %2266 = and i8 %2265, 1
  %2267 = xor i8 %2266, 1
  store i8 %2267, i8* %50, align 1
  %2268 = xor i32 %2256, %2228
  %2269 = xor i32 %2268, %2257
  %2270 = lshr i32 %2269, 4
  %2271 = trunc i32 %2270 to i8
  %2272 = and i8 %2271, 1
  store i8 %2272, i8* %55, align 1
  %2273 = icmp eq i32 %2257, 0
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %58, align 1
  %2275 = lshr i32 %2257, 31
  %2276 = trunc i32 %2275 to i8
  store i8 %2276, i8* %61, align 1
  %2277 = lshr i32 %2256, 31
  %2278 = xor i32 %2275, %2244
  %2279 = xor i32 %2275, %2277
  %2280 = add nuw nsw i32 %2278, %2279
  %2281 = icmp eq i32 %2280, 2
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %67, align 1
  %2283 = sext i32 %2257 to i64
  store i64 %2283, i64* %R15.i320, align 8
  %2284 = load i64, i64* %78, align 8
  %2285 = shl nsw i64 %2283, 3
  %2286 = add i64 %2284, %2285
  %2287 = add i64 %2210, 34
  store i64 %2287, i64* %3, align 8
  %2288 = inttoptr i64 %2286 to i64*
  %2289 = load i64, i64* %2288, align 8
  store i64 %2289, i64* %78, align 8
  %2290 = load i64, i64* %RBP.i, align 8
  %2291 = add i64 %2290, -124
  %2292 = add i64 %2210, 37
  store i64 %2292, i64* %3, align 8
  %2293 = inttoptr i64 %2291 to i32*
  %2294 = load i32, i32* %2293, align 4
  %2295 = zext i32 %2294 to i64
  store i64 %2295, i64* %RAX.i1202.phi.trans.insert, align 8
  %2296 = add i64 %2290, -80
  %2297 = add i64 %2210, 41
  store i64 %2297, i64* %3, align 8
  %2298 = inttoptr i64 %2296 to i64*
  %2299 = load i64, i64* %2298, align 8
  store i64 %2299, i64* %R15.i320, align 8
  %2300 = add i64 %2210, 45
  store i64 %2300, i64* %3, align 8
  %2301 = inttoptr i64 %2299 to i16*
  %2302 = load i16, i16* %2301, align 2
  %2303 = sext i16 %2302 to i64
  %2304 = and i64 %2303, 4294967295
  store i64 %2304, i64* %RCX.i1180.pre-phi, align 8
  %2305 = sext i16 %2302 to i32
  %2306 = sub i32 %2294, %2305
  %2307 = zext i32 %2306 to i64
  store i64 %2307, i64* %RAX.i1202.phi.trans.insert, align 8
  %2308 = icmp ult i32 %2294, %2305
  %2309 = zext i1 %2308 to i8
  store i8 %2309, i8* %43, align 1
  %2310 = and i32 %2306, 255
  %2311 = tail call i32 @llvm.ctpop.i32(i32 %2310)
  %2312 = trunc i32 %2311 to i8
  %2313 = and i8 %2312, 1
  %2314 = xor i8 %2313, 1
  store i8 %2314, i8* %50, align 1
  %2315 = xor i32 %2305, %2294
  %2316 = xor i32 %2315, %2306
  %2317 = lshr i32 %2316, 4
  %2318 = trunc i32 %2317 to i8
  %2319 = and i8 %2318, 1
  store i8 %2319, i8* %55, align 1
  %2320 = icmp eq i32 %2306, 0
  %2321 = zext i1 %2320 to i8
  store i8 %2321, i8* %58, align 1
  %2322 = lshr i32 %2306, 31
  %2323 = trunc i32 %2322 to i8
  store i8 %2323, i8* %61, align 1
  %2324 = lshr i32 %2294, 31
  %2325 = lshr i32 %2305, 31
  %2326 = xor i32 %2325, %2324
  %2327 = xor i32 %2322, %2324
  %2328 = add nuw nsw i32 %2327, %2326
  %2329 = icmp eq i32 %2328, 2
  %2330 = zext i1 %2329 to i8
  store i8 %2330, i8* %67, align 1
  %2331 = add i64 %2290, -180
  %2332 = add i64 %2210, 53
  store i64 %2332, i64* %3, align 8
  %2333 = inttoptr i64 %2331 to i32*
  %2334 = load i32, i32* %2333, align 4
  %2335 = add i32 %2334, %2306
  %2336 = zext i32 %2335 to i64
  store i64 %2336, i64* %RAX.i1202.phi.trans.insert, align 8
  %2337 = icmp ult i32 %2335, %2306
  %2338 = icmp ult i32 %2335, %2334
  %2339 = or i1 %2337, %2338
  %2340 = zext i1 %2339 to i8
  store i8 %2340, i8* %43, align 1
  %2341 = and i32 %2335, 255
  %2342 = tail call i32 @llvm.ctpop.i32(i32 %2341)
  %2343 = trunc i32 %2342 to i8
  %2344 = and i8 %2343, 1
  %2345 = xor i8 %2344, 1
  store i8 %2345, i8* %50, align 1
  %2346 = xor i32 %2334, %2306
  %2347 = xor i32 %2346, %2335
  %2348 = lshr i32 %2347, 4
  %2349 = trunc i32 %2348 to i8
  %2350 = and i8 %2349, 1
  store i8 %2350, i8* %55, align 1
  %2351 = icmp eq i32 %2335, 0
  %2352 = zext i1 %2351 to i8
  store i8 %2352, i8* %58, align 1
  %2353 = lshr i32 %2335, 31
  %2354 = trunc i32 %2353 to i8
  store i8 %2354, i8* %61, align 1
  %2355 = lshr i32 %2334, 31
  %2356 = xor i32 %2353, %2322
  %2357 = xor i32 %2353, %2355
  %2358 = add nuw nsw i32 %2356, %2357
  %2359 = icmp eq i32 %2358, 2
  %2360 = zext i1 %2359 to i8
  store i8 %2360, i8* %67, align 1
  %2361 = sext i32 %2335 to i64
  store i64 %2361, i64* %R15.i320, align 8
  %2362 = load i64, i64* %78, align 8
  %2363 = add i64 %2362, %2361
  %2364 = add i64 %2210, 61
  store i64 %2364, i64* %3, align 8
  %2365 = inttoptr i64 %2363 to i8*
  store i8 1, i8* %2365, align 1
  %2366 = load i64, i64* %RBP.i, align 8
  %2367 = add i64 %2366, -120
  %2368 = load i64, i64* %3, align 8
  %2369 = add i64 %2368, 3
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2367 to i32*
  %2371 = load i32, i32* %2370, align 4
  %2372 = zext i32 %2371 to i64
  store i64 %2372, i64* %RAX.i1202.phi.trans.insert, align 8
  %2373 = add i64 %2366, -100
  %2374 = add i64 %2368, 6
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2373 to i32*
  %2376 = load i32, i32* %2375, align 4
  %2377 = sub i32 %2371, %2376
  %2378 = icmp ult i32 %2371, %2376
  %2379 = zext i1 %2378 to i8
  store i8 %2379, i8* %43, align 1
  %2380 = and i32 %2377, 255
  %2381 = tail call i32 @llvm.ctpop.i32(i32 %2380)
  %2382 = trunc i32 %2381 to i8
  %2383 = and i8 %2382, 1
  %2384 = xor i8 %2383, 1
  store i8 %2384, i8* %50, align 1
  %2385 = xor i32 %2376, %2371
  %2386 = xor i32 %2385, %2377
  %2387 = lshr i32 %2386, 4
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  store i8 %2389, i8* %55, align 1
  %2390 = icmp eq i32 %2377, 0
  %2391 = zext i1 %2390 to i8
  store i8 %2391, i8* %58, align 1
  %2392 = lshr i32 %2377, 31
  %2393 = trunc i32 %2392 to i8
  store i8 %2393, i8* %61, align 1
  %2394 = lshr i32 %2371, 31
  %2395 = lshr i32 %2376, 31
  %2396 = xor i32 %2395, %2394
  %2397 = xor i32 %2392, %2394
  %2398 = add nuw nsw i32 %2397, %2396
  %2399 = icmp eq i32 %2398, 2
  %2400 = zext i1 %2399 to i8
  store i8 %2400, i8* %67, align 1
  %2401 = icmp ne i8 %2393, 0
  %2402 = xor i1 %2401, %2399
  %.v72 = select i1 %2402, i64 12, i64 36
  %2403 = add i64 %2368, %.v72
  store i64 %2403, i64* %3, align 8
  br i1 %2402, label %block_42419e, label %block_.L_4241b6

block_42419e:                                     ; preds = %routine_shll__cl___esi.exit549
  %2404 = add i64 %2403, 3
  store i64 %2404, i64* %3, align 8
  %2405 = load i32, i32* %2370, align 4
  %2406 = zext i32 %2405 to i64
  store i64 %2406, i64* %RAX.i1202.phi.trans.insert, align 8
  %2407 = add i64 %2403, 6
  store i64 %2407, i64* %3, align 8
  store i32 %2405, i32* %2375, align 4
  %2408 = load i64, i64* %RBP.i, align 8
  %2409 = add i64 %2408, -124
  %2410 = load i64, i64* %3, align 8
  %2411 = add i64 %2410, 3
  store i64 %2411, i64* %3, align 8
  %2412 = inttoptr i64 %2409 to i32*
  %2413 = load i32, i32* %2412, align 4
  %2414 = zext i32 %2413 to i64
  store i64 %2414, i64* %RAX.i1202.phi.trans.insert, align 8
  %2415 = add i64 %2408, -204
  %2416 = add i64 %2410, 9
  store i64 %2416, i64* %3, align 8
  %2417 = inttoptr i64 %2415 to i32*
  store i32 %2413, i32* %2417, align 4
  %2418 = load i64, i64* %RBP.i, align 8
  %2419 = add i64 %2418, -128
  %2420 = load i64, i64* %3, align 8
  %2421 = add i64 %2420, 3
  store i64 %2421, i64* %3, align 8
  %2422 = inttoptr i64 %2419 to i32*
  %2423 = load i32, i32* %2422, align 4
  %2424 = zext i32 %2423 to i64
  store i64 %2424, i64* %RAX.i1202.phi.trans.insert, align 8
  %2425 = add i64 %2418, -208
  %2426 = add i64 %2420, 9
  store i64 %2426, i64* %3, align 8
  %2427 = inttoptr i64 %2425 to i32*
  store i32 %2423, i32* %2427, align 4
  %.pre51 = load i64, i64* %3, align 8
  %.pre52.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_4241b6

block_.L_4241b6:                                  ; preds = %routine_shll__cl___esi.exit549, %block_42419e
  %.pre52 = phi i64 [ %2366, %routine_shll__cl___esi.exit549 ], [ %.pre52.pre, %block_42419e ]
  %2428 = phi i64 [ %2403, %routine_shll__cl___esi.exit549 ], [ %.pre51, %block_42419e ]
  %2429 = add i64 %2428, 5
  store i64 %2429, i64* %3, align 8
  br label %block_.L_4241bb

block_.L_4241bb:                                  ; preds = %block_424076.block_.L_4241bb_crit_edge, %block_.L_4241b6
  %.pre-phi = phi i64** [ %.pre63, %block_424076.block_.L_4241bb_crit_edge ], [ %2171, %block_.L_4241b6 ]
  %R14D.i155.pre-phi = phi i32* [ %.pre62, %block_424076.block_.L_4241bb_crit_edge ], [ %R14D.i490, %block_.L_4241b6 ]
  %2430 = phi i64 [ %1780, %block_424076.block_.L_4241bb_crit_edge ], [ %2429, %block_.L_4241b6 ]
  %2431 = phi i64 [ %1752, %block_424076.block_.L_4241bb_crit_edge ], [ %.pre52, %block_.L_4241b6 ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.5, %block_424076.block_.L_4241bb_crit_edge ], [ %call2_42414d, %block_.L_4241b6 ]
  %2432 = add i64 %2431, -204
  %2433 = add i64 %2430, 6
  store i64 %2433, i64* %3, align 8
  %2434 = inttoptr i64 %2432 to i32*
  %2435 = load i32, i32* %2434, align 4
  %2436 = zext i32 %2435 to i64
  store i64 %2436, i64* %RAX.i1202.phi.trans.insert, align 8
  %2437 = add i64 %2431, -184
  %2438 = add i64 %2430, 12
  store i64 %2438, i64* %3, align 8
  %2439 = inttoptr i64 %2437 to i32*
  store i32 %2435, i32* %2439, align 4
  %2440 = load i64, i64* %RBP.i, align 8
  %2441 = add i64 %2440, -208
  %2442 = load i64, i64* %3, align 8
  %2443 = add i64 %2442, 6
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2441 to i32*
  %2445 = load i32, i32* %2444, align 4
  %2446 = zext i32 %2445 to i64
  store i64 %2446, i64* %RAX.i1202.phi.trans.insert, align 8
  %2447 = add i64 %2440, -188
  %2448 = add i64 %2442, 12
  store i64 %2448, i64* %3, align 8
  %2449 = inttoptr i64 %2447 to i32*
  store i32 %2445, i32* %2449, align 4
  %2450 = load i64, i64* %RBP.i, align 8
  %2451 = add i64 %2450, -180
  %2452 = load i64, i64* %3, align 8
  %2453 = add i64 %2452, 6
  store i64 %2453, i64* %3, align 8
  %2454 = inttoptr i64 %2451 to i32*
  %2455 = load i32, i32* %2454, align 4
  %2456 = shl i32 %2455, 1
  %2457 = or i32 %2456, 1
  %2458 = zext i32 %2457 to i64
  store i64 %2458, i64* %RAX.i1202.phi.trans.insert, align 8
  store i8 0, i8* %43, align 1
  %2459 = and i32 %2457, 255
  %2460 = tail call i32 @llvm.ctpop.i32(i32 %2459)
  %2461 = trunc i32 %2460 to i8
  %2462 = and i8 %2461, 1
  %2463 = xor i8 %2462, 1
  store i8 %2463, i8* %50, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %58, align 1
  %2464 = lshr i32 %2455, 30
  %2465 = and i32 %2464, 1
  %2466 = trunc i32 %2465 to i8
  store i8 %2466, i8* %61, align 1
  %2467 = lshr i32 %2455, 30
  %2468 = and i32 %2467, 1
  %2469 = xor i32 %2465, %2468
  %2470 = add nuw nsw i32 %2469, %2465
  %2471 = icmp eq i32 %2470, 2
  %2472 = zext i1 %2471 to i8
  store i8 %2472, i8* %67, align 1
  %2473 = add i64 %2450, -212
  %2474 = add i64 %2452, 17
  store i64 %2474, i64* %3, align 8
  %2475 = inttoptr i64 %2473 to i32*
  store i32 %2457, i32* %2475, align 4
  %2476 = load i64, i64* %RBP.i, align 8
  %2477 = add i64 %2476, -192
  %2478 = load i64, i64* %3, align 8
  %2479 = add i64 %2478, 10
  store i64 %2479, i64* %3, align 8
  %2480 = inttoptr i64 %2477 to i32*
  store i32 0, i32* %2480, align 4
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_4241ef

block_.L_4241ef:                                  ; preds = %block_.L_424444, %block_.L_4241bb
  %2481 = phi i64 [ %.pre53, %block_.L_4241bb ], [ %3637, %block_.L_424444 ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.8, %block_.L_4241bb ], [ %MEMORY.10, %block_.L_424444 ]
  %2482 = load i64, i64* %RBP.i, align 8
  %2483 = add i64 %2482, -192
  %2484 = add i64 %2481, 6
  store i64 %2484, i64* %3, align 8
  %2485 = inttoptr i64 %2483 to i32*
  %2486 = load i32, i32* %2485, align 4
  %2487 = zext i32 %2486 to i64
  store i64 %2487, i64* %RAX.i1202.phi.trans.insert, align 8
  %2488 = add i64 %2482, -212
  %2489 = add i64 %2481, 12
  store i64 %2489, i64* %3, align 8
  %2490 = inttoptr i64 %2488 to i32*
  %2491 = load i32, i32* %2490, align 4
  %2492 = sub i32 %2486, %2491
  %2493 = icmp ult i32 %2486, %2491
  %2494 = zext i1 %2493 to i8
  store i8 %2494, i8* %43, align 1
  %2495 = and i32 %2492, 255
  %2496 = tail call i32 @llvm.ctpop.i32(i32 %2495)
  %2497 = trunc i32 %2496 to i8
  %2498 = and i8 %2497, 1
  %2499 = xor i8 %2498, 1
  store i8 %2499, i8* %50, align 1
  %2500 = xor i32 %2491, %2486
  %2501 = xor i32 %2500, %2492
  %2502 = lshr i32 %2501, 4
  %2503 = trunc i32 %2502 to i8
  %2504 = and i8 %2503, 1
  store i8 %2504, i8* %55, align 1
  %2505 = icmp eq i32 %2492, 0
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %58, align 1
  %2507 = lshr i32 %2492, 31
  %2508 = trunc i32 %2507 to i8
  store i8 %2508, i8* %61, align 1
  %2509 = lshr i32 %2486, 31
  %2510 = lshr i32 %2491, 31
  %2511 = xor i32 %2510, %2509
  %2512 = xor i32 %2507, %2509
  %2513 = add nuw nsw i32 %2512, %2511
  %2514 = icmp eq i32 %2513, 2
  %2515 = zext i1 %2514 to i8
  store i8 %2515, i8* %67, align 1
  %2516 = icmp ne i8 %2508, 0
  %2517 = xor i1 %2516, %2514
  %.v73 = select i1 %2517, i64 18, i64 622
  %2518 = add i64 %2481, %.v73
  store i64 %2518, i64* %3, align 8
  br i1 %2517, label %block_424201, label %block_.L_42445d.loopexit

block_424201:                                     ; preds = %block_.L_4241ef
  %2519 = add i64 %2482, -224
  %2520 = add i64 %2518, 10
  store i64 %2520, i64* %3, align 8
  %2521 = inttoptr i64 %2519 to i32*
  store i32 1, i32* %2521, align 4
  %2522 = load i64, i64* %RBP.i, align 8
  %2523 = add i64 %2522, -196
  %2524 = load i64, i64* %3, align 8
  %2525 = add i64 %2524, 10
  store i64 %2525, i64* %3, align 8
  %2526 = inttoptr i64 %2523 to i32*
  store i32 65536, i32* %2526, align 4
  %2527 = load i64, i64* %RBP.i, align 8
  %2528 = add i64 %2527, -200
  %2529 = load i64, i64* %3, align 8
  %2530 = add i64 %2529, 10
  store i64 %2530, i64* %3, align 8
  %2531 = inttoptr i64 %2528 to i32*
  store i32 0, i32* %2531, align 4
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_42421f

block_.L_42421f:                                  ; preds = %block_.L_424401, %block_424201
  %2532 = phi i64 [ %.pre54, %block_424201 ], [ %3572, %block_.L_424401 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_424201 ], [ %MEMORY.13, %block_.L_424401 ]
  %2533 = load i64, i64* %RBP.i, align 8
  %2534 = add i64 %2533, -200
  %2535 = add i64 %2532, 7
  store i64 %2535, i64* %3, align 8
  %2536 = inttoptr i64 %2534 to i32*
  %2537 = load i32, i32* %2536, align 4
  %2538 = add i32 %2537, -4
  %2539 = icmp ult i32 %2537, 4
  %2540 = zext i1 %2539 to i8
  store i8 %2540, i8* %43, align 1
  %2541 = and i32 %2538, 255
  %2542 = tail call i32 @llvm.ctpop.i32(i32 %2541)
  %2543 = trunc i32 %2542 to i8
  %2544 = and i8 %2543, 1
  %2545 = xor i8 %2544, 1
  store i8 %2545, i8* %50, align 1
  %2546 = xor i32 %2538, %2537
  %2547 = lshr i32 %2546, 4
  %2548 = trunc i32 %2547 to i8
  %2549 = and i8 %2548, 1
  store i8 %2549, i8* %55, align 1
  %2550 = icmp eq i32 %2538, 0
  %2551 = zext i1 %2550 to i8
  store i8 %2551, i8* %58, align 1
  %2552 = lshr i32 %2538, 31
  %2553 = trunc i32 %2552 to i8
  store i8 %2553, i8* %61, align 1
  %2554 = lshr i32 %2537, 31
  %2555 = xor i32 %2552, %2554
  %2556 = add nuw nsw i32 %2555, %2554
  %2557 = icmp eq i32 %2556, 2
  %2558 = zext i1 %2557 to i8
  store i8 %2558, i8* %67, align 1
  %2559 = icmp ne i8 %2553, 0
  %2560 = xor i1 %2559, %2557
  %.v74 = select i1 %2560, i64 13, i64 507
  %2561 = add i64 %2532, %.v74
  store i64 %2561, i64* %3, align 8
  br i1 %2560, label %block_42422c, label %block_.L_42441a

block_42422c:                                     ; preds = %block_.L_42421f
  %2562 = add i64 %2533, -184
  %2563 = add i64 %2561, 6
  store i64 %2563, i64* %3, align 8
  %2564 = inttoptr i64 %2562 to i32*
  %2565 = load i32, i32* %2564, align 4
  %2566 = zext i32 %2565 to i64
  store i64 %2566, i64* %RAX.i1202.phi.trans.insert, align 8
  %2567 = add i64 %2561, 13
  store i64 %2567, i64* %3, align 8
  %2568 = load i32, i32* %2536, align 4
  %2569 = sext i32 %2568 to i64
  store i64 %2569, i64* %RCX.i1180.pre-phi, align 8
  %2570 = shl nsw i64 %2569, 2
  %2571 = add nsw i64 %2570, 7125120
  %2572 = add i64 %2561, 20
  store i64 %2572, i64* %3, align 8
  %2573 = inttoptr i64 %2571 to i32*
  %2574 = load i32, i32* %2573, align 4
  %2575 = add i32 %2574, %2565
  %2576 = zext i32 %2575 to i64
  store i64 %2576, i64* %RAX.i1202.phi.trans.insert, align 8
  %2577 = icmp ult i32 %2575, %2565
  %2578 = icmp ult i32 %2575, %2574
  %2579 = or i1 %2577, %2578
  %2580 = zext i1 %2579 to i8
  store i8 %2580, i8* %43, align 1
  %2581 = and i32 %2575, 255
  %2582 = tail call i32 @llvm.ctpop.i32(i32 %2581)
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  %2585 = xor i8 %2584, 1
  store i8 %2585, i8* %50, align 1
  %2586 = xor i32 %2574, %2565
  %2587 = xor i32 %2586, %2575
  %2588 = lshr i32 %2587, 4
  %2589 = trunc i32 %2588 to i8
  %2590 = and i8 %2589, 1
  store i8 %2590, i8* %55, align 1
  %2591 = icmp eq i32 %2575, 0
  %2592 = zext i1 %2591 to i8
  store i8 %2592, i8* %58, align 1
  %2593 = lshr i32 %2575, 31
  %2594 = trunc i32 %2593 to i8
  store i8 %2594, i8* %61, align 1
  %2595 = lshr i32 %2565, 31
  %2596 = lshr i32 %2574, 31
  %2597 = xor i32 %2593, %2595
  %2598 = xor i32 %2593, %2596
  %2599 = add nuw nsw i32 %2597, %2598
  %2600 = icmp eq i32 %2599, 2
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %67, align 1
  %2602 = add i64 %2533, -124
  %2603 = add i64 %2561, 23
  store i64 %2603, i64* %3, align 8
  %2604 = inttoptr i64 %2602 to i32*
  store i32 %2575, i32* %2604, align 4
  %2605 = load i64, i64* %RBP.i, align 8
  %2606 = add i64 %2605, -188
  %2607 = load i64, i64* %3, align 8
  %2608 = add i64 %2607, 6
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2606 to i32*
  %2610 = load i32, i32* %2609, align 4
  %2611 = zext i32 %2610 to i64
  store i64 %2611, i64* %RAX.i1202.phi.trans.insert, align 8
  %2612 = add i64 %2605, -200
  %2613 = add i64 %2607, 13
  store i64 %2613, i64* %3, align 8
  %2614 = inttoptr i64 %2612 to i32*
  %2615 = load i32, i32* %2614, align 4
  %2616 = sext i32 %2615 to i64
  store i64 %2616, i64* %RCX.i1180.pre-phi, align 8
  %2617 = shl nsw i64 %2616, 2
  %2618 = add nsw i64 %2617, 7125136
  %2619 = add i64 %2607, 20
  store i64 %2619, i64* %3, align 8
  %2620 = inttoptr i64 %2618 to i32*
  %2621 = load i32, i32* %2620, align 4
  %2622 = add i32 %2621, %2610
  %2623 = zext i32 %2622 to i64
  store i64 %2623, i64* %RAX.i1202.phi.trans.insert, align 8
  %2624 = icmp ult i32 %2622, %2610
  %2625 = icmp ult i32 %2622, %2621
  %2626 = or i1 %2624, %2625
  %2627 = zext i1 %2626 to i8
  store i8 %2627, i8* %43, align 1
  %2628 = and i32 %2622, 255
  %2629 = tail call i32 @llvm.ctpop.i32(i32 %2628)
  %2630 = trunc i32 %2629 to i8
  %2631 = and i8 %2630, 1
  %2632 = xor i8 %2631, 1
  store i8 %2632, i8* %50, align 1
  %2633 = xor i32 %2621, %2610
  %2634 = xor i32 %2633, %2622
  %2635 = lshr i32 %2634, 4
  %2636 = trunc i32 %2635 to i8
  %2637 = and i8 %2636, 1
  store i8 %2637, i8* %55, align 1
  %2638 = icmp eq i32 %2622, 0
  %2639 = zext i1 %2638 to i8
  store i8 %2639, i8* %58, align 1
  %2640 = lshr i32 %2622, 31
  %2641 = trunc i32 %2640 to i8
  store i8 %2641, i8* %61, align 1
  %2642 = lshr i32 %2610, 31
  %2643 = lshr i32 %2621, 31
  %2644 = xor i32 %2640, %2642
  %2645 = xor i32 %2640, %2643
  %2646 = add nuw nsw i32 %2644, %2645
  %2647 = icmp eq i32 %2646, 2
  %2648 = zext i1 %2647 to i8
  store i8 %2648, i8* %67, align 1
  %2649 = add i64 %2605, -128
  %2650 = add i64 %2607, 23
  store i64 %2650, i64* %3, align 8
  %2651 = inttoptr i64 %2649 to i32*
  store i32 %2622, i32* %2651, align 4
  %2652 = load i64, i64* %RBP.i, align 8
  %2653 = add i64 %2652, -124
  %2654 = load i64, i64* %3, align 8
  %2655 = add i64 %2654, 3
  store i64 %2655, i64* %3, align 8
  %2656 = inttoptr i64 %2653 to i32*
  %2657 = load i32, i32* %2656, align 4
  %2658 = zext i32 %2657 to i64
  store i64 %2658, i64* %RAX.i1202.phi.trans.insert, align 8
  %2659 = add i64 %2652, -80
  %2660 = add i64 %2654, 7
  store i64 %2660, i64* %3, align 8
  %2661 = inttoptr i64 %2659 to i64*
  %2662 = load i64, i64* %2661, align 8
  store i64 %2662, i64* %RCX.i1180.pre-phi, align 8
  %2663 = add i64 %2654, 10
  store i64 %2663, i64* %3, align 8
  %2664 = inttoptr i64 %2662 to i16*
  %2665 = load i16, i16* %2664, align 2
  %2666 = sext i16 %2665 to i64
  %2667 = and i64 %2666, 4294967295
  store i64 %2667, i64* %RDX.i1174.pre-phi, align 8
  %2668 = sext i16 %2665 to i32
  %2669 = sub i32 %2657, %2668
  %2670 = zext i32 %2669 to i64
  store i64 %2670, i64* %RAX.i1202.phi.trans.insert, align 8
  %2671 = icmp ult i32 %2657, %2668
  %2672 = zext i1 %2671 to i8
  store i8 %2672, i8* %43, align 1
  %2673 = and i32 %2669, 255
  %2674 = tail call i32 @llvm.ctpop.i32(i32 %2673)
  %2675 = trunc i32 %2674 to i8
  %2676 = and i8 %2675, 1
  %2677 = xor i8 %2676, 1
  store i8 %2677, i8* %50, align 1
  %2678 = xor i32 %2668, %2657
  %2679 = xor i32 %2678, %2669
  %2680 = lshr i32 %2679, 4
  %2681 = trunc i32 %2680 to i8
  %2682 = and i8 %2681, 1
  store i8 %2682, i8* %55, align 1
  %2683 = icmp eq i32 %2669, 0
  %2684 = zext i1 %2683 to i8
  store i8 %2684, i8* %58, align 1
  %2685 = lshr i32 %2669, 31
  %2686 = trunc i32 %2685 to i8
  store i8 %2686, i8* %61, align 1
  %2687 = lshr i32 %2657, 31
  %2688 = lshr i32 %2668, 31
  %2689 = xor i32 %2688, %2687
  %2690 = xor i32 %2685, %2687
  %2691 = add nuw nsw i32 %2690, %2689
  %2692 = icmp eq i32 %2691, 2
  %2693 = zext i1 %2692 to i8
  store i8 %2693, i8* %67, align 1
  store i64 %2670, i64* %RDI.i1297, align 8
  %2694 = add i64 %2654, -143962
  %2695 = add i64 %2654, 19
  %2696 = load i64, i64* %6, align 8
  %2697 = add i64 %2696, -8
  %2698 = inttoptr i64 %2697 to i64*
  store i64 %2695, i64* %2698, align 8
  store i64 %2697, i64* %6, align 8
  store i64 %2694, i64* %3, align 8
  %2699 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.10)
  %2700 = load i32, i32* %EAX.i1188.pre-phi, align 4
  %2701 = load i64, i64* %RBP.i, align 8
  %2702 = add i64 %2701, -180
  %2703 = load i64, i64* %3, align 8
  %2704 = add i64 %2703, 6
  store i64 %2704, i64* %3, align 8
  %2705 = inttoptr i64 %2702 to i32*
  %2706 = load i32, i32* %2705, align 4
  %2707 = sub i32 %2700, %2706
  %2708 = icmp ult i32 %2700, %2706
  %2709 = zext i1 %2708 to i8
  store i8 %2709, i8* %43, align 1
  %2710 = and i32 %2707, 255
  %2711 = tail call i32 @llvm.ctpop.i32(i32 %2710)
  %2712 = trunc i32 %2711 to i8
  %2713 = and i8 %2712, 1
  %2714 = xor i8 %2713, 1
  store i8 %2714, i8* %50, align 1
  %2715 = xor i32 %2706, %2700
  %2716 = xor i32 %2715, %2707
  %2717 = lshr i32 %2716, 4
  %2718 = trunc i32 %2717 to i8
  %2719 = and i8 %2718, 1
  store i8 %2719, i8* %55, align 1
  %2720 = icmp eq i32 %2707, 0
  %2721 = zext i1 %2720 to i8
  store i8 %2721, i8* %58, align 1
  %2722 = lshr i32 %2707, 31
  %2723 = trunc i32 %2722 to i8
  store i8 %2723, i8* %61, align 1
  %2724 = lshr i32 %2700, 31
  %2725 = lshr i32 %2706, 31
  %2726 = xor i32 %2725, %2724
  %2727 = xor i32 %2722, %2724
  %2728 = add nuw nsw i32 %2727, %2726
  %2729 = icmp eq i32 %2728, 2
  %2730 = zext i1 %2729 to i8
  store i8 %2730, i8* %67, align 1
  %2731 = icmp ne i8 %2723, 0
  %2732 = xor i1 %2731, %2729
  %.demorgan = or i1 %2720, %2732
  %.v75 = select i1 %.demorgan, i64 12, i64 404
  %2733 = add i64 %2703, %.v75
  store i64 %2733, i64* %3, align 8
  br i1 %.demorgan, label %block_424279, label %block_.L_424401

block_424279:                                     ; preds = %block_42422c
  %2734 = add i64 %2701, -128
  %2735 = add i64 %2733, 3
  store i64 %2735, i64* %3, align 8
  %2736 = inttoptr i64 %2734 to i32*
  %2737 = load i32, i32* %2736, align 4
  %2738 = zext i32 %2737 to i64
  store i64 %2738, i64* %RAX.i1202.phi.trans.insert, align 8
  %2739 = add i64 %2701, -88
  %2740 = add i64 %2733, 7
  store i64 %2740, i64* %3, align 8
  %2741 = inttoptr i64 %2739 to i64*
  %2742 = load i64, i64* %2741, align 8
  store i64 %2742, i64* %RCX.i1180.pre-phi, align 8
  %2743 = add i64 %2733, 10
  store i64 %2743, i64* %3, align 8
  %2744 = inttoptr i64 %2742 to i16*
  %2745 = load i16, i16* %2744, align 2
  %2746 = sext i16 %2745 to i64
  %2747 = and i64 %2746, 4294967295
  store i64 %2747, i64* %RDX.i1174.pre-phi, align 8
  %2748 = sext i16 %2745 to i32
  %2749 = sub i32 %2737, %2748
  %2750 = zext i32 %2749 to i64
  store i64 %2750, i64* %RAX.i1202.phi.trans.insert, align 8
  %2751 = icmp ult i32 %2737, %2748
  %2752 = zext i1 %2751 to i8
  store i8 %2752, i8* %43, align 1
  %2753 = and i32 %2749, 255
  %2754 = tail call i32 @llvm.ctpop.i32(i32 %2753)
  %2755 = trunc i32 %2754 to i8
  %2756 = and i8 %2755, 1
  %2757 = xor i8 %2756, 1
  store i8 %2757, i8* %50, align 1
  %2758 = xor i32 %2748, %2737
  %2759 = xor i32 %2758, %2749
  %2760 = lshr i32 %2759, 4
  %2761 = trunc i32 %2760 to i8
  %2762 = and i8 %2761, 1
  store i8 %2762, i8* %55, align 1
  %2763 = icmp eq i32 %2749, 0
  %2764 = zext i1 %2763 to i8
  store i8 %2764, i8* %58, align 1
  %2765 = lshr i32 %2749, 31
  %2766 = trunc i32 %2765 to i8
  store i8 %2766, i8* %61, align 1
  %2767 = lshr i32 %2737, 31
  %2768 = lshr i32 %2748, 31
  %2769 = xor i32 %2768, %2767
  %2770 = xor i32 %2765, %2767
  %2771 = add nuw nsw i32 %2770, %2769
  %2772 = icmp eq i32 %2771, 2
  %2773 = zext i1 %2772 to i8
  store i8 %2773, i8* %67, align 1
  store i64 %2750, i64* %RDI.i1297, align 8
  %2774 = add i64 %2733, -143993
  %2775 = add i64 %2733, 19
  %2776 = load i64, i64* %6, align 8
  %2777 = add i64 %2776, -8
  %2778 = inttoptr i64 %2777 to i64*
  store i64 %2775, i64* %2778, align 8
  store i64 %2777, i64* %6, align 8
  store i64 %2774, i64* %3, align 8
  %2779 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %2699)
  %2780 = load i32, i32* %EAX.i1188.pre-phi, align 4
  %2781 = load i64, i64* %RBP.i, align 8
  %2782 = add i64 %2781, -180
  %2783 = load i64, i64* %3, align 8
  %2784 = add i64 %2783, 6
  store i64 %2784, i64* %3, align 8
  %2785 = inttoptr i64 %2782 to i32*
  %2786 = load i32, i32* %2785, align 4
  %2787 = sub i32 %2780, %2786
  %2788 = icmp ult i32 %2780, %2786
  %2789 = zext i1 %2788 to i8
  store i8 %2789, i8* %43, align 1
  %2790 = and i32 %2787, 255
  %2791 = tail call i32 @llvm.ctpop.i32(i32 %2790)
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  %2794 = xor i8 %2793, 1
  store i8 %2794, i8* %50, align 1
  %2795 = xor i32 %2786, %2780
  %2796 = xor i32 %2795, %2787
  %2797 = lshr i32 %2796, 4
  %2798 = trunc i32 %2797 to i8
  %2799 = and i8 %2798, 1
  store i8 %2799, i8* %55, align 1
  %2800 = icmp eq i32 %2787, 0
  %2801 = zext i1 %2800 to i8
  store i8 %2801, i8* %58, align 1
  %2802 = lshr i32 %2787, 31
  %2803 = trunc i32 %2802 to i8
  store i8 %2803, i8* %61, align 1
  %2804 = lshr i32 %2780, 31
  %2805 = lshr i32 %2786, 31
  %2806 = xor i32 %2805, %2804
  %2807 = xor i32 %2802, %2804
  %2808 = add nuw nsw i32 %2807, %2806
  %2809 = icmp eq i32 %2808, 2
  %2810 = zext i1 %2809 to i8
  store i8 %2810, i8* %67, align 1
  %2811 = icmp ne i8 %2803, 0
  %2812 = xor i1 %2811, %2809
  %.demorgan64 = or i1 %2800, %2812
  %.v76 = select i1 %.demorgan64, i64 12, i64 373
  %2813 = add i64 %2783, %.v76
  store i64 %2813, i64* %3, align 8
  br i1 %.demorgan64, label %block_424298, label %block_.L_424401

block_424298:                                     ; preds = %block_424279
  %2814 = load i64, i64* bitcast (%G_0x710770_type* @G_0x710770 to i64*), align 8
  store i64 %2814, i64* %RAX.i1202.phi.trans.insert, align 8
  %2815 = add i64 %2781, -128
  %2816 = add i64 %2813, 11
  store i64 %2816, i64* %3, align 8
  %2817 = inttoptr i64 %2815 to i32*
  %2818 = load i32, i32* %2817, align 4
  %2819 = zext i32 %2818 to i64
  store i64 %2819, i64* %RCX.i1180.pre-phi, align 8
  %2820 = add i64 %2781, -88
  %2821 = add i64 %2813, 15
  store i64 %2821, i64* %3, align 8
  %2822 = inttoptr i64 %2820 to i64*
  %2823 = load i64, i64* %2822, align 8
  store i64 %2823, i64* %RDX.i1174.pre-phi, align 8
  %2824 = add i64 %2813, 18
  store i64 %2824, i64* %3, align 8
  %2825 = inttoptr i64 %2823 to i16*
  %2826 = load i16, i16* %2825, align 2
  %2827 = sext i16 %2826 to i64
  %2828 = and i64 %2827, 4294967295
  store i64 %2828, i64* %RSI.i1321, align 8
  %2829 = sext i16 %2826 to i32
  %2830 = sub i32 %2818, %2829
  %2831 = zext i32 %2830 to i64
  store i64 %2831, i64* %RCX.i1180.pre-phi, align 8
  %2832 = icmp ult i32 %2818, %2829
  %2833 = zext i1 %2832 to i8
  store i8 %2833, i8* %43, align 1
  %2834 = and i32 %2830, 255
  %2835 = tail call i32 @llvm.ctpop.i32(i32 %2834)
  %2836 = trunc i32 %2835 to i8
  %2837 = and i8 %2836, 1
  %2838 = xor i8 %2837, 1
  store i8 %2838, i8* %50, align 1
  %2839 = xor i32 %2829, %2818
  %2840 = xor i32 %2839, %2830
  %2841 = lshr i32 %2840, 4
  %2842 = trunc i32 %2841 to i8
  %2843 = and i8 %2842, 1
  store i8 %2843, i8* %55, align 1
  %2844 = icmp eq i32 %2830, 0
  %2845 = zext i1 %2844 to i8
  store i8 %2845, i8* %58, align 1
  %2846 = lshr i32 %2830, 31
  %2847 = trunc i32 %2846 to i8
  store i8 %2847, i8* %61, align 1
  %2848 = lshr i32 %2818, 31
  %2849 = lshr i32 %2829, 31
  %2850 = xor i32 %2849, %2848
  %2851 = xor i32 %2846, %2848
  %2852 = add nuw nsw i32 %2851, %2850
  %2853 = icmp eq i32 %2852, 2
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %67, align 1
  %2855 = add i64 %2813, 26
  store i64 %2855, i64* %3, align 8
  %2856 = load i32, i32* %2785, align 4
  %2857 = add i32 %2856, %2830
  %2858 = zext i32 %2857 to i64
  store i64 %2858, i64* %RCX.i1180.pre-phi, align 8
  %2859 = icmp ult i32 %2857, %2830
  %2860 = icmp ult i32 %2857, %2856
  %2861 = or i1 %2859, %2860
  %2862 = zext i1 %2861 to i8
  store i8 %2862, i8* %43, align 1
  %2863 = and i32 %2857, 255
  %2864 = tail call i32 @llvm.ctpop.i32(i32 %2863)
  %2865 = trunc i32 %2864 to i8
  %2866 = and i8 %2865, 1
  %2867 = xor i8 %2866, 1
  store i8 %2867, i8* %50, align 1
  %2868 = xor i32 %2856, %2830
  %2869 = xor i32 %2868, %2857
  %2870 = lshr i32 %2869, 4
  %2871 = trunc i32 %2870 to i8
  %2872 = and i8 %2871, 1
  store i8 %2872, i8* %55, align 1
  %2873 = icmp eq i32 %2857, 0
  %2874 = zext i1 %2873 to i8
  store i8 %2874, i8* %58, align 1
  %2875 = lshr i32 %2857, 31
  %2876 = trunc i32 %2875 to i8
  store i8 %2876, i8* %61, align 1
  %2877 = lshr i32 %2856, 31
  %2878 = xor i32 %2875, %2846
  %2879 = xor i32 %2875, %2877
  %2880 = add nuw nsw i32 %2878, %2879
  %2881 = icmp eq i32 %2880, 2
  %2882 = zext i1 %2881 to i8
  store i8 %2882, i8* %67, align 1
  %2883 = sext i32 %2857 to i64
  store i64 %2883, i64* %RDX.i1174.pre-phi, align 8
  %2884 = shl nsw i64 %2883, 3
  %2885 = add i64 %2814, %2884
  %2886 = add i64 %2813, 33
  store i64 %2886, i64* %3, align 8
  %2887 = inttoptr i64 %2885 to i64*
  %2888 = load i64, i64* %2887, align 8
  store i64 %2888, i64* %RAX.i1202.phi.trans.insert, align 8
  %2889 = load i64, i64* %RBP.i, align 8
  %2890 = add i64 %2889, -124
  %2891 = add i64 %2813, 36
  store i64 %2891, i64* %3, align 8
  %2892 = inttoptr i64 %2890 to i32*
  %2893 = load i32, i32* %2892, align 4
  %2894 = zext i32 %2893 to i64
  store i64 %2894, i64* %RCX.i1180.pre-phi, align 8
  %2895 = add i64 %2889, -80
  %2896 = add i64 %2813, 40
  store i64 %2896, i64* %3, align 8
  %2897 = inttoptr i64 %2895 to i64*
  %2898 = load i64, i64* %2897, align 8
  store i64 %2898, i64* %RDX.i1174.pre-phi, align 8
  %2899 = add i64 %2813, 43
  store i64 %2899, i64* %3, align 8
  %2900 = inttoptr i64 %2898 to i16*
  %2901 = load i16, i16* %2900, align 2
  %2902 = sext i16 %2901 to i64
  %2903 = and i64 %2902, 4294967295
  store i64 %2903, i64* %RSI.i1321, align 8
  %2904 = sext i16 %2901 to i32
  %2905 = sub i32 %2893, %2904
  %2906 = zext i32 %2905 to i64
  store i64 %2906, i64* %RCX.i1180.pre-phi, align 8
  %2907 = icmp ult i32 %2893, %2904
  %2908 = zext i1 %2907 to i8
  store i8 %2908, i8* %43, align 1
  %2909 = and i32 %2905, 255
  %2910 = tail call i32 @llvm.ctpop.i32(i32 %2909)
  %2911 = trunc i32 %2910 to i8
  %2912 = and i8 %2911, 1
  %2913 = xor i8 %2912, 1
  store i8 %2913, i8* %50, align 1
  %2914 = xor i32 %2904, %2893
  %2915 = xor i32 %2914, %2905
  %2916 = lshr i32 %2915, 4
  %2917 = trunc i32 %2916 to i8
  %2918 = and i8 %2917, 1
  store i8 %2918, i8* %55, align 1
  %2919 = icmp eq i32 %2905, 0
  %2920 = zext i1 %2919 to i8
  store i8 %2920, i8* %58, align 1
  %2921 = lshr i32 %2905, 31
  %2922 = trunc i32 %2921 to i8
  store i8 %2922, i8* %61, align 1
  %2923 = lshr i32 %2893, 31
  %2924 = lshr i32 %2904, 31
  %2925 = xor i32 %2924, %2923
  %2926 = xor i32 %2921, %2923
  %2927 = add nuw nsw i32 %2926, %2925
  %2928 = icmp eq i32 %2927, 2
  %2929 = zext i1 %2928 to i8
  store i8 %2929, i8* %67, align 1
  %2930 = add i64 %2889, -180
  %2931 = add i64 %2813, 51
  store i64 %2931, i64* %3, align 8
  %2932 = inttoptr i64 %2930 to i32*
  %2933 = load i32, i32* %2932, align 4
  %2934 = add i32 %2933, %2905
  %2935 = zext i32 %2934 to i64
  store i64 %2935, i64* %RCX.i1180.pre-phi, align 8
  %2936 = icmp ult i32 %2934, %2905
  %2937 = icmp ult i32 %2934, %2933
  %2938 = or i1 %2936, %2937
  %2939 = zext i1 %2938 to i8
  store i8 %2939, i8* %43, align 1
  %2940 = and i32 %2934, 255
  %2941 = tail call i32 @llvm.ctpop.i32(i32 %2940)
  %2942 = trunc i32 %2941 to i8
  %2943 = and i8 %2942, 1
  %2944 = xor i8 %2943, 1
  store i8 %2944, i8* %50, align 1
  %2945 = xor i32 %2933, %2905
  %2946 = xor i32 %2945, %2934
  %2947 = lshr i32 %2946, 4
  %2948 = trunc i32 %2947 to i8
  %2949 = and i8 %2948, 1
  store i8 %2949, i8* %55, align 1
  %2950 = icmp eq i32 %2934, 0
  %2951 = zext i1 %2950 to i8
  store i8 %2951, i8* %58, align 1
  %2952 = lshr i32 %2934, 31
  %2953 = trunc i32 %2952 to i8
  store i8 %2953, i8* %61, align 1
  %2954 = lshr i32 %2933, 31
  %2955 = xor i32 %2952, %2921
  %2956 = xor i32 %2952, %2954
  %2957 = add nuw nsw i32 %2955, %2956
  %2958 = icmp eq i32 %2957, 2
  %2959 = zext i1 %2958 to i8
  store i8 %2959, i8* %67, align 1
  %2960 = add i64 %2813, 54
  store i64 %2960, i64* %3, align 8
  %2961 = sext i32 %2934 to i64
  store i64 %2961, i64* %RDX.i1174.pre-phi, align 8
  %2962 = load i64, i64* %RAX.i1202.phi.trans.insert, align 8
  %2963 = add i64 %2962, %2961
  %2964 = add i64 %2813, 58
  store i64 %2964, i64* %3, align 8
  %2965 = inttoptr i64 %2963 to i8*
  %2966 = load i8, i8* %2965, align 1
  store i8 0, i8* %43, align 1
  %2967 = zext i8 %2966 to i32
  %2968 = tail call i32 @llvm.ctpop.i32(i32 %2967)
  %2969 = trunc i32 %2968 to i8
  %2970 = and i8 %2969, 1
  %2971 = xor i8 %2970, 1
  store i8 %2971, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %2972 = icmp eq i8 %2966, 0
  %2973 = zext i1 %2972 to i8
  store i8 %2973, i8* %58, align 1
  %2974 = lshr i8 %2966, 7
  store i8 %2974, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v77 = select i1 %2972, i64 64, i64 356
  %2975 = add i64 %2813, %.v77
  store i64 %2975, i64* %3, align 8
  br i1 %2972, label %block_4242d8, label %block_.L_4243fc

block_4242d8:                                     ; preds = %block_424298
  %2976 = load i64, i64* %RBP.i, align 8
  %2977 = add i64 %2976, -148
  %2978 = add i64 %2975, 6
  store i64 %2978, i64* %3, align 8
  %2979 = inttoptr i64 %2977 to i32*
  %2980 = load i32, i32* %2979, align 4
  %2981 = zext i32 %2980 to i64
  store i64 %2981, i64* %RAX.i1202.phi.trans.insert, align 8
  %2982 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  store i64 %2982, i64* %RCX.i1180.pre-phi, align 8
  %2983 = add i64 %2976, -124
  %2984 = add i64 %2975, 17
  store i64 %2984, i64* %3, align 8
  %2985 = inttoptr i64 %2983 to i32*
  %2986 = load i32, i32* %2985, align 4
  %2987 = zext i32 %2986 to i64
  store i64 %2987, i64* %RDX.i1174.pre-phi, align 8
  %2988 = add i64 %2976, -152
  %2989 = add i64 %2975, 23
  store i64 %2989, i64* %3, align 8
  %2990 = inttoptr i64 %2988 to i32*
  %2991 = load i32, i32* %2990, align 4
  %2992 = zext i32 %2991 to i64
  store i64 %2992, i64* %RSI.i1321, align 8
  %2993 = add i64 %2976, -264
  %2994 = add i64 %2975, 30
  store i64 %2994, i64* %3, align 8
  %2995 = inttoptr i64 %2993 to i64*
  store i64 %2982, i64* %2995, align 8
  %2996 = load i32, i32* %ESI.i1258, align 4
  %2997 = zext i32 %2996 to i64
  %2998 = load i64, i64* %3, align 8
  store i64 %2997, i64* %RCX.i1180.pre-phi, align 8
  %2999 = load i64, i64* %RDX.i1174.pre-phi, align 8
  %3000 = add i64 %2998, 4
  store i64 %3000, i64* %3, align 8
  %3001 = trunc i32 %2996 to i5
  switch i5 %3001, label %3008 [
    i5 0, label %routine_shll__cl___edx.exit
    i5 1, label %3002
  ]

; <label>:3002:                                   ; preds = %block_4242d8
  %3003 = trunc i64 %2999 to i32
  %3004 = shl i32 %3003, 1
  %3005 = icmp slt i32 %3003, 0
  %3006 = icmp slt i32 %3004, 0
  %3007 = xor i1 %3005, %3006
  br label %3018

; <label>:3008:                                   ; preds = %block_4242d8
  %3009 = and i32 %2996, 31
  %3010 = zext i32 %3009 to i64
  %3011 = add nuw nsw i64 %3010, 4294967295
  %3012 = and i64 %2999, 4294967295
  %3013 = and i64 %3011, 4294967295
  %3014 = shl i64 %3012, %3013
  %3015 = trunc i64 %3014 to i32
  %3016 = icmp slt i32 %3015, 0
  %3017 = shl i32 %3015, 1
  br label %3018

; <label>:3018:                                   ; preds = %3008, %3002
  %3019 = phi i1 [ %3005, %3002 ], [ %3016, %3008 ]
  %3020 = phi i1 [ %3007, %3002 ], [ false, %3008 ]
  %3021 = phi i32 [ %3004, %3002 ], [ %3017, %3008 ]
  %3022 = zext i32 %3021 to i64
  store i64 %3022, i64* %RDX.i1174.pre-phi, align 8
  %3023 = zext i1 %3019 to i8
  store i8 %3023, i8* %43, align 1
  %3024 = and i32 %3021, 254
  %3025 = tail call i32 @llvm.ctpop.i32(i32 %3024)
  %3026 = trunc i32 %3025 to i8
  %3027 = and i8 %3026, 1
  %3028 = xor i8 %3027, 1
  store i8 %3028, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %3029 = icmp eq i32 %3021, 0
  %3030 = zext i1 %3029 to i8
  store i8 %3030, i8* %58, align 1
  %3031 = lshr i32 %3021, 31
  %3032 = trunc i32 %3031 to i8
  store i8 %3032, i8* %61, align 1
  %3033 = zext i1 %3020 to i8
  store i8 %3033, i8* %67, align 1
  br label %routine_shll__cl___edx.exit

routine_shll__cl___edx.exit:                      ; preds = %3018, %block_4242d8
  %3034 = phi i64 [ %3022, %3018 ], [ %2999, %block_4242d8 ]
  %3035 = load i64, i64* %RBP.i, align 8
  %3036 = add i64 %3035, -70
  %3037 = add i64 %2998, 8
  store i64 %3037, i64* %3, align 8
  %3038 = inttoptr i64 %3036 to i16*
  %3039 = load i16, i16* %3038, align 2
  %3040 = sext i16 %3039 to i64
  %3041 = and i64 %3040, 4294967295
  store i64 %3041, i64* %RSI.i1321, align 8
  %3042 = sext i16 %3039 to i32
  %3043 = zext i32 %3042 to i64
  %3044 = trunc i64 %3034 to i32
  %3045 = sub i32 %3044, %3042
  %3046 = zext i32 %3045 to i64
  store i64 %3046, i64* %RDX.i1174.pre-phi, align 8
  %3047 = icmp ult i32 %3044, %3042
  %3048 = zext i1 %3047 to i8
  store i8 %3048, i8* %43, align 1
  %3049 = and i32 %3045, 255
  %3050 = tail call i32 @llvm.ctpop.i32(i32 %3049)
  %3051 = trunc i32 %3050 to i8
  %3052 = and i8 %3051, 1
  %3053 = xor i8 %3052, 1
  store i8 %3053, i8* %50, align 1
  %3054 = xor i64 %3043, %3034
  %3055 = trunc i64 %3054 to i32
  %3056 = xor i32 %3055, %3045
  %3057 = lshr i32 %3056, 4
  %3058 = trunc i32 %3057 to i8
  %3059 = and i8 %3058, 1
  store i8 %3059, i8* %55, align 1
  %3060 = icmp eq i32 %3045, 0
  %3061 = zext i1 %3060 to i8
  store i8 %3061, i8* %58, align 1
  %3062 = lshr i32 %3045, 31
  %3063 = trunc i32 %3062 to i8
  store i8 %3063, i8* %61, align 1
  %3064 = lshr i32 %3044, 31
  %3065 = lshr i32 %3042, 31
  %3066 = xor i32 %3065, %3064
  %3067 = xor i32 %3062, %3064
  %3068 = add nuw nsw i32 %3067, %3066
  %3069 = icmp eq i32 %3068, 2
  %3070 = zext i1 %3069 to i8
  store i8 %3070, i8* %67, align 1
  %3071 = sext i32 %3045 to i64
  store i64 %3071, i64* %RDI.i1297, align 8
  %3072 = add i64 %3035, -264
  %3073 = add i64 %2998, 20
  store i64 %3073, i64* %3, align 8
  %3074 = inttoptr i64 %3072 to i64*
  %3075 = load i64, i64* %3074, align 8
  store i64 %3075, i64* %R8.i931, align 8
  %3076 = shl nsw i64 %3071, 2
  %3077 = add i64 %3076, %3075
  %3078 = add i64 %2998, 24
  store i64 %3078, i64* %3, align 8
  %3079 = inttoptr i64 %3077 to i32*
  %3080 = load i32, i32* %3079, align 4
  %3081 = zext i32 %3080 to i64
  store i64 %3081, i64* %RDX.i1174.pre-phi, align 8
  %3082 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  store i64 %3082, i64* %RDI.i1297, align 8
  %3083 = add i64 %3035, -128
  %3084 = add i64 %2998, 35
  store i64 %3084, i64* %3, align 8
  %3085 = inttoptr i64 %3083 to i32*
  %3086 = load i32, i32* %3085, align 4
  %3087 = zext i32 %3086 to i64
  store i64 %3087, i64* %RSI.i1321, align 8
  %3088 = add i64 %3035, -152
  %3089 = add i64 %2998, 41
  store i64 %3089, i64* %3, align 8
  %3090 = inttoptr i64 %3088 to i32*
  %3091 = load i32, i32* %3090, align 4
  %3092 = zext i32 %3091 to i64
  store i64 %3092, i64* %RCX.i1180.pre-phi, align 8
  %3093 = add i64 %2998, 43
  store i64 %3093, i64* %3, align 8
  %3094 = trunc i32 %3091 to i5
  switch i5 %3094, label %3100 [
    i5 0, label %routine_shll__cl___esi.exit
    i5 1, label %3095
  ]

; <label>:3095:                                   ; preds = %routine_shll__cl___edx.exit
  %3096 = shl i32 %3086, 1
  %3097 = icmp slt i32 %3086, 0
  %3098 = icmp slt i32 %3096, 0
  %3099 = xor i1 %3097, %3098
  br label %3109

; <label>:3100:                                   ; preds = %routine_shll__cl___edx.exit
  %3101 = and i32 %3091, 31
  %3102 = zext i32 %3101 to i64
  %3103 = add nuw nsw i64 %3102, 4294967295
  %3104 = and i64 %3103, 4294967295
  %3105 = shl i64 %3087, %3104
  %3106 = trunc i64 %3105 to i32
  %3107 = icmp slt i32 %3106, 0
  %3108 = shl i32 %3106, 1
  br label %3109

; <label>:3109:                                   ; preds = %3100, %3095
  %3110 = phi i1 [ %3097, %3095 ], [ %3107, %3100 ]
  %3111 = phi i1 [ %3099, %3095 ], [ false, %3100 ]
  %3112 = phi i32 [ %3096, %3095 ], [ %3108, %3100 ]
  %3113 = zext i32 %3112 to i64
  store i64 %3113, i64* %RSI.i1321, align 8
  %3114 = zext i1 %3110 to i8
  store i8 %3114, i8* %43, align 1
  %3115 = and i32 %3112, 254
  %3116 = tail call i32 @llvm.ctpop.i32(i32 %3115)
  %3117 = trunc i32 %3116 to i8
  %3118 = and i8 %3117, 1
  %3119 = xor i8 %3118, 1
  store i8 %3119, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %3120 = icmp eq i32 %3112, 0
  %3121 = zext i1 %3120 to i8
  store i8 %3121, i8* %58, align 1
  %3122 = lshr i32 %3112, 31
  %3123 = trunc i32 %3122 to i8
  store i8 %3123, i8* %61, align 1
  %3124 = zext i1 %3111 to i8
  store i8 %3124, i8* %67, align 1
  br label %routine_shll__cl___esi.exit

routine_shll__cl___esi.exit:                      ; preds = %3109, %routine_shll__cl___edx.exit
  %3125 = phi i64 [ %3113, %3109 ], [ %3087, %routine_shll__cl___edx.exit ]
  %3126 = add i64 %3035, -72
  %3127 = add i64 %2998, 48
  store i64 %3127, i64* %3, align 8
  %3128 = inttoptr i64 %3126 to i16*
  %3129 = load i16, i16* %3128, align 2
  %3130 = sext i16 %3129 to i64
  %3131 = and i64 %3130, 4294967295
  store i64 %3131, i64* %1207, align 8
  %3132 = sext i16 %3129 to i32
  %3133 = zext i32 %3132 to i64
  %3134 = trunc i64 %3125 to i32
  %3135 = sub i32 %3134, %3132
  %3136 = zext i32 %3135 to i64
  store i64 %3136, i64* %RSI.i1321, align 8
  %3137 = icmp ult i32 %3134, %3132
  %3138 = zext i1 %3137 to i8
  store i8 %3138, i8* %43, align 1
  %3139 = and i32 %3135, 255
  %3140 = tail call i32 @llvm.ctpop.i32(i32 %3139)
  %3141 = trunc i32 %3140 to i8
  %3142 = and i8 %3141, 1
  %3143 = xor i8 %3142, 1
  store i8 %3143, i8* %50, align 1
  %3144 = xor i64 %3133, %3125
  %3145 = trunc i64 %3144 to i32
  %3146 = xor i32 %3145, %3135
  %3147 = lshr i32 %3146, 4
  %3148 = trunc i32 %3147 to i8
  %3149 = and i8 %3148, 1
  store i8 %3149, i8* %55, align 1
  %3150 = icmp eq i32 %3135, 0
  %3151 = zext i1 %3150 to i8
  store i8 %3151, i8* %58, align 1
  %3152 = lshr i32 %3135, 31
  %3153 = trunc i32 %3152 to i8
  store i8 %3153, i8* %61, align 1
  %3154 = lshr i32 %3134, 31
  %3155 = lshr i32 %3132, 31
  %3156 = xor i32 %3155, %3154
  %3157 = xor i32 %3152, %3154
  %3158 = add nuw nsw i32 %3157, %3156
  %3159 = icmp eq i32 %3158, 2
  %3160 = zext i1 %3159 to i8
  store i8 %3160, i8* %67, align 1
  %3161 = sext i32 %3135 to i64
  store i64 %3161, i64* %78, align 8
  %3162 = shl nsw i64 %3161, 2
  %3163 = add i64 %3082, %3162
  %3164 = add i64 %2998, 58
  store i64 %3164, i64* %3, align 8
  %3165 = inttoptr i64 %3163 to i32*
  %3166 = load i32, i32* %3165, align 4
  %3167 = add i32 %3166, %3080
  %3168 = zext i32 %3167 to i64
  store i64 %3168, i64* %RDX.i1174.pre-phi, align 8
  %3169 = icmp ult i32 %3167, %3080
  %3170 = icmp ult i32 %3167, %3166
  %3171 = or i1 %3169, %3170
  %3172 = zext i1 %3171 to i8
  store i8 %3172, i8* %43, align 1
  %3173 = and i32 %3167, 255
  %3174 = tail call i32 @llvm.ctpop.i32(i32 %3173)
  %3175 = trunc i32 %3174 to i8
  %3176 = and i8 %3175, 1
  %3177 = xor i8 %3176, 1
  store i8 %3177, i8* %50, align 1
  %3178 = xor i32 %3166, %3080
  %3179 = xor i32 %3178, %3167
  %3180 = lshr i32 %3179, 4
  %3181 = trunc i32 %3180 to i8
  %3182 = and i8 %3181, 1
  store i8 %3182, i8* %55, align 1
  %3183 = icmp eq i32 %3167, 0
  %3184 = zext i1 %3183 to i8
  store i8 %3184, i8* %58, align 1
  %3185 = lshr i32 %3167, 31
  %3186 = trunc i32 %3185 to i8
  store i8 %3186, i8* %61, align 1
  %3187 = lshr i32 %3080, 31
  %3188 = lshr i32 %3166, 31
  %3189 = xor i32 %3185, %3187
  %3190 = xor i32 %3185, %3188
  %3191 = add nuw nsw i32 %3189, %3190
  %3192 = icmp eq i32 %3191, 2
  %3193 = zext i1 %3192 to i8
  store i8 %3193, i8* %67, align 1
  %3194 = load i64, i64* %RAX.i1202.phi.trans.insert, align 8
  %3195 = shl i64 %3194, 32
  %3196 = ashr exact i64 %3195, 32
  %3197 = sext i32 %3167 to i64
  %3198 = mul nsw i64 %3197, %3196
  %3199 = shl i64 %3198, 32
  %3200 = ashr i64 %3199, 47
  %3201 = lshr i64 %3200, 1
  %3202 = trunc i64 %3200 to i8
  %3203 = and i8 %3202, 1
  %3204 = trunc i64 %3201 to i32
  %3205 = and i64 %3201, 4294967295
  store i64 %3205, i64* %RAX.i1202.phi.trans.insert, align 8
  store i8 %3203, i8* %43, align 1
  %3206 = and i32 %3204, 255
  %3207 = tail call i32 @llvm.ctpop.i32(i32 %3206)
  %3208 = trunc i32 %3207 to i8
  %3209 = and i8 %3208, 1
  %3210 = xor i8 %3209, 1
  store i8 %3210, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %3211 = icmp eq i32 %3204, 0
  %3212 = zext i1 %3211 to i8
  store i8 %3212, i8* %58, align 1
  %3213 = lshr i64 %3200, 32
  %3214 = trunc i64 %3213 to i8
  %3215 = and i8 %3214, 1
  store i8 %3215, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %3216 = load i64, i64* %RBP.i, align 8
  %3217 = add i64 %3216, -228
  %3218 = trunc i64 %3201 to i32
  %3219 = add i64 %2998, 70
  store i64 %3219, i64* %3, align 8
  %3220 = inttoptr i64 %3217 to i32*
  store i32 %3218, i32* %3220, align 4
  %3221 = load i64, i64* %RBP.i, align 8
  %3222 = add i64 %3221, -60
  %3223 = load i64, i64* %3, align 8
  %3224 = add i64 %3223, 3
  store i64 %3224, i64* %3, align 8
  %3225 = inttoptr i64 %3222 to i32*
  %3226 = load i32, i32* %3225, align 4
  %3227 = zext i32 %3226 to i64
  store i64 %3227, i64* %RDI.i1297, align 8
  %3228 = add i64 %3221, -64
  %3229 = add i64 %3223, 6
  store i64 %3229, i64* %3, align 8
  %3230 = inttoptr i64 %3228 to i32*
  %3231 = load i32, i32* %3230, align 4
  %3232 = zext i32 %3231 to i64
  store i64 %3232, i64* %RSI.i1321, align 8
  %3233 = add i64 %3221, -156
  %3234 = add i64 %3223, 12
  store i64 %3234, i64* %3, align 8
  %3235 = inttoptr i64 %3233 to i32*
  %3236 = load i32, i32* %3235, align 4
  %3237 = zext i32 %3236 to i64
  store i64 %3237, i64* %RDX.i1174.pre-phi, align 8
  %3238 = add i64 %3221, -160
  %3239 = add i64 %3223, 18
  store i64 %3239, i64* %3, align 8
  %3240 = inttoptr i64 %3238 to i32*
  %3241 = load i32, i32* %3240, align 4
  %3242 = zext i32 %3241 to i64
  store i64 %3242, i64* %RCX.i1180.pre-phi, align 8
  %3243 = add i64 %3221, -124
  %3244 = add i64 %3223, 22
  store i64 %3244, i64* %3, align 8
  %3245 = inttoptr i64 %3243 to i32*
  %3246 = load i32, i32* %3245, align 4
  %3247 = zext i32 %3246 to i64
  store i64 %3247, i64* %R8.i931, align 8
  %3248 = add i64 %3221, -128
  %3249 = add i64 %3223, 26
  store i64 %3249, i64* %3, align 8
  %3250 = inttoptr i64 %3248 to i32*
  %3251 = load i32, i32* %3250, align 4
  %3252 = zext i32 %3251 to i64
  store i64 %3252, i64* %1207, align 8
  %3253 = add i64 %3221, -144
  %3254 = add i64 %3223, 33
  store i64 %3254, i64* %3, align 8
  %3255 = inttoptr i64 %3253 to i64*
  %3256 = load i64, i64* %3255, align 8
  store i64 %3256, i64* %78, align 8
  %3257 = add i64 %3221, -48
  %3258 = add i64 %3223, 37
  store i64 %3258, i64* %3, align 8
  %3259 = inttoptr i64 %3257 to i64*
  %3260 = load i64, i64* %3259, align 8
  store i64 %3260, i64* %85, align 8
  %3261 = add i64 %3221, -228
  %3262 = add i64 %3223, 43
  store i64 %3262, i64* %3, align 8
  %3263 = inttoptr i64 %3261 to i32*
  %3264 = load i32, i32* %3263, align 4
  %3265 = zext i32 %3264 to i64
  store i64 %3265, i64* %RAX.i1202.phi.trans.insert, align 8
  %3266 = add i64 %3221, -100
  %3267 = add i64 %3223, 46
  store i64 %3267, i64* %3, align 8
  %3268 = inttoptr i64 %3266 to i32*
  %3269 = load i32, i32* %3268, align 4
  %3270 = zext i32 %3269 to i64
  store i64 %3270, i64* %RBX.i918, align 8
  %3271 = add i64 %3221, -116
  %3272 = add i64 %3223, 50
  store i64 %3272, i64* %3, align 8
  %3273 = inttoptr i64 %3271 to i32*
  %3274 = load i32, i32* %3273, align 4
  %3275 = zext i32 %3274 to i64
  store i64 %3275, i64* %R14.i840, align 8
  %3276 = load i64*, i64** %.pre-phi, align 8
  %3277 = add i64 %3223, 54
  store i64 %3277, i64* %3, align 8
  store i64 %3256, i64* %3276, align 8
  %3278 = load i64, i64* %6, align 8
  %3279 = add i64 %3278, 8
  %3280 = load i64, i64* %85, align 8
  %3281 = load i64, i64* %3, align 8
  %3282 = add i64 %3281, 5
  store i64 %3282, i64* %3, align 8
  %3283 = inttoptr i64 %3279 to i64*
  store i64 %3280, i64* %3283, align 8
  %3284 = load i64, i64* %6, align 8
  %3285 = add i64 %3284, 16
  %3286 = load i32, i32* %EAX.i1188.pre-phi, align 4
  %3287 = load i64, i64* %3, align 8
  %3288 = add i64 %3287, 4
  store i64 %3288, i64* %3, align 8
  %3289 = inttoptr i64 %3285 to i32*
  store i32 %3286, i32* %3289, align 4
  %3290 = load i64, i64* %6, align 8
  %3291 = add i64 %3290, 24
  %3292 = load i32, i32* %EBX.i1269, align 4
  %3293 = load i64, i64* %3, align 8
  %3294 = add i64 %3293, 4
  store i64 %3294, i64* %3, align 8
  %3295 = inttoptr i64 %3291 to i32*
  store i32 %3292, i32* %3295, align 4
  %3296 = load i64, i64* %6, align 8
  %3297 = add i64 %3296, 32
  %3298 = load i32, i32* %R14D.i155.pre-phi, align 4
  %3299 = load i64, i64* %3, align 8
  %3300 = add i64 %3299, 5
  store i64 %3300, i64* %3, align 8
  %3301 = inttoptr i64 %3297 to i32*
  store i32 %3298, i32* %3301, align 4
  %3302 = load i64, i64* %3, align 8
  %3303 = add i64 %3302, -4580
  %3304 = add i64 %3302, 5
  %3305 = load i64, i64* %6, align 8
  %3306 = add i64 %3305, -8
  %3307 = inttoptr i64 %3306 to i64*
  store i64 %3304, i64* %3307, align 8
  store i64 %3306, i64* %6, align 8
  store i64 %3303, i64* %3, align 8
  %call2_424384 = tail call %struct.Memory* @sub_4231a0.AddUpSADQuarter(%struct.State* nonnull %0, i64 %3303, %struct.Memory* %2779)
  %3308 = load i64, i64* %RBP.i, align 8
  %3309 = add i64 %3308, -120
  %3310 = load i32, i32* %EAX.i1188.pre-phi, align 4
  %3311 = load i64, i64* %3, align 8
  %3312 = add i64 %3311, 3
  store i64 %3312, i64* %3, align 8
  %3313 = inttoptr i64 %3309 to i32*
  store i32 %3310, i32* %3313, align 4
  %3314 = load i64, i64* %3, align 8
  %3315 = load i64, i64* bitcast (%G_0x710770_type* @G_0x710770 to i64*), align 8
  store i64 %3315, i64* %78, align 8
  %3316 = load i64, i64* %RBP.i, align 8
  %3317 = add i64 %3316, -128
  %3318 = add i64 %3314, 11
  store i64 %3318, i64* %3, align 8
  %3319 = inttoptr i64 %3317 to i32*
  %3320 = load i32, i32* %3319, align 4
  %3321 = zext i32 %3320 to i64
  store i64 %3321, i64* %RAX.i1202.phi.trans.insert, align 8
  %3322 = add i64 %3316, -88
  %3323 = add i64 %3314, 15
  store i64 %3323, i64* %3, align 8
  %3324 = inttoptr i64 %3322 to i64*
  %3325 = load i64, i64* %3324, align 8
  store i64 %3325, i64* %85, align 8
  %3326 = add i64 %3314, 19
  store i64 %3326, i64* %3, align 8
  %3327 = inttoptr i64 %3325 to i16*
  %3328 = load i16, i16* %3327, align 2
  %3329 = sext i16 %3328 to i64
  %3330 = and i64 %3329, 4294967295
  store i64 %3330, i64* %RCX.i1180.pre-phi, align 8
  %3331 = sext i16 %3328 to i32
  %3332 = sub i32 %3320, %3331
  %3333 = zext i32 %3332 to i64
  store i64 %3333, i64* %RAX.i1202.phi.trans.insert, align 8
  %3334 = icmp ult i32 %3320, %3331
  %3335 = zext i1 %3334 to i8
  store i8 %3335, i8* %43, align 1
  %3336 = and i32 %3332, 255
  %3337 = tail call i32 @llvm.ctpop.i32(i32 %3336)
  %3338 = trunc i32 %3337 to i8
  %3339 = and i8 %3338, 1
  %3340 = xor i8 %3339, 1
  store i8 %3340, i8* %50, align 1
  %3341 = xor i32 %3331, %3320
  %3342 = xor i32 %3341, %3332
  %3343 = lshr i32 %3342, 4
  %3344 = trunc i32 %3343 to i8
  %3345 = and i8 %3344, 1
  store i8 %3345, i8* %55, align 1
  %3346 = icmp eq i32 %3332, 0
  %3347 = zext i1 %3346 to i8
  store i8 %3347, i8* %58, align 1
  %3348 = lshr i32 %3332, 31
  %3349 = trunc i32 %3348 to i8
  store i8 %3349, i8* %61, align 1
  %3350 = lshr i32 %3320, 31
  %3351 = lshr i32 %3331, 31
  %3352 = xor i32 %3351, %3350
  %3353 = xor i32 %3348, %3350
  %3354 = add nuw nsw i32 %3353, %3352
  %3355 = icmp eq i32 %3354, 2
  %3356 = zext i1 %3355 to i8
  store i8 %3356, i8* %67, align 1
  %3357 = add i64 %3316, -180
  %3358 = add i64 %3314, 27
  store i64 %3358, i64* %3, align 8
  %3359 = inttoptr i64 %3357 to i32*
  %3360 = load i32, i32* %3359, align 4
  %3361 = add i32 %3360, %3332
  %3362 = zext i32 %3361 to i64
  store i64 %3362, i64* %RAX.i1202.phi.trans.insert, align 8
  %3363 = icmp ult i32 %3361, %3332
  %3364 = icmp ult i32 %3361, %3360
  %3365 = or i1 %3363, %3364
  %3366 = zext i1 %3365 to i8
  store i8 %3366, i8* %43, align 1
  %3367 = and i32 %3361, 255
  %3368 = tail call i32 @llvm.ctpop.i32(i32 %3367)
  %3369 = trunc i32 %3368 to i8
  %3370 = and i8 %3369, 1
  %3371 = xor i8 %3370, 1
  store i8 %3371, i8* %50, align 1
  %3372 = xor i32 %3360, %3332
  %3373 = xor i32 %3372, %3361
  %3374 = lshr i32 %3373, 4
  %3375 = trunc i32 %3374 to i8
  %3376 = and i8 %3375, 1
  store i8 %3376, i8* %55, align 1
  %3377 = icmp eq i32 %3361, 0
  %3378 = zext i1 %3377 to i8
  store i8 %3378, i8* %58, align 1
  %3379 = lshr i32 %3361, 31
  %3380 = trunc i32 %3379 to i8
  store i8 %3380, i8* %61, align 1
  %3381 = lshr i32 %3360, 31
  %3382 = xor i32 %3379, %3348
  %3383 = xor i32 %3379, %3381
  %3384 = add nuw nsw i32 %3382, %3383
  %3385 = icmp eq i32 %3384, 2
  %3386 = zext i1 %3385 to i8
  store i8 %3386, i8* %67, align 1
  %3387 = sext i32 %3361 to i64
  store i64 %3387, i64* %85, align 8
  %3388 = load i64, i64* %78, align 8
  %3389 = shl nsw i64 %3387, 3
  %3390 = add i64 %3388, %3389
  %3391 = add i64 %3314, 34
  store i64 %3391, i64* %3, align 8
  %3392 = inttoptr i64 %3390 to i64*
  %3393 = load i64, i64* %3392, align 8
  store i64 %3393, i64* %78, align 8
  %3394 = load i64, i64* %RBP.i, align 8
  %3395 = add i64 %3394, -124
  %3396 = add i64 %3314, 37
  store i64 %3396, i64* %3, align 8
  %3397 = inttoptr i64 %3395 to i32*
  %3398 = load i32, i32* %3397, align 4
  %3399 = zext i32 %3398 to i64
  store i64 %3399, i64* %RAX.i1202.phi.trans.insert, align 8
  %3400 = add i64 %3394, -80
  %3401 = add i64 %3314, 41
  store i64 %3401, i64* %3, align 8
  %3402 = inttoptr i64 %3400 to i64*
  %3403 = load i64, i64* %3402, align 8
  store i64 %3403, i64* %85, align 8
  %3404 = add i64 %3314, 45
  store i64 %3404, i64* %3, align 8
  %3405 = inttoptr i64 %3403 to i16*
  %3406 = load i16, i16* %3405, align 2
  %3407 = sext i16 %3406 to i64
  %3408 = and i64 %3407, 4294967295
  store i64 %3408, i64* %RCX.i1180.pre-phi, align 8
  %3409 = sext i16 %3406 to i32
  %3410 = sub i32 %3398, %3409
  %3411 = zext i32 %3410 to i64
  store i64 %3411, i64* %RAX.i1202.phi.trans.insert, align 8
  %3412 = icmp ult i32 %3398, %3409
  %3413 = zext i1 %3412 to i8
  store i8 %3413, i8* %43, align 1
  %3414 = and i32 %3410, 255
  %3415 = tail call i32 @llvm.ctpop.i32(i32 %3414)
  %3416 = trunc i32 %3415 to i8
  %3417 = and i8 %3416, 1
  %3418 = xor i8 %3417, 1
  store i8 %3418, i8* %50, align 1
  %3419 = xor i32 %3409, %3398
  %3420 = xor i32 %3419, %3410
  %3421 = lshr i32 %3420, 4
  %3422 = trunc i32 %3421 to i8
  %3423 = and i8 %3422, 1
  store i8 %3423, i8* %55, align 1
  %3424 = icmp eq i32 %3410, 0
  %3425 = zext i1 %3424 to i8
  store i8 %3425, i8* %58, align 1
  %3426 = lshr i32 %3410, 31
  %3427 = trunc i32 %3426 to i8
  store i8 %3427, i8* %61, align 1
  %3428 = lshr i32 %3398, 31
  %3429 = lshr i32 %3409, 31
  %3430 = xor i32 %3429, %3428
  %3431 = xor i32 %3426, %3428
  %3432 = add nuw nsw i32 %3431, %3430
  %3433 = icmp eq i32 %3432, 2
  %3434 = zext i1 %3433 to i8
  store i8 %3434, i8* %67, align 1
  %3435 = add i64 %3394, -180
  %3436 = add i64 %3314, 53
  store i64 %3436, i64* %3, align 8
  %3437 = inttoptr i64 %3435 to i32*
  %3438 = load i32, i32* %3437, align 4
  %3439 = add i32 %3438, %3410
  %3440 = zext i32 %3439 to i64
  store i64 %3440, i64* %RAX.i1202.phi.trans.insert, align 8
  %3441 = icmp ult i32 %3439, %3410
  %3442 = icmp ult i32 %3439, %3438
  %3443 = or i1 %3441, %3442
  %3444 = zext i1 %3443 to i8
  store i8 %3444, i8* %43, align 1
  %3445 = and i32 %3439, 255
  %3446 = tail call i32 @llvm.ctpop.i32(i32 %3445)
  %3447 = trunc i32 %3446 to i8
  %3448 = and i8 %3447, 1
  %3449 = xor i8 %3448, 1
  store i8 %3449, i8* %50, align 1
  %3450 = xor i32 %3438, %3410
  %3451 = xor i32 %3450, %3439
  %3452 = lshr i32 %3451, 4
  %3453 = trunc i32 %3452 to i8
  %3454 = and i8 %3453, 1
  store i8 %3454, i8* %55, align 1
  %3455 = icmp eq i32 %3439, 0
  %3456 = zext i1 %3455 to i8
  store i8 %3456, i8* %58, align 1
  %3457 = lshr i32 %3439, 31
  %3458 = trunc i32 %3457 to i8
  store i8 %3458, i8* %61, align 1
  %3459 = lshr i32 %3438, 31
  %3460 = xor i32 %3457, %3426
  %3461 = xor i32 %3457, %3459
  %3462 = add nuw nsw i32 %3460, %3461
  %3463 = icmp eq i32 %3462, 2
  %3464 = zext i1 %3463 to i8
  store i8 %3464, i8* %67, align 1
  %3465 = sext i32 %3439 to i64
  store i64 %3465, i64* %85, align 8
  %3466 = load i64, i64* %78, align 8
  %3467 = add i64 %3466, %3465
  %3468 = add i64 %3314, 61
  store i64 %3468, i64* %3, align 8
  %3469 = inttoptr i64 %3467 to i8*
  store i8 1, i8* %3469, align 1
  %3470 = load i64, i64* %RBP.i, align 8
  %3471 = add i64 %3470, -120
  %3472 = load i64, i64* %3, align 8
  %3473 = add i64 %3472, 3
  store i64 %3473, i64* %3, align 8
  %3474 = inttoptr i64 %3471 to i32*
  %3475 = load i32, i32* %3474, align 4
  %3476 = zext i32 %3475 to i64
  store i64 %3476, i64* %RAX.i1202.phi.trans.insert, align 8
  %3477 = add i64 %3470, -100
  %3478 = add i64 %3472, 6
  store i64 %3478, i64* %3, align 8
  %3479 = inttoptr i64 %3477 to i32*
  %3480 = load i32, i32* %3479, align 4
  %3481 = sub i32 %3475, %3480
  %3482 = icmp ult i32 %3475, %3480
  %3483 = zext i1 %3482 to i8
  store i8 %3483, i8* %43, align 1
  %3484 = and i32 %3481, 255
  %3485 = tail call i32 @llvm.ctpop.i32(i32 %3484)
  %3486 = trunc i32 %3485 to i8
  %3487 = and i8 %3486, 1
  %3488 = xor i8 %3487, 1
  store i8 %3488, i8* %50, align 1
  %3489 = xor i32 %3480, %3475
  %3490 = xor i32 %3489, %3481
  %3491 = lshr i32 %3490, 4
  %3492 = trunc i32 %3491 to i8
  %3493 = and i8 %3492, 1
  store i8 %3493, i8* %55, align 1
  %3494 = icmp eq i32 %3481, 0
  %3495 = zext i1 %3494 to i8
  store i8 %3495, i8* %58, align 1
  %3496 = lshr i32 %3481, 31
  %3497 = trunc i32 %3496 to i8
  store i8 %3497, i8* %61, align 1
  %3498 = lshr i32 %3475, 31
  %3499 = lshr i32 %3480, 31
  %3500 = xor i32 %3499, %3498
  %3501 = xor i32 %3496, %3498
  %3502 = add nuw nsw i32 %3501, %3500
  %3503 = icmp eq i32 %3502, 2
  %3504 = zext i1 %3503 to i8
  store i8 %3504, i8* %67, align 1
  %3505 = icmp ne i8 %3497, 0
  %3506 = xor i1 %3505, %3503
  %.v78 = select i1 %3506, i64 12, i64 46
  %3507 = add i64 %3472, %.v78
  store i64 %3507, i64* %3, align 8
  br i1 %3506, label %block_4243d5, label %block_.L_4243f7

block_4243d5:                                     ; preds = %routine_shll__cl___esi.exit
  %3508 = add i64 %3507, 3
  store i64 %3508, i64* %3, align 8
  %3509 = load i32, i32* %3474, align 4
  %3510 = zext i32 %3509 to i64
  store i64 %3510, i64* %RAX.i1202.phi.trans.insert, align 8
  %3511 = add i64 %3507, 6
  store i64 %3511, i64* %3, align 8
  store i32 %3509, i32* %3479, align 4
  %3512 = load i64, i64* %RBP.i, align 8
  %3513 = add i64 %3512, -124
  %3514 = load i64, i64* %3, align 8
  %3515 = add i64 %3514, 3
  store i64 %3515, i64* %3, align 8
  %3516 = inttoptr i64 %3513 to i32*
  %3517 = load i32, i32* %3516, align 4
  %3518 = zext i32 %3517 to i64
  store i64 %3518, i64* %RAX.i1202.phi.trans.insert, align 8
  %3519 = add i64 %3512, -204
  %3520 = add i64 %3514, 9
  store i64 %3520, i64* %3, align 8
  %3521 = inttoptr i64 %3519 to i32*
  store i32 %3517, i32* %3521, align 4
  %3522 = load i64, i64* %RBP.i, align 8
  %3523 = add i64 %3522, -128
  %3524 = load i64, i64* %3, align 8
  %3525 = add i64 %3524, 3
  store i64 %3525, i64* %3, align 8
  %3526 = inttoptr i64 %3523 to i32*
  %3527 = load i32, i32* %3526, align 4
  %3528 = zext i32 %3527 to i64
  store i64 %3528, i64* %RAX.i1202.phi.trans.insert, align 8
  %3529 = add i64 %3522, -208
  %3530 = add i64 %3524, 9
  store i64 %3530, i64* %3, align 8
  %3531 = inttoptr i64 %3529 to i32*
  store i32 %3527, i32* %3531, align 4
  %3532 = load i64, i64* %RBP.i, align 8
  %3533 = add i64 %3532, -224
  %3534 = load i64, i64* %3, align 8
  %3535 = add i64 %3534, 10
  store i64 %3535, i64* %3, align 8
  %3536 = inttoptr i64 %3533 to i32*
  store i32 0, i32* %3536, align 4
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_4243f7

block_.L_4243f7:                                  ; preds = %routine_shll__cl___esi.exit, %block_4243d5
  %3537 = phi i64 [ %3507, %routine_shll__cl___esi.exit ], [ %.pre55, %block_4243d5 ]
  %3538 = add i64 %3537, 5
  store i64 %3538, i64* %3, align 8
  br label %block_.L_4243fc

block_.L_4243fc:                                  ; preds = %block_424298, %block_.L_4243f7
  %3539 = phi i64 [ %2975, %block_424298 ], [ %3538, %block_.L_4243f7 ]
  %MEMORY.12 = phi %struct.Memory* [ %2779, %block_424298 ], [ %call2_424384, %block_.L_4243f7 ]
  %3540 = add i64 %3539, 5
  store i64 %3540, i64* %3, align 8
  %.pre56 = load i64, i64* %RBP.i, align 8
  br label %block_.L_424401

block_.L_424401:                                  ; preds = %block_424279, %block_42422c, %block_.L_4243fc
  %3541 = phi i64 [ %2701, %block_42422c ], [ %2781, %block_424279 ], [ %.pre56, %block_.L_4243fc ]
  %3542 = phi i64 [ %2733, %block_42422c ], [ %2813, %block_424279 ], [ %3540, %block_.L_4243fc ]
  %MEMORY.13 = phi %struct.Memory* [ %2699, %block_42422c ], [ %2779, %block_424279 ], [ %MEMORY.12, %block_.L_4243fc ]
  %3543 = add i64 %3541, -200
  %3544 = add i64 %3542, 11
  store i64 %3544, i64* %3, align 8
  %3545 = inttoptr i64 %3543 to i32*
  %3546 = load i32, i32* %3545, align 4
  %3547 = add i32 %3546, 1
  %3548 = zext i32 %3547 to i64
  store i64 %3548, i64* %RAX.i1202.phi.trans.insert, align 8
  %3549 = icmp eq i32 %3546, -1
  %3550 = icmp eq i32 %3547, 0
  %3551 = or i1 %3549, %3550
  %3552 = zext i1 %3551 to i8
  store i8 %3552, i8* %43, align 1
  %3553 = and i32 %3547, 255
  %3554 = tail call i32 @llvm.ctpop.i32(i32 %3553)
  %3555 = trunc i32 %3554 to i8
  %3556 = and i8 %3555, 1
  %3557 = xor i8 %3556, 1
  store i8 %3557, i8* %50, align 1
  %3558 = xor i32 %3547, %3546
  %3559 = lshr i32 %3558, 4
  %3560 = trunc i32 %3559 to i8
  %3561 = and i8 %3560, 1
  store i8 %3561, i8* %55, align 1
  %3562 = zext i1 %3550 to i8
  store i8 %3562, i8* %58, align 1
  %3563 = lshr i32 %3547, 31
  %3564 = trunc i32 %3563 to i8
  store i8 %3564, i8* %61, align 1
  %3565 = lshr i32 %3546, 31
  %3566 = xor i32 %3563, %3565
  %3567 = add nuw nsw i32 %3566, %3563
  %3568 = icmp eq i32 %3567, 2
  %3569 = zext i1 %3568 to i8
  store i8 %3569, i8* %67, align 1
  %3570 = add i64 %3542, 20
  store i64 %3570, i64* %3, align 8
  store i32 %3547, i32* %3545, align 4
  %3571 = load i64, i64* %3, align 8
  %3572 = add i64 %3571, -502
  store i64 %3572, i64* %3, align 8
  br label %block_.L_42421f

block_.L_42441a:                                  ; preds = %block_.L_42421f
  %3573 = add i64 %2533, -204
  %3574 = add i64 %2561, 6
  store i64 %3574, i64* %3, align 8
  %3575 = inttoptr i64 %3573 to i32*
  %3576 = load i32, i32* %3575, align 4
  %3577 = zext i32 %3576 to i64
  store i64 %3577, i64* %RAX.i1202.phi.trans.insert, align 8
  %3578 = add i64 %2533, -184
  %3579 = add i64 %2561, 12
  store i64 %3579, i64* %3, align 8
  %3580 = inttoptr i64 %3578 to i32*
  store i32 %3576, i32* %3580, align 4
  %3581 = load i64, i64* %RBP.i, align 8
  %3582 = add i64 %3581, -208
  %3583 = load i64, i64* %3, align 8
  %3584 = add i64 %3583, 6
  store i64 %3584, i64* %3, align 8
  %3585 = inttoptr i64 %3582 to i32*
  %3586 = load i32, i32* %3585, align 4
  %3587 = zext i32 %3586 to i64
  store i64 %3587, i64* %RAX.i1202.phi.trans.insert, align 8
  %3588 = add i64 %3581, -188
  %3589 = add i64 %3583, 12
  store i64 %3589, i64* %3, align 8
  %3590 = inttoptr i64 %3588 to i32*
  store i32 %3586, i32* %3590, align 4
  %3591 = load i64, i64* %RBP.i, align 8
  %3592 = add i64 %3591, -224
  %3593 = load i64, i64* %3, align 8
  %3594 = add i64 %3593, 7
  store i64 %3594, i64* %3, align 8
  %3595 = inttoptr i64 %3592 to i32*
  %3596 = load i32, i32* %3595, align 4
  store i8 0, i8* %43, align 1
  %3597 = and i32 %3596, 255
  %3598 = tail call i32 @llvm.ctpop.i32(i32 %3597)
  %3599 = trunc i32 %3598 to i8
  %3600 = and i8 %3599, 1
  %3601 = xor i8 %3600, 1
  store i8 %3601, i8* %50, align 1
  store i8 0, i8* %55, align 1
  %3602 = icmp eq i32 %3596, 0
  %3603 = zext i1 %3602 to i8
  store i8 %3603, i8* %58, align 1
  %3604 = lshr i32 %3596, 31
  %3605 = trunc i32 %3604 to i8
  store i8 %3605, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v = select i1 %3602, i64 18, i64 13
  %3606 = add i64 %3593, %.v
  store i64 %3606, i64* %3, align 8
  br i1 %3602, label %block_.L_424444, label %block_42443f

block_42443f:                                     ; preds = %block_.L_42441a
  %3607 = add i64 %3606, 30
  store i64 %3607, i64* %3, align 8
  br label %block_.L_42445d

block_.L_424444:                                  ; preds = %block_.L_42441a
  %3608 = add i64 %3591, -192
  %3609 = add i64 %3606, 11
  store i64 %3609, i64* %3, align 8
  %3610 = inttoptr i64 %3608 to i32*
  %3611 = load i32, i32* %3610, align 4
  %3612 = add i32 %3611, 1
  %3613 = zext i32 %3612 to i64
  store i64 %3613, i64* %RAX.i1202.phi.trans.insert, align 8
  %3614 = icmp eq i32 %3611, -1
  %3615 = icmp eq i32 %3612, 0
  %3616 = or i1 %3614, %3615
  %3617 = zext i1 %3616 to i8
  store i8 %3617, i8* %43, align 1
  %3618 = and i32 %3612, 255
  %3619 = tail call i32 @llvm.ctpop.i32(i32 %3618)
  %3620 = trunc i32 %3619 to i8
  %3621 = and i8 %3620, 1
  %3622 = xor i8 %3621, 1
  store i8 %3622, i8* %50, align 1
  %3623 = xor i32 %3612, %3611
  %3624 = lshr i32 %3623, 4
  %3625 = trunc i32 %3624 to i8
  %3626 = and i8 %3625, 1
  store i8 %3626, i8* %55, align 1
  %3627 = zext i1 %3615 to i8
  store i8 %3627, i8* %58, align 1
  %3628 = lshr i32 %3612, 31
  %3629 = trunc i32 %3628 to i8
  store i8 %3629, i8* %61, align 1
  %3630 = lshr i32 %3611, 31
  %3631 = xor i32 %3628, %3630
  %3632 = add nuw nsw i32 %3631, %3628
  %3633 = icmp eq i32 %3632, 2
  %3634 = zext i1 %3633 to i8
  store i8 %3634, i8* %67, align 1
  %3635 = add i64 %3606, 20
  store i64 %3635, i64* %3, align 8
  store i32 %3612, i32* %3610, align 4
  %3636 = load i64, i64* %3, align 8
  %3637 = add i64 %3636, -617
  store i64 %3637, i64* %3, align 8
  br label %block_.L_4241ef

block_.L_42445d.loopexit:                         ; preds = %block_.L_4241ef
  br label %block_.L_42445d

block_.L_42445d:                                  ; preds = %block_.L_42445d.loopexit, %block_42443f
  %3638 = phi i64 [ %3607, %block_42443f ], [ %2518, %block_.L_42445d.loopexit ]
  %3639 = phi i64 [ %3591, %block_42443f ], [ %2482, %block_.L_42445d.loopexit ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.10, %block_42443f ], [ %MEMORY.9, %block_.L_42445d.loopexit ]
  %3640 = add i64 %3639, -204
  %3641 = add i64 %3638, 6
  store i64 %3641, i64* %3, align 8
  %3642 = inttoptr i64 %3640 to i32*
  %3643 = load i32, i32* %3642, align 4
  %3644 = zext i32 %3643 to i64
  store i64 %3644, i64* %RAX.i1202.phi.trans.insert, align 8
  %CX.i29 = bitcast %union.anon* %129 to i16*
  %3645 = trunc i32 %3643 to i16
  store i16 %3645, i16* %CX.i29, align 2
  %3646 = add i64 %3639, -80
  %3647 = add i64 %3638, 13
  store i64 %3647, i64* %3, align 8
  %3648 = inttoptr i64 %3646 to i64*
  %3649 = load i64, i64* %3648, align 8
  store i64 %3649, i64* %RDX.i1174.pre-phi, align 8
  %3650 = add i64 %3638, 16
  store i64 %3650, i64* %3, align 8
  %3651 = inttoptr i64 %3649 to i16*
  store i16 %3645, i16* %3651, align 2
  %3652 = load i64, i64* %RBP.i, align 8
  %3653 = add i64 %3652, -208
  %3654 = load i64, i64* %3, align 8
  %3655 = add i64 %3654, 6
  store i64 %3655, i64* %3, align 8
  %3656 = inttoptr i64 %3653 to i32*
  %3657 = load i32, i32* %3656, align 4
  %3658 = zext i32 %3657 to i64
  store i64 %3658, i64* %RAX.i1202.phi.trans.insert, align 8
  %3659 = trunc i32 %3657 to i16
  store i16 %3659, i16* %CX.i29, align 2
  %3660 = add i64 %3652, -88
  %3661 = add i64 %3654, 13
  store i64 %3661, i64* %3, align 8
  %3662 = inttoptr i64 %3660 to i64*
  %3663 = load i64, i64* %3662, align 8
  store i64 %3663, i64* %RDX.i1174.pre-phi, align 8
  %3664 = add i64 %3654, 16
  store i64 %3664, i64* %3, align 8
  %3665 = inttoptr i64 %3663 to i16*
  store i16 %3659, i16* %3665, align 2
  %3666 = load i64, i64* %RBP.i, align 8
  %3667 = add i64 %3666, -100
  %3668 = load i64, i64* %3, align 8
  %3669 = add i64 %3668, 3
  store i64 %3669, i64* %3, align 8
  %3670 = inttoptr i64 %3667 to i32*
  %3671 = load i32, i32* %3670, align 4
  %3672 = zext i32 %3671 to i64
  store i64 %3672, i64* %RAX.i1202.phi.trans.insert, align 8
  %3673 = load i64, i64* %6, align 8
  %3674 = add i64 %3673, 264
  store i64 %3674, i64* %6, align 8
  %3675 = icmp ugt i64 %3673, -265
  %3676 = zext i1 %3675 to i8
  store i8 %3676, i8* %43, align 1
  %3677 = trunc i64 %3674 to i32
  %3678 = and i32 %3677, 255
  %3679 = tail call i32 @llvm.ctpop.i32(i32 %3678)
  %3680 = trunc i32 %3679 to i8
  %3681 = and i8 %3680, 1
  %3682 = xor i8 %3681, 1
  store i8 %3682, i8* %50, align 1
  %3683 = xor i64 %3674, %3673
  %3684 = lshr i64 %3683, 4
  %3685 = trunc i64 %3684 to i8
  %3686 = and i8 %3685, 1
  store i8 %3686, i8* %55, align 1
  %3687 = icmp eq i64 %3674, 0
  %3688 = zext i1 %3687 to i8
  store i8 %3688, i8* %58, align 1
  %3689 = lshr i64 %3674, 63
  %3690 = trunc i64 %3689 to i8
  store i8 %3690, i8* %61, align 1
  %3691 = lshr i64 %3673, 63
  %3692 = xor i64 %3689, %3691
  %3693 = add nuw nsw i64 %3692, %3689
  %3694 = icmp eq i64 %3693, 2
  %3695 = zext i1 %3694 to i8
  store i8 %3695, i8* %67, align 1
  %3696 = add i64 %3668, 11
  store i64 %3696, i64* %3, align 8
  %3697 = add i64 %3673, 272
  %3698 = inttoptr i64 %3674 to i64*
  %3699 = load i64, i64* %3698, align 8
  store i64 %3699, i64* %RBX.i918, align 8
  store i64 %3697, i64* %6, align 8
  %3700 = add i64 %3668, 13
  store i64 %3700, i64* %3, align 8
  %3701 = add i64 %3673, 280
  %3702 = inttoptr i64 %3697 to i64*
  %3703 = load i64, i64* %3702, align 8
  store i64 %3703, i64* %R12.i895, align 8
  store i64 %3701, i64* %6, align 8
  %3704 = add i64 %3668, 15
  store i64 %3704, i64* %3, align 8
  %3705 = add i64 %3673, 288
  %3706 = inttoptr i64 %3701 to i64*
  %3707 = load i64, i64* %3706, align 8
  store i64 %3707, i64* %R13.i873, align 8
  store i64 %3705, i64* %6, align 8
  %3708 = add i64 %3668, 17
  store i64 %3708, i64* %3, align 8
  %3709 = add i64 %3673, 296
  %3710 = inttoptr i64 %3705 to i64*
  %3711 = load i64, i64* %3710, align 8
  store i64 %3711, i64* %R14.i840, align 8
  store i64 %3709, i64* %6, align 8
  %3712 = add i64 %3668, 19
  store i64 %3712, i64* %3, align 8
  %3713 = add i64 %3673, 304
  %3714 = inttoptr i64 %3709 to i64*
  %3715 = load i64, i64* %3714, align 8
  store i64 %3715, i64* %R15.i320, align 8
  store i64 %3713, i64* %6, align 8
  %3716 = add i64 %3668, 20
  store i64 %3716, i64* %3, align 8
  %3717 = add i64 %3673, 312
  %3718 = inttoptr i64 %3713 to i64*
  %3719 = load i64, i64* %3718, align 8
  store i64 %3719, i64* %RBP.i, align 8
  store i64 %3717, i64* %6, align 8
  %3720 = add i64 %3668, 21
  store i64 %3720, i64* %3, align 8
  %3721 = inttoptr i64 %3717 to i64*
  %3722 = load i64, i64* %3721, align 8
  store i64 %3722, i64* %3, align 8
  %3723 = add i64 %3673, 320
  store i64 %3723, i64* %6, align 8
  ret %struct.Memory* %MEMORY.14
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
define %struct.Memory* @routine_pushq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
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
define %struct.Memory* @routine_pushq__r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %R13, align 8
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
define %struct.Memory* @routine_pushq__r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %R12, align 8
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
define %struct.Memory* @routine_subq__0x108___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -264
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 264
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
define %struct.Memory* @routine_movw__si___ax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %SI, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %AX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x48__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 72
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
define %struct.Memory* @routine_movl_0x40__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 64
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
define %struct.Memory* @routine_movl_0x38__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 56
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
define %struct.Memory* @routine_movl_0x30__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x20__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_0x18__rbp____r12w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0
  %R12W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %R12W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_0x10__rbp____r13w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0
  %R13W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %R13W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__ax__MINUS0x32__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -50
  %6 = load i16, i16* %AX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
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
define %struct.Memory* @routine_movl__r8d__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r13w__MINUS0x46__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0
  %R13W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -70
  %6 = load i16, i16* %R13W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r12w__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0
  %R12W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i16, i16* %R12W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r15__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %R15, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r14__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ebx__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EBX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__esi__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_je_.L_423ca0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__eax__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -240
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_movl_MINUS0xf0__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
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
define %struct.Memory* @routine_movl__esi__MINUS0xf4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -244
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_423cad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -244
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xf4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -244
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
define %struct.Memory* @routine_movsd_0x8dbcd__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x8dbcd__rip__type* @G_0x8dbcd__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x8dbcd__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x8dbcd__rip__type* @G_0x8dbcd__rip_ to i64)
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_addl_MINUS0x84__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movq_0x722b20___rcx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 7482144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswq_MINUS0x32__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -50
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
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
define %struct.Memory* @routine_movq__rcx__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd_MINUS0x70__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movl_0x50__rcx__rdx_8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 80
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0x54__rcx__rdx_8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 84
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_shll__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 30
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 252
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 29
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18f8__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6392
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
define %struct.Memory* @routine_subl_MINUS0x9c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl_0x18fc__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6396
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
define %struct.Memory* @routine_subl_MINUS0xa0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -204
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movswl___rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__ax___si(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %SI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__si____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i16, i16* %SI, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i16 %6, i16* %5, align 2
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
define %struct.Memory* @routine_movl_MINUS0xa4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
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
define %struct.Memory* @routine_movswl___rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RCX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jle_.L_423e47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswl___rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0xac__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
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
define %struct.Memory* @routine_subl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 2
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
define %struct.Memory* @routine_jge_.L_423e47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xa8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
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
define %struct.Memory* @routine_movl_MINUS0xb0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
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
define %struct.Memory* @routine_movq__0x49e910___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x49e910_type* @G__0x49e910 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x6cbf58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x6cbf58_type* @G_0x6cbf58 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_423e59(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x49e710___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x49e710_type* @G__0x49e710 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__esi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0x3__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_MINUS0x46__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -70
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
define %struct.Memory* @routine_movswl___rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__edi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
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
define %struct.Memory* @routine_movl_MINUS0xf8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
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
define %struct.Memory* @routine_movl__edx__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -216
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_MINUS0x48__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl___r8____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = bitcast i64* %R8 to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__edi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_movl__edx__MINUS0xdc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -220
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6d1fa0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6d1fa0_type* @G_0x6d1fa0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -232
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x6d1fa4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6d1fa4_type* @G_0x6d1fa4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -236
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x710770___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x710770_type* @G_0x710770 to i64*), align 8
  store i64 %5, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___r8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = bitcast i64* %R8 to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
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
define %struct.Memory* @routine_shll__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0xb4__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i32 %5, 1
  %9 = icmp slt i32 %5, 0
  %10 = icmp slt i32 %8, 0
  %11 = xor i1 %9, %10
  %12 = zext i32 %8 to i64
  store i64 %12, i64* %4, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %5, 31
  %14 = trunc i32 %.lobit to i8
  store i8 %14, i8* %13, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %16 = and i32 %8, 254
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  store i8 %20, i8* %15, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = lshr i32 %5, 30
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  store i8 %28, i8* %25, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %30 = zext i1 %11 to i8
  store i8 %30, i8* %29, align 1
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
define %struct.Memory* @routine_imull__r9d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.memset_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb8f8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_je_.L_424031(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__ecx__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x94__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_movq_0x6f8f00___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_movl_MINUS0x98__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_movl__ecx__MINUS0xfc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -252
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_shll__cl___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RDX, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_MINUS0x46__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -70
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
define %struct.Memory* @routine_subl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movslq__edx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rdi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x98__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_shll__cl___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RSI, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_MINUS0x48__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__r8d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %R8D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rdi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
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
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xfc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -252
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
define %struct.Memory* @routine_imull__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x10___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 47
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -228
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl_MINUS0x9c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
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
define %struct.Memory* @routine_movl_MINUS0xa0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
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
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
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
define %struct.Memory* @routine_movl_MINUS0x80__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xe4__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -228
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x74__rbp____r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ebx__0x18__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 24
  %6 = load i32, i32* %EBX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r14d__0x20__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 32
  %6 = load i32, i32* %R14D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.AddUpSADQuarter(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x710770___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x710770_type* @G_0x710770 to i64*), align 8
  store i64 %5, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xb4__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___r10__r15_8____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %R15, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1____r10__r15_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %R15, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 1, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_cmpl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -100
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
define %struct.Memory* @routine_jge_.L_42402c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_jmpq_.L_424069(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x710770___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x710770_type* @G_0x710770 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xb4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i8 1, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
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
define %struct.Memory* @routine_jne_.L_424083(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0xdc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -220
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
define %struct.Memory* @routine_je_.L_4241bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0xd8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -216
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0xdc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -220
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
define %struct.Memory* @routine_movl__ecx__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -256
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x100__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl___r15____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = bitcast i64* %R15 to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i64
  %9 = and i64 %8, 4294967295
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0xb4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movslq__eax___r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4241b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4241bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xcc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -204
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
define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
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
define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
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
define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
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
define %struct.Memory* @routine_cmpl_MINUS0xd4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -212
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
define %struct.Memory* @routine_jge_.L_42445d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x10000__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 65536, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
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
define %struct.Memory* @routine_jge_.L_42441a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xb8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
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
define %struct.Memory* @routine_movslq_MINUS0xc8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
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
define %struct.Memory* @routine_addl_0x6cb880___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 7125120
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
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
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
define %struct.Memory* @routine_addl_0x6cb890___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 7125136
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_callq_.abs_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0xb4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -180
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
define %struct.Memory* @routine_jg_.L_424401(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x80__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl___rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RDX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_addl_MINUS0xb4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
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
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_jne_.L_4243fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_movq_0x6f8f00___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x108__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___r8__rdi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6f8f00___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_MINUS0x48__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__r9d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %R9D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rdi__r10_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %R10, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
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
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x10___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 47
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -228
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xe4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -228
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
define %struct.Memory* @routine_movq__r10____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl___r11____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = bitcast i64* %R11 to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___r10__r11_8____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %R11, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1____r10__r11_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %R11, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 1, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4243f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4243fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424401(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424406(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
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
define %struct.Memory* @routine_jmpq_.L_42421f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
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
define %struct.Memory* @routine_je_.L_424444(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42445d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424449(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4241ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__ax___cx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %CX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__cx____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = bitcast i64* %RDX to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i16, i16* %CX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i16 %6, i16* %5, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_addq__0x108___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 264
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -265
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
define %struct.Memory* @routine_popq__r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R12, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R13, align 8
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
define %struct.Memory* @routine_popq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R15, align 8
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
