; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6d4690_type = type <{ [8 x i8] }>
%G_0x6d4740_type = type <{ [8 x i8] }>
%G_0x6f9728_type = type <{ [8 x i8] }>
%G_0x70fcf8_type = type <{ [8 x i8] }>
%G_0x710790_type = type <{ [4 x i8] }>
%G_0x7242a0_type = type <{ [4 x i8] }>
%G__0x6cc2b0_type = type <{ [8 x i8] }>
%G__0x6cc2f0_type = type <{ [8 x i8] }>
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
@G_0x70fcf8 = local_unnamed_addr global %G_0x70fcf8_type zeroinitializer
@G_0x710790 = local_unnamed_addr global %G_0x710790_type zeroinitializer
@G_0x7242a0 = local_unnamed_addr global %G_0x7242a0_type zeroinitializer
@G__0x6cc2b0 = global %G__0x6cc2b0_type zeroinitializer
@G__0x6cc2f0 = global %G__0x6cc2f0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_440440.IntraChromaPrediction4x4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_440530.OneComponentChromaPrediction4x4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43b710.clip1a_chr(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @ChromaPrediction4x4(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RBX.i1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %11 = load i64, i64* %RBX.i1089, align 8
  %12 = add i64 %10, 4
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %7, -152
  store i64 %16, i64* %6, align 8
  %17 = icmp ult i64 %13, 136
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = trunc i64 %16 to i32
  %21 = and i32 %20, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i64 %13, %16
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i64 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %16, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i64 %13, 63
  %39 = xor i64 %35, %38
  %40 = add nuw nsw i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX.i1084 = bitcast %union.anon* %44 to i16*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, 24
  %47 = add i64 %15, 11
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %46 to i16*
  %49 = load i16, i16* %48, align 2
  store i16 %49, i16* %AX.i1084, align 2
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W.i1081 = bitcast %union.anon* %50 to i16*
  %51 = add i64 %45, 16
  %52 = add i64 %15, 16
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %51 to i16*
  %54 = load i16, i16* %53, align 2
  store i16 %54, i16* %R10W.i1081, align 2
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11.i1079 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  store i64 ptrtoint (%G__0x6cc2f0_type* @G__0x6cc2f0 to i64), i64* %R11.i1079, align 8
  store i64 ptrtoint (%G__0x6cc2b0_type* @G__0x6cc2b0 to i64), i64* %RBX.i1089, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i1074 = bitcast %union.anon* %56 to i32*
  %57 = add i64 %45, -12
  %58 = load i32, i32* %EDI.i1074, align 4
  %59 = add i64 %15, 39
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %57 to i32*
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i1071 = bitcast %union.anon* %61 to i32*
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -16
  %64 = load i32, i32* %ESI.i1071, align 4
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 3
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %63 to i32*
  store i32 %64, i32* %67, align 4
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1068 = bitcast %union.anon* %68 to i32*
  %69 = load i64, i64* %RBP.i, align 8
  %70 = add i64 %69, -20
  %71 = load i32, i32* %EDX.i1068, align 4
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 3
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %74, align 4
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i1065 = bitcast %union.anon* %75 to i32*
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -24
  %78 = load i32, i32* %ECX.i1065, align 4
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 3
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %81, align 4
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1062 = bitcast %union.anon* %82 to i32*
  %83 = load i64, i64* %RBP.i, align 8
  %84 = add i64 %83, -28
  %85 = load i32, i32* %R8D.i1062, align 4
  %86 = load i64, i64* %3, align 8
  %87 = add i64 %86, 4
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %84 to i32*
  store i32 %85, i32* %88, align 4
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i1059 = bitcast %union.anon* %89 to i32*
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -32
  %92 = load i32, i32* %R9D.i1059, align 4
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 4
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %91 to i32*
  store i32 %92, i32* %95, align 4
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -34
  %98 = load i16, i16* %R10W.i1081, align 2
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 5
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %97 to i16*
  store i16 %98, i16* %101, align 2
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -36
  %104 = load i16, i16* %AX.i1084, align 2
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 4
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %103 to i16*
  store i16 %104, i16* %107, align 2
  %RCX.i1051 = getelementptr inbounds %union.anon, %union.anon* %75, i64 0, i32 0
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -16
  %110 = load i64, i64* %3, align 8
  %111 = add i64 %110, 3
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %109 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %113, 4
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RCX.i1051, align 8
  %116 = icmp ugt i32 %113, -5
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %19, align 1
  %118 = and i32 %114, 255
  %119 = tail call i32 @llvm.ctpop.i32(i32 %118)
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  store i8 %122, i8* %26, align 1
  %123 = xor i32 %114, %113
  %124 = lshr i32 %123, 4
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  store i8 %126, i8* %31, align 1
  %127 = icmp eq i32 %114, 0
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %34, align 1
  %129 = lshr i32 %114, 31
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %37, align 1
  %131 = lshr i32 %113, 31
  %132 = xor i32 %129, %131
  %133 = add nuw nsw i32 %132, %129
  %134 = icmp eq i32 %133, 2
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %43, align 1
  %136 = add i64 %108, -48
  %137 = add i64 %110, 9
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to i32*
  store i32 %114, i32* %138, align 4
  %139 = load i64, i64* %RBP.i, align 8
  %140 = add i64 %139, -20
  %141 = load i64, i64* %3, align 8
  %142 = add i64 %141, 3
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %140 to i32*
  %144 = load i32, i32* %143, align 4
  %145 = add i32 %144, 4
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RCX.i1051, align 8
  %147 = icmp ugt i32 %144, -5
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %19, align 1
  %149 = and i32 %145, 255
  %150 = tail call i32 @llvm.ctpop.i32(i32 %149)
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  %153 = xor i8 %152, 1
  store i8 %153, i8* %26, align 1
  %154 = xor i32 %145, %144
  %155 = lshr i32 %154, 4
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  store i8 %157, i8* %31, align 1
  %158 = icmp eq i32 %145, 0
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %34, align 1
  %160 = lshr i32 %145, 31
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %37, align 1
  %162 = lshr i32 %144, 31
  %163 = xor i32 %160, %162
  %164 = add nuw nsw i32 %163, %160
  %165 = icmp eq i32 %164, 2
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %43, align 1
  %167 = add i64 %139, -52
  %168 = add i64 %141, 9
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i32*
  store i32 %145, i32* %169, align 4
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -64
  %172 = load i64, i64* %RBX.i1089, align 8
  %173 = load i64, i64* %3, align 8
  %174 = add i64 %173, 4
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %171 to i64*
  store i64 %172, i64* %175, align 8
  %176 = load i64, i64* %RBP.i, align 8
  %177 = add i64 %176, -72
  %178 = load i64, i64* %R11.i1079, align 8
  %179 = load i64, i64* %3, align 8
  %180 = add i64 %179, 4
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %177 to i64*
  store i64 %178, i64* %181, align 8
  %182 = load i64, i64* %3, align 8
  %183 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %183, i64* %R11.i1079, align 8
  %184 = add i64 %183, 71928
  %185 = add i64 %182, 15
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to i64*
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -80
  %190 = add i64 %182, 19
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i64*
  store i64 %187, i64* %191, align 8
  %192 = load i64, i64* %3, align 8
  %193 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %193, i64* %R11.i1079, align 8
  %194 = add i64 %193, 14168
  %195 = add i64 %192, 15
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %194 to i64*
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %R11.i1079, align 8
  store i64 %193, i64* %RBX.i1089, align 8
  %198 = add i64 %193, 12
  %199 = add i64 %192, 27
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = mul nsw i64 %202, 632
  store i64 %203, i64* %RBX.i1089, align 8
  %204 = lshr i64 %203, 63
  %205 = add i64 %203, %197
  %206 = icmp ult i64 %205, %197
  %207 = icmp ult i64 %205, %203
  %208 = or i1 %206, %207
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %19, align 1
  %210 = trunc i64 %205 to i32
  %211 = and i32 %210, 255
  %212 = tail call i32 @llvm.ctpop.i32(i32 %211)
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  store i8 %215, i8* %26, align 1
  %216 = xor i64 %203, %197
  %217 = xor i64 %216, %205
  %218 = lshr i64 %217, 4
  %219 = trunc i64 %218 to i8
  %220 = and i8 %219, 1
  store i8 %220, i8* %31, align 1
  %221 = icmp eq i64 %205, 0
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %34, align 1
  %223 = lshr i64 %205, 63
  %224 = trunc i64 %223 to i8
  store i8 %224, i8* %37, align 1
  %225 = lshr i64 %197, 63
  %226 = xor i64 %223, %225
  %227 = xor i64 %223, %204
  %228 = add nuw nsw i64 %226, %227
  %229 = icmp eq i64 %228, 2
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %43, align 1
  %231 = load i64, i64* %RBP.i, align 8
  %232 = add i64 %231, -88
  %233 = add i64 %192, 41
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i64*
  store i64 %205, i64* %234, align 8
  %235 = load i64, i64* %3, align 8
  %236 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %236, i64* %R11.i1079, align 8
  %237 = add i64 %236, 192
  %238 = add i64 %235, 16
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  store i8 0, i8* %19, align 1
  %241 = and i32 %240, 255
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241)
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %246 = icmp eq i32 %240, 0
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %34, align 1
  %248 = lshr i32 %240, 31
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %37, align 1
  store i8 0, i8* %43, align 1
  %.v98 = select i1 %246, i64 68, i64 22
  %250 = add i64 %235, %.v98
  store i64 %250, i64* %3, align 8
  %.pre88 = bitcast %union.anon* %44 to i8*
  br i1 %246, label %block_.L_43fda0, label %block_43fd72

block_43fd72:                                     ; preds = %entry
  store i8 1, i8* %.pre88, align 1
  %251 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %251, i64* %RCX.i1051, align 8
  %252 = add i64 %251, 24
  %253 = add i64 %250, 14
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  store i8 0, i8* %19, align 1
  %256 = and i32 %255, 255
  %257 = tail call i32 @llvm.ctpop.i32(i32 %256)
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  store i8 %260, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %261 = icmp eq i32 %255, 0
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %34, align 1
  %263 = lshr i32 %255, 31
  %264 = trunc i32 %263 to i8
  store i8 %264, i8* %37, align 1
  store i8 0, i8* %43, align 1
  %265 = load i64, i64* %RBP.i, align 8
  %266 = add i64 %265, -93
  %267 = add i64 %250, 17
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i8*
  store i8 1, i8* %268, align 1
  %269 = load i64, i64* %3, align 8
  %270 = load i8, i8* %34, align 1
  %271 = icmp ne i8 %270, 0
  %.v135 = select i1 %271, i64 81, i64 6
  %272 = add i64 %269, %.v135
  store i64 %272, i64* %3, align 8
  %cmpBr_43fd83 = icmp eq i8 %270, 1
  br i1 %cmpBr_43fd83, label %block_.L_43fdd4, label %block_43fd89

block_43fd89:                                     ; preds = %block_43fd72
  store i8 1, i8* %.pre88, align 1
  %273 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %273, i64* %RCX.i1051, align 8
  %274 = add i64 %273, 24
  %275 = add i64 %272, 14
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i32*
  %277 = load i32, i32* %276, align 4
  %278 = add i32 %277, -3
  %279 = icmp ult i32 %277, 3
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %19, align 1
  %281 = and i32 %278, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281)
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %26, align 1
  %286 = xor i32 %278, %277
  %287 = lshr i32 %286, 4
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  store i8 %289, i8* %31, align 1
  %290 = icmp eq i32 %278, 0
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %34, align 1
  %292 = lshr i32 %278, 31
  %293 = trunc i32 %292 to i8
  store i8 %293, i8* %37, align 1
  %294 = lshr i32 %277, 31
  %295 = xor i32 %292, %294
  %296 = add nuw nsw i32 %295, %294
  %297 = icmp eq i32 %296, 2
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %43, align 1
  %299 = load i64, i64* %RBP.i, align 8
  %300 = add i64 %299, -93
  %301 = add i64 %272, 17
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %300 to i8*
  store i8 1, i8* %302, align 1
  %303 = load i64, i64* %3, align 8
  %304 = load i8, i8* %34, align 1
  %305 = icmp ne i8 %304, 0
  %.v136 = select i1 %305, i64 58, i64 6
  %306 = add i64 %303, %.v136
  store i64 %306, i64* %3, align 8
  %cmpBr_43fd9a = icmp eq i8 %304, 1
  br i1 %cmpBr_43fd9a, label %block_.L_43fdd4, label %block_43fd89.block_.L_43fda0_crit_edge

block_43fd89.block_.L_43fda0_crit_edge:           ; preds = %block_43fd89
  %.pre = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  br label %block_.L_43fda0

block_.L_43fda0:                                  ; preds = %entry, %block_43fd89.block_.L_43fda0_crit_edge
  %307 = phi i64 [ %.pre, %block_43fd89.block_.L_43fda0_crit_edge ], [ %236, %entry ]
  %308 = phi i64 [ %306, %block_43fd89.block_.L_43fda0_crit_edge ], [ %250, %entry ]
  %RAX.i982 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 0, i64* %RAX.i982, align 8
  store i8 0, i8* %19, align 1
  store i8 1, i8* %26, align 1
  store i8 1, i8* %34, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %31, align 1
  %CL.i979 = bitcast %union.anon* %75 to i8*
  store i8 0, i8* %CL.i979, align 1
  %RDX.i976 = getelementptr inbounds %union.anon, %union.anon* %68, i64 0, i32 0
  store i64 %307, i64* %RDX.i976, align 8
  %309 = add i64 %307, 196
  %310 = add i64 %308, 19
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to i32*
  %312 = load i32, i32* %311, align 4
  store i8 0, i8* %19, align 1
  %313 = and i32 %312, 255
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313)
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %318 = icmp eq i32 %312, 0
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %34, align 1
  %320 = lshr i32 %312, 31
  %321 = trunc i32 %320 to i8
  store i8 %321, i8* %37, align 1
  store i8 0, i8* %43, align 1
  %322 = load i64, i64* %RBP.i, align 8
  %323 = add i64 %322, -94
  %324 = add i64 %308, 22
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to i8*
  store i8 0, i8* %325, align 1
  %326 = load i64, i64* %3, align 8
  %327 = load i8, i8* %34, align 1
  %328 = icmp ne i8 %327, 0
  %.v137 = select i1 %328, i64 24, i64 6
  %329 = add i64 %326, %.v137
  store i64 %329, i64* %3, align 8
  %cmpBr_43fdb6 = icmp eq i8 %327, 1
  br i1 %cmpBr_43fdb6, label %block_.L_43fdce, label %block_43fdbc

block_43fdbc:                                     ; preds = %block_.L_43fda0
  %330 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %330, i64* %RAX.i982, align 8
  %331 = add i64 %330, 24
  %332 = add i64 %329, 12
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %331 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = add i32 %334, -1
  %336 = icmp eq i32 %334, 0
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %19, align 1
  %338 = and i32 %335, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338)
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %26, align 1
  %343 = xor i32 %335, %334
  %344 = lshr i32 %343, 4
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  store i8 %346, i8* %31, align 1
  %347 = icmp eq i32 %335, 0
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %34, align 1
  %349 = lshr i32 %335, 31
  %350 = trunc i32 %349 to i8
  store i8 %350, i8* %37, align 1
  %351 = lshr i32 %334, 31
  %352 = xor i32 %349, %351
  %353 = add nuw nsw i32 %352, %351
  %354 = icmp eq i32 %353, 2
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %43, align 1
  store i8 %348, i8* %CL.i979, align 1
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -94
  %358 = add i64 %329, 18
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to i8*
  store i8 %348, i8* %359, align 1
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_43fdce

block_.L_43fdce:                                  ; preds = %block_43fdbc, %block_.L_43fda0
  %360 = phi i64 [ %.pre64, %block_43fdbc ], [ %329, %block_.L_43fda0 ]
  %361 = load i64, i64* %RBP.i, align 8
  %362 = add i64 %361, -94
  %363 = add i64 %360, 3
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i8*
  %365 = load i8, i8* %364, align 1
  store i8 %365, i8* %.pre88, align 1
  %366 = add i64 %361, -93
  %367 = add i64 %360, 6
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i8*
  store i8 %365, i8* %368, align 1
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_43fdd4

block_.L_43fdd4:                                  ; preds = %block_.L_43fdce, %block_43fd89, %block_43fd72
  %369 = phi i64 [ %.pre65, %block_.L_43fdce ], [ %306, %block_43fd89 ], [ %272, %block_43fd72 ]
  %370 = load i64, i64* %RBP.i, align 8
  %371 = add i64 %370, -93
  %372 = add i64 %369, 3
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i8*
  %374 = load i8, i8* %373, align 1
  %375 = and i8 %374, 1
  store i8 %375, i8* %.pre88, align 1
  store i8 0, i8* %19, align 1
  %376 = zext i8 %375 to i32
  %377 = tail call i32 @llvm.ctpop.i32(i32 %376)
  %378 = trunc i32 %377 to i8
  %379 = xor i8 %378, 1
  store i8 %379, i8* %26, align 1
  %380 = xor i8 %375, 1
  store i8 %380, i8* %34, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %31, align 1
  %381 = zext i8 %375 to i64
  store i64 %381, i64* %RCX.i1051, align 8
  %382 = add i64 %370, -92
  %383 = zext i8 %375 to i32
  %384 = add i64 %369, 11
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %382 to i32*
  store i32 %383, i32* %385, align 4
  %RDX.i943 = getelementptr inbounds %union.anon, %union.anon* %68, i64 0, i32 0
  %386 = load i64, i64* %RBP.i, align 8
  %387 = add i64 %386, -88
  %388 = load i64, i64* %3, align 8
  %389 = add i64 %388, 4
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %387 to i64*
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %RDX.i943, align 8
  %392 = add i64 %391, 580
  %393 = add i64 %388, 11
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i32*
  %395 = load i32, i32* %394, align 4
  store i8 0, i8* %19, align 1
  %396 = and i32 %395, 255
  %397 = tail call i32 @llvm.ctpop.i32(i32 %396)
  %398 = trunc i32 %397 to i8
  %399 = and i8 %398, 1
  %400 = xor i8 %399, 1
  store i8 %400, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %401 = icmp eq i32 %395, 0
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %34, align 1
  %403 = lshr i32 %395, 31
  %404 = trunc i32 %403 to i8
  store i8 %404, i8* %37, align 1
  store i8 0, i8* %43, align 1
  %.v99 = select i1 %401, i64 141, i64 17
  %405 = add i64 %388, %.v99
  store i64 %405, i64* %3, align 8
  br i1 %401, label %block_.L_43fe6c, label %block_43fdf0

block_43fdf0:                                     ; preds = %block_.L_43fdd4
  %RAX.i937 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %406 = add i64 %386, -34
  %407 = add i64 %405, 4
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i16*
  %409 = load i16, i16* %408, align 2
  %410 = sext i16 %409 to i64
  %411 = and i64 %410, 4294967295
  store i64 %411, i64* %RAX.i937, align 8
  %412 = sext i16 %409 to i32
  store i8 0, i8* %19, align 1
  %413 = and i32 %412, 255
  %414 = tail call i32 @llvm.ctpop.i32(i32 %413)
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = xor i8 %416, 1
  store i8 %417, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %418 = icmp eq i16 %409, 0
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %34, align 1
  %420 = lshr i32 %412, 31
  %421 = trunc i32 %420 to i8
  store i8 %421, i8* %37, align 1
  store i8 0, i8* %43, align 1
  %.v100 = select i1 %418, i64 13, i64 124
  %422 = add i64 %405, %.v100
  store i64 %422, i64* %3, align 8
  br i1 %418, label %block_43fdfd, label %block_.L_43fe6c

block_43fdfd:                                     ; preds = %block_43fdf0
  %423 = add i64 %386, -36
  %424 = add i64 %422, 4
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i16*
  %426 = load i16, i16* %425, align 2
  %427 = sext i16 %426 to i64
  %428 = and i64 %427, 4294967295
  store i64 %428, i64* %RAX.i937, align 8
  %429 = sext i16 %426 to i32
  store i8 0, i8* %19, align 1
  %430 = and i32 %429, 255
  %431 = tail call i32 @llvm.ctpop.i32(i32 %430)
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = xor i8 %433, 1
  store i8 %434, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %435 = icmp eq i16 %426, 0
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %34, align 1
  %437 = lshr i32 %429, 31
  %438 = trunc i32 %437 to i8
  store i8 %438, i8* %37, align 1
  store i8 0, i8* %43, align 1
  %.v113 = select i1 %435, i64 13, i64 111
  %439 = add i64 %422, %.v113
  store i64 %439, i64* %3, align 8
  br i1 %435, label %block_43fe0a, label %block_.L_43fe6c

block_43fe0a:                                     ; preds = %block_43fdfd
  %440 = add i64 %386, -24
  %441 = add i64 %439, 4
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = add i32 %443, -2
  %445 = icmp ult i32 %443, 2
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %19, align 1
  %447 = and i32 %444, 255
  %448 = tail call i32 @llvm.ctpop.i32(i32 %447)
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  %451 = xor i8 %450, 1
  store i8 %451, i8* %26, align 1
  %452 = xor i32 %444, %443
  %453 = lshr i32 %452, 4
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  store i8 %455, i8* %31, align 1
  %456 = icmp eq i32 %444, 0
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %34, align 1
  %458 = lshr i32 %444, 31
  %459 = trunc i32 %458 to i8
  store i8 %459, i8* %37, align 1
  %460 = lshr i32 %443, 31
  %461 = xor i32 %458, %460
  %462 = add nuw nsw i32 %461, %460
  %463 = icmp eq i32 %462, 2
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %43, align 1
  %.v114 = select i1 %456, i64 10, i64 98
  %465 = add i64 %439, %.v114
  store i64 %465, i64* %3, align 8
  br i1 %456, label %block_43fe14, label %block_.L_43fe6c

block_43fe14:                                     ; preds = %block_43fe0a
  %466 = add i64 %386, -28
  %467 = add i64 %465, 4
  store i64 %467, i64* %3, align 8
  %468 = inttoptr i64 %466 to i32*
  %469 = load i32, i32* %468, align 4
  %470 = add i32 %469, -1
  %471 = icmp eq i32 %469, 0
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %19, align 1
  %473 = and i32 %470, 255
  %474 = tail call i32 @llvm.ctpop.i32(i32 %473)
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = xor i8 %476, 1
  store i8 %477, i8* %26, align 1
  %478 = xor i32 %470, %469
  %479 = lshr i32 %478, 4
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  store i8 %481, i8* %31, align 1
  %482 = icmp eq i32 %470, 0
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %34, align 1
  %484 = lshr i32 %470, 31
  %485 = trunc i32 %484 to i8
  store i8 %485, i8* %37, align 1
  %486 = lshr i32 %469, 31
  %487 = xor i32 %484, %486
  %488 = add nuw nsw i32 %487, %486
  %489 = icmp eq i32 %488, 2
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %43, align 1
  %.v115 = select i1 %482, i64 10, i64 88
  %491 = add i64 %465, %.v115
  store i64 %491, i64* %3, align 8
  br i1 %482, label %block_43fe1e, label %block_.L_43fe6c

block_43fe1e:                                     ; preds = %block_43fe14
  %492 = add i64 %386, -32
  %493 = add i64 %491, 4
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = add i32 %495, -1
  %497 = icmp eq i32 %495, 0
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %19, align 1
  %499 = and i32 %496, 255
  %500 = tail call i32 @llvm.ctpop.i32(i32 %499)
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = xor i8 %502, 1
  store i8 %503, i8* %26, align 1
  %504 = xor i32 %496, %495
  %505 = lshr i32 %504, 4
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  store i8 %507, i8* %31, align 1
  %508 = icmp eq i32 %496, 0
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %34, align 1
  %510 = lshr i32 %496, 31
  %511 = trunc i32 %510 to i8
  store i8 %511, i8* %37, align 1
  %512 = lshr i32 %495, 31
  %513 = xor i32 %510, %512
  %514 = add nuw nsw i32 %513, %512
  %515 = icmp eq i32 %514, 2
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %43, align 1
  %.v116 = select i1 %508, i64 10, i64 78
  %517 = add i64 %491, %.v116
  store i64 %517, i64* %3, align 8
  br i1 %508, label %block_43fe28, label %block_.L_43fe6c

block_43fe28:                                     ; preds = %block_43fe1e
  %518 = add i64 %517, 4
  store i64 %518, i64* %3, align 8
  %519 = load i64, i64* %390, align 8
  store i64 %519, i64* %RAX.i937, align 8
  %520 = add i64 %519, 580
  %521 = add i64 %517, 11
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i32*
  %523 = load i32, i32* %522, align 4
  %524 = add i32 %523, -1
  %525 = icmp eq i32 %523, 0
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %19, align 1
  %527 = and i32 %524, 255
  %528 = tail call i32 @llvm.ctpop.i32(i32 %527)
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  %531 = xor i8 %530, 1
  store i8 %531, i8* %26, align 1
  %532 = xor i32 %524, %523
  %533 = lshr i32 %532, 4
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  store i8 %535, i8* %31, align 1
  %536 = icmp eq i32 %524, 0
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %34, align 1
  %538 = lshr i32 %524, 31
  %539 = trunc i32 %538 to i8
  store i8 %539, i8* %37, align 1
  %540 = lshr i32 %523, 31
  %541 = xor i32 %538, %540
  %542 = add nuw nsw i32 %541, %540
  %543 = icmp eq i32 %542, 2
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %43, align 1
  %.v117 = select i1 %536, i64 17, i64 41
  %545 = add i64 %517, %.v117
  %546 = add i64 %545, 8
  store i64 %546, i64* %3, align 8
  %547 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %547, i64* %RAX.i937, align 8
  br i1 %536, label %block_43fe39, label %block_.L_43fe51

block_43fe39:                                     ; preds = %block_43fe28
  %548 = add i64 %547, 71936
  %549 = add i64 %545, 15
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %548 to i64*
  %551 = load i64, i64* %550, align 8
  store i64 %551, i64* %RAX.i937, align 8
  %552 = add i64 %386, -104
  %553 = add i64 %545, 19
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to i64*
  store i64 %551, i64* %554, align 8
  %555 = load i64, i64* %3, align 8
  %556 = add i64 %555, 24
  store i64 %556, i64* %3, align 8
  br label %block_.L_43fe64

block_.L_43fe51:                                  ; preds = %block_43fe28
  %557 = add i64 %547, 71944
  %558 = add i64 %545, 15
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to i64*
  %560 = load i64, i64* %559, align 8
  store i64 %560, i64* %RAX.i937, align 8
  %561 = add i64 %386, -104
  %562 = add i64 %545, 19
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i64*
  store i64 %560, i64* %563, align 8
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_43fe64

block_.L_43fe64:                                  ; preds = %block_.L_43fe51, %block_43fe39
  %564 = phi i64 [ %.pre66, %block_.L_43fe51 ], [ %556, %block_43fe39 ]
  %565 = load i64, i64* %RBP.i, align 8
  %566 = add i64 %565, -104
  %567 = add i64 %564, 4
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to i64*
  %569 = load i64, i64* %568, align 8
  store i64 %569, i64* %RAX.i937, align 8
  %570 = add i64 %565, -80
  %571 = add i64 %564, 8
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %570 to i64*
  store i64 %569, i64* %572, align 8
  %.pre67 = load i64, i64* %RBP.i, align 8
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_43fe6c

block_.L_43fe6c:                                  ; preds = %block_43fe1e, %block_43fe14, %block_43fe0a, %block_43fdfd, %block_43fdf0, %block_.L_43fe64, %block_.L_43fdd4
  %573 = phi i64 [ %.pre68, %block_.L_43fe64 ], [ %517, %block_43fe1e ], [ %491, %block_43fe14 ], [ %465, %block_43fe0a ], [ %439, %block_43fdfd ], [ %422, %block_43fdf0 ], [ %405, %block_.L_43fdd4 ]
  %574 = phi i64 [ %.pre67, %block_.L_43fe64 ], [ %386, %block_43fe1e ], [ %386, %block_43fe14 ], [ %386, %block_43fe0a ], [ %386, %block_43fdfd ], [ %386, %block_43fdf0 ], [ %386, %block_.L_43fdd4 ]
  %575 = add i64 %574, -24
  %576 = add i64 %573, 4
  store i64 %576, i64* %3, align 8
  %577 = inttoptr i64 %575 to i32*
  %578 = load i32, i32* %577, align 4
  %579 = add i32 %578, 1
  %580 = icmp ne i32 %578, -1
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %19, align 1
  %582 = and i32 %579, 255
  %583 = tail call i32 @llvm.ctpop.i32(i32 %582)
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  %586 = xor i8 %585, 1
  store i8 %586, i8* %26, align 1
  %587 = xor i32 %578, 16
  %588 = xor i32 %587, %579
  %589 = lshr i32 %588, 4
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  store i8 %591, i8* %31, align 1
  %592 = icmp eq i32 %579, 0
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %34, align 1
  %594 = lshr i32 %579, 31
  %595 = trunc i32 %594 to i8
  store i8 %595, i8* %37, align 1
  %596 = lshr i32 %578, 31
  %597 = xor i32 %596, 1
  %598 = xor i32 %594, %596
  %599 = add nuw nsw i32 %598, %597
  %600 = icmp eq i32 %599, 2
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %43, align 1
  %.v101 = select i1 %592, i64 10, i64 29
  %602 = add i64 %573, %.v101
  store i64 %602, i64* %3, align 8
  br i1 %592, label %block_43fe76, label %block_.L_43fe89

block_43fe76:                                     ; preds = %block_.L_43fe6c
  %RDI.i886 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %603 = add i64 %574, -12
  %604 = add i64 %602, 3
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to i32*
  %606 = load i32, i32* %605, align 4
  %607 = zext i32 %606 to i64
  store i64 %607, i64* %RDI.i886, align 8
  %RSI.i883 = getelementptr inbounds %union.anon, %union.anon* %61, i64 0, i32 0
  %608 = add i64 %574, -16
  %609 = add i64 %602, 6
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to i32*
  %611 = load i32, i32* %610, align 4
  %612 = zext i32 %611 to i64
  store i64 %612, i64* %RSI.i883, align 8
  %613 = add i64 %574, -20
  %614 = add i64 %602, 9
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i32*
  %616 = load i32, i32* %615, align 4
  %617 = zext i32 %616 to i64
  store i64 %617, i64* %RDX.i943, align 8
  %618 = add i64 %602, 1482
  %619 = add i64 %602, 14
  %620 = load i64, i64* %6, align 8
  %621 = add i64 %620, -8
  %622 = inttoptr i64 %621 to i64*
  store i64 %619, i64* %622, align 8
  store i64 %621, i64* %6, align 8
  store i64 %618, i64* %3, align 8
  %call2_43fe7f = tail call %struct.Memory* @sub_440440.IntraChromaPrediction4x4(%struct.State* nonnull %0, i64 %618, %struct.Memory* %2)
  %623 = load i64, i64* %3, align 8
  %624 = add i64 %623, 1445
  br label %block_.L_440429

block_.L_43fe89:                                  ; preds = %block_.L_43fe6c
  %625 = add i64 %602, 4
  store i64 %625, i64* %3, align 8
  %626 = load i32, i32* %577, align 4
  store i8 0, i8* %19, align 1
  %627 = and i32 %626, 255
  %628 = tail call i32 @llvm.ctpop.i32(i32 %627)
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  store i8 %631, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %632 = icmp eq i32 %626, 0
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %34, align 1
  %634 = lshr i32 %626, 31
  %635 = trunc i32 %634 to i8
  store i8 %635, i8* %37, align 1
  store i8 0, i8* %43, align 1
  %.v102 = select i1 %632, i64 20, i64 10
  %636 = add i64 %602, %.v102
  store i64 %636, i64* %3, align 8
  br i1 %632, label %block_.L_43fe9d, label %block_43fe93

block_43fe93:                                     ; preds = %block_.L_43fe89
  %637 = add i64 %636, 4
  store i64 %637, i64* %3, align 8
  %638 = load i32, i32* %577, align 4
  %639 = add i32 %638, -2
  %640 = icmp ult i32 %638, 2
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %19, align 1
  %642 = and i32 %639, 255
  %643 = tail call i32 @llvm.ctpop.i32(i32 %642)
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  %646 = xor i8 %645, 1
  store i8 %646, i8* %26, align 1
  %647 = xor i32 %639, %638
  %648 = lshr i32 %647, 4
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  store i8 %650, i8* %31, align 1
  %651 = icmp eq i32 %639, 0
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %34, align 1
  %653 = lshr i32 %639, 31
  %654 = trunc i32 %653 to i8
  store i8 %654, i8* %37, align 1
  %655 = lshr i32 %638, 31
  %656 = xor i32 %653, %655
  %657 = add nuw nsw i32 %656, %655
  %658 = icmp eq i32 %657, 2
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %43, align 1
  %.v103 = select i1 %651, i64 10, i64 74
  %660 = add i64 %636, %.v103
  store i64 %660, i64* %3, align 8
  br i1 %651, label %block_.L_43fe9d, label %block_.L_43fedd

block_.L_43fe9d:                                  ; preds = %block_43fe93, %block_.L_43fe89
  %661 = phi i64 [ %660, %block_43fe93 ], [ %636, %block_.L_43fe89 ]
  %RDI.i870 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  store i64 ptrtoint (%G__0x6cc2b0_type* @G__0x6cc2b0 to i64), i64* %RDI.i870, align 8
  %662 = getelementptr inbounds %union.anon, %union.anon* %82, i64 0, i32 0
  store i64 0, i64* %662, align 8
  store i8 0, i8* %19, align 1
  store i8 1, i8* %26, align 1
  store i8 1, i8* %34, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %31, align 1
  %RSI.i865 = getelementptr inbounds %union.anon, %union.anon* %61, i64 0, i32 0
  %663 = add i64 %574, -16
  %664 = add i64 %661, 16
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i32*
  %666 = load i32, i32* %665, align 4
  %667 = zext i32 %666 to i64
  store i64 %667, i64* %RSI.i865, align 8
  %668 = add i64 %574, -20
  %669 = add i64 %661, 19
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = zext i32 %671 to i64
  store i64 %672, i64* %RDX.i943, align 8
  %673 = add i64 %574, -80
  %674 = add i64 %661, 23
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i64*
  %676 = load i64, i64* %675, align 8
  store i64 %676, i64* %RCX.i1051, align 8
  %677 = add i64 %574, -34
  %678 = add i64 %661, 27
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i16*
  %680 = load i16, i16* %679, align 2
  store i16 %680, i16* %AX.i1084, align 2
  %681 = getelementptr inbounds %union.anon, %union.anon* %89, i64 0, i32 0
  %682 = add i64 %574, -28
  %683 = add i64 %661, 31
  store i64 %683, i64* %3, align 8
  %684 = inttoptr i64 %682 to i32*
  %685 = load i32, i32* %684, align 4
  %686 = zext i32 %685 to i64
  store i64 %686, i64* %681, align 8
  %R10D.i850 = bitcast %union.anon* %50 to i32*
  %687 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %688 = add i64 %574, -12
  %689 = add i64 %661, 35
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = zext i32 %691 to i64
  store i64 %692, i64* %687, align 8
  %R11D.i848 = bitcast %union.anon* %55 to i32*
  %693 = sext i16 %680 to i64
  %694 = and i64 %693, 4294967295
  store i64 %694, i64* %R11.i1079, align 8
  %695 = add i64 %574, -108
  %696 = add i64 %661, 43
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i32*
  store i32 %685, i32* %697, align 4
  %698 = load i32, i32* %R11D.i848, align 4
  %699 = zext i32 %698 to i64
  %700 = load i64, i64* %3, align 8
  store i64 %699, i64* %681, align 8
  %701 = load i64, i64* %RBP.i, align 8
  %702 = add i64 %701, -108
  %703 = add i64 %700, 7
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to i32*
  %705 = load i32, i32* %704, align 4
  %706 = zext i32 %705 to i64
  store i64 %706, i64* %R11.i1079, align 8
  %707 = bitcast i64* %6 to i32**
  %708 = load i32*, i32** %707, align 8
  %709 = add i64 %700, 11
  store i64 %709, i64* %3, align 8
  store i32 %705, i32* %708, align 4
  %710 = load i64, i64* %6, align 8
  %711 = add i64 %710, 8
  %712 = load i32, i32* %R10D.i850, align 4
  %713 = load i64, i64* %3, align 8
  %714 = add i64 %713, 5
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %711 to i32*
  store i32 %712, i32* %715, align 4
  %716 = load i64, i64* %3, align 8
  %717 = add i64 %716, 1624
  %718 = add i64 %716, 5
  %719 = load i64, i64* %6, align 8
  %720 = add i64 %719, -8
  %721 = inttoptr i64 %720 to i64*
  store i64 %718, i64* %721, align 8
  store i64 %720, i64* %6, align 8
  store i64 %717, i64* %3, align 8
  %call2_43fed8 = tail call %struct.Memory* @sub_440530.OneComponentChromaPrediction4x4(%struct.State* nonnull %0, i64 %717, %struct.Memory* %2)
  %.pre69 = load i64, i64* %RBP.i, align 8
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_43fedd

block_.L_43fedd:                                  ; preds = %block_43fe93, %block_.L_43fe9d
  %722 = phi i64 [ %.pre70, %block_.L_43fe9d ], [ %660, %block_43fe93 ]
  %723 = phi i64 [ %.pre69, %block_.L_43fe9d ], [ %574, %block_43fe93 ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_43fed8, %block_.L_43fe9d ], [ %2, %block_43fe93 ]
  %724 = add i64 %723, -24
  %725 = add i64 %722, 4
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i32*
  %727 = load i32, i32* %726, align 4
  %728 = add i32 %727, -1
  %729 = icmp eq i32 %727, 0
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %19, align 1
  %731 = and i32 %728, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %26, align 1
  %736 = xor i32 %728, %727
  %737 = lshr i32 %736, 4
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  store i8 %739, i8* %31, align 1
  %740 = icmp eq i32 %728, 0
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %34, align 1
  %742 = lshr i32 %728, 31
  %743 = trunc i32 %742 to i8
  store i8 %743, i8* %37, align 1
  %744 = lshr i32 %727, 31
  %745 = xor i32 %742, %744
  %746 = add nuw nsw i32 %745, %744
  %747 = icmp eq i32 %746, 2
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %43, align 1
  %.v104 = select i1 %740, i64 20, i64 10
  %749 = add i64 %722, %.v104
  store i64 %749, i64* %3, align 8
  br i1 %740, label %block_.L_43fef1, label %block_43fee7

block_43fee7:                                     ; preds = %block_.L_43fedd
  %750 = add i64 %749, 4
  store i64 %750, i64* %3, align 8
  %751 = load i32, i32* %726, align 4
  %752 = add i32 %751, -2
  %753 = icmp ult i32 %751, 2
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %19, align 1
  %755 = and i32 %752, 255
  %756 = tail call i32 @llvm.ctpop.i32(i32 %755)
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  %759 = xor i8 %758, 1
  store i8 %759, i8* %26, align 1
  %760 = xor i32 %752, %751
  %761 = lshr i32 %760, 4
  %762 = trunc i32 %761 to i8
  %763 = and i8 %762, 1
  store i8 %763, i8* %31, align 1
  %764 = icmp eq i32 %752, 0
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %34, align 1
  %766 = lshr i32 %752, 31
  %767 = trunc i32 %766 to i8
  store i8 %767, i8* %37, align 1
  %768 = lshr i32 %751, 31
  %769 = xor i32 %766, %768
  %770 = add nuw nsw i32 %769, %768
  %771 = icmp eq i32 %770, 2
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %43, align 1
  %.v105 = select i1 %764, i64 10, i64 77
  %773 = add i64 %749, %.v105
  store i64 %773, i64* %3, align 8
  br i1 %764, label %block_.L_43fef1, label %block_.L_43ff34

block_.L_43fef1:                                  ; preds = %block_43fee7, %block_.L_43fedd
  %774 = phi i64 [ %773, %block_43fee7 ], [ %749, %block_.L_43fedd ]
  %RDI.i823 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  store i64 ptrtoint (%G__0x6cc2f0_type* @G__0x6cc2f0 to i64), i64* %RDI.i823, align 8
  %775 = getelementptr inbounds %union.anon, %union.anon* %82, i64 0, i32 0
  store i64 1, i64* %775, align 8
  %RSI.i818 = getelementptr inbounds %union.anon, %union.anon* %61, i64 0, i32 0
  %776 = add i64 %723, -16
  %777 = add i64 %774, 19
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i32*
  %779 = load i32, i32* %778, align 4
  %780 = zext i32 %779 to i64
  store i64 %780, i64* %RSI.i818, align 8
  %781 = add i64 %723, -20
  %782 = add i64 %774, 22
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %781 to i32*
  %784 = load i32, i32* %783, align 4
  %785 = zext i32 %784 to i64
  store i64 %785, i64* %RDX.i943, align 8
  %786 = add i64 %723, -80
  %787 = add i64 %774, 26
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i64*
  %789 = load i64, i64* %788, align 8
  store i64 %789, i64* %RCX.i1051, align 8
  %790 = add i64 %723, -36
  %791 = add i64 %774, 30
  store i64 %791, i64* %3, align 8
  %792 = inttoptr i64 %790 to i16*
  %793 = load i16, i16* %792, align 2
  store i16 %793, i16* %AX.i1084, align 2
  %794 = getelementptr inbounds %union.anon, %union.anon* %89, i64 0, i32 0
  %795 = add i64 %723, -32
  %796 = add i64 %774, 34
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %795 to i32*
  %798 = load i32, i32* %797, align 4
  %799 = zext i32 %798 to i64
  store i64 %799, i64* %794, align 8
  %R10D.i803 = bitcast %union.anon* %50 to i32*
  %800 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %801 = add i64 %723, -12
  %802 = add i64 %774, 38
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i32*
  %804 = load i32, i32* %803, align 4
  %805 = zext i32 %804 to i64
  store i64 %805, i64* %800, align 8
  %R11D.i801 = bitcast %union.anon* %55 to i32*
  %806 = sext i16 %793 to i64
  %807 = and i64 %806, 4294967295
  store i64 %807, i64* %R11.i1079, align 8
  %808 = add i64 %723, -112
  %809 = add i64 %774, 46
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to i32*
  store i32 %798, i32* %810, align 4
  %811 = load i32, i32* %R11D.i801, align 4
  %812 = zext i32 %811 to i64
  %813 = load i64, i64* %3, align 8
  store i64 %812, i64* %794, align 8
  %814 = load i64, i64* %RBP.i, align 8
  %815 = add i64 %814, -112
  %816 = add i64 %813, 7
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %815 to i32*
  %818 = load i32, i32* %817, align 4
  %819 = zext i32 %818 to i64
  store i64 %819, i64* %R11.i1079, align 8
  %820 = bitcast i64* %6 to i32**
  %821 = load i32*, i32** %820, align 8
  %822 = add i64 %813, 11
  store i64 %822, i64* %3, align 8
  store i32 %818, i32* %821, align 4
  %823 = load i64, i64* %6, align 8
  %824 = add i64 %823, 8
  %825 = load i32, i32* %R10D.i803, align 4
  %826 = load i64, i64* %3, align 8
  %827 = add i64 %826, 5
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %824 to i32*
  store i32 %825, i32* %828, align 4
  %829 = load i64, i64* %3, align 8
  %830 = add i64 %829, 1537
  %831 = add i64 %829, 5
  %832 = load i64, i64* %6, align 8
  %833 = add i64 %832, -8
  %834 = inttoptr i64 %833 to i64*
  store i64 %831, i64* %834, align 8
  store i64 %833, i64* %6, align 8
  store i64 %830, i64* %3, align 8
  %call2_43ff2f = tail call %struct.Memory* @sub_440530.OneComponentChromaPrediction4x4(%struct.State* nonnull %0, i64 %830, %struct.Memory* %MEMORY.6)
  %.pre71 = load i64, i64* %RBP.i, align 8
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_43ff34

block_.L_43ff34:                                  ; preds = %block_43fee7, %block_.L_43fef1
  %835 = phi i64 [ %.pre72, %block_.L_43fef1 ], [ %773, %block_43fee7 ]
  %836 = phi i64 [ %.pre71, %block_.L_43fef1 ], [ %723, %block_43fee7 ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_43ff2f, %block_.L_43fef1 ], [ %MEMORY.6, %block_43fee7 ]
  %837 = add i64 %836, -92
  %838 = add i64 %835, 4
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i32*
  %840 = load i32, i32* %839, align 4
  store i8 0, i8* %19, align 1
  %841 = and i32 %840, 255
  %842 = tail call i32 @llvm.ctpop.i32(i32 %841)
  %843 = trunc i32 %842 to i8
  %844 = and i8 %843, 1
  %845 = xor i8 %844, 1
  store i8 %845, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %846 = icmp eq i32 %840, 0
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %34, align 1
  %848 = lshr i32 %840, 31
  %849 = trunc i32 %848 to i8
  store i8 %849, i8* %37, align 1
  store i8 0, i8* %43, align 1
  %.v = select i1 %846, i64 820, i64 10
  %850 = add i64 %835, %.v
  %851 = add i64 %836, -24
  %852 = add i64 %850, 4
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i32*
  %854 = load i32, i32* %853, align 4
  %855 = add i32 %854, -2
  %856 = icmp ult i32 %854, 2
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %19, align 1
  %858 = and i32 %855, 255
  %859 = tail call i32 @llvm.ctpop.i32(i32 %858)
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  %862 = xor i8 %861, 1
  store i8 %862, i8* %26, align 1
  %863 = xor i32 %855, %854
  %864 = lshr i32 %863, 4
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  store i8 %866, i8* %31, align 1
  %867 = icmp eq i32 %855, 0
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %34, align 1
  %869 = lshr i32 %855, 31
  %870 = trunc i32 %869 to i8
  store i8 %870, i8* %37, align 1
  %871 = lshr i32 %854, 31
  %872 = xor i32 %869, %871
  %873 = add nuw nsw i32 %872, %871
  %874 = icmp eq i32 %873, 2
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %43, align 1
  br i1 %846, label %block_.L_440268, label %block_43ff3e

block_43ff3e:                                     ; preds = %block_.L_43ff34
  %.v91 = select i1 %867, i64 10, i64 352
  %876 = add i64 %850, %.v91
  store i64 %876, i64* %3, align 8
  br i1 %867, label %block_43ff48, label %block_.L_44009e

block_43ff48:                                     ; preds = %block_43ff3e
  %RAX.i778 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %877 = add i64 %836, -20
  %878 = add i64 %876, 3
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %877 to i32*
  %880 = load i32, i32* %879, align 4
  %881 = zext i32 %880 to i64
  store i64 %881, i64* %RAX.i778, align 8
  %882 = add i64 %836, -44
  %883 = add i64 %876, 6
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to i32*
  store i32 %880, i32* %884, align 4
  %885 = bitcast %union.anon* %44 to i32**
  %RSI.i694 = getelementptr inbounds %union.anon, %union.anon* %61, i64 0, i32 0
  %RDI.i643 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %886 = getelementptr inbounds %union.anon, %union.anon* %82, i64 0, i32 0
  %R9W.i594 = bitcast %union.anon* %89 to i16*
  %R10.i591 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_43ff4e

block_.L_43ff4e:                                  ; preds = %block_.L_440086, %block_43ff48
  %887 = phi i64 [ %1508, %block_.L_440086 ], [ %.pre73, %block_43ff48 ]
  %888 = load i64, i64* %RBP.i, align 8
  %889 = add i64 %888, -44
  %890 = add i64 %887, 3
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i32*
  %892 = load i32, i32* %891, align 4
  %893 = zext i32 %892 to i64
  store i64 %893, i64* %RAX.i778, align 8
  %894 = add i64 %888, -52
  %895 = add i64 %887, 6
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i32*
  %897 = load i32, i32* %896, align 4
  %898 = sub i32 %892, %897
  %899 = icmp ult i32 %892, %897
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %19, align 1
  %901 = and i32 %898, 255
  %902 = tail call i32 @llvm.ctpop.i32(i32 %901)
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = xor i8 %904, 1
  store i8 %905, i8* %26, align 1
  %906 = xor i32 %897, %892
  %907 = xor i32 %906, %898
  %908 = lshr i32 %907, 4
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  store i8 %910, i8* %31, align 1
  %911 = icmp eq i32 %898, 0
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %34, align 1
  %913 = lshr i32 %898, 31
  %914 = trunc i32 %913 to i8
  store i8 %914, i8* %37, align 1
  %915 = lshr i32 %892, 31
  %916 = lshr i32 %897, 31
  %917 = xor i32 %916, %915
  %918 = xor i32 %913, %915
  %919 = add nuw nsw i32 %918, %917
  %920 = icmp eq i32 %919, 2
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %43, align 1
  %922 = icmp ne i8 %914, 0
  %923 = xor i1 %922, %920
  %.v108 = select i1 %923, i64 12, i64 331
  %924 = add i64 %887, %.v108
  store i64 %924, i64* %3, align 8
  br i1 %923, label %block_43ff5a, label %block_.L_440099

block_43ff5a:                                     ; preds = %block_.L_43ff4e
  %925 = add i64 %888, -16
  %926 = add i64 %924, 3
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %925 to i32*
  %928 = load i32, i32* %927, align 4
  %929 = zext i32 %928 to i64
  store i64 %929, i64* %RAX.i778, align 8
  %930 = add i64 %888, -40
  %931 = add i64 %924, 6
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i32*
  store i32 %928, i32* %932, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_43ff60

block_.L_43ff60:                                  ; preds = %routine_sarl__cl___edx.exit652, %block_43ff5a
  %933 = phi i64 [ %1478, %routine_sarl__cl___edx.exit652 ], [ %.pre74, %block_43ff5a ]
  %934 = load i64, i64* %RBP.i, align 8
  %935 = add i64 %934, -40
  %936 = add i64 %933, 3
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i32*
  %938 = load i32, i32* %937, align 4
  %939 = zext i32 %938 to i64
  store i64 %939, i64* %RAX.i778, align 8
  %940 = add i64 %934, -48
  %941 = add i64 %933, 6
  store i64 %941, i64* %3, align 8
  %942 = inttoptr i64 %940 to i32*
  %943 = load i32, i32* %942, align 4
  %944 = sub i32 %938, %943
  %945 = icmp ult i32 %938, %943
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %19, align 1
  %947 = and i32 %944, 255
  %948 = tail call i32 @llvm.ctpop.i32(i32 %947)
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  %951 = xor i8 %950, 1
  store i8 %951, i8* %26, align 1
  %952 = xor i32 %943, %938
  %953 = xor i32 %952, %944
  %954 = lshr i32 %953, 4
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  store i8 %956, i8* %31, align 1
  %957 = icmp eq i32 %944, 0
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %34, align 1
  %959 = lshr i32 %944, 31
  %960 = trunc i32 %959 to i8
  store i8 %960, i8* %37, align 1
  %961 = lshr i32 %938, 31
  %962 = lshr i32 %943, 31
  %963 = xor i32 %962, %961
  %964 = xor i32 %959, %961
  %965 = add nuw nsw i32 %964, %963
  %966 = icmp eq i32 %965, 2
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %43, align 1
  %968 = icmp ne i8 %960, 0
  %969 = xor i1 %968, %966
  %.v89 = select i1 %969, i64 12, i64 294
  %970 = add i64 %933, %.v89
  store i64 %970, i64* %3, align 8
  br i1 %969, label %block_43ff6c, label %block_.L_440086

block_43ff6c:                                     ; preds = %block_.L_43ff60
  %971 = load i64, i64* bitcast (%G_0x70fcf8_type* @G_0x70fcf8 to i64*), align 8
  store i64 %971, i64* %RAX.i778, align 8
  %972 = add i64 %970, 11
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i64*
  %974 = load i64, i64* %973, align 8
  store i64 %974, i64* %RAX.i778, align 8
  %975 = add i64 %934, -34
  %976 = add i64 %970, 16
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %975 to i16*
  %978 = load i16, i16* %977, align 2
  %979 = sext i16 %978 to i64
  store i64 %979, i64* %RCX.i1051, align 8
  %980 = shl nsw i64 %979, 3
  %981 = add i64 %980, %974
  %982 = add i64 %970, 20
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i64*
  %984 = load i64, i64* %983, align 8
  store i64 %984, i64* %RAX.i778, align 8
  %985 = add i64 %934, -36
  %986 = add i64 %970, 25
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i16*
  %988 = load i16, i16* %987, align 2
  %989 = sext i16 %988 to i64
  store i64 %989, i64* %RCX.i1051, align 8
  %990 = shl nsw i64 %989, 3
  %991 = add i64 %990, %984
  %992 = add i64 %970, 29
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i64*
  %994 = load i64, i64* %993, align 8
  store i64 %994, i64* %RAX.i778, align 8
  %995 = add i64 %934, -12
  %996 = add i64 %970, 32
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i32*
  %998 = load i32, i32* %997, align 4
  %999 = add i32 %998, 1
  %1000 = zext i32 %999 to i64
  store i64 %1000, i64* %RDX.i943, align 8
  %1001 = icmp eq i32 %998, -1
  %1002 = icmp eq i32 %999, 0
  %1003 = or i1 %1001, %1002
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %19, align 1
  %1005 = and i32 %999, 255
  %1006 = tail call i32 @llvm.ctpop.i32(i32 %1005)
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  %1009 = xor i8 %1008, 1
  store i8 %1009, i8* %26, align 1
  %1010 = xor i32 %999, %998
  %1011 = lshr i32 %1010, 4
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  store i8 %1013, i8* %31, align 1
  %1014 = zext i1 %1002 to i8
  store i8 %1014, i8* %34, align 1
  %1015 = lshr i32 %999, 31
  %1016 = trunc i32 %1015 to i8
  store i8 %1016, i8* %37, align 1
  %1017 = lshr i32 %998, 31
  %1018 = xor i32 %1015, %1017
  %1019 = add nuw nsw i32 %1018, %1015
  %1020 = icmp eq i32 %1019, 2
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %43, align 1
  %1022 = sext i32 %999 to i64
  store i64 %1022, i64* %RCX.i1051, align 8
  %1023 = shl nsw i64 %1022, 2
  %1024 = add i64 %994, %1023
  %1025 = add i64 %970, 41
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i32*
  %1027 = load i32, i32* %1026, align 4
  %1028 = zext i32 %1027 to i64
  store i64 %1028, i64* %RDX.i943, align 8
  %1029 = add i64 %934, -64
  %1030 = add i64 %970, 45
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i64*
  %1032 = load i64, i64* %1031, align 8
  store i64 %1032, i64* %RAX.i778, align 8
  %1033 = add i64 %1032, 4
  store i64 %1033, i64* %RCX.i1051, align 8
  %1034 = icmp ugt i64 %1032, -5
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %19, align 1
  %1036 = trunc i64 %1033 to i32
  %1037 = and i32 %1036, 255
  %1038 = tail call i32 @llvm.ctpop.i32(i32 %1037)
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  %1041 = xor i8 %1040, 1
  store i8 %1041, i8* %26, align 1
  %1042 = xor i64 %1033, %1032
  %1043 = lshr i64 %1042, 4
  %1044 = trunc i64 %1043 to i8
  %1045 = and i8 %1044, 1
  store i8 %1045, i8* %31, align 1
  %1046 = icmp eq i64 %1033, 0
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %34, align 1
  %1048 = lshr i64 %1033, 63
  %1049 = trunc i64 %1048 to i8
  store i8 %1049, i8* %37, align 1
  %1050 = lshr i64 %1032, 63
  %1051 = xor i64 %1048, %1050
  %1052 = add nuw nsw i64 %1051, %1048
  %1053 = icmp eq i64 %1052, 2
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %43, align 1
  %1055 = load i64, i64* %RBP.i, align 8
  %1056 = add i64 %1055, -64
  %1057 = add i64 %970, 56
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i64*
  store i64 %1033, i64* %1058, align 8
  %1059 = load i64, i64* %RDX.i943, align 8
  %1060 = load i32*, i32** %885, align 8
  %1061 = load i64, i64* %3, align 8
  %1062 = add i64 %1061, 3
  store i64 %1062, i64* %3, align 8
  %1063 = load i32, i32* %1060, align 4
  %1064 = shl i64 %1059, 32
  %1065 = ashr exact i64 %1064, 32
  %1066 = sext i32 %1063 to i64
  %1067 = mul nsw i64 %1066, %1065
  %1068 = trunc i64 %1067 to i32
  %1069 = and i64 %1067, 4294967295
  store i64 %1069, i64* %RDX.i943, align 8
  %1070 = shl i64 %1067, 32
  %1071 = ashr exact i64 %1070, 32
  %1072 = icmp ne i64 %1071, %1067
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %19, align 1
  %1074 = and i32 %1068, 255
  %1075 = tail call i32 @llvm.ctpop.i32(i32 %1074)
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = xor i8 %1077, 1
  store i8 %1078, i8* %26, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %34, align 1
  %1079 = lshr i32 %1068, 31
  %1080 = trunc i32 %1079 to i8
  store i8 %1080, i8* %37, align 1
  store i8 %1073, i8* %43, align 1
  %1081 = load i64, i64* bitcast (%G_0x70fcf8_type* @G_0x70fcf8 to i64*), align 8
  store i64 %1081, i64* %RAX.i778, align 8
  %1082 = add i64 %1081, 8
  %1083 = add i64 %1061, 15
  store i64 %1083, i64* %3, align 8
  %1084 = inttoptr i64 %1082 to i64*
  %1085 = load i64, i64* %1084, align 8
  store i64 %1085, i64* %RAX.i778, align 8
  %1086 = load i64, i64* %RBP.i, align 8
  %1087 = add i64 %1086, -34
  %1088 = add i64 %1061, 20
  store i64 %1088, i64* %3, align 8
  %1089 = inttoptr i64 %1087 to i16*
  %1090 = load i16, i16* %1089, align 2
  %1091 = sext i16 %1090 to i64
  store i64 %1091, i64* %RCX.i1051, align 8
  %1092 = shl nsw i64 %1091, 3
  %1093 = add i64 %1092, %1085
  %1094 = add i64 %1061, 24
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i64*
  %1096 = load i64, i64* %1095, align 8
  store i64 %1096, i64* %RAX.i778, align 8
  %1097 = add i64 %1086, -36
  %1098 = add i64 %1061, 29
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1097 to i16*
  %1100 = load i16, i16* %1099, align 2
  %1101 = sext i16 %1100 to i64
  store i64 %1101, i64* %RCX.i1051, align 8
  %1102 = shl nsw i64 %1101, 3
  %1103 = add i64 %1102, %1096
  %1104 = add i64 %1061, 33
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i64*
  %1106 = load i64, i64* %1105, align 8
  store i64 %1106, i64* %RAX.i778, align 8
  %1107 = add i64 %1086, -12
  %1108 = add i64 %1061, 36
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i32*
  %1110 = load i32, i32* %1109, align 4
  %1111 = add i32 %1110, 1
  %1112 = zext i32 %1111 to i64
  store i64 %1112, i64* %RSI.i694, align 8
  %1113 = icmp eq i32 %1110, -1
  %1114 = icmp eq i32 %1111, 0
  %1115 = or i1 %1113, %1114
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %19, align 1
  %1117 = and i32 %1111, 255
  %1118 = tail call i32 @llvm.ctpop.i32(i32 %1117)
  %1119 = trunc i32 %1118 to i8
  %1120 = and i8 %1119, 1
  %1121 = xor i8 %1120, 1
  store i8 %1121, i8* %26, align 1
  %1122 = xor i32 %1111, %1110
  %1123 = lshr i32 %1122, 4
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  store i8 %1125, i8* %31, align 1
  %1126 = zext i1 %1114 to i8
  store i8 %1126, i8* %34, align 1
  %1127 = lshr i32 %1111, 31
  %1128 = trunc i32 %1127 to i8
  store i8 %1128, i8* %37, align 1
  %1129 = lshr i32 %1110, 31
  %1130 = xor i32 %1127, %1129
  %1131 = add nuw nsw i32 %1130, %1127
  %1132 = icmp eq i32 %1131, 2
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %43, align 1
  %1134 = sext i32 %1111 to i64
  store i64 %1134, i64* %RCX.i1051, align 8
  %1135 = shl nsw i64 %1134, 2
  %1136 = add i64 %1106, %1135
  %1137 = add i64 %1061, 45
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138, align 4
  %1140 = zext i32 %1139 to i64
  store i64 %1140, i64* %RSI.i694, align 8
  %1141 = add i64 %1086, -72
  %1142 = add i64 %1061, 49
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1141 to i64*
  %1144 = load i64, i64* %1143, align 8
  store i64 %1144, i64* %RAX.i778, align 8
  %1145 = add i64 %1144, 4
  store i64 %1145, i64* %RCX.i1051, align 8
  %1146 = icmp ugt i64 %1144, -5
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %19, align 1
  %1148 = trunc i64 %1145 to i32
  %1149 = and i32 %1148, 255
  %1150 = tail call i32 @llvm.ctpop.i32(i32 %1149)
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  %1153 = xor i8 %1152, 1
  store i8 %1153, i8* %26, align 1
  %1154 = xor i64 %1145, %1144
  %1155 = lshr i64 %1154, 4
  %1156 = trunc i64 %1155 to i8
  %1157 = and i8 %1156, 1
  store i8 %1157, i8* %31, align 1
  %1158 = icmp eq i64 %1145, 0
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %34, align 1
  %1160 = lshr i64 %1145, 63
  %1161 = trunc i64 %1160 to i8
  store i8 %1161, i8* %37, align 1
  %1162 = lshr i64 %1144, 63
  %1163 = xor i64 %1160, %1162
  %1164 = add nuw nsw i64 %1163, %1160
  %1165 = icmp eq i64 %1164, 2
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %43, align 1
  %1167 = load i64, i64* %RBP.i, align 8
  %1168 = add i64 %1167, -72
  %1169 = add i64 %1061, 60
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i64*
  store i64 %1145, i64* %1170, align 8
  %1171 = load i64, i64* %RSI.i694, align 8
  %1172 = load i32*, i32** %885, align 8
  %1173 = load i64, i64* %3, align 8
  %1174 = add i64 %1173, 3
  store i64 %1174, i64* %3, align 8
  %1175 = load i32, i32* %1172, align 4
  %1176 = shl i64 %1171, 32
  %1177 = ashr exact i64 %1176, 32
  %1178 = sext i32 %1175 to i64
  %1179 = mul nsw i64 %1178, %1177
  %1180 = load i64, i64* %RDX.i943, align 8
  %1181 = trunc i64 %1179 to i32
  %1182 = trunc i64 %1180 to i32
  %1183 = add i32 %1181, %1182
  %1184 = load i32, i32* bitcast (%G_0x710790_type* @G_0x710790 to i32*), align 8
  %1185 = shl i32 %1184, 1
  %1186 = add i32 %1185, %1183
  %1187 = zext i32 %1186 to i64
  store i64 %1187, i64* %RDX.i943, align 8
  %1188 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %1189 = add i32 %1188, 1
  %1190 = zext i32 %1189 to i64
  store i64 %1190, i64* %RSI.i694, align 8
  %1191 = icmp eq i32 %1188, -1
  %1192 = icmp eq i32 %1189, 0
  %1193 = or i1 %1191, %1192
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %19, align 1
  %1195 = and i32 %1189, 255
  %1196 = tail call i32 @llvm.ctpop.i32(i32 %1195)
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  store i8 %1199, i8* %26, align 1
  %1200 = xor i32 %1189, %1188
  %1201 = lshr i32 %1200, 4
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  store i8 %1203, i8* %31, align 1
  %1204 = zext i1 %1192 to i8
  store i8 %1204, i8* %34, align 1
  %1205 = lshr i32 %1189, 31
  %1206 = trunc i32 %1205 to i8
  store i8 %1206, i8* %37, align 1
  %1207 = lshr i32 %1188, 31
  %1208 = xor i32 %1205, %1207
  %1209 = add nuw nsw i32 %1208, %1205
  %1210 = icmp eq i32 %1209, 2
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %43, align 1
  store i64 %1190, i64* %RCX.i1051, align 8
  %1212 = add i64 %1173, 30
  store i64 %1212, i64* %3, align 8
  %1213 = trunc i32 %1189 to i5
  switch i5 %1213, label %1217 [
    i5 0, label %routine_sarl__cl___edx.exit652
    i5 1, label %1214
  ]

; <label>:1214:                                   ; preds = %block_43ff6c
  %1215 = shl nuw i64 %1187, 32
  %1216 = ashr i64 %1215, 33
  br label %1224

; <label>:1217:                                   ; preds = %block_43ff6c
  %1218 = and i32 %1189, 31
  %1219 = zext i32 %1218 to i64
  %1220 = add nsw i64 %1219, -1
  %1221 = sext i32 %1186 to i64
  %1222 = ashr i64 %1221, %1220
  %1223 = lshr i64 %1222, 1
  br label %1224

; <label>:1224:                                   ; preds = %1217, %1214
  %1225 = phi i64 [ %1223, %1217 ], [ %1216, %1214 ]
  %1226 = phi i64 [ %1222, %1217 ], [ %1187, %1214 ]
  %1227 = trunc i64 %1226 to i8
  %1228 = and i8 %1227, 1
  %1229 = trunc i64 %1225 to i32
  %1230 = and i64 %1225, 4294967295
  store i64 %1230, i64* %RDX.i943, align 8
  store i8 %1228, i8* %19, align 1
  %1231 = and i32 %1229, 255
  %1232 = tail call i32 @llvm.ctpop.i32(i32 %1231)
  %1233 = trunc i32 %1232 to i8
  %1234 = and i8 %1233, 1
  %1235 = xor i8 %1234, 1
  store i8 %1235, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %1236 = icmp eq i32 %1229, 0
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %34, align 1
  %1238 = lshr i32 %1229, 31
  %1239 = trunc i32 %1238 to i8
  store i8 %1239, i8* %37, align 1
  store i8 0, i8* %43, align 1
  br label %routine_sarl__cl___edx.exit652

routine_sarl__cl___edx.exit652:                   ; preds = %1224, %block_43ff6c
  %1240 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %1240, i64* %RAX.i778, align 8
  %1241 = add i64 %1173, 41
  store i64 %1241, i64* %3, align 8
  %1242 = inttoptr i64 %1240 to i64*
  %1243 = load i64, i64* %1242, align 8
  store i64 %1243, i64* %RAX.i778, align 8
  %1244 = load i64, i64* %RBP.i, align 8
  %1245 = add i64 %1244, -34
  %1246 = add i64 %1173, 46
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i16*
  %1248 = load i16, i16* %1247, align 2
  %1249 = sext i16 %1248 to i64
  store i64 %1249, i64* %RDI.i643, align 8
  %1250 = shl nsw i64 %1249, 3
  %1251 = add i64 %1250, %1243
  %1252 = add i64 %1173, 50
  store i64 %1252, i64* %3, align 8
  %1253 = inttoptr i64 %1251 to i64*
  %1254 = load i64, i64* %1253, align 8
  store i64 %1254, i64* %RAX.i778, align 8
  %1255 = add i64 %1244, -12
  %1256 = add i64 %1173, 53
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1255 to i32*
  %1258 = load i32, i32* %1257, align 4
  %1259 = add i32 %1258, 1
  %1260 = zext i32 %1259 to i64
  store i64 %1260, i64* %RSI.i694, align 8
  %1261 = icmp eq i32 %1258, -1
  %1262 = icmp eq i32 %1259, 0
  %1263 = or i1 %1261, %1262
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %19, align 1
  %1265 = and i32 %1259, 255
  %1266 = tail call i32 @llvm.ctpop.i32(i32 %1265)
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  %1269 = xor i8 %1268, 1
  store i8 %1269, i8* %26, align 1
  %1270 = xor i32 %1259, %1258
  %1271 = lshr i32 %1270, 4
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  store i8 %1273, i8* %31, align 1
  %1274 = zext i1 %1262 to i8
  store i8 %1274, i8* %34, align 1
  %1275 = lshr i32 %1259, 31
  %1276 = trunc i32 %1275 to i8
  store i8 %1276, i8* %37, align 1
  %1277 = lshr i32 %1258, 31
  %1278 = xor i32 %1275, %1277
  %1279 = add nuw nsw i32 %1278, %1275
  %1280 = icmp eq i32 %1279, 2
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %43, align 1
  %1282 = sext i32 %1259 to i64
  store i64 %1282, i64* %RDI.i643, align 8
  %1283 = shl nsw i64 %1282, 2
  %1284 = add i64 %1254, %1283
  %1285 = add i64 %1173, 62
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i32*
  %1287 = load i32, i32* %1286, align 4
  %1288 = zext i32 %1287 to i64
  store i64 %1288, i64* %RSI.i694, align 8
  store i64 %1240, i64* %RAX.i778, align 8
  %1289 = add i64 %1240, 8
  %1290 = add i64 %1173, 74
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i64*
  %1292 = load i64, i64* %1291, align 8
  store i64 %1292, i64* %RAX.i778, align 8
  %1293 = add i64 %1244, -36
  %1294 = add i64 %1173, 79
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i16*
  %1296 = load i16, i16* %1295, align 2
  %1297 = sext i16 %1296 to i64
  store i64 %1297, i64* %RDI.i643, align 8
  %1298 = shl nsw i64 %1297, 3
  %1299 = add i64 %1298, %1292
  %1300 = add i64 %1173, 83
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i64*
  %1302 = load i64, i64* %1301, align 8
  store i64 %1302, i64* %RAX.i778, align 8
  %1303 = add i64 %1173, 87
  store i64 %1303, i64* %3, align 8
  %1304 = load i32, i32* %1257, align 4
  %1305 = add i32 %1304, 1
  %1306 = zext i32 %1305 to i64
  store i64 %1306, i64* %886, align 8
  %1307 = icmp eq i32 %1304, -1
  %1308 = icmp eq i32 %1305, 0
  %1309 = or i1 %1307, %1308
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %19, align 1
  %1311 = and i32 %1305, 255
  %1312 = tail call i32 @llvm.ctpop.i32(i32 %1311)
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  %1315 = xor i8 %1314, 1
  store i8 %1315, i8* %26, align 1
  %1316 = xor i32 %1305, %1304
  %1317 = lshr i32 %1316, 4
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  store i8 %1319, i8* %31, align 1
  %1320 = zext i1 %1308 to i8
  store i8 %1320, i8* %34, align 1
  %1321 = lshr i32 %1305, 31
  %1322 = trunc i32 %1321 to i8
  store i8 %1322, i8* %37, align 1
  %1323 = lshr i32 %1304, 31
  %1324 = xor i32 %1321, %1323
  %1325 = add nuw nsw i32 %1324, %1321
  %1326 = icmp eq i32 %1325, 2
  %1327 = zext i1 %1326 to i8
  store i8 %1327, i8* %43, align 1
  %1328 = sext i32 %1305 to i64
  store i64 %1328, i64* %RDI.i643, align 8
  %1329 = shl nsw i64 %1328, 2
  %1330 = add i64 %1302, %1329
  %1331 = add i64 %1173, 97
  store i64 %1331, i64* %3, align 8
  %1332 = inttoptr i64 %1330 to i32*
  %1333 = load i32, i32* %1332, align 4
  %1334 = add i32 %1333, %1287
  %1335 = add i32 %1334, 1
  %1336 = zext i32 %1335 to i64
  %1337 = shl nuw i64 %1336, 32
  %1338 = ashr i64 %1337, 33
  %1339 = and i64 %1338, 4294967295
  store i64 %1339, i64* %RSI.i694, align 8
  %1340 = load i64, i64* %RDX.i943, align 8
  %1341 = trunc i64 %1338 to i32
  %1342 = trunc i64 %1340 to i32
  %1343 = add i32 %1341, %1342
  %1344 = zext i32 %1343 to i64
  store i64 %1344, i64* %RDX.i943, align 8
  %1345 = icmp ult i32 %1343, %1342
  %1346 = icmp ult i32 %1343, %1341
  %1347 = or i1 %1345, %1346
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %19, align 1
  %1349 = and i32 %1343, 255
  %1350 = tail call i32 @llvm.ctpop.i32(i32 %1349)
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  %1353 = xor i8 %1352, 1
  store i8 %1353, i8* %26, align 1
  %1354 = xor i64 %1338, %1340
  %1355 = trunc i64 %1354 to i32
  %1356 = xor i32 %1355, %1343
  %1357 = lshr i32 %1356, 4
  %1358 = trunc i32 %1357 to i8
  %1359 = and i8 %1358, 1
  store i8 %1359, i8* %31, align 1
  %1360 = icmp eq i32 %1343, 0
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %34, align 1
  %1362 = lshr i32 %1343, 31
  %1363 = trunc i32 %1362 to i8
  store i8 %1363, i8* %37, align 1
  %1364 = lshr i32 %1342, 31
  %1365 = lshr i64 %1338, 31
  %1366 = trunc i64 %1365 to i32
  %1367 = and i32 %1366, 1
  %1368 = xor i32 %1362, %1364
  %1369 = xor i32 %1362, %1367
  %1370 = add nuw nsw i32 %1368, %1369
  %1371 = icmp eq i32 %1370, 2
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %43, align 1
  store i64 %1344, i64* %RDI.i643, align 8
  %1373 = add i64 %1173, -18642
  %1374 = add i64 %1173, 111
  %1375 = load i64, i64* %6, align 8
  %1376 = add i64 %1375, -8
  %1377 = inttoptr i64 %1376 to i64*
  store i64 %1374, i64* %1377, align 8
  store i64 %1376, i64* %6, align 8
  store i64 %1373, i64* %3, align 8
  %call2_44004c = tail call %struct.Memory* @sub_43b710.clip1a_chr(%struct.State* nonnull %0, i64 %1373, %struct.Memory* %MEMORY.8)
  %1378 = load i16, i16* %AX.i1084, align 2
  %1379 = load i64, i64* %3, align 8
  store i16 %1378, i16* %R9W.i594, align 2
  %1380 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1381 = add i64 %1380, 12600
  store i64 %1381, i64* %R10.i591, align 8
  %1382 = icmp ugt i64 %1380, -12601
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %19, align 1
  %1384 = trunc i64 %1381 to i32
  %1385 = and i32 %1384, 255
  %1386 = tail call i32 @llvm.ctpop.i32(i32 %1385)
  %1387 = trunc i32 %1386 to i8
  %1388 = and i8 %1387, 1
  %1389 = xor i8 %1388, 1
  store i8 %1389, i8* %26, align 1
  %1390 = xor i64 %1380, 16
  %1391 = xor i64 %1390, %1381
  %1392 = lshr i64 %1391, 4
  %1393 = trunc i64 %1392 to i8
  %1394 = and i8 %1393, 1
  store i8 %1394, i8* %31, align 1
  %1395 = icmp eq i64 %1381, 0
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %34, align 1
  %1397 = lshr i64 %1381, 63
  %1398 = trunc i64 %1397 to i8
  store i8 %1398, i8* %37, align 1
  %1399 = lshr i64 %1380, 63
  %1400 = xor i64 %1397, %1399
  %1401 = add nuw nsw i64 %1400, %1397
  %1402 = icmp eq i64 %1401, 2
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %43, align 1
  %1404 = load i64, i64* %RBP.i, align 8
  %1405 = add i64 %1404, -40
  %1406 = add i64 %1379, 23
  store i64 %1406, i64* %3, align 8
  %1407 = inttoptr i64 %1405 to i32*
  %1408 = load i32, i32* %1407, align 4
  %1409 = sext i32 %1408 to i64
  %1410 = shl nsw i64 %1409, 5
  store i64 %1410, i64* %R11.i1079, align 8
  %1411 = add i64 %1410, %1381
  store i64 %1411, i64* %R10.i591, align 8
  %1412 = icmp ult i64 %1411, %1381
  %1413 = icmp ult i64 %1411, %1410
  %1414 = or i1 %1412, %1413
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %19, align 1
  %1416 = trunc i64 %1411 to i32
  %1417 = and i32 %1416, 255
  %1418 = tail call i32 @llvm.ctpop.i32(i32 %1417)
  %1419 = trunc i32 %1418 to i8
  %1420 = and i8 %1419, 1
  %1421 = xor i8 %1420, 1
  store i8 %1421, i8* %26, align 1
  %1422 = xor i64 %1381, %1411
  %1423 = lshr i64 %1422, 4
  %1424 = trunc i64 %1423 to i8
  %1425 = and i8 %1424, 1
  store i8 %1425, i8* %31, align 1
  %1426 = icmp eq i64 %1411, 0
  %1427 = zext i1 %1426 to i8
  store i8 %1427, i8* %34, align 1
  %1428 = lshr i64 %1411, 63
  %1429 = trunc i64 %1428 to i8
  store i8 %1429, i8* %37, align 1
  %1430 = lshr i64 %1409, 58
  %1431 = and i64 %1430, 1
  %1432 = xor i64 %1428, %1397
  %1433 = xor i64 %1428, %1431
  %1434 = add nuw nsw i64 %1432, %1433
  %1435 = icmp eq i64 %1434, 2
  %1436 = zext i1 %1435 to i8
  store i8 %1436, i8* %43, align 1
  %1437 = add i64 %1404, -44
  %1438 = add i64 %1379, 34
  store i64 %1438, i64* %3, align 8
  %1439 = inttoptr i64 %1437 to i32*
  %1440 = load i32, i32* %1439, align 4
  %1441 = sext i32 %1440 to i64
  store i64 %1441, i64* %R11.i1079, align 8
  %1442 = shl nsw i64 %1441, 1
  %1443 = add i64 %1442, %1411
  %1444 = load i16, i16* %R9W.i594, align 2
  %1445 = add i64 %1379, 39
  store i64 %1445, i64* %3, align 8
  %1446 = inttoptr i64 %1443 to i16*
  store i16 %1444, i16* %1446, align 2
  %1447 = load i64, i64* %RBP.i, align 8
  %1448 = add i64 %1447, -40
  %1449 = load i64, i64* %3, align 8
  %1450 = add i64 %1449, 3
  store i64 %1450, i64* %3, align 8
  %1451 = inttoptr i64 %1448 to i32*
  %1452 = load i32, i32* %1451, align 4
  %1453 = add i32 %1452, 1
  %1454 = zext i32 %1453 to i64
  store i64 %1454, i64* %RAX.i778, align 8
  %1455 = icmp eq i32 %1452, -1
  %1456 = icmp eq i32 %1453, 0
  %1457 = or i1 %1455, %1456
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %19, align 1
  %1459 = and i32 %1453, 255
  %1460 = tail call i32 @llvm.ctpop.i32(i32 %1459)
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  %1463 = xor i8 %1462, 1
  store i8 %1463, i8* %26, align 1
  %1464 = xor i32 %1453, %1452
  %1465 = lshr i32 %1464, 4
  %1466 = trunc i32 %1465 to i8
  %1467 = and i8 %1466, 1
  store i8 %1467, i8* %31, align 1
  %1468 = zext i1 %1456 to i8
  store i8 %1468, i8* %34, align 1
  %1469 = lshr i32 %1453, 31
  %1470 = trunc i32 %1469 to i8
  store i8 %1470, i8* %37, align 1
  %1471 = lshr i32 %1452, 31
  %1472 = xor i32 %1469, %1471
  %1473 = add nuw nsw i32 %1472, %1469
  %1474 = icmp eq i32 %1473, 2
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %43, align 1
  %1476 = add i64 %1449, 9
  store i64 %1476, i64* %3, align 8
  store i32 %1453, i32* %1451, align 4
  %1477 = load i64, i64* %3, align 8
  %1478 = add i64 %1477, -289
  store i64 %1478, i64* %3, align 8
  br label %block_.L_43ff60

block_.L_440086:                                  ; preds = %block_.L_43ff60
  %1479 = add i64 %934, -44
  %1480 = add i64 %970, 8
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1479 to i32*
  %1482 = load i32, i32* %1481, align 4
  %1483 = add i32 %1482, 1
  %1484 = zext i32 %1483 to i64
  store i64 %1484, i64* %RAX.i778, align 8
  %1485 = icmp eq i32 %1482, -1
  %1486 = icmp eq i32 %1483, 0
  %1487 = or i1 %1485, %1486
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %19, align 1
  %1489 = and i32 %1483, 255
  %1490 = tail call i32 @llvm.ctpop.i32(i32 %1489)
  %1491 = trunc i32 %1490 to i8
  %1492 = and i8 %1491, 1
  %1493 = xor i8 %1492, 1
  store i8 %1493, i8* %26, align 1
  %1494 = xor i32 %1483, %1482
  %1495 = lshr i32 %1494, 4
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  store i8 %1497, i8* %31, align 1
  %1498 = zext i1 %1486 to i8
  store i8 %1498, i8* %34, align 1
  %1499 = lshr i32 %1483, 31
  %1500 = trunc i32 %1499 to i8
  store i8 %1500, i8* %37, align 1
  %1501 = lshr i32 %1482, 31
  %1502 = xor i32 %1499, %1501
  %1503 = add nuw nsw i32 %1502, %1499
  %1504 = icmp eq i32 %1503, 2
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %43, align 1
  %1506 = add i64 %970, 14
  store i64 %1506, i64* %3, align 8
  store i32 %1483, i32* %1481, align 4
  %1507 = load i64, i64* %3, align 8
  %1508 = add i64 %1507, -326
  store i64 %1508, i64* %3, align 8
  br label %block_.L_43ff4e

block_.L_440099:                                  ; preds = %block_.L_43ff4e
  %1509 = add i64 %924, 458
  br label %block_.L_440263

block_.L_44009e:                                  ; preds = %block_43ff3e
  %1510 = add i64 %876, 4
  store i64 %1510, i64* %3, align 8
  %1511 = load i32, i32* %853, align 4
  store i8 0, i8* %19, align 1
  %1512 = and i32 %1511, 255
  %1513 = tail call i32 @llvm.ctpop.i32(i32 %1512)
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = xor i8 %1515, 1
  store i8 %1516, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %1517 = icmp eq i32 %1511, 0
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %34, align 1
  %1519 = lshr i32 %1511, 31
  %1520 = trunc i32 %1519 to i8
  store i8 %1520, i8* %37, align 1
  store i8 0, i8* %43, align 1
  %.v90 = select i1 %1517, i64 10, i64 228
  %1521 = add i64 %876, %.v90
  %RAX.i413 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %1522 = add i64 %836, -20
  %1523 = add i64 %1521, 3
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i32*
  %1525 = load i32, i32* %1524, align 4
  %1526 = zext i32 %1525 to i64
  store i64 %1526, i64* %RAX.i413, align 8
  %1527 = add i64 %836, -44
  %1528 = add i64 %1521, 6
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i32*
  store i32 %1525, i32* %1529, align 4
  %1530 = bitcast %union.anon* %44 to i32**
  %RSI.i341 = getelementptr inbounds %union.anon, %union.anon* %61, i64 0, i32 0
  %RDI.i335 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %R8W.i323 = bitcast %union.anon* %82 to i16*
  %R9.i316 = getelementptr inbounds %union.anon, %union.anon* %89, i64 0, i32 0
  %.pre75 = load i64, i64* %3, align 8
  br i1 %1517, label %block_.L_4400ae.preheader, label %block_.L_440188.preheader

block_.L_440188.preheader:                        ; preds = %block_.L_44009e
  br label %block_.L_440188

block_.L_4400ae.preheader:                        ; preds = %block_.L_44009e
  br label %block_.L_4400ae

block_.L_4400ae:                                  ; preds = %block_.L_4400ae.preheader, %block_.L_44016a
  %1531 = phi i64 [ %1973, %block_.L_44016a ], [ %.pre75, %block_.L_4400ae.preheader ]
  %1532 = load i64, i64* %RBP.i, align 8
  %1533 = add i64 %1532, -44
  %1534 = add i64 %1531, 3
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = zext i32 %1536 to i64
  store i64 %1537, i64* %RAX.i413, align 8
  %1538 = add i64 %1532, -52
  %1539 = add i64 %1531, 6
  store i64 %1539, i64* %3, align 8
  %1540 = inttoptr i64 %1538 to i32*
  %1541 = load i32, i32* %1540, align 4
  %1542 = sub i32 %1536, %1541
  %1543 = icmp ult i32 %1536, %1541
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %19, align 1
  %1545 = and i32 %1542, 255
  %1546 = tail call i32 @llvm.ctpop.i32(i32 %1545)
  %1547 = trunc i32 %1546 to i8
  %1548 = and i8 %1547, 1
  %1549 = xor i8 %1548, 1
  store i8 %1549, i8* %26, align 1
  %1550 = xor i32 %1541, %1536
  %1551 = xor i32 %1550, %1542
  %1552 = lshr i32 %1551, 4
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  store i8 %1554, i8* %31, align 1
  %1555 = icmp eq i32 %1542, 0
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %34, align 1
  %1557 = lshr i32 %1542, 31
  %1558 = trunc i32 %1557 to i8
  store i8 %1558, i8* %37, align 1
  %1559 = lshr i32 %1536, 31
  %1560 = lshr i32 %1541, 31
  %1561 = xor i32 %1560, %1559
  %1562 = xor i32 %1557, %1559
  %1563 = add nuw nsw i32 %1562, %1561
  %1564 = icmp eq i32 %1563, 2
  %1565 = zext i1 %1564 to i8
  store i8 %1565, i8* %43, align 1
  %1566 = icmp ne i8 %1558, 0
  %1567 = xor i1 %1566, %1564
  %.v107 = select i1 %1567, i64 12, i64 207
  %1568 = add i64 %1531, %.v107
  store i64 %1568, i64* %3, align 8
  br i1 %1567, label %block_4400ba, label %block_.L_44017d

block_4400ba:                                     ; preds = %block_.L_4400ae
  %1569 = add i64 %1532, -16
  %1570 = add i64 %1568, 3
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1569 to i32*
  %1572 = load i32, i32* %1571, align 4
  %1573 = zext i32 %1572 to i64
  store i64 %1573, i64* %RAX.i413, align 8
  %1574 = add i64 %1532, -40
  %1575 = add i64 %1568, 6
  store i64 %1575, i64* %3, align 8
  %1576 = inttoptr i64 %1574 to i32*
  store i32 %1572, i32* %1576, align 4
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_4400c0

block_.L_4400c0:                                  ; preds = %routine_sarl__cl___edx.exit486, %block_4400ba
  %1577 = phi i64 [ %1943, %routine_sarl__cl___edx.exit486 ], [ %.pre76, %block_4400ba ]
  %1578 = load i64, i64* %RBP.i, align 8
  %1579 = add i64 %1578, -40
  %1580 = add i64 %1577, 3
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = zext i32 %1582 to i64
  store i64 %1583, i64* %RAX.i413, align 8
  %1584 = add i64 %1578, -48
  %1585 = add i64 %1577, 6
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1584 to i32*
  %1587 = load i32, i32* %1586, align 4
  %1588 = sub i32 %1582, %1587
  %1589 = icmp ult i32 %1582, %1587
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %19, align 1
  %1591 = and i32 %1588, 255
  %1592 = tail call i32 @llvm.ctpop.i32(i32 %1591)
  %1593 = trunc i32 %1592 to i8
  %1594 = and i8 %1593, 1
  %1595 = xor i8 %1594, 1
  store i8 %1595, i8* %26, align 1
  %1596 = xor i32 %1587, %1582
  %1597 = xor i32 %1596, %1588
  %1598 = lshr i32 %1597, 4
  %1599 = trunc i32 %1598 to i8
  %1600 = and i8 %1599, 1
  store i8 %1600, i8* %31, align 1
  %1601 = icmp eq i32 %1588, 0
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %34, align 1
  %1603 = lshr i32 %1588, 31
  %1604 = trunc i32 %1603 to i8
  store i8 %1604, i8* %37, align 1
  %1605 = lshr i32 %1582, 31
  %1606 = lshr i32 %1587, 31
  %1607 = xor i32 %1606, %1605
  %1608 = xor i32 %1603, %1605
  %1609 = add nuw nsw i32 %1608, %1607
  %1610 = icmp eq i32 %1609, 2
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %43, align 1
  %1612 = icmp ne i8 %1604, 0
  %1613 = xor i1 %1612, %1610
  %.v92 = select i1 %1613, i64 12, i64 170
  %1614 = add i64 %1577, %.v92
  store i64 %1614, i64* %3, align 8
  br i1 %1613, label %block_4400cc, label %block_.L_44016a

block_4400cc:                                     ; preds = %block_.L_4400c0
  %1615 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %1615, i64* %RAX.i413, align 8
  %1616 = add i64 %1614, 11
  store i64 %1616, i64* %3, align 8
  %1617 = inttoptr i64 %1615 to i64*
  %1618 = load i64, i64* %1617, align 8
  store i64 %1618, i64* %RAX.i413, align 8
  %1619 = add i64 %1578, -34
  %1620 = add i64 %1614, 16
  store i64 %1620, i64* %3, align 8
  %1621 = inttoptr i64 %1619 to i16*
  %1622 = load i16, i16* %1621, align 2
  %1623 = sext i16 %1622 to i64
  store i64 %1623, i64* %RCX.i1051, align 8
  %1624 = shl nsw i64 %1623, 3
  %1625 = add i64 %1624, %1618
  %1626 = add i64 %1614, 20
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1625 to i64*
  %1628 = load i64, i64* %1627, align 8
  store i64 %1628, i64* %RAX.i413, align 8
  %1629 = add i64 %1578, -12
  %1630 = add i64 %1614, 23
  store i64 %1630, i64* %3, align 8
  %1631 = inttoptr i64 %1629 to i32*
  %1632 = load i32, i32* %1631, align 4
  %1633 = add i32 %1632, 1
  %1634 = zext i32 %1633 to i64
  store i64 %1634, i64* %RDX.i943, align 8
  %1635 = icmp eq i32 %1632, -1
  %1636 = icmp eq i32 %1633, 0
  %1637 = or i1 %1635, %1636
  %1638 = zext i1 %1637 to i8
  store i8 %1638, i8* %19, align 1
  %1639 = and i32 %1633, 255
  %1640 = tail call i32 @llvm.ctpop.i32(i32 %1639)
  %1641 = trunc i32 %1640 to i8
  %1642 = and i8 %1641, 1
  %1643 = xor i8 %1642, 1
  store i8 %1643, i8* %26, align 1
  %1644 = xor i32 %1633, %1632
  %1645 = lshr i32 %1644, 4
  %1646 = trunc i32 %1645 to i8
  %1647 = and i8 %1646, 1
  store i8 %1647, i8* %31, align 1
  %1648 = zext i1 %1636 to i8
  store i8 %1648, i8* %34, align 1
  %1649 = lshr i32 %1633, 31
  %1650 = trunc i32 %1649 to i8
  store i8 %1650, i8* %37, align 1
  %1651 = lshr i32 %1632, 31
  %1652 = xor i32 %1649, %1651
  %1653 = add nuw nsw i32 %1652, %1649
  %1654 = icmp eq i32 %1653, 2
  %1655 = zext i1 %1654 to i8
  store i8 %1655, i8* %43, align 1
  %1656 = sext i32 %1633 to i64
  store i64 %1656, i64* %RCX.i1051, align 8
  %1657 = shl nsw i64 %1656, 2
  %1658 = add i64 %1628, %1657
  %1659 = add i64 %1614, 32
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1658 to i32*
  %1661 = load i32, i32* %1660, align 4
  %1662 = zext i32 %1661 to i64
  store i64 %1662, i64* %RDX.i943, align 8
  %1663 = add i64 %1578, -64
  %1664 = add i64 %1614, 36
  store i64 %1664, i64* %3, align 8
  %1665 = inttoptr i64 %1663 to i64*
  %1666 = load i64, i64* %1665, align 8
  store i64 %1666, i64* %RAX.i413, align 8
  %1667 = add i64 %1666, 4
  store i64 %1667, i64* %RCX.i1051, align 8
  %1668 = icmp ugt i64 %1666, -5
  %1669 = zext i1 %1668 to i8
  store i8 %1669, i8* %19, align 1
  %1670 = trunc i64 %1667 to i32
  %1671 = and i32 %1670, 255
  %1672 = tail call i32 @llvm.ctpop.i32(i32 %1671)
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  %1675 = xor i8 %1674, 1
  store i8 %1675, i8* %26, align 1
  %1676 = xor i64 %1667, %1666
  %1677 = lshr i64 %1676, 4
  %1678 = trunc i64 %1677 to i8
  %1679 = and i8 %1678, 1
  store i8 %1679, i8* %31, align 1
  %1680 = icmp eq i64 %1667, 0
  %1681 = zext i1 %1680 to i8
  store i8 %1681, i8* %34, align 1
  %1682 = lshr i64 %1667, 63
  %1683 = trunc i64 %1682 to i8
  store i8 %1683, i8* %37, align 1
  %1684 = lshr i64 %1666, 63
  %1685 = xor i64 %1682, %1684
  %1686 = add nuw nsw i64 %1685, %1682
  %1687 = icmp eq i64 %1686, 2
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %43, align 1
  %1689 = load i64, i64* %RBP.i, align 8
  %1690 = add i64 %1689, -64
  %1691 = add i64 %1614, 47
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1690 to i64*
  store i64 %1667, i64* %1692, align 8
  %1693 = load i64, i64* %RDX.i943, align 8
  %1694 = load i32*, i32** %1530, align 8
  %1695 = load i64, i64* %3, align 8
  %1696 = add i64 %1695, 3
  store i64 %1696, i64* %3, align 8
  %1697 = load i32, i32* %1694, align 4
  %1698 = shl i64 %1693, 32
  %1699 = ashr exact i64 %1698, 32
  %1700 = sext i32 %1697 to i64
  %1701 = mul nsw i64 %1700, %1699
  %1702 = trunc i64 %1701 to i32
  %1703 = load i32, i32* bitcast (%G_0x710790_type* @G_0x710790 to i32*), align 8
  %1704 = add i32 %1703, %1702
  %1705 = zext i32 %1704 to i64
  store i64 %1705, i64* %RDX.i943, align 8
  %1706 = icmp ult i32 %1704, %1702
  %1707 = icmp ult i32 %1704, %1703
  %1708 = or i1 %1706, %1707
  %1709 = zext i1 %1708 to i8
  store i8 %1709, i8* %19, align 1
  %1710 = and i32 %1704, 255
  %1711 = tail call i32 @llvm.ctpop.i32(i32 %1710)
  %1712 = trunc i32 %1711 to i8
  %1713 = and i8 %1712, 1
  %1714 = xor i8 %1713, 1
  store i8 %1714, i8* %26, align 1
  %1715 = xor i32 %1703, %1702
  %1716 = xor i32 %1715, %1704
  %1717 = lshr i32 %1716, 4
  %1718 = trunc i32 %1717 to i8
  %1719 = and i8 %1718, 1
  store i8 %1719, i8* %31, align 1
  %1720 = icmp eq i32 %1704, 0
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %34, align 1
  %1722 = lshr i32 %1704, 31
  %1723 = trunc i32 %1722 to i8
  store i8 %1723, i8* %37, align 1
  %1724 = lshr i32 %1702, 31
  %1725 = lshr i32 %1703, 31
  %1726 = xor i32 %1722, %1724
  %1727 = xor i32 %1722, %1725
  %1728 = add nuw nsw i32 %1726, %1727
  %1729 = icmp eq i32 %1728, 2
  %1730 = zext i1 %1729 to i8
  store i8 %1730, i8* %43, align 1
  %1731 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %1732 = zext i32 %1731 to i64
  store i64 %1732, i64* %RCX.i1051, align 8
  %1733 = add i64 %1695, 19
  store i64 %1733, i64* %3, align 8
  %1734 = trunc i32 %1731 to i5
  switch i5 %1734, label %1738 [
    i5 0, label %routine_sarl__cl___edx.exit486
    i5 1, label %1735
  ]

; <label>:1735:                                   ; preds = %block_4400cc
  %1736 = shl nuw i64 %1705, 32
  %1737 = ashr i64 %1736, 33
  br label %1745

; <label>:1738:                                   ; preds = %block_4400cc
  %1739 = and i32 %1731, 31
  %1740 = zext i32 %1739 to i64
  %1741 = add nsw i64 %1740, -1
  %1742 = sext i32 %1704 to i64
  %1743 = ashr i64 %1742, %1741
  %1744 = lshr i64 %1743, 1
  br label %1745

; <label>:1745:                                   ; preds = %1738, %1735
  %1746 = phi i64 [ %1744, %1738 ], [ %1737, %1735 ]
  %1747 = phi i64 [ %1743, %1738 ], [ %1705, %1735 ]
  %1748 = trunc i64 %1747 to i8
  %1749 = and i8 %1748, 1
  %1750 = trunc i64 %1746 to i32
  %1751 = and i64 %1746, 4294967295
  store i64 %1751, i64* %RDX.i943, align 8
  store i8 %1749, i8* %19, align 1
  %1752 = and i32 %1750, 255
  %1753 = tail call i32 @llvm.ctpop.i32(i32 %1752)
  %1754 = trunc i32 %1753 to i8
  %1755 = and i8 %1754, 1
  %1756 = xor i8 %1755, 1
  store i8 %1756, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %1757 = icmp eq i32 %1750, 0
  %1758 = zext i1 %1757 to i8
  store i8 %1758, i8* %34, align 1
  %1759 = lshr i32 %1750, 31
  %1760 = trunc i32 %1759 to i8
  store i8 %1760, i8* %37, align 1
  store i8 0, i8* %43, align 1
  br label %routine_sarl__cl___edx.exit486

routine_sarl__cl___edx.exit486:                   ; preds = %1745, %block_4400cc
  %1761 = phi i64 [ %1751, %1745 ], [ %1705, %block_4400cc ]
  %1762 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %1762, i64* %RAX.i413, align 8
  %1763 = add i64 %1695, 30
  store i64 %1763, i64* %3, align 8
  %1764 = inttoptr i64 %1762 to i64*
  %1765 = load i64, i64* %1764, align 8
  store i64 %1765, i64* %RAX.i413, align 8
  %1766 = load i64, i64* %RBP.i, align 8
  %1767 = add i64 %1766, -34
  %1768 = add i64 %1695, 35
  store i64 %1768, i64* %3, align 8
  %1769 = inttoptr i64 %1767 to i16*
  %1770 = load i16, i16* %1769, align 2
  %1771 = sext i16 %1770 to i64
  store i64 %1771, i64* %RSI.i341, align 8
  %1772 = shl nsw i64 %1771, 3
  %1773 = add i64 %1772, %1765
  %1774 = add i64 %1695, 39
  store i64 %1774, i64* %3, align 8
  %1775 = inttoptr i64 %1773 to i64*
  %1776 = load i64, i64* %1775, align 8
  store i64 %1776, i64* %RAX.i413, align 8
  %1777 = add i64 %1766, -12
  %1778 = add i64 %1695, 42
  store i64 %1778, i64* %3, align 8
  %1779 = inttoptr i64 %1777 to i32*
  %1780 = load i32, i32* %1779, align 4
  %1781 = add i32 %1780, 1
  %1782 = zext i32 %1781 to i64
  store i64 %1782, i64* %RDI.i335, align 8
  %1783 = icmp eq i32 %1780, -1
  %1784 = icmp eq i32 %1781, 0
  %1785 = or i1 %1783, %1784
  %1786 = zext i1 %1785 to i8
  store i8 %1786, i8* %19, align 1
  %1787 = and i32 %1781, 255
  %1788 = tail call i32 @llvm.ctpop.i32(i32 %1787)
  %1789 = trunc i32 %1788 to i8
  %1790 = and i8 %1789, 1
  %1791 = xor i8 %1790, 1
  store i8 %1791, i8* %26, align 1
  %1792 = xor i32 %1781, %1780
  %1793 = lshr i32 %1792, 4
  %1794 = trunc i32 %1793 to i8
  %1795 = and i8 %1794, 1
  store i8 %1795, i8* %31, align 1
  %1796 = zext i1 %1784 to i8
  store i8 %1796, i8* %34, align 1
  %1797 = lshr i32 %1781, 31
  %1798 = trunc i32 %1797 to i8
  store i8 %1798, i8* %37, align 1
  %1799 = lshr i32 %1780, 31
  %1800 = xor i32 %1797, %1799
  %1801 = add nuw nsw i32 %1800, %1797
  %1802 = icmp eq i32 %1801, 2
  %1803 = zext i1 %1802 to i8
  store i8 %1803, i8* %43, align 1
  %1804 = sext i32 %1781 to i64
  store i64 %1804, i64* %RSI.i341, align 8
  %1805 = shl nsw i64 %1804, 2
  %1806 = add i64 %1776, %1805
  %1807 = add i64 %1695, 51
  store i64 %1807, i64* %3, align 8
  %1808 = trunc i64 %1761 to i32
  %1809 = inttoptr i64 %1806 to i32*
  %1810 = load i32, i32* %1809, align 4
  %1811 = add i32 %1810, %1808
  %1812 = zext i32 %1811 to i64
  store i64 %1812, i64* %RDX.i943, align 8
  %1813 = icmp ult i32 %1811, %1808
  %1814 = icmp ult i32 %1811, %1810
  %1815 = or i1 %1813, %1814
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %19, align 1
  %1817 = and i32 %1811, 255
  %1818 = tail call i32 @llvm.ctpop.i32(i32 %1817)
  %1819 = trunc i32 %1818 to i8
  %1820 = and i8 %1819, 1
  %1821 = xor i8 %1820, 1
  store i8 %1821, i8* %26, align 1
  %1822 = xor i32 %1810, %1808
  %1823 = xor i32 %1822, %1811
  %1824 = lshr i32 %1823, 4
  %1825 = trunc i32 %1824 to i8
  %1826 = and i8 %1825, 1
  store i8 %1826, i8* %31, align 1
  %1827 = icmp eq i32 %1811, 0
  %1828 = zext i1 %1827 to i8
  store i8 %1828, i8* %34, align 1
  %1829 = lshr i32 %1811, 31
  %1830 = trunc i32 %1829 to i8
  store i8 %1830, i8* %37, align 1
  %1831 = lshr i32 %1808, 31
  %1832 = lshr i32 %1810, 31
  %1833 = xor i32 %1829, %1831
  %1834 = xor i32 %1829, %1832
  %1835 = add nuw nsw i32 %1833, %1834
  %1836 = icmp eq i32 %1835, 2
  %1837 = zext i1 %1836 to i8
  store i8 %1837, i8* %43, align 1
  store i64 %1812, i64* %RDI.i335, align 8
  %1838 = add i64 %1695, -18923
  %1839 = add i64 %1695, 58
  %1840 = load i64, i64* %6, align 8
  %1841 = add i64 %1840, -8
  %1842 = inttoptr i64 %1841 to i64*
  store i64 %1839, i64* %1842, align 8
  store i64 %1841, i64* %6, align 8
  store i64 %1838, i64* %3, align 8
  %call2_440130 = tail call %struct.Memory* @sub_43b710.clip1a_chr(%struct.State* nonnull %0, i64 %1838, %struct.Memory* %MEMORY.8)
  %1843 = load i16, i16* %AX.i1084, align 2
  %1844 = load i64, i64* %3, align 8
  store i16 %1843, i16* %R8W.i323, align 2
  %1845 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1846 = add i64 %1845, 12600
  store i64 %1846, i64* %RSI.i341, align 8
  %1847 = icmp ugt i64 %1845, -12601
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %19, align 1
  %1849 = trunc i64 %1846 to i32
  %1850 = and i32 %1849, 255
  %1851 = tail call i32 @llvm.ctpop.i32(i32 %1850)
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  %1854 = xor i8 %1853, 1
  store i8 %1854, i8* %26, align 1
  %1855 = xor i64 %1845, 16
  %1856 = xor i64 %1855, %1846
  %1857 = lshr i64 %1856, 4
  %1858 = trunc i64 %1857 to i8
  %1859 = and i8 %1858, 1
  store i8 %1859, i8* %31, align 1
  %1860 = icmp eq i64 %1846, 0
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %34, align 1
  %1862 = lshr i64 %1846, 63
  %1863 = trunc i64 %1862 to i8
  store i8 %1863, i8* %37, align 1
  %1864 = lshr i64 %1845, 63
  %1865 = xor i64 %1862, %1864
  %1866 = add nuw nsw i64 %1865, %1862
  %1867 = icmp eq i64 %1866, 2
  %1868 = zext i1 %1867 to i8
  store i8 %1868, i8* %43, align 1
  %1869 = load i64, i64* %RBP.i, align 8
  %1870 = add i64 %1869, -40
  %1871 = add i64 %1844, 23
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i32*
  %1873 = load i32, i32* %1872, align 4
  %1874 = sext i32 %1873 to i64
  %1875 = shl nsw i64 %1874, 5
  store i64 %1875, i64* %R9.i316, align 8
  %1876 = add i64 %1875, %1846
  store i64 %1876, i64* %RSI.i341, align 8
  %1877 = icmp ult i64 %1876, %1846
  %1878 = icmp ult i64 %1876, %1875
  %1879 = or i1 %1877, %1878
  %1880 = zext i1 %1879 to i8
  store i8 %1880, i8* %19, align 1
  %1881 = trunc i64 %1876 to i32
  %1882 = and i32 %1881, 255
  %1883 = tail call i32 @llvm.ctpop.i32(i32 %1882)
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  %1886 = xor i8 %1885, 1
  store i8 %1886, i8* %26, align 1
  %1887 = xor i64 %1846, %1876
  %1888 = lshr i64 %1887, 4
  %1889 = trunc i64 %1888 to i8
  %1890 = and i8 %1889, 1
  store i8 %1890, i8* %31, align 1
  %1891 = icmp eq i64 %1876, 0
  %1892 = zext i1 %1891 to i8
  store i8 %1892, i8* %34, align 1
  %1893 = lshr i64 %1876, 63
  %1894 = trunc i64 %1893 to i8
  store i8 %1894, i8* %37, align 1
  %1895 = lshr i64 %1874, 58
  %1896 = and i64 %1895, 1
  %1897 = xor i64 %1893, %1862
  %1898 = xor i64 %1893, %1896
  %1899 = add nuw nsw i64 %1897, %1898
  %1900 = icmp eq i64 %1899, 2
  %1901 = zext i1 %1900 to i8
  store i8 %1901, i8* %43, align 1
  %1902 = add i64 %1869, -44
  %1903 = add i64 %1844, 34
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1902 to i32*
  %1905 = load i32, i32* %1904, align 4
  %1906 = sext i32 %1905 to i64
  store i64 %1906, i64* %R9.i316, align 8
  %1907 = shl nsw i64 %1906, 1
  %1908 = add i64 %1907, %1876
  %1909 = load i16, i16* %R8W.i323, align 2
  %1910 = add i64 %1844, 39
  store i64 %1910, i64* %3, align 8
  %1911 = inttoptr i64 %1908 to i16*
  store i16 %1909, i16* %1911, align 2
  %1912 = load i64, i64* %RBP.i, align 8
  %1913 = add i64 %1912, -40
  %1914 = load i64, i64* %3, align 8
  %1915 = add i64 %1914, 3
  store i64 %1915, i64* %3, align 8
  %1916 = inttoptr i64 %1913 to i32*
  %1917 = load i32, i32* %1916, align 4
  %1918 = add i32 %1917, 1
  %1919 = zext i32 %1918 to i64
  store i64 %1919, i64* %RAX.i413, align 8
  %1920 = icmp eq i32 %1917, -1
  %1921 = icmp eq i32 %1918, 0
  %1922 = or i1 %1920, %1921
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %19, align 1
  %1924 = and i32 %1918, 255
  %1925 = tail call i32 @llvm.ctpop.i32(i32 %1924)
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  %1928 = xor i8 %1927, 1
  store i8 %1928, i8* %26, align 1
  %1929 = xor i32 %1918, %1917
  %1930 = lshr i32 %1929, 4
  %1931 = trunc i32 %1930 to i8
  %1932 = and i8 %1931, 1
  store i8 %1932, i8* %31, align 1
  %1933 = zext i1 %1921 to i8
  store i8 %1933, i8* %34, align 1
  %1934 = lshr i32 %1918, 31
  %1935 = trunc i32 %1934 to i8
  store i8 %1935, i8* %37, align 1
  %1936 = lshr i32 %1917, 31
  %1937 = xor i32 %1934, %1936
  %1938 = add nuw nsw i32 %1937, %1934
  %1939 = icmp eq i32 %1938, 2
  %1940 = zext i1 %1939 to i8
  store i8 %1940, i8* %43, align 1
  %1941 = add i64 %1914, 9
  store i64 %1941, i64* %3, align 8
  store i32 %1918, i32* %1916, align 4
  %1942 = load i64, i64* %3, align 8
  %1943 = add i64 %1942, -165
  store i64 %1943, i64* %3, align 8
  br label %block_.L_4400c0

block_.L_44016a:                                  ; preds = %block_.L_4400c0
  %1944 = add i64 %1578, -44
  %1945 = add i64 %1614, 8
  store i64 %1945, i64* %3, align 8
  %1946 = inttoptr i64 %1944 to i32*
  %1947 = load i32, i32* %1946, align 4
  %1948 = add i32 %1947, 1
  %1949 = zext i32 %1948 to i64
  store i64 %1949, i64* %RAX.i413, align 8
  %1950 = icmp eq i32 %1947, -1
  %1951 = icmp eq i32 %1948, 0
  %1952 = or i1 %1950, %1951
  %1953 = zext i1 %1952 to i8
  store i8 %1953, i8* %19, align 1
  %1954 = and i32 %1948, 255
  %1955 = tail call i32 @llvm.ctpop.i32(i32 %1954)
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  %1958 = xor i8 %1957, 1
  store i8 %1958, i8* %26, align 1
  %1959 = xor i32 %1948, %1947
  %1960 = lshr i32 %1959, 4
  %1961 = trunc i32 %1960 to i8
  %1962 = and i8 %1961, 1
  store i8 %1962, i8* %31, align 1
  %1963 = zext i1 %1951 to i8
  store i8 %1963, i8* %34, align 1
  %1964 = lshr i32 %1948, 31
  %1965 = trunc i32 %1964 to i8
  store i8 %1965, i8* %37, align 1
  %1966 = lshr i32 %1947, 31
  %1967 = xor i32 %1964, %1966
  %1968 = add nuw nsw i32 %1967, %1964
  %1969 = icmp eq i32 %1968, 2
  %1970 = zext i1 %1969 to i8
  store i8 %1970, i8* %43, align 1
  %1971 = add i64 %1614, 14
  store i64 %1971, i64* %3, align 8
  store i32 %1948, i32* %1946, align 4
  %1972 = load i64, i64* %3, align 8
  %1973 = add i64 %1972, -202
  store i64 %1973, i64* %3, align 8
  br label %block_.L_4400ae

block_.L_44017d:                                  ; preds = %block_.L_4400ae
  %1974 = add i64 %1568, 225
  br label %block_.L_44025e

block_.L_440188:                                  ; preds = %block_.L_440188.preheader, %block_.L_440246
  %1975 = phi i64 [ %2419, %block_.L_440246 ], [ %.pre75, %block_.L_440188.preheader ]
  %1976 = load i64, i64* %RBP.i, align 8
  %1977 = add i64 %1976, -44
  %1978 = add i64 %1975, 3
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1977 to i32*
  %1980 = load i32, i32* %1979, align 4
  %1981 = zext i32 %1980 to i64
  store i64 %1981, i64* %RAX.i413, align 8
  %1982 = add i64 %1976, -52
  %1983 = add i64 %1975, 6
  store i64 %1983, i64* %3, align 8
  %1984 = inttoptr i64 %1982 to i32*
  %1985 = load i32, i32* %1984, align 4
  %1986 = sub i32 %1980, %1985
  %1987 = icmp ult i32 %1980, %1985
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %19, align 1
  %1989 = and i32 %1986, 255
  %1990 = tail call i32 @llvm.ctpop.i32(i32 %1989)
  %1991 = trunc i32 %1990 to i8
  %1992 = and i8 %1991, 1
  %1993 = xor i8 %1992, 1
  store i8 %1993, i8* %26, align 1
  %1994 = xor i32 %1985, %1980
  %1995 = xor i32 %1994, %1986
  %1996 = lshr i32 %1995, 4
  %1997 = trunc i32 %1996 to i8
  %1998 = and i8 %1997, 1
  store i8 %1998, i8* %31, align 1
  %1999 = icmp eq i32 %1986, 0
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %34, align 1
  %2001 = lshr i32 %1986, 31
  %2002 = trunc i32 %2001 to i8
  store i8 %2002, i8* %37, align 1
  %2003 = lshr i32 %1980, 31
  %2004 = lshr i32 %1985, 31
  %2005 = xor i32 %2004, %2003
  %2006 = xor i32 %2001, %2003
  %2007 = add nuw nsw i32 %2006, %2005
  %2008 = icmp eq i32 %2007, 2
  %2009 = zext i1 %2008 to i8
  store i8 %2009, i8* %43, align 1
  %2010 = icmp ne i8 %2002, 0
  %2011 = xor i1 %2010, %2008
  %.v106 = select i1 %2011, i64 12, i64 209
  %2012 = add i64 %1975, %.v106
  store i64 %2012, i64* %3, align 8
  br i1 %2011, label %block_440194, label %block_.L_440259

block_440194:                                     ; preds = %block_.L_440188
  %2013 = add i64 %1976, -16
  %2014 = add i64 %2012, 3
  store i64 %2014, i64* %3, align 8
  %2015 = inttoptr i64 %2013 to i32*
  %2016 = load i32, i32* %2015, align 4
  %2017 = zext i32 %2016 to i64
  store i64 %2017, i64* %RAX.i413, align 8
  %2018 = add i64 %1976, -40
  %2019 = add i64 %2012, 6
  store i64 %2019, i64* %3, align 8
  %2020 = inttoptr i64 %2018 to i32*
  store i32 %2016, i32* %2020, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_44019a

block_.L_44019a:                                  ; preds = %routine_sarl__cl___edx.exit, %block_440194
  %2021 = phi i64 [ %2389, %routine_sarl__cl___edx.exit ], [ %.pre78, %block_440194 ]
  %2022 = load i64, i64* %RBP.i, align 8
  %2023 = add i64 %2022, -40
  %2024 = add i64 %2021, 3
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2023 to i32*
  %2026 = load i32, i32* %2025, align 4
  %2027 = zext i32 %2026 to i64
  store i64 %2027, i64* %RAX.i413, align 8
  %2028 = add i64 %2022, -48
  %2029 = add i64 %2021, 6
  store i64 %2029, i64* %3, align 8
  %2030 = inttoptr i64 %2028 to i32*
  %2031 = load i32, i32* %2030, align 4
  %2032 = sub i32 %2026, %2031
  %2033 = icmp ult i32 %2026, %2031
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %19, align 1
  %2035 = and i32 %2032, 255
  %2036 = tail call i32 @llvm.ctpop.i32(i32 %2035)
  %2037 = trunc i32 %2036 to i8
  %2038 = and i8 %2037, 1
  %2039 = xor i8 %2038, 1
  store i8 %2039, i8* %26, align 1
  %2040 = xor i32 %2031, %2026
  %2041 = xor i32 %2040, %2032
  %2042 = lshr i32 %2041, 4
  %2043 = trunc i32 %2042 to i8
  %2044 = and i8 %2043, 1
  store i8 %2044, i8* %31, align 1
  %2045 = icmp eq i32 %2032, 0
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %34, align 1
  %2047 = lshr i32 %2032, 31
  %2048 = trunc i32 %2047 to i8
  store i8 %2048, i8* %37, align 1
  %2049 = lshr i32 %2026, 31
  %2050 = lshr i32 %2031, 31
  %2051 = xor i32 %2050, %2049
  %2052 = xor i32 %2047, %2049
  %2053 = add nuw nsw i32 %2052, %2051
  %2054 = icmp eq i32 %2053, 2
  %2055 = zext i1 %2054 to i8
  store i8 %2055, i8* %43, align 1
  %2056 = icmp ne i8 %2048, 0
  %2057 = xor i1 %2056, %2054
  %.v93 = select i1 %2057, i64 12, i64 172
  %2058 = add i64 %2021, %.v93
  store i64 %2058, i64* %3, align 8
  br i1 %2057, label %block_4401a6, label %block_.L_440246

block_4401a6:                                     ; preds = %block_.L_44019a
  %2059 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*), align 8
  store i64 %2059, i64* %RAX.i413, align 8
  %2060 = add i64 %2059, 8
  %2061 = add i64 %2058, 12
  store i64 %2061, i64* %3, align 8
  %2062 = inttoptr i64 %2060 to i64*
  %2063 = load i64, i64* %2062, align 8
  store i64 %2063, i64* %RAX.i413, align 8
  %2064 = add i64 %2022, -36
  %2065 = add i64 %2058, 17
  store i64 %2065, i64* %3, align 8
  %2066 = inttoptr i64 %2064 to i16*
  %2067 = load i16, i16* %2066, align 2
  %2068 = sext i16 %2067 to i64
  store i64 %2068, i64* %RCX.i1051, align 8
  %2069 = shl nsw i64 %2068, 3
  %2070 = add i64 %2069, %2063
  %2071 = add i64 %2058, 21
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2070 to i64*
  %2073 = load i64, i64* %2072, align 8
  store i64 %2073, i64* %RAX.i413, align 8
  %2074 = add i64 %2022, -12
  %2075 = add i64 %2058, 24
  store i64 %2075, i64* %3, align 8
  %2076 = inttoptr i64 %2074 to i32*
  %2077 = load i32, i32* %2076, align 4
  %2078 = add i32 %2077, 1
  %2079 = zext i32 %2078 to i64
  store i64 %2079, i64* %RDX.i943, align 8
  %2080 = icmp eq i32 %2077, -1
  %2081 = icmp eq i32 %2078, 0
  %2082 = or i1 %2080, %2081
  %2083 = zext i1 %2082 to i8
  store i8 %2083, i8* %19, align 1
  %2084 = and i32 %2078, 255
  %2085 = tail call i32 @llvm.ctpop.i32(i32 %2084)
  %2086 = trunc i32 %2085 to i8
  %2087 = and i8 %2086, 1
  %2088 = xor i8 %2087, 1
  store i8 %2088, i8* %26, align 1
  %2089 = xor i32 %2078, %2077
  %2090 = lshr i32 %2089, 4
  %2091 = trunc i32 %2090 to i8
  %2092 = and i8 %2091, 1
  store i8 %2092, i8* %31, align 1
  %2093 = zext i1 %2081 to i8
  store i8 %2093, i8* %34, align 1
  %2094 = lshr i32 %2078, 31
  %2095 = trunc i32 %2094 to i8
  store i8 %2095, i8* %37, align 1
  %2096 = lshr i32 %2077, 31
  %2097 = xor i32 %2094, %2096
  %2098 = add nuw nsw i32 %2097, %2094
  %2099 = icmp eq i32 %2098, 2
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %43, align 1
  %2101 = sext i32 %2078 to i64
  store i64 %2101, i64* %RCX.i1051, align 8
  %2102 = shl nsw i64 %2101, 2
  %2103 = add i64 %2073, %2102
  %2104 = add i64 %2058, 33
  store i64 %2104, i64* %3, align 8
  %2105 = inttoptr i64 %2103 to i32*
  %2106 = load i32, i32* %2105, align 4
  %2107 = zext i32 %2106 to i64
  store i64 %2107, i64* %RDX.i943, align 8
  %2108 = add i64 %2022, -72
  %2109 = add i64 %2058, 37
  store i64 %2109, i64* %3, align 8
  %2110 = inttoptr i64 %2108 to i64*
  %2111 = load i64, i64* %2110, align 8
  store i64 %2111, i64* %RAX.i413, align 8
  %2112 = add i64 %2111, 4
  store i64 %2112, i64* %RCX.i1051, align 8
  %2113 = icmp ugt i64 %2111, -5
  %2114 = zext i1 %2113 to i8
  store i8 %2114, i8* %19, align 1
  %2115 = trunc i64 %2112 to i32
  %2116 = and i32 %2115, 255
  %2117 = tail call i32 @llvm.ctpop.i32(i32 %2116)
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  %2120 = xor i8 %2119, 1
  store i8 %2120, i8* %26, align 1
  %2121 = xor i64 %2112, %2111
  %2122 = lshr i64 %2121, 4
  %2123 = trunc i64 %2122 to i8
  %2124 = and i8 %2123, 1
  store i8 %2124, i8* %31, align 1
  %2125 = icmp eq i64 %2112, 0
  %2126 = zext i1 %2125 to i8
  store i8 %2126, i8* %34, align 1
  %2127 = lshr i64 %2112, 63
  %2128 = trunc i64 %2127 to i8
  store i8 %2128, i8* %37, align 1
  %2129 = lshr i64 %2111, 63
  %2130 = xor i64 %2127, %2129
  %2131 = add nuw nsw i64 %2130, %2127
  %2132 = icmp eq i64 %2131, 2
  %2133 = zext i1 %2132 to i8
  store i8 %2133, i8* %43, align 1
  %2134 = load i64, i64* %RBP.i, align 8
  %2135 = add i64 %2134, -72
  %2136 = add i64 %2058, 48
  store i64 %2136, i64* %3, align 8
  %2137 = inttoptr i64 %2135 to i64*
  store i64 %2112, i64* %2137, align 8
  %2138 = load i64, i64* %RDX.i943, align 8
  %2139 = load i32*, i32** %1530, align 8
  %2140 = load i64, i64* %3, align 8
  %2141 = add i64 %2140, 3
  store i64 %2141, i64* %3, align 8
  %2142 = load i32, i32* %2139, align 4
  %2143 = shl i64 %2138, 32
  %2144 = ashr exact i64 %2143, 32
  %2145 = sext i32 %2142 to i64
  %2146 = mul nsw i64 %2145, %2144
  %2147 = trunc i64 %2146 to i32
  %2148 = load i32, i32* bitcast (%G_0x710790_type* @G_0x710790 to i32*), align 8
  %2149 = add i32 %2148, %2147
  %2150 = zext i32 %2149 to i64
  store i64 %2150, i64* %RDX.i943, align 8
  %2151 = icmp ult i32 %2149, %2147
  %2152 = icmp ult i32 %2149, %2148
  %2153 = or i1 %2151, %2152
  %2154 = zext i1 %2153 to i8
  store i8 %2154, i8* %19, align 1
  %2155 = and i32 %2149, 255
  %2156 = tail call i32 @llvm.ctpop.i32(i32 %2155)
  %2157 = trunc i32 %2156 to i8
  %2158 = and i8 %2157, 1
  %2159 = xor i8 %2158, 1
  store i8 %2159, i8* %26, align 1
  %2160 = xor i32 %2148, %2147
  %2161 = xor i32 %2160, %2149
  %2162 = lshr i32 %2161, 4
  %2163 = trunc i32 %2162 to i8
  %2164 = and i8 %2163, 1
  store i8 %2164, i8* %31, align 1
  %2165 = icmp eq i32 %2149, 0
  %2166 = zext i1 %2165 to i8
  store i8 %2166, i8* %34, align 1
  %2167 = lshr i32 %2149, 31
  %2168 = trunc i32 %2167 to i8
  store i8 %2168, i8* %37, align 1
  %2169 = lshr i32 %2147, 31
  %2170 = lshr i32 %2148, 31
  %2171 = xor i32 %2167, %2169
  %2172 = xor i32 %2167, %2170
  %2173 = add nuw nsw i32 %2171, %2172
  %2174 = icmp eq i32 %2173, 2
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %43, align 1
  %2176 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %2177 = zext i32 %2176 to i64
  store i64 %2177, i64* %RCX.i1051, align 8
  %2178 = add i64 %2140, 19
  store i64 %2178, i64* %3, align 8
  %2179 = trunc i32 %2176 to i5
  switch i5 %2179, label %2183 [
    i5 0, label %routine_sarl__cl___edx.exit
    i5 1, label %2180
  ]

; <label>:2180:                                   ; preds = %block_4401a6
  %2181 = shl nuw i64 %2150, 32
  %2182 = ashr i64 %2181, 33
  br label %2190

; <label>:2183:                                   ; preds = %block_4401a6
  %2184 = and i32 %2176, 31
  %2185 = zext i32 %2184 to i64
  %2186 = add nsw i64 %2185, -1
  %2187 = sext i32 %2149 to i64
  %2188 = ashr i64 %2187, %2186
  %2189 = lshr i64 %2188, 1
  br label %2190

; <label>:2190:                                   ; preds = %2183, %2180
  %2191 = phi i64 [ %2189, %2183 ], [ %2182, %2180 ]
  %2192 = phi i64 [ %2188, %2183 ], [ %2150, %2180 ]
  %2193 = trunc i64 %2192 to i8
  %2194 = and i8 %2193, 1
  %2195 = trunc i64 %2191 to i32
  %2196 = and i64 %2191, 4294967295
  store i64 %2196, i64* %RDX.i943, align 8
  store i8 %2194, i8* %19, align 1
  %2197 = and i32 %2195, 255
  %2198 = tail call i32 @llvm.ctpop.i32(i32 %2197)
  %2199 = trunc i32 %2198 to i8
  %2200 = and i8 %2199, 1
  %2201 = xor i8 %2200, 1
  store i8 %2201, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %2202 = icmp eq i32 %2195, 0
  %2203 = zext i1 %2202 to i8
  store i8 %2203, i8* %34, align 1
  %2204 = lshr i32 %2195, 31
  %2205 = trunc i32 %2204 to i8
  store i8 %2205, i8* %37, align 1
  store i8 0, i8* %43, align 1
  br label %routine_sarl__cl___edx.exit

routine_sarl__cl___edx.exit:                      ; preds = %2190, %block_4401a6
  %2206 = phi i64 [ %2196, %2190 ], [ %2150, %block_4401a6 ]
  %2207 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*), align 8
  store i64 %2207, i64* %RAX.i413, align 8
  %2208 = add i64 %2207, 8
  %2209 = add i64 %2140, 31
  store i64 %2209, i64* %3, align 8
  %2210 = inttoptr i64 %2208 to i64*
  %2211 = load i64, i64* %2210, align 8
  store i64 %2211, i64* %RAX.i413, align 8
  %2212 = load i64, i64* %RBP.i, align 8
  %2213 = add i64 %2212, -36
  %2214 = add i64 %2140, 36
  store i64 %2214, i64* %3, align 8
  %2215 = inttoptr i64 %2213 to i16*
  %2216 = load i16, i16* %2215, align 2
  %2217 = sext i16 %2216 to i64
  store i64 %2217, i64* %RSI.i341, align 8
  %2218 = shl nsw i64 %2217, 3
  %2219 = add i64 %2218, %2211
  %2220 = add i64 %2140, 40
  store i64 %2220, i64* %3, align 8
  %2221 = inttoptr i64 %2219 to i64*
  %2222 = load i64, i64* %2221, align 8
  store i64 %2222, i64* %RAX.i413, align 8
  %2223 = add i64 %2212, -12
  %2224 = add i64 %2140, 43
  store i64 %2224, i64* %3, align 8
  %2225 = inttoptr i64 %2223 to i32*
  %2226 = load i32, i32* %2225, align 4
  %2227 = add i32 %2226, 1
  %2228 = zext i32 %2227 to i64
  store i64 %2228, i64* %RDI.i335, align 8
  %2229 = icmp eq i32 %2226, -1
  %2230 = icmp eq i32 %2227, 0
  %2231 = or i1 %2229, %2230
  %2232 = zext i1 %2231 to i8
  store i8 %2232, i8* %19, align 1
  %2233 = and i32 %2227, 255
  %2234 = tail call i32 @llvm.ctpop.i32(i32 %2233)
  %2235 = trunc i32 %2234 to i8
  %2236 = and i8 %2235, 1
  %2237 = xor i8 %2236, 1
  store i8 %2237, i8* %26, align 1
  %2238 = xor i32 %2227, %2226
  %2239 = lshr i32 %2238, 4
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  store i8 %2241, i8* %31, align 1
  %2242 = zext i1 %2230 to i8
  store i8 %2242, i8* %34, align 1
  %2243 = lshr i32 %2227, 31
  %2244 = trunc i32 %2243 to i8
  store i8 %2244, i8* %37, align 1
  %2245 = lshr i32 %2226, 31
  %2246 = xor i32 %2243, %2245
  %2247 = add nuw nsw i32 %2246, %2243
  %2248 = icmp eq i32 %2247, 2
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %43, align 1
  %2250 = sext i32 %2227 to i64
  store i64 %2250, i64* %RSI.i341, align 8
  %2251 = shl nsw i64 %2250, 2
  %2252 = add i64 %2222, %2251
  %2253 = add i64 %2140, 52
  store i64 %2253, i64* %3, align 8
  %2254 = trunc i64 %2206 to i32
  %2255 = inttoptr i64 %2252 to i32*
  %2256 = load i32, i32* %2255, align 4
  %2257 = add i32 %2256, %2254
  %2258 = zext i32 %2257 to i64
  store i64 %2258, i64* %RDX.i943, align 8
  %2259 = icmp ult i32 %2257, %2254
  %2260 = icmp ult i32 %2257, %2256
  %2261 = or i1 %2259, %2260
  %2262 = zext i1 %2261 to i8
  store i8 %2262, i8* %19, align 1
  %2263 = and i32 %2257, 255
  %2264 = tail call i32 @llvm.ctpop.i32(i32 %2263)
  %2265 = trunc i32 %2264 to i8
  %2266 = and i8 %2265, 1
  %2267 = xor i8 %2266, 1
  store i8 %2267, i8* %26, align 1
  %2268 = xor i32 %2256, %2254
  %2269 = xor i32 %2268, %2257
  %2270 = lshr i32 %2269, 4
  %2271 = trunc i32 %2270 to i8
  %2272 = and i8 %2271, 1
  store i8 %2272, i8* %31, align 1
  %2273 = icmp eq i32 %2257, 0
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %34, align 1
  %2275 = lshr i32 %2257, 31
  %2276 = trunc i32 %2275 to i8
  store i8 %2276, i8* %37, align 1
  %2277 = lshr i32 %2254, 31
  %2278 = lshr i32 %2256, 31
  %2279 = xor i32 %2275, %2277
  %2280 = xor i32 %2275, %2278
  %2281 = add nuw nsw i32 %2279, %2280
  %2282 = icmp eq i32 %2281, 2
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %43, align 1
  store i64 %2258, i64* %RDI.i335, align 8
  %2284 = add i64 %2140, -19142
  %2285 = add i64 %2140, 59
  %2286 = load i64, i64* %6, align 8
  %2287 = add i64 %2286, -8
  %2288 = inttoptr i64 %2287 to i64*
  store i64 %2285, i64* %2288, align 8
  store i64 %2287, i64* %6, align 8
  store i64 %2284, i64* %3, align 8
  %call2_44020c = tail call %struct.Memory* @sub_43b710.clip1a_chr(%struct.State* nonnull %0, i64 %2284, %struct.Memory* %MEMORY.8)
  %2289 = load i16, i16* %AX.i1084, align 2
  %2290 = load i64, i64* %3, align 8
  store i16 %2289, i16* %R8W.i323, align 2
  %2291 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2292 = add i64 %2291, 12600
  store i64 %2292, i64* %RSI.i341, align 8
  %2293 = icmp ugt i64 %2291, -12601
  %2294 = zext i1 %2293 to i8
  store i8 %2294, i8* %19, align 1
  %2295 = trunc i64 %2292 to i32
  %2296 = and i32 %2295, 255
  %2297 = tail call i32 @llvm.ctpop.i32(i32 %2296)
  %2298 = trunc i32 %2297 to i8
  %2299 = and i8 %2298, 1
  %2300 = xor i8 %2299, 1
  store i8 %2300, i8* %26, align 1
  %2301 = xor i64 %2291, 16
  %2302 = xor i64 %2301, %2292
  %2303 = lshr i64 %2302, 4
  %2304 = trunc i64 %2303 to i8
  %2305 = and i8 %2304, 1
  store i8 %2305, i8* %31, align 1
  %2306 = icmp eq i64 %2292, 0
  %2307 = zext i1 %2306 to i8
  store i8 %2307, i8* %34, align 1
  %2308 = lshr i64 %2292, 63
  %2309 = trunc i64 %2308 to i8
  store i8 %2309, i8* %37, align 1
  %2310 = lshr i64 %2291, 63
  %2311 = xor i64 %2308, %2310
  %2312 = add nuw nsw i64 %2311, %2308
  %2313 = icmp eq i64 %2312, 2
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %43, align 1
  %2315 = load i64, i64* %RBP.i, align 8
  %2316 = add i64 %2315, -40
  %2317 = add i64 %2290, 23
  store i64 %2317, i64* %3, align 8
  %2318 = inttoptr i64 %2316 to i32*
  %2319 = load i32, i32* %2318, align 4
  %2320 = sext i32 %2319 to i64
  %2321 = shl nsw i64 %2320, 5
  store i64 %2321, i64* %R9.i316, align 8
  %2322 = add i64 %2321, %2292
  store i64 %2322, i64* %RSI.i341, align 8
  %2323 = icmp ult i64 %2322, %2292
  %2324 = icmp ult i64 %2322, %2321
  %2325 = or i1 %2323, %2324
  %2326 = zext i1 %2325 to i8
  store i8 %2326, i8* %19, align 1
  %2327 = trunc i64 %2322 to i32
  %2328 = and i32 %2327, 255
  %2329 = tail call i32 @llvm.ctpop.i32(i32 %2328)
  %2330 = trunc i32 %2329 to i8
  %2331 = and i8 %2330, 1
  %2332 = xor i8 %2331, 1
  store i8 %2332, i8* %26, align 1
  %2333 = xor i64 %2292, %2322
  %2334 = lshr i64 %2333, 4
  %2335 = trunc i64 %2334 to i8
  %2336 = and i8 %2335, 1
  store i8 %2336, i8* %31, align 1
  %2337 = icmp eq i64 %2322, 0
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %34, align 1
  %2339 = lshr i64 %2322, 63
  %2340 = trunc i64 %2339 to i8
  store i8 %2340, i8* %37, align 1
  %2341 = lshr i64 %2320, 58
  %2342 = and i64 %2341, 1
  %2343 = xor i64 %2339, %2308
  %2344 = xor i64 %2339, %2342
  %2345 = add nuw nsw i64 %2343, %2344
  %2346 = icmp eq i64 %2345, 2
  %2347 = zext i1 %2346 to i8
  store i8 %2347, i8* %43, align 1
  %2348 = add i64 %2315, -44
  %2349 = add i64 %2290, 34
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2348 to i32*
  %2351 = load i32, i32* %2350, align 4
  %2352 = sext i32 %2351 to i64
  store i64 %2352, i64* %R9.i316, align 8
  %2353 = shl nsw i64 %2352, 1
  %2354 = add i64 %2353, %2322
  %2355 = load i16, i16* %R8W.i323, align 2
  %2356 = add i64 %2290, 39
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2354 to i16*
  store i16 %2355, i16* %2357, align 2
  %2358 = load i64, i64* %RBP.i, align 8
  %2359 = add i64 %2358, -40
  %2360 = load i64, i64* %3, align 8
  %2361 = add i64 %2360, 3
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2359 to i32*
  %2363 = load i32, i32* %2362, align 4
  %2364 = add i32 %2363, 1
  %2365 = zext i32 %2364 to i64
  store i64 %2365, i64* %RAX.i413, align 8
  %2366 = icmp eq i32 %2363, -1
  %2367 = icmp eq i32 %2364, 0
  %2368 = or i1 %2366, %2367
  %2369 = zext i1 %2368 to i8
  store i8 %2369, i8* %19, align 1
  %2370 = and i32 %2364, 255
  %2371 = tail call i32 @llvm.ctpop.i32(i32 %2370)
  %2372 = trunc i32 %2371 to i8
  %2373 = and i8 %2372, 1
  %2374 = xor i8 %2373, 1
  store i8 %2374, i8* %26, align 1
  %2375 = xor i32 %2364, %2363
  %2376 = lshr i32 %2375, 4
  %2377 = trunc i32 %2376 to i8
  %2378 = and i8 %2377, 1
  store i8 %2378, i8* %31, align 1
  %2379 = zext i1 %2367 to i8
  store i8 %2379, i8* %34, align 1
  %2380 = lshr i32 %2364, 31
  %2381 = trunc i32 %2380 to i8
  store i8 %2381, i8* %37, align 1
  %2382 = lshr i32 %2363, 31
  %2383 = xor i32 %2380, %2382
  %2384 = add nuw nsw i32 %2383, %2380
  %2385 = icmp eq i32 %2384, 2
  %2386 = zext i1 %2385 to i8
  store i8 %2386, i8* %43, align 1
  %2387 = add i64 %2360, 9
  store i64 %2387, i64* %3, align 8
  store i32 %2364, i32* %2362, align 4
  %2388 = load i64, i64* %3, align 8
  %2389 = add i64 %2388, -167
  store i64 %2389, i64* %3, align 8
  br label %block_.L_44019a

block_.L_440246:                                  ; preds = %block_.L_44019a
  %2390 = add i64 %2022, -44
  %2391 = add i64 %2058, 8
  store i64 %2391, i64* %3, align 8
  %2392 = inttoptr i64 %2390 to i32*
  %2393 = load i32, i32* %2392, align 4
  %2394 = add i32 %2393, 1
  %2395 = zext i32 %2394 to i64
  store i64 %2395, i64* %RAX.i413, align 8
  %2396 = icmp eq i32 %2393, -1
  %2397 = icmp eq i32 %2394, 0
  %2398 = or i1 %2396, %2397
  %2399 = zext i1 %2398 to i8
  store i8 %2399, i8* %19, align 1
  %2400 = and i32 %2394, 255
  %2401 = tail call i32 @llvm.ctpop.i32(i32 %2400)
  %2402 = trunc i32 %2401 to i8
  %2403 = and i8 %2402, 1
  %2404 = xor i8 %2403, 1
  store i8 %2404, i8* %26, align 1
  %2405 = xor i32 %2394, %2393
  %2406 = lshr i32 %2405, 4
  %2407 = trunc i32 %2406 to i8
  %2408 = and i8 %2407, 1
  store i8 %2408, i8* %31, align 1
  %2409 = zext i1 %2397 to i8
  store i8 %2409, i8* %34, align 1
  %2410 = lshr i32 %2394, 31
  %2411 = trunc i32 %2410 to i8
  store i8 %2411, i8* %37, align 1
  %2412 = lshr i32 %2393, 31
  %2413 = xor i32 %2410, %2412
  %2414 = add nuw nsw i32 %2413, %2410
  %2415 = icmp eq i32 %2414, 2
  %2416 = zext i1 %2415 to i8
  store i8 %2416, i8* %43, align 1
  %2417 = add i64 %2058, 14
  store i64 %2417, i64* %3, align 8
  store i32 %2394, i32* %2392, align 4
  %2418 = load i64, i64* %3, align 8
  %2419 = add i64 %2418, -204
  store i64 %2419, i64* %3, align 8
  br label %block_.L_440188

block_.L_440259:                                  ; preds = %block_.L_440188
  %2420 = add i64 %2012, 5
  store i64 %2420, i64* %3, align 8
  br label %block_.L_44025e

block_.L_44025e:                                  ; preds = %block_.L_440259, %block_.L_44017d
  %storemerge35 = phi i64 [ %1974, %block_.L_44017d ], [ %2420, %block_.L_440259 ]
  %2421 = add i64 %storemerge35, 5
  store i64 %2421, i64* %3, align 8
  br label %block_.L_440263

block_.L_440263:                                  ; preds = %block_.L_44025e, %block_.L_440099
  %storemerge = phi i64 [ %1509, %block_.L_440099 ], [ %2421, %block_.L_44025e ]
  %2422 = add i64 %storemerge, 454
  br label %block_.L_440429

block_.L_440268:                                  ; preds = %block_.L_43ff34
  %.v95 = select i1 %867, i64 10, i64 175
  %2423 = add i64 %850, %.v95
  store i64 %2423, i64* %3, align 8
  br i1 %867, label %block_440272, label %block_.L_440317

block_440272:                                     ; preds = %block_.L_440268
  %RAX.i277 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %2424 = add i64 %836, -20
  %2425 = add i64 %2423, 3
  store i64 %2425, i64* %3, align 8
  %2426 = inttoptr i64 %2424 to i32*
  %2427 = load i32, i32* %2426, align 4
  %2428 = zext i32 %2427 to i64
  store i64 %2428, i64* %RAX.i277, align 8
  %EAX.i274 = bitcast %union.anon* %44 to i32*
  %2429 = add i64 %836, -44
  %2430 = add i64 %2423, 6
  store i64 %2430, i64* %3, align 8
  %2431 = inttoptr i64 %2429 to i32*
  store i32 %2427, i32* %2431, align 4
  %RSI.i239 = getelementptr inbounds %union.anon, %union.anon* %61, i64 0, i32 0
  %2432 = bitcast %union.anon* %75 to i32**
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %DI.i207 = bitcast %union.anon* %56 to i16*
  %R8.i201 = getelementptr inbounds %union.anon, %union.anon* %82, i64 0, i32 0
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_440278

block_.L_440278:                                  ; preds = %block_.L_4402ff, %block_440272
  %2434 = phi i64 [ %.pre79, %block_440272 ], [ %2772, %block_.L_4402ff ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.8, %block_440272 ], [ %MEMORY.18, %block_.L_4402ff ]
  %2435 = load i64, i64* %RBP.i, align 8
  %2436 = add i64 %2435, -44
  %2437 = add i64 %2434, 3
  store i64 %2437, i64* %3, align 8
  %2438 = inttoptr i64 %2436 to i32*
  %2439 = load i32, i32* %2438, align 4
  %2440 = zext i32 %2439 to i64
  store i64 %2440, i64* %RAX.i277, align 8
  %2441 = add i64 %2435, -52
  %2442 = add i64 %2434, 6
  store i64 %2442, i64* %3, align 8
  %2443 = inttoptr i64 %2441 to i32*
  %2444 = load i32, i32* %2443, align 4
  %2445 = sub i32 %2439, %2444
  %2446 = icmp ult i32 %2439, %2444
  %2447 = zext i1 %2446 to i8
  store i8 %2447, i8* %19, align 1
  %2448 = and i32 %2445, 255
  %2449 = tail call i32 @llvm.ctpop.i32(i32 %2448)
  %2450 = trunc i32 %2449 to i8
  %2451 = and i8 %2450, 1
  %2452 = xor i8 %2451, 1
  store i8 %2452, i8* %26, align 1
  %2453 = xor i32 %2444, %2439
  %2454 = xor i32 %2453, %2445
  %2455 = lshr i32 %2454, 4
  %2456 = trunc i32 %2455 to i8
  %2457 = and i8 %2456, 1
  store i8 %2457, i8* %31, align 1
  %2458 = icmp eq i32 %2445, 0
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %34, align 1
  %2460 = lshr i32 %2445, 31
  %2461 = trunc i32 %2460 to i8
  store i8 %2461, i8* %37, align 1
  %2462 = lshr i32 %2439, 31
  %2463 = lshr i32 %2444, 31
  %2464 = xor i32 %2463, %2462
  %2465 = xor i32 %2460, %2462
  %2466 = add nuw nsw i32 %2465, %2464
  %2467 = icmp eq i32 %2466, 2
  %2468 = zext i1 %2467 to i8
  store i8 %2468, i8* %43, align 1
  %2469 = icmp ne i8 %2461, 0
  %2470 = xor i1 %2469, %2467
  %.v111 = select i1 %2470, i64 12, i64 154
  %2471 = add i64 %2434, %.v111
  store i64 %2471, i64* %3, align 8
  br i1 %2470, label %block_440284, label %block_.L_440312

block_440284:                                     ; preds = %block_.L_440278
  %2472 = add i64 %2435, -16
  %2473 = add i64 %2471, 3
  store i64 %2473, i64* %3, align 8
  %2474 = inttoptr i64 %2472 to i32*
  %2475 = load i32, i32* %2474, align 4
  %2476 = zext i32 %2475 to i64
  store i64 %2476, i64* %RAX.i277, align 8
  %2477 = add i64 %2435, -40
  %2478 = add i64 %2471, 6
  store i64 %2478, i64* %3, align 8
  %2479 = inttoptr i64 %2477 to i32*
  store i32 %2475, i32* %2479, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_44028a

block_.L_44028a:                                  ; preds = %routine_idivl__esi.exit, %block_440284
  %2480 = phi i64 [ %.pre80, %block_440284 ], [ %2742, %routine_idivl__esi.exit ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.17, %block_440284 ], [ %2643, %routine_idivl__esi.exit ]
  %2481 = load i64, i64* %RBP.i, align 8
  %2482 = add i64 %2481, -40
  %2483 = add i64 %2480, 3
  store i64 %2483, i64* %3, align 8
  %2484 = inttoptr i64 %2482 to i32*
  %2485 = load i32, i32* %2484, align 4
  %2486 = zext i32 %2485 to i64
  store i64 %2486, i64* %RAX.i277, align 8
  %2487 = add i64 %2481, -48
  %2488 = add i64 %2480, 6
  store i64 %2488, i64* %3, align 8
  %2489 = inttoptr i64 %2487 to i32*
  %2490 = load i32, i32* %2489, align 4
  %2491 = sub i32 %2485, %2490
  %2492 = icmp ult i32 %2485, %2490
  %2493 = zext i1 %2492 to i8
  store i8 %2493, i8* %19, align 1
  %2494 = and i32 %2491, 255
  %2495 = tail call i32 @llvm.ctpop.i32(i32 %2494)
  %2496 = trunc i32 %2495 to i8
  %2497 = and i8 %2496, 1
  %2498 = xor i8 %2497, 1
  store i8 %2498, i8* %26, align 1
  %2499 = xor i32 %2490, %2485
  %2500 = xor i32 %2499, %2491
  %2501 = lshr i32 %2500, 4
  %2502 = trunc i32 %2501 to i8
  %2503 = and i8 %2502, 1
  store i8 %2503, i8* %31, align 1
  %2504 = icmp eq i32 %2491, 0
  %2505 = zext i1 %2504 to i8
  store i8 %2505, i8* %34, align 1
  %2506 = lshr i32 %2491, 31
  %2507 = trunc i32 %2506 to i8
  store i8 %2507, i8* %37, align 1
  %2508 = lshr i32 %2485, 31
  %2509 = lshr i32 %2490, 31
  %2510 = xor i32 %2509, %2508
  %2511 = xor i32 %2506, %2508
  %2512 = add nuw nsw i32 %2511, %2510
  %2513 = icmp eq i32 %2512, 2
  %2514 = zext i1 %2513 to i8
  store i8 %2514, i8* %43, align 1
  %2515 = icmp ne i8 %2507, 0
  %2516 = xor i1 %2515, %2513
  %.v112 = select i1 %2516, i64 12, i64 117
  %2517 = add i64 %2480, %.v112
  %2518 = add i64 %2517, 5
  store i64 %2518, i64* %3, align 8
  br i1 %2516, label %block_440296, label %block_.L_4402ff

block_440296:                                     ; preds = %block_.L_44028a
  store i64 2, i64* %RAX.i277, align 8
  %2519 = add i64 %2481, -64
  %2520 = add i64 %2517, 9
  store i64 %2520, i64* %3, align 8
  %2521 = inttoptr i64 %2519 to i64*
  %2522 = load i64, i64* %2521, align 8
  store i64 %2522, i64* %RCX.i1051, align 8
  %2523 = add i64 %2522, 4
  store i64 %2523, i64* %RDX.i943, align 8
  %2524 = icmp ugt i64 %2522, -5
  %2525 = zext i1 %2524 to i8
  store i8 %2525, i8* %19, align 1
  %2526 = trunc i64 %2523 to i32
  %2527 = and i32 %2526, 255
  %2528 = tail call i32 @llvm.ctpop.i32(i32 %2527)
  %2529 = trunc i32 %2528 to i8
  %2530 = and i8 %2529, 1
  %2531 = xor i8 %2530, 1
  store i8 %2531, i8* %26, align 1
  %2532 = xor i64 %2523, %2522
  %2533 = lshr i64 %2532, 4
  %2534 = trunc i64 %2533 to i8
  %2535 = and i8 %2534, 1
  store i8 %2535, i8* %31, align 1
  %2536 = icmp eq i64 %2523, 0
  %2537 = zext i1 %2536 to i8
  store i8 %2537, i8* %34, align 1
  %2538 = lshr i64 %2523, 63
  %2539 = trunc i64 %2538 to i8
  store i8 %2539, i8* %37, align 1
  %2540 = lshr i64 %2522, 63
  %2541 = xor i64 %2538, %2540
  %2542 = add nuw nsw i64 %2541, %2538
  %2543 = icmp eq i64 %2542, 2
  %2544 = zext i1 %2543 to i8
  store i8 %2544, i8* %43, align 1
  %2545 = add i64 %2517, 20
  store i64 %2545, i64* %3, align 8
  store i64 %2523, i64* %2521, align 8
  %2546 = load i32*, i32** %2432, align 8
  %2547 = load i64, i64* %3, align 8
  %2548 = add i64 %2547, 2
  store i64 %2548, i64* %3, align 8
  %2549 = load i32, i32* %2546, align 4
  %2550 = zext i32 %2549 to i64
  store i64 %2550, i64* %RSI.i239, align 8
  %2551 = load i64, i64* %RBP.i, align 8
  %2552 = add i64 %2551, -72
  %2553 = add i64 %2547, 6
  store i64 %2553, i64* %3, align 8
  %2554 = inttoptr i64 %2552 to i64*
  %2555 = load i64, i64* %2554, align 8
  store i64 %2555, i64* %RCX.i1051, align 8
  %2556 = add i64 %2555, 4
  store i64 %2556, i64* %RDX.i943, align 8
  %2557 = icmp ugt i64 %2555, -5
  %2558 = zext i1 %2557 to i8
  store i8 %2558, i8* %19, align 1
  %2559 = trunc i64 %2556 to i32
  %2560 = and i32 %2559, 255
  %2561 = tail call i32 @llvm.ctpop.i32(i32 %2560)
  %2562 = trunc i32 %2561 to i8
  %2563 = and i8 %2562, 1
  %2564 = xor i8 %2563, 1
  store i8 %2564, i8* %26, align 1
  %2565 = xor i64 %2556, %2555
  %2566 = lshr i64 %2565, 4
  %2567 = trunc i64 %2566 to i8
  %2568 = and i8 %2567, 1
  store i8 %2568, i8* %31, align 1
  %2569 = icmp eq i64 %2556, 0
  %2570 = zext i1 %2569 to i8
  store i8 %2570, i8* %34, align 1
  %2571 = lshr i64 %2556, 63
  %2572 = trunc i64 %2571 to i8
  store i8 %2572, i8* %37, align 1
  %2573 = lshr i64 %2555, 63
  %2574 = xor i64 %2571, %2573
  %2575 = add nuw nsw i64 %2574, %2571
  %2576 = icmp eq i64 %2575, 2
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %43, align 1
  %2578 = add i64 %2547, 17
  store i64 %2578, i64* %3, align 8
  store i64 %2556, i64* %2554, align 8
  %2579 = load i64, i64* %RSI.i239, align 8
  %2580 = load i32*, i32** %2432, align 8
  %2581 = load i64, i64* %3, align 8
  %2582 = add i64 %2581, 2
  store i64 %2582, i64* %3, align 8
  %2583 = trunc i64 %2579 to i32
  %2584 = load i32, i32* %2580, align 4
  %2585 = add i32 %2584, %2583
  %2586 = lshr i32 %2585, 31
  %2587 = add i32 %2585, 1
  %2588 = zext i32 %2587 to i64
  store i64 %2588, i64* %RSI.i239, align 8
  %2589 = icmp eq i32 %2585, -1
  %2590 = icmp eq i32 %2587, 0
  %2591 = or i1 %2589, %2590
  %2592 = zext i1 %2591 to i8
  store i8 %2592, i8* %19, align 1
  %2593 = and i32 %2587, 255
  %2594 = tail call i32 @llvm.ctpop.i32(i32 %2593)
  %2595 = trunc i32 %2594 to i8
  %2596 = and i8 %2595, 1
  %2597 = xor i8 %2596, 1
  store i8 %2597, i8* %26, align 1
  %2598 = xor i32 %2587, %2585
  %2599 = lshr i32 %2598, 4
  %2600 = trunc i32 %2599 to i8
  %2601 = and i8 %2600, 1
  store i8 %2601, i8* %31, align 1
  %2602 = zext i1 %2590 to i8
  store i8 %2602, i8* %34, align 1
  %2603 = lshr i32 %2587, 31
  %2604 = trunc i32 %2603 to i8
  store i8 %2604, i8* %37, align 1
  %2605 = xor i32 %2603, %2586
  %2606 = add nuw nsw i32 %2605, %2603
  %2607 = icmp eq i32 %2606, 2
  %2608 = zext i1 %2607 to i8
  store i8 %2608, i8* %43, align 1
  %2609 = load i64, i64* %RBP.i, align 8
  %2610 = add i64 %2609, -116
  %2611 = load i32, i32* %EAX.i274, align 4
  %2612 = add i64 %2581, 8
  store i64 %2612, i64* %3, align 8
  %2613 = inttoptr i64 %2610 to i32*
  store i32 %2611, i32* %2613, align 4
  %2614 = load i32, i32* %ESI.i1071, align 4
  %2615 = zext i32 %2614 to i64
  %2616 = load i64, i64* %3, align 8
  store i64 %2615, i64* %RAX.i277, align 8
  %2617 = sext i32 %2614 to i64
  %2618 = lshr i64 %2617, 32
  store i64 %2618, i64* %2433, align 8
  %2619 = load i64, i64* %RBP.i, align 8
  %2620 = add i64 %2619, -116
  %2621 = add i64 %2616, 6
  store i64 %2621, i64* %3, align 8
  %2622 = inttoptr i64 %2620 to i32*
  %2623 = load i32, i32* %2622, align 4
  %2624 = zext i32 %2623 to i64
  store i64 %2624, i64* %RSI.i239, align 8
  %2625 = add i64 %2616, 8
  store i64 %2625, i64* %3, align 8
  %2626 = sext i32 %2623 to i64
  %2627 = shl nuw i64 %2618, 32
  %2628 = or i64 %2627, %2615
  %2629 = sdiv i64 %2628, %2626
  %2630 = shl i64 %2629, 32
  %2631 = ashr exact i64 %2630, 32
  %2632 = icmp eq i64 %2629, %2631
  br i1 %2632, label %2635, label %2633

; <label>:2633:                                   ; preds = %block_440296
  %2634 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2625, %struct.Memory* %MEMORY.18)
  %.pre81 = load i16, i16* %AX.i1084, align 2
  %.pre82 = load i64, i64* %3, align 8
  %.pre83 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:2635:                                   ; preds = %block_440296
  %2636 = srem i64 %2628, %2626
  %2637 = and i64 %2629, 4294967295
  store i64 %2637, i64* %RAX.i277, align 8
  %2638 = and i64 %2636, 4294967295
  store i64 %2638, i64* %RDX.i943, align 8
  store i8 0, i8* %19, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %34, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %43, align 1
  %2639 = trunc i64 %2629 to i16
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %2635, %2633
  %2640 = phi i64 [ %.pre83, %2633 ], [ %2619, %2635 ]
  %2641 = phi i64 [ %.pre82, %2633 ], [ %2625, %2635 ]
  %2642 = phi i16 [ %.pre81, %2633 ], [ %2639, %2635 ]
  %2643 = phi %struct.Memory* [ %2634, %2633 ], [ %MEMORY.18, %2635 ]
  store i16 %2642, i16* %DI.i207, align 2
  %2644 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2645 = add i64 %2644, 12600
  store i64 %2645, i64* %RCX.i1051, align 8
  %2646 = icmp ugt i64 %2644, -12601
  %2647 = zext i1 %2646 to i8
  store i8 %2647, i8* %19, align 1
  %2648 = trunc i64 %2645 to i32
  %2649 = and i32 %2648, 255
  %2650 = tail call i32 @llvm.ctpop.i32(i32 %2649)
  %2651 = trunc i32 %2650 to i8
  %2652 = and i8 %2651, 1
  %2653 = xor i8 %2652, 1
  store i8 %2653, i8* %26, align 1
  %2654 = xor i64 %2644, 16
  %2655 = xor i64 %2654, %2645
  %2656 = lshr i64 %2655, 4
  %2657 = trunc i64 %2656 to i8
  %2658 = and i8 %2657, 1
  store i8 %2658, i8* %31, align 1
  %2659 = icmp eq i64 %2645, 0
  %2660 = zext i1 %2659 to i8
  store i8 %2660, i8* %34, align 1
  %2661 = lshr i64 %2645, 63
  %2662 = trunc i64 %2661 to i8
  store i8 %2662, i8* %37, align 1
  %2663 = lshr i64 %2644, 63
  %2664 = xor i64 %2661, %2663
  %2665 = add nuw nsw i64 %2664, %2661
  %2666 = icmp eq i64 %2665, 2
  %2667 = zext i1 %2666 to i8
  store i8 %2667, i8* %43, align 1
  %2668 = add i64 %2640, -40
  %2669 = add i64 %2641, 22
  store i64 %2669, i64* %3, align 8
  %2670 = inttoptr i64 %2668 to i32*
  %2671 = load i32, i32* %2670, align 4
  %2672 = sext i32 %2671 to i64
  %2673 = shl nsw i64 %2672, 5
  store i64 %2673, i64* %R8.i201, align 8
  %2674 = add i64 %2673, %2645
  store i64 %2674, i64* %RCX.i1051, align 8
  %2675 = icmp ult i64 %2674, %2645
  %2676 = icmp ult i64 %2674, %2673
  %2677 = or i1 %2675, %2676
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %19, align 1
  %2679 = trunc i64 %2674 to i32
  %2680 = and i32 %2679, 255
  %2681 = tail call i32 @llvm.ctpop.i32(i32 %2680)
  %2682 = trunc i32 %2681 to i8
  %2683 = and i8 %2682, 1
  %2684 = xor i8 %2683, 1
  store i8 %2684, i8* %26, align 1
  %2685 = xor i64 %2645, %2674
  %2686 = lshr i64 %2685, 4
  %2687 = trunc i64 %2686 to i8
  %2688 = and i8 %2687, 1
  store i8 %2688, i8* %31, align 1
  %2689 = icmp eq i64 %2674, 0
  %2690 = zext i1 %2689 to i8
  store i8 %2690, i8* %34, align 1
  %2691 = lshr i64 %2674, 63
  %2692 = trunc i64 %2691 to i8
  store i8 %2692, i8* %37, align 1
  %2693 = lshr i64 %2672, 58
  %2694 = and i64 %2693, 1
  %2695 = xor i64 %2691, %2661
  %2696 = xor i64 %2691, %2694
  %2697 = add nuw nsw i64 %2695, %2696
  %2698 = icmp eq i64 %2697, 2
  %2699 = zext i1 %2698 to i8
  store i8 %2699, i8* %43, align 1
  %2700 = load i64, i64* %RBP.i, align 8
  %2701 = add i64 %2700, -44
  %2702 = add i64 %2641, 33
  store i64 %2702, i64* %3, align 8
  %2703 = inttoptr i64 %2701 to i32*
  %2704 = load i32, i32* %2703, align 4
  %2705 = sext i32 %2704 to i64
  store i64 %2705, i64* %R8.i201, align 8
  %2706 = shl nsw i64 %2705, 1
  %2707 = add i64 %2706, %2674
  %2708 = load i16, i16* %DI.i207, align 2
  %2709 = add i64 %2641, 38
  store i64 %2709, i64* %3, align 8
  %2710 = inttoptr i64 %2707 to i16*
  store i16 %2708, i16* %2710, align 2
  %2711 = load i64, i64* %RBP.i, align 8
  %2712 = add i64 %2711, -40
  %2713 = load i64, i64* %3, align 8
  %2714 = add i64 %2713, 3
  store i64 %2714, i64* %3, align 8
  %2715 = inttoptr i64 %2712 to i32*
  %2716 = load i32, i32* %2715, align 4
  %2717 = add i32 %2716, 1
  %2718 = zext i32 %2717 to i64
  store i64 %2718, i64* %RAX.i277, align 8
  %2719 = icmp eq i32 %2716, -1
  %2720 = icmp eq i32 %2717, 0
  %2721 = or i1 %2719, %2720
  %2722 = zext i1 %2721 to i8
  store i8 %2722, i8* %19, align 1
  %2723 = and i32 %2717, 255
  %2724 = tail call i32 @llvm.ctpop.i32(i32 %2723)
  %2725 = trunc i32 %2724 to i8
  %2726 = and i8 %2725, 1
  %2727 = xor i8 %2726, 1
  store i8 %2727, i8* %26, align 1
  %2728 = xor i32 %2717, %2716
  %2729 = lshr i32 %2728, 4
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  store i8 %2731, i8* %31, align 1
  %2732 = zext i1 %2720 to i8
  store i8 %2732, i8* %34, align 1
  %2733 = lshr i32 %2717, 31
  %2734 = trunc i32 %2733 to i8
  store i8 %2734, i8* %37, align 1
  %2735 = lshr i32 %2716, 31
  %2736 = xor i32 %2733, %2735
  %2737 = add nuw nsw i32 %2736, %2733
  %2738 = icmp eq i32 %2737, 2
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %43, align 1
  %2740 = add i64 %2713, 9
  store i64 %2740, i64* %3, align 8
  store i32 %2717, i32* %2715, align 4
  %2741 = load i64, i64* %3, align 8
  %2742 = add i64 %2741, -112
  store i64 %2742, i64* %3, align 8
  br label %block_.L_44028a

block_.L_4402ff:                                  ; preds = %block_.L_44028a
  %2743 = add i64 %2481, -44
  %2744 = add i64 %2517, 8
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to i32*
  %2746 = load i32, i32* %2745, align 4
  %2747 = add i32 %2746, 1
  %2748 = zext i32 %2747 to i64
  store i64 %2748, i64* %RAX.i277, align 8
  %2749 = icmp eq i32 %2746, -1
  %2750 = icmp eq i32 %2747, 0
  %2751 = or i1 %2749, %2750
  %2752 = zext i1 %2751 to i8
  store i8 %2752, i8* %19, align 1
  %2753 = and i32 %2747, 255
  %2754 = tail call i32 @llvm.ctpop.i32(i32 %2753)
  %2755 = trunc i32 %2754 to i8
  %2756 = and i8 %2755, 1
  %2757 = xor i8 %2756, 1
  store i8 %2757, i8* %26, align 1
  %2758 = xor i32 %2747, %2746
  %2759 = lshr i32 %2758, 4
  %2760 = trunc i32 %2759 to i8
  %2761 = and i8 %2760, 1
  store i8 %2761, i8* %31, align 1
  %2762 = zext i1 %2750 to i8
  store i8 %2762, i8* %34, align 1
  %2763 = lshr i32 %2747, 31
  %2764 = trunc i32 %2763 to i8
  store i8 %2764, i8* %37, align 1
  %2765 = lshr i32 %2746, 31
  %2766 = xor i32 %2763, %2765
  %2767 = add nuw nsw i32 %2766, %2763
  %2768 = icmp eq i32 %2767, 2
  %2769 = zext i1 %2768 to i8
  store i8 %2769, i8* %43, align 1
  %2770 = add i64 %2517, 14
  store i64 %2770, i64* %3, align 8
  store i32 %2747, i32* %2745, align 4
  %2771 = load i64, i64* %3, align 8
  %2772 = add i64 %2771, -149
  store i64 %2772, i64* %3, align 8
  br label %block_.L_440278

block_.L_440312:                                  ; preds = %block_.L_440278
  %2773 = add i64 %2471, 274
  br label %block_.L_440424

block_.L_440317:                                  ; preds = %block_.L_440268
  %2774 = add i64 %2423, 4
  store i64 %2774, i64* %3, align 8
  %2775 = load i32, i32* %853, align 4
  store i8 0, i8* %19, align 1
  %2776 = and i32 %2775, 255
  %2777 = tail call i32 @llvm.ctpop.i32(i32 %2776)
  %2778 = trunc i32 %2777 to i8
  %2779 = and i8 %2778, 1
  %2780 = xor i8 %2779, 1
  store i8 %2780, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %2781 = icmp eq i32 %2775, 0
  %2782 = zext i1 %2781 to i8
  store i8 %2782, i8* %34, align 1
  %2783 = lshr i32 %2775, 31
  %2784 = trunc i32 %2783 to i8
  store i8 %2784, i8* %37, align 1
  store i8 0, i8* %43, align 1
  %.v94 = select i1 %2781, i64 10, i64 137
  %2785 = add i64 %2423, %.v94
  %RAX.i82 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %2786 = add i64 %836, -20
  %2787 = add i64 %2785, 3
  store i64 %2787, i64* %3, align 8
  %2788 = inttoptr i64 %2786 to i32*
  %2789 = load i32, i32* %2788, align 4
  %2790 = zext i32 %2789 to i64
  store i64 %2790, i64* %RAX.i82, align 8
  %2791 = add i64 %836, -44
  %2792 = add i64 %2785, 6
  store i64 %2792, i64* %3, align 8
  %2793 = inttoptr i64 %2791 to i32*
  store i32 %2789, i32* %2793, align 4
  %2794 = bitcast %union.anon* %44 to i32**
  %SI.i44 = bitcast %union.anon* %61 to i16*
  %.pre84 = load i64, i64* %3, align 8
  br i1 %2781, label %block_.L_440327.preheader, label %block_.L_4403a6.preheader

block_.L_4403a6.preheader:                        ; preds = %block_.L_440317
  br label %block_.L_4403a6

block_.L_440327.preheader:                        ; preds = %block_.L_440317
  br label %block_.L_440327

block_.L_440327:                                  ; preds = %block_.L_440327.preheader, %block_.L_440388
  %2795 = phi i64 [ %3040, %block_.L_440388 ], [ %.pre84, %block_.L_440327.preheader ]
  %2796 = load i64, i64* %RBP.i, align 8
  %2797 = add i64 %2796, -44
  %2798 = add i64 %2795, 3
  store i64 %2798, i64* %3, align 8
  %2799 = inttoptr i64 %2797 to i32*
  %2800 = load i32, i32* %2799, align 4
  %2801 = zext i32 %2800 to i64
  store i64 %2801, i64* %RAX.i82, align 8
  %2802 = add i64 %2796, -52
  %2803 = add i64 %2795, 6
  store i64 %2803, i64* %3, align 8
  %2804 = inttoptr i64 %2802 to i32*
  %2805 = load i32, i32* %2804, align 4
  %2806 = sub i32 %2800, %2805
  %2807 = icmp ult i32 %2800, %2805
  %2808 = zext i1 %2807 to i8
  store i8 %2808, i8* %19, align 1
  %2809 = and i32 %2806, 255
  %2810 = tail call i32 @llvm.ctpop.i32(i32 %2809)
  %2811 = trunc i32 %2810 to i8
  %2812 = and i8 %2811, 1
  %2813 = xor i8 %2812, 1
  store i8 %2813, i8* %26, align 1
  %2814 = xor i32 %2805, %2800
  %2815 = xor i32 %2814, %2806
  %2816 = lshr i32 %2815, 4
  %2817 = trunc i32 %2816 to i8
  %2818 = and i8 %2817, 1
  store i8 %2818, i8* %31, align 1
  %2819 = icmp eq i32 %2806, 0
  %2820 = zext i1 %2819 to i8
  store i8 %2820, i8* %34, align 1
  %2821 = lshr i32 %2806, 31
  %2822 = trunc i32 %2821 to i8
  store i8 %2822, i8* %37, align 1
  %2823 = lshr i32 %2800, 31
  %2824 = lshr i32 %2805, 31
  %2825 = xor i32 %2824, %2823
  %2826 = xor i32 %2821, %2823
  %2827 = add nuw nsw i32 %2826, %2825
  %2828 = icmp eq i32 %2827, 2
  %2829 = zext i1 %2828 to i8
  store i8 %2829, i8* %43, align 1
  %2830 = icmp ne i8 %2822, 0
  %2831 = xor i1 %2830, %2828
  %.v110 = select i1 %2831, i64 12, i64 116
  %2832 = add i64 %2795, %.v110
  store i64 %2832, i64* %3, align 8
  br i1 %2831, label %block_440333, label %block_.L_44039b

block_440333:                                     ; preds = %block_.L_440327
  %2833 = add i64 %2796, -16
  %2834 = add i64 %2832, 3
  store i64 %2834, i64* %3, align 8
  %2835 = inttoptr i64 %2833 to i32*
  %2836 = load i32, i32* %2835, align 4
  %2837 = zext i32 %2836 to i64
  store i64 %2837, i64* %RAX.i82, align 8
  %2838 = add i64 %2796, -40
  %2839 = add i64 %2832, 6
  store i64 %2839, i64* %3, align 8
  %2840 = inttoptr i64 %2838 to i32*
  store i32 %2836, i32* %2840, align 4
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_440339

block_.L_440339:                                  ; preds = %block_440345, %block_440333
  %2841 = phi i64 [ %3010, %block_440345 ], [ %.pre85, %block_440333 ]
  %2842 = load i64, i64* %RBP.i, align 8
  %2843 = add i64 %2842, -40
  %2844 = add i64 %2841, 3
  store i64 %2844, i64* %3, align 8
  %2845 = inttoptr i64 %2843 to i32*
  %2846 = load i32, i32* %2845, align 4
  %2847 = zext i32 %2846 to i64
  store i64 %2847, i64* %RAX.i82, align 8
  %2848 = add i64 %2842, -48
  %2849 = add i64 %2841, 6
  store i64 %2849, i64* %3, align 8
  %2850 = inttoptr i64 %2848 to i32*
  %2851 = load i32, i32* %2850, align 4
  %2852 = sub i32 %2846, %2851
  %2853 = icmp ult i32 %2846, %2851
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %19, align 1
  %2855 = and i32 %2852, 255
  %2856 = tail call i32 @llvm.ctpop.i32(i32 %2855)
  %2857 = trunc i32 %2856 to i8
  %2858 = and i8 %2857, 1
  %2859 = xor i8 %2858, 1
  store i8 %2859, i8* %26, align 1
  %2860 = xor i32 %2851, %2846
  %2861 = xor i32 %2860, %2852
  %2862 = lshr i32 %2861, 4
  %2863 = trunc i32 %2862 to i8
  %2864 = and i8 %2863, 1
  store i8 %2864, i8* %31, align 1
  %2865 = icmp eq i32 %2852, 0
  %2866 = zext i1 %2865 to i8
  store i8 %2866, i8* %34, align 1
  %2867 = lshr i32 %2852, 31
  %2868 = trunc i32 %2867 to i8
  store i8 %2868, i8* %37, align 1
  %2869 = lshr i32 %2846, 31
  %2870 = lshr i32 %2851, 31
  %2871 = xor i32 %2870, %2869
  %2872 = xor i32 %2867, %2869
  %2873 = add nuw nsw i32 %2872, %2871
  %2874 = icmp eq i32 %2873, 2
  %2875 = zext i1 %2874 to i8
  store i8 %2875, i8* %43, align 1
  %2876 = icmp ne i8 %2868, 0
  %2877 = xor i1 %2876, %2874
  %.v96 = select i1 %2877, i64 12, i64 79
  %2878 = add i64 %2841, %.v96
  store i64 %2878, i64* %3, align 8
  br i1 %2877, label %block_440345, label %block_.L_440388

block_440345:                                     ; preds = %block_.L_440339
  %2879 = add i64 %2842, -64
  %2880 = add i64 %2878, 4
  store i64 %2880, i64* %3, align 8
  %2881 = inttoptr i64 %2879 to i64*
  %2882 = load i64, i64* %2881, align 8
  store i64 %2882, i64* %RAX.i82, align 8
  %2883 = add i64 %2882, 4
  store i64 %2883, i64* %RCX.i1051, align 8
  %2884 = icmp ugt i64 %2882, -5
  %2885 = zext i1 %2884 to i8
  store i8 %2885, i8* %19, align 1
  %2886 = trunc i64 %2883 to i32
  %2887 = and i32 %2886, 255
  %2888 = tail call i32 @llvm.ctpop.i32(i32 %2887)
  %2889 = trunc i32 %2888 to i8
  %2890 = and i8 %2889, 1
  %2891 = xor i8 %2890, 1
  store i8 %2891, i8* %26, align 1
  %2892 = xor i64 %2883, %2882
  %2893 = lshr i64 %2892, 4
  %2894 = trunc i64 %2893 to i8
  %2895 = and i8 %2894, 1
  store i8 %2895, i8* %31, align 1
  %2896 = icmp eq i64 %2883, 0
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %34, align 1
  %2898 = lshr i64 %2883, 63
  %2899 = trunc i64 %2898 to i8
  store i8 %2899, i8* %37, align 1
  %2900 = lshr i64 %2882, 63
  %2901 = xor i64 %2898, %2900
  %2902 = add nuw nsw i64 %2901, %2898
  %2903 = icmp eq i64 %2902, 2
  %2904 = zext i1 %2903 to i8
  store i8 %2904, i8* %43, align 1
  %2905 = add i64 %2878, 15
  store i64 %2905, i64* %3, align 8
  store i64 %2883, i64* %2881, align 8
  %2906 = load i32*, i32** %2794, align 8
  %2907 = load i64, i64* %3, align 8
  %2908 = add i64 %2907, 2
  store i64 %2908, i64* %3, align 8
  %2909 = load i32, i32* %2906, align 4
  %2910 = zext i32 %2909 to i64
  store i64 %2910, i64* %RDX.i943, align 8
  %2911 = trunc i32 %2909 to i16
  store i16 %2911, i16* %SI.i44, align 2
  %2912 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2913 = add i64 %2912, 12600
  store i64 %2913, i64* %RAX.i82, align 8
  %2914 = icmp ugt i64 %2912, -12601
  %2915 = zext i1 %2914 to i8
  store i8 %2915, i8* %19, align 1
  %2916 = trunc i64 %2913 to i32
  %2917 = and i32 %2916, 255
  %2918 = tail call i32 @llvm.ctpop.i32(i32 %2917)
  %2919 = trunc i32 %2918 to i8
  %2920 = and i8 %2919, 1
  %2921 = xor i8 %2920, 1
  store i8 %2921, i8* %26, align 1
  %2922 = xor i64 %2912, 16
  %2923 = xor i64 %2922, %2913
  %2924 = lshr i64 %2923, 4
  %2925 = trunc i64 %2924 to i8
  %2926 = and i8 %2925, 1
  store i8 %2926, i8* %31, align 1
  %2927 = icmp eq i64 %2913, 0
  %2928 = zext i1 %2927 to i8
  store i8 %2928, i8* %34, align 1
  %2929 = lshr i64 %2913, 63
  %2930 = trunc i64 %2929 to i8
  store i8 %2930, i8* %37, align 1
  %2931 = lshr i64 %2912, 63
  %2932 = xor i64 %2929, %2931
  %2933 = add nuw nsw i64 %2932, %2929
  %2934 = icmp eq i64 %2933, 2
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %43, align 1
  %2936 = load i64, i64* %RBP.i, align 8
  %2937 = add i64 %2936, -40
  %2938 = add i64 %2907, 23
  store i64 %2938, i64* %3, align 8
  %2939 = inttoptr i64 %2937 to i32*
  %2940 = load i32, i32* %2939, align 4
  %2941 = sext i32 %2940 to i64
  %2942 = shl nsw i64 %2941, 5
  store i64 %2942, i64* %RCX.i1051, align 8
  %2943 = add i64 %2942, %2913
  store i64 %2943, i64* %RAX.i82, align 8
  %2944 = icmp ult i64 %2943, %2913
  %2945 = icmp ult i64 %2943, %2942
  %2946 = or i1 %2944, %2945
  %2947 = zext i1 %2946 to i8
  store i8 %2947, i8* %19, align 1
  %2948 = trunc i64 %2943 to i32
  %2949 = and i32 %2948, 255
  %2950 = tail call i32 @llvm.ctpop.i32(i32 %2949)
  %2951 = trunc i32 %2950 to i8
  %2952 = and i8 %2951, 1
  %2953 = xor i8 %2952, 1
  store i8 %2953, i8* %26, align 1
  %2954 = xor i64 %2913, %2943
  %2955 = lshr i64 %2954, 4
  %2956 = trunc i64 %2955 to i8
  %2957 = and i8 %2956, 1
  store i8 %2957, i8* %31, align 1
  %2958 = icmp eq i64 %2943, 0
  %2959 = zext i1 %2958 to i8
  store i8 %2959, i8* %34, align 1
  %2960 = lshr i64 %2943, 63
  %2961 = trunc i64 %2960 to i8
  store i8 %2961, i8* %37, align 1
  %2962 = lshr i64 %2941, 58
  %2963 = and i64 %2962, 1
  %2964 = xor i64 %2960, %2929
  %2965 = xor i64 %2960, %2963
  %2966 = add nuw nsw i64 %2964, %2965
  %2967 = icmp eq i64 %2966, 2
  %2968 = zext i1 %2967 to i8
  store i8 %2968, i8* %43, align 1
  %2969 = add i64 %2936, -44
  %2970 = add i64 %2907, 34
  store i64 %2970, i64* %3, align 8
  %2971 = inttoptr i64 %2969 to i32*
  %2972 = load i32, i32* %2971, align 4
  %2973 = sext i32 %2972 to i64
  store i64 %2973, i64* %RCX.i1051, align 8
  %2974 = shl nsw i64 %2973, 1
  %2975 = add i64 %2974, %2943
  %2976 = load i16, i16* %SI.i44, align 2
  %2977 = add i64 %2907, 38
  store i64 %2977, i64* %3, align 8
  %2978 = inttoptr i64 %2975 to i16*
  store i16 %2976, i16* %2978, align 2
  %2979 = load i64, i64* %RBP.i, align 8
  %2980 = add i64 %2979, -40
  %2981 = load i64, i64* %3, align 8
  %2982 = add i64 %2981, 3
  store i64 %2982, i64* %3, align 8
  %2983 = inttoptr i64 %2980 to i32*
  %2984 = load i32, i32* %2983, align 4
  %2985 = add i32 %2984, 1
  %2986 = zext i32 %2985 to i64
  store i64 %2986, i64* %RAX.i82, align 8
  %2987 = icmp eq i32 %2984, -1
  %2988 = icmp eq i32 %2985, 0
  %2989 = or i1 %2987, %2988
  %2990 = zext i1 %2989 to i8
  store i8 %2990, i8* %19, align 1
  %2991 = and i32 %2985, 255
  %2992 = tail call i32 @llvm.ctpop.i32(i32 %2991)
  %2993 = trunc i32 %2992 to i8
  %2994 = and i8 %2993, 1
  %2995 = xor i8 %2994, 1
  store i8 %2995, i8* %26, align 1
  %2996 = xor i32 %2985, %2984
  %2997 = lshr i32 %2996, 4
  %2998 = trunc i32 %2997 to i8
  %2999 = and i8 %2998, 1
  store i8 %2999, i8* %31, align 1
  %3000 = zext i1 %2988 to i8
  store i8 %3000, i8* %34, align 1
  %3001 = lshr i32 %2985, 31
  %3002 = trunc i32 %3001 to i8
  store i8 %3002, i8* %37, align 1
  %3003 = lshr i32 %2984, 31
  %3004 = xor i32 %3001, %3003
  %3005 = add nuw nsw i32 %3004, %3001
  %3006 = icmp eq i32 %3005, 2
  %3007 = zext i1 %3006 to i8
  store i8 %3007, i8* %43, align 1
  %3008 = add i64 %2981, 9
  store i64 %3008, i64* %3, align 8
  store i32 %2985, i32* %2983, align 4
  %3009 = load i64, i64* %3, align 8
  %3010 = add i64 %3009, -74
  store i64 %3010, i64* %3, align 8
  br label %block_.L_440339

block_.L_440388:                                  ; preds = %block_.L_440339
  %3011 = add i64 %2842, -44
  %3012 = add i64 %2878, 8
  store i64 %3012, i64* %3, align 8
  %3013 = inttoptr i64 %3011 to i32*
  %3014 = load i32, i32* %3013, align 4
  %3015 = add i32 %3014, 1
  %3016 = zext i32 %3015 to i64
  store i64 %3016, i64* %RAX.i82, align 8
  %3017 = icmp eq i32 %3014, -1
  %3018 = icmp eq i32 %3015, 0
  %3019 = or i1 %3017, %3018
  %3020 = zext i1 %3019 to i8
  store i8 %3020, i8* %19, align 1
  %3021 = and i32 %3015, 255
  %3022 = tail call i32 @llvm.ctpop.i32(i32 %3021)
  %3023 = trunc i32 %3022 to i8
  %3024 = and i8 %3023, 1
  %3025 = xor i8 %3024, 1
  store i8 %3025, i8* %26, align 1
  %3026 = xor i32 %3015, %3014
  %3027 = lshr i32 %3026, 4
  %3028 = trunc i32 %3027 to i8
  %3029 = and i8 %3028, 1
  store i8 %3029, i8* %31, align 1
  %3030 = zext i1 %3018 to i8
  store i8 %3030, i8* %34, align 1
  %3031 = lshr i32 %3015, 31
  %3032 = trunc i32 %3031 to i8
  store i8 %3032, i8* %37, align 1
  %3033 = lshr i32 %3014, 31
  %3034 = xor i32 %3031, %3033
  %3035 = add nuw nsw i32 %3034, %3031
  %3036 = icmp eq i32 %3035, 2
  %3037 = zext i1 %3036 to i8
  store i8 %3037, i8* %43, align 1
  %3038 = add i64 %2878, 14
  store i64 %3038, i64* %3, align 8
  store i32 %3015, i32* %3013, align 4
  %3039 = load i64, i64* %3, align 8
  %3040 = add i64 %3039, -111
  store i64 %3040, i64* %3, align 8
  br label %block_.L_440327

block_.L_44039b:                                  ; preds = %block_.L_440327
  %3041 = add i64 %2832, 132
  br label %block_.L_44041f

block_.L_4403a6:                                  ; preds = %block_.L_4403a6.preheader, %block_.L_440407
  %3042 = phi i64 [ %3287, %block_.L_440407 ], [ %.pre84, %block_.L_4403a6.preheader ]
  %3043 = load i64, i64* %RBP.i, align 8
  %3044 = add i64 %3043, -44
  %3045 = add i64 %3042, 3
  store i64 %3045, i64* %3, align 8
  %3046 = inttoptr i64 %3044 to i32*
  %3047 = load i32, i32* %3046, align 4
  %3048 = zext i32 %3047 to i64
  store i64 %3048, i64* %RAX.i82, align 8
  %3049 = add i64 %3043, -52
  %3050 = add i64 %3042, 6
  store i64 %3050, i64* %3, align 8
  %3051 = inttoptr i64 %3049 to i32*
  %3052 = load i32, i32* %3051, align 4
  %3053 = sub i32 %3047, %3052
  %3054 = icmp ult i32 %3047, %3052
  %3055 = zext i1 %3054 to i8
  store i8 %3055, i8* %19, align 1
  %3056 = and i32 %3053, 255
  %3057 = tail call i32 @llvm.ctpop.i32(i32 %3056)
  %3058 = trunc i32 %3057 to i8
  %3059 = and i8 %3058, 1
  %3060 = xor i8 %3059, 1
  store i8 %3060, i8* %26, align 1
  %3061 = xor i32 %3052, %3047
  %3062 = xor i32 %3061, %3053
  %3063 = lshr i32 %3062, 4
  %3064 = trunc i32 %3063 to i8
  %3065 = and i8 %3064, 1
  store i8 %3065, i8* %31, align 1
  %3066 = icmp eq i32 %3053, 0
  %3067 = zext i1 %3066 to i8
  store i8 %3067, i8* %34, align 1
  %3068 = lshr i32 %3053, 31
  %3069 = trunc i32 %3068 to i8
  store i8 %3069, i8* %37, align 1
  %3070 = lshr i32 %3047, 31
  %3071 = lshr i32 %3052, 31
  %3072 = xor i32 %3071, %3070
  %3073 = xor i32 %3068, %3070
  %3074 = add nuw nsw i32 %3073, %3072
  %3075 = icmp eq i32 %3074, 2
  %3076 = zext i1 %3075 to i8
  store i8 %3076, i8* %43, align 1
  %3077 = icmp ne i8 %3069, 0
  %3078 = xor i1 %3077, %3075
  %.v109 = select i1 %3078, i64 12, i64 116
  %3079 = add i64 %3042, %.v109
  store i64 %3079, i64* %3, align 8
  br i1 %3078, label %block_4403b2, label %block_.L_44041a

block_4403b2:                                     ; preds = %block_.L_4403a6
  %3080 = add i64 %3043, -16
  %3081 = add i64 %3079, 3
  store i64 %3081, i64* %3, align 8
  %3082 = inttoptr i64 %3080 to i32*
  %3083 = load i32, i32* %3082, align 4
  %3084 = zext i32 %3083 to i64
  store i64 %3084, i64* %RAX.i82, align 8
  %3085 = add i64 %3043, -40
  %3086 = add i64 %3079, 6
  store i64 %3086, i64* %3, align 8
  %3087 = inttoptr i64 %3085 to i32*
  store i32 %3083, i32* %3087, align 4
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_4403b8

block_.L_4403b8:                                  ; preds = %block_4403c4, %block_4403b2
  %3088 = phi i64 [ %3257, %block_4403c4 ], [ %.pre87, %block_4403b2 ]
  %3089 = load i64, i64* %RBP.i, align 8
  %3090 = add i64 %3089, -40
  %3091 = add i64 %3088, 3
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3090 to i32*
  %3093 = load i32, i32* %3092, align 4
  %3094 = zext i32 %3093 to i64
  store i64 %3094, i64* %RAX.i82, align 8
  %3095 = add i64 %3089, -48
  %3096 = add i64 %3088, 6
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3095 to i32*
  %3098 = load i32, i32* %3097, align 4
  %3099 = sub i32 %3093, %3098
  %3100 = icmp ult i32 %3093, %3098
  %3101 = zext i1 %3100 to i8
  store i8 %3101, i8* %19, align 1
  %3102 = and i32 %3099, 255
  %3103 = tail call i32 @llvm.ctpop.i32(i32 %3102)
  %3104 = trunc i32 %3103 to i8
  %3105 = and i8 %3104, 1
  %3106 = xor i8 %3105, 1
  store i8 %3106, i8* %26, align 1
  %3107 = xor i32 %3098, %3093
  %3108 = xor i32 %3107, %3099
  %3109 = lshr i32 %3108, 4
  %3110 = trunc i32 %3109 to i8
  %3111 = and i8 %3110, 1
  store i8 %3111, i8* %31, align 1
  %3112 = icmp eq i32 %3099, 0
  %3113 = zext i1 %3112 to i8
  store i8 %3113, i8* %34, align 1
  %3114 = lshr i32 %3099, 31
  %3115 = trunc i32 %3114 to i8
  store i8 %3115, i8* %37, align 1
  %3116 = lshr i32 %3093, 31
  %3117 = lshr i32 %3098, 31
  %3118 = xor i32 %3117, %3116
  %3119 = xor i32 %3114, %3116
  %3120 = add nuw nsw i32 %3119, %3118
  %3121 = icmp eq i32 %3120, 2
  %3122 = zext i1 %3121 to i8
  store i8 %3122, i8* %43, align 1
  %3123 = icmp ne i8 %3115, 0
  %3124 = xor i1 %3123, %3121
  %.v97 = select i1 %3124, i64 12, i64 79
  %3125 = add i64 %3088, %.v97
  store i64 %3125, i64* %3, align 8
  br i1 %3124, label %block_4403c4, label %block_.L_440407

block_4403c4:                                     ; preds = %block_.L_4403b8
  %3126 = add i64 %3089, -72
  %3127 = add i64 %3125, 4
  store i64 %3127, i64* %3, align 8
  %3128 = inttoptr i64 %3126 to i64*
  %3129 = load i64, i64* %3128, align 8
  store i64 %3129, i64* %RAX.i82, align 8
  %3130 = add i64 %3129, 4
  store i64 %3130, i64* %RCX.i1051, align 8
  %3131 = icmp ugt i64 %3129, -5
  %3132 = zext i1 %3131 to i8
  store i8 %3132, i8* %19, align 1
  %3133 = trunc i64 %3130 to i32
  %3134 = and i32 %3133, 255
  %3135 = tail call i32 @llvm.ctpop.i32(i32 %3134)
  %3136 = trunc i32 %3135 to i8
  %3137 = and i8 %3136, 1
  %3138 = xor i8 %3137, 1
  store i8 %3138, i8* %26, align 1
  %3139 = xor i64 %3130, %3129
  %3140 = lshr i64 %3139, 4
  %3141 = trunc i64 %3140 to i8
  %3142 = and i8 %3141, 1
  store i8 %3142, i8* %31, align 1
  %3143 = icmp eq i64 %3130, 0
  %3144 = zext i1 %3143 to i8
  store i8 %3144, i8* %34, align 1
  %3145 = lshr i64 %3130, 63
  %3146 = trunc i64 %3145 to i8
  store i8 %3146, i8* %37, align 1
  %3147 = lshr i64 %3129, 63
  %3148 = xor i64 %3145, %3147
  %3149 = add nuw nsw i64 %3148, %3145
  %3150 = icmp eq i64 %3149, 2
  %3151 = zext i1 %3150 to i8
  store i8 %3151, i8* %43, align 1
  %3152 = add i64 %3125, 15
  store i64 %3152, i64* %3, align 8
  store i64 %3130, i64* %3128, align 8
  %3153 = load i32*, i32** %2794, align 8
  %3154 = load i64, i64* %3, align 8
  %3155 = add i64 %3154, 2
  store i64 %3155, i64* %3, align 8
  %3156 = load i32, i32* %3153, align 4
  %3157 = zext i32 %3156 to i64
  store i64 %3157, i64* %RDX.i943, align 8
  %3158 = trunc i32 %3156 to i16
  store i16 %3158, i16* %SI.i44, align 2
  %3159 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3160 = add i64 %3159, 12600
  store i64 %3160, i64* %RAX.i82, align 8
  %3161 = icmp ugt i64 %3159, -12601
  %3162 = zext i1 %3161 to i8
  store i8 %3162, i8* %19, align 1
  %3163 = trunc i64 %3160 to i32
  %3164 = and i32 %3163, 255
  %3165 = tail call i32 @llvm.ctpop.i32(i32 %3164)
  %3166 = trunc i32 %3165 to i8
  %3167 = and i8 %3166, 1
  %3168 = xor i8 %3167, 1
  store i8 %3168, i8* %26, align 1
  %3169 = xor i64 %3159, 16
  %3170 = xor i64 %3169, %3160
  %3171 = lshr i64 %3170, 4
  %3172 = trunc i64 %3171 to i8
  %3173 = and i8 %3172, 1
  store i8 %3173, i8* %31, align 1
  %3174 = icmp eq i64 %3160, 0
  %3175 = zext i1 %3174 to i8
  store i8 %3175, i8* %34, align 1
  %3176 = lshr i64 %3160, 63
  %3177 = trunc i64 %3176 to i8
  store i8 %3177, i8* %37, align 1
  %3178 = lshr i64 %3159, 63
  %3179 = xor i64 %3176, %3178
  %3180 = add nuw nsw i64 %3179, %3176
  %3181 = icmp eq i64 %3180, 2
  %3182 = zext i1 %3181 to i8
  store i8 %3182, i8* %43, align 1
  %3183 = load i64, i64* %RBP.i, align 8
  %3184 = add i64 %3183, -40
  %3185 = add i64 %3154, 23
  store i64 %3185, i64* %3, align 8
  %3186 = inttoptr i64 %3184 to i32*
  %3187 = load i32, i32* %3186, align 4
  %3188 = sext i32 %3187 to i64
  %3189 = shl nsw i64 %3188, 5
  store i64 %3189, i64* %RCX.i1051, align 8
  %3190 = add i64 %3189, %3160
  store i64 %3190, i64* %RAX.i82, align 8
  %3191 = icmp ult i64 %3190, %3160
  %3192 = icmp ult i64 %3190, %3189
  %3193 = or i1 %3191, %3192
  %3194 = zext i1 %3193 to i8
  store i8 %3194, i8* %19, align 1
  %3195 = trunc i64 %3190 to i32
  %3196 = and i32 %3195, 255
  %3197 = tail call i32 @llvm.ctpop.i32(i32 %3196)
  %3198 = trunc i32 %3197 to i8
  %3199 = and i8 %3198, 1
  %3200 = xor i8 %3199, 1
  store i8 %3200, i8* %26, align 1
  %3201 = xor i64 %3160, %3190
  %3202 = lshr i64 %3201, 4
  %3203 = trunc i64 %3202 to i8
  %3204 = and i8 %3203, 1
  store i8 %3204, i8* %31, align 1
  %3205 = icmp eq i64 %3190, 0
  %3206 = zext i1 %3205 to i8
  store i8 %3206, i8* %34, align 1
  %3207 = lshr i64 %3190, 63
  %3208 = trunc i64 %3207 to i8
  store i8 %3208, i8* %37, align 1
  %3209 = lshr i64 %3188, 58
  %3210 = and i64 %3209, 1
  %3211 = xor i64 %3207, %3176
  %3212 = xor i64 %3207, %3210
  %3213 = add nuw nsw i64 %3211, %3212
  %3214 = icmp eq i64 %3213, 2
  %3215 = zext i1 %3214 to i8
  store i8 %3215, i8* %43, align 1
  %3216 = add i64 %3183, -44
  %3217 = add i64 %3154, 34
  store i64 %3217, i64* %3, align 8
  %3218 = inttoptr i64 %3216 to i32*
  %3219 = load i32, i32* %3218, align 4
  %3220 = sext i32 %3219 to i64
  store i64 %3220, i64* %RCX.i1051, align 8
  %3221 = shl nsw i64 %3220, 1
  %3222 = add i64 %3221, %3190
  %3223 = load i16, i16* %SI.i44, align 2
  %3224 = add i64 %3154, 38
  store i64 %3224, i64* %3, align 8
  %3225 = inttoptr i64 %3222 to i16*
  store i16 %3223, i16* %3225, align 2
  %3226 = load i64, i64* %RBP.i, align 8
  %3227 = add i64 %3226, -40
  %3228 = load i64, i64* %3, align 8
  %3229 = add i64 %3228, 3
  store i64 %3229, i64* %3, align 8
  %3230 = inttoptr i64 %3227 to i32*
  %3231 = load i32, i32* %3230, align 4
  %3232 = add i32 %3231, 1
  %3233 = zext i32 %3232 to i64
  store i64 %3233, i64* %RAX.i82, align 8
  %3234 = icmp eq i32 %3231, -1
  %3235 = icmp eq i32 %3232, 0
  %3236 = or i1 %3234, %3235
  %3237 = zext i1 %3236 to i8
  store i8 %3237, i8* %19, align 1
  %3238 = and i32 %3232, 255
  %3239 = tail call i32 @llvm.ctpop.i32(i32 %3238)
  %3240 = trunc i32 %3239 to i8
  %3241 = and i8 %3240, 1
  %3242 = xor i8 %3241, 1
  store i8 %3242, i8* %26, align 1
  %3243 = xor i32 %3232, %3231
  %3244 = lshr i32 %3243, 4
  %3245 = trunc i32 %3244 to i8
  %3246 = and i8 %3245, 1
  store i8 %3246, i8* %31, align 1
  %3247 = zext i1 %3235 to i8
  store i8 %3247, i8* %34, align 1
  %3248 = lshr i32 %3232, 31
  %3249 = trunc i32 %3248 to i8
  store i8 %3249, i8* %37, align 1
  %3250 = lshr i32 %3231, 31
  %3251 = xor i32 %3248, %3250
  %3252 = add nuw nsw i32 %3251, %3248
  %3253 = icmp eq i32 %3252, 2
  %3254 = zext i1 %3253 to i8
  store i8 %3254, i8* %43, align 1
  %3255 = add i64 %3228, 9
  store i64 %3255, i64* %3, align 8
  store i32 %3232, i32* %3230, align 4
  %3256 = load i64, i64* %3, align 8
  %3257 = add i64 %3256, -74
  store i64 %3257, i64* %3, align 8
  br label %block_.L_4403b8

block_.L_440407:                                  ; preds = %block_.L_4403b8
  %3258 = add i64 %3089, -44
  %3259 = add i64 %3125, 8
  store i64 %3259, i64* %3, align 8
  %3260 = inttoptr i64 %3258 to i32*
  %3261 = load i32, i32* %3260, align 4
  %3262 = add i32 %3261, 1
  %3263 = zext i32 %3262 to i64
  store i64 %3263, i64* %RAX.i82, align 8
  %3264 = icmp eq i32 %3261, -1
  %3265 = icmp eq i32 %3262, 0
  %3266 = or i1 %3264, %3265
  %3267 = zext i1 %3266 to i8
  store i8 %3267, i8* %19, align 1
  %3268 = and i32 %3262, 255
  %3269 = tail call i32 @llvm.ctpop.i32(i32 %3268)
  %3270 = trunc i32 %3269 to i8
  %3271 = and i8 %3270, 1
  %3272 = xor i8 %3271, 1
  store i8 %3272, i8* %26, align 1
  %3273 = xor i32 %3262, %3261
  %3274 = lshr i32 %3273, 4
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  store i8 %3276, i8* %31, align 1
  %3277 = zext i1 %3265 to i8
  store i8 %3277, i8* %34, align 1
  %3278 = lshr i32 %3262, 31
  %3279 = trunc i32 %3278 to i8
  store i8 %3279, i8* %37, align 1
  %3280 = lshr i32 %3261, 31
  %3281 = xor i32 %3278, %3280
  %3282 = add nuw nsw i32 %3281, %3278
  %3283 = icmp eq i32 %3282, 2
  %3284 = zext i1 %3283 to i8
  store i8 %3284, i8* %43, align 1
  %3285 = add i64 %3125, 14
  store i64 %3285, i64* %3, align 8
  store i32 %3262, i32* %3260, align 4
  %3286 = load i64, i64* %3, align 8
  %3287 = add i64 %3286, -111
  store i64 %3287, i64* %3, align 8
  br label %block_.L_4403a6

block_.L_44041a:                                  ; preds = %block_.L_4403a6
  %3288 = add i64 %3079, 5
  store i64 %3288, i64* %3, align 8
  br label %block_.L_44041f

block_.L_44041f:                                  ; preds = %block_.L_44041a, %block_.L_44039b
  %storemerge40 = phi i64 [ %3041, %block_.L_44039b ], [ %3288, %block_.L_44041a ]
  %3289 = add i64 %storemerge40, 5
  store i64 %3289, i64* %3, align 8
  br label %block_.L_440424

block_.L_440424:                                  ; preds = %block_.L_44041f, %block_.L_440312
  %storemerge38 = phi i64 [ %2773, %block_.L_440312 ], [ %3289, %block_.L_44041f ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.17, %block_.L_440312 ], [ %MEMORY.8, %block_.L_44041f ]
  %3290 = add i64 %storemerge38, 5
  br label %block_.L_440429

block_.L_440429:                                  ; preds = %block_.L_440424, %block_.L_440263, %block_43fe76
  %.sink = phi i64 [ %3290, %block_.L_440424 ], [ %2422, %block_.L_440263 ], [ %624, %block_43fe76 ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.24, %block_.L_440424 ], [ %MEMORY.8, %block_.L_440263 ], [ %call2_43fe7f, %block_43fe76 ]
  %3291 = load i64, i64* %6, align 8
  %3292 = add i64 %3291, 136
  store i64 %3292, i64* %6, align 8
  %3293 = icmp ugt i64 %3291, -137
  %3294 = zext i1 %3293 to i8
  store i8 %3294, i8* %19, align 1
  %3295 = trunc i64 %3292 to i32
  %3296 = and i32 %3295, 255
  %3297 = tail call i32 @llvm.ctpop.i32(i32 %3296)
  %3298 = trunc i32 %3297 to i8
  %3299 = and i8 %3298, 1
  %3300 = xor i8 %3299, 1
  store i8 %3300, i8* %26, align 1
  %3301 = xor i64 %3292, %3291
  %3302 = lshr i64 %3301, 4
  %3303 = trunc i64 %3302 to i8
  %3304 = and i8 %3303, 1
  store i8 %3304, i8* %31, align 1
  %3305 = icmp eq i64 %3292, 0
  %3306 = zext i1 %3305 to i8
  store i8 %3306, i8* %34, align 1
  %3307 = lshr i64 %3292, 63
  %3308 = trunc i64 %3307 to i8
  store i8 %3308, i8* %37, align 1
  %3309 = lshr i64 %3291, 63
  %3310 = xor i64 %3307, %3309
  %3311 = add nuw nsw i64 %3310, %3307
  %3312 = icmp eq i64 %3311, 2
  %3313 = zext i1 %3312 to i8
  store i8 %3313, i8* %43, align 1
  %3314 = add i64 %.sink, 8
  store i64 %3314, i64* %3, align 8
  %3315 = add i64 %3291, 144
  %3316 = inttoptr i64 %3292 to i64*
  %3317 = load i64, i64* %3316, align 8
  store i64 %3317, i64* %RBX.i1089, align 8
  store i64 %3315, i64* %6, align 8
  %3318 = add i64 %.sink, 9
  store i64 %3318, i64* %3, align 8
  %3319 = add i64 %3291, 152
  %3320 = inttoptr i64 %3315 to i64*
  %3321 = load i64, i64* %3320, align 8
  store i64 %3321, i64* %RBP.i, align 8
  store i64 %3319, i64* %6, align 8
  %3322 = add i64 %.sink, 10
  store i64 %3322, i64* %3, align 8
  %3323 = inttoptr i64 %3319 to i64*
  %3324 = load i64, i64* %3323, align 8
  store i64 %3324, i64* %3, align 8
  %3325 = add i64 %3291, 160
  store i64 %3325, i64* %6, align 8
  ret %struct.Memory* %MEMORY.25
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
define %struct.Memory* @routine_subq__0x88___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -136
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 136
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
define %struct.Memory* @routine_movw_0x18__rbp____ax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %AX, align 2
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
define %struct.Memory* @routine_movq__0x6cc2f0___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cc2f0_type* @G__0x6cc2f0 to i64), i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6cc2b0___rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cc2b0_type* @G__0x6cc2b0 to i64), i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__r8d__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r10w__MINUS0x22__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -34
  %6 = load i16, i16* %R10W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__ax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i16, i16* %AX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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
define %struct.Memory* @routine_movq__rbx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movq_0x118f8__r11____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = add i64 %3, 71928
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_je_.L_43fda0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al__MINUS0x5d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -93
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43fdd4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl__MINUS0x5e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -94
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43fdce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb_MINUS0x5e__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -94
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x5d__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -93
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
define %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x244__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_je_.L_43fe6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswl_MINUS0x22__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -34
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
define %struct.Memory* @routine_jne_.L_43fe6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_43fe51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43fe64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_43fe89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_callq_.IntraChromaPrediction4x4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_440429(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43fe9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43fedd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6cc2b0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cc2b0_type* @G__0x6cc2b0 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movw_MINUS0x22__rbp____ax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -34
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %AX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
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
define %struct.Memory* @routine_movswl__ax___r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sext i16 %5 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %5 = load i32, i32* %R11D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
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
define %struct.Memory* @routine_movl__r11d____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = bitcast i64* %RSP to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.OneComponentChromaPrediction4x4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_43fef1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43ff34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6cc2f0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cc2f0_type* @G__0x6cc2f0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 1, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_MINUS0x24__rbp____ax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %AX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_movl__r9d__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x70__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_je_.L_440268(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_44009e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_440099(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -48
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
define %struct.Memory* @routine_jge_.L_440086(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswq_MINUS0x22__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -34
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
define %struct.Memory* @routine_movswq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movl_0x710790___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x710790_type* @G_0x710790 to i32*), align 8
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
define %struct.Memory* @routine_movl_0x7242a0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movswq_MINUS0x22__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -34
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
define %struct.Memory* @routine_movl___rax__rdi_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswq_MINUS0x24__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movslq__r8d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rdi_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
  store i64 %14, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.clip1a_chr(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movw__ax___r9w(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9W = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %R9W, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3138___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12600
  store i64 %6, i64* %R10, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %R11, align 8
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
define %struct.Memory* @routine_addq__r11___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %R11, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R10, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__r9w____r10__r11_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9W = bitcast %union.anon* %3 to i16*
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %R10, align 8
  %5 = load i64, i64* %R11, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %R9W, align 2
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
define %struct.Memory* @routine_jmpq_.L_43ff60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44008b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ff4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_440263(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_440182(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44017d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44016a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0x710790___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x710790_type* @G_0x710790 to i32*), align 8
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
define %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswq_MINUS0x22__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -34
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
define %struct.Memory* @routine_addl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq__edi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rsi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jmpq_.L_4400c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44016f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4400ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44025e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_440259(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_440246(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movswq_MINUS0x24__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jmpq_.L_44019a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44024b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_440188(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_440317(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_440312(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4402ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movq__rdx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jmpq_.L_44028a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_440304(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_440278(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_440424(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4403a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44039b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_440388(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jmpq_.L_440339(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44038d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_440327(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44041f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_44041a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_440407(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4403b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44040c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4403a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x88___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 136
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -137
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
